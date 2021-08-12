extends Spatial


onready var laser = $Laser

func _on_Button_button_enabled():
	laser.enable()

func _on_Button_button_disabled():
	laser.disable()
