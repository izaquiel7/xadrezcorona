-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here


tabuleiro = {}

function tabuleiro:desenharVelha()

local linha = display.newLine(0, 150, 300, 150)

local linha2 = display.newLine(0, 250, 300, 250)

local coluna = display.newLine(100, 50, 100, 350)

local coluna2 = display.newLine(210, 50, 210, 350)

but1 = display.newRect(50, 100 ,90, 90)
but1:setFillColor(1,1,1,0.1)

but2 = display.newRect(155, 100 ,95, 90)
but2:setFillColor(1,1,0, 0.1)

but3 = display.newRect(260, 100 ,90, 90)
but3:setFillColor(1,1,1,0.1)

but4 = display.newRect(50, 200 ,90, 90)
but4:setFillColor(1,1,0, 0.1)

but5 = display.newRect(155, 200 ,95, 90)
but5:setFillColor(1,1,1,0.1)

but6 = display.newRect(260, 200 ,90, 90)
but6:setFillColor(1,1,0,0.1)

but7 = display.newRect(50, 300 ,90, 90)
but7:setFillColor(1,1,1,0.1)

but8 = display.newRect(155, 300 ,95, 90)
but8:setFillColor(1,1,0,0.1)

but9 = display.newRect(260, 300 ,90, 90)
but9:setFillColor(1,1,1,0.1)
end

tabuleiro:desenharVelha()

function but1PrintX( event )

	x = display.newLine(10,60, 90, 140)
	y = display.newLine(90,60, 10, 140)

	x.strokeWidth = 5
	y.strokeWidth = 5

	x:setStrokeColor(1,0,0)
	y:setStrokeColor(1,0,0)
end

function but2PrintX( event )
	x = display.newLine(115,60, 195, 140)
	y = display.newLine(195,60, 115, 140)

	x.strokeWidth = 5
	y.strokeWidth = 5

	x:setStrokeColor(1,0,0)
	y:setStrokeColor(1,0,0)
end

function but3PrintX( event )
	x = display.newLine(215,60, 295, 140)
	y = display.newLine(295,60, 215, 140)

	x.strokeWidth = 5
	y.strokeWidth = 5

	x:setStrokeColor(1,0,0)
	y:setStrokeColor(1,0,0)
end

function but4PrintX( event )

	x = display.newLine(10,160, 90, 240)
	y = display.newLine(90,160, 10, 240)

	x.strokeWidth = 5
	y.strokeWidth = 5

	x:setStrokeColor(1,0,0)
	y:setStrokeColor(1,0,0)
end

function but5PrintX( event )
	x = display.newLine(115,160, 195, 240)
	y = display.newLine(195,160, 115, 240)

	x.strokeWidth = 5
	y.strokeWidth = 5

	x:setStrokeColor(1,0,0)
	y:setStrokeColor(1,0,0)
end

function but6PrintX( event )
	x = display.newLine(215,160, 295, 240)
	y = display.newLine(295,160, 215, 240)

	x.strokeWidth = 5
	y.strokeWidth = 5

	x:setStrokeColor(1,0,0)
	y:setStrokeColor(1,0,0)
end

function but7PrintX( event )

	x = display.newLine(10,260, 90, 340)
	y = display.newLine(90,260, 10, 340)

	x.strokeWidth = 5
	y.strokeWidth = 5

	x:setStrokeColor(1,0,0)
	y:setStrokeColor(1,0,0)
end

function but8PrintX( event )
	x = display.newLine(115,260, 195, 340)
	y = display.newLine(195,260, 115, 340)

	x.strokeWidth = 5
	y.strokeWidth = 5

	x:setStrokeColor(1,0,0)
	y:setStrokeColor(1,0,0)
end

function but9PrintX( event )
	x = display.newLine(215,260, 295, 340)
	y = display.newLine(295,260, 215, 340)

	x.strokeWidth = 5
	y.strokeWidth = 5

	x:setStrokeColor(1,0,0)
	y:setStrokeColor(1,0,0)
end

----Funções para printar bola
function but1PrintO( event )
	bola = display.newCircle(50, 100, 40)
	bola:setFillColor(0,0,1)

	b = display.newCircle(50, 100, 35)
	b:setFillColor(0,0,0, 0.9)
end

nJogadas = 1

function tabuleiro:iniciarJogada()
	while nJogadas <= 9 do

		if nJogadas % 2 == 0 then 

	but1:addEventListener("touch", but1PrintX)
	but2:addEventListener("touch", but2PrintX)
	but3:addEventListener("touch", but3PrintX)
	but4:addEventListener("touch", but4PrintX)
	but5:addEventListener("touch", but5PrintX)
	but6:addEventListener("touch", but6PrintX)
	but7:addEventListener("touch", but7PrintX)
	but8:addEventListener("touch", but8PrintX)
	but9:addEventListener("touch", but9PrintX)

	nJogadas = nJogadas + 1
		else
	--but1:addEventListener("touch", but1PrintO)

	nJogadas = nJogadas + 1
		end
	end
end

tabuleiro:iniciarJogada()

options = {
	text = "Jogo da velha",
	x = 155,
	y = 25
}

texto = display.newText(options)