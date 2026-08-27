return {
  "linrongbin16/gitlinker.nvim",
  cmd = "GitLink",
  opts = {},
  keys = {
    -- Line / range URLs
    { "<leader>gy", "<cmd>GitLink<cr>",  mode = { "n", "v" }, desc = "Copy git URL (line)" },
    { "<leader>gY", "<cmd>GitLink!<cr>", mode = { "n", "v" }, desc = "Open git URL (line)" },

    -- Whole-file URLs (strip line anchor for resilience across plugin versions)
    {
      "<leader>gf",
      function()
        require("gitlinker").link({
          action = require("gitlinker.actions").clipboard,
          router = function(opts)
            local url = require("gitlinker.routers").github_browse(opts)
            return (url:gsub("#L%d+([%-L%d]*)$", ""))
          end,
        })
      end,
      desc = "Copy git URL (whole file)",
    },
    {
      "<leader>gF",
      function()
        require("gitlinker").link({
          action = require("gitlinker.actions").system,
          router = function(opts)
            local url = require("gitlinker.routers").github_browse(opts)
            return (url:gsub("#L%d+([%-L%d]*)$", ""))
          end,
        })
      end,
      desc = "Open git URL (whole file)",
    },
  },
}
