local wezterm = require("wezterm")
local act = wezterm.action
local keybinds = require("keybinds")


return
{
    font_size = 12.0,
    dpi = 94.0,
    max_fps = 100,
    font = wezterm.font('FiraCode Nerd Font Mono'),
    font_antialias = "Greyscale",
    font_hinting = "Full",
    use_ime = true,
    xim_im_name = "fcitx5",
    hide_tab_bar_if_only_one_tab = false,
    adjust_window_size_when_changing_font_size = true,
    tab_bar_at_bottom = true,
    disable_default_key_bindings = true,
    enable_csi_u_key_encoding = true,
    color_scheme = "iceberg-dark",
    use_fancy_tab_bar = false,
    tab_max_width = 30,


    window_background_opacity = 0.8,

    window_padding =
    {
        left = 0,
        right = 0,
        top = 3,
        bottom = 0,
    },

    leader = { key = 'q', mods = "CTRL" },
    keys = keybinds.keybinds,
    key_tables = keybinds.key_tables,
    mouse_bindings = keybinds.mouse_bindings,
}
