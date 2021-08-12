extends RigidBody
class_name Block

export (String) var blockId

var initialPosition = Transform()
onready var dieParticles = $DieParticles
onready var mainMesh = $MeshInstance
onready var blockLabel = $WireFrame/Viewport/Control/Panel/Label
onready var wireFrame = $WireFrame

func _ready():
	GLOBAL.blocks.append(self)
	blockLabel.text = self.blockId
	self.initialPosition = self.global_transform
	
func showWireFrame():
	self.wireFrame.visible = true
	
func hideWireFrame():
	self.wireFrame.visible = false
	
func resetPosition():
	self.mainMesh.visible = false
	self.dieParticles.emitting = true
	yield(get_tree().create_timer(0.2), "timeout")
	
	self.transform = self.initialPosition
	self.force_update_transform()
	self.mainMesh.visible = true
	
func _on_DeathTrigger_body_entered(body):
	self.resetPosition()
