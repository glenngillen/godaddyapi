module GodaddyMocks
  def authenticate
    GodaddyAPI::Authentication.new("fred","secret")
  end
  
  def mock_basics
    @uid = mock("uid", :generate => "62b90a10-73e6-012c-1f19-0019e33c1f85")
    UUID.stub!(:new).and_return(@uid)
    @connection = mock("connection")
    GodaddyAPI::Domain.stub!(:connection).and_return(@connection)
    
    # Work around the fact Rspec is weird with class attributes
    if GodaddyAPI::Authentication.credentials
      @credentials = GodaddyAPI::Domain.credentials
    else
      @credentials = mock("credentials")
      Credential.stub!(:new).and_return(@credentials)
    end
    @domains ||= ["example.com","example.org"]
  end
  
  def mock_availability    
    @ca_params ||= mock("ca_params")
    CheckAvailability.stub!(:new).with(@uid.generate,
            @credentials, @domains).and_return(@ca_params)    
    @connection.stub!(:checkAvailability).with(@ca_params).and_return(
      %Q{<CheckAvailabilityResponse xmlns="http://wildwestdomains.com/webservices/"><CheckAvailabilityResult>&lt;?xml version="1.0" encoding="UTF-16"?&gt;
      &lt;check&gt;
      	&lt;domain name="EXAMPLE.COM" avail="0" canBackorder="1"/&gt;
      	&lt;domain name="EXAMPLE.ORG" avail="1" canBackorder="1"/&gt;
      &lt;/check&gt;
      </CheckAvailabilityResult></CheckAvailabilityResponse>}
    )
  end
  
  def mock_cancel
    @cancel_params ||= mock("cancel_params")
    Cancel.stub!(:new).with(@uid.generate, @credentials, "immediate", @domains
        ).and_return(@cancel_params)
    @connection.stub!(:cancel).with(@cancel_params).and_return(
    %Q{<CancelResponse xmlns="http://wildwestdomains.com/webservices/"><CancelResult>&lt;response&gt;
      &lt;result code="1001"/&gt;
      &lt;resdata&gt;
    &lt;error msg="id 'example.com' is invalid"/&gt;
    &lt;error msg="id 'example.org' is invalid"/&gt;
      &lt;/resdata&gt;
    &lt;/response&gt;</CancelResult></CancelResponse>})
  end
  
  def mock_disable_renew
    @disable_renew_params ||= mock("disable_renew_params")
    Cancel.stub!(:new).with(@uid.generate, @credentials, "deferred", @domains
        ).and_return(@disable_renew_params)
    @connection.stub!(:cancel).with(@cancel_params).and_return(
    %Q{<CancelResponse xmlns="http://wildwestdomains.com/webservices/"><CancelResult>&lt;response&gt;
      &lt;result code="1001"/&gt;
      &lt;resdata&gt;
    &lt;error msg="id 'example.com' is invalid"/&gt;
    &lt;error msg="id 'example.org' is invalid"/&gt;
      &lt;/resdata&gt;
    &lt;/response&gt;</CancelResult></CancelResponse>})        
  end
  
  def mock_undo_cancel
    @undo_params ||= mock("undo_params")
    Cancel.stub!(:new).with(@uid.generate, @credentials, "restore", @domains
        ).and_return(@undo_params)
    @connection.stub!(:cancel).with(@cancel_params).and_return(
    %Q{<CancelResponse xmlns="http://wildwestdomains.com/webservices/"><CancelResult>&lt;response&gt;
      &lt;result code="1001"/&gt;
      &lt;resdata&gt;
    &lt;error msg="id 'example.com' is invalid"/&gt;
    &lt;error msg="id 'example.org' is invalid"/&gt;
      &lt;/resdata&gt;
    &lt;/response&gt;</CancelResult></CancelResponse>})
  end
  
  def mock_transfer(action = anything())
    @transfer_params ||= mock("transfer_params")
    ManageTransfer.stub!(:new).with(@uid.generate, @credentials, 
        @domains, action).and_return(@transfer_params)
    @connection.stub!(:transfer).with(@transfer_params).and_return(
    %Q{<CancelResponse xmlns="http://wildwestdomains.com/webservices/"><CancelResult>&lt;response&gt;
      &lt;result code="1001"/&gt;
      &lt;resdata&gt;
    &lt;error msg="id 'example.com' is invalid"/&gt;
    &lt;error msg="id 'example.org' is invalid"/&gt;
      &lt;/resdata&gt;
    &lt;/response&gt;</CancelResult></CancelResponse>})        
  end
end