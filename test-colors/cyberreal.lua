-- Run :Lushify
-- then /Normal to find the Normal group and edit your fg & bg colors
local lush = require("lush")
local hsl = lush.hsl
local hsluv = lush.hsluv
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    SpecialKey                              { fg="#7b8496", }, -- SpecialKey     xxx guifg=#7b8496
    EndOfBuffer                             { fg="#16181a", }, -- EndOfBuffer    xxx guifg=#16181a
    TermCursor                              { gui="reverse", }, -- TermCursor     xxx cterm=reverse gui=reverse
    NonText                                 { fg="#434851", }, -- NonText        xxx guifg=#434851
    TelescopeResultsDiffUntracked           { NonText }, -- TelescopeResultsDiffUntracked xxx links to NonText
    TelescopePreviewHyphen                  { NonText }, -- TelescopePreviewHyphen xxx links to NonText
    Directory                               { fg="#5ea1ff", }, -- Directory      xxx guifg=#5ea1ff
    FzfLuaDirIcon                           { Directory }, -- FzfLuaDirIcon  xxx links to Directory
    FzfLuaBufName                           { Directory }, -- FzfLuaBufName  xxx links to Directory
    MiniPickIconDirectory                   { Directory }, -- MiniPickIconDirectory xxx links to Directory
    TelescopePreviewDate                    { Directory }, -- TelescopePreviewDate xxx links to Directory
    TelescopePreviewDirectory               { Directory }, -- TelescopePreviewDirectory xxx links to Directory
    ErrorMsg                                { fg="#ff6e5e", }, -- ErrorMsg       xxx guifg=#ff6e5e
    NvimInvalidSpacing                      { ErrorMsg }, -- NvimInvalidSpacing xxx links to ErrorMsg
    MiniDepsTitleError                      { ErrorMsg }, -- MiniDepsTitleError xxx links to ErrorMsg
    IncSearch                               { bg="#fe6d85", fg="#11121d", }, -- IncSearch      xxx guifg=#11121d guibg=#fe6d85
    FzfLuaSearch                            { IncSearch }, -- FzfLuaSearch   xxx links to IncSearch
    MiniOperatorsExchangeFrom               { IncSearch }, -- MiniOperatorsExchangeFrom xxx links to IncSearch
    MiniPickPreviewRegion                   { IncSearch }, -- MiniPickPreviewRegion xxx links to IncSearch
    MiniSurround                            { IncSearch }, -- MiniSurround   xxx links to IncSearch
    Search                                  { bg="#98c379", fg="#11121d", }, -- Search         xxx guifg=#11121d guibg=#98c379
    MiniTablineTabpagesection               { Search }, -- MiniTablineTabpagesection xxx links to Search
    TelescopePreviewMatch                   { Search }, -- TelescopePreviewMatch xxx links to Search
    CurSearch                               { bg="#5ef1ff", fg="#1e2124", }, -- CurSearch      xxx guifg=#1e2124 guibg=#5ef1ff
    MoreMsg                                 { fg="#5ea1ff", }, -- MoreMsg        xxx guifg=#5ea1ff
    MiniStarterQuery                        { MoreMsg }, -- MiniStarterQuery xxx links to MoreMsg
    ModeMsg                                 { fg="#ffffff", }, -- ModeMsg        xxx guifg=#ffffff
    LineNr                                  { fg="#4f535a", }, -- LineNr         xxx guifg=#4f535a
    LineNrAbove                             { LineNr }, -- LineNrAbove    xxx links to LineNr
    LineNrBelow                             { LineNr }, -- LineNrBelow    xxx links to LineNr
    FzfLuaBufLineNr                         { LineNr }, -- FzfLuaBufLineNr xxx links to LineNr
    GitSignsCurrentLineBlame                { LineNr }, -- GitSignsCurrentLineBlame xxx links to LineNr
    TroubleIndent                           { LineNr }, -- TroubleIndent  xxx links to LineNr
    TelescopeResultsLineNr                  { LineNr }, -- TelescopeResultsLineNr xxx links to LineNr
    TroublePos                              { LineNr }, -- TroublePos     xxx links to LineNr
    CursorLineNr                            { fg="#7b8496", }, -- CursorLineNr   xxx guifg=#7b8496
    FzfLuaCursorLineNr                      { CursorLineNr }, -- FzfLuaCursorLineNr xxx links to CursorLineNr
    TroubleIndentFoldClosed                 { CursorLineNr }, -- TroubleIndentFoldClosed xxx links to CursorLineNr
    Question                                { fg="#f1ff5e", }, -- Question       xxx guifg=#f1ff5e
    StatusLine                              { bg="#16181a", fg="#ffffff", }, -- StatusLine     xxx guifg=#ffffff guibg=#16181a
    MsgSeparator                            { StatusLine }, -- MsgSeparator   xxx links to StatusLine
    StatusLineTerm                          { StatusLine }, -- StatusLineTerm xxx links to StatusLine
    MiniStatuslineDevinfo                   { StatusLine }, -- MiniStatuslineDevinfo xxx links to StatusLine
    StatusLineNC                            { bg="#16181a", fg="#7b8496", }, -- StatusLineNC   xxx guifg=#7b8496 guibg=#16181a
    StatusLineTermNC                        { StatusLineNC }, -- StatusLineTermNC xxx links to StatusLineNC
    MiniStatuslineFilename                  { StatusLineNC }, -- MiniStatuslineFilename xxx links to StatusLineNC
    MiniStatuslineInactive                  { StatusLineNC }, -- MiniStatuslineInactive xxx links to StatusLineNC
    WinSeparator                            { bg="#16181a", fg="#3c4048", }, -- WinSeparator   xxx guifg=#3c4048 guibg=#16181a
    VertSplit                               { bg="#16181a", fg="#3c4048", }, -- VertSplit      xxx guifg=#3c4048 guibg=#16181a
    Title                                   { fg="#ffffff", }, -- Title          xxx guifg=#ffffff
    MiniDepsTitle                           { Title }, -- MiniDepsTitle  xxx links to Title
    SnacksWinBar                            { Title }, -- SnacksWinBar   xxx links to Title
    SnacksDashboardTitle                    { Title }, -- SnacksDashboardTitle xxx links to Title
    Visual                                  { bg="#3c4048", }, -- Visual         xxx guibg=#3c4048
    SnippetTabstop                          { Visual }, -- SnippetTabstop xxx links to Visual
    TelescopePreviewLine                    { Visual }, -- TelescopePreviewLine xxx links to Visual
    TroublePreview                          { Visual }, -- TroublePreview xxx links to Visual
    BlinkCmpDocCursorLine                   { Visual }, -- BlinkCmpDocCursorLine xxx links to Visual
    WarningMsg                              { fg="#ffbd5e", }, -- WarningMsg     xxx guifg=#ffbd5e
    sym"@text.danger"                       { WarningMsg }, -- @text.danger   xxx links to WarningMsg
    MiniStarterItemPrefix                   { WarningMsg }, -- MiniStarterItemPrefix xxx links to WarningMsg
    WildMenu                                { bg="#5ea1ff", fg="#16181a", }, -- WildMenu       xxx guifg=#16181a guibg=#5ea1ff
    Folded                                  { bg="#16181a", fg="#7b8496", }, -- Folded         xxx guifg=#7b8496 guibg=#16181a
    FoldColumn                              { bg="#16181a", fg="#7b8496", }, -- FoldColumn     xxx guifg=#7b8496 guibg=#16181a
    CursorLineFold                          { FoldColumn }, -- CursorLineFold xxx links to FoldColumn
    DiffAdd                                 { bg="#24462a", }, -- DiffAdd        xxx guibg=#24462a
    GitSignsAddLn                           { DiffAdd }, -- GitSignsAddLn  xxx links to DiffAdd
    GitSignsAddPreview                      { DiffAdd }, -- GitSignsAddPreview xxx links to DiffAdd
    TelescopeResultsDiffAdd                 { DiffAdd }, -- TelescopeResultsDiffAdd xxx links to DiffAdd
    DiffChange                              { bg="#243347", }, -- DiffChange     xxx guibg=#243347
    GitSignsChangeLn                        { DiffChange }, -- GitSignsChangeLn xxx links to DiffChange
    TelescopeResultsDiffChange              { DiffChange }, -- TelescopeResultsDiffChange xxx links to DiffChange
    DiffDelete                              { bg="#442927", }, -- DiffDelete     xxx guibg=#442927
    GitSignsDeleteLn                        { DiffDelete }, -- GitSignsDeleteLn xxx links to DiffDelete
    GitSignsDeletePreview                   { DiffDelete }, -- GitSignsDeletePreview xxx links to DiffDelete
    GitSignsDeleteVirtLn                    { DiffDelete }, -- GitSignsDeleteVirtLn xxx links to DiffDelete
    TelescopeResultsDiffDelete              { DiffDelete }, -- TelescopeResultsDiffDelete xxx links to DiffDelete
    DiffText                                { bg="#443827", }, -- DiffText       xxx guibg=#443827
    SignColumn                              { bg="#16181a", fg="#7b8496", }, -- SignColumn     xxx guifg=#7b8496 guibg=#16181a
    CursorLineSign                          { SignColumn }, -- CursorLineSign xxx links to SignColumn
    RenderMarkdownSign                      { SignColumn }, -- RenderMarkdownSign xxx links to SignColumn
    Conceal                                 { fg="#7b8496", }, -- Conceal        xxx guifg=#7b8496
    RenderMarkdownTableFill                 { Conceal }, -- RenderMarkdownTableFill xxx links to Conceal
    SpellBad                                { sp="#ff6e5e", gui="undercurl", }, -- SpellBad       xxx cterm=undercurl gui=undercurl guisp=#ff6e5e
    SpellCap                                { sp="#f1ff5e", gui="undercurl", }, -- SpellCap       xxx cterm=undercurl gui=undercurl guisp=#f1ff5e
    SpellRare                               { sp="#bd5eff", gui="undercurl", }, -- SpellRare      xxx cterm=undercurl gui=undercurl guisp=#bd5eff
    MiniJump                                { SpellRare }, -- MiniJump       xxx links to SpellRare
    SpellLocal                              { sp="#5ea1ff", gui="undercurl", }, -- SpellLocal     xxx cterm=undercurl gui=undercurl guisp=#5ea1ff
    Pmenu                                   { bg="#16181a", fg="#ffffff", }, -- Pmenu          xxx guifg=#ffffff guibg=#16181a
    PmenuKind                               { Pmenu }, -- PmenuKind      xxx links to Pmenu
    PmenuExtra                              { Pmenu }, -- PmenuExtra     xxx links to Pmenu
    BlinkCmpMenu                            { Pmenu }, -- BlinkCmpMenu   xxx links to Pmenu
    PmenuSel                                { bg="#3c4048", fg="#ffffff", }, -- PmenuSel       xxx guifg=#ffffff guibg=#3c4048
    PmenuKindSel                            { PmenuSel }, -- PmenuKindSel   xxx links to PmenuSel
    PmenuExtraSel                           { PmenuSel }, -- PmenuExtraSel  xxx links to PmenuSel
    PmenuMatch                              { gui="bold", }, -- PmenuMatch     xxx cterm=bold gui=bold
    PmenuMatchSel                           { gui="bold", }, -- PmenuMatchSel  xxx cterm=bold gui=bold
    PmenuSbar                               { bg="#3c4048", fg="#16181a", }, -- PmenuSbar      xxx guifg=#16181a guibg=#3c4048
    FzfLuaScrollFloatEmpty                  { PmenuSbar }, -- FzfLuaScrollFloatEmpty xxx links to PmenuSbar
    PmenuThumb                              { bg="#3c4048", fg="#16181a", }, -- PmenuThumb     xxx guifg=#16181a guibg=#3c4048
    FzfLuaScrollFloatFull                   { PmenuThumb }, -- FzfLuaScrollFloatFull xxx links to PmenuThumb
    TabLine                                 { bg="#16181a", fg="#7b8496", }, -- TabLine        xxx guifg=#7b8496 guibg=#16181a
    FzfLuaBufId                             { TabLine }, -- FzfLuaBufId    xxx links to TabLine
    TabLineSel                              { bg="#3c4048", fg="#ffffff", }, -- TabLineSel     xxx guifg=#ffffff guibg=#3c4048
    TabLineFill                             { bg="#16181a", fg="#7b8496", }, -- TabLineFill    xxx guifg=#7b8496 guibg=#16181a
    MiniTablineFill                         { TabLineFill }, -- MiniTablineFill xxx links to TabLineFill
    CursorColumn                            { bg="#3c4048", }, -- CursorColumn   xxx guibg=#3c4048
    CursorLine                              { bg="#3c4048", }, -- CursorLine     xxx guibg=#3c4048
    FzfLuaTitleFlags                        { CursorLine }, -- FzfLuaTitleFlags xxx links to CursorLine
    FzfLuaCursorLine                        { CursorLine }, -- FzfLuaCursorLine xxx links to CursorLine
    MiniFilesCursorLine                     { CursorLine }, -- MiniFilesCursorLine xxx links to CursorLine
    MiniPickMatchCurrent                    { CursorLine }, -- MiniPickMatchCurrent xxx links to CursorLine
    MiniPickPreviewLine                     { CursorLine }, -- MiniPickPreviewLine xxx links to CursorLine
    ColorColumn                             { bg="#3c4048", }, -- ColorColumn    xxx guibg=#3c4048
    QuickFixLine                            { bg="#3c4048", }, -- QuickFixLine   xxx guibg=#3c4048
    Whitespace                              { fg="#3c4048", }, -- Whitespace     xxx guifg=#3c4048
    RenderMarkdownIndent                    { Whitespace }, -- RenderMarkdownIndent xxx links to Whitespace
    NormalNC                                { bg="#16181a", fg="#ffffff", }, -- NormalNC       xxx guifg=#ffffff guibg=#16181a
    NormalFloat                             { bg="#16181a", fg="#ffffff", }, -- NormalFloat    xxx guifg=#ffffff guibg=#16181a
    TelescopeNormal                         { NormalFloat }, -- TelescopeNormal xxx links to NormalFloat
    MiniAnimateNormalFloat                  { NormalFloat }, -- MiniAnimateNormalFloat xxx links to NormalFloat
    MiniClueDescSingle                      { NormalFloat }, -- MiniClueDescSingle xxx links to NormalFloat
    MiniFilesNormal                         { NormalFloat }, -- MiniFilesNormal xxx links to NormalFloat
    MiniMapNormal                           { NormalFloat }, -- MiniMapNormal  xxx links to NormalFloat
    MiniNotifyNormal                        { NormalFloat }, -- MiniNotifyNormal xxx links to NormalFloat
    MiniPickNormal                          { NormalFloat }, -- MiniPickNormal xxx links to NormalFloat
    WhichKeyNormal                          { NormalFloat }, -- WhichKeyNormal xxx links to NormalFloat
    BlinkCmpDoc                             { NormalFloat }, -- BlinkCmpDoc    xxx links to NormalFloat
    SnacksNormalNC                          { NormalFloat }, -- SnacksNormalNC xxx links to NormalFloat
    SnacksNormal                            { NormalFloat }, -- SnacksNormal   xxx links to NormalFloat
    BlinkCmpSignatureHelp                   { NormalFloat }, -- BlinkCmpSignatureHelp xxx links to NormalFloat
    GitpadFloat                             { NormalFloat }, -- GitpadFloat    xxx links to NormalFloat
    MsgArea                                 { fg="#ffffff", }, -- MsgArea        xxx guifg=#ffffff
    FloatBorder                             { bg="#16181a", fg="#3c4048", }, -- FloatBorder    xxx guifg=#3c4048 guibg=#16181a
    FzfLuaBorder                            { FloatBorder }, -- FzfLuaBorder   xxx links to FloatBorder
    MiniClueBorder                          { FloatBorder }, -- MiniClueBorder xxx links to FloatBorder
    MiniNotifyBorder                        { FloatBorder }, -- MiniNotifyBorder xxx links to FloatBorder
    MiniPickBorder                          { FloatBorder }, -- MiniPickBorder xxx links to FloatBorder
    WhichKeyBorder                          { FloatBorder }, -- WhichKeyBorder xxx links to FloatBorder
    GitpadFloatBorder                       { FloatBorder }, -- GitpadFloatBorder xxx links to FloatBorder
    WinBar                                  { bg="#16181a", fg="#ffffff", }, -- WinBar         xxx guifg=#ffffff guibg=#16181a
    WinBarNC                                { bg="#16181a", fg="#7b8496", }, -- WinBarNC       xxx guifg=#7b8496 guibg=#16181a
    Cursor                                  { bg="#ffffff", fg="#16181a", }, -- Cursor         xxx guifg=#16181a guibg=#ffffff
    FzfLuaCursor                            { Cursor }, -- FzfLuaCursor   xxx links to Cursor
    FloatTitle                              { bg="#16181a", fg="#5ef1ff", }, -- FloatTitle     xxx guifg=#5ef1ff guibg=#16181a
    FloatFooter                             { FloatTitle }, -- FloatFooter    xxx links to FloatTitle
    FzfLuaTitle                             { FloatTitle }, -- FzfLuaTitle    xxx links to FloatTitle
    MiniClueTitle                           { FloatTitle }, -- MiniClueTitle  xxx links to FloatTitle
    MiniNotifyTitle                         { FloatTitle }, -- MiniNotifyTitle xxx links to FloatTitle
    MiniPickBorderText                      { FloatTitle }, -- MiniPickBorderText xxx links to FloatTitle
    WhichKeyTitle                           { FloatTitle }, -- WhichKeyTitle  xxx links to FloatTitle
    RedrawDebugNormal                       { gui="reverse", }, -- RedrawDebugNormal xxx cterm=reverse gui=reverse
    Underlined                              { gui="underline", }, -- Underlined     xxx cterm=underline gui=underline
    sym"@string.special.url"                { Underlined }, -- @string.special.url xxx links to Underlined
    sym"@text.uri"                          { Underlined }, -- @text.uri      xxx links to Underlined
    lCursor                                 { bg="fg", fg="bg", }, -- lCursor        xxx guifg=bg guibg=fg
    CursorIM                                { bg="#ffffff", fg="#16181a", }, -- CursorIM       xxx guifg=#16181a guibg=#ffffff
    Substitute                              { bg="#3c4048", fg="#ff6e5e", }, -- Substitute     xxx guifg=#ff6e5e guibg=#3c4048
    VisualNOS                               { bg="#3c4048", }, -- VisualNOS      xxx guibg=#3c4048
    Normal                                  { bg="#16181a", fg="#ffffff", }, -- Normal         xxx guifg=#ffffff guibg=#16181a
    Ignore                                  { Normal }, -- Ignore         xxx links to Normal
    NvimSpacing                             { Normal }, -- NvimSpacing    xxx links to Normal
    NotifyTRACEBody                         { Normal }, -- NotifyTRACEBody xxx links to Normal
    MiniStarterItem                         { Normal }, -- MiniStarterItem xxx links to Normal
    RenderMarkdownCodeFallback              { Normal }, -- RenderMarkdownCodeFallback xxx links to Normal
    TroubleIconFile                         { Normal }, -- TroubleIconFile xxx links to Normal
    GrugFarHelpWinActionText                { Normal }, -- GrugFarHelpWinActionText xxx links to Normal
    Character                               { fg="#5eff6c", }, -- Character      xxx guifg=#5eff6c
    sym"@character"                         { Character }, -- @character     xxx links to Character
    Constant                                { fg="#ff5ea0", }, -- Constant       xxx guifg=#ff5ea0
    sym"@constant"                          { Constant }, -- @constant      xxx links to Constant
    sym"@text.reference"                    { Constant }, -- @text.reference xxx links to Constant
    TroubleIconConstant                     { Constant }, -- TroubleIconConstant xxx links to Constant
    TelescopePreviewBlock                   { Constant }, -- TelescopePreviewBlock xxx links to Constant
    TelescopePreviewPipe                    { Constant }, -- TelescopePreviewPipe xxx links to Constant
    TelescopePreviewCharDev                 { Constant }, -- TelescopePreviewCharDev xxx links to Constant
    TelescopePreviewRead                    { Constant }, -- TelescopePreviewRead xxx links to Constant
    TelescopePreviewUser                    { Constant }, -- TelescopePreviewUser xxx links to Constant
    TelescopePreviewGroup                   { Constant }, -- TelescopePreviewGroup xxx links to Constant
    TelescopeResultsConstant                { Constant }, -- TelescopeResultsConstant xxx links to Constant
    -- Number                                  { fg="#ffbd5e", }, -- Number         xxx guifg=#ffbd5e
    Number                                  { fg="#a485dd", }, -- Number         xxx guifg=#a485dd
    Float                                   { Number }, -- Float          xxx links to Number
    sym"@number"                            { Number }, -- @number        xxx links to Number
    NvimNumber                              { Number }, -- NvimNumber     xxx links to Number
    TelescopeResultsNumber                  { Number }, -- TelescopeResultsNumber xxx links to Number
    Boolean                                 { fg="#5ef1ff", }, -- Boolean        xxx guifg=#5ef1ff
    sym"@boolean"                           { Boolean }, -- @boolean       xxx links to Boolean
    MiniDepsTitleSame                       { Boolean }, -- MiniDepsTitleSame xxx links to Boolean
    TroubleIconBoolean                      { Boolean }, -- TroubleIconBoolean xxx links to Boolean
    TroubleIconField                        { Boolean }, -- TroubleIconField xxx links to Boolean
    Statement                               { fg="#ff5ef1", }, -- Statement      xxx guifg=#ff5ef1
    Conditional                             { Statement }, -- Conditional    xxx links to Statement
    Repeat                                  { Statement }, -- Repeat         xxx links to Statement
    Exception                               { Statement }, -- Exception      xxx links to Statement
    TelescopePreviewSocket                  { Statement }, -- TelescopePreviewSocket xxx links to Statement
    TelescopePreviewWrite                   { Statement }, -- TelescopePreviewWrite xxx links to Statement
    Label                                   { fg="#ffbd5e", }, -- Label          xxx guifg=#ffbd5e
    sym"@label"                             { Label }, -- @label         xxx links to Label
    sym"@tag"                               { Label }, -- @tag           xxx links to Label
    sym"@markup.link.label"                 { Label }, -- @markup.link.label xxx links to Label
    Keyword                                 { fg="#ffbd5e", }, -- Keyword        xxx guifg=#ffbd5e
    sym"@keyword"                           { Keyword }, -- @keyword       xxx links to Keyword
    sym"@keyword.function"                  { Keyword }, -- @keyword.function xxx links to Keyword
    TelescopePreviewSticky                  { Keyword }, -- TelescopePreviewSticky xxx links to Keyword
    PreProc                                 { fg="#5ef1ff", }, -- PreProc        xxx guifg=#5ef1ff
    Include                                 { PreProc }, -- Include        xxx links to PreProc
    Define                                  { PreProc }, -- Define         xxx links to PreProc
    Macro                                   { PreProc }, -- Macro          xxx links to PreProc
    PreCondit                               { PreProc }, -- PreCondit      xxx links to PreProc
    sym"@attribute"                         { PreProc }, -- @attribute     xxx links to PreProc
    sym"@annotation"                        { PreProc }, -- @annotation    xxx links to PreProc
    sym"@preproc"                           { PreProc }, -- @preproc       xxx links to PreProc
    Type                                    { fg="#bd5eff", }, -- Type           xxx guifg=#bd5eff
    StorageClass                            { Type }, -- StorageClass   xxx links to Type
    Structure                               { Type }, -- Structure      xxx links to Type
    Typedef                                 { Type }, -- Typedef        xxx links to Type
    sym"@type"                              { Type }, -- @type          xxx links to Type
    NvimNumberPrefix                        { Type }, -- NvimNumberPrefix xxx links to Type
    NvimOptionSigil                         { Type }, -- NvimOptionSigil xxx links to Type
    sym"@text.environment.name"             { Type }, -- @text.environment.name xxx links to Type
    TelescopeMultiSelection                 { Type }, -- TelescopeMultiSelection xxx links to Type
    Special                                 { fg="#ff5ea0", }, -- Special        xxx guifg=#ff5ea0
    Tag                                     { Special }, -- Tag            xxx links to Special
    SpecialChar                             { Special }, -- SpecialChar    xxx links to Special
    SpecialComment                          { Special }, -- SpecialComment xxx links to Special
    sym"@variable.builtin"                  { Special }, -- @variable.builtin xxx links to Special
    sym"@variable.parameter.builtin"        { Special }, -- @variable.parameter.builtin xxx links to Special
    sym"@constant.builtin"                  { Special }, -- @constant.builtin xxx links to Special
    sym"@module.builtin"                    { Special }, -- @module.builtin xxx links to Special
    sym"@attribute.builtin"                 { Special }, -- @attribute.builtin xxx links to Special
    sym"@constructor"                       { Special }, -- @constructor   xxx links to Special
    sym"@markup"                            { Special }, -- @markup        xxx links to Special
    sym"@tag.builtin"                       { Special }, -- @tag.builtin   xxx links to Special
    NotifyLogTitle                          { Special }, -- NotifyLogTitle xxx links to Special
    sym"@text.math"                         { Special }, -- @text.math     xxx links to Special
    MiniMapSymbolCount                      { Special }, -- MiniMapSymbolCount xxx links to Special
    TroubleIconEvent                        { Special }, -- TroubleIconEvent xxx links to Special
    TelescopePreviewLink                    { Special }, -- TelescopePreviewLink xxx links to Special
    SnacksDashboardSpecial                  { Special }, -- SnacksDashboardSpecial xxx links to Special
    Debug                                   { fg="#ffbd5e", }, -- Debug          xxx guifg=#ffbd5e
    sym"@debug"                             { Debug }, -- @debug         xxx links to Debug
    LspCodeLens                             { fg="#7b8496", }, -- LspCodeLens    xxx guifg=#7b8496
    LspCodeLensSeparator                    { LspCodeLens }, -- LspCodeLensSeparator xxx links to LspCodeLens
    LspInlayHint                            { fg="#7b8496", }, -- LspInlayHint   xxx guifg=#7b8496
    LspReferenceRead                        { bg="#3c4048", }, -- LspReferenceRead xxx guibg=#3c4048
    LspReferenceText                        { bg="#3c4048", }, -- LspReferenceText xxx guibg=#3c4048
    LspReferenceTarget                      { LspReferenceText }, -- LspReferenceTarget xxx links to LspReferenceText
    LspReferenceWrite                       { bg="#3c4048", }, -- LspReferenceWrite xxx guibg=#3c4048
    LspSignatureActiveParameter             { fg="#ffbd5e", }, -- LspSignatureActiveParameter xxx guifg=#ffbd5e
    DiagnosticError                         { fg="#ff6e5e", }, -- DiagnosticError xxx guifg=#ff6e5e
    DiagnosticFloatingError                 { DiagnosticError }, -- DiagnosticFloatingError xxx links to DiagnosticError
    DiagnosticVirtualTextError              { DiagnosticError }, -- DiagnosticVirtualTextError xxx links to DiagnosticError
    DiagnosticVirtualLinesError             { DiagnosticError }, -- DiagnosticVirtualLinesError xxx links to DiagnosticError
    DiagnosticSignError                     { DiagnosticError }, -- DiagnosticSignError xxx links to DiagnosticError
    DiagnosticWarn                          { fg="#f1ff5e", }, -- DiagnosticWarn xxx guifg=#f1ff5e
    DiagnosticFloatingWarn                  { DiagnosticWarn }, -- DiagnosticFloatingWarn xxx links to DiagnosticWarn
    DiagnosticVirtualLinesWarn              { DiagnosticWarn }, -- DiagnosticVirtualLinesWarn xxx links to DiagnosticWarn
    DiagnosticSignWarn                      { DiagnosticWarn }, -- DiagnosticSignWarn xxx links to DiagnosticWarn
    MiniDepsMsgBreaking                     { DiagnosticWarn }, -- MiniDepsMsgBreaking xxx links to DiagnosticWarn
    DiagnosticInfo                          { fg="#5ea1ff", }, -- DiagnosticInfo xxx guifg=#5ea1ff
    DiagnosticFloatingInfo                  { DiagnosticInfo }, -- DiagnosticFloatingInfo xxx links to DiagnosticInfo
    DiagnosticVirtualLinesInfo              { DiagnosticInfo }, -- DiagnosticVirtualLinesInfo xxx links to DiagnosticInfo
    DiagnosticSignInfo                      { DiagnosticInfo }, -- DiagnosticSignInfo xxx links to DiagnosticInfo
    MiniDepsInfo                            { DiagnosticInfo }, -- MiniDepsInfo   xxx links to DiagnosticInfo
    DiagnosticHint                          { fg="#5ef1ff", }, -- DiagnosticHint xxx guifg=#5ef1ff
    DiagnosticFloatingHint                  { DiagnosticHint }, -- DiagnosticFloatingHint xxx links to DiagnosticHint
    DiagnosticVirtualLinesHint              { DiagnosticHint }, -- DiagnosticVirtualLinesHint xxx links to DiagnosticHint
    DiagnosticSignHint                      { DiagnosticHint }, -- DiagnosticSignHint xxx links to DiagnosticHint
    MiniDepsHint                            { DiagnosticHint }, -- MiniDepsHint   xxx links to DiagnosticHint
    WhichKeyIconCyan                        { DiagnosticHint }, -- WhichKeyIconCyan xxx links to DiagnosticHint
    DiagnosticOk                            { fg="nvimlightgreen", }, -- DiagnosticOk   xxx ctermfg=10 guifg=NvimLightGreen
    DiagnosticFloatingOk                    { DiagnosticOk }, -- DiagnosticFloatingOk xxx links to DiagnosticOk
    DiagnosticVirtualTextOk                 { DiagnosticOk }, -- DiagnosticVirtualTextOk xxx links to DiagnosticOk
    DiagnosticVirtualLinesOk                { DiagnosticOk }, -- DiagnosticVirtualLinesOk xxx links to DiagnosticOk
    DiagnosticSignOk                        { DiagnosticOk }, -- DiagnosticSignOk xxx links to DiagnosticOk
    DiagnosticVirtualTextWarn               { fg="#f1ff5e", }, -- DiagnosticVirtualTextWarn xxx guifg=#f1ff5e
    DiagnosticVirtualTextInfo               { fg="#5ea1ff", }, -- DiagnosticVirtualTextInfo xxx guifg=#5ea1ff
    DiagnosticVirtualTextHint               { fg="#5ef1ff", }, -- DiagnosticVirtualTextHint xxx guifg=#5ef1ff
    DiagnosticUnnecessary                   { fg="#7b8496", }, -- DiagnosticUnnecessary xxx guifg=#7b8496
    Comment                                 { fg="#7b8496", }, -- Comment        xxx guifg=#7b8496
    sym"@comment"                           { Comment }, -- @comment       xxx links to Comment
    FzfLuaDirPart                           { Comment }, -- FzfLuaDirPart  xxx links to Comment
    NotifyLogTime                           { Comment }, -- NotifyLogTime  xxx links to Comment
    sym"@markup.quote"                      { Comment }, -- @markup.quote  xxx links to Comment
    TroubleSource                           { Comment }, -- TroubleSource  xxx links to Comment
    MiniDepsPlaceholder                     { Comment }, -- MiniDepsPlaceholder xxx links to Comment
    MiniStarterFooter                       { Comment }, -- MiniStarterFooter xxx links to Comment
    MiniStarterInactive                     { Comment }, -- MiniStarterInactive xxx links to Comment
    WhichKeySeparator                       { Comment }, -- WhichKeySeparator xxx links to Comment
    GrugFarHelpHeader                       { Comment }, -- GrugFarHelpHeader xxx links to Comment
    GrugFarResultsHeader                    { Comment }, -- GrugFarResultsHeader xxx links to Comment
    MarkviewBlockQuoteDefault               { Comment }, -- MarkviewBlockQuoteDefault xxx links to Comment
    TelescopeResultsComment                 { Comment }, -- TelescopeResultsComment xxx links to Comment
    GrugFarHelpWinActionDescription         { Comment }, -- GrugFarHelpWinActionDescription xxx links to Comment
    sym"@variable"                          { fg="#ffffff", }, -- @variable      xxx guifg=#ffffff
    sym"@module"                            { fg="#ff5ef1", }, -- @module        xxx guifg=#ff5ef1
    String                                  { fg="#5eff6c", }, -- String         xxx guifg=#5eff6c
    sym"@string"                            { String }, -- @string        xxx links to String
    NvimString                              { String }, -- NvimString     xxx links to String
    sym"@string.regex"                      { String }, -- @string.regex  xxx links to String
    sym"@text.literal"                      { String }, -- @text.literal  xxx links to String
    MiniDepsTitleUpdate                     { String }, -- MiniDepsTitleUpdate xxx links to String
    TelescopePreviewSize                    { String }, -- TelescopePreviewSize xxx links to String
    TelescopePreviewExecute                 { String }, -- TelescopePreviewExecute xxx links to String
    sym"@type.builtin"                      { fg="#d45edd", }, -- @type.builtin  xxx guifg=#d45edd
    Identifier                              { gui="italic", fg="#f6955b", }, -- Identifier     xxx cterm=italic gui=italic guifg=#f6955b
    sym"@property"                          { Identifier }, -- @property      xxx links to Identifier
    NvimIdentifier                          { Identifier }, -- NvimIdentifier xxx links to Identifier
    sym"@field"                             { Identifier }, -- @field         xxx links to Identifier
    sym"@parameter"                         { Identifier }, -- @parameter     xxx links to Identifier
    sym"@symbol"                            { Identifier }, -- @symbol        xxx links to Identifier
    TelescopeMultiIcon                      { Identifier }, -- TelescopeMultiIcon xxx links to Identifier
    TelescopeResultsIdentifier              { Identifier }, -- TelescopeResultsIdentifier xxx links to Identifier
    Function                                { fg="#5ea1ff", }, -- Function       xxx guifg=#5ea1ff
    sym"@function"                          { Function }, -- @function      xxx links to Function
    sym"@function.builtin"                  { Function }, -- @function.builtin xxx links to Function
    sym"@method"                            { Function }, -- @method        xxx links to Function
    TelescopeResultsFunction                { Function }, -- TelescopeResultsFunction xxx links to Function
    TelescopeResultsField                   { Function }, -- TelescopeResultsField xxx links to Function
    TelescopeResultsClass                   { Function }, -- TelescopeResultsClass xxx links to Function
    -- Operator                             { fg="#bd5eff", }, -- Operator       xxx guifg=#bd5eff
    Operator                                { fg="#ee6d85", }, -- Operator       xxx guifg=#ee6d85
    sym"@operator"                          { Operator }, -- @operator      xxx links to Operator
    NvimAssignment                          { Operator }, -- NvimAssignment xxx links to Operator
    NvimOperator                            { Operator }, -- NvimOperator   xxx links to Operator
    TelescopeResultsOperator                { Operator }, -- TelescopeResultsOperator xxx links to Operator
    -- Delimiter                               { fg="#ffffff", }, -- Delimiter      xxx guifg=#ffffff
    Delimiter                               { fg="#a0a8cd", }, -- Delimiter      xxx guifg=#a0a8cd
    sym"@punctuation"                       { Delimiter }, -- @punctuation   xxx links to Delimiter
    sym"@punctuation.special"               { Delimiter }, -- @punctuation.special xxx links to Delimiter
    NvimParenthesis                         { Delimiter }, -- NvimParenthesis xxx links to Delimiter
    NvimColon                               { Delimiter }, -- NvimColon      xxx links to Delimiter
    NvimComma                               { Delimiter }, -- NvimComma      xxx links to Delimiter
    NvimArrow                               { Delimiter }, -- NvimArrow      xxx links to Delimiter
    sym"@punctuation.bracket"               { Delimiter }, -- @punctuation.bracket xxx links to Delimiter
    sym"@punctuation.delimiter"             { Delimiter }, -- @punctuation.delimiter xxx links to Delimiter
    sym"@tag.delimiter"                     { Delimiter }, -- @tag.delimiter xxx links to Delimiter
    MiniStarterItemBullet                   { Delimiter }, -- MiniStarterItemBullet xxx links to Delimiter
    Todo                                    { gui="bold", fg="#bd5eff", }, -- Todo           xxx cterm=bold gui=bold guifg=#bd5eff
    sym"@text.todo"                         { Todo }, -- @text.todo     xxx links to Todo
    sym"@text.warning"                      { Todo }, -- @text.warning  xxx links to Todo
    sym"@markup.strong"                     { gui="bold", fg="#ff5ea0", }, -- @markup.strong xxx cterm=bold gui=bold guifg=#ff5ea0
    sym"@markup.italic"                     { gui="italic", fg="#5ea1ff", }, -- @markup.italic xxx cterm=italic gui=italic guifg=#5ea1ff
    sym"@markup.strikethrough"              { gui="strikethrough", }, -- @markup.strikethrough xxx cterm=strikethrough gui=strikethrough
    sym"@markup.underline"                  { gui="underline", }, -- @markup.underline xxx cterm=underline gui=underline
    Added                                   { fg="#5eff6c", }, -- Added          xxx guifg=#5eff6c
    Removed                                 { fg="#ff6e5e", }, -- Removed        xxx guifg=#ff6e5e
    Changed                                 { fg="nvimlightcyan", }, -- Changed        xxx ctermfg=14 guifg=NvimLightCyan
    sym"@markup.heading.1.delimiter.vimdoc" { sp="fg", bg="bg", gui="underdouble,nocombine", fg="bg", }, -- @markup.heading.1.delimiter.vimdoc xxx cterm=underdouble,nocombine gui=underdouble,nocombine guifg=bg guibg=bg guisp=fg
    sym"@markup.heading.2.delimiter.vimdoc" { sp="fg", bg="bg", gui="underline,nocombine", fg="bg", }, -- @markup.heading.2.delimiter.vimdoc xxx cterm=underline,nocombine gui=underline,nocombine guifg=bg guibg=bg guisp=fg
    DiagnosticDeprecated                    { sp="nvimlightred", gui="strikethrough", }, -- DiagnosticDeprecated xxx cterm=strikethrough gui=strikethrough guisp=NvimLightRed
    sym"@lsp.mod.deprecated"                { DiagnosticDeprecated }, -- @lsp.mod.deprecated xxx links to DiagnosticDeprecated
    FloatShadow                             { bg="nvimdarkgrey4", blend=80, }, -- FloatShadow    xxx ctermbg=0 guibg=NvimDarkGrey4 blend=80
    FloatShadowThrough                      { bg="nvimdarkgrey4", blend=100, }, -- FloatShadowThrough xxx ctermbg=0 guibg=NvimDarkGrey4 blend=100
    MatchParen                              { bg="#3c4048", fg="#ff5ea0", }, -- MatchParen     xxx guifg=#ff5ea0 guibg=#3c4048
    RedrawDebugClear                        { bg="nvimdarkyellow", }, -- RedrawDebugClear xxx ctermfg=0 ctermbg=11 guibg=NvimDarkYellow
    RedrawDebugComposed                     { bg="nvimdarkgreen", }, -- RedrawDebugComposed xxx ctermfg=0 ctermbg=10 guibg=NvimDarkGreen
    RedrawDebugRecompose                    { bg="nvimdarkred", }, -- RedrawDebugRecompose xxx ctermfg=0 ctermbg=9 guibg=NvimDarkRed
    Error                                   { fg="#ff6e5e", }, -- Error          xxx guifg=#ff6e5e
    NvimInvalid                             { Error }, -- NvimInvalid    xxx links to Error
    DiagnosticUnderlineError                { sp="#ff6e5e", gui="undercurl", }, -- DiagnosticUnderlineError xxx cterm=undercurl gui=undercurl guisp=#ff6e5e
    DiagnosticUnderlineWarn                 { sp="#f1ff5e", gui="undercurl", }, -- DiagnosticUnderlineWarn xxx cterm=undercurl gui=undercurl guisp=#f1ff5e
    DiagnosticUnderlineInfo                 { sp="#5ea1ff", gui="undercurl", }, -- DiagnosticUnderlineInfo xxx cterm=undercurl gui=undercurl guisp=#5ea1ff
    DiagnosticUnderlineHint                 { sp="#5ef1ff", gui="undercurl", }, -- DiagnosticUnderlineHint xxx cterm=undercurl gui=undercurl guisp=#5ef1ff
    DiagnosticUnderlineOk                   { sp="nvimlightgreen", gui="underline", }, -- DiagnosticUnderlineOk xxx cterm=underline gui=underline guisp=NvimLightGreen
    NvimInternalError                       { bg="red", fg="red", }, -- NvimInternalError xxx ctermfg=9 ctermbg=9 guifg=Red guibg=Red
    NvimFigureBrace                         { NvimInternalError }, -- NvimFigureBrace xxx links to NvimInternalError
    NvimSingleQuotedUnknownEscape           { NvimInternalError }, -- NvimSingleQuotedUnknownEscape xxx links to NvimInternalError
    NvimInvalidSingleQuotedUnknownEscape    { NvimInternalError }, -- NvimInvalidSingleQuotedUnknownEscape xxx links to NvimInternalError
    htmlH1                                  { gui="bold", fg="#ffbd5e", }, -- htmlH1         xxx cterm=bold gui=bold guifg=#ffbd5e
    htmlH2                                  { gui="bold", fg="#ffbd5e", }, -- htmlH2         xxx cterm=bold gui=bold guifg=#ffbd5e
    markdownH1                              { gui="bold", fg="#ffbd5e", }, -- markdownH1     xxx cterm=bold gui=bold guifg=#ffbd5e
    sym"@markup.heading.1"                  { markdownH1 }, -- @markup.heading.1 xxx links to markdownH1
    sym"@text.title"                        { markdownH1 }, -- @text.title    xxx links to markdownH1
    markdownH2                              { gui="bold", fg="#5ef1ff", }, -- markdownH2     xxx cterm=bold gui=bold guifg=#5ef1ff
    sym"@markup.heading.2"                  { markdownH2 }, -- @markup.heading.2 xxx links to markdownH2
    sym"@text.title.2"                      { markdownH2 }, -- @text.title.2  xxx links to markdownH2
    markdownCodeBlock                       { fg="#5ef1ff", }, -- markdownCodeBlock xxx guifg=#5ef1ff
    markdownCode                            { fg="#5ef1ff", }, -- markdownCode   xxx guifg=#5ef1ff
    markdownLinkText                        { gui="underline", fg="#5ea1ff", }, -- markdownLinkText xxx cterm=underline gui=underline guifg=#5ea1ff
    CmpItemKindVariable                     { fg="#5ef1ff", }, -- CmpItemKindVariable xxx guifg=#5ef1ff
    CmpItemKindKeyword                      { fg="#ffffff", }, -- CmpItemKindKeyword xxx guifg=#ffffff
    CmpItemKindFunction                     { fg="#ff5ea0", }, -- CmpItemKindFunction xxx guifg=#ff5ea0
    CmpItemKindMethod                       { fg="#ff5ea0", }, -- CmpItemKindMethod xxx guifg=#ff5ea0
    CmpItemKindInterface                    { fg="#5ef1ff", }, -- CmpItemKindInterface xxx guifg=#5ef1ff
    CmpItemAbbrMatch                        { fg="#bd5eff", }, -- CmpItemAbbrMatch xxx guifg=#bd5eff
    CmpItemAbbrMatchFuzzy                   { fg="#bd5eff", }, -- CmpItemAbbrMatchFuzzy xxx guifg=#bd5eff
    CmpItemAbbrDeprecated                   { gui="strikethrough", fg="#7b8496", }, -- CmpItemAbbrDeprecated xxx cterm=strikethrough gui=strikethrough guifg=#7b8496
    FzfLuaNormal                            { bg="#16181a", }, -- FzfLuaNormal   xxx guibg=#16181a
    FzfLuaHelpNormal                        { FzfLuaNormal }, -- FzfLuaHelpNormal xxx links to FzfLuaNormal
    FzfLuaFzfNormal                         { FzfLuaNormal }, -- FzfLuaFzfNormal xxx links to FzfLuaNormal
    FzfLuaBackdrop                          { bg="black", }, -- FzfLuaBackdrop xxx guibg=Black
    FzfLuaPreviewNormal                     { bg="#16181a", }, -- FzfLuaPreviewNormal xxx guibg=#16181a
    FzfLuaHeaderBind                        { fg="blanchedalmond", }, -- FzfLuaHeaderBind xxx guifg=BlanchedAlmond
    FzfLuaHeaderText                        { fg="brown1", }, -- FzfLuaHeaderText xxx guifg=Brown1
    FzfLuaPathColNr                         { fg="cadetblue1", }, -- FzfLuaPathColNr xxx guifg=CadetBlue1
    FzfLuaPathLineNr                        { fg="lightgreen", }, -- FzfLuaPathLineNr xxx guifg=LightGreen
    FzfLuaLivePrompt                        { fg="palevioletred1", }, -- FzfLuaLivePrompt xxx guifg=PaleVioletRed1
    FzfLuaLiveSym                           { fg="palevioletred1", }, -- FzfLuaLiveSym  xxx guifg=PaleVioletRed1
    FzfLuaBufNr                             { fg="blanchedalmond", }, -- FzfLuaBufNr    xxx guifg=BlanchedAlmond
    FzfLuaBufFlagCur                        { fg="brown1", }, -- FzfLuaBufFlagCur xxx guifg=Brown1
    FzfLuaBufFlagAlt                        { fg="cadetblue1", }, -- FzfLuaBufFlagAlt xxx guifg=CadetBlue1
    FzfLuaTabTitle                          { gui="bold", fg="lightskyblue1", }, -- FzfLuaTabTitle xxx cterm=bold gui=bold guifg=LightSkyBlue1
    FzfLuaTabMarker                         { gui="bold", fg="blanchedalmond", }, -- FzfLuaTabMarker xxx cterm=bold gui=bold guifg=BlanchedAlmond
    FzfLuaFzfMatch                          { fg="#5ef1ff", }, -- FzfLuaFzfMatch xxx guifg=#5ef1ff
    FzfLuaFzfGutter                         { bg="#1e2124", }, -- FzfLuaFzfGutter xxx guibg=#1e2124
    FzfLuaFzfHeader                         { fg="#bd5eff", }, -- FzfLuaFzfHeader xxx guifg=#bd5eff
    FzfLuaFzfInfo                           { fg="#5ef1ff", }, -- FzfLuaFzfInfo  xxx guifg=#5ef1ff
    FzfLuaFzfPointer                        { fg="#ff5ea0", }, -- FzfLuaFzfPointer xxx guifg=#ff5ea0
    FzfLuaFzfMarker                         { FzfLuaFzfPointer }, -- FzfLuaFzfMarker xxx links to FzfLuaFzfPointer
    FzfLuaFzfSpinner                        { FzfLuaFzfPointer }, -- FzfLuaFzfSpinner xxx links to FzfLuaFzfPointer
    FzfLuaFzfPrompt                         { fg="#ffffff", }, -- FzfLuaFzfPrompt xxx guifg=#ffffff
    FzfLuaFzfQuery                          { fg="#5ea1ff", }, -- FzfLuaFzfQuery xxx guifg=#5ea1ff
    TelescopeBorder                         { fg="#3c4048", }, -- TelescopeBorder xxx guifg=#3c4048
    TelescopeTitle                          { TelescopeBorder }, -- TelescopeTitle xxx links to TelescopeBorder
    TelescopePreviewBorder                  { TelescopeBorder }, -- TelescopePreviewBorder xxx links to TelescopeBorder
    TelescopePromptBorder                   { TelescopeBorder }, -- TelescopePromptBorder xxx links to TelescopeBorder
    TelescopeResultsBorder                  { TelescopeBorder }, -- TelescopeResultsBorder xxx links to TelescopeBorder
    TelescopePromptTitle                    { fg="#5ea1ff", }, -- TelescopePromptTitle xxx guifg=#5ea1ff
    TelescopePreviewTitle                   { fg="#ff5ef1", }, -- TelescopePreviewTitle xxx guifg=#ff5ef1
    TelescopeSelection                      { bg="#3c4048", }, -- TelescopeSelection xxx guibg=#3c4048
    TelescopeSelectionCaret                 { TelescopeSelection }, -- TelescopeSelectionCaret xxx links to TelescopeSelection
    GitSignsAdd                             { fg="#5eff6c", }, -- GitSignsAdd    xxx guifg=#5eff6c
    GitSignsUntracked                       { GitSignsAdd }, -- GitSignsUntracked xxx links to GitSignsAdd
    GitSignsAddNr                           { GitSignsAdd }, -- GitSignsAddNr  xxx links to GitSignsAdd
    GitSignsAddCul                          { GitSignsAdd }, -- GitSignsAddCul xxx links to GitSignsAdd
    GitSignsChange                          { fg="#ffbd5e", }, -- GitSignsChange xxx guifg=#ffbd5e
    GitSignsChangedelete                    { GitSignsChange }, -- GitSignsChangedelete xxx links to GitSignsChange
    GitSignsChangeNr                        { GitSignsChange }, -- GitSignsChangeNr xxx links to GitSignsChange
    GitSignsChangeCul                       { GitSignsChange }, -- GitSignsChangeCul xxx links to GitSignsChange
    GitSignsDelete                          { fg="#ff6e5e", }, -- GitSignsDelete xxx guifg=#ff6e5e
    GitSignsTopdelete                       { GitSignsDelete }, -- GitSignsTopdelete xxx links to GitSignsDelete
    GitSignsDeleteNr                        { GitSignsDelete }, -- GitSignsDeleteNr xxx links to GitSignsDelete
    GitSignsDeleteCul                       { GitSignsDelete }, -- GitSignsDeleteCul xxx links to GitSignsDelete
    GitSignsStagedAdd                       { fg="#2f7f36", }, -- GitSignsStagedAdd xxx guifg=#2f7f36
    GitSignsStagedChange                    { fg="#7f5e2f", }, -- GitSignsStagedChange xxx guifg=#7f5e2f
    GitSignsStagedDelete                    { fg="#7f372f", }, -- GitSignsStagedDelete xxx guifg=#7f372f
    GitSignsStagedChangedelete              { fg="#7f5e2f", }, -- GitSignsStagedChangedelete xxx guifg=#7f5e2f
    GitSignsStagedTopdelete                 { fg="#7f372f", }, -- GitSignsStagedTopdelete xxx guifg=#7f372f
    GitSignsStagedUntracked                 { fg="#2f7f36", }, -- GitSignsStagedUntracked xxx guifg=#2f7f36
    GitSignsStagedAddNr                     { fg="#2f7f36", }, -- GitSignsStagedAddNr xxx guifg=#2f7f36
    GitSignsStagedChangeNr                  { fg="#7f5e2f", }, -- GitSignsStagedChangeNr xxx guifg=#7f5e2f
    GitSignsStagedDeleteNr                  { fg="#7f372f", }, -- GitSignsStagedDeleteNr xxx guifg=#7f372f
    GitSignsStagedChangedeleteNr            { fg="#7f5e2f", }, -- GitSignsStagedChangedeleteNr xxx guifg=#7f5e2f
    GitSignsStagedTopdeleteNr               { fg="#7f372f", }, -- GitSignsStagedTopdeleteNr xxx guifg=#7f372f
    GitSignsStagedUntrackedNr               { fg="#2f7f36", }, -- GitSignsStagedUntrackedNr xxx guifg=#2f7f36
    GitSignsStagedAddLn                     { bg="#24462a", }, -- GitSignsStagedAddLn xxx guibg=#24462a
    GitSignsStagedChangeLn                  { bg="#243347", }, -- GitSignsStagedChangeLn xxx guibg=#243347
    GitSignsStagedChangedeleteLn            { bg="#243347", }, -- GitSignsStagedChangedeleteLn xxx guibg=#243347
    GitSignsStagedTopdeleteLn               { bg="#442927", }, -- GitSignsStagedTopdeleteLn xxx guibg=#442927
    GitSignsStagedUntrackedLn               { bg="#24462a", }, -- GitSignsStagedUntrackedLn xxx guibg=#24462a
    GitSignsStagedAddCul                    { fg="#2f7f36", }, -- GitSignsStagedAddCul xxx guifg=#2f7f36
    GitSignsStagedChangeCul                 { fg="#7f5e2f", }, -- GitSignsStagedChangeCul xxx guifg=#7f5e2f
    GitSignsStagedDeleteCul                 { fg="#7f372f", }, -- GitSignsStagedDeleteCul xxx guifg=#7f372f
    GitSignsStagedChangedeleteCul           { fg="#7f5e2f", }, -- GitSignsStagedChangedeleteCul xxx guifg=#7f5e2f
    GitSignsStagedTopdeleteCul              { fg="#7f372f", }, -- GitSignsStagedTopdeleteCul xxx guifg=#7f372f
    GitSignsStagedUntrackedCul              { fg="#2f7f36", }, -- GitSignsStagedUntrackedCul xxx guifg=#2f7f36
    GitSignsAddInline                       { bg="#1d2f22", }, -- GitSignsAddInline xxx guibg=#1d2f22
    GitSignsAddLnInline                     { GitSignsAddInline }, -- GitSignsAddLnInline xxx links to GitSignsAddInline
    GitSignsDeleteInline                    { bg="#2d2020", }, -- GitSignsDeleteInline xxx guibg=#2d2020
    GitSignsDeleteLnInline                  { GitSignsDeleteInline }, -- GitSignsDeleteLnInline xxx links to GitSignsDeleteInline
    GitSignsChangeInline                    { bg="#1d2530", }, -- GitSignsChangeInline xxx guibg=#1d2530
    GitSignsChangeLnInline                  { GitSignsChangeInline }, -- GitSignsChangeLnInline xxx links to GitSignsChangeInline
    lualine_transparent                     { bg="#16181a", gui="nocombine", fg="#ffffff", }, -- lualine_transparent xxx gui=nocombine guifg=#ffffff guibg=#16181a
    lualine_a_insert                        { bg="#16181a", gui="nocombine", fg="#5eff6c", }, -- lualine_a_insert xxx gui=nocombine guifg=#5eff6c guibg=#16181a
    lualine_a_visual                        { bg="#16181a", gui="nocombine", fg="#ff5ef1", }, -- lualine_a_visual xxx gui=nocombine guifg=#ff5ef1 guibg=#16181a
    lualine_a_normal                        { bg="#16181a", gui="nocombine", fg="#5ea1ff", }, -- lualine_a_normal xxx gui=nocombine guifg=#5ea1ff guibg=#16181a
    lualine_b_normal                        { bg="#16181a", gui="nocombine", fg="#5ef1ff", }, -- lualine_b_normal xxx gui=nocombine guifg=#5ef1ff guibg=#16181a
    lualine_c_normal                        { bg="#16181a", gui="nocombine", fg="#ffffff", }, -- lualine_c_normal xxx gui=nocombine guifg=#ffffff guibg=#16181a
    lualine_b_diff_added_normal             { bg="#16181a", gui="nocombine", fg="#5eff6c", }, -- lualine_b_diff_added_normal xxx gui=nocombine guifg=#5eff6c guibg=#16181a
    lualine_b_diff_added_insert             { bg="#16181a", gui="nocombine", fg="#5eff6c", }, -- lualine_b_diff_added_insert xxx gui=nocombine guifg=#5eff6c guibg=#16181a
    lualine_b_diff_added_visual             { bg="#16181a", gui="nocombine", fg="#5eff6c", }, -- lualine_b_diff_added_visual xxx gui=nocombine guifg=#5eff6c guibg=#16181a
    lualine_b_diff_added_replace            { bg="#16181a", gui="nocombine", fg="#5eff6c", }, -- lualine_b_diff_added_replace xxx gui=nocombine guifg=#5eff6c guibg=#16181a
    lualine_b_diff_added_command            { bg="#16181a", gui="nocombine", fg="#5eff6c", }, -- lualine_b_diff_added_command xxx gui=nocombine guifg=#5eff6c guibg=#16181a
    lualine_b_diff_added_terminal           { bg="#16181a", gui="nocombine", fg="#5eff6c", }, -- lualine_b_diff_added_terminal xxx gui=nocombine guifg=#5eff6c guibg=#16181a
    lualine_b_diff_added_inactive           { bg="#16181a", gui="nocombine", fg="#5eff6c", }, -- lualine_b_diff_added_inactive xxx gui=nocombine guifg=#5eff6c guibg=#16181a
    lualine_b_diff_modified_normal          { bg="#16181a", gui="nocombine", fg="#ffbd5e", }, -- lualine_b_diff_modified_normal xxx gui=nocombine guifg=#ffbd5e guibg=#16181a
    lualine_b_diff_modified_insert          { bg="#16181a", gui="nocombine", fg="#ffbd5e", }, -- lualine_b_diff_modified_insert xxx gui=nocombine guifg=#ffbd5e guibg=#16181a
    lualine_b_diff_modified_visual          { bg="#16181a", gui="nocombine", fg="#ffbd5e", }, -- lualine_b_diff_modified_visual xxx gui=nocombine guifg=#ffbd5e guibg=#16181a
    lualine_b_diff_modified_replace         { bg="#16181a", gui="nocombine", fg="#ffbd5e", }, -- lualine_b_diff_modified_replace xxx gui=nocombine guifg=#ffbd5e guibg=#16181a
    lualine_b_diff_modified_command         { bg="#16181a", gui="nocombine", fg="#ffbd5e", }, -- lualine_b_diff_modified_command xxx gui=nocombine guifg=#ffbd5e guibg=#16181a
    lualine_b_diff_modified_terminal        { bg="#16181a", gui="nocombine", fg="#ffbd5e", }, -- lualine_b_diff_modified_terminal xxx gui=nocombine guifg=#ffbd5e guibg=#16181a
    lualine_b_diff_modified_inactive        { bg="#16181a", gui="nocombine", fg="#ffbd5e", }, -- lualine_b_diff_modified_inactive xxx gui=nocombine guifg=#ffbd5e guibg=#16181a
    lualine_b_diff_removed_normal           { bg="#16181a", gui="nocombine", fg="#ff6e5e", }, -- lualine_b_diff_removed_normal xxx gui=nocombine guifg=#ff6e5e guibg=#16181a
    lualine_b_diff_removed_insert           { bg="#16181a", gui="nocombine", fg="#ff6e5e", }, -- lualine_b_diff_removed_insert xxx gui=nocombine guifg=#ff6e5e guibg=#16181a
    lualine_b_diff_removed_visual           { bg="#16181a", gui="nocombine", fg="#ff6e5e", }, -- lualine_b_diff_removed_visual xxx gui=nocombine guifg=#ff6e5e guibg=#16181a
    lualine_b_diff_removed_replace          { bg="#16181a", gui="nocombine", fg="#ff6e5e", }, -- lualine_b_diff_removed_replace xxx gui=nocombine guifg=#ff6e5e guibg=#16181a
    lualine_b_diff_removed_command          { bg="#16181a", gui="nocombine", fg="#ff6e5e", }, -- lualine_b_diff_removed_command xxx gui=nocombine guifg=#ff6e5e guibg=#16181a
    lualine_b_diff_removed_terminal         { bg="#16181a", gui="nocombine", fg="#ff6e5e", }, -- lualine_b_diff_removed_terminal xxx gui=nocombine guifg=#ff6e5e guibg=#16181a
    lualine_b_diff_removed_inactive         { bg="#16181a", gui="nocombine", fg="#ff6e5e", }, -- lualine_b_diff_removed_inactive xxx gui=nocombine guifg=#ff6e5e guibg=#16181a
    lualine_b_diagnostics_error_normal      { bg="#16181a", gui="nocombine", fg="#ff6e5e", }, -- lualine_b_diagnostics_error_normal xxx gui=nocombine guifg=#ff6e5e guibg=#16181a
    lualine_b_diagnostics_error_insert      { bg="#16181a", gui="nocombine", fg="#ff6e5e", }, -- lualine_b_diagnostics_error_insert xxx gui=nocombine guifg=#ff6e5e guibg=#16181a
    lualine_b_diagnostics_error_visual      { bg="#16181a", gui="nocombine", fg="#ff6e5e", }, -- lualine_b_diagnostics_error_visual xxx gui=nocombine guifg=#ff6e5e guibg=#16181a
    lualine_b_diagnostics_error_replace     { bg="#16181a", gui="nocombine", fg="#ff6e5e", }, -- lualine_b_diagnostics_error_replace xxx gui=nocombine guifg=#ff6e5e guibg=#16181a
    lualine_b_diagnostics_error_command     { bg="#16181a", gui="nocombine", fg="#ff6e5e", }, -- lualine_b_diagnostics_error_command xxx gui=nocombine guifg=#ff6e5e guibg=#16181a
    lualine_b_diagnostics_error_terminal    { bg="#16181a", gui="nocombine", fg="#ff6e5e", }, -- lualine_b_diagnostics_error_terminal xxx gui=nocombine guifg=#ff6e5e guibg=#16181a
    lualine_b_diagnostics_error_inactive    { bg="#16181a", gui="nocombine", fg="#ff6e5e", }, -- lualine_b_diagnostics_error_inactive xxx gui=nocombine guifg=#ff6e5e guibg=#16181a
    lualine_b_diagnostics_warn_normal       { bg="#16181a", gui="nocombine", fg="#f1ff5e", }, -- lualine_b_diagnostics_warn_normal xxx gui=nocombine guifg=#f1ff5e guibg=#16181a
    lualine_b_diagnostics_warn_insert       { bg="#16181a", gui="nocombine", fg="#f1ff5e", }, -- lualine_b_diagnostics_warn_insert xxx gui=nocombine guifg=#f1ff5e guibg=#16181a
    lualine_b_diagnostics_warn_visual       { bg="#16181a", gui="nocombine", fg="#f1ff5e", }, -- lualine_b_diagnostics_warn_visual xxx gui=nocombine guifg=#f1ff5e guibg=#16181a
    lualine_b_diagnostics_warn_replace      { bg="#16181a", gui="nocombine", fg="#f1ff5e", }, -- lualine_b_diagnostics_warn_replace xxx gui=nocombine guifg=#f1ff5e guibg=#16181a
    lualine_b_diagnostics_warn_command      { bg="#16181a", gui="nocombine", fg="#f1ff5e", }, -- lualine_b_diagnostics_warn_command xxx gui=nocombine guifg=#f1ff5e guibg=#16181a
    lualine_b_diagnostics_warn_terminal     { bg="#16181a", gui="nocombine", fg="#f1ff5e", }, -- lualine_b_diagnostics_warn_terminal xxx gui=nocombine guifg=#f1ff5e guibg=#16181a
    lualine_b_diagnostics_warn_inactive     { bg="#16181a", gui="nocombine", fg="#f1ff5e", }, -- lualine_b_diagnostics_warn_inactive xxx gui=nocombine guifg=#f1ff5e guibg=#16181a
    lualine_b_diagnostics_info_normal       { bg="#16181a", gui="nocombine", fg="#5ea1ff", }, -- lualine_b_diagnostics_info_normal xxx gui=nocombine guifg=#5ea1ff guibg=#16181a
    lualine_b_diagnostics_info_insert       { bg="#16181a", gui="nocombine", fg="#5ea1ff", }, -- lualine_b_diagnostics_info_insert xxx gui=nocombine guifg=#5ea1ff guibg=#16181a
    lualine_b_diagnostics_info_visual       { bg="#16181a", gui="nocombine", fg="#5ea1ff", }, -- lualine_b_diagnostics_info_visual xxx gui=nocombine guifg=#5ea1ff guibg=#16181a
    lualine_b_diagnostics_info_replace      { bg="#16181a", gui="nocombine", fg="#5ea1ff", }, -- lualine_b_diagnostics_info_replace xxx gui=nocombine guifg=#5ea1ff guibg=#16181a
    lualine_b_diagnostics_info_command      { bg="#16181a", gui="nocombine", fg="#5ea1ff", }, -- lualine_b_diagnostics_info_command xxx gui=nocombine guifg=#5ea1ff guibg=#16181a
    lualine_b_diagnostics_info_terminal     { bg="#16181a", gui="nocombine", fg="#5ea1ff", }, -- lualine_b_diagnostics_info_terminal xxx gui=nocombine guifg=#5ea1ff guibg=#16181a
    lualine_b_diagnostics_info_inactive     { bg="#16181a", gui="nocombine", fg="#5ea1ff", }, -- lualine_b_diagnostics_info_inactive xxx gui=nocombine guifg=#5ea1ff guibg=#16181a
    lualine_b_diagnostics_hint_normal       { bg="#16181a", gui="nocombine", fg="#5ef1ff", }, -- lualine_b_diagnostics_hint_normal xxx gui=nocombine guifg=#5ef1ff guibg=#16181a
    lualine_b_diagnostics_hint_insert       { bg="#16181a", gui="nocombine", fg="#5ef1ff", }, -- lualine_b_diagnostics_hint_insert xxx gui=nocombine guifg=#5ef1ff guibg=#16181a
    lualine_b_diagnostics_hint_visual       { bg="#16181a", gui="nocombine", fg="#5ef1ff", }, -- lualine_b_diagnostics_hint_visual xxx gui=nocombine guifg=#5ef1ff guibg=#16181a
    lualine_b_diagnostics_hint_replace      { bg="#16181a", gui="nocombine", fg="#5ef1ff", }, -- lualine_b_diagnostics_hint_replace xxx gui=nocombine guifg=#5ef1ff guibg=#16181a
    lualine_b_diagnostics_hint_command      { bg="#16181a", gui="nocombine", fg="#5ef1ff", }, -- lualine_b_diagnostics_hint_command xxx gui=nocombine guifg=#5ef1ff guibg=#16181a
    lualine_b_diagnostics_hint_terminal     { bg="#16181a", gui="nocombine", fg="#5ef1ff", }, -- lualine_b_diagnostics_hint_terminal xxx gui=nocombine guifg=#5ef1ff guibg=#16181a
    lualine_b_diagnostics_hint_inactive     { bg="#16181a", gui="nocombine", fg="#5ef1ff", }, -- lualine_b_diagnostics_hint_inactive xxx gui=nocombine guifg=#5ef1ff guibg=#16181a
    NotifyBackground                        { bg="#16181a", }, -- NotifyBackground xxx guibg=#16181a
    NotifyERRORBorder                       { fg="#3c4048", }, -- NotifyERRORBorder xxx guifg=#3c4048
    NotifyWARNBorder                        { fg="#3c4048", }, -- NotifyWARNBorder xxx guifg=#3c4048
    NotifyINFOBorder                        { fg="#3c4048", }, -- NotifyINFOBorder xxx guifg=#3c4048
    NotifyDEBUGBorder                       { fg="#3c4048", }, -- NotifyDEBUGBorder xxx guifg=#3c4048
    NotifyTRACEBorder                       { fg="#3c4048", }, -- NotifyTRACEBorder xxx guifg=#3c4048
    NotifyERRORIcon                         { fg="#ff6e5e", }, -- NotifyERRORIcon xxx guifg=#ff6e5e
    NotifyWARNIcon                          { fg="#ffbd5e", }, -- NotifyWARNIcon xxx guifg=#ffbd5e
    NotifyINFOIcon                          { fg="#5eff6c", }, -- NotifyINFOIcon xxx guifg=#5eff6c
    NotifyDEBUGIcon                         { fg="#7b8496", }, -- NotifyDEBUGIcon xxx guifg=#7b8496
    NotifyTRACEIcon                         { fg="#bd5eff", }, -- NotifyTRACEIcon xxx guifg=#bd5eff
    NotifyERRORTitle                        { fg="#ff5ea0", }, -- NotifyERRORTitle xxx guifg=#ff5ea0
    NotifyWARNTitle                         { fg="#f1ff5e", }, -- NotifyWARNTitle xxx guifg=#f1ff5e
    NotifyINFOTitle                         { fg="#5ef1ff", }, -- NotifyINFOTitle xxx guifg=#5ef1ff
    NotifyDEBUGTitle                        { fg="#7b8496", }, -- NotifyDEBUGTitle xxx guifg=#7b8496
    NotifyTRACETitle                        { fg="#ff5ef1", }, -- NotifyTRACETitle xxx guifg=#ff5ef1
    NotifyERRORBody                         { fg="#ffffff", }, -- NotifyERRORBody xxx guifg=#ffffff
    NotifyWARNBody                          { fg="#ffffff", }, -- NotifyWARNBody xxx guifg=#ffffff
    NotifyINFOBody                          { fg="#ffffff", }, -- NotifyINFOBody xxx guifg=#ffffff
    NotifyDEBUGBody                         { fg="#ffffff", }, -- NotifyDEBUGBody xxx guifg=#ffffff
    ZenBg                                   { bg="#141618", fg="#141618", }, -- ZenBg          xxx guifg=#141618 guibg=#141618
    iCursor                                 { bg="#ffffff", fg="#16181a", }, -- iCursor        xxx guifg=#16181a guibg=#ffffff
    sym"@markup.link.url"                   { gui="underline", fg="#5ea1ff", }, -- @markup.link.url xxx cterm=underline gui=underline guifg=#5ea1ff
    sym"@markup.list.checked"               { gui="bold", fg="#5eff6c", }, -- @markup.list.checked xxx cterm=bold gui=bold guifg=#5eff6c
    RenderMarkdownChecked                   { sym"@markup.list.checked" }, -- RenderMarkdownChecked xxx links to @markup.list.checked
    sym"@markup.list.unchecked"             { gui="bold", fg="#ff5ef1", }, -- @markup.list.unchecked xxx cterm=bold gui=bold guifg=#ff5ef1
    RenderMarkdownUnchecked                 { sym"@markup.list.unchecked" }, -- RenderMarkdownUnchecked xxx links to @markup.list.unchecked
    sym"@text.emphasis"                     { gui="italic", }, -- @text.emphasis xxx cterm=italic gui=italic
    sym"@text.strike"                       { gui="strikethrough", }, -- @text.strike   xxx cterm=strikethrough gui=strikethrough
    sym"@text.strong"                       { gui="bold", }, -- @text.strong   xxx cterm=bold gui=bold
    sym"@text.underline"                    { gui="underline", }, -- @text.underline xxx cterm=underline gui=underline
    WhichKey                                { fg="#5ef1ff", }, -- WhichKey       xxx guifg=#5ef1ff
    WhichKeySeperator                       { fg="#7b8496", }, -- WhichKeySeperator xxx guifg=#7b8496
    WhichKeyGroup                           { fg="#5ea1ff", }, -- WhichKeyGroup  xxx guifg=#5ea1ff
    WhichKeyDesc                            { fg="#ff5ea0", }, -- WhichKeyDesc   xxx guifg=#ff5ea0
    CmpItemAbbr                             { fg="#ffffff", }, -- CmpItemAbbr    xxx guifg=#ffffff
    CmpItemMenu                             { fg="#7b8496", }, -- CmpItemMenu    xxx guifg=#7b8496
    CmpItemKindDefault                      { fg="#ff5ea0", }, -- CmpItemKindDefault xxx guifg=#ff5ea0
    CmpItemKindProperty                     { fg="#ffffff", }, -- CmpItemKindProperty xxx guifg=#ffffff
    CmpItemKindText                         { fg="#5ef1ff", }, -- CmpItemKindText xxx guifg=#5ef1ff
    CmpItemKindUnit                         { fg="#ffffff", }, -- CmpItemKindUnit xxx guifg=#ffffff
    BlinkCmpLabelMatch                      { fg="#5ef1ff", }, -- BlinkCmpLabelMatch xxx guifg=#5ef1ff
    BlinkCmpKindClass                       { fg="#5ea1ff", }, -- BlinkCmpKindClass xxx guifg=#5ea1ff
    BlinkCmpKindColor                       { fg="#5eff6c", }, -- BlinkCmpKindColor xxx guifg=#5eff6c
    BlinkCmpKindConstant                    { fg="#ff5ea0", }, -- BlinkCmpKindConstant xxx guifg=#ff5ea0
    BlinkCmpKindConstructor                 { fg="#bd5eff", }, -- BlinkCmpKindConstructor xxx guifg=#bd5eff
    BlinkCmpKindEnum                        { fg="#ffbd5e", }, -- BlinkCmpKindEnum xxx guifg=#ffbd5e
    BlinkCmpKindEnumMember                  { fg="#ffbd5e", }, -- BlinkCmpKindEnumMember xxx guifg=#ffbd5e
    BlinkCmpKindEvent                       { fg="#5eff6c", }, -- BlinkCmpKindEvent xxx guifg=#5eff6c
    BlinkCmpKindField                       { fg="#5eff6c", }, -- BlinkCmpKindField xxx guifg=#5eff6c
    BlinkCmpKindFile                        { fg="#5eff6c", }, -- BlinkCmpKindFile xxx guifg=#5eff6c
    BlinkCmpKindFolder                      { fg="#5eff6c", }, -- BlinkCmpKindFolder xxx guifg=#5eff6c
    BlinkCmpKindFunction                    { fg="#5ea1ff", }, -- BlinkCmpKindFunction xxx guifg=#5ea1ff
    BlinkCmpKindInterface                   { fg="#5ea1ff", }, -- BlinkCmpKindInterface xxx guifg=#5ea1ff
    BlinkCmpKindKeyword                     { fg="#ff5ef1", }, -- BlinkCmpKindKeyword xxx guifg=#ff5ef1
    BlinkCmpKindMethod                      { fg="#5ea1ff", }, -- BlinkCmpKindMethod xxx guifg=#5ea1ff
    BlinkCmpKindModule                      { fg="#5ea1ff", }, -- BlinkCmpKindModule xxx guifg=#5ea1ff
    BlinkCmpKindOperator                    { fg="#ff5ef1", }, -- BlinkCmpKindOperator xxx guifg=#ff5ef1
    BlinkCmpKindProperty                    { fg="#ff6e5e", }, -- BlinkCmpKindProperty xxx guifg=#ff6e5e
    BlinkCmpKindReference                   { fg="#5eff6c", }, -- BlinkCmpKindReference xxx guifg=#5eff6c
    BlinkCmpKindSnippet                     { fg="#5eff6c", }, -- BlinkCmpKindSnippet xxx guifg=#5eff6c
    BlinkCmpKindStruct                      { fg="#5ea1ff", }, -- BlinkCmpKindStruct xxx guifg=#5ea1ff
    BlinkCmpKindText                        { fg="#5eff6c", }, -- BlinkCmpKindText xxx guifg=#5eff6c
    BlinkCmpKindTypeParameter               { fg="#ff5ea0", }, -- BlinkCmpKindTypeParameter xxx guifg=#ff5ea0
    BlinkCmpKindUnit                        { fg="#ffbd5e", }, -- BlinkCmpKindUnit xxx guifg=#ffbd5e
    BlinkCmpKindValue                       { fg="#ffbd5e", }, -- BlinkCmpKindValue xxx guifg=#ffbd5e
    BlinkCmpKindVariable                    { fg="#ffbd5e", }, -- BlinkCmpKindVariable xxx guifg=#ffbd5e
    TroubleCode                             { fg="#ff5ef1", }, -- TroubleCode    xxx guifg=#ff5ef1
    TelescopeMatching                       { fg="#5ef1ff", }, -- TelescopeMatching xxx guifg=#5ef1ff
    TelescopePromptPrefix                   { fg="#ff5ea0", }, -- TelescopePromptPrefix xxx guifg=#ff5ea0
    SnacksPickerPrompt                      { gui="bold", fg="#5ea1ff", }, -- SnacksPickerPrompt xxx cterm=bold gui=bold guifg=#5ea1ff
    SnacksPickerMatch                       { fg="#5ef1ff", }, -- SnacksPickerMatch xxx guifg=#5ef1ff
    SnacksPickerDir                         { fg="#7b8496", }, -- SnacksPickerDir xxx guifg=#7b8496
    HopNextKey                              { bg="#38223a", gui="bold", fg="#ff5ef1", }, -- HopNextKey     xxx cterm=bold gui=bold guifg=#ff5ef1 guibg=#38223a
    HopNextKey1                             { bg="#20383c", gui="bold", fg="#5ef1ff", }, -- HopNextKey1    xxx cterm=bold gui=bold guifg=#5ef1ff guibg=#20383c
    HopNextKey2                             { bg="#1d2d30", gui="bold", fg="#48afba", }, -- HopNextKey2    xxx cterm=bold gui=bold guifg=#48afba guibg=#1d2d30
    HopUnmatched                            { fg="#3c4048", }, -- HopUnmatched   xxx guifg=#3c4048
    IblScope                                { fg="#3c4048", }, -- IblScope       xxx guifg=#3c4048
    IblIndent                               { fg="#272a2e", }, -- IblIndent      xxx guifg=#272a2e
    RainbowDelimiterRed                     { fg="#ff6e5e", }, -- RainbowDelimiterRed xxx guifg=#ff6e5e
    RainbowDelimiterOrange                  { fg="#ffbd5e", }, -- RainbowDelimiterOrange xxx guifg=#ffbd5e
    RainbowDelimiterYellow                  { fg="#f1ff5e", }, -- RainbowDelimiterYellow xxx guifg=#f1ff5e
    RainbowDelimiterGreen                   { fg="#5eff6c", }, -- RainbowDelimiterGreen xxx guifg=#5eff6c
    RainbowDelimiterCyan                    { fg="#5ef1ff", }, -- RainbowDelimiterCyan xxx guifg=#5ef1ff
    RainbowDelimiterBlue                    { fg="#5ea1ff", }, -- RainbowDelimiterBlue xxx guifg=#5ea1ff
    RainbowDelimiterViolet                  { fg="#bd5eff", }, -- RainbowDelimiterViolet xxx guifg=#bd5eff
    MiniAnimateCursor                       { gui="reverse,nocombine", }, -- MiniAnimateCursor xxx cterm=reverse,nocombine gui=reverse,nocombine
    MiniFilesFile                           { fg="#ffffff", }, -- MiniFilesFile  xxx guifg=#ffffff
    MiniFilesTitleFocused                   { fg="#5ef1ff", }, -- MiniFilesTitleFocused xxx guifg=#5ef1ff
    MiniHipatternsFixme                     { bg="#ff6e5e", gui="bold", fg="#16181a", }, -- MiniHipatternsFixme xxx cterm=bold gui=bold guifg=#16181a guibg=#ff6e5e
    MiniHipatternsHack                      { bg="#f1ff5e", gui="bold", fg="#16181a", }, -- MiniHipatternsHack xxx cterm=bold gui=bold guifg=#16181a guibg=#f1ff5e
    MiniHipatternsNote                      { bg="#5ea1ff", gui="bold", fg="#16181a", }, -- MiniHipatternsNote xxx cterm=bold gui=bold guifg=#16181a guibg=#5ea1ff
    MiniHipatternsTodo                      { bg="#5ef1ff", gui="bold", fg="#16181a", }, -- MiniHipatternsTodo xxx cterm=bold gui=bold guifg=#16181a guibg=#5ef1ff
    MiniIconsAzure                          { fg="#cefaff", }, -- MiniIconsAzure xxx guifg=#cefaff
    MiniIconsBlue                           { fg="#5ea1ff", }, -- MiniIconsBlue  xxx guifg=#5ea1ff
    MiniIconsCyan                           { fg="#5ef1ff", }, -- MiniIconsCyan  xxx guifg=#5ef1ff
    MiniIconsGreen                          { fg="#5eff6c", }, -- MiniIconsGreen xxx guifg=#5eff6c
    MiniIconsGrey                           { fg="#ffffff", }, -- MiniIconsGrey  xxx guifg=#ffffff
    MiniIconsOrange                         { fg="#ffbd5e", }, -- MiniIconsOrange xxx guifg=#ffbd5e
    MiniIconsPurple                         { fg="#bd5eff", }, -- MiniIconsPurple xxx guifg=#bd5eff
    MiniIconsRed                            { fg="#ff6e5e", }, -- MiniIconsRed   xxx guifg=#ff6e5e
    MiniIconsYellow                         { fg="#f1ff5e", }, -- MiniIconsYellow xxx guifg=#f1ff5e
    MiniJump2dSpot                          { gui="bold,nocombine", fg="#ffbd5e", }, -- MiniJump2dSpot xxx cterm=bold,nocombine gui=bold,nocombine guifg=#ffbd5e
    MiniJump2dSpotAhead                     { bg="#16181a", gui="nocombine", fg="#5ef1ff", }, -- MiniJump2dSpotAhead xxx cterm=nocombine gui=nocombine guifg=#5ef1ff guibg=#16181a
    MiniJump2dSpotUnique                    { gui="bold,nocombine", fg="#f1ff5e", }, -- MiniJump2dSpotUnique xxx cterm=bold,nocombine gui=bold,nocombine guifg=#f1ff5e
    MiniStarterCurrent                      { gui="nocombine", }, -- MiniStarterCurrent xxx cterm=nocombine gui=nocombine
    MiniStatuslineModeCommand               { bg="#f1ff5e", gui="bold", fg="#16181a", }, -- MiniStatuslineModeCommand xxx cterm=bold gui=bold guifg=#16181a guibg=#f1ff5e
    MiniStatuslineModeInsert                { bg="#5eff6c", gui="bold", fg="#16181a", }, -- MiniStatuslineModeInsert xxx cterm=bold gui=bold guifg=#16181a guibg=#5eff6c
    MiniStatuslineModeNormal                { bg="#5ea1ff", gui="bold", fg="#16181a", }, -- MiniStatuslineModeNormal xxx cterm=bold gui=bold guifg=#16181a guibg=#5ea1ff
    MiniStatuslineModeOther                 { bg="#5ef1ff", gui="bold", fg="#16181a", }, -- MiniStatuslineModeOther xxx cterm=bold gui=bold guifg=#16181a guibg=#5ef1ff
    MiniStatuslineModeReplace               { bg="#ff6e5e", gui="bold", fg="#16181a", }, -- MiniStatuslineModeReplace xxx cterm=bold gui=bold guifg=#16181a guibg=#ff6e5e
    MiniStatuslineModeVisual                { bg="#ff5ef1", gui="bold", fg="#16181a", }, -- MiniStatuslineModeVisual xxx cterm=bold gui=bold guifg=#16181a guibg=#ff5ef1
    MiniTablineCurrent                      { bg="#3c4048", gui="bold", fg="#ffffff", }, -- MiniTablineCurrent xxx cterm=bold gui=bold guifg=#ffffff guibg=#3c4048
    MiniTablineHidden                       { bg="#16181a", fg="#7b8496", }, -- MiniTablineHidden xxx guifg=#7b8496 guibg=#16181a
    MiniTablineModifiedCurrent              { bg="#ffffff", gui="bold", fg="#3c4048", }, -- MiniTablineModifiedCurrent xxx cterm=bold gui=bold guifg=#3c4048 guibg=#ffffff
    MiniTablineModifiedHidden               { bg="#7b8496", fg="#16181a", }, -- MiniTablineModifiedHidden xxx guifg=#16181a guibg=#7b8496
    MiniTablineModifiedVisible              { bg="#ffffff", fg="#3c4048", }, -- MiniTablineModifiedVisible xxx guifg=#3c4048 guibg=#ffffff
    MiniTablineVisible                      { bg="#3c4048", fg="#ffffff", }, -- MiniTablineVisible xxx guifg=#ffffff guibg=#3c4048
    MiniTestEmphasis                        { gui="bold", }, -- MiniTestEmphasis xxx cterm=bold gui=bold
    MiniTestFail                            { gui="bold", fg="#ff6e5e", }, -- MiniTestFail   xxx cterm=bold gui=bold guifg=#ff6e5e
    MiniTestPass                            { gui="bold", fg="#5eff6c", }, -- MiniTestPass   xxx cterm=bold gui=bold guifg=#5eff6c
    MiniTrailspace                          { bg="#ff6e5e", }, -- MiniTrailspace xxx guibg=#ff6e5e
    MiniClueNextKey                         { fg="#5eff6c", }, -- MiniClueNextKey xxx guifg=#5eff6c
    MiniCompletionActiveParameter           { gui="underline", }, -- MiniCompletionActiveParameter xxx cterm=underline gui=underline
    MiniCursorword                          { gui="underline", }, -- MiniCursorword xxx cterm=underline gui=underline
    MiniCursorwordCurrent                   { gui="underline", }, -- MiniCursorwordCurrent xxx cterm=underline gui=underline
    MiniDepsChangeAdded                     { fg="#5eff6c", }, -- MiniDepsChangeAdded xxx guifg=#5eff6c
    MiniDepsChangeRemoved                   { fg="#ff6e5e", }, -- MiniDepsChangeRemoved xxx guifg=#ff6e5e
    MiniDiffOverAdd                         { bg="#24462a", }, -- MiniDiffOverAdd xxx guibg=#24462a
    MiniDiffOverChange                      { bg="#243347", }, -- MiniDiffOverChange xxx guibg=#243347
    MiniDiffOverContext                     { bg="#443827", }, -- MiniDiffOverContext xxx guibg=#443827
    MiniDiffOverDelete                      { bg="#442927", }, -- MiniDiffOverDelete xxx guibg=#442927
    MiniDiffSignAdd                         { fg="#5eff6c", }, -- MiniDiffSignAdd xxx guifg=#5eff6c
    MiniDiffSignChange                      { fg="#ffbd5e", }, -- MiniDiffSignChange xxx guifg=#ffbd5e
    MiniDiffSignDelete                      { fg="#ff6e5e", }, -- MiniDiffSignDelete xxx guifg=#ff6e5e
    MiniFilesBorder                         { fg="#3c4048", }, -- MiniFilesBorder xxx guifg=#3c4048
    MiniFilesBorderModified                 { fg="#ff5ea0", }, -- MiniFilesBorderModified xxx guifg=#ff5ea0
    MiniFilesDirectory                      { fg="#5ea1ff", }, -- MiniFilesDirectory xxx guifg=#5ea1ff
    MiniFilesTitle                          { fg="#46757e", }, -- MiniFilesTitle xxx guifg=#46757e
    MiniIndentscopeSymbol                   { fg="#7b8496", }, -- MiniIndentscopeSymbol xxx guifg=#7b8496
    MiniJump2dDim                           { fg="#7b8496", }, -- MiniJump2dDim  xxx guifg=#7b8496
    MiniMapSymbolLine                       { fg="#5ef1ff", }, -- MiniMapSymbolLine xxx guifg=#5ef1ff
    MiniMapSymbolView                       { fg="#5ea1ff", }, -- MiniMapSymbolView xxx guifg=#5ea1ff
    MiniPickMatchMarked                     { bg="#3c4048", }, -- MiniPickMatchMarked xxx guibg=#3c4048
    MiniPickMatchRanges                     { fg="#ffbd5e", }, -- MiniPickMatchRanges xxx guifg=#ffbd5e
    MiniStarterHeader                       { fg="#5ef1ff", }, -- MiniStarterHeader xxx guifg=#5ef1ff
    MiniStarterSection                      { fg="#5ea1ff", }, -- MiniStarterSection xxx guifg=#5ea1ff
    NeogitDiffAdd                           { bg="#203a26", fg="#2f6836", }, -- NeogitDiffAdd  xxx guifg=#2f6836 guibg=#203a26
    NeogitDiffDelete                        { bg="#382424", fg="#673631", }, -- NeogitDiffDelete xxx guifg=#673631 guibg=#382424
    NeogitDiffContextHighlight              { bg="#3b3f47", }, -- NeogitDiffContextHighlight xxx guibg=#3b3f47
    NeogitHunkHeaderHighlight               { bg="#d050c6", gui="bold", fg="#16181a", }, -- NeogitHunkHeaderHighlight xxx cterm=bold gui=bold guifg=#16181a guibg=#d050c6
    NeogitHunkHeader                        { bg="#7b8496", gui="bold", fg="#16181a", }, -- NeogitHunkHeader xxx cterm=bold gui=bold guifg=#16181a guibg=#7b8496
    NeogitCommitViewHeader                  { bg="#4fc5d1", fg="#16181a", }, -- NeogitCommitViewHeader xxx guifg=#16181a guibg=#4fc5d1
    NeogitFilePath                          { gui="italic", fg="#5ea1ff", }, -- NeogitFilePath xxx cterm=italic gui=italic guifg=#5ea1ff
    DashboardHeader                         { fg="#bd5eff", }, -- DashboardHeader xxx guifg=#bd5eff
    DashboardShortcut                       { fg="#ffbd5e", }, -- DashboardShortcut xxx guifg=#ffbd5e
    DashboardFooter                         { fg="#5ef1ff", }, -- DashboardFooter xxx guifg=#5ef1ff
    markdownH3                              { gui="bold", fg="#5ea1ff", }, -- markdownH3     xxx cterm=bold gui=bold guifg=#5ea1ff
    sym"@markup.heading.3"                  { markdownH3 }, -- @markup.heading.3 xxx links to markdownH3
    sym"@text.title.3"                      { markdownH3 }, -- @text.title.3  xxx links to markdownH3
    markdownH4                              { gui="bold", fg="#bd5eff", }, -- markdownH4     xxx cterm=bold gui=bold guifg=#bd5eff
    sym"@markup.heading.4"                  { markdownH4 }, -- @markup.heading.4 xxx links to markdownH4
    sym"@text.title.4"                      { markdownH4 }, -- @text.title.4  xxx links to markdownH4
    markdownH5                              { gui="bold", fg="#ff5ef1", }, -- markdownH5     xxx cterm=bold gui=bold guifg=#ff5ef1
    sym"@markup.heading.5"                  { markdownH5 }, -- @markup.heading.5 xxx links to markdownH5
    sym"@text.title.5"                      { markdownH5 }, -- @text.title.5  xxx links to markdownH5
    markdownH6                              { gui="bold", fg="#5eff6c", }, -- markdownH6     xxx cterm=bold gui=bold guifg=#5eff6c
    sym"@markup.heading.6"                  { markdownH6 }, -- @markup.heading.6 xxx links to markdownH6
    markdownHeadingDelimiter                { fg="#7b8496", }, -- markdownHeadingDelimiter xxx guifg=#7b8496
    mkdCodeDelimiter                        { fg="#7b8496", }, -- mkdCodeDelimiter xxx guifg=#7b8496
    lualine_a_terminal                      { bg="#16181a", gui="nocombine", fg="#ffbd5e", }, -- lualine_a_terminal xxx gui=nocombine guifg=#ffbd5e guibg=#16181a
    CmpItemAbbrDefault                      { fg="#ffffff", }, -- CmpItemAbbrDefault xxx guifg=#ffffff
    CmpItemAbbrDeprecatedDefault            { fg="#7b8496", }, -- CmpItemAbbrDeprecatedDefault xxx guifg=#7b8496
    CmpItemAbbrMatchDefault                 { fg="#ffffff", }, -- CmpItemAbbrMatchDefault xxx guifg=#ffffff
    CmpItemAbbrMatchFuzzyDefault            { fg="#ffffff", }, -- CmpItemAbbrMatchFuzzyDefault xxx guifg=#ffffff
    CmpItemMenuDefault                      { fg="#ffffff", }, -- CmpItemMenuDefault xxx guifg=#ffffff
    RenderMarkdownCode                      { bg="#1e2124", }, -- RenderMarkdownCode xxx guibg=#1e2124
    RenderMarkdownCodeBorder                { RenderMarkdownCode }, -- RenderMarkdownCodeBorder xxx links to RenderMarkdownCode
    RenderMarkdownCodeInline                { RenderMarkdownCode }, -- RenderMarkdownCodeInline xxx links to RenderMarkdownCode
    RenderMarkdownQuote                     { fg="#7b8496", }, -- RenderMarkdownQuote xxx guifg=#7b8496
    RenderMarkdownQuote1                    { fg="#707989", }, -- RenderMarkdownQuote1 xxx guifg=#707989
    RenderMarkdownQuote2                    { fg="#666e7d", }, -- RenderMarkdownQuote2 xxx guifg=#666e7d
    RenderMarkdownQuote3                    { fg="#5c6370", }, -- RenderMarkdownQuote3 xxx guifg=#5c6370
    RenderMarkdownQuote4                    { fg="#525864", }, -- RenderMarkdownQuote4 xxx guifg=#525864
    RenderMarkdownQuote5                    { fg="#484e58", }, -- RenderMarkdownQuote5 xxx guifg=#484e58
    RenderMarkdownQuote6                    { fg="#3e434b", }, -- RenderMarkdownQuote6 xxx guifg=#3e434b
    RenderMarkdownBullet                    { fg="#7b8496", }, -- RenderMarkdownBullet xxx guifg=#7b8496
    RenderMarkdownDash                      { fg="#7b8496", }, -- RenderMarkdownDash xxx guifg=#7b8496
    sym"@markup.link.label.markdown_inline" { fg="#5ef1ff", }, -- @markup.link.label.markdown_inline xxx guifg=#5ef1ff
    RenderMarkdownLink                      { sym"@markup.link.label.markdown_inline" }, -- RenderMarkdownLink xxx links to @markup.link.label.markdown_inline
    RenderMarkdownTodo                      { fg="#ffbd5e", }, -- RenderMarkdownTodo xxx guifg=#ffbd5e
    RenderMarkdownTableHead                 { fg="#7b8496", }, -- RenderMarkdownTableHead xxx guifg=#7b8496
    RenderMarkdownTableRow                  { fg="#5c6370", }, -- RenderMarkdownTableRow xxx guifg=#5c6370
    RenderMarkdownSuccess                   { fg="#5eff6c", }, -- RenderMarkdownSuccess xxx guifg=#5eff6c
    RenderMarkdownWarn                      { fg="#ffbd5e", }, -- RenderMarkdownWarn xxx guifg=#ffbd5e
    RenderMarkdownError                     { fg="#ff6e5e", }, -- RenderMarkdownError xxx guifg=#ff6e5e
    RenderMarkdownH1                        { gui="bold", fg="#ffbd5e", }, -- RenderMarkdownH1 xxx cterm=bold gui=bold guifg=#ffbd5e
    RenderMarkdownH2                        { gui="bold", fg="#5ef1ff", }, -- RenderMarkdownH2 xxx cterm=bold gui=bold guifg=#5ef1ff
    RenderMarkdownHint                      { fg="#5ef1ff", }, -- RenderMarkdownHint xxx guifg=#5ef1ff
    RenderMarkdownH3                        { gui="bold", fg="#5ea1ff", }, -- RenderMarkdownH3 xxx cterm=bold gui=bold guifg=#5ea1ff
    RenderMarkdownInfo                      { fg="#5ea1ff", }, -- RenderMarkdownInfo xxx guifg=#5ea1ff
    RenderMarkdownH4                        { gui="bold", fg="#bd5eff", }, -- RenderMarkdownH4 xxx cterm=bold gui=bold guifg=#bd5eff
    RenderMarkdownH5                        { gui="bold", fg="#ff5ef1", }, -- RenderMarkdownH5 xxx cterm=bold gui=bold guifg=#ff5ef1
    RenderMarkdownH6                        { gui="bold", fg="#5eff6c", }, -- RenderMarkdownH6 xxx cterm=bold gui=bold guifg=#5eff6c
    RenderMarkdownH1Bg                      { bg="#383024", }, -- RenderMarkdownH1Bg xxx guibg=#383024
    RenderMarkdownH2Bg                      { bg="#20383c", }, -- RenderMarkdownH2Bg xxx guibg=#20383c
    RenderMarkdownH3Bg                      { bg="#202c3c", }, -- RenderMarkdownH3Bg xxx guibg=#202c3c
    RenderMarkdownH4Bg                      { bg="#2f223c", }, -- RenderMarkdownH4Bg xxx guibg=#2f223c
    RenderMarkdownH5Bg                      { bg="#38223a", }, -- RenderMarkdownH5Bg xxx guibg=#38223a
    RenderMarkdownH6Bg                      { bg="#203a26", }, -- RenderMarkdownH6Bg xxx guibg=#203a26
    TodoBgHACK                              { bg="#f1ff5e", gui="bold", fg="#16181a", }, -- TodoBgHACK     xxx gui=bold guifg=#16181a guibg=#f1ff5e
    TodoFgHACK                              { gui="bold", fg="#f1ff5e", }, -- TodoFgHACK     xxx gui=bold guifg=#f1ff5e
    TodoSignHACK                            { bg="#16181a", fg="#f1ff5e", }, -- TodoSignHACK   xxx guifg=#f1ff5e guibg=#16181a
    TodoBgFIX                               { bg="#ff6e5e", gui="bold", fg="#16181a", }, -- TodoBgFIX      xxx gui=bold guifg=#16181a guibg=#ff6e5e
    TodoFgFIX                               { gui="bold", fg="#ff6e5e", }, -- TodoFgFIX      xxx gui=bold guifg=#ff6e5e
    TodoSignFIX                             { bg="#16181a", fg="#ff6e5e", }, -- TodoSignFIX    xxx guifg=#ff6e5e guibg=#16181a
    TodoBgNOTE                              { bg="#5ef1ff", gui="bold", fg="#16181a", }, -- TodoBgNOTE     xxx gui=bold guifg=#16181a guibg=#5ef1ff
    TodoFgNOTE                              { gui="bold", fg="#5ef1ff", }, -- TodoFgNOTE     xxx gui=bold guifg=#5ef1ff
    TodoSignNOTE                            { bg="#16181a", fg="#5ef1ff", }, -- TodoSignNOTE   xxx guifg=#5ef1ff guibg=#16181a
    TodoBgWARN                              { bg="#f1ff5e", gui="bold", fg="#16181a", }, -- TodoBgWARN     xxx gui=bold guifg=#16181a guibg=#f1ff5e
    TodoFgWARN                              { gui="bold", fg="#f1ff5e", }, -- TodoFgWARN     xxx gui=bold guifg=#f1ff5e
    TodoSignWARN                            { bg="#16181a", fg="#f1ff5e", }, -- TodoSignWARN   xxx guifg=#f1ff5e guibg=#16181a
    TodoBgPERF                              { bg="#ffffff", gui="bold", fg="#16181a", }, -- TodoBgPERF     xxx gui=bold guifg=#16181a guibg=#ffffff
    TodoFgPERF                              { gui="bold", fg="#ffffff", }, -- TodoFgPERF     xxx gui=bold guifg=#ffffff
    TodoSignPERF                            { bg="#16181a", fg="#ffffff", }, -- TodoSignPERF   xxx guifg=#ffffff guibg=#16181a
    TodoBgTODO                              { bg="#5ea1ff", gui="bold", fg="#16181a", }, -- TodoBgTODO     xxx gui=bold guifg=#16181a guibg=#5ea1ff
    TodoFgTODO                              { gui="bold", fg="#5ea1ff", }, -- TodoFgTODO     xxx gui=bold guifg=#5ea1ff
    TodoSignTODO                            { bg="#16181a", fg="#5ea1ff", }, -- TodoSignTODO   xxx guifg=#5ea1ff guibg=#16181a
    TodoBgTEST                              { bg="#ffffff", gui="bold", fg="#16181a", }, -- TodoBgTEST     xxx gui=bold guifg=#16181a guibg=#ffffff
    TodoFgTEST                              { gui="bold", fg="#ffffff", }, -- TodoFgTEST     xxx gui=bold guifg=#ffffff
    TodoSignTEST                            { bg="#16181a", fg="#ffffff", }, -- TodoSignTEST   xxx guifg=#ffffff guibg=#16181a
    WhichKeyIconGrey                        { fg="#7b8496", }, -- WhichKeyIconGrey xxx guifg=#7b8496
    WhichKeyIconOrange                      { fg="#ffbd5e", }, -- WhichKeyIconOrange xxx guifg=#ffbd5e
    WhichKeyIconPurple                      { fg="#bd5eff", }, -- WhichKeyIconPurple xxx guifg=#bd5eff
    WhichKeyIconRed                         { fg="#ff6e5e", }, -- WhichKeyIconRed xxx guifg=#ff6e5e
    WhichKeyIconYellow                      { fg="#f1ff5e", }, -- WhichKeyIconYellow xxx guifg=#f1ff5e
    WhichKeyIconGreen                       { fg="#5eff6c", }, -- WhichKeyIconGreen xxx guifg=#5eff6c
    WhichKeyIcon                            { fg="#5ea1ff", }, -- WhichKeyIcon   xxx guifg=#5ea1ff
    WhichKeyValue                           { fg="#5ea1ff", }, -- WhichKeyValue  xxx guifg=#5ea1ff
    WhichKeyIconAzure                       { fg="#cefaff", }, -- WhichKeyIconAzure xxx guifg=#cefaff
    WhichKeyIconBlue                        { fg="#5ea1ff", }, -- WhichKeyIconBlue xxx guifg=#5ea1ff
    Italic                                  { gui="italic", }, -- Italic         xxx cterm=italic gui=italic
    BlinkCmpLabel                           { fg="#ffffff", }, -- BlinkCmpLabel  xxx guifg=#ffffff
    BlinkCmpLabelDeprecated                 { gui="strikethrough", fg="#7b8496", }, -- BlinkCmpLabelDeprecated xxx cterm=strikethrough gui=strikethrough guifg=#7b8496
    LeapMatch                               { bg="#ff5ef1", fg="#ffffff", }, -- LeapMatch      xxx guifg=#ffffff guibg=#ff5ef1
    NeogitDiffAddHighlight                  { bg="#203a26", fg="#4fd05b", }, -- NeogitDiffAddHighlight xxx guifg=#4fd05b guibg=#203a26
    NeogitDiffDeleteHighlight               { bg="#382424", fg="#d05c50", }, -- NeogitDiffDeleteHighlight xxx guifg=#d05c50 guibg=#382424
    CmpDocumentation                        { fg="#7b8496", }, -- CmpDocumentation xxx guifg=#7b8496
    CmpDocumentationBorder                  { fg="#7b8496", }, -- CmpDocumentationBorder xxx guifg=#7b8496
    WhichKeyFloat                           { bg="#16181a", }, -- WhichKeyFloat  xxx guibg=#16181a
    LazyButtonActive                        { bg="#3c4048", gui="bold", fg="#ffffff", }, -- LazyButtonActive xxx cterm=bold gui=bold guifg=#ffffff guibg=#3c4048
    LeapLabelPrimary                        { bg="#16181a", gui="bold", fg="#5ea1ff", }, -- LeapLabelPrimary xxx cterm=bold gui=bold guifg=#5ea1ff guibg=#16181a
    LeapLabelSecondary                      { bg="#16181a", fg="#5eff6c", }, -- LeapLabelSecondary xxx guifg=#5eff6c guibg=#16181a
    LeapBackdrop                            { fg="#3c4048", }, -- LeapBackdrop   xxx guifg=#3c4048
    AlphaFooter                             { fg="#5ef1ff", }, -- AlphaFooter    xxx guifg=#5ef1ff
    AlphaHeaderLabel                        { fg="#ffbd5e", }, -- AlphaHeaderLabel xxx guifg=#ffbd5e
    AlphaHeader                             { fg="#bd5eff", }, -- AlphaHeader    xxx guifg=#bd5eff
    SignColumnSB                            { bg="#16181a", fg="#7b8496", }, -- SignColumnSB   xxx guifg=#7b8496 guibg=#16181a
    NeogitBranch                            { gui="bold", fg="#5ef1ff", }, -- NeogitBranch   xxx cterm=bold gui=bold guifg=#5ef1ff
    NeogitRemote                            { gui="bold", fg="#5ea1ff", }, -- NeogitRemote   xxx cterm=bold gui=bold guifg=#5ea1ff
    Bold                                    { gui="bold,italic", fg="#7b8496", }, -- Bold           xxx cterm=bold,italic gui=bold,italic guifg=#7b8496
    AlphaShortcut                           { fg="#ffbd5e", }, -- AlphaShortcut  xxx guifg=#ffbd5e
    qfLineNr                                { fg="#7b8496", }, -- qfLineNr       xxx guifg=#7b8496
    qfFileName                              { fg="#5ea1ff", }, -- qfFileName     xxx guifg=#5ea1ff
    AlphaButtons                            { fg="#5ea1ff", }, -- AlphaButtons   xxx guifg=#5ea1ff
    NeogitGraphAuthor                       { fg="#ffbd5e", }, -- NeogitGraphAuthor xxx guifg=#ffbd5e
    NeogitGraphRed                          { fg="#d05c50", }, -- NeogitGraphRed xxx guifg=#d05c50
    NeogitGraphWhite                        { fg="#ffffff", }, -- NeogitGraphWhite xxx guifg=#ffffff
    NeogitGraphGreen                        { fg="#4fd05b", }, -- NeogitGraphGreen xxx guifg=#4fd05b
    NeogitGraphCyan                         { fg="#5ef1ff", }, -- NeogitGraphCyan xxx guifg=#5ef1ff
    NeogitGraphOrange                       { fg="#ffbd5e", }, -- NeogitGraphOrange xxx guifg=#ffbd5e
    NeogitGraphBoldRed                      { gui="bold", fg="#d05c50", }, -- NeogitGraphBoldRed xxx cterm=bold gui=bold guifg=#d05c50
    NeogitGraphBoldGreen                    { gui="bold", fg="#4fd05b", }, -- NeogitGraphBoldGreen xxx cterm=bold gui=bold guifg=#4fd05b
    NeogitGraphBoldBlue                     { gui="bold", fg="#5ea1ff", }, -- NeogitGraphBoldBlue xxx cterm=bold gui=bold guifg=#5ea1ff
    NeogitHunkMergeHeaderHighlight          { bg="#4fc5d1", gui="bold", fg="#16181a", }, -- NeogitHunkMergeHeaderHighlight xxx cterm=bold gui=bold guifg=#16181a guibg=#4fc5d1
    NeogitHunkHeaderCursor                  { bg="#d050c6", gui="bold", fg="#16181a", }, -- NeogitHunkHeaderCursor xxx cterm=bold gui=bold guifg=#16181a guibg=#d050c6
    NeogitDiffDeletions                     { fg="#673631", }, -- NeogitDiffDeletions xxx guifg=#673631
    NeogitPopupSectionTitle                 { fg="#5ea1ff", }, -- NeogitPopupSectionTitle xxx guifg=#5ea1ff
    NeogitPopupSwitchKey                    { fg="#ff5ef1", }, -- NeogitPopupSwitchKey xxx guifg=#ff5ef1
    NeogitPopupActionKey                    { NeogitPopupSwitchKey }, -- NeogitPopupActionKey xxx links to NeogitPopupSwitchKey
    NeogitPopupConfigKey                    { NeogitPopupSwitchKey }, -- NeogitPopupConfigKey xxx links to NeogitPopupSwitchKey
    NeogitPopupOptionKey                    { NeogitPopupSwitchKey }, -- NeogitPopupOptionKey xxx links to NeogitPopupSwitchKey
    NeogitPopupSwitchEnabled                { NeogitPopupSwitchKey }, -- NeogitPopupSwitchEnabled xxx links to NeogitPopupSwitchKey
    NeogitDiffHeader                        { bg="#3b3f47", gui="bold", fg="#5ea1ff", }, -- NeogitDiffHeader xxx cterm=bold gui=bold guifg=#5ea1ff guibg=#3b3f47
    NeogitChangeModified                    { gui="bold,italic", fg="#5ea1ff", }, -- NeogitChangeModified xxx cterm=bold,italic gui=bold,italic guifg=#5ea1ff
    NeogitChangeDeleted                     { gui="bold,italic", fg="#d05c50", }, -- NeogitChangeDeleted xxx cterm=bold,italic gui=bold,italic guifg=#d05c50
    NeogitChangeRenamed                     { gui="bold,italic", fg="#bd5eff", }, -- NeogitChangeRenamed xxx cterm=bold,italic gui=bold,italic guifg=#bd5eff
    NeogitChangeUpdated                     { gui="bold,italic", fg="#ffbd5e", }, -- NeogitChangeUpdated xxx cterm=bold,italic gui=bold,italic guifg=#ffbd5e
    NeogitChangeUnmerged                    { gui="bold,italic", fg="#f1ff5e", }, -- NeogitChangeUnmerged xxx cterm=bold,italic gui=bold,italic guifg=#f1ff5e
    NeogitChangeNewFile                     { gui="bold,italic", fg="#4fd05b", }, -- NeogitChangeNewFile xxx cterm=bold,italic gui=bold,italic guifg=#4fd05b
    NeogitSectionHeader                     { gui="bold", fg="#4fd05b", }, -- NeogitSectionHeader xxx cterm=bold gui=bold guifg=#4fd05b
    NeogitTagName                           { fg="#f1ff5e", }, -- NeogitTagName  xxx guifg=#f1ff5e
    NeogitFloatHeader                       { bg="#16181a", gui="bold", }, -- NeogitFloatHeader xxx cterm=bold gui=bold guibg=#16181a
    NeogitFloatHeaderHighlight              { bg="#3b3f47", gui="bold", fg="#5ef1ff", }, -- NeogitFloatHeaderHighlight xxx cterm=bold gui=bold guifg=#5ef1ff guibg=#3b3f47
    NeogitActiveItem                        { bg="#ffbd5e", gui="bold", fg="#16181a", }, -- NeogitActiveItem xxx cterm=bold gui=bold guifg=#16181a guibg=#ffbd5e
    NoiceFormatProgressDone                 { bg="#5ef1ff", fg="#1e2124", }, -- NoiceFormatProgressDone xxx guifg=#1e2124 guibg=#5ef1ff
    NoiceFormatProgressTodo                 { bg="#3c4048", fg="#7b8496", }, -- NoiceFormatProgressTodo xxx guifg=#7b8496 guibg=#3c4048
    NoiceLspProgressClient                  { fg="#5ea1ff", }, -- NoiceLspProgressClient xxx guifg=#5ea1ff
    NoiceLspProgressSpinner                 { fg="#ffbd5e", }, -- NoiceLspProgressSpinner xxx guifg=#ffbd5e
    NoiceLspProgressTitle                   { fg="#5ef1ff", }, -- NoiceLspProgressTitle xxx guifg=#5ef1ff
    LazyH1                                  { gui="bold", fg="#5ea1ff", }, -- LazyH1         xxx cterm=bold gui=bold guifg=#5ea1ff
    BlinkCmpMenuBorder                      { fg="#4e545f", }, -- BlinkCmpMenuBorder xxx guifg=#4e545f
    BlinkCmpDocBorder                       { BlinkCmpMenuBorder }, -- BlinkCmpDocBorder xxx links to BlinkCmpMenuBorder
    BlinkCmpSignatureHelpBorder             { BlinkCmpMenuBorder }, -- BlinkCmpSignatureHelpBorder xxx links to BlinkCmpMenuBorder
    GrugFarResultsChangeIndicator           { fg="#5ef1ff", }, -- GrugFarResultsChangeIndicator xxx guifg=#5ef1ff
    HeirlineReplace                         { bg="#ff6e5e", }, -- HeirlineReplace xxx guibg=#ff6e5e
    HeirlineVisual                          { bg="#ff5ef1", }, -- HeirlineVisual xxx guibg=#ff5ef1
    NeogitGraphBoldOrange                   { gui="bold", fg="#ffbd5e", }, -- NeogitGraphBoldOrange xxx cterm=bold gui=bold guifg=#ffbd5e
    KubectlHeader                           { gui="bold", fg="#5ea1ff", }, -- KubectlHeader  xxx cterm=bold gui=bold guifg=#5ea1ff
    KubectlError                            { fg="#ff6e5e", }, -- KubectlError   xxx guifg=#ff6e5e
    GrappleFooter                           { fg="#7b8496", }, -- GrappleFooter  xxx guifg=#7b8496
    LspInfoBorder                           { fg="#16181a", }, -- LspInfoBorder  xxx guifg=#16181a
    KubectlWarning                          { fg="#f1ff5e", }, -- KubectlWarning xxx guifg=#f1ff5e
    KubectlInfo                             { fg="#5ef1ff", }, -- KubectlInfo    xxx guifg=#5ef1ff
    KubectlDeprecated                       { fg="#ff5ef1", }, -- KubectlDeprecated xxx guifg=#ff5ef1
    KubectlNote                             { fg="#5ef1ff", }, -- KubectlNote    xxx guifg=#5ef1ff
    DashboardMruIcon                        { fg="#ffbd5e", }, -- DashboardMruIcon xxx guifg=#ffbd5e
    HelpviewGradient10                      { fg="#7b8496", }, -- HelpviewGradient10 xxx guifg=#7b8496
    HelpviewHeading2                        { bg="#243347", gui="bold", fg="#5ea1ff", }, -- HelpviewHeading2 xxx cterm=bold gui=bold guifg=#5ea1ff guibg=#243347
    HelpviewHeading1                        { bg="#244347", gui="bold", fg="#5ef1ff", }, -- HelpviewHeading1 xxx cterm=bold gui=bold guifg=#5ef1ff guibg=#244347
    sym"@markup.link.markdown_inline"       { fg="#5ea1ff", }, -- @markup.link.markdown_inline xxx guifg=#5ea1ff
    SnacksDashboardDir                      { fg="#7b8496", }, -- SnacksDashboardDir xxx guifg=#7b8496
    SnacksNotifierTitleWarn                 { fg="#f1ff5e", }, -- SnacksNotifierTitleWarn xxx guifg=#f1ff5e
    SnacksNotifierBorderDebug               { fg="#3c4048", }, -- SnacksNotifierBorderDebug xxx guifg=#3c4048
    SnacksNotifierBorderWarn                { SnacksNotifierBorderDebug }, -- SnacksNotifierBorderWarn xxx links to SnacksNotifierBorderDebug
    SnacksNotifierBorderError               { SnacksNotifierBorderDebug }, -- SnacksNotifierBorderError xxx links to SnacksNotifierBorderDebug
    SnacksNotifierBorderInfo                { SnacksNotifierBorderDebug }, -- SnacksNotifierBorderInfo xxx links to SnacksNotifierBorderDebug
    SnacksNotifierBorderTrace               { SnacksNotifierBorderDebug }, -- SnacksNotifierBorderTrace xxx links to SnacksNotifierBorderDebug
    NeogitDiffAddCursor                     { bg="#3b3f47", fg="#4fd05b", }, -- NeogitDiffAddCursor xxx guifg=#4fd05b guibg=#3b3f47
    NeogitDiffDeleteCursor                  { bg="#3b3f47", fg="#d05c50", }, -- NeogitDiffDeleteCursor xxx guifg=#d05c50 guibg=#3b3f47
    NeogitGraphGray                         { fg="#7b8496", }, -- NeogitGraphGray xxx guifg=#7b8496
    SnacksNotifierIconDebug                 { fg="#7b8496", }, -- SnacksNotifierIconDebug xxx guifg=#7b8496
    SnacksNotifierDebug                     { fg="#ffffff", }, -- SnacksNotifierDebug xxx guifg=#ffffff
    SnacksNotifierError                     { SnacksNotifierDebug }, -- SnacksNotifierError xxx links to SnacksNotifierDebug
    SnacksNotifierInfo                      { SnacksNotifierDebug }, -- SnacksNotifierInfo xxx links to SnacksNotifierDebug
    SnacksNotifierTrace                     { SnacksNotifierDebug }, -- SnacksNotifierTrace xxx links to SnacksNotifierDebug
    SnacksNotifierWarn                      { SnacksNotifierDebug }, -- SnacksNotifierWarn xxx links to SnacksNotifierDebug
    GrugFarResultsActionMessage             { bg="#5eff6c", gui="bold", fg="#16181a", }, -- GrugFarResultsActionMessage xxx cterm=bold gui=bold guifg=#16181a guibg=#5eff6c
    MarkviewBlockQuoteError                 { fg="#ff6e5e", }, -- MarkviewBlockQuoteError xxx guifg=#ff6e5e
    sym"@keyword.type"                      { gui="italic", fg="#ffbd5e", }, -- @keyword.type  xxx cterm=italic gui=italic guifg=#ffbd5e
    NeogitGraphYellow                       { fg="#f1ff5e", }, -- NeogitGraphYellow xxx guifg=#f1ff5e
    TroubleCount                            { bg="#3c4048", gui="bold", }, -- TroubleCount   xxx cterm=bold gui=bold guibg=#3c4048
    TroubleDirectory                        { gui="bold", fg="#7b8496", }, -- TroubleDirectory xxx cterm=bold gui=bold guifg=#7b8496
    TroubleFilename                         { fg="#5ef1ff", }, -- TroubleFilename xxx guifg=#5ef1ff
    TroubleIconArray                        { fg="#ff5ea0", }, -- TroubleIconArray xxx guifg=#ff5ea0
    SnacksNotifierTitleError                { fg="#ff6e5e", }, -- SnacksNotifierTitleError xxx guifg=#ff6e5e
    MarkviewHeading4                        { bg="#372647", gui="bold", fg="#bd5eff", }, -- MarkviewHeading4 xxx cterm=bold gui=bold guifg=#bd5eff guibg=#372647
    LazyButton                              { bg="#3c4048", fg="#ffffff", }, -- LazyButton     xxx guifg=#ffffff guibg=#3c4048
    LazyProgressDone                        { gui="bold", fg="#ff5ef1", }, -- LazyProgressDone xxx cterm=bold gui=bold guifg=#ff5ef1
    LazyProgressTodo                        { gui="bold", fg="#7b8496", }, -- LazyProgressTodo xxx cterm=bold gui=bold guifg=#7b8496
    LazyReasonCmd                           { fg="#f1ff5e", }, -- LazyReasonCmd  xxx guifg=#f1ff5e
    LazyReasonEvent                         { fg="#ff5ef1", }, -- LazyReasonEvent xxx guifg=#ff5ef1
    LazyReasonKeys                          { fg="#5ef1ff", }, -- LazyReasonKeys xxx guifg=#5ef1ff
    LazyReasonPlugin                        { fg="#5eff6c", }, -- LazyReasonPlugin xxx guifg=#5eff6c
    LazyReasonRequire                       { fg="#ffbd5e", }, -- LazyReasonRequire xxx guifg=#ffbd5e
    LazyReasonRuntime                       { fg="#ff6e5e", }, -- LazyReasonRuntime xxx guifg=#ff6e5e
    LazyReasonStart                         { fg="#5ea1ff", }, -- LazyReasonStart xxx guifg=#5ea1ff
    LazySpecial                             { fg="#5ef1ff", }, -- LazySpecial    xxx guifg=#5ef1ff
    MarkviewTableAlignRight                 { fg="#bd5eff", }, -- MarkviewTableAlignRight xxx guifg=#bd5eff
    TroubleIconDirectory                    { fg="#5ea1ff", }, -- TroubleIconDirectory xxx guifg=#5ea1ff
    MarkviewGradient5                       { fg="#484e58", }, -- MarkviewGradient5 xxx guifg=#484e58
    MarkviewGradient6                       { fg="#525864", }, -- MarkviewGradient6 xxx guifg=#525864
    MarkviewGradient8                       { fg="#666e7d", }, -- MarkviewGradient8 xxx guifg=#666e7d
    MarkviewGradient9                       { fg="#707989", }, -- MarkviewGradient9 xxx guifg=#707989
    MarkviewGradient10                      { fg="#7b8496", }, -- MarkviewGradient10 xxx guifg=#7b8496
    TelescopeResultsTitle                   { fg="#5ef1ff", }, -- TelescopeResultsTitle xxx guifg=#5ef1ff
    BlinkCmpMenuSelection                   { bg="#3c4048", }, -- BlinkCmpMenuSelection xxx guibg=#3c4048
    HopPreview                              { bg="#3c4048", fg="#ffffff", }, -- HopPreview     xxx guifg=#ffffff guibg=#3c4048
    BlinkCmpSignatureHelpActiveParameter    { fg="#5ef1ff", }, -- BlinkCmpSignatureHelpActiveParameter xxx guifg=#5ef1ff
    GrugFarInputPlaceholder                 { gui="italic", fg="#4f535a", }, -- GrugFarInputPlaceholder xxx cterm=italic gui=italic guifg=#4f535a
    MarkviewBlockQuoteNote                  { fg="#5ea1ff", }, -- MarkviewBlockQuoteNote xxx guifg=#5ea1ff
    TreeSitterContext                       { bg="#243539", }, -- TreeSitterContext xxx guibg=#243539
    TreeSitterContextLineNumber             { fg="#9d9fa3", }, -- TreeSitterContextLineNumber xxx guifg=#9d9fa3
    NeogitUnpushedTo                        { gui="bold", fg="#ff5ea0", }, -- NeogitUnpushedTo xxx cterm=bold gui=bold guifg=#ff5ea0
    NeogitGraphPurple                       { fg="#bd5eff", }, -- NeogitGraphPurple xxx guifg=#bd5eff
    NeogitUnpulledFrom                      { gui="bold", fg="#ff5ea0", }, -- NeogitUnpulledFrom xxx cterm=bold gui=bold guifg=#ff5ea0
    NeogitTagDistance                       { fg="#5ef1ff", }, -- NeogitTagDistance xxx guifg=#5ef1ff
    NeogitGraphBoldPurple                   { gui="bold", fg="#bd5eff", }, -- NeogitGraphBoldPurple xxx cterm=bold gui=bold guifg=#bd5eff
    GitpadFloatTitle                        { gui="bold", fg="#5ef1ff", }, -- GitpadFloatTitle xxx cterm=bold gui=bold guifg=#5ef1ff
    GrugFarHelpHeaderKey                    { gui="bold", fg="#5ef1ff", }, -- GrugFarHelpHeaderKey xxx cterm=bold gui=bold guifg=#5ef1ff
    GrugFarHelpWinHeader                    { gui="bold", fg="#5ea1ff", }, -- GrugFarHelpWinHeader xxx cterm=bold gui=bold guifg=#5ea1ff
    GrugFarHelpWinActionPrefix              { fg="#bd5eff", }, -- GrugFarHelpWinActionPrefix xxx guifg=#bd5eff
    GrugFarHelpWinActionKey                 { gui="bold", fg="#5ef1ff", }, -- GrugFarHelpWinActionKey xxx cterm=bold gui=bold guifg=#5ef1ff
    GrugFarInputLabel                       { gui="bold", fg="#ffbd5e", }, -- GrugFarInputLabel xxx cterm=bold gui=bold guifg=#ffbd5e
    GrugFarResultsPath                      { gui="bold,underline", fg="#5ea1ff", }, -- GrugFarResultsPath xxx cterm=bold,underline gui=bold,underline guifg=#5ea1ff
    GrugFarResultsRgCmdHeader               { GrugFarResultsPath }, -- GrugFarResultsRgCmdHeader xxx links to GrugFarResultsPath
    GrugFarResultsLineNo                    { gui="bold", fg="#ff5ea0", }, -- GrugFarResultsLineNo xxx cterm=bold gui=bold guifg=#ff5ea0
    GrugFarResultsLineColumn                { GrugFarResultsLineNo }, -- GrugFarResultsLineColumn xxx links to GrugFarResultsLineNo
    MarkviewGradient1                       { fg="#202226", }, -- MarkviewGradient1 xxx guifg=#202226
    MarkviewGradient2                       { fg="#2a2d32", }, -- MarkviewGradient2 xxx guifg=#2a2d32
    MarkviewGradient4                       { fg="#3e434b", }, -- MarkviewGradient4 xxx guifg=#3e434b
    HeirlineInactive                        { bg="#7b8496", }, -- HeirlineInactive xxx guibg=#7b8496
    HeirlineNormal                          { bg="#5ea1ff", }, -- HeirlineNormal xxx guibg=#5ea1ff
    HeirlineCommand                         { bg="#f1ff5e", }, -- HeirlineCommand xxx guibg=#f1ff5e
    HeirlineInsert                          { bg="#5eff6c", }, -- HeirlineInsert xxx guibg=#5eff6c
    HeirlineTerminal                        { bg="#5ef1ff", }, -- HeirlineTerminal xxx guibg=#5ef1ff
    mkdCodeEnd                              { fg="#5ea1ff", }, -- mkdCodeEnd     xxx guifg=#5ea1ff
    DiagnosiiucVirtualTextError             { fg="#ff6e5e", }, -- DiagnosiiucVirtualTextError xxx guifg=#ff6e5e
    HelpviewHeading3                        { bg="#372647", gui="bold", fg="#bd5eff", }, -- HelpviewHeading3 xxx cterm=bold gui=bold guifg=#bd5eff guibg=#372647
    HelpviewHeading4                        { bg="#442644", gui="bold", fg="#ff5ef1", }, -- HelpviewHeading4 xxx cterm=bold gui=bold guifg=#ff5ef1 guibg=#442644
    HelpviewCode                            { bg="#1e2124", }, -- HelpviewCode   xxx guibg=#1e2124
    HelpviewInlineCode                      { HelpviewCode }, -- HelpviewInlineCode xxx links to HelpviewCode
    HelpviewCodeLanguage                    { bg="#1e2124", gui="italic", fg="#7b8496", }, -- HelpviewCodeLanguage xxx cterm=italic gui=italic guifg=#7b8496 guibg=#1e2124
    HelpviewTaglink                         { fg="#5ea1ff", }, -- HelpviewTaglink xxx guifg=#5ea1ff
    HelpviewOptionlink                      { fg="#be98f6", }, -- HelpviewOptionlink xxx guifg=#be98f6
    HelpviewMentionlink                     { gui="underline", fg="#5ef1ff", }, -- HelpviewMentionlink xxx cterm=underline gui=underline guifg=#5ef1ff
    HelpviewGradient1                       { fg="#202226", }, -- HelpviewGradient1 xxx guifg=#202226
    LazyH2                                  { gui="bold", fg="#ffffff", }, -- LazyH2         xxx cterm=bold gui=bold guifg=#ffffff
    HelpviewGradient2                       { fg="#2a2d32", }, -- HelpviewGradient2 xxx guifg=#2a2d32
    MarkviewGradient3                       { fg="#34383f", }, -- MarkviewGradient3 xxx guifg=#34383f
    HelpviewGradient3                       { fg="#34383f", }, -- HelpviewGradient3 xxx guifg=#34383f
    NeogitDiffContext                       { bg="#3b3f47", }, -- NeogitDiffContext xxx guibg=#3b3f47
    HelpviewGradient4                       { fg="#3e434b", }, -- HelpviewGradient4 xxx guifg=#3e434b
    HelpviewGradient5                       { fg="#484e58", }, -- HelpviewGradient5 xxx guifg=#484e58
    HelpviewGradient6                       { fg="#525864", }, -- HelpviewGradient6 xxx guifg=#525864
    HelpviewGradient7                       { fg="#5c6370", }, -- HelpviewGradient7 xxx guifg=#5c6370
    HelpviewGradient8                       { fg="#666e7d", }, -- HelpviewGradient8 xxx guifg=#666e7d
    HelpviewGradient9                       { fg="#707989", }, -- HelpviewGradient9 xxx guifg=#707989
    MarkviewHeading1                        { bg="#443827", gui="bold", fg="#ffbd5e", }, -- MarkviewHeading1 xxx cterm=bold gui=bold guifg=#ffbd5e guibg=#443827
    MarkviewHeading2                        { bg="#244347", gui="bold", fg="#5ef1ff", }, -- MarkviewHeading2 xxx cterm=bold gui=bold guifg=#5ef1ff guibg=#244347
    CmpGhostText                            { fg="#7b8496", }, -- CmpGhostText   xxx guifg=#7b8496
    DashboardKey                            { fg="#5eff6c", }, -- DashboardKey   xxx guifg=#5eff6c
    DashboardIcon                           { fg="#5ea1ff", }, -- DashboardIcon  xxx guifg=#5ea1ff
    DashboardProjectTitle                   { fg="#5ea1ff", }, -- DashboardProjectTitle xxx guifg=#5ea1ff
    DashboardProjectTitleIcon               { fg="#ffbd5e", }, -- DashboardProjectTitleIcon xxx guifg=#ffbd5e
    DashboardMruTitle                       { fg="#5ea1ff", }, -- DashboardMruTitle xxx guifg=#5ea1ff
    KubectlDebug                            { fg="#f1ff5e", }, -- KubectlDebug   xxx guifg=#f1ff5e
    KubectlSuccess                          { fg="#5ef1ff", }, -- KubectlSuccess xxx guifg=#5ef1ff
    KubectlExperimental                     { fg="#ff5ea0", }, -- KubectlExperimental xxx guifg=#ff5ea0
    KubectlGray                             { fg="#7b8496", }, -- KubectlGray    xxx guifg=#7b8496
    MarkviewHeading6                        { bg="#24462a", gui="bold", fg="#5eff6c", }, -- MarkviewHeading6 xxx cterm=bold gui=bold guifg=#5eff6c guibg=#24462a
    MarkviewHeading1Sign                    { fg="#ffbd5e", }, -- MarkviewHeading1Sign xxx guifg=#ffbd5e
    MarkviewHeading2Sign                    { fg="#5ef1ff", }, -- MarkviewHeading2Sign xxx guifg=#5ef1ff
    MarkviewHeading3Sign                    { fg="#5ea1ff", }, -- MarkviewHeading3Sign xxx guifg=#5ea1ff
    MarkviewHeading4Sign                    { fg="#bd5eff", }, -- MarkviewHeading4Sign xxx guifg=#bd5eff
    MarkviewHeading5Sign                    { fg="#ff5ef1", }, -- MarkviewHeading5Sign xxx guifg=#ff5ef1
    MarkviewHeading6Sign                    { fg="#5eff6c", }, -- MarkviewHeading6Sign xxx guifg=#5eff6c
    MarkviewBlockQuoteOk                    { fg="#5eff6c", }, -- MarkviewBlockQuoteOk xxx guifg=#5eff6c
    MarkviewBlockQuoteWarn                  { fg="#f1ff5e", }, -- MarkviewBlockQuoteWarn xxx guifg=#f1ff5e
    MarkviewHeading3                        { bg="#243347", gui="bold", fg="#5ea1ff", }, -- MarkviewHeading3 xxx cterm=bold gui=bold guifg=#5ea1ff guibg=#243347
    MarkviewHeading5                        { bg="#442644", gui="bold", fg="#ff5ef1", }, -- MarkviewHeading5 xxx cterm=bold gui=bold guifg=#ff5ef1 guibg=#442644
    MarkviewCode                            { bg="#24272b", }, -- MarkviewCode   xxx guibg=#24272b
    MarkviewInlineCode                      { bg="#24272b", fg="#ff5ea0", }, -- MarkviewInlineCode xxx guifg=#ff5ea0 guibg=#24272b
    DashboardProjectIcon                    { fg="#ffbd5e", }, -- DashboardProjectIcon xxx guifg=#ffbd5e
    MarkviewTableAlignLeft                  { fg="#5eff6c", }, -- MarkviewTableAlignLeft xxx guifg=#5eff6c
    MarkviewTableAlignCenter                { fg="#5ea1ff", }, -- MarkviewTableAlignCenter xxx guifg=#5ea1ff
    DashboardFiles                          { fg="#5ef1ff", }, -- DashboardFiles xxx guifg=#5ef1ff
    DashboardShortCutIcon                   { fg="#ff5ea0", }, -- DashboardShortCutIcon xxx guifg=#ff5ea0
    MarkviewGradient7                       { fg="#5c6370", }, -- MarkviewGradient7 xxx guifg=#5c6370
    NeogitGraphBoldGray                     { gui="bold", fg="#7b8496", }, -- NeogitGraphBoldGray xxx cterm=bold gui=bold guifg=#7b8496
    NeogitGraphBoldWhite                    { gui="bold", fg="#ffffff", }, -- NeogitGraphBoldWhite xxx cterm=bold gui=bold guifg=#ffffff
    MiniIndentscopeSymbolOff                { fg="#f1ff5e", }, -- MiniIndentscopeSymbolOff xxx guifg=#f1ff5e
    WhickKeyIconCyan                        { fg="#5ef1ff", }, -- WhickKeyIconCyan xxx guifg=#5ef1ff
    NeogitHunkMergeHeaderCursor             { bg="#4fc5d1", gui="bold", fg="#16181a", }, -- NeogitHunkMergeHeaderCursor xxx cterm=bold gui=bold guifg=#16181a guibg=#4fc5d1
    NeogitPopupBranchName                   { fg="#5ef1ff", }, -- NeogitPopupBranchName xxx guifg=#5ef1ff
    NeogitBranchHead                        { gui="bold,underline", fg="#5ea1ff", }, -- NeogitBranchHead xxx cterm=bold,underline gui=bold,underline guifg=#5ea1ff
    NeogitChangeAdded                       { gui="bold,italic", fg="#4fd05b", }, -- NeogitChangeAdded xxx cterm=bold,italic gui=bold,italic guifg=#4fd05b
    NeogitGraphBoldYellow                   { gui="bold", fg="#f1ff5e", }, -- NeogitGraphBoldYellow xxx cterm=bold gui=bold guifg=#f1ff5e
    NeogitDiffContextCursor                 { bg="#3b3f47", }, -- NeogitDiffContextCursor xxx guibg=#3b3f47
    NeogitUnmergedInto                      { gui="bold", fg="#ff5ea0", }, -- NeogitUnmergedInto xxx cterm=bold gui=bold guifg=#ff5ea0
    NeogitDiffHeaderHighlight               { bg="#3b3f47", gui="bold", fg="#ffbd5e", }, -- NeogitDiffHeaderHighlight xxx cterm=bold gui=bold guifg=#ffbd5e guibg=#3b3f47
    NeogitHunkMergeHeader                   { bg="#7b8496", gui="bold", fg="#3b3f47", }, -- NeogitHunkMergeHeader xxx cterm=bold gui=bold guifg=#3b3f47 guibg=#7b8496
    NeogitGraphBoldCyan                     { gui="bold", fg="#5ef1ff", }, -- NeogitGraphBoldCyan xxx cterm=bold gui=bold guifg=#5ef1ff
    NeogitDiffAdditions                     { fg="#2f6836", }, -- NeogitDiffAdditions xxx guifg=#2f6836
    NeogitPopupBold                         { gui="bold", }, -- NeogitPopupBold xxx cterm=bold gui=bold
    NeogitGraphBlue                         { fg="#5ea1ff", }, -- NeogitGraphBlue xxx guifg=#5ea1ff
    DashboardDesc                           { fg="#ffbd5e", }, -- DashboardDesc  xxx guifg=#ffbd5e
    NeogitChangeCopied                      { gui="bold,italic", fg="#5ef1ff", }, -- NeogitChangeCopied xxx cterm=bold,italic gui=bold,italic guifg=#5ef1ff
    KubectlPending                          { fg="#bd5eff", }, -- KubectlPending xxx guifg=#bd5eff
    TelescopePromptCounter                  { fg="#ff5ea0", }, -- TelescopePromptCounter xxx guifg=#ff5ea0
    SnacksNotifierTitleDebug                { fg="#7b8496", }, -- SnacksNotifierTitleDebug xxx guifg=#7b8496
    SnacksNotifierIconError                 { fg="#ff6e5e", }, -- SnacksNotifierIconError xxx guifg=#ff6e5e
    SnacksNotifierIconInfo                  { fg="#5ea1ff", }, -- SnacksNotifierIconInfo xxx guifg=#5ea1ff
    SnacksNotifierTitleInfo                 { fg="#5ea1ff", }, -- SnacksNotifierTitleInfo xxx guifg=#5ea1ff
    SnacksNotifierIconTrace                 { fg="#bd5eff", }, -- SnacksNotifierIconTrace xxx guifg=#bd5eff
    SnacksNotifierTitleTrace                { fg="#bd5eff", }, -- SnacksNotifierTitleTrace xxx guifg=#bd5eff
    SnacksNotifierIconWarn                  { fg="#f1ff5e", }, -- SnacksNotifierIconWarn xxx guifg=#f1ff5e
    SnacksDashboardDesc                     { fg="#5ef1ff", }, -- SnacksDashboardDesc xxx guifg=#5ef1ff
    SnacksDashboardFile                     { fg="#5ef1ff", }, -- SnacksDashboardFile xxx guifg=#5ef1ff
    SnacksDashoardFooter                    { fg="#5ef1ff", }, -- SnacksDashoardFooter xxx guifg=#5ef1ff
    SnacksDashboardHeader                   { fg="#ebceff", }, -- SnacksDashboardHeader xxx guifg=#ebceff
    SnacksDashboardIcon                     { fg="#5ea1ff", }, -- SnacksDashboardIcon xxx guifg=#5ea1ff
    SnacksDashboardKey                      { fg="#ffbd5e", }, -- SnacksDashboardKey xxx guifg=#ffbd5e
    SnacksPickerTotals                      { gui="bold", fg="#5ef1ff", }, -- SnacksPickerTotals xxx cterm=bold gui=bold guifg=#5ef1ff
    GrugFarResultsStats                     { fg="#f1ff5e", }, -- GrugFarResultsStats xxx guifg=#f1ff5e
    GrugFarResultsMatch                     { bg="#20383c", gui="bold", fg="#5ef1ff", }, -- GrugFarResultsMatch xxx cterm=bold gui=bold guifg=#5ef1ff guibg=#20383c
    MarkviewBlockQuoteSpecial               { fg="#5ef1ff", }, -- MarkviewBlockQuoteSpecial xxx guifg=#5ef1ff
    MarkviewTableBorder                     { fg="#3c4048", }, -- MarkviewTableBorder xxx guifg=#3c4048
    mkdCodeStart                            { fg="#5ea1ff", }, -- mkdCodeStart   xxx guifg=#5ea1ff
    HelpviewTitle                           { bg="#443827", gui="bold", fg="#ffbd5e", }, -- HelpviewTitle  xxx cterm=bold gui=bold guifg=#ffbd5e guibg=#443827
    GrappleTitle                            { fg="#ff5ea0", }, -- GrappleTitle   xxx guifg=#ff5ea0
    GrappleBorder                           { fg="#5ef1ff", }, -- GrappleBorder  xxx guifg=#5ef1ff
    lualine_z_insert                        { bg="#16181a", gui="nocombine", fg="#7b8496", }, -- lualine_z_insert xxx gui=nocombine guifg=#7b8496 guibg=#16181a
    lualine_z_visual                        { bg="#16181a", gui="nocombine", fg="#7b8496", }, -- lualine_z_visual xxx gui=nocombine guifg=#7b8496 guibg=#16181a
    lualine_z_terminal                      { bg="#16181a", gui="nocombine", fg="#7b8496", }, -- lualine_z_terminal xxx gui=nocombine guifg=#7b8496 guibg=#16181a
    lualine_z_normal                        { bg="#16181a", gui="nocombine", fg="#7b8496", }, -- lualine_z_normal xxx gui=nocombine guifg=#7b8496 guibg=#16181a
    lualine_y_normal                        { bg="#16181a", gui="nocombine", fg="#ff5ef1", }, -- lualine_y_normal xxx gui=nocombine guifg=#ff5ef1 guibg=#16181a
    lualine_x_normal                        { bg="#16181a", gui="nocombine", fg="#ffffff", }, -- lualine_x_normal xxx gui=nocombine guifg=#ffffff guibg=#16181a
  }
end)
return theme
