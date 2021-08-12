extends Node

var currentCamera: Camera
var player: Player
var hackableEntities = []

func showWireFrames():
	for entity in self.hackableEntities:
		entity.showWireFrame()

func hideWireFrames():
	for entity in self.hackableEntities:
		entity.hideWireFrame()

func getHackableEntityById(id: String) -> HackableEntity:
	for entity in self.hackableEntities:
		if entity.id == id:
			return entity
	return null
