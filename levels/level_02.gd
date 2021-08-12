extends Spatial

onready var door = $Door

func _on_Button_button_enabled():
	door.open()

func _on_Button_button_disabled():
	door.close()
