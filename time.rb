require_relative 'space'

class Time
    def initialize
    end

    def initiate_space(spc)
        # 'config' is a space grid on which different particles could be present.
        # Time is supposed to move it forward as each unit time passes.
        prtcs = grab_particles(spc)
        p prtcs
    end

    def grab_particles(spc)
        res = []
        grid = spc.grid
        for i in 0...grid.length
            for j in 0...grid[i].length
                if(grid[i][j] != nil)
                    res << grid[i][j]
                end
            end
        end
        return res
    end

    # Function move once: it would move time by one unit
    def one_unit()
        prtcs = grab_particles(spc)
        for i in 0...prtcs.length
            #move particles
        end
    end

end