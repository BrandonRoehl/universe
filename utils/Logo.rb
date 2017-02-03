module Logo
    @universe = $0.chomp('/universe').chomp('/bin').chomp('/utils')
    ['credits', 'galaxy', 'universe'].each do |name|
        define_method name.to_sym do
            system "cat '#{@universe}/utils/#{name}.txt'"
        end
    end
end
include Logo
