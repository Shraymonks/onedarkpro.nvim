local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.get(theme)
    return {
        -- CSS
        cssAttrComma = { fg = theme.colors.purple },
        cssAttributeSelector = { fg = theme.colors.green },
        cssBraces = { fg = theme.colors.red },
        cssClassName = { fg = theme.colors.orange },
        cssClassNameDot = { fg = theme.colors.orange },
        cssDefinition = {
            fg = theme.colors.purple,
            style = theme.options.bold_italic
        },
        cssFontAttr = { fg = theme.colors.orange },
        cssFontDescriptor = { link = "cssDefinition" },
        cssFunctionName = { fg = theme.colors.blue },
        cssIdentifier = { fg = theme.colors.blue },
        cssImportant = { link = "cssDefinition" },
        cssInclude = { fg = theme.colors.fg },
        cssIncludeKeyword = { link = "cssDefinition" },
        cssMediaType = { fg = theme.colors.orange },
        cssProp = { fg = theme.colors.fg },
        cssPseudoClassId = { fg = theme.colors.orange },
        cssSelectorOp = { link = "cssDefinition" },
        cssSelectorOp2 = { link = "cssDefinition" },
        cssTagName = { fg = theme.colors.red },

        -- HTML
        htmlArg = { fg = theme.colors.purple, style = theme.options.bold_italic },
        htmlBold = { fg = theme.colors.orange, style = theme.options.bold },
        htmlItalic = { fg = theme.colors.purple, style = theme.options.italic },
        htmlLink = { fg = theme.colors.cyan, style = theme.options.underline },
        htmlH1 = { fg = theme.colors.red },
        htmlH2 = { link = "htmlH1" },
        htmlH3 = { link = "htmlH1" },
        htmlH4 = { link = "htmlH1" },
        htmlH5 = { link = "htmlH1" },
        htmlH6 = { link = "htmlH1" },
        htmlSpecialChar = { link = "SpecialChar" },
        htmlSpecialTagName = { fg = theme.colors.red },
        htmlTag = { link = "TSTag" },
        htmlEndTag = { link = "htmlTag" },
        htmlTagN = { fg = theme.colors.red },
        htmlTagName = { fg = theme.colors.red },
        htmlTitle = { fg = theme.colors.fg },

        -- Javascript
        javascriptBraces = { fg = theme.colors.red },
        javaScriptFunction = { fg = theme.colors.purple },
        javaScriptIdentifier = { fg = theme.colors.purple },
        javaScriptNull = { fg = theme.colors.orange },
        javaScriptNumber = { link = "Number" },
        javaScriptRequire = { fg = theme.colors.cyan },
        javaScriptReserved = { fg = theme.colors.purple },
        ---- https://github.com/pangloss/vim-javascript included in Vim-Polygot
        jsArrowFunction = {
            fg = theme.colors.purple,
            style = theme.options.bold_italic
        },
        jsClassKeyword = { link = "jsArrowFunction" },
        jsClassMethodType = { link = "jsArrowFunction" },
        jsDocParam = { fg = theme.colors.blue },
        jsDocTags = { fg = theme.colors.purple },
        jsExport = { link = "jsArrowFunction" },
        jsExportDefault = { link = "jsExport" },
        jsExtendsKeyword = { link = "jsClassKeyword" },
        jsFrom = { link = "jsExport" },
        jsFuncCall = { fg = theme.colors.blue },
        jsFunction = { link = "jsArrowFunction" },
        jsGenerator = { fg = theme.colors.yellow },
        jsGlobalObjects = { link = "jsGenerator" },
        jsImport = { link = "jsExport" },
        jsModuleAs = { link = "jsExport" },
        jsModuleWords = { link = "jsExport" },
        jsModules = { link = "jsExport" },
        jsNull = { fg = theme.colors.orange },
        jsOperator = { fg = theme.colors.purple },
        jsStorageClass = { link = "jsClassKeyword" },
        jsSuper = { fg = theme.colors.red },
        jsTemplateBraces = { fg = theme.colors.red },
        jsTemplateVar = { fg = theme.colors.green },
        jsThis = { fg = theme.colors.red },
        jsUndefined = { fg = theme.colors.orange },

        -- JSON
        jsonCommentError = { fg = theme.colors.fg },
        jsonKeyword = { fg = theme.colors.red },
        jsonBoolean = { link = "Boolean" },
        jsonNumber = { link = "Number" },
        jsonQuote = { fg = theme.colors.fg },
        jsonMissingCommaError = { fg = theme.colors.red, style = "reverse" },
        jsonNoQuotesError = { link = "jsonMissingCommaError" },
        jsonNumError = { link = "jsonMissingCommaError" },
        jsonString = { fg = theme.colors.green },
        jsonStringSQError = { link = "jsonMissingCommaError" },
        jsonSemicolonError = { link = "jsonMissingCommaError" },

        -- Markdown
        markdownBlockquote = { fg = theme.colors.comment },
        markdownBold = { fg = theme.colors.orange, style = theme.options.bold },
        markdownCode = { fg = theme.colors.green },
        markdownCodeBlock = { link = "markdownCode" },
        markdownCodeDelimiter = { link = "markdownCode" },
        markdownH1 = { fg = theme.colors.red },
        markdownH2 = { link = "markdownH1" },
        markdownH3 = { link = "markdownH1" },
        markdownH4 = { link = "markdownH1" },
        markdownH5 = { link = "markdownH1" },
        markdownH6 = { link = "markdownH1" },
        markdownHeadingDelimiter = { fg = theme.colors.red },
        markdownHeadingRule = { link = "markdownBlockquote" },
        markdownId = {
            fg = theme.colors.purple,
            style = theme.options.bold_italic
        },
        markdownIdDeclaration = { fg = theme.colors.blue },
        markdownIdDelimiter = { link = "markdownId" },
        markdownItalic = {
            fg = theme.colors.purple,
            style = theme.options.italic
        },
        markdownLinkDelimiter = { fg = theme.colors.purple },
        markdownLinkText = { fg = theme.colors.blue },
        markdownListMarker = { fg = theme.colors.red },
        markdownOrderedListMarker = { link = "markdownListMarker" },
        markdownRule = { link = "markdownBlockquote" },
        markdownUrl = { fg = theme.colors.cyan, style = theme.options.underline },

        -- Python
        pythonNone = { fg = theme.colors.yellow },
        pythonBoolean = { link = "pythonNone" },
        pythonClass = { fg = theme.colors.yellow },
        pythonParens = { fg = theme.colors.red },
        pythonBuiltinObj = { fg = theme.colors.cyan, style = theme.options.bold },
        pythonSpaceError = { bg = theme.colors.red, fg = theme.colors.fg },
        pythonString = { fg = theme.colors.green },
        pythonDot = { fg = theme.colors.fg },
        pythonImport = {
            fg = theme.colors.purple,
            style = theme.options.bold_italic
        },
        pythonRepeat = { link = "pythonImport" },
        pythonStatement = { link = "pythonImport" },
        pythonOperator = { link = "pythonImport" },

        -- Ruby
        rubyBlockParameter = { fg = theme.colors.red },
        rubyBlockParameterList = { link = "rubyBlockParameter" },
        rubyClass = {
            fg = theme.colors.purple,
            style = theme.options.bold_italic
        },
        rubyConstant = { fg = theme.colors.yellow },
        rubyControl = { link = "rubyClass" },
        rubyEscape = { fg = theme.colors.red },
        rubyFunction = { fg = theme.colors.blue },
        rubyGlobalVariable = { fg = theme.colors.red },
        rubyInclude = { fg = theme.colors.blue },
        rubyIncluderubyGlobalVariable = { link = "rubyGlobalVariable" },
        rubyInstanceVariable = { link = "rubyGlobalVariable" },
        rubyInterpolation = { fg = theme.colors.cyan },
        rubyInterpolationDelimiter = { fg = theme.colors.red },
        rubyRegexp = { fg = theme.colors.cyan },
        rubyRegexpDelimiter = { link = "rubyRegexp" },
        rubyStringDelimiter = { fg = theme.colors.green },
        rubySymbol = { fg = theme.colors.cyan },

        -- SASS
        sassidChar = { fg = theme.colors.red },
        sassClassChar = { fg = theme.colors.orange },
        sassInclude = {
            fg = theme.colors.purple,
            style = theme.options.bold_italic
        },
        sassMixing = { link = "sassInclude" },
        sassMixinName = { fg = theme.colors.blue },
        scssExtend = { link = "sassInclude" },
        scssImport = { link = "sassInclude" },
        scssMixin = { link = "sassMixing" },
        scssSelectorName = { fg = theme.colors.orange },
        scssVariable = { link = "sassMixing" }
    }
end

return M