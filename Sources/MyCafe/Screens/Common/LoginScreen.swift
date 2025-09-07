//
//  LoginScreen.swift
//  my-cafe
//
//  Created by Mithun Karun Suma on 2025-09-06.
//

import SwiftUI

struct LoginScreen: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isLoading: Bool = false
    @State private var showAlert: Bool = false
    @State private var alertMessage: String = ""
    @AppStorage("isLoggedIn") var isLoggedIn = false
    
    var body: some View {
        ZStack {
            // Background
            AppColors.primary
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                Spacer()
                
                // Login card
                VStack(spacing: AppSpacing.xl) {
                    // Logo/Icon section
                    VStack(spacing: AppSpacing.lg) {
                        // Coffee cup icon in green circle
                        ZStack {
                            Circle()
                                .fill(AppColors.primary)
                                .frame(width: 80, height: 80)
                            
                            Image(systemName: "cup.and.saucer.fill")
                                .font(.system(size: 40))
                                .foregroundColor(AppColors.textWhite)
                        }
                        
                            Text("Login")
                                .font(.system(size: AppFontSizes.welcomeTitle, weight: AppFontWeights.bold))
                                .foregroundColor(AppColors.textPrimary)
                    }
                    .padding(.top, AppSpacing.xl)
                    
                    // Login form
                    VStack(spacing: AppSpacing.lg) {
                        // Email field
                        VStack(alignment: .leading, spacing: AppSpacing.sm) {
                            Text("Email")
                                .font(.system(size: AppFontSizes.callout, weight: AppFontWeights.medium))
                                .foregroundColor(AppColors.textPrimary)
                            
                            TextField("Enter your email", text: $email)
                                .padding(AppSpacing.lg)
                                .background(AppColors.background)
                                .cornerRadius(AppCornerRadius.medium)
                                .border(AppColors.border, width: 1)
                        }
                        
                        // Password field
                        VStack(alignment: .leading, spacing: AppSpacing.sm) {
                            Text("Password")
                                .font(.system(size: AppFontSizes.callout, weight: AppFontWeights.medium))
                                .foregroundColor(AppColors.textPrimary)
                            
                            SecureField("Enter your password", text: $password)
                                .padding(AppSpacing.lg)
                                .background(AppColors.background)
                                .cornerRadius(AppCornerRadius.medium)
                                .border(AppColors.border, width: 1)
                        }
                        
                        // Forgot password
                        HStack {
                            Spacer()
                            Button("Forgot Password?") {
                                // Handle forgot password
                                print("Forgot password tapped")
                            }
                            .font(.system(size: AppFontSizes.footnote, weight: AppFontWeights.medium))
                            .foregroundColor(AppColors.primary)
                        }
                    }
                    .padding(.horizontal, AppSpacing.xl)
                    
                    // Login button
                    VStack(spacing: AppSpacing.lg) {
                        Button(action: {
                            handleLogin()
                        }) {
                            Text(isLoading ? "Logging in..." : "Login")
                                .font(.system(size: AppFontSizes.buttonText, weight: AppFontWeights.semibold))
                                .foregroundColor(AppColors.textWhite)
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(email.isEmpty || password.isEmpty ? AppColors.buttonSecondary : AppColors.buttonPrimary)
                                .cornerRadius(AppCornerRadius.large)
                        }
                        .disabled(email.isEmpty || password.isEmpty || isLoading)
                    }
                    .padding(.horizontal, AppSpacing.xl)
                    .padding(.bottom, AppSpacing.xl)
                }
                .background(AppColors.background)
                .cornerRadius(AppCornerRadius.xxlarge)
                .shadow(color: AppColors.shadow, radius: 10, x: 0, y: 5)
                .padding(.horizontal, AppSpacing.xxxl)
                
                Spacer()
            }
        }
        .alert("Login Error", isPresented: $showAlert) {
            Button("OK") { }
        } message: {
            Text(alertMessage)
        }
    }
    
    private func handleLogin() {
        // Simple validation
        if email.isEmpty {
            alertMessage = "Please enter your email"
            showAlert = true
            return
        }
        
        if password.isEmpty {
            alertMessage = "Please enter your password"
            showAlert = true
            return
        }
        
        // Simulate login process
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            isLoading = false
            
            // Simple login check
            if email.lowercased() == "admin@maniscafe.com" && password == "admin123" {
                print("Admin login successful")
                // Navigate to admin screen
            } else if email.lowercased() == "employee@maniscafe.com" && password == "employee123" {
                print("Employee login successful")
                // Navigate to employee screen
            } else {
                alertMessage = "Invalid email or password"
                showAlert = true
            }
        }
    }
}

#Preview {
    LoginScreen()
}