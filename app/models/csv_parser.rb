require 'csv'

class CsvParser

    def createCSV(stringIoData)
        table = CSV.parse(stringIoData, headers: true)
    end 

end
