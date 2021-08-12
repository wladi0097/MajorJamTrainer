extends Spatial


var isPressed := false
onready var buttonPressCollision : Area = $buttonPressCollision
onready var buttonSurface : MeshInstance = $button/Cube001
onready var buttonLight : OmniLight = $light

onready var materialButtonDisabled : Material = preload('res://models/button_red.material')
onready var materialButtonEnabled : Material = preload('res://models/button_red_active.material')

func _ready():
	pass 

func _on_buttonPressCollision_body_entered(body):
	if buttonPressCollision.get_overlapping_bodies().size() == 1:
		buttonLight.visible = true
		self.isPressed = true
		var newTransform = Transform()
		newTransform = newTransform.translated(Vector3(0, 0.1, 0))

		self.buttonSurface.transform = newTransform
		self.buttonSurface.mesh.surface_set_material(0, materialButtonEnabled)
	
func _on_buttonPressCollision_body_exited(body):
	if buttonPressCollision.get_overlapping_bodies().size() == 0:
		buttonLight.visible = false
		self.isPressed = false
		self.buttonSurface.transform = self.buttonSurface.transform.translated(Vector3(0, 0.1, 0))
		self.buttonSurface.mesh.surface_set_material(0, materialButtonDisabled)

