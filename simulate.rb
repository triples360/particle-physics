require_relative 'space'
require_relative 'time'
require_relative 'particle'

spc = Space.new()
spc.grid[1][2] = Particle.new()
spc.grid[0][1] = Particle.new()

t = Time.new()
t.initiate_space(spc)
