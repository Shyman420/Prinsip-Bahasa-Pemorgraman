class Product
    private
    def initialize(name, brand, type, price, stock)
        @name, @brand, @type, @price, @stock = name, brand, type, price, stock
    end

    public
    def getName
        @name
    end
    
    def getBrand
        @brand
    end

    def getType
        @type
    end

    def getPrice
        @price
    end

    def getStock
        @stock
    end

    def setName(newName)
        @name = newName
    end

    def setBrand(newBrand)
        @brand = newBrand
    end

    def setType(newType)
        @type = newType
    end

    def setPrice(newPrice)
        @price = newPrice
    end

    def setStock(newStock)
        @stock = newStock
    end
end
# create array
a = []
# store the object into the array
a.push(Product.new("Air jordan", "Nike","Shoe",20000,1))
a.push(Product.new("Air Max", "Nike","Shoe",410,155))
a.push(Product.new("Samba", "Adidas","Shoe",100,220))
a.push(Product.new("Mercurial", "Nike","Shoe",20000,2))
a.push(Product.new("Suede Classic+", "Puma","Shoe",20000,2))

for i in 0..(a.length - 1)
    puts("#{a[i].getName} | #{a[i].getBrand} | #{a[i].getType} | #{a[i].getPrice} | #{a[i].getStock} ")  
end