import SwiftUI

// MARK: - TypographyTypeProtocol

public protocol TypographyTypeProtocol {
    associatedtype FontSizeType
    associatedtype FontFamilyType
    associatedtype FontSizeTokenType
    associatedtype FontFamilyTokenType

    var headFont: Font { get }
    var subheadFont: Font { get }
    var bodyFont: Font { get }
    var captionFont: Font { get }
}

// MARK: - TypographyType

public struct TypographyType: TypographyTypeProtocol {
    public typealias FontSizeType = FontSize
    public typealias FontFamilyType = FontFamily
    public typealias FontSizeTokenType = FontSizeToken
    public typealias FontFamilyTokenType = FontFamilyToken

    public enum FontSize: CGFloat {
        case small = 14
        case medium = 24
        case large = 36
    }

    public enum FontFamily: String {
        case systemFont = "SystemFont"
    }

    public enum FontSizeToken: CGFloat {
        case head, subhead, caption, body

        var size: CGFloat {
            switch self {
            case .body, .caption:
                return FontSize.small.rawValue

            case .subhead:
                return FontSize.medium.rawValue

            case .head:
                return FontSize.large.rawValue
            }
        }
    }

    public enum FontFamilyToken: String {
        case main

        var name: String {
            switch self {
            case .main:
                return FontFamily.systemFont.rawValue
            }
        }
    }

    public let headFont: Font
    public let subheadFont: Font
    public let bodyFont: Font
    public let captionFont: Font

    public init() {
        self.headFont = Font.custom(FontFamilyToken.main.name, size: FontSizeToken.head.size)
        self.subheadFont = Font.custom(FontFamilyToken.main.name, size: FontSizeToken.subhead.size)
        self.bodyFont = Font.custom(FontFamilyToken.main.name, size: FontSizeToken.body.size)
        self.captionFont = Font.custom(FontFamilyToken.main.name, size: FontSizeToken.caption.size)
    }
}
