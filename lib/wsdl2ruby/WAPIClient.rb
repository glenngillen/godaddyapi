#!/usr/bin/env ruby
require 'defaultDriver.rb'

endpoint_url = ARGV.shift
obj = WAPISoap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   ProcessRequest(parameters)
#
# ARGS
#   parameters      ProcessRequest - {http://wildwestdomains.com/webservices/}ProcessRequest
#
# RETURNS
#   parameters      ProcessRequestResponse - {http://wildwestdomains.com/webservices/}ProcessRequestResponse
#
parameters = nil
puts obj.processRequest(parameters)

# SYNOPSIS
#   Describe(parameters)
#
# ARGS
#   parameters      Describe - {http://wildwestdomains.com/webservices/}Describe
#
# RETURNS
#   parameters      DescribeResponse - {http://wildwestdomains.com/webservices/}DescribeResponse
#
parameters = nil
puts obj.describe(parameters)

# SYNOPSIS
#   CheckAvailability(parameters)
#
# ARGS
#   parameters      CheckAvailability - {http://wildwestdomains.com/webservices/}CheckAvailability
#
# RETURNS
#   parameters      CheckAvailabilityResponse - {http://wildwestdomains.com/webservices/}CheckAvailabilityResponse
#
parameters = nil
puts obj.checkAvailability(parameters)

# SYNOPSIS
#   Info(parameters)
#
# ARGS
#   parameters      Info - {http://wildwestdomains.com/webservices/}Info
#
# RETURNS
#   parameters      InfoResponse - {http://wildwestdomains.com/webservices/}InfoResponse
#
parameters = nil
puts obj.info(parameters)

# SYNOPSIS
#   NameGen(parameters)
#
# ARGS
#   parameters      NameGen - {http://wildwestdomains.com/webservices/}NameGen
#
# RETURNS
#   parameters      NameGenResponse - {http://wildwestdomains.com/webservices/}NameGenResponse
#
parameters = nil
puts obj.nameGen(parameters)

# SYNOPSIS
#   NameGenDB(parameters)
#
# ARGS
#   parameters      NameGenDB - {http://wildwestdomains.com/webservices/}NameGenDB
#
# RETURNS
#   parameters      NameGenDBResponse - {http://wildwestdomains.com/webservices/}NameGenDBResponse
#
parameters = nil
puts obj.nameGenDB(parameters)

# SYNOPSIS
#   NameGenDBWithTimeLimit(parameters)
#
# ARGS
#   parameters      NameGenDBWithTimeLimit - {http://wildwestdomains.com/webservices/}NameGenDBWithTimeLimit
#
# RETURNS
#   parameters      NameGenDBWithTimeLimitResponse - {http://wildwestdomains.com/webservices/}NameGenDBWithTimeLimitResponse
#
parameters = nil
puts obj.nameGenDBWithTimeLimit(parameters)

# SYNOPSIS
#   Poll(parameters)
#
# ARGS
#   parameters      Poll - {http://wildwestdomains.com/webservices/}Poll
#
# RETURNS
#   parameters      PollResponse - {http://wildwestdomains.com/webservices/}PollResponse
#
parameters = nil
puts obj.poll(parameters)

# SYNOPSIS
#   OrderCredits(parameters)
#
# ARGS
#   parameters      OrderCredits - {http://wildwestdomains.com/webservices/}OrderCredits
#
# RETURNS
#   parameters      OrderCreditsResponse - {http://wildwestdomains.com/webservices/}OrderCreditsResponse
#
parameters = nil
puts obj.orderCredits(parameters)

# SYNOPSIS
#   OrderDomains(parameters)
#
# ARGS
#   parameters      OrderDomains - {http://wildwestdomains.com/webservices/}OrderDomains
#
# RETURNS
#   parameters      OrderDomainsResponse - {http://wildwestdomains.com/webservices/}OrderDomainsResponse
#
parameters = nil
puts obj.orderDomains(parameters)

# SYNOPSIS
#   OrderDomainRenewals(parameters)
#
# ARGS
#   parameters      OrderDomainRenewals - {http://wildwestdomains.com/webservices/}OrderDomainRenewals
#
# RETURNS
#   parameters      OrderDomainRenewalsResponse - {http://wildwestdomains.com/webservices/}OrderDomainRenewalsResponse
#
parameters = nil
puts obj.orderDomainRenewals(parameters)

# SYNOPSIS
#   OrderPrivateDomainRenewals(parameters)
#
# ARGS
#   parameters      OrderPrivateDomainRenewals - {http://wildwestdomains.com/webservices/}OrderPrivateDomainRenewals
#
# RETURNS
#   parameters      OrderPrivateDomainRenewalsResponse - {http://wildwestdomains.com/webservices/}OrderPrivateDomainRenewalsResponse
#
parameters = nil
puts obj.orderPrivateDomainRenewals(parameters)

# SYNOPSIS
#   OrderDomainTransfers(parameters)
#
# ARGS
#   parameters      OrderDomainTransfers - {http://wildwestdomains.com/webservices/}OrderDomainTransfers
#
# RETURNS
#   parameters      OrderDomainTransfersResponse - {http://wildwestdomains.com/webservices/}OrderDomainTransfersResponse
#
parameters = nil
puts obj.orderDomainTransfers(parameters)

# SYNOPSIS
#   OrderDomainPrivacy(parameters)
#
# ARGS
#   parameters      OrderDomainPrivacy - {http://wildwestdomains.com/webservices/}OrderDomainPrivacy
#
# RETURNS
#   parameters      OrderDomainPrivacyResponse - {http://wildwestdomains.com/webservices/}OrderDomainPrivacyResponse
#
parameters = nil
puts obj.orderDomainPrivacy(parameters)

# SYNOPSIS
#   OrderResourceRenewals(parameters)
#
# ARGS
#   parameters      OrderResourceRenewals - {http://wildwestdomains.com/webservices/}OrderResourceRenewals
#
# RETURNS
#   parameters      OrderResourceRenewalsResponse - {http://wildwestdomains.com/webservices/}OrderResourceRenewalsResponse
#
parameters = nil
puts obj.orderResourceRenewals(parameters)

# SYNOPSIS
#   OrderDomainBackOrders(parameters)
#
# ARGS
#   parameters      OrderDomainBackOrders - {http://wildwestdomains.com/webservices/}OrderDomainBackOrders
#
# RETURNS
#   parameters      OrderDomainBackOrdersResponse - {http://wildwestdomains.com/webservices/}OrderDomainBackOrdersResponse
#
parameters = nil
puts obj.orderDomainBackOrders(parameters)

# SYNOPSIS
#   Cancel(parameters)
#
# ARGS
#   parameters      Cancel - {http://wildwestdomains.com/webservices/}Cancel
#
# RETURNS
#   parameters      CancelResponse - {http://wildwestdomains.com/webservices/}CancelResponse
#
parameters = nil
puts obj.cancel(parameters)

# SYNOPSIS
#   UpdateDomainOwnership(parameters)
#
# ARGS
#   parameters      UpdateDomainOwnership - {http://wildwestdomains.com/webservices/}UpdateDomainOwnership
#
# RETURNS
#   parameters      UpdateDomainOwnershipResponse - {http://wildwestdomains.com/webservices/}UpdateDomainOwnershipResponse
#
parameters = nil
puts obj.updateDomainOwnership(parameters)

# SYNOPSIS
#   ResetPassword(parameters)
#
# ARGS
#   parameters      ResetPassword - {http://wildwestdomains.com/webservices/}ResetPassword
#
# RETURNS
#   parameters      ResetPasswordResponse - {http://wildwestdomains.com/webservices/}ResetPasswordResponse
#
parameters = nil
puts obj.resetPassword(parameters)

# SYNOPSIS
#   SetShopperInfo(parameters)
#
# ARGS
#   parameters      SetShopperInfo - {http://wildwestdomains.com/webservices/}SetShopperInfo
#
# RETURNS
#   parameters      SetShopperInfoResponse - {http://wildwestdomains.com/webservices/}SetShopperInfoResponse
#
parameters = nil
puts obj.setShopperInfo(parameters)

# SYNOPSIS
#   CreateNewShopper(parameters)
#
# ARGS
#   parameters      CreateNewShopper - {http://wildwestdomains.com/webservices/}CreateNewShopper
#
# RETURNS
#   parameters      CreateNewShopperResponse - {http://wildwestdomains.com/webservices/}CreateNewShopperResponse
#
parameters = nil
puts obj.createNewShopper(parameters)

# SYNOPSIS
#   CheckUser(parameters)
#
# ARGS
#   parameters      CheckUser - {http://wildwestdomains.com/webservices/}CheckUser
#
# RETURNS
#   parameters      CheckUserResponse - {http://wildwestdomains.com/webservices/}CheckUserResponse
#
parameters = nil
puts obj.checkUser(parameters)

# SYNOPSIS
#   SetupDomainAlert(parameters)
#
# ARGS
#   parameters      SetupDomainAlert - {http://wildwestdomains.com/webservices/}SetupDomainAlert
#
# RETURNS
#   parameters      SetupDomainAlertResponse - {http://wildwestdomains.com/webservices/}SetupDomainAlertResponse
#
parameters = nil
puts obj.setupDomainAlert(parameters)

# SYNOPSIS
#   UpdateDomainAlert(parameters)
#
# ARGS
#   parameters      UpdateDomainAlert - {http://wildwestdomains.com/webservices/}UpdateDomainAlert
#
# RETURNS
#   parameters      UpdateDomainAlertResponse - {http://wildwestdomains.com/webservices/}UpdateDomainAlertResponse
#
parameters = nil
puts obj.updateDomainAlert(parameters)

# SYNOPSIS
#   RemoveDomainAlert(parameters)
#
# ARGS
#   parameters      RemoveDomainAlert - {http://wildwestdomains.com/webservices/}RemoveDomainAlert
#
# RETURNS
#   parameters      RemoveDomainAlertResponse - {http://wildwestdomains.com/webservices/}RemoveDomainAlertResponse
#
parameters = nil
puts obj.removeDomainAlert(parameters)

# SYNOPSIS
#   GetDomainAlertCredits(parameters)
#
# ARGS
#   parameters      GetDomainAlertCredits - {http://wildwestdomains.com/webservices/}GetDomainAlertCredits
#
# RETURNS
#   parameters      GetDomainAlertCreditsResponse - {http://wildwestdomains.com/webservices/}GetDomainAlertCreditsResponse
#
parameters = nil
puts obj.getDomainAlertCredits(parameters)

# SYNOPSIS
#   GetMonitoredDomainList(parameters)
#
# ARGS
#   parameters      GetMonitoredDomainList - {http://wildwestdomains.com/webservices/}GetMonitoredDomainList
#
# RETURNS
#   parameters      GetMonitoredDomainListResponse - {http://wildwestdomains.com/webservices/}GetMonitoredDomainListResponse
#
parameters = nil
puts obj.getMonitoredDomainList(parameters)

# SYNOPSIS
#   GetExpiringNameList(parameters)
#
# ARGS
#   parameters      GetExpiringNameList - {http://wildwestdomains.com/webservices/}GetExpiringNameList
#
# RETURNS
#   parameters      GetExpiringNameListResponse - {http://wildwestdomains.com/webservices/}GetExpiringNameListResponse
#
parameters = nil
puts obj.getExpiringNameList(parameters)

# SYNOPSIS
#   DomainForwarding(parameters)
#
# ARGS
#   parameters      DomainForwarding - {http://wildwestdomains.com/webservices/}DomainForwarding
#
# RETURNS
#   parameters      DomainForwardingResponse - {http://wildwestdomains.com/webservices/}DomainForwardingResponse
#
parameters = nil
puts obj.domainForwarding(parameters)

# SYNOPSIS
#   UpdateNameServer(parameters)
#
# ARGS
#   parameters      UpdateNameServer - {http://wildwestdomains.com/webservices/}UpdateNameServer
#
# RETURNS
#   parameters      UpdateNameServerResponse - {http://wildwestdomains.com/webservices/}UpdateNameServerResponse
#
parameters = nil
puts obj.updateNameServer(parameters)

# SYNOPSIS
#   UpdateDomainContact(parameters)
#
# ARGS
#   parameters      UpdateDomainContact - {http://wildwestdomains.com/webservices/}UpdateDomainContact
#
# RETURNS
#   parameters      UpdateDomainContactResponse - {http://wildwestdomains.com/webservices/}UpdateDomainContactResponse
#
parameters = nil
puts obj.updateDomainContact(parameters)

# SYNOPSIS
#   SetDomainLocking(parameters)
#
# ARGS
#   parameters      SetDomainLocking - {http://wildwestdomains.com/webservices/}SetDomainLocking
#
# RETURNS
#   parameters      SetDomainLockingResponse - {http://wildwestdomains.com/webservices/}SetDomainLockingResponse
#
parameters = nil
puts obj.setDomainLocking(parameters)

# SYNOPSIS
#   ManageTransfer(parameters)
#
# ARGS
#   parameters      ManageTransfer - {http://wildwestdomains.com/webservices/}ManageTransfer
#
# RETURNS
#   parameters      ManageTransferResponse - {http://wildwestdomains.com/webservices/}ManageTransferResponse
#
parameters = nil
puts obj.manageTransfer(parameters)

# SYNOPSIS
#   UpdateDomainForwarding(parameters)
#
# ARGS
#   parameters      UpdateDomainForwarding - {http://wildwestdomains.com/webservices/}UpdateDomainForwarding
#
# RETURNS
#   parameters      UpdateDomainForwardingResponse - {http://wildwestdomains.com/webservices/}UpdateDomainForwardingResponse
#
parameters = nil
puts obj.updateDomainForwarding(parameters)

# SYNOPSIS
#   UpdateDomainMasking(parameters)
#
# ARGS
#   parameters      UpdateDomainMasking - {http://wildwestdomains.com/webservices/}UpdateDomainMasking
#
# RETURNS
#   parameters      UpdateDomainMaskingResponse - {http://wildwestdomains.com/webservices/}UpdateDomainMaskingResponse
#
parameters = nil
puts obj.updateDomainMasking(parameters)

# SYNOPSIS
#   ModifyDNS(parameters)
#
# ARGS
#   parameters      ModifyDNS - {http://wildwestdomains.com/webservices/}ModifyDNS
#
# RETURNS
#   parameters      ModifyDNSResponse - {http://wildwestdomains.com/webservices/}ModifyDNSResponse
#
parameters = nil
puts obj.modifyDNS(parameters)

# SYNOPSIS
#   ValidateRegistration(parameters)
#
# ARGS
#   parameters      ValidateRegistration - {http://wildwestdomains.com/webservices/}ValidateRegistration
#
# RETURNS
#   parameters      ValidateRegistrationResponse - {http://wildwestdomains.com/webservices/}ValidateRegistrationResponse
#
parameters = nil
puts obj.validateRegistration(parameters)


