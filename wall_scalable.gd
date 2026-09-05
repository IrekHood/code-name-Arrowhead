@tool
extends Node2D



@export var length := 10.0:
	set(value):
		length = value
		_update_wall()
		
		
var sprite = load("res://levels/wall.png")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_update_wall()

func _update_wall() -> void:
	if not is_inside_tree():
		return
	$Sprite2D.region_enabled = true
	$Sprite2D.region_rect = Rect2(0, 104.0, length * 10, $Sprite2D.region_rect.size.y)
	$StaticBody2D/CollisionShape2D.shape.size.x = length * 10
	$StaticBody2D.position.x = length * 10/2
