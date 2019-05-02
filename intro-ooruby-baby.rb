# We want to keep track of all babies that are born
# 1. where can we do that? - initialize
# 2. whose responsibility? - class
# 3. where to put data - initialize
class Baby
    @@all_babies = []

    attr_accessor :name

    def initialize(name=nil)
        cry
        @name = name
        # save the baby somewhere
        @@all_babies << self
    end

    def cry
        puts "Wah!"
    end

end