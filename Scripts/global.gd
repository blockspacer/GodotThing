extends Node

var id_lock = Mutex.new()
var next_id = 0

var particles
var bulletScene
var currentNav

var bodyPart = "res://Things/Mechs/AdamMk2/ADAMmk2_body.dae"
var legPart = "res://Things/Mechs/AdamMk2/ADAMmk2_legs.dae"
var lWepPart = ["NONE"]
var rWepPart = ["NONE"]

var color1 = Color(0,0,0)
var pattern1 = "res://Things/Patterns/plain.png"
var color2 = Color(0,0,0)
var pattern2 = "res://Things/Patterns/plain.png"

func getId():
	id_lock.lock()
	var ret_id = next_id
	next_id += 1
	id_lock.unlock()
	return ret_id

func _ready():
	particles = preload("res://Particles.tscn")
	bulletScene = preload("res://Bullet.tscn")