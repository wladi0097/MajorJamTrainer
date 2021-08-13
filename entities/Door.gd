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
var overrideStatus = false
var isOverrideSet = false

func open():
	isOpen = true

func close():
	isOpen = false

func forceStayOpen():
	overrideStatus = true
	isOverrideSet = true

func forceStayClose():
	overrideStatus = false
	isOverrideSet = true

func _process(delta):
	if ( !isOverrideSet && isOpen ) || ( isOverrideSet && overrideStatus ):
		leftDoorIn.transform = leftDoorIn.transform.interpolate_with(openTransformLeftDoorIn, delta)
		rightDoorIn.transform = rightDoorIn.transform.interpolate_with(openTransformRightDoorIn, delta)
		leftDoorOut.transform = leftDoorOut.transform.interpolate_with(openTransformLeftDoorOut, delta)
		rightDoorOut.transform = rightDoorOut.transform.interpolate_with(openTransformRightDoorOut, delta)
	elif ( !isOverrideSet && !isOpen ) || ( isOverrideSet && !overrideStatus ):
		leftDoorIn.transform = leftDoorIn.transform.interpolate_with(closedTransformLeftDoorIn, delta)
		rightDoorIn.transform = rightDoorIn.transform.interpolate_with(closedTransformRightDoorIn, delta)
		leftDoorOut.transform = leftDoorOut.transform.interpolate_with(closedTransformLeftDoorOut, delta)
		rightDoorOut.transform = rightDoorOut.transform.interpolate_with(closedTransformRightDoorOut, delta)


func _on_LevelCompleteArea_body_entered(body):
	forceStayOpen()


func _on_LevelLeaveArea_body_entered(body):
	forceStayClose()
