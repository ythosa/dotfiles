local illuminate = {}

function illuminate.setup()
  require('illuminate').configure({
    -- Провайдеры для получения референсов в буфере, упорядочены по приоритету
    providers = {
      'lsp',
      'treesitter',
      'regex',
    },
    -- Задержка в миллисекундах перед подсветкой
    delay = 100,
    -- Специфические настройки для файловых типов
    filetype_overrides = {},
    -- Список файловых типов, для которых подсветка не работает
    filetypes_denylist = {
      'dirbuf',
      'dirvish',
      'fugitive',
    },
    -- Список файловых типов, для которых подсветка работает
    filetypes_allowlist = {},
    -- Список режимов, для которых подсветка не работает
    modes_denylist = {},
    -- Список режимов, для которых подсветка работает
    modes_allowlist = {},
    -- Синтаксис для regex-провайдера, который не подсвечивается
    providers_regex_syntax_denylist = {},
    -- Синтаксис для regex-провайдера, который подсвечивается
    providers_regex_syntax_allowlist = {},
    -- Подсвечивать ли под курсором
    under_cursor = true,
    -- Порог для больших файлов
    large_file_cutoff = nil,
    -- Настройки для больших файлов
    large_file_overrides = nil,
    -- Минимальное количество совпадений для подсветки
    min_count_to_highlight = 1,
    -- Функция для включения/выключения подсветки
    should_enable = function(bufnr) return true end,
    -- Настройки регистра чувствительности для regex
    case_insensitive_regex = false,
  })
end

return illuminate
