//
import SwiftUI

struct ContentDetailView: View {
    var contact: Contact!
    
    var body: some View {
        HStack{
            Image(contact.imageName)
            VStack(alignment: .leading) {
                Text("User: \(contact.name) \(contact.lastName)")
                Text("Nickname: \(contact.nickname)")
            }
        }
    }
}
