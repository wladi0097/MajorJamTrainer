extends Spatial


var isPressed := false
onready var buttonPressCollision : Area = $buttonPressCollision
onready var buttonSurface : MeshInstance = $button/Cube001
onready var buttonLight : OmniLight = $light
onready var audio: AudioStreamPlayer3D = $AudioStreamPlayer3D

onready var materialButtonDisabled : Material = preload('res://models/button_red.material')
onready var materialButtonEnabled : Material = preload('res://models/button_red_active.material')

signal button_enabled
signal button_disabled

func _on_buttonPressCollision_body_entered(body):
	if self.buttonPressCollision.get_overlapping_bodies().size() == 1:
		audio.play()
		emit_signal("button_enabled")
		self.buttonLight.visible = true
		self.isPressed = true
		var newTransform = Transform()
		newTransform = newTransform.translated(Vector3(0, 0.05, 0))

		self.buttonSurface.transform = newTransform
		self.buttonSurface.mesh.surface_set_material(0, materialButtonEnabled)
	
func _on_buttonPressCollision_body_exited(body):
	if self.buttonPressCollision.get_overlapping_bodies().size() == 0:
		emit_signal("button_disabled")
		self.buttonLight.visible = false
		self.isPressed = false
		self.buttonSurface.transform = self.buttonSurface.transform.translated(Vector3(0, 0.15, 0))
		self.buttonSurface.mesh.surface_set_material(0, materialButtonDisabled)

