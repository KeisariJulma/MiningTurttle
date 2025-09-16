local slot = {
    fuel = 1,
    torch = 2,
}

local placeTorch = true

-- Refuel first
turtle.select(slot.fuel)
turtle.refuel(1)

function Torch()
    if placeTorch then
        turtle.select(slot.torch)
        turtle.place()
    end
end

function Forward(length)
    for i = 1, length do
        Torch()
        turtle.select(slot.fuel) -- keep fuel selected to move
        while not turtle.forward() do
            if turtle.detect() then
                turtle.dig()
            else
                print("Cannot move forward!")
                sleep(1)
            end
        end
    end
end

function Main()
    Forward(5)
end

Main()
