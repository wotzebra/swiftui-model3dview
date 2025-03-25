/*
 * EnvironmentValues.swift
 * Created by Freek (github.com/frzi) on 08-08-2021.
 */

import SwiftUI

// MARK: - Environment keys.
struct CameraEnvironmentKey: EnvironmentKey {
	static var defaultValue: Camera = PerspectiveCamera()
}

struct IBLEnvironmentKey: EnvironmentKey {
	static var defaultValue: IBLValues?
}

struct SkyboxEnvironmentKey: EnvironmentKey {
	static var defaultValue: URL?
}

struct Transform3DEnvironmentKey: EnvironmentKey {
	static var defaultValue = Transform3DProperties()
}

struct LightingPropertiesKey: EnvironmentKey {
    static var defaultValue = LightingProperties(lights: [])
}

// MARK: - Environment values.
extension EnvironmentValues {
	var camera: Camera {
		get { self[CameraEnvironmentKey.self] }
		set { self[CameraEnvironmentKey.self] = newValue }
	}
	
	var ibl: IBLValues? {
		get { self[IBLEnvironmentKey.self] }
		set { self[IBLEnvironmentKey.self] = newValue }
	}
	
	var skybox: URL? {
		get { self[SkyboxEnvironmentKey.self] }
		set { self[SkyboxEnvironmentKey.self] = newValue }
	}
	
	var transform3D: Transform3DProperties {
		get { self[Transform3DEnvironmentKey.self] }
		set { self[Transform3DEnvironmentKey.self] = newValue }
	}

    var lighting: LightingProperties {
        get { self[LightingPropertiesKey.self] }
        set { self[LightingPropertiesKey.self] = newValue }
    }
}
