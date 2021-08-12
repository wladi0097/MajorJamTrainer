extends Spatial

onready var door = $Door
onready var laser1 = $Laser1
onready var laser2 = $Laser2
onready var laser3 = $Laser3
onready var laser4 = $Laser4

func _on_DoorButton_button_enabled():
	door.open()

func _on_DoorButton_button_disabled():
	door.close()

func _on_LaserButton_button_enabled():
	laser1.disable()
	laser2.disable()
	laser3.disable()
	laser4.disable()

func _on_LaserButton_button_disabled():
	laser1.enable()
	laser2.enable()
	laser3.enable()
	laser4.enable()
