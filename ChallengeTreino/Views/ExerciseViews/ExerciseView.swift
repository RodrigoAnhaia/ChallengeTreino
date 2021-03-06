//
//  ExerciseView.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 25/05/22.
//

import SwiftUI

struct ExerciseView: View {
    @ObservedObject var viewModel: ViewModel
    @State private var showingSheet = false
    
    var body: some View {
        VStack {
            ExerciseRowView(viewModel: viewModel, exercise: Exercise.init(name: 0, image: "", comments: ""))
            
            VStack(alignment: .trailing) {
                Button("") {
                    showingSheet = true
                }
                .buttonStyle(PurpleCircleGradienteButton())
                .padding(.leading, 220)
                .sheet(isPresented: $showingSheet) {
                    AddExerciseView(viewModel: viewModel)
                }
            }
            .frame(maxWidth: .infinity)
            .background(.thinMaterial)
        }
        .accentColor(Color(.label))
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var dataService = MockedNetworkProvider()
    
    static var previews: some View {
        ExerciseView(viewModel: ViewModel(dataServive: dataService))
    }
}
