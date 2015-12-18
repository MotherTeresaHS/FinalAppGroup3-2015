EasyP2 = class()

local answer
local firstNumber
local secNumber
local op
local mathOperationText
local addingButton
local buttonAnswer
local subtractButton
 
function EasyP2:init()
    -- you can accept and set parameters here
--sprite("Dropbox:FunMath Subtraction Sign")
 --   sprite("Dropbox:FunMath Plus Sign")
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(50, 700))
    addingButton = Button("Dropbox:FunMath Plus Sign",vec2(500,100))
    subtractButton = Button("Dropbox:FunMath Subtraction Sign",vec2(100,100))
    
    firstNumber=math.random(10)
    print("firstNumbber ",firstNumber)
    
    secNumber=math.random(10)
    print("secNumber ",secNumber)
    
    op=math.random(2)
    print("op ",op)
    if(op == 1 )then
        mathOperationText = "+"
        answer=firstNumber+secNumber 
     
    elseif (op == 2)then
        mathOperationText = "-"
        answer=firstNumber-secNumber 
        if (firstNumber>secNumber)then
            answer= secNumber-firstNumber
    else  answer=firstNumber-secNumber 
    end
end
end
function EasyP2:draw()
    -- Codea does not automatically call this method
    background(242, 16, 249, 255)
    moveBackButton:draw()
    print(answer)
    print(firstNumber)
    print(secNumber)
    print(op)
    fontSize(40)
    fill(255, 254, 0, 255)
    text(firstNumber,400,600)
    text(secNumber,500,600)
    text("=",550,600)
    text(answer,600,600)
    addingButton:draw()
    subtractButton:draw()
    print(ElapsedTime)
    print("End time is" .. startTime + 3)
    if(startTime + 200 < ElapsedTime) then
        text("cange to player two",200,700)
        print("The end time is" .. ElapsedTime)
    end
end

function EasyP2:touched(touch)
    -- Codea does not automatically call this method
    moveBackButton:touched(touch)
    addingButton:touched(touch) 
    subtractButton:touched(touch)
    
    if(addingButton.selected == true) then
        if (mathOperationText == "+")then
            print("corect")
            Scene.Change("right")     
        else
            print("wrong") 
            Scene.Change("wrong")
        end
    end
    if(subtractButton.selected == true) then
        if (mathOperationText == "-")then
            Scene.Change("right")     
        else
            Scene.Change("wrong")
        end
    end
   -- elseif (subtractButton.selected == true and mathOperationText == "-")then
        --print"correct"
      --  Scene.Change("right")
    --end
    
        
    if(moveBackButton.selected == true) then
        Scene.Change("maingame")
    end
    
end
