//
//  SettingsScreen.swift
//  my-cafe
//
//  Created by Mithun Karun Suma on 2025-09-06.
//

import SwiftUI

struct SettingsScreen: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            // Background
            AppColors.background
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                // Header
                VStack(spacing: 0) {
                    // App Bar
                    HStack {
                        Button(action: {
                            dismiss()
                        }) {
                            Image(systemName: "chevron.left")
                                .font(.system(size: 18, weight: AppFontWeights.semibold))
                                .foregroundColor(AppColors.textWhite)
                        }
                        
                        Spacer()
                        
                        Text("Settings")
                            .font(.system(size: AppFontSizes.title2, weight: AppFontWeights.bold))
                            .foregroundColor(AppColors.textWhite)
                        
                        Spacer()
                        
                        // Invisible spacer to balance the back button
                        Button(action: {}) {
                            Image(systemName: "chevron.left")
                                .font(.system(size: 18, weight: AppFontWeights.semibold))
                                .foregroundColor(.clear)
                        }
                        .disabled(true)
                    }
                    .padding([.horizontal, .vertical], AppSpacing.lg)
                    .background(AppColors.primary)
                }
                
                // Content
                VStack(spacing: 0) {
                    // Settings Items
                    VStack(spacing: 0) {
                        // Language Setting
                        SettingsRowView(
                            icon: "globe",
                            title: "Language",
                            subtitle: "English",
                            iconColor: AppColors.textSecondary,
                            textColor: AppColors.textPrimary,
                            subtitleColor: AppColors.textSecondary
                        ) {
                            // Handle language selection
                            print("Language tapped")
                        }
                        
                        Rectangle()
                            .fill(AppColors.border)
                            .frame(height: 1)
                            .padding(.leading, 60) // Align with text, not icon
                        
                        // Logout Setting
                        SettingsRowView(
                            icon: "rectangle.portrait.and.arrow.right",
                            title: "Logout",
                            subtitle: nil,
                            iconColor: .red,
                            textColor: .red,
                            subtitleColor: nil
                        ) {
                            // Handle logout
                            print("Logout tapped")
                        }
                    }
                    .padding(.top, AppSpacing.lg)
                    
                    Spacer()
                }
            }
        }
    }
}

struct SettingsRowView: View {
    let icon: String
    let title: String
    let subtitle: String?
    let iconColor: Color
    let textColor: Color
    let subtitleColor: Color?
    let action: () -> Void
    
    var body: some View {
        HStack(spacing: AppSpacing.lg) {
            // Icon
            Image(systemName: icon)
                .font(.system(size: 20, weight: AppFontWeights.medium))
                .foregroundColor(iconColor)
                .frame(width: 24, height: 24)
            
            // Text Content
            VStack(alignment: .leading, spacing: AppSpacing.xs) {
                Text(title)
                    .font(.system(size: AppFontSizes.body, weight: AppFontWeights.medium))
                    .foregroundColor(textColor)
                
                if let subtitle = subtitle {
                    Text(subtitle)
                        .font(.system(size: AppFontSizes.footnote, weight: AppFontWeights.regular))
                        .foregroundColor(subtitleColor ?? AppColors.textSecondary)
                }
            }
            
            Spacer()
        }
        .padding(.horizontal, AppSpacing.lg)
        .padding(.vertical, AppSpacing.md)
        .onTapGesture {
            action()
        }
    }
}

#Preview {
    SettingsScreen()
}
