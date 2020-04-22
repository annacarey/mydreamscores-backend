require 'googleauth'

GOOGLE_SERVICE_ACCOUNT_CREDENTIALS=Google::Auth::ServiceAccountCredentials.make_creds(
    json_key_io: StringIO.new(ENV['GOOGLE_APPLICATION_CREDENTIALS'])
  )