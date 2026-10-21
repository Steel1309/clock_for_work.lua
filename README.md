# Introduction
Where I work right now, I need to keep track of when my workday begins and ends.
So heres a small lua program for that purpose.

I use it with Termux on my phone.
The program makes a work_times.csv, which I turn into spreadsheet on Google Sheets.

I'm putting it here for my own safekeeping.
If someone else sees this...
Feel free to use and adapt it to your needs.

## For a quick look inside:
```lua
#!/bin/lua

FILENAME = "work_times.csv"
assert(type(FILENAME) == "string")
local file = io.open(FILENAME, "a+")
assert(file ~= nil)
local file_contents = file:read("a")
if string.len(file_contents) == 0 then
	print("Adding the first line...")
	file:write("Date,Weekday,Time")
end
local current_time = os.date("%d/%m/%Y,%a,%H.%M")
print("Appending " .. current_time .. " to " .. FILENAME .. "...")
file:write("\n" .. current_time)
io.close(file)
print("The Program has finished its job.")
```
