require 'pathname'

MOXLIB_ROOT = Pathname("#{__dir__}/../")

Pathname.glob("#{MOXLIB_ROOT}/gen/**/generate.rb").each do |script|
  Dir.chdir(MOXLIB_ROOT.join(script.dirname))
  require_relative MOXLIB_ROOT.join(script).to_s
end