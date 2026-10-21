#!/bin/lua

FILENAME = "work_times.csv"
assert(type(FILENAME) == "string")
local file = io.open(FILENAME, "a+")
assert(file ~= nil)
--local file_contents = file:read("a") -- for some reason this doesnt behave the same on termux so its commented out
--if string.len(file_contents) == 0 then 
--	print("Adding the first line...")
--	file:write("Date,Weekday,Time")
--end
local current_time = os.date("%d/%m/%Y,%a,%H.%M")
print("Appending " .. current_time .. " to " .. FILENAME .. "...")
file:write("\n" .. current_time)
io.close(file)
print("The Program has finished its job.")
