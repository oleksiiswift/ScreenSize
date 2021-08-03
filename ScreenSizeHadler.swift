enum ScreenSize {
	case small
	case medium
	case large
	case extraLarge
}

func getScreenSize() -> ScreenSize {
	let screenWidth = UIScreen.main.bounds.width
	let screenHeight = UIScreen.main.bounds.height
	let screenSize = max(screenWidth, screenHeight)

	switch screenSize {
	case 0..<375:
		return .small
	case 375..<414:
		return .medium
	case 414..<768:
		return .large
	default:
		return .extraLarge
	}
}
