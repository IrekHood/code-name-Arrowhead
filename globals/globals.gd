extends Node

var tip_list = [load("res://player/arrow/tips/tip_frozen.png"), load("res://player/arrow/tips/tip_normal.png"), load("res://player/arrow/tips/tip_poison.png")]
		
var body_list = [load("res://player/arrow/bodies/body_homing.png"), load("res://player/arrow/bodies/body_normal.png"), load("res://player/arrow/bodies/body_projectile.png")]

var fletching_list = [load("res://player/arrow/fletching/feather_fast.png"), load("res://player/arrow/fletching/feather_normal.png"), load("res://player/arrow/fletching/feathre_area.png")]
		
var selectec_arrow_combo = [1, 1, 1]:
	set(value):
		Events.change_current_arrow_lodout.emit(value)
