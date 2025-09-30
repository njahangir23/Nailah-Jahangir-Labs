extends Sprite2D

@export var speed = 2
var conditiontest = true
var screen_width = 0
var screen_height = 0
var score =0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print('im ready')
	var pos_over = position.x > 800
	var current_window = get_window()
	screen_width = current_window.size.x
	screen_height = current_window.size.y
	prints(screen_height, screen_width)
	
# Called every frame. 'delta' is the elapsed time since the previous frame. 
# Gets called every single time the computer draws a new frame
func _process(delta: float) -> void:
	if Input.is_action_pressed("move_up"):
		position.y -= speed
	if Input.is_action_pressed("move_down"):
		position.y +=speed
	if Input.is_action_pressed("move_left"):
		position.x -=speed
	if Input.is_action_pressed("move_right"):
		position.x += speed
		
	if Input.is_action_just_pressed("jump"):
		print("I jumped")
		score += 1
		print(score)
		var score_label = get_node("Label")
		score_label.text = str("Score = ", score)
			$Heart.hide()
		
	#if position.x >= screen_width or position.x <= 0:
		#print("im off screen")
	#if position.y >= screen_height or position.y <= 0:
		#print("im off screen")
