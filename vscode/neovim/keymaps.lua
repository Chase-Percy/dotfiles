-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
if vim.g.vscode then
  local vscode = require("vscode")

  vim.keymap.set("n", "]d", function() vscode.action("editor.action.marker.next") end)
  vim.keymap.set("n", "[d", function() vscode.action("editor.action.marker.prev") end)
  vim.keymap.set("n", "]e", function() vscode.action("editor.action.marker.next") end)
  vim.keymap.set("n", "[e", function() vscode.action("editor.action.marker.prev") end)

  vim.keymap.set("n", "K", function() vscode.action("editor.action.showHover") end)
  vim.keymap.set("n", "gd", function() vscode.action("editor.action.revealDefinition") end)
  vim.keymap.set("n", "gr", function() vscode.action("editor.action.goToReferences") end)
  vim.keymap.set("n", "gI", function() vscode.action("editor.action.goToImplementation") end)
  vim.keymap.set("n", "gy", function() vscode.action("editor.action.goToTypeDefinition") end)
  vim.keymap.set("n", "<leader>ca", function() vscode.action("editor.action.quickFix") end)
  vim.keymap.set("n", "<leader>cr", function() vscode.action("editor.action.rename") end)
  vim.keymap.set("n", "<leader>cf", function() vscode.action("editor.action.formatDocument") end)

  vim.keymap.set("n", "<leader><space>", function() vscode.action("workbench.action.quickOpen") end)
  vim.keymap.set("n", "<leader>sg", function() vscode.action("workbench.action.findInFiles") end)
  vim.keymap.set("n", "<leader>/", function() vscode.action("workbench.action.findInFiles") end)
  vim.keymap.set("n", "<leader>ss", function() vscode.action("workbench.action.gotoSymbol") end)
  vim.keymap.set("n", "<leader>ff", function() vscode.action("workbench.action.quickOpen") end)

  vim.keymap.set("n", "<leader>e", function() vscode.action("workbench.files.action.focusFilesExplorer") end)

  vim.keymap.set("n", "<C-r>", function() vscode.action("roo-cline.focusInput") end)
  vim.keymap.set("n", "<C-R>", function() vscode.action("roo-cline.SidebarProvider.focus") end)

  vim.keymap.set("n", "<leader>x", function() vscode.action("workbench.action.closeSidebar") end)

  vim.keymap.set("n", "<leader>bd", function() vscode.action("workbench.action.closeActiveEditor") end)
  vim.keymap.set("n", "]b", function() vscode.action("workbench.action.nextEditor") end)
  vim.keymap.set("n", "[b", function() vscode.action("workbench.action.previousEditor") end)

  vim.keymap.set("n", "<leader>fr", function() vscode.action("workbench.action.openRecent") end)
  vim.keymap.set("n", "<leader>fb", function() vscode.action("workbench.action.showAllEditors") end)
  vim.keymap.set("n", "<leader>gg", function() vscode.action("workbench.view.scm") end)
  vim.keymap.set("n", "]h", function() vscode.action("workbench.action.editor.nextChange") end)
  vim.keymap.set("n", "[h", function() vscode.action("workbench.action.editor.previousChange") end)
  vim.keymap.set("n", "<leader>xx", function() vscode.action("workbench.actions.view.problems") end)

  vim.keymap.set("n", "<leader>ft", function() vscode.action("workbench.action.terminal.toggleTerminal") end)
  vim.keymap.set("n", "<C-/>", function() vscode.action("workbench.action.terminal.toggleTerminal") end)

  vim.keymap.set("n", "<leader>|", function() vscode.action("workbench.action.splitEditor") end)
  vim.keymap.set("n", "<leader>-", function() vscode.action("workbench.action.splitEditorDown") end)
  vim.keymap.set("n", "<leader>wh", function() vscode.action("workbench.action.splitEditor") end)
  vim.keymap.set("n", "<leader>wv", function() vscode.action("workbench.action.splitEditorDown") end)

  vim.keymap.set("n", "<leader>sh", "<Nop>")
  vim.keymap.set("n", "<leader>sk", "<Nop>")
end
