local function colorizer_config(_, opts)
    local colorizer = require("colorizer")
    colorizer.setup(opts)

    vim.defer_fn(function()
        colorizer.attach_to_buffer(0)
    end, 0)
end

return {
    {
        "NvChad/nvim-colorizer.lua",
        lazy = true,
        config = colorizer_config,
        ft = "css"
    }
}
