-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

-- java
M = lush(function()
  return {
    javaAnnotation {base.CodeschoolBlue},
    javaDocTags {base.CodeschoolAqua},
    javaCommentTitle {base.Comment},
    javaParen {base.CodeschoolFg3},
    javaParen1 {base.CodeschoolFg3},
    javaParen2 {base.CodeschoolFg3},
    javaParen3 {base.CodeschoolFg3},
    javaParen4 {base.CodeschoolFg3},
    javaParen5 {base.CodeschoolFg3},
    javaOperator {base.CodeschoolOrange},
  }
end)

return M
