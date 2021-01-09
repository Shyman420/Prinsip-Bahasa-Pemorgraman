class TDFigure
    def initialize(w, h)
        @width, @height = w, h
    end

    def area
    end

    def perimeter
    end
end

class Rectangle < TDFigure
    def area
        puts @width.to_i * @height.to_i
    end

    def perimeter
        puts (2 * @width.to_i) + (2 * @height.to_i)
    end
end

class Square < TDFigure
    def initialize(x)
        @side = x
    end

    def area
        puts @side.to_i ** 2
    end

    def perimeter
        puts 4 * @side.to_i
    end
end

x = gets
y = gets
a = Square.new(x)
puts "Square area : "
a.area

puts "Square perimeter : " 
a.perimeter

a = Rectangle.new(x, y)
puts "Rectangle area : " 
a.area
puts "Rectangle perimeter : " 
a.perimeter