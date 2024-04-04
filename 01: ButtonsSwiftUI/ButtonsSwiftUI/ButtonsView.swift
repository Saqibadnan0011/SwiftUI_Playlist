//
//  ButtonsView.swift
//  ButtonsSwiftUI
//
//  Created by Saqib Adnan on 27/03/2024.
//

import SwiftUI

struct ButtonsView: View {
        
    var body: some View {
        ZStack {
            HStack(spacing: 10) {
                ToggleButtons()
                Spacer()
                CircleIconButtons()
            }
            .padding(40)
        }
        HStack {
            CaptionIconButtons()
        }
        Spacer()
        HStack {
            CheckMarkButtons()
            Spacer()
            CheckMarkButton2()
        }
        .padding(40)
        Spacer()
        VStack {
            HStack {
                TextAndImageButtons()
            }
        }
    }
}

#Preview {
    ButtonsView()
}


struct ToggleButtons: View {
    @State var isActive = false

    var body: some View {
        VStack {
            Image(systemName: "house.fill")
                .frame(width: 50, height: 50)
                .foregroundColor(isActive ? .cyan : .black)
                .background(isActive ? .black : .clear)
                .cornerRadius(15)
                .overlay {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.black)
                }
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.9).repeatForever()) {
                        isActive.toggle()
                    }
            }
            Text("Simple Button")
        }
    }
}


struct CircleIconButtons: View {
    @State var isActive = false
    
    var body: some View {
        VStack {
            Image(systemName: "house.fill")
                .foregroundColor(isActive ? .cyan : .black)
                .background(isActive ? .black : .white)
                .frame(width: 52, height: 52)
                //.cornerRadius(15)
                .overlay {
                    Circle()
                        //.cornerRadius(30)
                        .strokeBorder(Color.black) 
                }
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.9).repeatForever()) {
                        isActive.toggle()
                    }
            }
            Text("Circle Button")
        }
    }
}


struct CaptionIconButtons: View {
    @State var isActive =  false
    
    var body: some View {
        Button(action: {
            // action
        }, label: {
            VStack {
                VStack (spacing: 8) {
                    Image(systemName: "house.fill")
                        .frame(width: 50, height: 50)
                        .foregroundColor(isActive ? .cyan : .black)
                        .background(isActive ? .black : .clear)
                        .cornerRadius(15)
                        .overlay {
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black)
                        }
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.9).repeatForever()) {
                                isActive.toggle()
                            }
                        }
                    Text(isActive ? "Home" : "")
                        .foregroundStyle(isActive ? .black : .white)
                        .font(.system(size: 12).weight(.light))
                }
                Text("Caption Button")
                    .foregroundStyle(.black)
            }
        })
    }
}


struct CheckMarkButtons: View {
    @State var isActive = false
    
    var body: some View {
        VStack {
            HStack (spacing: 12) {
                Text("Click the Mark")
                    .font(.system(size: 12).weight(.medium))
                    .foregroundStyle(isActive ? .cyan
                                     : .black)
                //Spacer()
                Image(systemName: isActive ? "checkmark.circle.fill" : "")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(isActive ? .cyan : .black)
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(isActive ? .white : .black)
                    }
            }
            .padding(20)
            .frame(height: 52)
            .background(isActive ? .black : .white)
            .cornerRadius(15)
            .overlay {
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.black)
            }
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.9).repeatForever()) {
                    isActive.toggle()
                }
        }
            Text("CheckMark with Text ")
        }
    }
}

struct CheckMarkButton2: View {
    @State var isActive = false
    
    var body: some View {
        VStack {
            HStack (spacing: 12) {
                //Spacer()
                Image(systemName: isActive ? "checkmark.circle.fill" : "")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(isActive ? .cyan : .white)
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(isActive ? .white : .black)
                    }
            }
            .padding(20)
            .frame(width: 52,height: 52)
            .background(isActive ? .black : .white)
            .cornerRadius(10)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black)
            }
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.9).repeatForever()) {
                    isActive.toggle()
                }
        }
            Text("CheckMark")
        }
    }
}

struct TextAndImageButtons: View {
    @State var isActive = false
    
    var body: some View {
        Button(action: {
            // action
        }, label: {
            VStack {
                HStack(spacing: 20) {
                    Image(systemName: "house.fill")
                    Text("Home Page")
                }
                .font(.system(size: 16).weight(.medium))
                .foregroundColor(isActive ? .cyan : .black)
                .frame(maxWidth: 310, maxHeight: 53)
                .background(isActive ? .black : .white)
                .cornerRadius(15)
                .overlay {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.black)
                }
                .padding()
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.9).repeatForever()) {
                        isActive.toggle()
                    }
            }
                Text("Button with Icon and Text")
                    .foregroundStyle(.black)
            }
        })
    }
}
