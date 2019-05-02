# class definition
class Dog
    # body of the Dog class
# global variable: $name - don't use, interpreter only 
    attr_accessor :name, :fur, :breed # attribute accessor, pass in symbols, creates instance variable, generates the writer and reader (2 methods)
    attr_reader :age, :gender # attribute reader, pass in symbols, creates instance variable, generates the reader (1 method)
    attr_writer :last_meal # attribute writer, pass in symbols, creates instance variable, generates the writer (1 method)

    def initialize(name,breed,gender) # hook/callback/lifecycle event
        #constructor
        puts "A new dog was born."
        @name = name
        @breed = breed # static
        @gender = gender # static
        @born_on = Time.now # static
    end

    def bark # instance method
        puts "Woof! #{@name}"
    end

    def age # dynamic reader
        Time.now - @born_on
    end

    # def name=(name) # scope gate # writer
    #     @name = name
    #     puts "You're naming the dog: #{name}"
    # end

    # def name # scope gate # reader
    #     #age = 0 # local variable
    #     @name # instance variable
    # end

end