-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here


tabuleiro = {}


function tabuleiro:iniciar()

	for i=1,3 do
	tabuleiro[i] = {}

		for j=1,3 do

		tabuleiro[i][j] = " "
		end
	end
end

tabuleiro:iniciar()

function tabuleiro:desenharVelha()

	local linha = display.newLine(0, 150, 300, 150)

	local linha2 = display.newLine(0, 250, 300, 250)

	local coluna = display.newLine(100, 50, 100, 350)

	local coluna2 = display.newLine(210, 50, 210, 350)

	but1 = display.newRect(50, 100 ,90, 90)
	but1:setFillColor(0.1,0.1,0.1,0.1)

	but2 = display.newRect(155, 100 ,95, 90)
	but2:setFillColor(0.1,0.1,0.1, 0.1)

	but3 = display.newRect(260, 100 ,90, 90)
	but3:setFillColor(0.1,0.1,0.1,0.1)

	but4 = display.newRect(50, 200 ,90, 90)
	but4:setFillColor(0.1,0.1,0, 0.1)

	but5 = display.newRect(155, 200 ,95, 90)
	but5:setFillColor(0.1,0.1,0.1,0.1)

	but6 = display.newRect(260, 200 ,90, 90)
	but6:setFillColor(0.1,0.1,0, 0.1)

	but7 = display.newRect(50, 300 ,90, 90)
	but7:setFillColor(0.1,0.1,0, 0.1)

	but8 = display.newRect(155, 300 ,95, 90)
	but8:setFillColor(0.1,0.1,0, 0.1)

	but9 = display.newRect(260, 300 ,90, 90)
	but9:setFillColor(0.1,0.1,0, 0.1)
end


n = 0
function desenharBut1( event )
	if n == 0 and tabuleiro:validarJogada(1, 1)  then
		if event.phase == "began" then

		x = display.newLine(10,60, 90, 140)
		y = display.newLine(90,60, 10, 140)

		x.strokeWidth = 5
		y.strokeWidth = 5

		x:setStrokeColor(1,0,0)
		y:setStrokeColor(1,0,0)

		tabuleiro[1][1] = "x"

		tabuleiro:checarVencedor("x")
		n = 1
		end
	else
		if event.phase == "began" and tabuleiro:validarJogada(1, 1) then
		bola = display.newCircle(50, 100, 40)
		bola:setFillColor(0,0,0)
		bola.strokeWidth = 5
		bola:setStrokeColor(0,0,1)

		tabuleiro[1][1] ="o"

		tabuleiro:checarVencedor("o")

		n = 0
		end
	end
end

function desenharBut2( event )
	if n == 0 and tabuleiro:validarJogada(1,2) then
		if event.phase == "began" then

			x = display.newLine(115,60, 195, 140)
			y = display.newLine(195,60, 115, 140)

			x.strokeWidth = 5
			y.strokeWidth = 5

			x:setStrokeColor(1,0,0)
			y:setStrokeColor(1,0,0)

			tabuleiro[1][2] = "x"

			tabuleiro:checarVencedor("x")

			n = 1
		end
	else
		if event.phase == "began" and tabuleiro:validarJogada(1, 2) then
			bola = display.newCircle(155, 100, 40)
			bola:setFillColor(0,0,0)
			bola.strokeWidth = 5
			bola:setStrokeColor(0,0,1)

			tabuleiro[1][2] ="o"

			tabuleiro:checarVencedor("o")

			n = 0
		end
	end
end

function desenharBut3( event )
	if n == 0 and tabuleiro:validarJogada(1,3) then
		if event.phase == "began" then
			x = display.newLine(215,60, 295, 140)
			y = display.newLine(295,60, 215, 140)

			x.strokeWidth = 5
			y.strokeWidth = 5

			x:setStrokeColor(1,0,0)
			y:setStrokeColor(1,0,0)

			tabuleiro[1][3] = "x"

			tabuleiro:checarVencedor("x")

			n = 1

		end
	else
		if event.phase == "began" and tabuleiro:validarJogada(1, 3) then
			bola = display.newCircle(260, 100, 40)
			bola:setFillColor(0,0,0)
			bola.strokeWidth = 5
			bola:setStrokeColor(0,0,1)

			tabuleiro[1][3] ="o"

			tabuleiro:checarVencedor("o")

			n = 0
		end
	end
end

function desenharBut4( event )
	if n == 0 and tabuleiro:validarJogada(2, 1) then
		if event.phase == "began" then

			x = display.newLine(10,160, 90, 240)
			y = display.newLine(90,160, 10, 240)

			x.strokeWidth = 5
			y.strokeWidth = 5

			x:setStrokeColor(1,0,0)
			y:setStrokeColor(1,0,0)

			tabuleiro[2][1] = "x"

			tabuleiro:checarVencedor("x")

			n = 1
		end
	else
		if event.phase == "began" and tabuleiro:validarJogada(2, 1) then
			bola = display.newCircle(50, 200, 40)
			bola:setFillColor(0,0,0)
			bola.strokeWidth = 5
			bola:setStrokeColor(0,0,1)

			tabuleiro[2][1] ="o"

			tabuleiro:checarVencedor("o")

			n = 0
		end
	end
end

function desenharBut5( event )
	if n == 0 and tabuleiro:validarJogada(2,2) then
		if event.phase == "began" then

			x = display.newLine(115,160, 195, 240)
			y = display.newLine(195,160, 115, 240)

			x.strokeWidth = 5
			y.strokeWidth = 5

			x:setStrokeColor(1,0,0)
			y:setStrokeColor(1,0,0)

			tabuleiro[2][2] = "x"

			tabuleiro:checarVencedor("x")

			n = 1
		end
	else
		if event.phase == "began" and tabuleiro:validarJogada(2, 2) then
			bola = display.newCircle(155, 200, 40)
			bola:setFillColor(0,0,0)
			bola.strokeWidth = 5
			bola:setStrokeColor(0,0,1)

			tabuleiro[2][2] ="o"

			tabuleiro:checarVencedor("o")

			n = 0
		end
	end
end

function desenharBut6( event )
	if n == 0 and tabuleiro:validarJogada(2,3) then
		if event.phase == "began" then

			x = display.newLine(215,160, 295, 240)
			y = display.newLine(295,160, 215, 240)

			x.strokeWidth = 5
			y.strokeWidth = 5

			x:setStrokeColor(1,0,0)
			y:setStrokeColor(1,0,0)

			tabuleiro[2][3] = "x"

			tabuleiro:checarVencedor("x")
		
			n = 1
		end
	else
		if event.phase == "began" and tabuleiro:validarJogada(2, 3) then
			bola = display.newCircle(260, 200, 40)
			bola:setFillColor(0,0,0)
			bola.strokeWidth = 5
			bola:setStrokeColor(0,0,1)

			tabuleiro[2][3] ="o"

			tabuleiro:checarVencedor("o")

			n = 0
		end
	end	
end

function desenharBut7( event )
	if n == 0 and tabuleiro:validarJogada(3,1) then
		if event.phase == "began" then

			x = display.newLine(10,260, 90, 340)
			y = display.newLine(90,260, 10, 340)

			x.strokeWidth = 5
			y.strokeWidth = 5

			x:setStrokeColor(1,0,0)
			y:setStrokeColor(1,0,0)

			tabuleiro[3][1] = "x"

			tabuleiro:checarVencedor("x")

			n = 1
		end
	else
		if event.phase == "began" and tabuleiro:validarJogada(3, 1) then
			bola = display.newCircle(50, 300, 40)
			bola:setFillColor(0,0,0)
			bola.strokeWidth = 5
			bola:setStrokeColor(0,0,1)

			tabuleiro[3][1] ="o"

			tabuleiro:checarVencedor("o")

			n = 0
		end
	end
end

function desenharBut8( event )
	if n == 0 and tabuleiro:validarJogada(3,2) then
		if event.phase == "began" then

			x = display.newLine(115,260, 195, 340)
			y = display.newLine(195,260, 115, 340)

			x.strokeWidth = 5
			y.strokeWidth = 5

			x:setStrokeColor(1,0,0)
			y:setStrokeColor(1,0,0)

			tabuleiro[3][2] = "x"

			tabuleiro:checarVencedor("x")

			n = 1
		end
	else
		if event.phase == "began" and tabuleiro:validarJogada(3, 2) then
			bola = display.newCircle(155, 300, 40)
			bola:setFillColor(0,0,0)
			bola.strokeWidth = 5
			bola:setStrokeColor(0,0,1)

			tabuleiro[3][2] ="o"

			tabuleiro:checarVencedor("o")

			n = 0
		end
	end	
end

function desenharBut9( event )
	if n == 0 and tabuleiro:validarJogada(3, 3) then
		if event.phase == "began" then

			x = display.newLine(215,260, 295, 340)
			y = display.newLine(295,260, 215, 340)

			x.strokeWidth = 5
			y.strokeWidth = 5

			x:setStrokeColor(1,0,0)
			y:setStrokeColor(1,0,0)

			tabuleiro[3][3] = "x"

			tabuleiro:checarVencedor("x")

			n = 1
		end
	else
		if event.phase == "began" and tabuleiro:validarJogada(3, 3) then
			bola = display.newCircle(260, 300, 40)
			bola:setFillColor(0,0,0)
			bola.strokeWidth = 5
			bola:setStrokeColor(0,0,1)

			tabuleiro[3][3] ="o"

			tabuleiro:checarVencedor("o")

			n = 0
		end
	end	
end


---- Verfica Jogada valida

function tabuleiro:validarJogada(a , b)
	valida = true
		if tabuleiro[a][b] ~= " " then
		valida = false
		end
	return valida
end

--- Verifica se o indice do tabuleiro não é vazio

function tabuleiro:checarIndice()
	for i=1,3 do
		for j=1,3 do
			if tabuleiro[i][j] == " " then
				return false
			end
		end
	end

	return true
end

--- verifica se empatou

function tabuleiro:checarEmpate()
	if nJogadas == 10 and tabuleiro:checarIndice() then
		local options = {
		text = "Fim de jogo, Empatou!",
		x = 155,
		y = 380}


		display.newText(options)

		tabuleiro:novojogo()
	end
end

---Verifica o vencedor
function tabuleiro:checarVencedor(var)

	local options = {
	text = var .." é o vencedor!",
	x = 155,
	y = 360
	}



	if tabuleiro[1][1] == var and  tabuleiro[1][2] == var and tabuleiro[1][3] == var then
	--	tabuleiro:novojogo()
	texto = display.newText(options)

	elseif tabuleiro[2][1] == var and  tabuleiro[2][2] == var and tabuleiro[2][3] == var then
	--	tabuleiro:novojogo()
	texto = display.newText(options)

	elseif tabuleiro[3][1] == var and  tabuleiro[3][2] == var and tabuleiro[3][3] == var then
	--	tabuleiro:novojogo()
	texto = display.newText(options)

	---checa colunas
	elseif tabuleiro[1][1] == var and  tabuleiro[2][1] == var and tabuleiro[3][1] == var then

	--	tabuleiro:novojogo()
	texto = display.newText(options)

	elseif tabuleiro[1][2] == var and  tabuleiro[2][2] == var and tabuleiro[3][2] == var then
	--	tabuleiro:novojogo()
	texto = display.newText(options)

	elseif tabuleiro[1][3] == var and  tabuleiro[2][3] == var and tabuleiro[3][3] == var then
	--	tabuleiro:novojogo()
	texto = display.newText(options)

	---checa diagonais
	elseif tabuleiro[1][1] == var and  tabuleiro[2][2] == var and tabuleiro[3][3] == var then
	--	tabuleiro:novojogo()
	texto = display.newText(options)
	
	elseif tabuleiro[1][3] == var and  tabuleiro[2][2] == var and tabuleiro[3][1] == var then
	--	tabuleiro:novojogo()		
	texto = display.newText(options)
	end

	tabuleiro:checarEmpate()
end

function tabuleiro:novojogo()
	tabuleiro:removerBut()
	tabuleiro:iniciar()
	tabuleiro:desenharVelha()
	nJogadas = 1
end

function tabuleiro:removerBut()
	but1:removeSelf()
	but1 = nil

	but2:removeSelf()
	but2 = nil

	but3:removeSelf()
	but3 = nil

	but4:removeSelf()
	but4 = nil

	but5:removeSelf()
	but5 = nil

	but6:removeSelf()
	but6 = nil

	but7:removeSelf()
	but7 = nil

	but8:removeSelf()
	but8 = nil

	but9:removeSelf()
	but9 = nil
end

nJogadas = 1
primav = true

function tabuleiro:iniciarJogada()
primav = false
	while nJogadas <= 9 do
		
			but1:addEventListener("touch", desenharBut1)
			but2:addEventListener("touch", desenharBut2)
			but3:addEventListener("touch", desenharBut3)
			but4:addEventListener("touch", desenharBut4)
			but5:addEventListener("touch", desenharBut5)
			but6:addEventListener("touch", desenharBut6)
			but7:addEventListener("touch", desenharBut7)
			but8:addEventListener("touch", desenharBut8)
			but9:addEventListener("touch", desenharBut9)

			nJogadas = nJogadas + 1
	end
end

if primav then

tabuleiro:desenharVelha()
tabuleiro:iniciarJogada()

end

options = {
text = "Jogo da velha:",
x = 155,
y = 30
}

texto = display.newText(options)