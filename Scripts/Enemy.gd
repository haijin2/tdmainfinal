extends PathFollow2D

onready var Dead = $dead

var health = 5
var speed = 30
var basehp= 100

func _process(delta):
	offset += speed *delta
	
	if offset >= 287.02:
		get_parent().get_parent().hp -= 10
	
		queue_free()

func _on_Enemy_area_entered(area):
	if area.is_in_group("Projectile"):
		area.queue_free()
		health -= 1
		if health <= 0:
			get_parent().get_parent().money += 25
			queue_free()
