import AppKit

class AppDelegate: NSObject, NSApplicationDelegate, NSWindowDelegate {
    let window: NSWindow
    let app: App

    override init() {
        window = WindowBuilder()
            .position(x: 0, y: 0)
            .dimension(width: 500, height: 500)
            .build()

        app = initApp(window: window)
        super.init()
    }

    func applicationDidFinishLaunching(_ notification: Notification) {
        app.viewWillAppear()
        window.makeKeyAndOrderFront(nil)
        app.viewDidAppear()
    }

    func applicationWillTerminate(_ notification: Notification) {
        app.viewWillDisappear()
        window.close()
        app.viewDidDisappear()
    }
}

let app = NSApplication.shared
let appDelegate = AppDelegate()
app.delegate = appDelegate
app.run()
