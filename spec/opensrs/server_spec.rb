require 'spec_helper'

describe OpenSRS::Server do
  before(:each) do
    @server = OpenSRS::Server.new
  end

  describe "#test xml processor" do
    context "on class initialization" do
      it { @server.xml_processor.should eql(OpenSRS::XmlProcessor::Nokogiri) }
    end

    context "on changing xml processor" do
      before(:each) do
        OpenSRS::Server.xml_processor = :libxml
      end

      it { @server.xml_processor.should eql(OpenSRS::XmlProcessor::Libxml) }
    end
  end
end
