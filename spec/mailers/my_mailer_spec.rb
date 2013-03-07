require "spec_helper"

describe MyMailer do
  describe "bemvindo" do
    let(:mail) { MyMailer.bemvindo }

    it "renders the headers" do
      mail.subject.should eq("Bemvindo")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
