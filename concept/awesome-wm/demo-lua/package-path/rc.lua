
--------------------------------------------------------------------------------
--- Head: Package
--

-- https://www.lua.org/manual/5.3/manual.html#6.3
-- https://www.lua.org/manual/5.3/manual.html#pdf-require
-- https://www.lua.org/manual/5.3/manual.html#pdf-package.path
-- https://www.runoob.com/lua/lua-modules-packages.html

print("Old package.path = " .. package.path)

package.path = "./vendor/?.lua;./vendor/?/init.lua;" .. package.path

print("New package.path = " .. package.path)

--
-- Tail: Package
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Main
--

local my = require("my")
print(my.name)

local me = require ("me")
print(me.name)

--
--- Tail: Main
--------------------------------------------------------------------------------
