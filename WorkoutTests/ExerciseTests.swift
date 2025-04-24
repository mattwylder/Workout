//
//  ExerciseTests.swift
//  WorkoutTests
//
//  Created by Matthew Wylder on 4/24/25.
//

import Testing
@testable import Workout

struct ExerciseTests {

    @Test func testTotalWeight() async throws {
        let sets: [Exercise.Set] = [
            Exercise.Set(reps: [80, 80, 80]),
            Exercise.Set(reps: [80, 80, 80])
        ]
        let exercise = Exercise(date: .now, name: "Chest Press", sets: sets)
        #expect(exercise.totalWeight == 480)
    }
}
