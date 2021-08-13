extends TabContainer

onready var entityId = $Settings/VBoxContainer/HBoxContainer/entityIdInput
onready var unknownEntity = $Settings/VBoxContainer/unkownEntity
onready var editEntity = $Settings/VBoxContainer/editEntity
onready var entityIdText = $Settings/VBoxContainer/editEntity/editEntityText
onready var invertGravityCheckBox = $Settings/VBoxContainer/editEntity/invertGravity
onready var sizeContainer = $Settings/VBoxContainer/editEntity/SizeContainer
onready var sizeUpButton = $Settings/VBoxContainer/editEntity/SizeContainer/SizeUpButton
onready var sizeDownButton = $Settings/VBoxContainer/editEntity/SizeContainer/SizeDownButton
onready var logContainer = $Logs/log

var currentEntity: HackableEntity = null

func _ready():
	wiriteToLog("Inject DLL")
	wiriteToLog("Starting Dogecoin miner v2.86 (not really)")
	unknownEntity.visible = false
	editEntity.visible = false

func getIdFromInput() -> String:
	return self.entityId.text
	
func currentEntityId():
	if self.currentEntity:
		return self.currentEntity.id
	return null

func showEntityControll(entity: HackableEntity):
	self.currentEntity = entity
	unknownEntity.visible = false
	editEntity.visible = true
	setUiElementStateToSelectedEntity()
	
func setUiElementStateToSelectedEntity():
	entityIdText.text = "-- Manipulating '" + self.getIdFromInput() + "' --"
	invertGravityCheckBox.pressed = self.currentEntity.isGravityInverted
	
	if self.currentEntity.isMaxSize():
		sizeUpButton.disabled = true
		sizeDownButton.disabled = false
	elif self.currentEntity.isMinSize():
		sizeDownButton.disabled = true
		sizeUpButton.disabled = false
	else:
		sizeDownButton.disabled = false
		sizeUpButton.disabled = false
	
func showWrongEntity():
	self.currentEntity = null
	unknownEntity.visible = true
	editEntity.visible = false

func _on_showWireFrame_toggled(button_pressed):
	if button_pressed:
		wiriteToLog("Showing wireframes")
		GLOBAL.showWireFrames()
	else:
		wiriteToLog("Hiding wireframes")
		GLOBAL.hideWireFrames()

func _on_fetchEntityId_button_up():
	var id = self.getIdFromInput()
	var entity = GLOBAL.getHackableEntityById(self.getIdFromInput())
	if entity == null:
		wiriteToLog("Entity '" + id + "' not found")
		self.showWrongEntity()
	else:
		wiriteToLog("Entity '" + id + "' SELECTED")
		self.showEntityControll(entity)

func _on_invertGravity_toggled(button_pressed):
	if self.currentEntity == null:
		return
	
	if button_pressed:
		wiriteToLog("Gravity inverted for '" + self.currentEntityId() +"'")
		self.currentEntity.invertGravity()
	else:
		wiriteToLog("Gravity reset for '" + self.currentEntityId() +"'")
		self.currentEntity.normalGravity()

func _on_entityIdInput_text_entered(new_text):
	self._on_fetchEntityId_button_up()

func enableSizeModifiers():
	sizeContainer.visible = true

func _on_SizeUpButton_button_down():
	wiriteToLog("Trying to size up '" + self.currentEntityId() +"'")
	currentEntity.sizeUp()

	if currentEntity.isMaxSize():
		sizeUpButton.disabled = true
	sizeDownButton.disabled = false

func _on_SizeDownButton_button_down():
	wiriteToLog("Trying to size down '" + self.currentEntityId() +"'")
	currentEntity.sizeDown()
	
	if currentEntity.isMinSize():
		sizeDownButton.disabled = true
	sizeUpButton.disabled = false
	
func wiriteToLog(text: String):
	var time = OS.get_time();
	var ouput = String(time.hour) +":"+String(time.minute)+":"+String(time.second)+" - "+text+"\n"
	logContainer.text = ouput + logContainer.text

func _on_resetPosition_button_up():
	currentEntity.resetPosition()
