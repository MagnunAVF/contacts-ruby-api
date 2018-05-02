require 'rails_helper'

RSpec.describe Contact, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }

  it "should validate that :email is in the right format" do
    expect(FactoryBot.build :contact).to be_valid
    expect(FactoryBot.build :contact, email: 'foo').to be_invalid
    expect(FactoryBot.build :contact, email: 'foo.').to be_invalid
    expect(FactoryBot.build :contact, email: 'foo@').to be_invalid
    expect(FactoryBot.build :contact, email: 'foo@bar').to be_invalid
    expect(FactoryBot.build :contact, email: 'foo@bar.').to be_invalid
    expect(FactoryBot.build :contact, email: '@bar').to be_invalid
    expect(FactoryBot.build :contact, email: '@bar.').to be_invalid
  end
end
