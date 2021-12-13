extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var speed = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _physics_process(delta):
	var velocity = Vector2()
	
	var hsp = 0 
	if Input.is_action_pressed("ui_right"):
		hsp+=1
	if Input.is_action_pressed("ui_left"):
		hsp-=1

	var movex=hsp*speed
	velocity.x= movex
	
	
	var vsp = 0 
	if Input.is_action_pressed("ui_down"):
		vsp+=1
	if Input.is_action_pressed("ui_up"):
		vsp-=1

	var movey=vsp*speed
	velocity.y= movey
	move_and_slide(velocity)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area2D_area_entered(area):
	print ("Ive been brutally murdered!!!")
	queue_free()
	
