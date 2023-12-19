require "json"

@tags_dir = Pathname("#{MOXLIB_ROOT}/data/moxlib/tags/blocks/helpers/block/get/blocks")
@function_dir = Pathname("#{MOXLIB_ROOT}/data/moxlib/functions/helpers/block/get/blocks")

@tags_dir.exist? ? @tags_dir.rmtree : nil
@function_dir.exist? ? @function_dir.rmtree : nil

@tags_dir.mkpath
@function_dir.mkpath

def blocks
  JSON.parse File.read("blocks.json")
end

def split_and_group(arr)
  size = arr.size
  return arr if size <= 2
  output = []
  
  output << split_and_group(arr.slice!(0, size / 2))
  output << split_and_group(arr)
end

def alternate_text
  File.read("templates/alternate.txt")
end

def match_text
  File.read("templates/match.txt")
end

def check_text
  File.read("templates/check.txt")
end

def return_text
  File.read("templates/return.txt")
end

def process(map, id = "")
  return if map.nil?
  left_id = id + "0"
  right_id = id + "1"
  name = (id.empty? ? "init" : id)
  if map.is_a?(Array) && map.size > 1
    @tags_dir.join("#{name}.json").write(alternate_text.gsub("%left%", left_id).gsub("%right%", right_id))
    @function_dir.join("#{name}.mcfunction").write(check_text.gsub("%left%", left_id).gsub("%right%", right_id))
    process(map[0], left_id)
    process(map[1], right_id)
  else
    map = map.is_a?(Array) ? map[0] : map
    @tags_dir.join("#{name}.json").write(match_text.gsub("%match%", map))
    @function_dir.join("#{name}.mcfunction").write(return_text.gsub("%match%", map))
  end
end

process split_and_group(blocks)
