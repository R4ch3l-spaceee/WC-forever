extends Node2D

# Assign the Area2D node this player should interact with
@export var trigger_area: Area2D

# Assign the scene to load when triggered
@export var next_scene: String = "res://fatman.tscn"

@export var next_scene_path: String = "res://fatman.tscn"

func _on_body_entered(body):
	if body.name == "CharacterBody2D":
		get_tree().change_scene_to_file(next_scene)
