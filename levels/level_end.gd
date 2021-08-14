extends Spatial


onready var gameOver = $CanvasLayer/GameOverScreen

func _on_player_ban_body_entered(body):
	gameOver.margin_left = 225
