//
//  FeedbackView.swift
//  nunu
//
//  Created by Riley Mitchell on 10/18/24.
//

import SwiftUI

struct FeedbackView: View {
    @State private var feedback: String = ""
    
    var storyTitle: String
    
    var body: some View {
        VStack {
            Text("Leave feedback for \(storyTitle)")
                .font(.title)
                .padding()
            
            TextEditor(text: $feedback)
                .frame(height: 200)
                .padding()
                .border(Color.gray, width: 1)
                .cornerRadius(5)
            
            Button(action: {
                saveFeedback(for: storyTitle, feedback: feedback)
            }) {
                Text("Submit Feedback")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .padding()
    }
    
    func saveFeedback(for story: String, feedback: String) {
        // Save feedback using UserDefaults for now
        var feedbackList = UserDefaults.standard.array(forKey: "feedbacks") as? [[String: String]] ?? []
        feedbackList.append(["story": story, "feedback": feedback])
        UserDefaults.standard.set(feedbackList, forKey: "feedbacks")
    }
}

struct FeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackView(storyTitle: "Sample Story")
    }
}

