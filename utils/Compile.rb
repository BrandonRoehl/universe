module Compile
    @universe = $0.chomp('/universe').chomp('/bin').chomp('/utils')

    def all(dir)
        self.symlink dir
        self.gcc dir
    end

    def symlink(dir)
        print 'Added '
        Dir.glob("#{dir}/*").select do |file|
            file =~ /.[^.]*/ || file =~ /\.(rb|bash|sh|zsh)/
        end.each do |file|
            comp = File.basename file
            extn = File.extname  file
            name = File.basename file, extn
            FileUtils.symlink("../sources/#{File.basename dir}/#{comp}", "#{@universe}/bin/#{name}", force: true)
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
