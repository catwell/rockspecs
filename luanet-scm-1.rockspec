package = "luanet"
version = "scm-1"
source = {
   url = "git://github.com/arcapos/luanet"
}
description = {
   summary = "Network access for Lua",
   homepage = "http://github.com/arcapos/luanet",
   license = "3-clause BSD",
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      net = {
         sources = {"luanet.c"}
      }
   },
   platforms = {
      linux = {
         modules = {
            net = {
               defines = {"_GNU_SOURCE"}
            }
         }
      }
   }
}
