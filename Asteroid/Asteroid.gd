extends KinematicBody2D

var velocity = Vector2(0, -100.0)
var health = 1
var score = 10

func _ready():
	velocity.rotated(randf()*2*PI)
	velocity *= (randf()/2 + 1/2)

func _physics_process(delta):
	position += velocity * delta
	position.x = wrapf(position.x, 0, Global.VP.x)
	position.y = wrapf(position.y, 0, Global.VP.y)

func damage(d):
	health -= d
	if health <= 0 :
		Global.update_score(score)
		queue_free()
