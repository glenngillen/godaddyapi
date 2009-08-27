module GodaddyAPI
  class Domain < GodaddyAPI::Base
    def self.cancel(domains)
      params = Cancel.new(UUID.new.generate, credentials, "immediate", domains)
      response = connection.cancel(params)
    end

    def self.disable_autorenew(domains)
      params = Cancel.new(UUID.new.generate, credentials, "deferred", domains)
      response = connection.cancel(params)
    end

    def self.undo_cancel(domains)
      params = Cancel.new(UUID.new.generate, credentials, "restore", domains)
      response = connection.cancel(params)
    end

    
    def self.check_availability(domains)
      params = CheckAvailability.new(UUID.new.generate, credentials, domains)
      response = connection.checkAvailability(params)
      domains = decode_to_hash(response)["CheckAvailabilityResult"]["check"]["domain"]
      domains.inject({}) do |initial, domain| 
        initial[domain["name"].downcase] = { :available => domain["avail"] == "1" ? true : false,
                                             :back_order => domain["canBackorder"] == "1" ? true : false }
        initial
      end
    end
    
    def self.send_transfer_email(domains)      
      params = ManageTransfer.new(UUID.new.generate, credentials, domains, "sendEmail")
      response = connection.manageTransfer(params)
    end
    
    def self.restart_inbound_transfer(domains)      
      params = ManageTransfer.new(UUID.new.generate, credentials, domains, "restartXfrIn")
      response = connection.manageTransfer(params)
    end

    def self.approve_inbound_transfer(domains)      
      params = ManageTransfer.new(UUID.new.generate, credentials, domains, "approveXfrIn")
      response = connection.manageTransfer(params)
    end
    
    def self.deny_inbound_transfer(domains)      
      params = ManageTransfer.new(UUID.new.generate, credentials, domains, "denyXfrIn")
      response = connection.manageTransfer(params)
    end
    
    def self.retry_inbound_transfer(domains)      
      params = ManageTransfer.new(UUID.new.generate, credentials, domains, "retryXfrIn")
      response = connection.manageTransfer(params)
    end

    def self.cancel_inbound_transfer(domains)      
      params = ManageTransfer.new(UUID.new.generate, credentials, domains, "cancelXfrIn")
      response = connection.manageTransfer(params)
    end
    
    def self.approve_outbound_transfer(domains)      
      params = ManageTransfer.new(UUID.new.generate, credentials, domains, "approveXfrOut")
      response = connection.manageTransfer(params)
    end
    
    def self.deny_outbound_transfer(domains)      
      params = ManageTransfer.new(UUID.new.generate, credentials, domains, "denyXfrOut")
      response = connection.manageTransfer(params)
    end
    
    def self.find_suggestions(domain, opts = {})
      args = []
      args << (opts[:max_results] ? opts[:max_results] : nil)
      args << (opts[:exclude_taken] ? true : nil)
      args << (opts[:tlds] ? "#{opts[:tlds].map{|t| t.upcase}.join(",1.0|")},1.0" : nil)
      args << (opts[:prefixes] ? true : nil)
      args << (opts[:suffixes] ? true : nil)
      args << (opts[:dashes] ? true : nil)
      args << (opts[:related] ? true : nil)
      args << (opts[:advanced_split] ? true : nil)
      params = NameGenDB.new(UUID.new.generate, credentials, domain, *args)
      response = connection.nameGenDB(params)
    end
  end
end