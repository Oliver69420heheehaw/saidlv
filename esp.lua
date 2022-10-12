for _, plr in pairs(game.Players:GetPlayers()) do
	local highlight_settings = {
		color = Color3.fromRGB(214, 0, 0); --Color3.fromRGB
		border_color = Color3.fromRGB(107, 0 ,0); --Color3.fromRGB
		text_color = Color3.fromRGB(255, 255, 255); --Color3.fromRGB
		fill_transparency = 0.2;
		outline_transparency = 0.6;
		alwaysOnTop = true
		}

	local Highlight = Instance.new("Highlight",plr.Character) --Add highlight to character of player v
	
	local BillBoardGUI = Instance.new("BillboardGui",plr.Character:WaitForChild("Head"))
	local Name = Instance.new("TextLabel",BillBoardGUI)
	
	BillBoardGUI.AlwaysOnTop = highlight_settings.alwaysOnTop
	BillBoardGUI.ResetOnSpawn = false
	BillBoardGUI.Size = UDim2.new(0, 100,0, 34) --0,100 ,0,34
	BillBoardGUI.ExtentsOffset = Vector3.new(0, 1.5, 0)
	Name.TextScaled = true
	Name.Size = UDim2.new(0, 100, 0, 34)
	Name.TextColor3 = highlight_settings.text_color
	Name.BackgroundTransparency = 1
	Name.Font = Enum.Font.FredokaOne
	
	Name.Text = "< "..plr.Name.." >"

Highlight.Enabled = true
Highlight.FillColor = highlight_settings.color
Highlight.OutlineColor = highlight_settings.border_color
Highlight.FillTransparency = highlight_settings.fill_transparency
Highlight.OutlineTransparency = highlight_settings.outline_transparency
end
