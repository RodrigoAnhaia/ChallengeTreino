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
                }
            ExerciseView(viewModel: viewModel)
                .tabItem {
                    Image("exerIcon")
                    Text("Exercises")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}


struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView(viewModel: ViewModel())
    }
}
