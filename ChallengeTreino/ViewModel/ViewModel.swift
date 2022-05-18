//
//  ViewModel.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 17/05/22.
//

import Foundation
import CoreData

@MainActor class ViewModel: ObservableObject {
    @Published var treino: Treino?
    @Published var exercicio: Exercicio?
    
    var viewContext = PersistenceController.shared.container.viewContext

    func newTreino(nome: Int, descricao: String, data: Date) {
        treino?.nome = NSDecimalNumber(value: nome)
        treino?.descricao = descricao
        treino?.data = data
        
        do {
            try viewContext.save()
        } catch {
            print(error)
        }
    }
    
    func newExercicio(nome: Int, imagem: URL, observacoes: String) {
        exercicio?.nome = NSDecimalNumber(value: nome)
        exercicio?.imagem = imagem
        exercicio?.observacoes = observacoes
        
        do {
            try viewContext.save()
        } catch {
            print(error)
        }
        
    }
}

extension Treino {
    static var fetchAll: NSFetchRequest<Treino> {
        let request: NSFetchRequest<Treino> = Treino.fetchRequest()
        request.sortDescriptors = [NSSortDescriptor(keyPath: \Treino.nome, ascending: true)]
        return request
    }
}

extension Exercicio {
    static var fetchAll: NSFetchRequest<Exercicio> {
        let request: NSFetchRequest<Exercicio> = Exercicio.fetchRequest()
        request.sortDescriptors = [NSSortDescriptor(keyPath: \Exercicio.nome, ascending: true)]
        return request
    }
}
