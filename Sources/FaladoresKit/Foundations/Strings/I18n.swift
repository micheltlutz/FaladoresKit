import Foundation
import SwiftUI

public class I18n {
    public enum General: String, i18nProtocol {
        case yes
        case no
        case ok
        case back
        case cancel
        case `continue`
        case save

        public var text: String {
            return NSLocalizedString(rawValue, comment: "")
        }

        public func text(with complement: String...) -> String {
            return String(format: NSLocalizedString(text, comment: "%@"), arguments: complement)
        }
    }
}
