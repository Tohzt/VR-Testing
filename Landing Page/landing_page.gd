extends CanvasLayer


func _ready() -> void: pass
func _process(_delta: float) -> void: pass


func _on_btn_solo_pressed() -> void:
	get_tree().change_scene_to_file(Global.Scene_Main)


func _on_btn_join_pressed() -> void:
	pass # Replace with function body.
