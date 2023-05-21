//
//  Model Contador.swift
//  LearningTask-5.3
//
//  Created by Luan.Lima on 25/08/22.
//

import Foundation

struct Contador {

    var numeroPrincipal = 0
    var numeroIncrementador: Int

    var numeroAlterado: Int

    init(numero adicionarIncrementoLabel: Int) {
        self.numeroIncrementador = adicionarIncrementoLabel
        self.numeroAlterado = numeroPrincipal
    }

    mutating func zerar(adicionarIncrementoLabel: Int) {
        self = Contador(numero: adicionarIncrementoLabel)
    }

}
