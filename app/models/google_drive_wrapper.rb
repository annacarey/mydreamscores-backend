require "google/cloud/language"

class GoogleDriveWrapper 
    attr_reader :client

    def initialize
        @client = Google::Cloud::Language.new(credentials: JSON.parse(ENV['GOOGLE_CREDENTIALS'])
    end 
end

