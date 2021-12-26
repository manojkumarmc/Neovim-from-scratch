
local status_ok, rt = pcall(require, "rust-tools")
if not status_ok then
	return
end

local rt_opts = {
    tools = { -- rust-tools options
        autoSetHints = true,
        hover_with_actions = true,
        inlay_hints = {
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
        }
    },
    server = { -- rust_analyzer will be setup implicitly
      on_attach = on_attach,
      capabilities = capabilities,
      settings = { -- rust-settings options
        ['rust_analyzer'] = { }
      }
    }
  }

rt.setup(rt_opts)





