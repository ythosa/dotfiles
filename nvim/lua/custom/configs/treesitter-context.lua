local M = {}

M.setup = function()
  require('treesitter-context').setup{
    enable = true, -- включить плагин для всех файлов
    max_lines = 0, -- ограничение для количества отображаемых линий. Установите 0 для отсутствия ограничений.
  }
end

return M
