

import SwiftUI

struct OnboardingStepView: View {
    var data: OnboardingDataModel
    
    var body: some View {
        VStack {
            Text(data.heading)
                
                .font(.title)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .padding(.bottom, 50.0)
                .foregroundColor(Color("maincolor"))
        
            
                
            Image(data.image)
                .resizable(resizingMode: .stretch)
                .scaledToFit()

            
            
            Text(data.text)
                .font(.system(size: 40, design: .rounded))
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
        }
        .padding()
        .contentShape(Rectangle())
        .foregroundColor(Color("maincolor"))
    }
}

struct OnboardingStepView_Previews: PreviewProvider {
    static var data = OnboardingDataModel.data[0]
    static var previews: some View {
        OnboardingStepView(data: data)
    }
}
