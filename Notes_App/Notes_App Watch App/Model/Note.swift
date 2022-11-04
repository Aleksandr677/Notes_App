//
//  Note.swift
//  Notes_App Watch App
//
//  Created by Христиченко Александр on 2022-11-04.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
