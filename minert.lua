local slot = {
    fuel = 1,
    torch = 2,
    fill = 3
}
local placeTorch = true

function Main()
    turtle.select(slot.fuel)
    turtle.refuel(1) -- make sure turtle has fuel
    Forward(5)
end

function Torch()
    if placeTorch then
        turtle.select(slot.torch)
        turtle.place()
    end
end

function Forward(length)
    print("Forward")
    for i = 1, length do
        Torch()
        turtle.select(slot.fuel) -- make sure fuel slot is selected
        while not turtle.forward() do
            turtle.dig()
            sleep(0.5)
        end
    end
end

Main()
