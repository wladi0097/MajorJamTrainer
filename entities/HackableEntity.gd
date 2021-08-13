extends RigidBody
class_name HackableEntity

export (String) var id
export (bool) var isGravityInverted = false
export (int) var currentSize = 1
var wireFrame = null
var sizeCheckArea : Area = null

func _ready():
	GLOBAL.hackableEntities.append(self)
	if self.isGravityInverted:
		self.invertGravity()

func invertGravity():
	self.gravity_scale = -1
	self.apply_impulse(Vector3(), Vector3(0,0,0.001))
	sizeCheckArea.coll
	
func normalGravity():
	self.gravity_scale = 1
	self.apply_impulse(Vector3(), Vector3(0,0,0.001))

func showWireFrame():
	if self.wireFrame != null:
		self.wireFrame.visible = true
	
func hideWireFrame():
	if self.wireFrame != null:
		self.wireFrame.visible = false

func sizeUp():
	var overlappingBodies = sizeCheckArea.get_overlapping_bodies()

