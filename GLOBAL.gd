extends Node

var currentCamera: Camera
var player: Player
var blocks = []

func showWireFrames():
	for block in self.blocks:
		block.showWireFrame()

func hideWireFrames():
	for block in self.blocks:
		block.hideWireFrame()

func getBlockById(id: String) -> Block:
	for block in self.blocks:
		if block.blockId == id:
			return block
	return null
