//
//  Lighting.swift
//  Model3DView
//
//  Created by Simon Salomons on 25/03/2025.
//

import SceneKit
import SwiftUI

struct LightingProperties {
    let lights: [SCNLight]
}

private struct LightingModifier: ViewModifier {
    var properties: LightingProperties

    func body(content: Content) -> some View {
        content.environment(\.lighting, properties)
    }
}

extension View {
    public func sceneLighting(_ lights: () -> [SCNLight]) -> some View {
        let props = LightingProperties(lights: lights())
        return modifier(LightingModifier(properties: props))
    }
}
