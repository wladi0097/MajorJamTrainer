extends Spatial

onready var moveableDoor = $MoveableDoor
export (bool) var isOpen = false

func _ready():
	if self.isOpen:
		open()

func open():
	moveableDoor.transform.origin.y = .25

func close():
	moveableDoor.transform.origin.y = -0.25
