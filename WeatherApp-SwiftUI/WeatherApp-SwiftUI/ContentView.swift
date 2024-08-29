//
//  ContentView.swift
//  WeatherApp-SwiftUI
//
//  Created by Muhammed Rashid on 29/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .white],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea(edges: .all)
            VStack(spacing: 40) {
                Text("Cupertino, CA")
                    .font(.title)
                    .foregroundStyle(.white)
                Spacer()
                VStack {
                    Image(systemName: "sunset")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 140)
                    Text("76o")
                        .font(.title)
                        .bold()
                        .foregroundStyle(.white)
                }
                HStack (spacing: 10){
                    VStack {
                        Text("TUE")
                        Image(systemName: "sunrise")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                        Text("74o")
                            .font(.title3)
                            .foregroundStyle(.white)
                    }
                    VStack {
                        Text("TUE")
                        Image(systemName: "sunrise")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                        Text("74o")
                            .font(.title3)
                            .foregroundStyle(.white)
                    }
                    VStack {
                        Text("TUE")
                        Image(systemName: "sunrise")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                        Text("74o")
                            .font(.title3)
                            .foregroundStyle(.white)
                    }
                    VStack {
                        Text("TUE")
                        Image(systemName: "sunrise")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                        Text("74o")
                            .font(.title3)
                            .foregroundStyle(.white)
                    }
                    VStack {
                        Text("TUE")
                        Image(systemName: "sunrise")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                        Text("74o")
                            .font(.title3)
                            .foregroundStyle(.white)
                    }
                }
                Spacer()

                Button("Change Time of Day") {
                    print("Buttn Tapped")
                }.foregroundColor(.blue)
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
