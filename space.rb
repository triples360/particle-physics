class Space
    attr_accessor :grid
    def initialize()
        @grid = Hash.new()
    end

    def add_particle(mass, vel=[0,0], pos=[0,0])
        @grid[pos] = Particle.new(mass, vel, pos)
    end

    def particles()
        @grid.values
    end

    def collision?(new_positions)
        # To be implemented
    end

end
