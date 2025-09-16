print("Hello")


local slot = {
    fuel = 1,
    torch = 2,
    fill = 3
}
local plaseTorch = true



function Main()
    torch()
    
end

function torch()
    if plaseTorch then 
        turtle.select(slot.torch)
        turtle.place()
    end
end