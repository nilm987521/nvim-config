require("scrollbar.handlers").register("my_marks", function(bufnr)
  return {
      { line = 0 },
      { line = 1, text = "x", type = "Warn" },
      { line = 2, type = "Error" }
  }
end)
require("scrollbar").setup()
