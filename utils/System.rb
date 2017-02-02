module System
    require 'fileutils'
    def sh(command)
        system "sh -c \"#{command}\""
    end
    def pwd
        FileUtils.pwd
    end
    def home
        File.expand_path('~')
    end
    def universe
        if File.exist? sym
            return File.readlink(self.sym)
        end
        return false
    end
    def sym
        # Save to memory for multi access
        @sym ||= File.expand_path('~/.universe')
    end
end
include System
