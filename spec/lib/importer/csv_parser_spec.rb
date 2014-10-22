require 'spec_helper'
require 'app/models/concerns/import_module'
require 'lib/importer/item_parser'
require 'lib/importer/csv_parser'


RSpec.describe CsvParser do

  describe '#parse' do

    it 'loads the test CSV file' do
      items = CsvParser.new.parse('example_input.csv')
      expect(items.size).to eq(3)
      expect(items[0].description).to eq('$5 off 20 pack wedding photos')
      expect(items[1].purchaser.name).to eq('Bruce Wayne')
      expect(items[2].merchant.name).to eq('MiB')
    end

  end

end