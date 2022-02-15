extends Node2D

onready var Player = load("res://Player/Player.tscn")

func _physics_process(delta):
	if get_child_count() == 0:
		var player = Player.instance()
		player.position = Vector2(Global.VP.x/2, Global.VP.y/2)
		add_child(player)
