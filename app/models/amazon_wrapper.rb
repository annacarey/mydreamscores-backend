require 'aws-sdk-s3' 
require 'json'

class AmazonWrapper 
    
    attr_reader :client, :bucket

    def initialize 
        aws_access_key_id = ENV["aws_access_key_id"] 
        aws_secret_access_key = ENV["aws_secret_access_key"]

        @client = Aws::S3::Client.new(
            region: 'us-east-1',
            access_key_id: aws_access_key_id,
            secret_access_key: aws_secret_access_key
            )
    end 

end 