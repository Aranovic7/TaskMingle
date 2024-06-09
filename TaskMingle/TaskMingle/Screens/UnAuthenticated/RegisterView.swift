import SwiftUI

struct RegisterView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var repeatPassword: String = ""
    @State private var errorMessage: String? = nil
    @State private var showError: Bool = false
    @State private var navigateToLogin: Bool = false
    @EnvironmentObject var firebaseManager: FirebaseManager
    
    var body: some View {
        VStack{
            Text("Register")
                .font(.title)
            
            TextField("Email", text: $email)
                .keyboardType(.emailAddress)
                .padding()
               // .background(Color(.systemGray5))
                .background(Color.white)
                .cornerRadius(10)
                .padding()
            
            SecureField("Password", text: $password)
                .padding()
               // .background(Color(.systemGray5))
                .background(Color.white)
                .cornerRadius(10)
                .padding()
            
            SecureField("Repeat password", text: $repeatPassword)
                .padding()
                //.background(Color(.systemGray5))
                .background(Color.white)
                .cornerRadius(10)
                .padding()
            
            if let errorMessage = errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .padding()
            }
            
            Button(action: {
                handleRegister()
            }, label: {
                Text("Create account")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding()
                    .frame(width: 300)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.5), Color.blue]), startPoint: .leading, endPoint: .trailing)
                    )
                    .cornerRadius(25)
                    .padding(.top)
            })
            
            NavigationLink(destination: LoginView(), isActive: $navigateToLogin) {
                         EmptyView()
                     }
        }
        .background(Image("RegisterDesign").resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
        )
    }
    
    private func handleRegister() {
        guard !email.isEmpty, !password.isEmpty, !repeatPassword.isEmpty else {
            errorMessage = "Please fill in all fields"
            showError = true
            return
        }
        
        guard password == repeatPassword else {
            errorMessage = "Passwords do not match"
            showError = true
            return
        }
        
        firebaseManager.registerUser(email: email, password: password) { result in
            switch result {
            case .success(let user):
                print("User registered: \(user.email ?? "No email")")
                // Handle successful registration (e.g., navigate to another view)
                errorMessage = nil
                showError = false
                email = ""
                password = ""
                repeatPassword = ""
                navigateToLogin = true
                
               
            case .failure(let error):
                errorMessage = error.localizedDescription
                showError = true
            }
        }
    }
}

#Preview {
    RegisterView().environmentObject(FirebaseManager())
}

