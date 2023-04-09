//
//  ContentView.swift
//  201906100110032
//
//  Created by bmiit on 08/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            OnboardingView(systemImageName: "scribble.variable", title: "Sketchpad", description: "Great for jotting down your ideas and brainstroming your next feature.")

            OnboardingView(systemImageName: "paintpalette.fill", title: "Color Picker", description: "Great for jotting down your ideas and brainstroming your next feature.")

            OnboardingView(systemImageName: "dial.min.fill", title: "Custom Setting", description: "Great for jotting down your ideas and brainstroming your next feature.")
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct OnboardingView: View {
    let systemImageName: String
    let title: String
    let description: String
    
    var body: some View {
        VStack(spacing:20) {
            Image(systemName: systemImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(.teal)
            Text(title)
                .font(.title).bold()
            Text(description)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
        }
        .padding(.horizontal,40)
    }
}

struct Onboard_Previews:PreviewProvider {
    static var previews: some View {
        OnboardingView(systemImageName: "scribble.variable", title: "Sketchpad", description: "Great for jotting down your ideas and brainstroming your next feature.")
    }
}
