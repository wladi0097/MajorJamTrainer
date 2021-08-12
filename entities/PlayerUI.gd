extends HBoxContainer


onready var rightBlackBar = $ColorRect2
onready var hackUi : CanvasLayer = $ColorRect/CanvasLayer

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
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _input(event):
	if event.is_action_pressed("move_jump"):
		if isHackUiOpen:
			isHackUiOpen = false
		else:
			isHackUiOpen = true
	pass


func _on_Button_button_down():
	print( "Test")
	pass # Replace with function body.
