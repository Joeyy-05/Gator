import SwiftUI

struct LoadingScreen: View {
    @AppStorage("userName") private var userName: String = ""
    @State private var showSplash = true
    @State private var imageScale: CGFloat = 0.5
    @State private var textOpacity: Double = 0
    @State private var textOffset: CGFloat = 20
    
    @State private var showReveal = false
    @State private var circleScale: CGFloat = 0.01
    
    var onFinish: () -> Void
    
    var body: some View {
        ZStack {
            if showReveal {
                ZStack {
                    if userName.isEmpty {
                        OnboardingView()
                    } else {
                        HomeView(userName: userName)
                    }
                }
                .mask(
                    Circle()
                        .frame(width: 100, height: 100)
                        .scaleEffect(circleScale)
                        .position(x: UIScreen.main.bounds.width / 2,
                                  y: UIScreen.main.bounds.height / 2)
                )
                .onAppear {
                    withAnimation(.easeInOut(duration: 1.0)) {
                        circleScale = 12.0
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        onFinish()
                    }
                }
            }

            if showSplash {
                ZStack(alignment: .bottom) {
                    Color.green.ignoresSafeArea()
                    
                    VStack {
                        Spacer()
                        
                        VStack(spacing: 20) {
                            Image("Gator")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height: 240) 
                                .scaleEffect(imageScale)
                                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5)

                            
                            Text("Welcome to Gator")
                                .font(.system(size: 26, weight: .bold, design: .rounded))
                                .foregroundColor(Color("TextColor"))
                                .opacity(textOpacity)
                                .offset(y: textOffset)
                        }
                        
                        Spacer()
                        
                        Rectangle()
                            .fill(Color.clear)
                            .frame(height: 60)
                    }
                    
                    Text("Made by Kelompok MIC")
                        .font(.footnote)
                        .foregroundColor(Color("TextColor").opacity(0.8))
                        .padding(.bottom, 16)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .opacity(textOpacity)
                }
                .onAppear {

                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {

                        withAnimation(.interpolatingSpring(
                            mass: 1.0,
                            stiffness: 100,
                            damping: 10,
                            initialVelocity: 0
                        )) {
                            imageScale = 1.1
                        }
                        

                        withAnimation(.easeOut(duration: 0.8).delay(0.4)) {
                            textOpacity = 1
                            textOffset = 0
                        }
                        

                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                            withAnimation(.easeInOut(duration: 0.3)) {
                                imageScale = 1.0
                            }
                        }
                    }
                    

                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                        withAnimation(.easeOut(duration: 0.5)) {
                            showSplash = false
                            showReveal = true
                        }
                    }
                }
            }
        }
    }
}


