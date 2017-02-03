module Logo
    ['credits', 'galaxy', 'universe'].each do |name|
        define_method name.to_sym do
            system 'cat', $0.sub(/\/(bin|utils)\/universe/, "/utils/#{name}.txt")
        end
    end
end
include Logo
