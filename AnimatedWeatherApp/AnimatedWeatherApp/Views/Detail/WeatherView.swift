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
