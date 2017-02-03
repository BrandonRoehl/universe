module Compile
    def all(dir)
        self.symlink dir
        self.gcc dir
    end

    def symlink(dir)
        Dir.glob('*').select do |file|
            file =~ /.[^.]*/ || file =~ /\.(rb|bash|sh|zsh)/
        end.each do |file|
            puts file
        end
    end

    def gcc(dir)
        for file in Dir.glob("*.{c,cpp,c++}")
            puts file
        end
    end
end
include Compile
