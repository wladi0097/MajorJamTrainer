extends HBoxContainer


onready var rightBlackBar = $RightBar
onready var hackUi : CanvasLayer = $LeftBar/HackUi
onready var credits : CanvasLayer = $LeftBar/Credits
onready var hackUiImage : TextureRect = $LeftBar/HackUi/TextureRect
onready var hackUiButton : Button = $LeftBar/MaximizeButton

var isHackUiOpen = false

func _input(event):	
	if event.is_action_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		return

	if event.is_action_pressed("click"):
		credits.offset = Vector2(-500, 0)
		
		var hackUiButtonRect = hackUiButton.get_rect()
		var hackUiImageRect = hackUiImage.get_rect()
		if hackUiButtonRect.has_point(event.position) || hackUiImageRect.has_point(event.position):
			return
			
		if Input.get_mouse_mode() == Input.MOUSE_MODE_VISIBLE:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func openHackMenu():
	rightBlackBar.set_h_size_flags( SIZE_FILL )
	rightBlackBar.set_v_size_flags( SIZE_FILL )
	hackUi.offset = Vector2(0, 0)
	isHackUiOpen = true
	
func closeHackMenu():
	rightBlackBar.set_h_size_flags( SIZE_FILL | SIZE_EXPAND )
	rightBlackBar.set_v_size_flags( SIZE_FILL | SIZE_EXPAND )
	hackUi.offset = Vector2(-500, 0)
	isHackUiOpen = false

func _on_MaximizeButton_button_down():
	if isHackUiOpen:
		closeHackMenu()
	else:
		openHackMenu()

func _on_MinizeButton_button_down():
	closeHackMenu()


func _on_CreditsButton_button_up():
	credits.offset = Vector2(0, 0)
