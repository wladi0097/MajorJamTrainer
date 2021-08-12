extends Spatial

onready var leftDoorIn = $door/LeftDoorIn
onready var leftDoorOut = $door/LeftDoorOut
onready var rightDoorIn = $door/RightDoorIn
onready var rightDoorOut = $door/RightDoorOut

onready var closedTransformLeftDoorIn = leftDoorIn.transform
onready var closedTransformRightDoorIn = rightDoorIn.transform
onready var closedTransformLeftDoorOut = leftDoorOut.transform
onready var closedTransformRightDoorOut = rightDoorOut.transform

onready var openTransformLeftDoorIn = leftDoorIn.transform.translated(Vector3(2,0,0))
onready var openTransformRightDoorIn = rightDoorIn.transform.translated(Vector3(-2,0,0))
onready var openTransformLeftDoorOut = leftDoorOut.transform.translated(Vector3(2,0,0))
onready var openTransformRightDoorOut = rightDoorOut.transform.translated(Vector3(-2,0,0))

var isOpen = false

func _input(event):
	if event.is_action_pressed("move_jump"):
		if isOpen:
			close()
		else:
			open()

func open():
	isOpen = true
	pass

func close():
	isOpen = false
	pass

func _process(delta):
	if isOpen:
		leftDoorIn.transform = leftDoorIn.transform.interpolate_with(openTransformLeftDoorIn, delta)
		rightDoorIn.transform = rightDoorIn.transform.interpolate_with(openTransformRightDoorIn, delta)
		leftDoorOut.transform = leftDoorOut.transform.interpolate_with(openTransformLeftDoorOut, delta)
		rightDoorOut.transform = rightDoorOut.transform.interpolate_with(openTransformRightDoorOut, delta)
	else:
		leftDoorIn.transform = leftDoorIn.transform.interpolate_with(closedTransformLeftDoorIn, delta)
		rightDoorIn.transform = rightDoorIn.transform.interpolate_with(closedTransformRightDoorIn, delta)
		leftDoorOut.transform = leftDoorOut.transform.interpolate_with(closedTransformLeftDoorOut, delta)
		rightDoorOut.transform = rightDoorOut.transform.interpolate_with(closedTransformRightDoorOut, delta)
	pass
