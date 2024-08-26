extends Node2D

@export var bug_scene : PackedScene
var score
@onready var bugtimer = $bugtimer
@onready var scoretimer = $scoretimer
@onready var startimer = $startimer
@onready var bug_path = $bugPath
@onready var startposition = $startposition



func game_over():
	$bugtimer.stop()
	$scoretimer.stop()
	
func new_game():
	$startimer.start()
	$player.start_pos($startposition.position)
	score = 0
func _on_bugtimer_timeout():
	pass # Replace with function body.
	var bug = bug_scene.instantiate()
	var bug_location = $"bugPath/bugpathlocation"
	bug_location.progress_ratio = randf()
	
	var direction = bug_location.rotation + PI/2
	bug.position = bug_location.position
	direction += randf_range(-PI/4,PI/4)
	bug.rotation = direction
	
	var velocity =Vector2(randf_range(150.0,250.0),0.0)
	bug.linear_velocity = velocity.rotated(direction)
	add_child(bug)
	
func _on_scoretimer_timeout():
	score += 1


func _on_startimer_timeout():
	$bugtimer.star()
	$scoretimer.sart()
	
