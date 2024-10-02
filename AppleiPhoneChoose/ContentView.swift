//
//  ContentView.swift
//  AppleiPhoneChoose
//
//  Created by Eli Wuerth on 10/2/24.
//

import SwiftUI

// FinishItemView.swift
struct FinishItemView: View {
    var color = Color.clear
    var labelString = ""
    // other struct values
    init(color: Color, labelString: String) {
        self.color = color
        self.labelString = labelString
    }
    
    var body: some View {
        VStack {
            Circle()
                .fill(color)
                .frame(width: 24, height: 24)
            Text(labelString)
                .font(.system(size: 17))
        }
        .frame(width: 180, height: 80)
        .border(Color(.sRGB, red: 0.8, green: 0.8, blue: 0.8, opacity: 1.0))
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 2)
    }
}

struct CapacityOption: View {
    var capacity: String
    var price: String
    
    var body: some View {
        VStack {
            Text(capacity)
                .font(.system(size: 17))
            Text(price)
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
        }
        
        .frame(width: 180, height: 100)
        .background(Color.white)
        .border(Color(.sRGB, red: 0.8, green: 0.8, blue: 0.8, opacity: 1.0))
        .cornerRadius(10)
        .shadow(radius: 2)
    }
}

// ChooseYourFinishView.swift
struct ChooseYourFinishView: View {
    var body: some View {
        VStack(spacing: 20) {
                    Text("From $999 or $41.62/mo. before trade-in*")
                        .font(.system(size: 17))
                        .foregroundColor(.gray)
                        .padding(.top, 20)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Choose your finish.")
                            .font(.system(size: 24, weight: .bold))
                            
                        HStack{
                            FinishItemView(color: Color(.sRGB, red: 0.694, green: 0.776, blue: 0.851, opacity: 1.0), labelString: "Sierra Blue")
                            FinishItemView(color: Color(.sRGB, red: 0.953, green: 0.957, blue: 0.941, opacity: 1.0), labelString: "Silver")
                        }
                        
                        HStack{
                            FinishItemView(color: Color(.sRGB, red: 0.969, green: 0.925, blue: 0.843, opacity: 1.0), labelString: "Gold")
                            FinishItemView(color: Color(.sRGB, red: 0.376, green: 0.365, blue: 0.357, opacity: 1.0), labelString: "Graphite")
                        }
                        
                    }
                    .padding()
                    .cornerRadius(10)
  
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Choose your capacity.")
                            .font(.system(size: 24, weight: .bold))
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            
                        Text("Your current iPhone X is a 64 GB model.")
                            .foregroundColor(.gray)
                            .font(.subheadline)
                            .padding(EdgeInsets(top: -10, leading: 0, bottom: 0, trailing: 0))
                            
                        Text("How much capacity is right for you?")
                            .foregroundColor(.blue)
                            .font(.subheadline)
                            .padding(EdgeInsets(top:-10, leading: 0, bottom: 10, trailing: 0))
                            
                        
                        HStack(spacing: 20) {
                            CapacityOption(capacity: "128GB²", price: "From $999 or $41.62/mo. before trade-in*")
                            CapacityOption(capacity: "256GB²", price: "From $1099 or $45.79/mo. before trade-in*")
                        }
                        
                        HStack(spacing: 20) {
                            CapacityOption(capacity: "512GB²", price: "From $1299 or $54.12/mo. before trade-in*")
                            CapacityOption(capacity: "1TB²", price: "From $1499 or $62.45/mo. before trade-in*")
                        }
                    }
                    .padding()
                    .cornerRadius(10)
                    
                }
                .padding()
                .background(Color(.sRGB, red: 0.953, green: 0.953, blue: 0.969, opacity: 1.0))
            }
        }


// ContentView.swift
struct ContentView: View {
    var body: some View {
        ChooseYourFinishView()
            .background(Color(.sRGB, red: 0.953, green: 0.953, blue: 0.969, opacity: 1.0))
    }
}

#Preview {
    ContentView()
}
