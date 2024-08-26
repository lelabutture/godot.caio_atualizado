extends CanvasLayer

signal start_game
@onready var messagelabel = $Control/messagelabel

@onready var messagetimer = $messagetimer




func show_message(text):
	messagelabel.text = text()
func show_game_over():
	pass
