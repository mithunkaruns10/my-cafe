//
//  HomeScreen.swift
//  my-cafe
//
//  Created by Mithun Karun Suma on 2025-09-06.
//

import SwiftUI

struct HomeScreen: View {
    @State private var selectedRole: UserRole?
    @State private var isLoginScreenPresented: Bool = false
    
    var body: some View {
        ZStack {
            // Background
            AppColors.primary
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                Spacer()
                
                // Welcome card
                VStack(spacing: AppSpacing.xl) {
                    // Coffee cup icon in green circle
                    ZStack {
                        Circle()
                            .fill(AppColors.primary)
                            .frame(width: 60, height: 60)
                        
                        Image(systemName: "cup.and.saucer.fill")
                            .font(.system(size: 30))
                            .foregroundColor(AppColors.textWhite)
                    }
                    .padding(.top, AppSpacing.xl)
                    
                    // Welcome text
                    VStack(spacing: AppSpacing.sm) {
                        Text("Welcome")
                            .font(.system(size: AppFontSizes.welcomeTitle, weight: AppFontWeights.bold))
                            .foregroundColor(AppColors.textPrimary)
                        
                        Text("Mani's Cafe")
                            .font(.system(size: AppFontSizes.welcomeSubtitle, weight: AppFontWeights.medium))
                            .foregroundColor(AppColors.textSecondary)
                    }
                    
                    // Action buttons
                    VStack(spacing: AppSpacing.md) {
                        Button(action: {
                            selectedRole = .admin
                            isLoginScreenPresented = true
                        }) {
                            Text("Admin")
                                .font(.system(size: AppFontSizes.buttonText, weight: AppFontWeights.semibold))
                                .foregroundColor(AppColors.textWhite)
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(AppColors.buttonPrimary)
                                .cornerRadius(AppCornerRadius.large)
                        }
                        
                        Button(action: {
                            selectedRole = .employee
                            isLoginScreenPresented = true
                        }) {
                            Text("Employee")
                                .font(.system(size: AppFontSizes.buttonText, weight: AppFontWeights.semibold))
                                .foregroundColor(AppColors.textWhite)
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(AppColors.buttonPrimary)
                                .cornerRadius(AppCornerRadius.large)
                        }
                    }
                    .padding(.horizontal, AppSpacing.xl)
                    .padding(.bottom, AppSpacing.xxxl)
                }
                .background(AppColors.background)
                .cornerRadius(AppCornerRadius.xxlarge)
                .shadow(color: AppColors.shadow, radius: 10, x: 0, y: 5)
                .padding(.horizontal, AppSpacing.xxxl)
                
                Spacer()
            }
        }
        .onChange(of: selectedRole) { _, newRole in
            if let role = newRole {
                handleRoleSelection(role)
            }
        }
        .fullScreenCover(isPresented: $isLoginScreenPresented) {
            LoginScreen()
        }
    }
    
    private func handleRoleSelection(_ role: UserRole) {
        // Handle role selection logic here
        print("Selected role: \(role.rawValue)")
        // You can navigate to different screens based on the role
    }
}


#Preview {
    HomeScreen()
}
