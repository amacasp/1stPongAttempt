extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var arenaBox = Rect2 (self.get_pos(), get_viewport_rect().size)
var ballPos

func _blue_lost():
	pass
	
func _purp_lost():
	pass
	
func _ready():
	set_process(true)

func _process(delta):
	if get_node("ball").get_pos().y > 400 or get_node("ball").get_pos().y < 0 :
		get_node("ball")._ball_hit()
		
	if get_node("ball").get_pos().x > 640:
		_purp_lost()
	
	if get_node("ball").get_pos().x < 0:
		_blue_lost()
		
	
	



