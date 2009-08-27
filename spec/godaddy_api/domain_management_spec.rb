require "#{File.dirname(__FILE__)}/../spec_helper.rb"
require "#{File.dirname(__FILE__)}/../../lib/init.rb"

describe "Domains" do
  include GodaddyMocks
  
  before(:each) do
    mock_basics
    authenticate
  end
  
  
  describe "when cancelling" do
    before(:each) do
      mock_cancel
    end
    
    it "should cancel" do
      @connection.should_receive(:cancel).with(@cancel_params)
      GodaddyAPI::Domain.cancel(@domains)
      # uses resources and not domain strings
      pending
    end

    it "should return results as a hash" do
      pending
    end
  end
  
  describe "when disabling auto renew" do
    before(:each) do
      mock_disable_renew
    end
    
    it "should disable" do
      @connection.should_receive(:cancel).with(@disable_renew_params)
      GodaddyAPI::Domain.disable_autorenew(@domains)
      # uses resources and not domain strings
      pending
    end
    
    it "should return results as a hash" do
      pending
    end
  end
  
  describe "when undoing previous cancel/disable auto-renew command" do
    before(:each) do
      mock_undo_cancel
    end
    
    it "should undo" do
      @connection.should_receive(:cancel).with(@undo_params)
      GodaddyAPI::Domain.undo_cancel(@domains)
      # uses resources and not domain strings
      pending
    end
    
    it "should return results as a hash" do
      pending
    end
  end
  
  describe "when checking availability" do
    before(:each) do
      mock_availability
    end
    
    it "should check availability" do
      @connection.should_receive(:checkAvailability).with(@ca_params)
      GodaddyAPI::Domain.check_availability(@domains)
    end

    it "should return results as a hash" do
      GodaddyAPI::Domain.check_availability(@domains).should == { "example.com" => { :available => false, :back_order => true },
                                                      "example.org" => { :available => true, :back_order => true }}
    end
  end
  
  it "should retrieve info about domain" do
    pending
  end
  
  describe "when transferring domain" do
    it "should send a transfer email" do
      mock_transfer("sendEmail")
      @connection.should_receive(:manageTransfer).with(@transfer_params)
      GodaddyAPI::Domain.send_transfer_email(@domains)
      # uses resources/domain types and not domain strings
      pending
    end
    
    describe "and transferring in" do
      it "should restart transfer" do
        mock_transfer("restartXfrIn")
        @connection.should_receive(:manageTransfer).with(@transfer_params)
        GodaddyAPI::Domain.restart_inbound_transfer(@domains)
        # uses resources/domain types and not domain strings
        pending
      end

      it "should approve transfer" do
        mock_transfer("approveXfrIn")
        @connection.should_receive(:manageTransfer).with(@transfer_params)
        GodaddyAPI::Domain.approve_inbound_transfer(@domains)
        # uses resources/domain types and not domain strings
        pending
      end

      it "should deny transfer" do
        mock_transfer("denyXfrIn")
        @connection.should_receive(:manageTransfer).with(@transfer_params)
        GodaddyAPI::Domain.deny_inbound_transfer(@domains)
        # uses resources/domain types and not domain strings
        pending
      end
      
      it "should retry transfer" do
        mock_transfer("retryXfrIn")
        @connection.should_receive(:manageTransfer).with(@transfer_params)
        GodaddyAPI::Domain.retry_inbound_transfer(@domains)
        # uses resources/domain types and not domain strings
        pending
      end
      
      it "should cancel transfer" do
        mock_transfer("cancelXfrIn")
        @connection.should_receive(:manageTransfer).with(@transfer_params)
        GodaddyAPI::Domain.cancel_inbound_transfer(@domains)
        # uses resources/domain types and not domain strings
        pending
      end
      
    end
    
    describe "and transferring out" do
      it "should approve transfer" do
        mock_transfer("approveXfrOut")
        @connection.should_receive(:manageTransfer).with(@transfer_params)
        GodaddyAPI::Domain.approve_outbound_transfer(@domains)
        # uses resources/domain types and not domain strings
        pending
      end
      
      it "should deny transfer" do
        mock_transfer("denyXfrOut")
        @connection.should_receive(:manageTransfer).with(@transfer_params)
        GodaddyAPI::Domain.deny_outbound_transfer(@domains)
        # uses resources/domain types and not domain strings
        pending
      end
    end
  end
  
  it "should modify DNS entry" do
    @connection.should_receive(:modifyDNS).with(@dns_params)
    pending
  end
  
  describe "when suggesting alternatives" do    
    it "should give suggestions" do
      mock_suggestions("cheapexamples.com", nil, nil, nil, nil, nil, nil, nil, nil)
      @connection.should_receive(:nameGenDB).with(@suggestion_params)
      GodaddyAPI::Domain.find_suggestions("cheapexamples.com")
    end
    
    it "should limit results" do
      mock_suggestions("cheapexamples.com", 100, nil, nil, nil, nil, nil, nil, nil)
      @connection.should_receive(:nameGenDB).with(@suggestion_params)      
      GodaddyAPI::Domain.find_suggestions("cheapexamples.com", :max_results => 100)
    end
    
    it "should exclude taken domains" do
      mock_suggestions("cheapexamples.com", nil, true, nil, nil, nil, nil, nil, nil)
      GodaddyAPI::Domain.find_suggestions("cheapexamples.com", :exclude_taken => true)
    end
    
    it "should limit to given TLDs" do
      mock_suggestions("cheapexamples.com", nil, nil, "COM,1.0|NET,1.0", nil, nil, nil, nil, nil)
      GodaddyAPI::Domain.find_suggestions("cheapexamples.com", :tlds => ["com", "net"])
    end
    
    it "should add prefixes" do
      mock_suggestions("cheapexamples.com", nil, nil, nil, true, nil, nil, nil, nil)
      GodaddyAPI::Domain.find_suggestions("cheapexamples.com", :prefixes => true)
    end
    
    it "should add suffixes" do
      mock_suggestions("cheapexamples.com", nil, nil, nil, nil, true, nil, nil, nil)
      GodaddyAPI::Domain.find_suggestions("cheapexamples.com", :suffixes => true)
    end
    
    it "should add dashes" do
      mock_suggestions("cheapexamples.com", nil, nil, nil, nil, nil, true, nil, nil)
      GodaddyAPI::Domain.find_suggestions("cheapexamples.com", :dashes => true)
    end
    
    it "should find related" do
      mock_suggestions("cheapexamples.com", nil, nil, nil, nil, nil, nil, true, nil)
      GodaddyAPI::Domain.find_suggestions("cheapexamples.com", :related => true)
    end
    
    it "should do advanced word splitting" do
      mock_suggestions("cheapexamples.com", nil, nil, nil, nil, nil, nil, nil, true)
      GodaddyAPI::Domain.find_suggestions("cheapexamples.com", :advanced_split => true)
    end
  end
  
  it "should backorder domains" do
    pending
  end
  
  it "should add domain privacy" do
    pending
  end
  
  it "should renew domain" do
    pending
  end
  
  it "should order domain" do
    pending
  end
  
  it "should renew non-domain resources" do
    pending
  end
  
  it "should remove domain alert" do
    pending
  end
  
  it "should lock domain" do
    pending
  end
  
  it "should create domain alert" do
    pending
  end
  
  it "should update domain alert" do
    pending
  end
  
  it "should update contact information" do
    pending
  end
  
  it "should update forwarding" do
    pending
  end
  
  it "should update masking" do
    pending
  end
  
  it "should update ownership" do
    pending
  end
  
  it "should update nameserver" do
    pending
  end
  
  it "should validate registration" do
    pending
  end
end