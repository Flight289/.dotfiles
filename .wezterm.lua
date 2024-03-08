local wezterm = require("wezterm")
local act = wezterm.action
local keybinds = require("keybinds")

--==
--===
return
{
    font_size = 11.0,
    dpi = 96.0,
    max_fps = 100,
    font = wezterm.font('JetBrainsMono Nerd Font Mono'),
    freetype_load_target = "Normal",
    use_ime = true,
    xim_im_name = "fcitx5",
    hide_tab_bar_if_only_one_tab = false,
    adjust_window_size_when_changing_font_size = true,
    tab_bar_at_bottom = true,
    disable_default_key_bindings = true,
    enable_csi_u_key_encoding = true,
    enable_wayland = true,
    color_scheme = "Wombat",
    use_fancy_tab_bar = false,
    tab_max_width = 30,


    window_background_opacity = 0.85,

    window_padding =
    {
        left = 2,
        right = 0,
        top = 3,
        bottom = 0,
    },

    leader = { key = 'q', mods = "CTRL" },
    keys = keybinds.keybinds,
    key_tables = keybinds.key_tables,
    mouse_bindings = keybinds.mouse_bindings,
}
