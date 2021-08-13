extends StaticBody

onready var mesh = $laser
onready var light = $OmniLight
onready var collision = $CollisionShape
onready var audio = $AudioStreamPlayer3D

func enable():
	self.audio.stream_paused = false
	self.collision.disabled = false
	self.mesh.visible = true
	self.light.visible = true
	
func disable():
	self.audio.stream_paused = true
	self.collision.disabled = true
	self.mesh.visible = false
	self.light.visible = false
