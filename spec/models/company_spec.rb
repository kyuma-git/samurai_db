require 'rails_helper'

RSpec.describe Company, type: :model do

  describe '.connection_config' do
    subject { described_class.connection_config[:database] }

    it 'connects to the database for test' do
      is_expected.to match(/samurai_db_test/)
      is_expected.not_to match(/samurai_db_production/)
    end
  end

  describe 'association' do
    let(:association) do
       described_class.reflect_on_association(target)
    end

    context 'stage' do
      let(:target) { :stage }
      it { expect(association.macro).to eq :belongs_to }
      it { expect(association.class_name).to eq 'Stage' }
    end

    context 'source' do
      let(:target) { :source }
      it { expect(association.macro).to eq :belongs_to }
      it { expect(association.class_name).to eq 'Source' }
    end
  end

  describe 'validation' do
    let(:company) { create(:company) }

    it 'has valid values' do
      expect(company).to be_valid
    end
  end
end
