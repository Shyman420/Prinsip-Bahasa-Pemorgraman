# super class parking
# contains vehicle type(name), parking duration, vehicle cost per minute, enterance fee
class Parking

    #initializing parking class
    def initialize(type, duration, costPerMinute, enterance)

        @type = type
        @costPerMinute = costPerMinute
        @enterance = enterance
        @duration = duration
    end

    #count parking fee
    #formula : (costperminute * parkingduration(Hour) * 60) + enterance fee 
    def countPark
        
        (@costPerMinute.to_f * @duration.to_i * 60) + @enterance.to_i
    end

    # show parking status to console
    def printPark

        puts "Vehicle name: #@type , Parking duration : #@duration , Parking fee: $#{countPark}"
    end
end


# Sub class vehicle
class Vehicle < Parking

    def initialize(type, duration, costPerMinute, enterance)

        super
    end

end

#subclass motoPark for Motocycle 
class MotoPark < Vehicle

    #overriding initialze     
    def initialize(type, duration, costPerMinute)

        #call initialize from superclass
        super(type, duration, costPerMinute, 100)
    end
end

#subclass CarPark for Car
class CarPark < Vehicle

    #overriding initialize
    def initialize(type, duration, costPerMinute)

        #call initialize from superclass
        super(type, duration, costPerMinute, 200)
    end
end

#main
myVehicle = CarPark.new('Ferrari', 7, 10)
myVehicle.printPark
myVehicle = CarPark.new('Lamborghini', 1, 10)
myVehicle.printPark
myVehicle = CarPark.new('Avanza', 20, 0.1)
myVehicle.printPark
myVehicle = MotoPark.new('Harley Davidson', 21, 8)
myVehicle.printPark
myVehicle = MotoPark.new('Ducati Panigale V4', 2, 8)
myVehicle.printPark
myVehicle = MotoPark.new('Vario', 10, 0.05)
myVehicle.printPark