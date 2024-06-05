return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            style = "storm",
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
            on_colors = function(colors)
                colors.comment = "#999FB8"
            end,
        },
    },
}
