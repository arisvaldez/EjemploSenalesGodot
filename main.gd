extends Node

var pressed = false

func _input(event):
	if event is InputEventScreenTouch:
		if event.pressed:
			pressed = true
		else:
			pressed = false

	if event is InputEventScreenDrag:
		if pressed:
				
			$Node2D.translate(Vector2(event.relative.x , event.relative.y))
			
			var pos = $Node2D.position
			
			pos.x = clamp(pos.x, 16 , get_viewport().get_visible_rect().size.x- 16)
			pos.y = clamp(pos.y, 16 , get_viewport().get_visible_rect().size.y + 16)
		
			$Node2D.position = pos
		
