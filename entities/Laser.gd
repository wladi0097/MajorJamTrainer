extends StaticBody

onready var mesh = $laser
onready var light = $OmniLight
onready var collision = $CollisionShape

func enable():
	self.collision.disabled = false
	self.mesh.visible = true
	self.light.visible = true
	
func disable():
	self.collision.disabled = true
	self.mesh.visible = false
	self.light.visible = false
