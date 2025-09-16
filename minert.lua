print("Hegsdfgsllo")


local slot = {
    fuel = 1,
    torch = 2,
    fill = 3
}
local plaseTorch = true



function Main()
    Forward(5)
end

function Torch()
    if plaseTorch then
        turtle.select(slot.torch)
        turtle.place()
    end
end

function Forward(length)
    print("Forward")
    for i=1, length, 1 do
        turtle.forward()
    end
end



Main()