local U = require('Comment.utils')
local A = vim.api
local opt = {silent = true, noremap = true}
require('Comment').setup({
  ignore = '^$',

  ---LHS of toggle mappings in NORMAL + VISUAL mode
  ---@type table
  toggler = {
    ---Line-comment toggle keymap
    line = '<Leader>//',
  },

  ---LHS of operator-pending mappings in NORMAL + VISUAL mode
  ---@type table
  opleader = {
    ---Line-comment keymap
    line = '<Leader>/',
  },

  ---LHS of extra mappings
  ---@type table
  extra = {
    ---Add comment on the line above
    above = '<Leader>/O',
    ---Add comment on the line below
    below = '<Leader>/o',
    ---Add comment at the end of line
    eol = '<Leader>/A',
  },
})

-- https://github.com/numToStr/Comment.nvim/issues/70#issuecomment-998494798
function _G.___gdc(vmode)
  local range = U.get_region(vmode)
  local lines = U.get_lines(range)

  -- Copying the block
  local srow = range.erow
  A.nvim_buf_set_lines(0, srow, srow, false, lines)

  -- Doing the comment
  require('Comment.api').toggle.linewise(vmode)

  -- Move the cursor
  local erow = srow + 1
  local line = U.get_lines({ srow = srow, erow = erow })
  local _, col, _ = string.find(line[1], '^(%s*)')
  A.nvim_win_set_cursor(0, { erow, col })
end
