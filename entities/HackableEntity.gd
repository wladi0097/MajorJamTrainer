extends RigidBody
class_name HackableEntity

# have to implemeted in child ->
var wireFrame = null
var sizeCheckArea : Area = null
# -

export (String) var id
export (bool) var isGravityInverted = false
export (int) var currentSize = 1

const maxSize = 2
const minSize = 0

func _ready():
	GLOBAL.hackableEntities.append(self)

func forcePositionUpdate():
	self.apply_impulse(Vector3(), Vector3(0,0,0.001))

func invertGravity():
	self.isGravityInverted = true
	
	self.gravity_scale = -.5
	self.forcePositionUpdate()
	
func normalGravity():
	self.isGravityInverted = false
	
	self.gravity_scale = .5
	self.forcePositionUpdate()

func showWireFrame():
	if self.wireFrame != null:
		self.wireFrame.visible = true
	
func hideWireFrame():
	if self.wireFrame != null:
		self.wireFrame.visible = false

func isMaxSize():
	return self.currentSize == self.maxSize

func isMinSize():
	return self.currentSize == self.minSize
	
func sizeUp():
	if self.sizeCheckArea == null || self.isMaxSize():
		return
	
	var overlappingBodies = self.sizeCheckArea.get_overlapping_bodies()
	if !overlappingBodies.empty():
		return

	self.scale *= 2
	self.currentSize += 1
	self.forcePositionUpdate()
	
func sizeDown():
	if self.sizeCheckArea == null || self.isMinSize():
		return
		
	self.scale /= 2
	self.currentSize -= 1
	self.forcePositionUpdate()
