local config = require("kiwi.config")
local utils = require("kiwi.utils")
local todo = require("kiwi.todo")
local wiki = require("kiwi.wiki")

local M = {}

M.todo = todo
M.utils = utils
M.VERSION = "0.3.0"

M.setup = function(opts)
  utils.setup(opts, config)
end

M.enable = function() wiki.enable_keymaps(0) end
M.disable = function() wiki.disable_keymaps(0) end
M.open_wiki_index = wiki.open_wiki_index
M.create_or_open_wiki_file = wiki.create_or_open_wiki_file
M.open_link = wiki.open_link

return M
