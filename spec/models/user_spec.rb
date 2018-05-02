require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_presence_of(:email) }

  it { should validate_uniqueness_of(:email) }

  it { should have_secure_password }

  it "should validate that :email is in the right format" do
    expect(FactoryBot.build :user).to be_valid
    expect(FactoryBot.build :user, email: 'foo').to be_invalid
    expect(FactoryBot.build :user, email: 'foo.').to be_invalid
    expect(FactoryBot.build :user, email: 'foo@').to be_invalid
    expect(FactoryBot.build :user, email: 'foo@bar').to be_invalid
    expect(FactoryBot.build :user, email: 'foo@bar.').to be_invalid
    expect(FactoryBot.build :user, email: '@bar').to be_invalid
    expect(FactoryBot.build :user, email: '@bar.').to be_invalid
  end
end
