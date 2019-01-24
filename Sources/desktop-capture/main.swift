import Cocoa
import Foundation

let arguments = Array(CommandLine.arguments.dropFirst(1))
var screen: NSScreen?

// Ensure we capture the specified screen via the CLI arg: `desktop-capture <screenId>`
if arguments.count > 0 {
    for s in NSScreen.screens {
        let screenId = s.deviceDescription[NSDeviceDescriptionKey("NSScreenNumber")] as! NSNumber
        if screenId.stringValue == arguments[0] {
            screen = s
        }
    }
} else {
    screen = NSScreen.main!
}

if screen != nil {
    let cgImage: CGImage? = CGWindowListCreateImage(
        screen!.frame,
        CGWindowListOption.optionAll,
        kCGNullWindowID,
        CGWindowImageOption.nominalResolution
    )

    let rep: NSBitmapImageRep = NSBitmapImageRep.init(cgImage: cgImage!)

    let data: Data? = rep.representation(using: NSBitmapImageRep.FileType.png, properties: [:])

    print("data:image/png;base64," + data!.base64EncodedString())
}
