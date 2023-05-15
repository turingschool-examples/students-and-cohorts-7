require 'rails_helper'

RSpec.describe Cohort, type: :model do

  describe 'relationships' do
    it { should have_many(:students) }
  end

  describe 'validations' do 
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:graduation_date) }
  end 

end