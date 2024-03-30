local config = {
    cmd = {'/home/jonas/.local/share/nvim/java/bin/jdtls'},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw', 'gradle.build','gradle.build.kts'}, { upward = true })[1]),
}

require('jdtls').start_or_attach(config)
require('lspconfig').jdtls.setup({})

