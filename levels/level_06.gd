extends Spatial

onready var laser3  = $laser/Laser3
onready var laser6  = $laser/Laser6
onready var laser7  = $laser/Laser7
onready var laser37  = $laser3/Laser7
onready var laser38  = $laser3/Laser8
onready var laser39  = $laser3/Laser9
onready var laser310  = $laser3/Laser10
onready var laser311  = $laser3/Laser11
onready var laser312  = $laser3/Laser12
onready var door  = $Door
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_laserButton_button_enabled():
	laser3.disable()
	laser6.disable()
	laser7.disable()


func _on_laserButton_button_disabled():
	laser3.enable()
	laser6.enable()
	laser7.enable()


func _on_doorButton_button_enabled():
	door.open()


func _on_doorButton_button_disabled():
	door.close()


func _on_laserDoorButton_button_enabled():
	laser37.disable()
	laser38.disable()
	laser39.disable()
	laser310.disable()
	laser311.disable()
	laser312.disable()


func _on_laserDoorButton_button_disabled():
	laser37.enable()
	laser38.enable()
	laser39.enable()
	laser310.enable()
	laser311.enable()
	laser312.enable()
