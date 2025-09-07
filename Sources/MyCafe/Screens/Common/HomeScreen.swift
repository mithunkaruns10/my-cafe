//
//  HomeScreen.swift
//  my-cafe
//
//  Created by Mithun Karun Suma on 2025-09-06.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            VStack(spacing: AppSpacing.lg) {
                Text("Welcome to MyCafe")
                    .font(.system(size: AppFontSizes.welcomeTitle, weight: AppFontWeights.bold))
                    .foregroundColor(AppColors.textPrimary)
                    .padding(.top, AppSpacing.xl)
                
                Spacer()
                
                Button("Go to Login") {
                    navigateToLoginScreen()
                }
                .font(.system(size: AppFontSizes.buttonText, weight: AppFontWeights.semibold))
                .foregroundColor(AppColors.textWhite)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(AppColors.buttonPrimary)
                .cornerRadius(AppCornerRadius.large)
                .padding(.horizontal, AppSpacing.xl)
                
                Spacer()
            }
            .background(AppColors.background)
            .navigationTitle("Home")
        }
    }
    
    private func navigateToLoginScreen() {
        // Navigation logic will be implemented here
        print("Navigate to login screen")
    }
}

#Preview {
    HomeScreen()
}