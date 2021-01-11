# Superclass Two Dimensional Figure
class TDFigure

    #initializing 
    def initialize(w, h)
        @width, @height = w, h
    end

    #let area and perimeter method empty
    #we can override subclasses
    def area
    end

    def perimeter
    end
end


# Sub class Rectangle
class Rectangle < TDFigure

    #no need to write intialize, because rectangle sub class consists intialize method from TDFigure superclass
    
    #overriding area method
    def area

        @width.to_i * @height.to_i
    end

    #overriding perimeter method
    def perimeter

        (2 * @width.to_i) + (2 * @height.to_i)
    end
end


# Subclass Square
class Square < TDFigure

    #overriding superclass initialize
    #the side length of the square is taken from the user's first input value (the 'X')
    def initialize(x)

        @side = x
    end

    def area

        @side.to_i ** 2
    end

    def perimeter
        
        4 * @side.to_i
    end
end

#main
x = gets
y = gets

#polymorphism using inheritance
a = TDFigure.new(x, y)

# create new square object
a = Square.new(x)
puts "Square area : #{a.area}" 
puts "Square perimeter : #{a.perimeter}" 

# create new rectangle object
a = Rectangle.new(x, y)
puts "Rectangle area : #{a.area}" 
puts "Rectangle perimeter : #{a.perimeter}" 