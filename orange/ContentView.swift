//
//  ContentView.swift
//  orange
//
//  Created by madison on 12/13/20.
//

import SwiftUI

struct FriendCard: View {
    init(_ friend: User) {
        self.friend = friend
    }
     var friend: User
    
    var body: some View {
        GeometryReader { metrics in
            HStack {
                Image("pfp")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: metrics.size.height, height: metrics.size.height, alignment: .center)
                    .foregroundColor(.white)
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                    .background(Color.white)
                    .clipShape(Capsule())
    
                .padding()
//                Spacer()
                
                VStack(alignment: .center) {
                    Text(friend.name)
                        .font(.headline)
                        .lineLimit(1)
                    Text(friend.username)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .lineLimit(1)
                }
                .padding()
                
            }
            .frame(width: metrics.size.width, height: metrics.size.height, alignment: .leading)
            .cornerRadius(50)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color(.sRGB, red: 250/255, green: 0/255, blue: 0/255, opacity: 0.1), lineWidth: 2)
            )
            
        }
    }
    
}

struct FriendList: View {
    
    var body: some View {
        GeometryReader { metrics in
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10){
                    ForEach(0..<users.count) { i in
                        FriendCard(users[i])
                            .frame(width: metrics.size.width, height: 100, alignment: .center)
                    }
                }
            }
            .frame(width: metrics.size.width, height: metrics.size.height-1, alignment: .center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FriendList()
        }
    }
}
