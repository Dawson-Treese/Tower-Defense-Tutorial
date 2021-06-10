extends Node2D


var tower = load("res://Assets/Enemy/Enemy.tscn")
var enemy = load("res://Assets/Enemy/Enemy.tscn")
var instance

var building = false

var cash = 50
var wave = 0
var mobs_left = 0
var wave_mobs = [5, 15, 30]


func _ready():
	$WaveTimer.start()
	
func _physics_process(delta):
	$CashLabel.text = "cash: " + str(cash)


func _on_MobTimer_timeout():
	pass # Replace with function body.


func _on_WaveTimer_timeout():
	mobs_left = wave_mobs[wave]
	$MobTimer.start()


func _on_TextureButton_pressed():
	if !building and cash >= 25:
		instance = tower.instance()
		add_child(instance)
		building = true
