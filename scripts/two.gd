extends TextureFrame

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	get_node("pilot").hide()
	get_node("AuthorAnim").play("Scene2Author")
	
	
	
func pilot(hideOrNot):
	print("we are calling function!", hideOrNot)
	if hideOrNot == 1:
		get_node("pilot").show()
	elif hideOrNot == 0:
		get_node("pilot").hide()
	
