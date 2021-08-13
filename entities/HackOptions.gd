extends VBoxContainer

onready var entityId = $HBoxContainer/entityIdInput
onready var unknownEntity = $unkownEntity
onready var editEntity = $editEntity
onready var entityIdText = $editEntity/editEntityText
onready var invertGravityCheckBox = $editEntity/invertGravity
onready var sizeContainer = $editEntity/SizeContainer
onready var sizeUpButton = $editEntity/SizeContainer/SizeUpButton
onready var sizeDownButton = $editEntity/SizeContainer/SizeDownButton

const maxSize = 2
const minSize = 0

var currentEntity: HackableEntity = null

func getIdFromInput() -> String:
	return self.entityId.text

func showEntityControll(entity: HackableEntity):
	self.currentEntity = entity
	unknownEntity.visible = false
	editEntity.visible = true
	
	entityIdText.text = "Manipulating " + self.getIdFromInput() + ":"
	invertGravityCheckBox.pressed = entity.isGravityInverted
	
func showWrongEntity():
	self.currentEntity = null
	unknownEntity.visible = true
	editEntity.visible = false

func _on_showWireFrame_toggled(button_pressed):
	if button_pressed:
		GLOBAL.showWireFrames()
	else:
		GLOBAL.hideWireFrames()

func _on_fetchEntityId_button_up():
	var entity = GLOBAL.getHackableEntityById(self.getIdFromInput())
	if entity == null:
		self.showWrongEntity()
	else:
		self.showEntityControll(entity)


func _on_invertGravity_toggled(button_pressed):
	if self.currentEntity == null:
		return
	
	if button_pressed:
		self.currentEntity.invertGravity()
	else:
		self.currentEntity.normalGravity()


func _on_entityIdInput_text_entered(new_text):
	self._on_fetchEntityId_button_up()


func enableSizeModifiers():
	sizeContainer.visible = true

func _on_SizeUpButton_button_down():
	if currentEntity.sizeCheckArea == null:
		return
	var overlappingBodies = currentEntity.sizeCheckArea.get_overlapping_bodies()
	print(overlappingBodies)
	if !overlappingBodies.empty():
		return
	if currentEntity.currentSize >= maxSize:
		return
	currentEntity.scale *= 2
	currentEntity.currentSize += 1
	currentEntity.add_force(Vector3(0,0,0.1), Vector3(0,0,1))
	if currentEntity.currentSize == maxSize:
		sizeUpButton.disabled = true
	sizeDownButton.disabled = false


func _on_SizeDownButton_button_down():
	if currentEntity.sizeCheckArea == null:
		return
	if currentEntity.currentSize <= minSize:
		return
	currentEntity.scale /= 2
	currentEntity.currentSize -= 1
	currentEntity.add_force(Vector3(0,0,0.1), Vector3(0,0,1))
	if currentEntity.currentSize == minSize:
		sizeDownButton.disabled = true
	sizeUpButton.disabled = false
