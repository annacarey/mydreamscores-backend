class GoogleDriveWrappersController < ApplicationController

    def client
        client = GoogleDriveWrapper.new.client
        @text = "Hello I really love Dean he is my love!"
        analyzed_text = client.analyze_sentiment content: @text, type: :PLAIN_TEXT
        sentiment = analyzed_text.document_sentiment
        @score = sentiment.score
        @magnitude = sentiment.magnitude
    end 

end
