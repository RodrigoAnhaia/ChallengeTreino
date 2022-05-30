//
//  TabView.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 18/05/22.
//

import SwiftUI

struct CustomTabView: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        TabView {
            WorkoutView(viewModel: viewModel)
                .tabItem {
                    Image("treinoIcon")
                    Text("Workouts")
                }.tag(0)
            ExerciseView(viewModel: viewModel)
                .tabItem {
                    Image("exerIcon")
                    Text("Exercises")
                }.tag(1)
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }.tag(2)  
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static let dataService = MockedNetworkProvider()
    
    static var previews: some View {
        CustomTabView(viewModel: ViewModel(dataServive: dataService))
    }
}
