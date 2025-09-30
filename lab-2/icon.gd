extends Sprite2D

@export var speed = 2
var conditiontest = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print('im ready')
	var pos_over = position.x > 800
	
	if pos_over:
		print('my position is over 800')
	else:
		print('my position is ', position.x)
	
# Called every frame. 'delta' is the elapsed time since the previous frame. 
# Gets called every single time the computer draws a new frame
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_up"):
	#position.x=position.x+speed
		position.y += speed
	if Input.is_action_pressed("ui_down"):
		position.y -=speed
	if Input.is_action_pressed("ui_left"):
		position.x -=speed
	if Input.is_action_pressed("ui_right"):
		position.x += speed
	#if position.x > 800:
	#	print('I win')
	#else:
	#	print('Im still racing')
