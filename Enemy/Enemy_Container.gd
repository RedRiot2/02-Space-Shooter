extends Node2D

onready var Enemy = load("res://Enemy/Enemy.tscn")

func _physics_process(delta):
	if get_child_count() == 0:
		var enemy = Enemy.instance()
		enemy.position = Vector2(randf()*Global.VP.x, randf()*Global.VP.y)
		add_child(enemy)
