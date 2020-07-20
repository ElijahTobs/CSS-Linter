require_relative '../lib/errors.rb'

RSpec.describe ErrorsModule do
  include ErrorsModule
  let(:chars_index) { 1 }
  let(:correct_format) { '  font-size: 16px;' } 
  
  
  
  describe '#indentation?' do
    let(:wrong_format) { 'font-size: 16px;' } 
    it 'returns true if the declared property has two spaced indentation' do
      f_string = 'font-size: 14px;'
      expect(indentation?(correct_format, chars_index)).to eql(true)
    end

    it 'prints error message if declared property is without two spaced indentation' do
      expect {indentation?(wrong_format, chars_index)}.to output(String).to_stdout
    end
  end
end
