-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the store

--Store

Store = class()

local storeScreen
local buyHint
local buyTimeboost
local buyPointBoost

sprite()
function Store:init()
--This button moves back to the main menu
   moveBackButton = Button("Dropbox:Blue Back Circle Button", vec2(60, 700))
   buyHint = Button("Dropbox:Hints Button", vec2(470, 500))
   buyTimeboost = Button("Dropbox:Time Boost Button", vec2(470, 350))
   buyPointBoost = Button("Dropbox:Point Boost Button", vec2(470, 200))
end

function Store:draw()
  background(0, 172, 255, 255)
   moveBackButton:draw()
   buyHint:draw()
   buyTimeboost:draw()
   buyPointBoost:draw()


   fill(0, 172, 255, 255)
   rect(150, 600, 800, 300)
   fill(0, 0, 0, 255)
   fontSize(60)
   text("Welcome To the Shop", 500, 700)

   fill(229, 224, 8, 255)
   rect(805, 550, 225, 80)
   fill(0, 0, 0, 255)
   fontSize(60)
   text("Price", 900, 590)


   fill(235, 231, 6, 255)
   rect(805, 440, 225, 110)
   fill(0, 0, 0, 255)
   fontSize(80)
   text("$100", 900, 490)

   fill(46, 164, 24, 255)
   rect(805, 290, 225, 155)
   fill(0, 0, 0, 255)
   fontSize(80)
   text("$200", 900, 350)

   fill(21, 106, 185, 255)
   rect(805, 105, 225, 190)
   fill(0, 0, 0, 255)
   fontSize(80)
   text("$300", 900, 180)

   fill(0, 255, 1, 255)
   rect(0, 550, 805, 80)
   fill(0, 0, 0, 255)
   fontSize(60)
   text("Upgrades", 500, 590)

   fill(0, 172, 255, 255)
   rect(0, 0, 220, 105)
   fill(0, 0, 0, 255)
   fontSize(60)
   text("$", 100, 50)
   text(amountofcoins, 500, 50)

end

function Store:touched(touch)
    --This goes to the main menu when you press the back button

   moveBackButton:touched(touch)
   buyHint:touched(touch)
   buyTimeboost:touched(touch)
   buyPointBoost:touched(touch)

   if (moveBackButton.selected == true) then
       Scene.Change("main")
   end

   if (buyHint.selected == true) then
       if(amountofcoins>=100)then
           amountofcoins=amountofcoins-100
           amountofhints=amountofhints+1
       else
           alert("Not enough coins", "Can't buy Hints")

       end
   end

   if (buyTimeboost.selected == true) then
       if(amountofcoins>=200)then
           amountofcoins=amountofcoins-200
           amountoftimeboost=amountoftimeboost+1
       else
           alert("Not Enough Coins", "Can't Buy Time Boost")

       end
   end

   if (buyPointBoost.selected == true) then
       if(amountofcoins>=300)then
           amountofcoins=amountofcoins-300
           amountofpointboost=amountofpointboost+1
       else
           alert("Not Enough Coins", "Can't Buy Point Boost")
       end
   end
end