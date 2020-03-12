class AmazonWrappersController < ApplicationController

    def client
        client = AmazonWrapper.new.client
        csv_parser = CsvParser.new
        daily_reports = client.get_object(bucket: "coronavirus-now-data", key: "jhu_csse_covid_19/202003031311/jhu_csse_covid_19_daily_reports__202003031311__202003031311.csv").body
        confirmed_cases = client.get_object(bucket: "coronavirus-now-data", key: "jhu_csse_covid_19/202003031311/jhu_csse_covid_19_time_series_confirmed__202003031311__202003031311.csv").body
        deaths = client.get_object(bucket: "coronavirus-now-data", key: "jhu_csse_covid_19/202003031311/jhu_csse_covid_19_time_series_deaths__202003031311__202003031311.csv").body
        recoveries = client.get_object(bucket: "coronavirus-now-data", key: "jhu_csse_covid_19/202003031311/jhu_csse_covid_19_time_series_recovered__202003031311__202003031311.csv").body
        # @parsed_confirmed_cases = csv_parser.createCSV(confirmed_cases)
        # @parsed_recoveries = csv_parser.createCSV(recoveries)
        @parsed_deaths = csv_parser.createCSV(deaths)
    end 
    
end
