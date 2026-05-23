local timers = {}

function wait(ticks, func)
    table.insert(timers, { ticks = ticks, func = func })
end

function events.TICK()
    for i = #timers, 1, -1 do
        local t = timers[i]
        t.ticks = t.ticks - 1
        if t.ticks <= 0 then
            t.func()
            table.remove(timers, i)
        end
    end
end
