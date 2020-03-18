class JournalEntriesController < ApplicationController

    def create
        zipcode = params[:zipcode]
        if (params[:user][:id] != "") 
            user = User.find(params[:user][:id])
        else 
            user = User.create(email: "anonymous", zipcode: zipcode)
        end
        coronavirus = Journal.create(title: "Coronavirus", user: user)
        client = GoogleDriveWrapper.new.client
        content = params[:content]
        analyzed_text = client.analyze_sentiment content: content, type: :PLAIN_TEXT
        sentiment = analyzed_text.document_sentiment
        sentiment = sentiment.score
        magnitude = sentiment.magnitude
        entry = JournalEntry.create(journal: coronavirus, zipcode: zipcode, content: content, sentiment: sentiment, magnitude: magnitude)
        render json: entry
    end 

    def show 
        journal_entry = JournalEntry.find(params[:id])
        render json: journal_entry, except: [:created_at, :updated_at], include: :journal
    end 

    def update_user
        journal_entry = JournalEntry.find(params[:journal_entry_id])
        journal = journal_entry.journal
        user = User.find(params[:user_id])
        journal.update(user: user)
        render json: journal_entry
    end 

    def index 
        if params[:user_id]     
            journal_entries = User.find(params[:user_id].to_i).coronavirus_journal_entries
        else 
            journal_entries = JournalEntry.all
        end 
        render json: journal_entries
    end 
    
end
