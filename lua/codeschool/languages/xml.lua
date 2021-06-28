-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

-- xml
local xml = lush(function()
  return {
    xmlTag {base.CodeschoolAquaBold},
    xmlEndTag {base.CodeschoolAquaBold},
    xmlTagName {base.CodeschoolBlue},
    xmlEqual {base.CodeschoolBlue},
    docbkKeyword {base.CodeschoolAquaBold},
    xmlDocTypeDecl {base.CodeschoolGray},
    xmlDocTypeKeyword {base.CodeschoolPurple},
    xmlCdataStart {base.CodeschoolGray},
    xmlCdataCdata {base.CodeschoolPurple},
    dtdFunction {base.CodeschoolGray},
    dtdTagName {base.CodeschoolPurple},
    xmlAttrib {base.CodeschoolOrange},
    xmlProcessingDelim {base.CodeschoolGray},
    dtdParamEntityPunct {base.CodeschoolGray},
    dtdParamEntityDPunct {base.CodeschoolGray},
    xmlAttribPunct {base.CodeschoolGray},
    xmlEntity {base.CodeschoolRed},
    xmlEntityPunct {base.CodeschoolRed},
  }
end)

return xml
