// This file was generated with Diez - https://diez.org
// Do not edit this file directly.

import Foundation
import CoreGraphics
@objc(DEZTypograph)
public final class Typograph: NSObject, Decodable {
    /**
    Typograph data.
    */
    @objc public internal(set) var font: Font
    /**
    Typograph data.
    */
    @objc public internal(set) var fontSize: CGFloat
    /**
    Typograph data.
    */
    @objc public internal(set) var color: Color
    /**
    Typograph data.
    */
    @objc public internal(set) var iosTextStyle: String
    /**
    Typograph data.
    */
    @objc public internal(set) var shouldScale: Bool
    /**
    Typograph data.
    */
    @objc public internal(set) var lineHeight: CGFloat
    /**
    Typograph data.
    */
    @objc public internal(set) var letterSpacing: CGFloat
    /**
    Typograph data.
    */
    @objc public internal(set) var alignment: String
    /**
    Typograph data.
    */
    @objc public internal(set) var decoration: [String]

    init(
        font: Font,
        fontSize: CGFloat,
        color: Color,
        iosTextStyle: String,
        shouldScale: Bool,
        lineHeight: CGFloat,
        letterSpacing: CGFloat,
        alignment: String,
        decoration: [String]
    ) {
        self.font = font
        self.fontSize = fontSize
        self.color = color
        self.iosTextStyle = iosTextStyle
        self.shouldScale = shouldScale
        self.lineHeight = lineHeight
        self.letterSpacing = letterSpacing
        self.alignment = alignment
        self.decoration = decoration
    }
}

extension Typograph: ReflectedCustomStringConvertible {
    public override var description: String {
        return reflectedDescription
    }
}
