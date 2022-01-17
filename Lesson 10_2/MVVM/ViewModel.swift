//
//  ViewModel.swift
//  Lesson 10_2
//
//  Created by Kirill Gunich-Korol on 3.01.22.
//

import UIKit

class ViewModel {
    var array : [Currency] = []


func getInfo () {
    if let url = URL(string: "https://www.nbrb.by/api/exrates/rates?periodicity=0"),
    let data = try? Data(contentsOf: url),
       let arr = try? JSONDecoder().decode([Currency].self, from: data) {
        array = arr
    }

}
}
