//
//  StatisticView.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 30/05/22.
//

import SwiftUI

struct StatisticView: View {
    @State private var selectedPicker = 0
    @State private var data: [[CGFloat]] = [[80, 30, 100, 40, 35, 120], [50, 40, 60, 33, 23, 115], [40, 121, 80, 55, 87, 25]]
    
    var body: some View {
        VStack {
            Text("Colory Intake")
                .font(.system(size: 34))
                .fontWeight(.heavy)
                .padding()
            
            Picker(selection: $selectedPicker, label: Text("")) {
                Text("Weekday").tag(0)
                Text("Afternoon").tag(1)
                Text("Evening").tag(2)
                
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 24)
            
            HStack(spacing: 16) {
                BarView(value: data[selectedPicker][0])
                BarView(value: data[selectedPicker][1])
                BarView(value: data[selectedPicker][2])
                BarView(value: data[selectedPicker][3])
                BarView(value: data[selectedPicker][4])
                BarView(value: data[selectedPicker][5])
            }
            .padding(.top, 24)
            .animation(.spring(), value: UUID())
            .padding()
        }
        .background(.thinMaterial)
        .edgesIgnoringSafeArea(.all)
        .accentColor(Color(.label))
     
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView()
    }
}
