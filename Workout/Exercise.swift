//
//  Exercise.swift
//  Workout
//
//  Created by Matthew Wylder on 10/23/24.
//

import Foundation

struct Exercise {
    
    struct Set {
        var reps: [Double]
    }

    var date: Date
    var name: String
    var sets: [Exercise.Set]
    
    init(date: Date = Date.now, name: String, sets: [Exercise.Set] = []) {
        self.date = date
        self.name = name
        self.sets = sets
    }
    
    var totalWeight: Double {
        var result = 0.0
        for set in sets {
            for rep in set.reps {
                result += rep
            }
        }
        return result
    }
}
