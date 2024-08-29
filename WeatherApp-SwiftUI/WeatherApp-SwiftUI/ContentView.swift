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
            BackgroundView(colors: [.blue, .gray, .white])
            VStack(spacing: 40) {
                Text("Cupertino, CA")
                    .font(.title)
                    .foregroundStyle(.white)
                    .padding(.top, 20)
                Spacer()
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("76°")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundStyle(.white)
                }
                .padding(.bottom, 40)
                HStack(spacing: 20){
                    DayWeatherView(day: "TUE", imageName: "snow", temperature: 15)
                    DayWeatherView(day: "WED", imageName: "sunset.fill", temperature: 25)
                    DayWeatherView(day: "THU", imageName: "cloud.sun.fill", temperature: 30)
                    DayWeatherView(day: "FRI", imageName: "sun.max.fill", temperature: 40)
                    DayWeatherView(day: "SAT", imageName: "wind.snow", temperature: -3)
                }
                Spacer()
                Button {
                    print("Buttn Tapped")
                } label: {
                    Text("Change Time of Day")
                        .font(.headline)
                        .padding()
                }.background(.white)
                    .cornerRadius(10)
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

private struct BackgroundView: View {
    let colors: [Color]
    
    var body: some View {
        LinearGradient(colors: colors,
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea(edges: .all)
    }
}

private struct DayWeatherView: View {
    let day: String
    let imageName: String
    let temperature: Int
    
    var body: some View {
        VStack(spacing: 15) {
            Text(day)
                .font(.body)
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.title3)
                .foregroundStyle(.white)
        }
    }
}
