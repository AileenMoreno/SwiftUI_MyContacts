import SwiftUI

struct ContentView: View {
    @State var contacts: [Contact] = globantContacts
    var body: some View {
        NavigationView {
            List {
                Section {
                    Button(action: addUser) {
                        Text("Add User")
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }
                }
                Section {
                    ForEach(contacts) { contact in
                        return NavigationLink(destination: ContentDetailView(contact: contact)) {
                            HStack {
                                Image(contact.imageName)
                                VStack(alignment: .leading) {
                                    Text("User: \(contact.name) \(contact.lastName)")
                                    Text("Nickname: \(contact.nickname)")
                                }
                            }
                        }
                    }
                .onDelete(perform: deleteUser)
                }
        }
        .navigationBarTitle("Globant- Contacts")
        }
    }
    
    func addUser() {
        contacts.append(Contact(name: "Luis", lastName: "Esparragoza", nickname: "Luis", pod: .mobile))
    }
    
    func deleteUser(at offSet: IndexSet) {
        contacts.remove(atOffsets: offSet)
    }
}


