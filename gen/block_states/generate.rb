require "json"
states = JSON.parse(File.read("states.json"))

predicate_dir = Pathname("#{MOXLIB_ROOT}/data/moxlib/predicates/helpers/block/get/states")
function_dir = Pathname("#{MOXLIB_ROOT}/data/moxlib/functions/helpers/block/get/states")

predicate_dir.exist? ? predicate_dir.rmtree : nil
function_dir.exist? ? function_dir.rmtree : nil

init_predicate = {
  condition: "minecraft:any_of",
  terms: []
}
init_func = []

states.each do |state, values|
  predicate_dir.join(state).mkpath
  function_dir.mkpath

  func = []
  reference = {
    condition: "minecraft:any_of",
    terms: []
  }

  values.each do |value|
    # Predicate
    predicate = {
      condition: "minecraft:location_check",
      predicate: {
        block: {
          state: {
            state => value.to_s
          }
        }
      }
    }
    reference[:terms] << {condition: "minecraft:reference", name: "moxlib:helpers/block/get/states/#{state}/#{value}"}
    File.write("#{predicate_dir.join(state)}/#{value}.json", JSON.pretty_generate(predicate))

    # Functions
    set_value = value
    set_value = "\"#{value}\"" if value.is_a? String
    set_value = "#{value}b" if value.is_a? Numeric
    func << "execute if predicate moxlib:helpers/block/get/states/#{state}/#{value} run data modify storage moxlib:api/helpers/block/get output.state.#{state} set value #{set_value}"
  end
  
  File.write("#{function_dir}/#{state}.mcfunction", func.join("\n"))
  File.write("#{predicate_dir}/#{state}.json", JSON.pretty_generate(reference))

  init_func << "execute if predicate moxlib:helpers/block/get/states/#{state} run function moxlib:helpers/block/get/states/#{state}"
  init_predicate[:terms] << {condition: "minecraft:reference", name: "moxlib:helpers/block/get/states/#{state}"}
end

File.write("#{function_dir}/init.mcfunction", init_func.join("\n"))
File.write("#{predicate_dir}/init.json", JSON.pretty_generate(init_predicate))
