return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VeryLazy', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    local wk = require('which-key')

    wk.add({
      {
        { "<leader>c", group = "[C]ode", desc = "" },
        { "<leader>d", group = "[D]ocument" },
        { "<leader>r", group = "[R]ename" },
        { "<leader>s", group = "[S]earch" },
        { "<leader>w", group = "[W]orkspace" },
      }
    })
  end,

}

--[[
TODO: These warning might need addressing?

checking for overlapping keymaps ~
- WARNING In mode `n`, <gc> overlaps with <gcc>, <gco>, <gcO>, <gcA>:
  - <gc>: Comment toggle linewise
  - <gcc>: Comment toggle current line
  - <gco>: Comment insert below
  - <gcO>: Comment insert above
  - <gcA>: Comment insert end of line
- WARNING In mode `n`, <gb> overlaps with <gbc>:
  - <gb>: Comment toggle blockwise
  - <gbc>: Comment toggle current block
- WARNING In mode `n`, <sh> overlaps with <shl>, <shn>:
  - <sh>: Highlight surrounding
  - <shl>: Highlight previous surrounding
  - <shn>: Highlight next surrounding
- WARNING In mode `n`, <sd> overlaps with <sdl>, <sdn>:
  - <sd>: Delete surrounding
  - <sdl>: Delete previous surrounding
  - <sdn>: Delete next surrounding
- WARNING In mode `n`, <sf> overlaps with <sfl>, <sfn>:
  - <sf>: Find right surrounding
  - <sfl>: Find previous right surrounding
  - <sfn>: Find next right surrounding
- WARNING In mode `n`, <sr> overlaps with <srl>, <srn>:
  - <sr>: Replace surrounding
  - <srl>: Replace previous surrounding
  - <srn>: Replace next surrounding
- WARNING In mode `n`, <sF> overlaps with <sFl>, <sFn>:
  - <sF>: Find left surrounding
  - <sFl>: Find previous left surrounding
  - <sFn>: Find next left surrounding
- WARNING In mode `x`, <i> overlaps with <in>, <il>:
  - <i>: Inside textobject
  - <in>: Inside next textobject
  - <il>: Inside last textobject
- WARNING In mode `x`, <a> overlaps with <an>, <al>, <a%>:
  - <a>: Around textobject
  - <an>: Around next textobject
  - <al>: Around last textobject
- WARNING In mode `o`, <a> overlaps with <an>, <al>:
  - <a>: Around textobject
  - <an>: Around next textobject
  - <al>: Around last textobject
- WARNING In mode `o`, <i> overlaps with <in>, <il>:
  - <i>: Inside textobject
  - <in>: Inside next textobject
  - <il>: Inside last textobject
- OK Overlapping keymaps are only reported for informational purposes.
  This doesn't necessarily mean there is a problem with your config.


]]--
