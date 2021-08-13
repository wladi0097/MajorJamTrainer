extends Spatial


onready var door = $Door
onready var laser1 = $laser/Laser1
onready var laser2 = $laser/Laser2
onready var laser3 = $laser/Laser3
onready var laser4 = $laser/Laser4
onready var laser5 = $laser/Laser5
onready var laser6 = $laser/Laser6
onready var laser7 = $laser/Laser7


func _on_doorButton_button_disabled():
	door.close()

func _on_doorButton_button_enabled():
	door.open()

func _on_laserButton_button_disabled():
	laser1.enable()
	laser2.enable()
	laser3.enable()
	laser4.enable()
	laser5.enable()
	laser6.enable()
	laser7.enable()

func _on_laserButton_button_enabled():
	laser1.disable()
	laser2.disable()
	laser3.disable()
	laser4.disable()
	laser5.disable()
	laser6.disable()
	laser7.disable()
