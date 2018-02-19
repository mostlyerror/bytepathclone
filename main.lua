dbg = true
Object = require 'lib/classic/classic'
require 'obj/Test'

function love.load()
  log('--Loading------')
  local object_files = {}
  recursiveEnumerate('obj', object_files)
  requireFiles(object_files)
end

function recursiveEnumerate(folder, file_list)
  local items = love.filesystem.getDirectoryItems(folder)
  for _, item in ipairs(items) do
    local file = folder .. '/' .. item
    if love.filesystem.isFile(file) then
      log('loading file: ', file)
      table.insert(file_list, file)
    elseif love.filesystem.isDirectory(file) then
      recursiveEnumerate(file, file_list)
    end
  end
end

function requireFiles(files)
  for _, file in ipairs(files) do
    local file = file:sub(1, -5)
    require(file)
  end
end

function love.update(dt)
end

function love.draw()
end

function log(...)
  if dbg then print(...) end
end
