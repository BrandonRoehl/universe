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
        File.readlink(File.expand_path('~/.universe'))
    end
end
include System
