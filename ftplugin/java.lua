-- local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
-- local workspace_dir = '/home/daniel/Documents/Company/' .. project_name
local workspace_dir = '/home/daniel/Documents/Company/APConsole-Public/'

local config = {
  cmd = {
    '/usr/lib/jvm/java-17-openjdk-17.0.6.0.10-1.fc37.x86_64/bin/java', -- or '/path/to/java17_or_newer/bin/java'
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xms1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    '-jar', '/home/daniel/.config/nvim/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
    '-configuration', '/home/daniel/.config/nvim/jdtls/config_linux',
    '-data', workspace_dir
  },
  root_dir = vim.fs.dirname(vim.fs.find({'.gradlew', '.git', 'mvnw'}, { upward = true })[1]),
  settings = {
    java = {
    }
  },

  init_options = {
    bundles = {}
  },
}

require('jdtls').start_or_attach(config)
