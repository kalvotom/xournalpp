
-- Predefined colors copied from LoadHandlerHelper.cpp
-- and their shortcuts.
-- Modify to your needs 
local colorList = { 
  {"black",      0x000000, "1"},
  {"red",        0xff0000, "2"},
  {"blue",       0x3333cc, "3"},
  {"green",      0x008000, "4"},
  {"gray",       0x808080, "5"},
--  {"lightblue",  0x00c0ff, "3"},
--  {"lightgreen", 0x00ff00, "4"},
--  {"magenta",    0xff00ff, "8"},
--  {"orange",     0xff8000, "9"},
--  {"yellow",     0xffff00, "0"},
--  {"white",      0xffffff, "q"}
}

-- Register all Toolbar actions and intialize all UI stuff
function initUi()
  for i = 1, 5, 1
  do
    app.registerUi({["menu"] = "Select "..colorList[i][1].." color", ["callback"] = "color"..i, ["accelerator"] = "<Alt>"..colorList[i][3]});
  end
end

function color1()
  -- apply color to currently used tool and allow coloring of elements from selections
  app.changeToolColor({["color"] = colorList[1][2], ["selection"] = true})
  -- use app.changeColor({["color"] = colorList[currentColor][2], ["tool"] = "pen""}) 
  -- instead if you only want to change pen color
  -- similarly if you want to change highlighter color or the color from another tool with color capabilities.
end

function color2()
  app.changeToolColor({["color"] = colorList[2][2], ["selection"] = true})
end

function color3()
  app.changeToolColor({["color"] = colorList[3][2], ["selection"] = true})
end

function color4()
  app.changeToolColor({["color"] = colorList[4][2], ["selection"] = true})
end

function color5()
  app.changeToolColor({["color"] = colorList[5][2], ["selection"] = true})
end

function color6()
  app.changeToolColor({["color"] = colorList[6][2], ["selection"] = true})
end

function color7()
  app.changeToolColor({["color"] = colorList[7][2], ["selection"] = true})
end

function color8()
  app.changeToolColor({["color"] = colorList[8][2], ["selection"] = true})
end

function color9()
  app.changeToolColor({["color"] = colorList[9][2], ["selection"] = true})
end

function color10()
  app.changeToolColor({["color"] = colorList[10][2], ["selection"] = true})
end

function color11()
  app.changeToolColor({["color"] = colorList[11][2], ["selection"] = true})
end
