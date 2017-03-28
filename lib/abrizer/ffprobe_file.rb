module Abrizer
  class FfprobeFile

    include FilepathHelpers

    def initialize(filename, output_directory)
      @informer = FfprobeInformer.new(filename)
      @output_directory = output_directory
    end

    def run
      File.open(ffprobe_filepath, 'w') do |fh|
        fh.puts @informer.json_result
      end
    end
  end
end