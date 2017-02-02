module System
    require 'fileutils'

    def pwd
        FileUtils.pwd
    end

    def home
        File.expand_path('~')
    end

    def universe
        return @universe unless @universe.nil?
        if File.exist? sym
            if File.symlink? sym
                @universe = File.readlink sym
            else
                @universe = sym
            end
        else
            @universe = false
        end
        return @universe
    end

    def sym
        # Save to memory for multi access
        @sym ||= File.expand_path('~/.universe')
    end
end
include System