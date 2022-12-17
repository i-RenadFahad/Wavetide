

import Foundation

struct OnboardingDataModel {
    var image: String
    var heading: String
    var text: String
}

extension OnboardingDataModel {
    static var data: [OnboardingDataModel] = [
        OnboardingDataModel(image: "logo", heading: "Welcome To WaveTide", text: "Where Water Is Our Friend."),
        OnboardingDataModel(image: "danger", heading: "Non Stop Fun!", text: " The Sky's The Limit With WaveTide!"),
        OnboardingDataModel(image: "danger", heading: "Easy Booking", text: "Through our Application You Can Explore All The Activities Around you and Book them without hassel."),
    ]
}
