-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local css = lush(function()
  return {
    cssBraces {base.CodeschoolBlue},
    cssFunctionName {base.CodeschoolYellow},
    cssIdentifier {base.CodeschoolOrange},
    cssClassName {base.CodeschoolGreen},
    cssColor {base.CodeschoolBlue},
    cssSelectorOp {base.CodeschoolBlue},
    cssSelectorOp2 {base.CodeschoolBlue},
    cssImportant {base.CodeschoolGreen},
    cssVendor {base.CodeschoolFg1},
    cssTextProp {base.CodeschoolAqua},
    cssAnimationProp {base.CodeschoolAqua},
    cssUIProp {base.CodeschoolYellow},
    cssTransformProp {base.CodeschoolAqua},
    cssTransitionProp {base.CodeschoolAqua},
    cssPrintProp {base.CodeschoolAqua},
    cssPositioningProp {base.CodeschoolYellow},
    cssBoxProp {base.CodeschoolAqua},
    cssFontDescriptorProp {base.CodeschoolAqua},
    cssFlexibleBoxProp {base.CodeschoolAqua},
    cssBorderOutlineProp {base.CodeschoolAqua},
    cssBackgroundProp {base.CodeschoolAqua},
    cssMarginProp {base.CodeschoolAqua},
    cssListProp {base.CodeschoolAqua},
    cssTableProp {base.CodeschoolAqua},
    cssFontProp {base.CodeschoolAqua},
    cssPaddingProp {base.CodeschoolAqua},
    cssDimensionProp {base.CodeschoolAqua},
    cssRenderProp {base.CodeschoolAqua},
    cssColorProp {base.CodeschoolAqua},
    cssGeneratedContentProp {base.CodeschoolAqua},
  }
end)

return css
