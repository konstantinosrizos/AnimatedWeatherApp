//
//  WeatherView.swift
//  AnimatedWeatherApp
//
//  Created by Konstantinos Rizos on 21/8/22.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
		ZStack {
			// MARk: Background
			Color.background
				.ignoresSafeArea()
			
			// MARK: Weather Widget
			ScrollView(showsIndicators: false) {
				VStack(spacing: 20) {
					ForEach(Forecast.cities) { forecast in
						WeatherWidget(forecast: forecast)
					}
				}
			}
			.safeAreaInset(edge: .top) {
				EmptyView()
					.frame(height: 110)
			}
		}
		.overlay {
			// MARK: Navigation Bar
			NavigationBar()
		}
		.navigationBarHidden(true)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
			.preferredColorScheme(.dark)
    }
}
