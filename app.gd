extends Control

func _ready():
	pass

func _process(delta):
	pass

func _on_open_file_pressed():
	$FileDialog.access = FileDialog.ACCESS_FILESYSTEM
	$FileDialog.current_dir = OS.get_environment("USERPROFILE") + "/Downloads"
	$FileDialog.popup()

func _on_save_file_pressed():
	$SaveDialog.access = FileDialog.ACCESS_FILESYSTEM
	$SaveDialog.current_dir = OS.get_environment("USERPROFILE") + "/Downloads"
	$SaveDialog.popup()

func _on_file_dialog_file_selected(path):
	var file = FileAccess.open(path, FileAccess.READ)
	var content = file.get_as_text()
	$TextEdit.text = content
	file.close()


func _on_save_dialog_file_selected(path):
	var file = FileAccess.open(path, FileAccess.WRITE)
	file.store_string($TextEdit.text)
	file.close()


func _on_new_file_pressed():
	pass # Replace with function body.
