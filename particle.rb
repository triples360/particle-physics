class Particle
    attr_reader :mass
    attr_accessor :velocity
    def initialize(m, v=[0,0])
        #mass
        #velocity with magnitude and direction
        @mass = m
        @v = []
        @v << v[0]
        @v << v[1]
    end
end
