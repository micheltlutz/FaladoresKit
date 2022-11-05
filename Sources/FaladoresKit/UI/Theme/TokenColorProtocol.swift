import SwiftUI

public protocol TokenColorProtocol {
    var colorScheme: ColorScheme { get }

    var primaryBrand: Color { get set }
    var secondaryBrand: Color { get set }
    var tertiaryBrand: Color { get set }
    var head: Color { get set }
    var subhead: Color { get set }
    var caption: Color { get set }
    var body: Color { get set }
    var whitish: Color { get set }
    var blackish: Color { get set }

    init(_ colorScheme: ColorScheme)
}
