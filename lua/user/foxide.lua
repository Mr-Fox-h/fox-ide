local lunajson = require 'lunajson'

-- Run Script --
local function readJsonFile(filename)
  local file = io.open(filename, "r")
  if not file then
    error("Could not open file: " .. filename)
  end
  local contents = file:read("*a")
  file:close()

  return lunajson.decode(contents)
end

function _FOX_IDE_RUN()
  local jsonData = readJsonFile(".foxide/run.json")
  vim.notify("Running: " .. jsonData.program.run, vim.log.levels.INFO)
  if jsonData.program.build ~= '' then
    local buildHandle = io.popen(jsonData.program.build)
    local buildOutput = buildHandle:read("*a")
    buildHandle:close()
    vim.notify("Build Output:\n" .. buildOutput, vim.log.levels.INFO)
  end
  local runHandle = io.popen(jsonData.program.run)
  local runOutput = runHandle:read("*a")
  runHandle:close()

  vim.notify("Run Output:\n" .. runOutput, vim.log.levels.INFO)
end

-- Settings --
