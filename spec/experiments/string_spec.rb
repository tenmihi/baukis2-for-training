require "spec_helper"

describe String do
  describe "#<<" do
    example "Add Charactor" do
      s = "ABC"
      s << "D"
      expect(s.size).to eq(4)
    end

    example "nilの追加", :exception do
      s = "ABC"
      expect { s << nil }.to raise_error(TypeError)
    end
  end
end
