extends Spatial

onready var Enemy = preload("res://Enemy/Enemy.tscn")
onready var Maze = get_node("/root/Game/Maze")
export var count = 15

func _ready():
	var locations = []
	for x in range(Maze.width-2):
		for z in range(Maze.height-2):
			locations.append(Vector3(((x+1)*Maze.tile_size)-1.5,0.1,((z+1)*Maze.tile_size)-1.5))
	locations.shuffle()
	for i in range(count):
		var enemy = Enemy.instance()
		enemy.translate (locations[i])
		add_child(enemy)
			
		
