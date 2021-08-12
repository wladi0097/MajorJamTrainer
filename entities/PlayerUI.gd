extends HBoxContainer


onready var rightBlackBar = $RightBar
onready var hackUi : CanvasLayer = $LeftBar/CanvasLayer
onready var hackUiImage : TextureRect = $LeftBar/CanvasLayer/TextureRect
onready var hackUiButton : Button = $LeftBar/MaximizeButton

var isHackUiOpen = false
var hasHackUiOpened = false

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if isHackUiOpen && !hasHackUiOpened:
		rightBlackBar.set_h_size_flags( SIZE_FILL )
		rightBlackBar.set_v_size_flags( SIZE_FILL )
		hackUi.offset = Vector2(0, 0)
		hasHackUiOpened = true
	
	if !isHackUiOpen && hasHackUiOpened:
		rightBlackBar.set_h_size_flags( SIZE_FILL | SIZE_EXPAND )
		rightBlackBar.set_v_size_flags( SIZE_FILL | SIZE_EXPAND )
		hackUi.offset = Vector2(-500, 0)
		hasHackUiOpened = false

func _input(event):	
	if event.is_action_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		return

	if event.is_action_pressed("click"):
		var hackUiButtonRect = hackUiButton.get_rect()
		var hackUiImageRect = hackUiImage.get_rect()
		if hackUiButtonRect.has_point(event.position) || hackUiImageRect.has_point(event.position):
			return
			
		if Input.get_mouse_mode() == Input.MOUSE_MODE_VISIBLE:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _on_MaximizeButton_button_down():
	if isHackUiOpen:
		isHackUiOpen = false
	else:
		isHackUiOpen = true

func _on_MinizeButton_button_down():
	isHackUiOpen = false
