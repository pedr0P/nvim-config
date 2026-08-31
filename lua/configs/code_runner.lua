local status, code_runner = pcall(require, "code_runner")
if not status then
    return
end

code_runner.setup({
    options = {
        -- choose default mode (valid term, tab, float, toggle, vimux)
        mode = "tab",
        -- add hot reload
        -- hot_reload = true,
        -- Focus on runner window(only works on toggle, term and tab mode)
        -- focus = true,
        -- startinsert (see ':h inserting-ex')
        startinsert = false,
        insert_prefix = "",
        term = {
            --  Position to open the terminal, this option is ignored if mode ~= term
            position = "bot",
            -- window size, this option is ignored if mode == tab
            size = 12,
        },
        float = {
            close_key = "<ESC>",
            -- Window border (see ':h nvim_open_win')
            border = "none",

            -- Num from `0 - 1` for measurements
            height = 0.8,
            width = 0.8,
            x = 0.5,
            y = 0.5,

            -- Highlight group for floating window/border (see ':h winhl')
            border_hl = "FloatBorder",
            float_hl = "Normal",

            -- Transparency (see ':h winblend')
            blend = 0,
        },
        better_term = { -- Toggle mode replacement
            clean = false, -- Clean terminal before launch
            number = 10, -- Use nil for dynamic number and set init
            init = nil,
        },
    },
    startinsert = true,
    filetype = {
        haskell = {
            "cd $dir &&",
            "ghci $file"
        },
        rust = {
            -- "cd $dir &&",
            -- "rustc -o /tmp/$fileNameWithoutExt $fileName &&",
            -- "/tmp/$fileNameWithoutExt"
            "cd $dir &&",
            "cargo run"
        },
        c = {
            "cd $dir &&",
            -- Flags:
            --    -g  = Debugable
            --    -O3 = Optimized Mode
            "gcc -lm -std=c99 -o /tmp/$fileNameWithoutExt $fileName &&",
            -- "gcc -lm -std=c99 -o /tmp/$fileNameWithoutExt $fileName -g &&",
            -- "gcc -lm -std=c99 -o /tmp/$fileNameWithoutExt $fileName -O3 &&",
            -- "clang -lm -std=c99 -o /tmp/$fileNameWithoutExt $fileName &&",
            "/tmp/$fileNameWithoutExt"
        },

        zig = {
            -- "cd $dir &&",
            -- "g++ -pedantic -Wall -Werror -o /tmp/$fileNameWithoutExt $fileName &&",
            -- "clang++ -pedantic -Wall -Werror -o /tmp/$fileNameWithoutExt $fileName &&",
            -- "if [[ $(find input.txt 2> /dev/null) ]]; then /tmp/$fileNameWithoutExt < input.txt; elif [[ $(find args.txt 2> /dev/null ) ]]; then /tmp/$fileNameWithoutExt $(cat args.txt); else /tmp/$fileNameWithoutExt; fi"
        },

        cpp = {
            "cd $dir &&",
            "g++ -pedantic -Wall -Werror -o /tmp/$fileNameWithoutExt $fileName &&",
            -- "clang++ -pedantic -Wall -Werror -o /tmp/$fileNameWithoutExt $fileName &&",
            "if [[ $(find input.txt 2> /dev/null) ]]; then /tmp/$fileNameWithoutExt < input.txt; elif [[ $(find args.txt 2> /dev/null ) ]]; then /tmp/$fileNameWithoutExt $(cat args.txt); else /tmp/$fileNameWithoutExt; fi"
        },
        -- hpp = {
        --     "cd $dir &&",
        --     "cd ..   &&",
        --     "cmake --build build --target run_tests &&"
        -- },
        asm = {
            "cd $dir &&",
            "as -o /tmp/$fileNameWithoutExt $fileName &&",
            "gcc -o /tmp/$fileNameWithoutExt.asm /tmp/$fileNameWithoutExt -nostdlib -static &&",
            "/tmp/$fileNameWithoutExt.asm"
        },
        vhdl = {
            -- "cd $dir &&",
            -- "ghdl -a $fileName ; ghdl -e $fileNameWithoutExt ; ghdl -r $fileNameWithoutExt ",
            -- "if [[ $fileName == *_tb.* ]]; then ghdl -a $fileName ; ghdl -e $fileNameWithoutExt ; ghdl -r $fileNameWithoutExt --vcd=$fileNameWithoutExt.vcd; gtkwave $fileNameWithoutExt.vcd ; fi"
        },
        -- lex = {
        --     "lex $fileName",
            -- "gcc /tmp/lex.yy.c -o lex",
            -- "./lex"
        -- }
    },
})
