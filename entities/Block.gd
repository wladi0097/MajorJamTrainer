extends HackableEntity
class_name Block

var initialPosition = Transform()
onready var dieParticles = $DieParticles
onready var mainMesh = $MeshInstance
onready var blockLabel = $WireFrame/Viewport/Control/Panel/Label

func _ready():
	self.wireFrame = $WireFrame
	blockLabel.text = self.id
	self.initialPosition = self.global_transform
	
func resetPosition():
	self.mainMesh.visible = false
	self.dieParticles.emitting = true
	yield(get_tree().create_timer(0.2), "timeout")
	
	self.transform = self.initialPosition
	self.force_update_transform()
	self.mainMesh.visible = true
	
func _on_DeathTrigger_body_entered(body):
	self.resetPosition()
	
