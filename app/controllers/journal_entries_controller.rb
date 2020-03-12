class JournalEntriesController < ApplicationController

    def create 
        anna = User.create(email: "anna", phone_number: "9149074672", zip_code: "10002", password_digest: "123")
        journal1 = Journal.create(title: "my first journal", user: anna)
        client = GoogleDriveWrapper.new.client
        content = params[:content]
        analyzed_text = client.analyze_sentiment content: content, type: :PLAIN_TEXT
        sentiment = analyzed_text.document_sentiment
        score = sentiment.score
        magnitude = sentiment.magnitude
        @entry = JournalEntry.create(journal: journal1, content: content, sentiment_score: score, sentiment_magnitude: magnitude)
        redirect_to journal_entry_path(@entry)
    end 

    def show 
        journal_entry = JournalEntry.find(params[:id])
        @content = journal_entry.content
        @sentiment_score = journal_entry.sentiment_score
        @magnitude_score = journal_entry.sentiment_magnitude
    end 
    
end
