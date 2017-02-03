module System
    require 'fileutils'

    def pwd
        FileUtils.pwd
    end

    def home
        File.expand_path('~')
    end

    def universe
        @universe ||= $0.chomp('/utils/universe')
    end

    def sym
        # Save to memory for multi access
        @sym ||= File.expand_path('~/.universe')
    end
end
include System
