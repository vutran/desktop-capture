import Cocoa

let screen = NSScreen.main!.frame

let cgImage: CGImage? = CGWindowListCreateImage(
	screen,
	CGWindowListOption.optionAll,
	kCGNullWindowID,
	CGWindowImageOption.nominalResolution
)

let rep: NSBitmapImageRep = NSBitmapImageRep.init(cgImage: cgImage!)

let data: Data? = rep.representation(using: NSBitmapImageRep.FileType.png, properties: [:])

print("data:image/png;base64," + data!.base64EncodedString())
