module Compile
    @universe = $0.sub(/\/(bin|utils)\/universe/, '')

    def all(dir)
        self.symlink dir
        self.gcc dir
    end

    def symlink(dir)
        print 'Added '
        Dir.glob("#{dir}/*").select do |file|
            File.basename(file) =~ /^.[^.]*$/ || file =~ /\.(rb|bash|sh|zsh)/
        end.each do |file|
            extn = File.extname  file
            name = File.basename file, extn
            FileUtils.symlink(file, "#{@universe}/bin/#{name}", force: true)
            print " #{name}"
        end
        puts
    end

    def gcc(dir)
        print 'Compiled '
        for file in Dir.glob("#{dir}/*.{c,cpp,c++}")
            extn = File.extname  file
            name = File.basename file, extn
            system "gcc -std=gnu99 '#{file}' -o '#{@universe}/bin/#{name}'"
            print " #{name}"
        end
        puts
    end
end
include Compile
