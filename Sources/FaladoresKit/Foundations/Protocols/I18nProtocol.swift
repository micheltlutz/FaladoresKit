import Foundation

public protocol i18nProtocol {
    var text: String { get }

    func text(with complement: String...) -> String
}
