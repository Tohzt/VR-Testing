extends Node3D
@onready var gun: XRToolsPickable = $gun
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	if gun.action_pressed:
		animation_player.play("Backfire")
