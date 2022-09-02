require "rails_helper"

describe Admin::Authenticator do
  describe "#authenticate" do
    example "正しいパスワードならtrueを返す" do
      m = build(:administrator)
      expect(Admin::Authenticator.new(m).authenticate("hoge_pw")).to be_truthy
    end

    example "誤ったパスワードならfalseを返す" do
      m = build(:administrator)
      expect(Admin::Authenticator.new(m).authenticate("xy")).to be_falsey
    end

    example "パスワード未設定なら" do
      m = build(:administrator, password: nil)
      expect(Admin::Authenticator.new(m).authenticate(nil)).to be_falsey
    end
  end
end