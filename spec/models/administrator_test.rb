require 'test_helper'

class AdministratorTest < ActiveSupport::TestCase
  describe "$password=" do
    example "文字列を与えると、hashed_passwordの長さは60になる" do
      administrator = Administrator.new
      administrator.password = "hogehoge"
      expect(administrator.hashed_password).to be_kind_of(String)
      expect(administrator.hashed_password.size).to eq(60)
    end

    example "nilを与えると、hashed_passwordはnilになる" do
      administrator = Administrator.new(hashed_password: "piyo")
      administrator.password = nil
      expect(administrator.hashed_password).to be_nil
    end
  end
end
