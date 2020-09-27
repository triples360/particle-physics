require_relative 'space'
require_relative 'time'
require_relative 'particle'

spc = Space.new()
spc.grid[5][5] = Particle.new(1, [1,1])
spc.grid[8][5] = Particle.new(1)

t = Time.new()
t.initiate_space(spc)
for i in 0...spc.grid.length
    for j in 0...spc.grid[i].length
        print spc.grid[i][j]
        print " "
    end
    puts
end
