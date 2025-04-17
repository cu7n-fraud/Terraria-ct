local itemTable = {
    {name = "Copper Shortsword", id = 3500},
    {name = "Iron Pickaxe", id = 1},
    {name = "Magic Mirror", id = 50},
    {name = "Terra Blade", id = 757},
    {name = "Meowmere", id = 757}
}

local form = createForm()
form.Caption = "Terraria Item Spawner"
form.Width = 300
form.Height = 200

local itemComboBox = createComboBox(form)
itemComboBox.Left = 10
itemComboBox.Top = 10
itemComboBox.Width = 200
for i, item in ipairs(itemTable) do
    itemComboBox.Items.add(item.name)
end

local spawnButton = createButton(form)
spawnButton.Caption = "Spawn Item"
spawnButton.Left = 10
spawnButton.Top = 40

spawnButton.OnClick = function()
    local selectedItem = itemComboBox.Text
    for _, item in ipairs(itemTable) do
        if item.name == selectedItem then
            local inventoryBase = readInteger("Terraria.exe+ADDRESS_HERE") 
            writeInteger(inventoryBase + 0x04, item.id) 
            break
        end
    end
end

form.show()
