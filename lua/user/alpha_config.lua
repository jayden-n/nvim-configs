local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {

	[[          ▀████▀▄▄              ▄█ ]],
	[[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
	[[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
	[[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
	[[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
	[[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
	[[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
	[[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
	[[   █   █  █      ▄▄           ▄▀   ]],
}

dashboard.section.buttons.val = {}

local function footer()
	return "Don't Stop Until You are Proud..."
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
