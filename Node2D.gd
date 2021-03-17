extends Area2D


func _ready():
	$Timer.connect("timeout",self,"_on_Timer_timeout")
	


func _on_Timer_timeout():
	#print(get_local_mouse_position())
	#print("Activado")
	#$Sprite.visible = not $Sprite.visible
	pass
