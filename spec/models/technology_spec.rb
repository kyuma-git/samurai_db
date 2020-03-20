require 'rails_helper'

RSpec.describe Technology, type: :model do
  describe '.connection_config' do
    subject { described_class.connection_config[:database] }

    it 'connects to the database for test' do
      is_expected.to match(/samurai_db_test/)
      is_expected.not_to match(/samurai_db_production/)
    end
  end

  describe 'validation' do
    let(:technology) { create(:technology) }

    it 'has valid values' do
      expect(technology).to be_valid
    end
  end
end
