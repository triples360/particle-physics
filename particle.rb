class Particle
    attr_reader :mass
    attr_accessor :velocity, :position
    def initialize(m, v=[0,0], p=[0, 0])
        @mass = m
        @velocity = []
        @velocity << v[0]
        @velocity << v[1]
        @position = []
        @position << p[0]
        @position << p[1]
    end

    def move_unit()
        speed = @velocity[0]
        if @velocity[0] == 0
            return 
        end
        direction = @velocity[1]
        case direction
        when 'up'
            return [position[0], position[1]-speed]
        when 'down'
            return [position[0], position[1]+speed]
        when 'right'
            return [position[0]+speed, position[1]]
        when 'left'
            return [position[0]-speed, position[1]]
        else
            puts "Incorrect direction given to particle #{self}"
        end
    end

end
