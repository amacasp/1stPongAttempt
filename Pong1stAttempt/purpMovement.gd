extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var PAD_SPEED = 200
const UP = Vector2 (0, -1)
const DOWN = Vector2 (0,1)
var purpPos = self.get_pos()
var purpSize = self.get_texture().get_size() * 0.1
var purpBox = Rect2 (purpPos, purpSize)

func _ready():
	set_process(true)
	
func _process(delta):
	if Input.is_action_pressed("purp_up"):
		purpPos += PAD_SPEED * UP * delta
		self.set_pos(purpPos)
		purpBox = Rect2(purpSize, purpPos)
		
	if Input.is_action_pressed("purp_down"):
		purpPos += PAD_SPEED * DOWN * delta
		self.set_pos(purpPos)
		purpBox = Rect2(purpSize, purpPos)
		
	if purpBox.has_point(get_parent().get_node("ball").get_pos()):
		get_parent().get_node("ball")._ball_hit_pad()
	

