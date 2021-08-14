extends Spatial


## Entry Room

onready var entryLaser1 = $entryRoom/laser/Laser1
onready var entryLaser2 = $entryRoom/laser/Laser2
onready var entryLaser3 = $entryRoom/laser/Laser3
onready var entryLaser4 = $entryRoom/laser/Laser4
onready var entryDoor1 = $entryRoom/GlassDoor
onready var entryDoor2 = $entryRoom/GlassDoor2

func _on_entrySwitchDoors_button_disabled():
	entryDoor2.open()
	entryDoor1.close()

func _on_entrySwitchDoors_button_enabled():
	entryDoor1.open()
	entryDoor2.close()

func _on_disableLaserButton_button_disabled():
	entryLaser1.enable()
	entryLaser2.enable()
	entryLaser3.enable()
	entryLaser4.enable()

func _on_disableLaserButton_button_enabled():
	entryLaser1.disable()
	entryLaser2.disable()
	entryLaser3.disable()
	entryLaser4.disable()

## Main Room

onready var mainRoomGlasDoor = $mainRoom/GlassDoor
onready var exitDoor = $mainRoom/Door

var doorButtonsPressed = 0

func updateDoorState():
	if doorButtonsPressed == 2:
		exitDoor.open()
	else:
		exitDoor.close()

func _on_mainRoomGlasDoorButton_button_disabled():
	mainRoomGlasDoor.close()

func _on_mainRoomGlasDoorButton_button_enabled():
	mainRoomGlasDoor.open()

func _on_exitDoorButton1_button_disabled():
	doorButtonsPressed -= 1
	updateDoorState()

func _on_exitDoorButton1_button_enabled():
	doorButtonsPressed += 1
	updateDoorState()

func _on_exitDoorButton2_button_disabled():
	doorButtonsPressed -= 1
	updateDoorState()

func _on_exitDoorButton2_button_enabled():
	doorButtonsPressed += 1
	updateDoorState()
