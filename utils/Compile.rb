module Compile
    def all(dir)
        self.symlink dir
        self.gcc dir
    end

    def symlink(dir)
        for file in Dir.glob("*.{rb,sh,bash,zsh}")
        end
    end

    def gcc(dir)
        for file in Dir.glob("*.{c,cpp,c++}")
        end
    end
end
include Compile
