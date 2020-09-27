require_relative 'space'

class Time
    attr_accessor :spc
    def initialize
        @spc = Space.new()
        @spc.add_particle(1)
        @spc.add_particle(2, [1, 'up'], [2, 2])
        p @spc.grid.values
    end

    def initiate_space(spc)
        # 'config' is a space grid on which different particles could be present.
        # Time is supposed to move it forward as each unit time passes.
        prtcs = grab_particles(spc)
        p prtcs
    end

    # Function move once: it would move time by one unit
    # Take all particles and move them one time unit.

    def elapse()
        new_positions = []
        particles = spc.particles
        for el in particles
            new_positions << el.move_unit()
        end
        p new_positions
        #spc.collision?(new_positions)
    end

end
