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
	if Input.is_action_pressed("move_right"):
		position.x += speed
	else:
		position.x -= 1.5

func _on_area_2d_area_entered(area: Area2D) -> void:
	score += area.value
	print(score)
	pass # Replace with function body.
