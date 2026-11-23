import UIKit
import WebKit

@main
final class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = GameViewController()
        window?.makeKeyAndVisible()
        return true
    }
}

/// Zeigt das Spiel (web/index.html aus dem App-Bundle) im Vollbild an.
final class GameViewController: UIViewController {
    private var webView: WKWebView!

    override var prefersStatusBarHidden: Bool { true }
    override var prefersHomeIndicatorAutoHidden: Bool { true }
    override var preferredScreenEdgesDeferringSystemGestures: UIRectEdge { .bottom }

    override func loadView() {
        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        config.mediaTypesPlaybackRequiringUserAction = []
        config.websiteDataStore = .default()   // Spielstand & Bestwert bleiben gespeichert

        webView = WKWebView(frame: .zero, configuration: config)
        webView.isOpaque = false
        webView.backgroundColor = UIColor(red: 0.08, green: 0.09, blue: 0.15, alpha: 1)
        webView.scrollView.isScrollEnabled = false
        webView.scrollView.bounces = false
        webView.scrollView.contentInsetAdjustmentBehavior = .never
        webView.allowsLinkPreview = false
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = Bundle.main.url(forResource: "index", withExtension: "html", subdirectory: "web") {
            webView.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        }
    }
}
