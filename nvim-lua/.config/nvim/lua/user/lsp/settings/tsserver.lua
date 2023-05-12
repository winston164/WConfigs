local root_pattern = require("lspconfig").util.root_pattern
local tsserver_root_pattern = root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")
local flow_root_pattern = root_pattern(".flowconfig")

return {
  root_dir = function (filename, bufnr)

    -- check if the file is *.js
    if vim.fn.fnamemodify(filename, ":e") == "js" then

      -- check if it is a flow project
      if flow_root_pattern(filename, bufnr) ~= nil then
        return nil
      end
    end

    -- return regular root directory otherwise
    return tsserver_root_pattern(filename, bufnr)
  end,
  single_file_support = false,
}
