require 'rails_helper'

RSpec.describe Restaurante do
  it {should have_many(:products)}
  it {should validate_presence_of :name}

  context 'testing total of products' do
    let(:restaurante) { FactoryBot.create(:restaurante) }
    let (:total) { rand(10) }

    before do
      (1..total).each do |item|
        FactoryBot.create(:product, restaurante: restaurante)
      end
    end

    it 'returns total of products for a specific restaurante' do
      expect(restaurante.total_producto).to eq total
    end
  end
end