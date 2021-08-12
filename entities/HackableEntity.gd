extends RigidBody
class_name HackableEntity

export (String) var id
export (bool) var isGravityInverted = false
var wireFrame = null

func _ready():
	GLOBAL.hackableEntities.append(self)
	if self.isGravityInverted:
		self.invertGravity()

func invertGravity():
	self.gravity_scale = -1
	self.apply_impulse(Vector3(), Vector3(0,0,0.001))
	
func normalGravity():
	self.gravity_scale = 1
	self.apply_impulse(Vector3(), Vector3(0,0,0.001))

func showWireFrame():
	if self.wireFrame != null:
		self.wireFrame.visible = true
	
func hideWireFrame():
	if self.wireFrame != null:
		self.wireFrame.visible = false
