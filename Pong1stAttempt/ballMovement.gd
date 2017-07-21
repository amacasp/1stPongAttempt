extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
const BALL_SPEED = 100
const INITIAL_SPEED = Vector2(1, 1)
var ballDirection = INITIAL_SPEED
var ballPos = self.get_pos()
var ballBox
var ballSize = self.get_texture().get_size()

func _ready():
	set_process(true)
	
func _ball_hit():
	ballDirection = Vector2 (1, -1)
	
func _ball_hit_pad():
	ballDirection = Vector2 (-1, 1)
	
func _process(delta):
	ballPos += BALL_SPEED * ballDirection * delta
	self.set_pos(ballPos)
	ballBox = Rect2 (ballPos , ballSize)
	

	
