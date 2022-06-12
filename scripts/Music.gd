extends AudioStreamPlayer

var currentMusic = ""

func playMusic(music):
	if currentMusic != music:
		currentMusic = music
		stream = load("res://audio/" + music + ".mp3")
		play()
