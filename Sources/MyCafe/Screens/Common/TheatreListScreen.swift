//
//  TheatreListScreen.swift
//  my-cafe
//
//  Created by Mithun Karun Suma on 2025-09-06.
//

import SwiftUI

struct TheatreListScreen: View {
    @State private var theatres: [Theatre] = [
        Theatre(name: "Test", location: "abc"),
        Theatre(name: "theatre", location: "Payyanur")
    ]
    
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
                        Spacer()
                        Text("Theatre List")
                            .font(.system(size: AppFontSizes.title2, weight: AppFontWeights.bold))
                            .foregroundColor(AppColors.textWhite)
                        
                        Spacer()
                        Button(action: {
                            print("Settings tapped")
                        }) {
                            Image(systemName: "gearshape.fill")
                                .font(.system(size: 20))
                                .foregroundColor(AppColors.textWhite)
                        }
                    }
                    .padding([.horizontal, .vertical], AppSpacing.lg)
                    .background(AppColors.primary)
                }
                
                // Content
                VStack(spacing: 0) {                    
                    // Theatre List
                    ScrollView {
                        VStack(spacing: AppSpacing.md) {
                            ForEach(theatres) { theatre in
                                TheatreRowView(theatre: theatre)
                            }
                        }
                        .padding(.horizontal, AppSpacing.lg)
                        .padding(.top, AppSpacing.lg)
                        .padding(.bottom, 100) // Space for floating button
                    }
                }
            }
            
            // Floating Action Button - positioned at bottom
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        addNewTheatre()
                    }) {
                        HStack(spacing: AppSpacing.sm) {
                            Image(systemName: "plus")
                                .font(.system(size: 16, weight: AppFontWeights.semibold))
                            Text("Add Theatre")
                                .font(.system(size: AppFontSizes.callout, weight: AppFontWeights.semibold))
                        }
                        .foregroundColor(AppColors.textWhite)
                        .padding(.horizontal, AppSpacing.lg)
                        .padding(.vertical, AppSpacing.md)
                        .background(AppColors.primary)
                        .cornerRadius(AppCornerRadius.large)
                    }
                    .padding(.trailing, AppSpacing.lg)
                    .padding(.bottom, AppSpacing.lg)
                }
            }
        }
        .toolbar(.hidden, for: .navigationBar)
    }
    
    private func addNewTheatre() {
        let newTheatre = Theatre(name: "New Theatre", location: "New Location")
        theatres.append(newTheatre)
    }
}

struct TheatreRowView: View {
    let theatre: Theatre
    
    var body: some View {
        HStack(spacing: AppSpacing.lg) {
            // Theatre Icon
            ZStack {
                RoundedRectangle(cornerRadius: AppCornerRadius.small)
                    .fill(AppColors.primary.opacity(0.1))
                    .frame(width: 40, height: 40)
                
                Image(systemName: "theatermasks")
                    .font(.system(size: 20))
                    .foregroundColor(AppColors.primary)
            }
            
            // Theatre Info
            VStack(alignment: .leading, spacing: AppSpacing.xs) {
                Text(theatre.name)
                    .font(.system(size: AppFontSizes.body, weight: AppFontWeights.medium))
                    .foregroundColor(AppColors.textPrimary)
                
                Text(theatre.location)
                    .font(.system(size: AppFontSizes.footnote, weight: AppFontWeights.regular))
                    .foregroundColor(AppColors.textSecondary)
            }
            
            Spacer()
            
            // Arrow Icon
            Image(systemName: "chevron.right")
                .font(.system(size: 14, weight: AppFontWeights.medium))
                .foregroundColor(AppColors.primary)
        }
        .padding(AppSpacing.lg)
        .background(AppColors.primary.opacity(0.05))
        .cornerRadius(AppCornerRadius.medium)
    }
}

struct Theatre: Identifiable {
    let id = UUID()
    let name: String
    let location: String
}

#Preview {
    TheatreListScreen()
}
