# Figura wait function
(Figura)[https://modrinth.com/mod/figura]

Installation:

  Copy the wait function code to the top of your script.
  
Usage:

  1. Call wait(ticks, function() ... end).
  2. ticks — number of ticks (20 ticks = 1 second).
  3. Inside function write what to do after the delay.

Example:
```
wait(40, function()
    print("2 seconds passed")
end)
