require 'rails_helper'

RSpec.describe Student, type: :model do

  describe 'relationships' do
    it { should belong_to(:cohort) }
  end

  describe 'validations' do 
    it { should validate_uniqueness_of(:email)}
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:preferred_name) }
    it { should validate_presence_of(:pronouns) }
    it { should validate_presence_of(:email) }
  end 

end 