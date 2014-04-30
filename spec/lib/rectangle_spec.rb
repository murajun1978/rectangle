require 'rectangle'

describe Rectangle do
  let(:rect){Rectangle.new(arg)}
  describe "area" do
    context "when argument is '1 2'" do
      let(:arg){"1 2\n"}
      it "returns 2" do
        expect(rect.area).to eq 2
      end
    end

    context "when argument is '１ ２'" do
      let(:arg){"１ ２\n"}
      it "returns 2" do
        expect(rect.area).to eq 2
      end
    end

    context "when argument is '１　２'" do
      let(:arg){"１　２\n"}
      it "returns 2" do
        expect(rect.area).to eq 2
      end
    end

    context "when argument is 'e b\n'" do
      let(:arg){"e b\n"}
      it "returns raise error" do
        expect{ rect.area }.to raise_error
      end
    end
  end

  describe "circumferential" do
    context "when argument is '1 2'" do
      let(:arg){"1 2\n"}
      it "returns 6" do
        expect(rect.circumferential).to eq 6
      end
    end

    context "when argument is 'e b'" do
      let(:arg){"e b\n"}
      it "returns raise error" do
        expect{ rect.circumferential }.to raise_error
      end
    end
  end
end
