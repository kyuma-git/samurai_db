require 'rails_helper'

RSpec.describe Source, type: :model do

  describe '.connection_config' do
    subject { described_class.connection_config[:database] }

    it 'connects to the database for test' do
      is_expected.to match(/samurai_db_test/)
      is_expected.not_to match(/samurai_db_production/)
    end
  end

  describe 'validation' do
    let(:source) { create(:source) }

    it 'has name and url' do
      expect(source).to be_valid
    end
  end
end
