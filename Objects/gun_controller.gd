extends Node3D

@onready var gun := $gun
@onready var animation_player: AnimationPlayer = $AnimationPlayer

@export var bullet_scene: PackedScene = preload("res://Objects/bullet.tscn")
@export var bullet_speed: float = 5.0

@onready var muzzle: Marker3D = $Marker3D

func _ready() -> void:
	gun.action_pressed.connect(_on_action_pressed)

func _on_action_pressed(_pickable) -> void:
	var spawn_transform := muzzle.global_transform

	animation_player.play("Recoil")

	var bullet = bullet_scene.instantiate()
	get_tree().current_scene.add_child(bullet)

	bullet.global_transform = spawn_transform
	bullet.apply_central_impulse(-spawn_transform.basis.z * bullet_speed)
