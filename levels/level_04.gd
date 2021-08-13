extends Spatial

onready var door = $Door
onready var laser1 = $laser/Laser1
onready var laser2 = $laser/Laser2
onready var laser3 = $laser/Laser3
onready var laser4 = $laser/Laser4

var doorButtonsPressed = 0


func updateDoorState():
	if doorButtonsPressed == 2:
		door.open()
	else:
		door.close()

func _on_laserButton_button_disabled():
	laser1.enable()
	laser2.enable()
	laser3.enable()
	laser4.enable()

func _on_laserButton_button_enabled():
	laser1.disable()
	laser2.disable()
	laser3.disable()
	laser4.disable()


func _on_DoorButton1_button_enabled():
	doorButtonsPressed = doorButtonsPressed + 1
	updateDoorState()


func _on_DoorButton1_button_disabled():
	doorButtonsPressed = doorButtonsPressed - 1
	updateDoorState()


func _on_DoorButton2_button_disabled():
	doorButtonsPressed = doorButtonsPressed - 1
	updateDoorState()


func _on_DoorButton2_button_enabled():
	doorButtonsPressed = doorButtonsPressed + 1
	updateDoorState()
