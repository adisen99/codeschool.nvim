-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

-- python
M = lush(function()
  return {
    pythonBuiltin { base.CodeschoolOrange },
    pythonBuiltinObj { base.CodeschoolOrange },
    pythonBuiltinFunc { base.CodeschoolOrange },
    pythonFunction { base.CodeschoolAqua },
    pythonDecorator { base.CodeschoolRed },
    pythonInclude { base.CodeschoolBlue },
    pythonImport { base.CodeschoolBlue },
    pythonRun { base.CodeschoolBlue },
    pythonCoding { base.CodeschoolBlue },
    pythonOperator { base.CodeschoolRed },
    pythonException { base.CodeschoolRed },
    pythonExceptions { base.CodeschoolPurple },
    pythonBoolean { base.CodeschoolPurple },
    pythonDot { base.CodeschoolFg3 },
    pythonConditional { base.CodeschoolRed },
    pythonRepeat { base.CodeschoolRed },
    pythonDottedName { base.CodeschoolGreenBold },
    pythonVariable { base.Variable },
  }
end)

return M
