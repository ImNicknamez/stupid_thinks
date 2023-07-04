local arrayList = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")

arrayList.Name = "arrayList"
arrayList.Parent = Rewclient
arrayList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
arrayList.BackgroundTransparency = 1.000
arrayList.Position = UDim2.new(0.904066741, 0, 0.0464240909, 0)
arrayList.Size = UDim2.new(0, 183, 0, 588)

UIListLayout.Parent = arrayList
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 0)

function ArrayAdd(text)
	local TextLabel = Instance.new("TextLabel")
	TextLabel.Parent = arrayList
	TextLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	TextLabel.BackgroundTransparency = 0.200
	TextLabel.BorderSizePixel = 0
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = text
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 20.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Right

	-- Set the size of the label based on the text bounds
	local textSize = TextLabel.TextBounds
	TextLabel.Size = UDim2.new(0, textSize.X, 0, 23)

	-- Update the layout order based on the width of the label
	TextLabel.LayoutOrder = -textSize.X
end

function ArrayRemove(text)
	local bars = arrayList:GetChildren()
	for _, bar in ipairs(bars) do
		if bar:IsA("TextLabel") and bar.Text == text then
			bar:Destroy()
			break
		end
	end
end
