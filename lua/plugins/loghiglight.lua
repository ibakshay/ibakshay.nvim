return {
  {
    "fei6409/log-highlight.nvim",
    event = "BufReadPre *.log", -- Only load when opening .log files
    config = true,
  },
}
