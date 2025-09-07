//
//  AppConstants.swift
//  my-cafe
//
//  Created by Mithun Karun Suma on 2025-09-06.
//

import SwiftUI

// MARK: - Colors
struct AppColors {
    // Primary brand color
    static let primary = Color(red: 0.2, green: 0.7, blue: 0.3)
    
    // Primary color variations
    static let primaryLight = Color(red: 0.3, green: 0.8, blue: 0.4)
    static let primaryDark = Color(red: 0.15, green: 0.6, blue: 0.25)
    static let primaryOpacity = Color(red: 0.2, green: 0.7, blue: 0.3).opacity(0.8)
    
    // Background colors
    static let background = Color.white
    static let backgroundSecondary = Color.gray.opacity(0.1)
    
    // Text colors
    static let textPrimary = Color(red: 0.2, green: 0.7, blue: 0.3)
    static let textSecondary = Color(red: 0.2, green: 0.7, blue: 0.3).opacity(0.8)
    static let textWhite = Color.white
    static let textGray = Color.gray
    
    // Button colors
    static let buttonPrimary = Color(red: 0.2, green: 0.7, blue: 0.3)
    static let buttonSecondary = Color.gray.opacity(0.2)
    
    // Border colors
    static let border = Color.gray.opacity(0.3)
    static let borderLight = Color.gray.opacity(0.1)
    
    // Shadow colors
    static let shadow = Color.black.opacity(0.1)
    static let shadowLight = Color.black.opacity(0.05)
    
    // Status colors
    static let success = Color.green
    static let warning = Color.orange
    static let error = Color.red
    static let info = Color.blue
}

// MARK: - Font Sizes
struct AppFontSizes {
    // Headers
    static let largeTitle: CGFloat = 34
    static let title1: CGFloat = 28
    static let title2: CGFloat = 22
    static let title3: CGFloat = 20
    
    // Body text
    static let headline: CGFloat = 17
    static let body: CGFloat = 17
    static let callout: CGFloat = 16
    static let subheadline: CGFloat = 15
    static let footnote: CGFloat = 13
    static let caption1: CGFloat = 12
    static let caption2: CGFloat = 11
    
    // Custom sizes for app
    static let welcomeTitle: CGFloat = 32
    static let welcomeSubtitle: CGFloat = 24
    static let buttonText: CGFloat = 18
    static let cardTitle: CGFloat = 20
    static let cardSubtitle: CGFloat = 16
}

// MARK: - Font Weights
struct AppFontWeights {
    static let light = Font.Weight.light
    static let regular = Font.Weight.regular
    static let medium = Font.Weight.medium
    static let semibold = Font.Weight.semibold
    static let bold = Font.Weight.bold
    static let heavy = Font.Weight.heavy
}

// MARK: - Spacing
struct AppSpacing {
    static let xs: CGFloat = 4
    static let sm: CGFloat = 8
    static let md: CGFloat = 12
    static let lg: CGFloat = 16
    static let xl: CGFloat = 20
    static let xxl: CGFloat = 24
    static let xxxl: CGFloat = 30
    static let huge: CGFloat = 40
}

// MARK: - Corner Radius
struct AppCornerRadius {
    static let small: CGFloat = 4
    static let medium: CGFloat = 8
    static let large: CGFloat = 12
    static let xlarge: CGFloat = 16
    static let xxlarge: CGFloat = 20
    static let round: CGFloat = 50
}

// MARK: - Animation Durations
struct AppAnimations {
    static let fast: Double = 0.2
    static let normal: Double = 0.3
    static let slow: Double = 0.5
    static let verySlow: Double = 1.0
}
