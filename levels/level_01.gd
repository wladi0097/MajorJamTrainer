extends Spatial

onready var laser = $Laser
onready var block = $Block

var wasBigBoi = false
var isNormalSize = true

#func _input(event):	
#	if event.is_action_pressed("click"):
#		if isNormalSize:
#			if wasBigBoi:
#				block.scale = Vector3(0.5,0.5,0.5)
#				isNormalSize = false
#				wasBigBoi = false
#			else:
#				block.scale = Vector3(2,2,2)
#				isNormalSize = false
#				wasBigBoi = true
#		else:
#			block.scale = Vector3(1,1,1)
#			isNormalSize = true
#		block.add_force(Vector3(0,0,0.1), Vector3(0,0,1))

func _on_Button_button_enabled():
	laser.enable()

func _on_Button_button_disabled():
	laser.disable()
