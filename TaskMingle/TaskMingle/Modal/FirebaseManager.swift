//
//  FirebaseManager.swift
//  TaskMingle
//
//  Created by Aran Ali on 2024-06-09.
//

import Foundation
import Firebase

class FirebaseManager: ObservableObject {
    
    @Published var auth = Auth.auth()
    
    func registerUser(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
          // Först kolla om användaren redan finns
          checkIfUserExists(email: email) { exists in
              if exists {
                  let error = NSError(domain: "", code: 17007, userInfo: [NSLocalizedDescriptionKey: "User already exists"])
                  completion(.failure(error))
              } else {
                  // Om användaren inte finns, fortsätt med registrering
                  self.auth.createUser(withEmail: email, password: password) { authResult, error in
                      if let error = error {
                          completion(.failure(error))
                          return
                      }
                      if let user = authResult?.user {
                          completion(.success(user))
                      }
                  }
              }
          }
      }
    
    private func checkIfUserExists(email: String, completion: @escaping (Bool) -> Void) {
         auth.fetchSignInMethods(forEmail: email) { signInMethods, error in
             if let error = error {
                 print("Error checking if user exists: \(error.localizedDescription)")
                 completion(false)
                 return
             }
             if let signInMethods = signInMethods, !signInMethods.isEmpty {
                 // Användaren finns redan
                 completion(true)
             } else {
                 // Användaren finns inte
                 completion(false)
             }
         }
     }
    
}
