#!/usr/bin/env ruby

$LOAD_PATH << File.expand_path("../../lib", __FILE__)
require "digest"
require "time"
require "rgit/object"

RGIT_DIRECTORY=".rgit".freeze
OBJECTS_DIRECTORY = "#{RGIT_DIRECTORY}/objects".freeze

def log
  dirs = Dir.glob("#{OBJECTS_DIRECTORY}/**/*/")
  array = []
  dirs.each do |d|
    files = Dir.glob("#{d}*")
    # print(File.open(dir[0]).read)
    files.each do |file|
      array.push file
    end
  end

  array.each do |f|
    file = File.open(f)
    print(file.read)
  end
end

log
