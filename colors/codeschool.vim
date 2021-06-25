" reloading all codeschool highlights
lua << EOF
package.loaded["codeschool"] = nil
package.loaded["codeschool.base"] = nil
package.loaded["codeschool.plugins.highlights"] = nil
package.loaded["codeschool.languages"] = nil
require("lush")(require("codeschool"))
EOF
