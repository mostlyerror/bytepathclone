Object = require 'lib/classic/classic'
require 'obj/Test'

function love.load()
  test_instance = Test()
  image = love.graphics.newImage('assets/dora.png')
end

function love.update(dt)
end

function love.draw()
  -- love.graphics.draw(image, love.math.random(0, 800), love.math.random(0, 600))
  love.graphics.draw(image, 0, 0)
end
