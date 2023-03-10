//
//  AreaViewModel.swift
//  Vertical
//
//  Created by Shawn Rodgers on 11/26/22.
//

import Foundation
import SwiftUI
import Combine
import Firebase
import FirebaseFirestore

class AreaViewModel: ObservableObject {
    
    @Published var area: Area
    @Published var areaClimbs: [AreaClimb]
    @Published var climb: ClimbProfileModel

    let AREAS_COLLECTION = Firestore.firestore().collection("areas")
    
    init(area: Area) {
        self.area = area
        self.areaClimbs = [AreaClimb]()
        self.climb = ClimbProfileModel(Name: "test", Grade: 4, Rating: 4, Area: "Test", Picture_URL: "Test")
    }
    
    func loadArea(id: String) async {
        do {
            self.area = try await fetchAreaInfo(id)
            self.area.climbs = try await fetchAreaClimbs(id)
        } catch {
            print(error)
        }
    }
    
    func setArea(area: Area) async {
        self.area = area
        if let id = area.id {
            do {
                self.area.climbs = try await fetchAreaClimbs(id)
            }
            catch {
                self.area.climbs = [AreaClimb]()
            }
        }
    }
    
    func fetchAreaInfo(_ areaID: String) async throws -> Area {
        let ref = try await Firestore.firestore().collection("areas").document(areaID).getDocument()
        return try ref.data(as: Area.self)
    }
    
    func fetchAreaClimbs(_ areaID: String) async throws -> [AreaClimb] {
        
        var climbs = [AreaClimb]()
        var climb = AreaClimb()
        
        let snapshot = try await AREAS_COLLECTION.document(areaID).collection("climbs").getDocuments()
        snapshot.documents.forEach { docSnap in
            let data = docSnap.data()
            let id = data["id"] as? String ?? "None"
            let name = data["name"] as? String ?? "None"
            let rank = data["rank"] as? Int ?? 0
            climb = AreaClimb(id: id, name: name, rank: rank)
            climbs.append(climb)
        }
        
        return climbs
        
    }
        
}
