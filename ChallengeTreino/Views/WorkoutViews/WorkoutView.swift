//
//  TreinoView.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 25/05/22.
//

import SwiftUI

struct WorkoutView: View {
    @ObservedObject var viewModel: ViewModel
    @State private var showingSheet = false
    
    var body: some View {
        VStack {
            WorkoutsRowView(viewModel: viewModel)
            
            VStack(alignment: .trailing) {
                Button("") {
                    showingSheet = true
                }
                .buttonStyle(PurpleCircleGradienteButton())
                .padding(.leading, 220)
                .sheet(isPresented: $showingSheet) {
                    AddWorkoutView(viewModel: viewModel)
                }
            }
            .frame(maxWidth: .infinity)
            .background(.thinMaterial)
        }
        .accentColor(Color(.label))
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView(viewModel: ViewModel(dataServive: MockedNetworkProvider()))
    }
}
