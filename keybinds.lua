local M = {}
local wezterm = require( "wezterm" )
local act = wezterm.action

M.keybinds =
{
-- tmux_keybinds
    { key = "k", mods = "ALT", action = act({ SpawnTab = "CurrentPaneDomain" }) },
    { key = "j", mods = "ALT", action = act({ CloseCurrentTab = { confirm = true } }) },
    { key = "h", mods = "ALT", action = act({ ActivateTabRelative = -1 }) },
    { key = "l", mods = "ALT", action = act({ ActivateTabRelative = 1 }) },
    { key = "h", mods = "ALT|CTRL", action = act({ MoveTabRelative = -1 }) },
    { key = "l", mods = "ALT|CTRL", action = act({ MoveTabRelative = 1 }) },
    {
        key = "k",
        mods = "ALT|CTRL",
        action = act.Multiple({ act.CopyMode("ClearSelectionMode"), act.ActivateCopyMode, act.ClearSelection }),
    },
    { key = "j", mods = "ALT|CTRL", action = act({ PasteFrom = "PrimarySelection" }) },
    { key = "1", mods = "ALT", action = act({ ActivateTab = 0 }) },
    { key = "2", mods = "ALT", action = act({ ActivateTab = 1 }) },
    { key = "3", mods = "ALT", action = act({ ActivateTab = 2 }) },
    { key = "4", mods = "ALT", action = act({ ActivateTab = 3 }) },
    { key = "5", mods = "ALT", action = act({ ActivateTab = 4 }) },
    { key = "6", mods = "ALT", action = act({ ActivateTab = 5 }) },
    { key = "7", mods = "ALT", action = act({ ActivateTab = 6 }) },
    { key = "8", mods = "ALT", action = act({ ActivateTab = 7 }) },
    { key = "9", mods = "ALT", action = act({ ActivateTab = 8 }) },
    { key = "-", mods = "ALT", action = act({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
    { key = "¥", mods = "ALT", action = act({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
    { key = "h", mods = "ALT|SHIFT", action = act({ ActivatePaneDirection = "Left" }) },
    { key = "l", mods = "ALT|SHIFT", action = act({ ActivatePaneDirection = "Right" }) },
    { key = "j", mods = "ALT|SHIFT", action = act({ ActivatePaneDirection = "Down" }) },
    { key = "k", mods = "ALT|SHIFT", action = act({ ActivatePaneDirection = "Up" }) },
    { key = "h", mods = "ALT|SHIFT|CTRL", action = act({ AdjustPaneSize = { "Left", 1 } }) },
    { key = "l", mods = "ALT|SHIFT|CTRL", action = act({ AdjustPaneSize = { "Right", 1 } }) },
    { key = "j", mods = "ALT|SHIFT|CTRL", action = act({ AdjustPaneSize = { "Down", 1 } }) },
    { key = "k", mods = "ALT|SHIFT|CTRL", action = act({ AdjustPaneSize = { "Up", 1 } }) },
    { key = "Enter", mods = "ALT", action = "QuickSelect" },
    { key = "/", mods = "ALT", action = act.Search("CurrentSelectionOrEmptyString")},

-- default_keybinds
    { key = "c", mods = "CTRL|SHIFT", action = act({ CopyTo = "Clipboard" }) },
    { key = "v", mods = "CTRL|SHIFT", action = act({ PasteFrom = "Clipboard" }) },
    { key = "Insert", mods = "SHIFT", action = act({ PasteFrom = "PrimarySelection" }) },
    { key = "-", mods = "CTRL|SHIFT", action = "ResetFontSize" },
    { key = "-", mods = "CTRL", action = "DecreaseFontSize" },
    { key = ";", mods = "CTRL|SHIFT", action = "IncreaseFontSize" },
    { key = "k", mods = "CTRL|SHIFT", action = act({ ScrollByPage = 1 }) },
    { key = "j", mods = "CTRL|SHIFT", action = act({ ScrollByPage = -1 }) },
    { key = "z", mods = "ALT", action = "ReloadConfiguration"  },
    { key = "z", mods = "ALT|SHIFT", action = act({ EmitEvent = "toggle-tmux-keybinds" })},
    { key = 'e', mods = "ALT", action = act({ EmitEvent = "trigger-nvim-with-scrollback" }) },
    { key = 'q', mods = "ALT", action = act({ CloseCurrentPane = { confirm = true } }) },
    { key = 'x', mods = "ALT", action = act({ CloseCurrentPane = { confirm = true } }) },
    {
        key = 'r',
        mods = "ALT",
        action = act
        ({
            ActivateKeyTable =
            {
                name = "resize_pine",
                one_shot = false,
                timeout_milliseconds = 3000,
                replace_current = false,
            },
        }),
    },
    { key = 's', mods = "ALT", action = act.PaneSelect({ alphabet = "1234567890" }) },
    { key = 'b', mods = "ALT", action = act.RotatePanes("CounterClockwise") },
    { key = 'f', mods = "ALT", action = act.RotatePanes("Clockwise") },


}

M.key_tables =
{
    resize_pane =
    {
        { key = "LeftArrow", action = act({ AdjustPaneSize = { "Left", 1 } }) },
        { key = "h", action = act({ AdjustPaneSize = { "Left", 1 } }) },
        { key = "RightArrow", action = act({ AdjustPaneSize = { "Right", 1 } }) },
        { key = "l", action = act({ AdjustPaneSize = { "Right", 1 } }) },
        { key = "UpArrow", action = act({ AdjustPaneSize = { "Up", 1 } }) },
        { key = "k", action = act({ AdjustPaneSize = { "Up", 1 } }) },
        { key = "DownArrow", action = act({ AdjustPaneSize = { "Down", 1 } }) },
        { key = "j", action = act({ AdjustPaneSize = { "Down", 1 } }) },
        -- Cancel the mode by pressing escape
        { key = "Escape", action = "PopKeyTable" },
    },

    copy_mode =
    {
        {
            key = "Escape",
            mods = "NONE",
            action = act.Multiple({ act.ClearSelection, act.CopyMode("ClearPattern"), act.CopyMode("Close"), }),
        },
        { key = "q", mods = "NONE", action = act.CopyMode("Close") },
        -- move cursor
        { key = "h", mods = "NONE", action = act.CopyMode("MoveLeft") },
        { key = "LeftArrow", mods = "NONE", action = act.CopyMode("MoveLeft") },
        { key = "l", mods = "NONE", action = act.CopyMode("MoveRight") },
        { key = "RightArrow", mods = "NONE", action = act.CopyMode("MoveRight") },
        { key = "j", mods = "NONE", action = act.CopyMode("MoveDown") },
        { key = "DownArrow", mods = "NONE", action = act.CopyMode("MoveDown") },
        {
            key = "j",
            mods = "SHIFT",
            action = act
            ({
                Multiple =
                {
                    act.CopyMode("MoveDown"),
                    act.CopyMode("MoveDown"),
                    act.CopyMode("MoveDown"),
                    act.CopyMode("MoveDown"),
                    act.CopyMode("MoveDown"),
                    act.CopyMode("MoveDown"),
                    act.CopyMode("MoveDown"),
                },
            }),
        },
        { key = "k", mods = "NONE", action = act.CopyMode("MoveUp") },
        { key = "UpArrow", mods = "NONE", action = act.CopyMode("MoveUp") },
        {
            key = "k",
            mods = "SHIFT",
            action = act
            ({
                Multiple =
                {
                    act.CopyMode("MoveUp"),
                    act.CopyMode("MoveUp"),
                    act.CopyMode("MoveUp"),
                    act.CopyMode("MoveUp"),
                    act.CopyMode("MoveUp"),
                    act.CopyMode("MoveUp"),
                    act.CopyMode("MoveUp"),
                },
            }),
        },
        -- move word
        { key = "w", mods = "NONE", action = act.CopyMode("MoveForwardWord")},
        { key = "b", mods = "NONE", action = act.CopyMode("MoveBackwardWord")},
        {
            key = "e",
            mods = "NONE",
            action = act
            ({
                Multiple =
                {
                    act.CopyMode("MoveRight"),
                    act.CopyMode("MoveForwardWord"),
                    act.CopyMode("MoveLeft"),
                },
            }),
        },
        -- move start/end
        { key = "0", mods = "NONE", action = act.CopyMode("MoveToStartOfLine") },
        { key = "h", mods = "SHIFT", action = act.CopyMode("MoveToStartOfLineContent") },
        { key = "^", MODS = "NONE", action = act.CopyMode("MoveToStartOfLineContent") },
        { key = "$", mods = "NONE", action = act.CopyMode("MoveToEndOfLineContent") },
        { key = "l", mods = "SHIFT", action = act.CopyMode("MoveToEndOfLineContent") },
        -- select
        { key = "v", mods = "NONE", action = act.CopyMode({ SetSelectionMode = "Cell" })},
        {
            key = "v",
            mods = "SHIFT",
            action = act
            ({
                Multiple =
                {
                    act.CopyMode("MoveToStartOfLineContent"),
                    act.CopyMode({ SetSelectionMode = "Cell" }),
                    act.CopyMode("MoveToEndOfLineContent"),
                },
            }),
        },
        -- copy
        {
            key = "y",
            mods = "NONE",
            action = act
            ({
                Multiple =
                {
                    act({ CopyTo = "ClipboardAndPrimarySelection" }),
                    act.CopyMode("Close"),
                },
            }),
        },
        {
            key = "y",
            mods = "SHIFT",
            action = act
            ({
                Multiple =
                {
                    act.CopyMode({ SetSelectionMode = "Cell" }),
                    act.CopyMode("MoveToEndOfLineContent"),
                    act({ CopyTo = "ClipboardAndPrimarySelection" }),
                    act.CopyMode("Close"),
                },
            }),
        },
        -- scroll
        { key = "b", mods = "CTRL", action = act.CopyMode("PageUp") },
        { key = "f", mods = "CTRL", action = act.CopyMode("PageDown") },
        {
            key = "Enter",
            mods = "NONE",
            action = act.CopyMode("ClearSelectionMode"),
        },
        -- search
        { key = "/", mods = "NONE", action = act.Search("CurrentSelectionOrEmptyString") },
        {
            key = "n",
            mods = "NONE",
            action = act
            ({
                Multiple =
                {
                    act.CopyMode("NextMatch"),
                    act.CopyMode("ClearSelectionMode"),
                },
            }),
        },
        {
            key = "N",
            mods = "NONE",
            action = act
            ({
                Multiple =
                {
                    act.CopyMode("PriorMatch"),
                    act.CopyMode("ClearSelectionMode"),
                },
            }),
        },
    },
    search_mode =
    {
        {
            key = "Enter",
            mods = "NONE",
            action = act.Multiple
            ({
                act.CopyMode("ClearSelectionMode"),
                act.ActivateCopyMode,
            }),
        },
        { key = "p", mods = "CTRL", action = act.CopyMode("PriorMatch") },
        { key = "n", mods = "CTRL", action = act.CopyMode("NextMatch") },
        { key = "r", mods = "CTRL", action = act.CopyMode("CycleMatchType") },
        { key = "/", mods = "NONE", action = act.CopyMode("ClearPattern") },
        { key = "u", mods = "CTRL", action = act.CopyMode("ClearPattern") },
    },
}

M.mouse_bindings =
{
    {
        event = { Up = { streak = 1, button = "Left" } },
        mods = "NONE",
        action = act({ CompleteSelection = "PrimarySelection" }),
    },
    {
        event = { Up = { streak = 1, button = "Right" } },
        mods = "NONE",
        action = act({ CompleteSelection = "Clipboard" }),
    },
    {
        event = { Up = { streak = 1, button = "Left" } },
        mods = "CTRL",
        action = "OpenLinkAtMouseCursor",
    },
}

return M
