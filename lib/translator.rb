# require modules here
require "yaml"

def load_library(file_path)
  library = {"get_meaning" => {}, "get_emoticon" => {} }
  YAML.load_file(file_path).each do |meaning, array|
    english, japanese = array
    library["get_emoticon"][english] = japanese
    library["get_meaning"][japanese] = meaning
  end
  library
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  library = load_library(file_path)
  if library["get_emoticon"][emoticon]
    return library["get_emoticon"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  library = load_library(file_path)
  if library["get_meaning"][emoticon]
    return library["get_meaning"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end
