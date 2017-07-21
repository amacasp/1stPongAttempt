extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var PAD_SPEED = 200
const UP = Vector2 (0, -1)
const DOWN = Vector2 (0,1)
var bluePos = self.get_pos()
var blueSize = self.get_texture().get_size()
var blueBox = Rect2 (bluePos , blueSize)
var ballPos

func _ready():
	set_process(true)
	
func _process(delta):
	
	if Input.is_action_pressed("blue_up"):
		bluePos += PAD_SPEED * UP * delta
		self.set_pos(bluePos)
		blueBox = Rect2(bluePos, blueSize)
		
	if Input.is_action_pressed("blue_down"):
		bluePos += PAD_SPEED * DOWN * delta
		self.set_pos(bluePos)
		blueBox = Rect2 (bluePos, blueSize)
		
	if blueBox.has_point(get_parent().get_node("ball").get_pos()):
		get_parent().get_node("ball")._ball_hit_pad()
