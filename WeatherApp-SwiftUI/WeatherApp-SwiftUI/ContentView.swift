//
//  ContentView.swift
//  WeatherApp-SwiftUI
//
//  Created by Muhammed Rashid on 29/08/24.
//

import SwiftUI

struct ContentView: View {
    private let weathers: [DayWeather] = [
        .init(day: "TUE", imageName: "snow", temperature: 15),
        .init(day: "WED", imageName: "sunset.fill", temperature: 25),
        .init(day: "THU", imageName: "cloud.sun.fill", temperature: 30),
        .init(day: "FRI", imageName: "sun.max.fill", temperature: 40),
        .init(day: "SAT", imageName: "wind.snow", temperature: -3)
    ]
    
    @State var isNight: Bool = true
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack(spacing: 40) {
                CityView(name: "Cupertino, CA")
                Spacer()
                TodayWeatherView(temparature: 34, imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                .padding(.bottom, 40)
                WeekWeatherView(weathers: weathers)
                Spacer()
                Button {
                    isNight.toggle()
                } label: {
                    PrimaryButton(title: "Change Time of Day")
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

private struct BackgroundView: View {
    let isNight: Bool
    
    var body: some View {
        LinearGradient(colors: isNight ? [.black, .gray] : [.blue, .green],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea(edges: .all)
    }
}

private struct CityView: View {
    let name: String

    var body: some View {
        Text(name)
            .font(.title)
            .foregroundStyle(.white)
            .padding(.top, 20)
    }
}

private struct TodayWeatherView : View {
    let temparature: Int
    let imageName: String
    var body: some View {
        VStack(spacing: 8){
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temparature)°")
                .font(.title)
                .fontWeight(.medium)
                .foregroundStyle(.white)
        }
    }
}

private struct DayWeatherView: View {
    let dayWeather: DayWeather
    
    var body: some View {
        VStack(spacing: 15) {
            Text(dayWeather.day)
                .font(.body)
                .foregroundStyle(.white)
            Image(systemName: dayWeather.imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(dayWeather.temperature)°")
                .font(.title3)
                .foregroundStyle(.white)
        }
    }
}

struct WeekWeatherView: View {
    let weathers: [DayWeather]
    var body: some View {
        HStack(spacing: 20){
            ForEach(weathers, id: \.day) {
                DayWeatherView(dayWeather: $0)
            }
        }
    }
}

struct PrimaryButton: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.headline)
            .padding()
            .background(.white)
            .cornerRadius(10)
    }
}

struct DayWeather {
    let day: String
    let imageName: String
    let temperature: Int
}
