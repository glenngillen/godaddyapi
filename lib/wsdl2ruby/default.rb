require 'xsd/qname'

# {http://wildwestdomains.com/webservices/}Credential
#   account - SOAP::SOAPString
#   password - SOAP::SOAPString
class Credential
  attr_accessor :account
  attr_accessor :password

  def initialize(account = nil, password = nil)
    @account = account
    @password = password
  end
end

# {http://wildwestdomains.com/webservices/}ArrayOfString
class ArrayOfString < ::Array
end

# {http://wildwestdomains.com/webservices/}Shopper
#   user - SOAP::SOAPString
#   pwd - SOAP::SOAPString
#   pwdhint - SOAP::SOAPString
#   email - SOAP::SOAPString
#   firstname - SOAP::SOAPString
#   lastname - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   pin - SOAP::SOAPString
#   dbpuser - SOAP::SOAPString
#   dbppwd - SOAP::SOAPString
#   dbppwdhint - SOAP::SOAPString
#   dbpemail - SOAP::SOAPString
#   dbppin - SOAP::SOAPString
class Shopper
  attr_accessor :user
  attr_accessor :pwd
  attr_accessor :pwdhint
  attr_accessor :email
  attr_accessor :firstname
  attr_accessor :lastname
  attr_accessor :phone
  attr_accessor :pin
  attr_accessor :dbpuser
  attr_accessor :dbppwd
  attr_accessor :dbppwdhint
  attr_accessor :dbpemail
  attr_accessor :dbppin

  def initialize(user = nil, pwd = nil, pwdhint = nil, email = nil, firstname = nil, lastname = nil, phone = nil, pin = nil, dbpuser = nil, dbppwd = nil, dbppwdhint = nil, dbpemail = nil, dbppin = nil)
    @user = user
    @pwd = pwd
    @pwdhint = pwdhint
    @email = email
    @firstname = firstname
    @lastname = lastname
    @phone = phone
    @pin = pin
    @dbpuser = dbpuser
    @dbppwd = dbppwd
    @dbppwdhint = dbppwdhint
    @dbpemail = dbpemail
    @dbppin = dbppin
  end
end

# {http://wildwestdomains.com/webservices/}ArrayOfOrderItem
class ArrayOfOrderItem < ::Array
end

# {http://wildwestdomains.com/webservices/}Order
# abstract
class Order
  def initialize
  end
end

# {http://wildwestdomains.com/webservices/}OrderItem
#   productid - SOAP::SOAPInt
#   quantity - SOAP::SOAPUnsignedInt
#   riid - SOAP::SOAPString
#   duration - SOAP::SOAPDouble
class OrderItem < Order
  attr_accessor :productid
  attr_accessor :quantity
  attr_accessor :riid
  attr_accessor :duration

  def initialize(productid = nil, quantity = nil, riid = nil, duration = nil)
    @productid = productid
    @quantity = quantity
    @riid = riid
    @duration = duration
  end
end

# {http://wildwestdomains.com/webservices/}DomainRegistration
#   order - OrderItem
#   sld - SOAP::SOAPString
#   tld - SOAP::SOAPString
#   period - SOAP::SOAPInt
#   registrant - ContactInfo
#   nexus - Nexus
#   nsArray - ArrayOfNS
#   admin - ContactInfo
#   billing - ContactInfo
#   tech - ContactInfo
#   autorenewflag - SOAP::SOAPInt
class DomainRegistration < Order
  attr_accessor :order
  attr_accessor :sld
  attr_accessor :tld
  attr_accessor :period
  attr_accessor :registrant
  attr_accessor :nexus
  attr_accessor :nsArray
  attr_accessor :admin
  attr_accessor :billing
  attr_accessor :tech
  attr_accessor :autorenewflag

  def initialize(order = nil, sld = nil, tld = nil, period = nil, registrant = nil, nexus = nil, nsArray = nil, admin = nil, billing = nil, tech = nil, autorenewflag = nil)
    @order = order
    @sld = sld
    @tld = tld
    @period = period
    @registrant = registrant
    @nexus = nexus
    @nsArray = nsArray
    @admin = admin
    @billing = billing
    @tech = tech
    @autorenewflag = autorenewflag
  end
end

# {http://wildwestdomains.com/webservices/}DomainByProxy
#   order - OrderItem
#   sld - SOAP::SOAPString
#   tld - SOAP::SOAPString
#   resourceid - SOAP::SOAPString
class DomainByProxy < Order
  attr_accessor :order
  attr_accessor :sld
  attr_accessor :tld
  attr_accessor :resourceid

  def initialize(order = nil, sld = nil, tld = nil, resourceid = nil)
    @order = order
    @sld = sld
    @tld = tld
    @resourceid = resourceid
  end
end

# {http://wildwestdomains.com/webservices/}DomainRenewal
#   order - OrderItem
#   resourceid - SOAP::SOAPString
#   sld - SOAP::SOAPString
#   tld - SOAP::SOAPString
#   period - SOAP::SOAPInt
class DomainRenewal < Order
  attr_accessor :order
  attr_accessor :resourceid
  attr_accessor :sld
  attr_accessor :tld
  attr_accessor :period

  def initialize(order = nil, resourceid = nil, sld = nil, tld = nil, period = nil)
    @order = order
    @resourceid = resourceid
    @sld = sld
    @tld = tld
    @period = period
  end
end

# {http://wildwestdomains.com/webservices/}ResourceRenewal
#   order - OrderItem
#   resourceid - SOAP::SOAPString
class ResourceRenewal < Order
  attr_accessor :order
  attr_accessor :resourceid

  def initialize(order = nil, resourceid = nil)
    @order = order
    @resourceid = resourceid
  end
end

# {http://wildwestdomains.com/webservices/}DomainTransfer
#   order - OrderItem
#   sld - SOAP::SOAPString
#   tld - SOAP::SOAPString
#   authInfo - SOAP::SOAPString
class DomainTransfer < Order
  attr_accessor :order
  attr_accessor :sld
  attr_accessor :tld
  attr_accessor :authInfo

  def initialize(order = nil, sld = nil, tld = nil, authInfo = nil)
    @order = order
    @sld = sld
    @tld = tld
    @authInfo = authInfo
  end
end

# {http://wildwestdomains.com/webservices/}DomainBackOrder
#   order - OrderItem
#   privateBackOrder - SOAP::SOAPBoolean
#   sld - SOAP::SOAPString
#   tld - SOAP::SOAPString
#   registrant - ContactInfo
#   nexus - Nexus
#   admin - ContactInfo
#   billing - ContactInfo
#   tech - ContactInfo
class DomainBackOrder < Order
  attr_accessor :order
  attr_accessor :privateBackOrder
  attr_accessor :sld
  attr_accessor :tld
  attr_accessor :registrant
  attr_accessor :nexus
  attr_accessor :admin
  attr_accessor :billing
  attr_accessor :tech

  def initialize(order = nil, privateBackOrder = nil, sld = nil, tld = nil, registrant = nil, nexus = nil, admin = nil, billing = nil, tech = nil)
    @order = order
    @privateBackOrder = privateBackOrder
    @sld = sld
    @tld = tld
    @registrant = registrant
    @nexus = nexus
    @admin = admin
    @billing = billing
    @tech = tech
  end
end

# {http://wildwestdomains.com/webservices/}ArrayOfDomainRegistration
class ArrayOfDomainRegistration < ::Array
end

# {http://wildwestdomains.com/webservices/}ContactInfo
#   fname - SOAP::SOAPString
#   lname - SOAP::SOAPString
#   org - SOAP::SOAPString
#   email - SOAP::SOAPString
#   sa1 - SOAP::SOAPString
#   sa2 - SOAP::SOAPString
#   city - SOAP::SOAPString
#   sp - SOAP::SOAPString
#   pc - SOAP::SOAPString
#   cc - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   fax - SOAP::SOAPString
class ContactInfo
  attr_accessor :fname
  attr_accessor :lname
  attr_accessor :org
  attr_accessor :email
  attr_accessor :sa1
  attr_accessor :sa2
  attr_accessor :city
  attr_accessor :sp
  attr_accessor :pc
  attr_accessor :cc
  attr_accessor :phone
  attr_accessor :fax

  def initialize(fname = nil, lname = nil, org = nil, email = nil, sa1 = nil, sa2 = nil, city = nil, sp = nil, pc = nil, cc = nil, phone = nil, fax = nil)
    @fname = fname
    @lname = lname
    @org = org
    @email = email
    @sa1 = sa1
    @sa2 = sa2
    @city = city
    @sp = sp
    @pc = pc
    @cc = cc
    @phone = phone
    @fax = fax
  end
end

# {http://wildwestdomains.com/webservices/}Nexus
#   category - SOAP::SOAPString
#   use - SOAP::SOAPString
#   country - SOAP::SOAPString
class Nexus
  attr_accessor :category
  attr_accessor :use
  attr_accessor :country

  def initialize(category = nil, use = nil, country = nil)
    @category = category
    @use = use
    @country = country
  end
end

# {http://wildwestdomains.com/webservices/}ArrayOfNS
class ArrayOfNS < ::Array
end

# {http://wildwestdomains.com/webservices/}NS
#   name - SOAP::SOAPString
class NS
  attr_accessor :name

  def initialize(name = nil)
    @name = name
  end
end

# {http://wildwestdomains.com/webservices/}ArrayOfDomainByProxy
class ArrayOfDomainByProxy < ::Array
end

# {http://wildwestdomains.com/webservices/}ArrayOfDomainRenewal
class ArrayOfDomainRenewal < ::Array
end

# {http://wildwestdomains.com/webservices/}ArrayOfResourceRenewal
class ArrayOfResourceRenewal < ::Array
end

# {http://wildwestdomains.com/webservices/}ArrayOfDomainTransfer
class ArrayOfDomainTransfer < ::Array
end

# {http://wildwestdomains.com/webservices/}ArrayOfDomainBackOrder
class ArrayOfDomainBackOrder < ::Array
end

# {http://wildwestdomains.com/webservices/}GainingOwner
#   shopperNoDBP - ShopperNoDBP
#   registrant - ContactInfo
#   admin - ContactInfo
#   billing - ContactInfo
#   tech - ContactInfo
class GainingOwner
  attr_accessor :shopperNoDBP
  attr_accessor :registrant
  attr_accessor :admin
  attr_accessor :billing
  attr_accessor :tech

  def initialize(shopperNoDBP = nil, registrant = nil, admin = nil, billing = nil, tech = nil)
    @shopperNoDBP = shopperNoDBP
    @registrant = registrant
    @admin = admin
    @billing = billing
    @tech = tech
  end
end

# {http://wildwestdomains.com/webservices/}ShopperNoDBP
#   user - SOAP::SOAPString
#   pwd - SOAP::SOAPString
#   pwdhint - SOAP::SOAPString
#   email - SOAP::SOAPString
#   firstname - SOAP::SOAPString
#   lastname - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   pin - SOAP::SOAPString
class ShopperNoDBP
  attr_accessor :user
  attr_accessor :pwd
  attr_accessor :pwdhint
  attr_accessor :email
  attr_accessor :firstname
  attr_accessor :lastname
  attr_accessor :phone
  attr_accessor :pin

  def initialize(user = nil, pwd = nil, pwdhint = nil, email = nil, firstname = nil, lastname = nil, phone = nil, pin = nil)
    @user = user
    @pwd = pwd
    @pwdhint = pwdhint
    @email = email
    @firstname = firstname
    @lastname = lastname
    @phone = phone
    @pin = pin
  end
end

# {http://wildwestdomains.com/webservices/}DomainAlert
#   user - SOAP::SOAPString
#   domain - SOAP::SOAPString
#   email - SOAP::SOAPString
#   tld - SOAP::SOAPString
#   privateReg - SOAP::SOAPInt
#   backorder - SOAP::SOAPInt
class DomainAlert
  attr_accessor :user
  attr_accessor :domain
  attr_accessor :email
  attr_accessor :tld
  attr_accessor :privateReg
  attr_accessor :backorder

  def initialize(user = nil, domain = nil, email = nil, tld = nil, privateReg = nil, backorder = nil)
    @user = user
    @domain = domain
    @email = email
    @tld = tld
    @privateReg = privateReg
    @backorder = backorder
  end
end

# {http://wildwestdomains.com/webservices/}ArrayOfDomain
class ArrayOfDomain < ::Array
end

# {http://wildwestdomains.com/webservices/}Domain
#   resourceid - SOAP::SOAPString
#   mngTRID - SOAP::SOAPString
#   transferKey - SOAP::SOAPString
#   newAuthInfo - SOAP::SOAPString
class Domain
  attr_accessor :resourceid
  attr_accessor :mngTRID
  attr_accessor :transferKey
  attr_accessor :newAuthInfo

  def initialize(resourceid = nil, mngTRID = nil, transferKey = nil, newAuthInfo = nil)
    @resourceid = resourceid
    @mngTRID = mngTRID
    @transferKey = transferKey
    @newAuthInfo = newAuthInfo
  end
end

# {http://wildwestdomains.com/webservices/}ArrayOfDNSRequest
class ArrayOfDNSRequest < ::Array
end

# {http://wildwestdomains.com/webservices/}DNSRequest
#   recType - SOAP::SOAPString
#   action - SOAP::SOAPString
#   key - SOAP::SOAPString
#   ttl - SOAP::SOAPInt
#   recValue - SOAP::SOAPString
class DNSRequest
  attr_accessor :recType
  attr_accessor :action
  attr_accessor :key
  attr_accessor :ttl
  attr_accessor :recValue

  def initialize(recType = nil, action = nil, key = nil, ttl = nil, recValue = nil)
    @recType = recType
    @action = action
    @key = key
    @ttl = ttl
    @recValue = recValue
  end
end

# {http://wildwestdomains.com/webservices/}DomainContacts
#   registrant - ContactInfo
#   admin - ContactInfo
#   billing - ContactInfo
#   tech - ContactInfo
class DomainContacts
  attr_accessor :registrant
  attr_accessor :admin
  attr_accessor :billing
  attr_accessor :tech

  def initialize(registrant = nil, admin = nil, billing = nil, tech = nil)
    @registrant = registrant
    @admin = admin
    @billing = billing
    @tech = tech
  end
end

# {http://wildwestdomains.com/webservices/}ArrayOfDomainData
class ArrayOfDomainData < ::Array
end

# {http://wildwestdomains.com/webservices/}DomainData
#   sld - SOAP::SOAPString
#   tld - SOAP::SOAPString
#   period - SOAP::SOAPInt
class DomainData
  attr_accessor :sld
  attr_accessor :tld
  attr_accessor :period

  def initialize(sld = nil, tld = nil, period = nil)
    @sld = sld
    @tld = tld
    @period = period
  end
end

# {http://wildwestdomains.com/webservices/}ProcessRequest
#   sRequestXML - SOAP::SOAPString
class ProcessRequest
  attr_accessor :sRequestXML

  def initialize(sRequestXML = nil)
    @sRequestXML = sRequestXML
  end
end

# {http://wildwestdomains.com/webservices/}ProcessRequestResponse
#   processRequestResult - SOAP::SOAPString
class ProcessRequestResponse
  attr_accessor :processRequestResult

  def initialize(processRequestResult = nil)
    @processRequestResult = processRequestResult
  end
end

# {http://wildwestdomains.com/webservices/}Describe
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
class Describe
  attr_accessor :sCLTRID
  attr_accessor :credential

  def initialize(sCLTRID = nil, credential = nil)
    @sCLTRID = sCLTRID
    @credential = credential
  end
end

# {http://wildwestdomains.com/webservices/}DescribeResponse
#   describeResult - SOAP::SOAPString
class DescribeResponse
  attr_accessor :describeResult

  def initialize(describeResult = nil)
    @describeResult = describeResult
  end
end

# {http://wildwestdomains.com/webservices/}CheckAvailability
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   sDomainArray - ArrayOfString
#   sHostArray - ArrayOfString
#   sNSArray - ArrayOfString
class CheckAvailability
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :sDomainArray
  attr_accessor :sHostArray
  attr_accessor :sNSArray

  def initialize(sCLTRID = nil, credential = nil, sDomainArray = nil, sHostArray = nil, sNSArray = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @sDomainArray = sDomainArray
    @sHostArray = sHostArray
    @sNSArray = sNSArray
  end
end

# {http://wildwestdomains.com/webservices/}CheckAvailabilityResponse
#   checkAvailabilityResult - SOAP::SOAPString
class CheckAvailabilityResponse
  attr_accessor :checkAvailabilityResult

  def initialize(checkAvailabilityResult = nil)
    @checkAvailabilityResult = checkAvailabilityResult
  end
end

# {http://wildwestdomains.com/webservices/}Info
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   sResourceID - SOAP::SOAPString
#   sType - SOAP::SOAPString
#   sDomain - SOAP::SOAPString
#   sOrderID - SOAP::SOAPString
class Info
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :sResourceID
  attr_accessor :sType
  attr_accessor :sDomain
  attr_accessor :sOrderID

  def initialize(sCLTRID = nil, credential = nil, sResourceID = nil, sType = nil, sDomain = nil, sOrderID = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @sResourceID = sResourceID
    @sType = sType
    @sDomain = sDomain
    @sOrderID = sOrderID
  end
end

# {http://wildwestdomains.com/webservices/}InfoResponse
#   infoResult - SOAP::SOAPString
class InfoResponse
  attr_accessor :infoResult

  def initialize(infoResult = nil)
    @infoResult = infoResult
  end
end

# {http://wildwestdomains.com/webservices/}NameGen
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   sSLD - SOAP::SOAPString
#   sTLD - SOAP::SOAPString
#   sTLDs - SOAP::SOAPString
#   nRows - SOAP::SOAPUnsignedShort
#   bHypens - SOAP::SOAPBoolean
#   bNumbers - SOAP::SOAPBoolean
#   nMaxLen - SOAP::SOAPUnsignedShort
#   bIntelliSearch - SOAP::SOAPBoolean
#   nPage - SOAP::SOAPUnsignedShort
#   sTime - SOAP::SOAPString
class NameGen
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :sSLD
  attr_accessor :sTLD
  attr_accessor :sTLDs
  attr_accessor :nRows
  attr_accessor :bHypens
  attr_accessor :bNumbers
  attr_accessor :nMaxLen
  attr_accessor :bIntelliSearch
  attr_accessor :nPage
  attr_accessor :sTime

  def initialize(sCLTRID = nil, credential = nil, sSLD = nil, sTLD = nil, sTLDs = nil, nRows = nil, bHypens = nil, bNumbers = nil, nMaxLen = nil, bIntelliSearch = nil, nPage = nil, sTime = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @sSLD = sSLD
    @sTLD = sTLD
    @sTLDs = sTLDs
    @nRows = nRows
    @bHypens = bHypens
    @bNumbers = bNumbers
    @nMaxLen = nMaxLen
    @bIntelliSearch = bIntelliSearch
    @nPage = nPage
    @sTime = sTime
  end
end

# {http://wildwestdomains.com/webservices/}NameGenResponse
#   nameGenResult - SOAP::SOAPString
class NameGenResponse
  attr_accessor :nameGenResult

  def initialize(nameGenResult = nil)
    @nameGenResult = nameGenResult
  end
end

# {http://wildwestdomains.com/webservices/}NameGenDB
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   sKey - SOAP::SOAPString
#   nMaxResults - SOAP::SOAPInt
#   bExcludeTaken - SOAP::SOAPBoolean
#   sTLDs - SOAP::SOAPString
#   bAddPrefix - SOAP::SOAPBoolean
#   bAddSuffix - SOAP::SOAPBoolean
#   bAddDashes - SOAP::SOAPBoolean
#   bAddRelated - SOAP::SOAPBoolean
#   bAdvancedSplit - SOAP::SOAPBoolean
#   bBaseOnTop - SOAP::SOAPBoolean
class NameGenDB
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :sKey
  attr_accessor :nMaxResults
  attr_accessor :bExcludeTaken
  attr_accessor :sTLDs
  attr_accessor :bAddPrefix
  attr_accessor :bAddSuffix
  attr_accessor :bAddDashes
  attr_accessor :bAddRelated
  attr_accessor :bAdvancedSplit
  attr_accessor :bBaseOnTop

  def initialize(sCLTRID = nil, credential = nil, sKey = nil, nMaxResults = nil, bExcludeTaken = nil, sTLDs = nil, bAddPrefix = nil, bAddSuffix = nil, bAddDashes = nil, bAddRelated = nil, bAdvancedSplit = nil, bBaseOnTop = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @sKey = sKey
    @nMaxResults = nMaxResults
    @bExcludeTaken = bExcludeTaken
    @sTLDs = sTLDs
    @bAddPrefix = bAddPrefix
    @bAddSuffix = bAddSuffix
    @bAddDashes = bAddDashes
    @bAddRelated = bAddRelated
    @bAdvancedSplit = bAdvancedSplit
    @bBaseOnTop = bBaseOnTop
  end
end

# {http://wildwestdomains.com/webservices/}NameGenDBResponse
#   nameGenDBResult - SOAP::SOAPString
class NameGenDBResponse
  attr_accessor :nameGenDBResult

  def initialize(nameGenDBResult = nil)
    @nameGenDBResult = nameGenDBResult
  end
end

# {http://wildwestdomains.com/webservices/}NameGenDBWithTimeLimit
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   sKey - SOAP::SOAPString
#   nMaxResults - SOAP::SOAPInt
#   bExcludeTaken - SOAP::SOAPBoolean
#   sTLDs - SOAP::SOAPString
#   bAddPrefix - SOAP::SOAPBoolean
#   bAddSuffix - SOAP::SOAPBoolean
#   bAddDashes - SOAP::SOAPBoolean
#   bAddRelated - SOAP::SOAPBoolean
#   bAdvancedSplit - SOAP::SOAPBoolean
#   bBaseOnTop - SOAP::SOAPBoolean
#   nMaxWaitSeconds - SOAP::SOAPInt
class NameGenDBWithTimeLimit
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :sKey
  attr_accessor :nMaxResults
  attr_accessor :bExcludeTaken
  attr_accessor :sTLDs
  attr_accessor :bAddPrefix
  attr_accessor :bAddSuffix
  attr_accessor :bAddDashes
  attr_accessor :bAddRelated
  attr_accessor :bAdvancedSplit
  attr_accessor :bBaseOnTop
  attr_accessor :nMaxWaitSeconds

  def initialize(sCLTRID = nil, credential = nil, sKey = nil, nMaxResults = nil, bExcludeTaken = nil, sTLDs = nil, bAddPrefix = nil, bAddSuffix = nil, bAddDashes = nil, bAddRelated = nil, bAdvancedSplit = nil, bBaseOnTop = nil, nMaxWaitSeconds = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @sKey = sKey
    @nMaxResults = nMaxResults
    @bExcludeTaken = bExcludeTaken
    @sTLDs = sTLDs
    @bAddPrefix = bAddPrefix
    @bAddSuffix = bAddSuffix
    @bAddDashes = bAddDashes
    @bAddRelated = bAddRelated
    @bAdvancedSplit = bAdvancedSplit
    @bBaseOnTop = bBaseOnTop
    @nMaxWaitSeconds = nMaxWaitSeconds
  end
end

# {http://wildwestdomains.com/webservices/}NameGenDBWithTimeLimitResponse
#   nameGenDBWithTimeLimitResult - SOAP::SOAPString
class NameGenDBWithTimeLimitResponse
  attr_accessor :nameGenDBWithTimeLimitResult

  def initialize(nameGenDBWithTimeLimitResult = nil)
    @nameGenDBWithTimeLimitResult = nameGenDBWithTimeLimitResult
  end
end

# {http://wildwestdomains.com/webservices/}Poll
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   sOp - SOAP::SOAPString
class Poll
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :sOp

  def initialize(sCLTRID = nil, credential = nil, sOp = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @sOp = sOp
  end
end

# {http://wildwestdomains.com/webservices/}PollResponse
#   pollResult - SOAP::SOAPString
class PollResponse
  attr_accessor :pollResult

  def initialize(pollResult = nil)
    @pollResult = pollResult
  end
end

# {http://wildwestdomains.com/webservices/}OrderCredits
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   shopper - Shopper
#   items - ArrayOfOrderItem
#   sROID - SOAP::SOAPString
class OrderCredits
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :shopper
  attr_accessor :items
  attr_accessor :sROID

  def initialize(sCLTRID = nil, credential = nil, shopper = nil, items = nil, sROID = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @shopper = shopper
    @items = items
    @sROID = sROID
  end
end

# {http://wildwestdomains.com/webservices/}OrderCreditsResponse
#   orderCreditsResult - SOAP::SOAPString
class OrderCreditsResponse
  attr_accessor :orderCreditsResult

  def initialize(orderCreditsResult = nil)
    @orderCreditsResult = orderCreditsResult
  end
end

# {http://wildwestdomains.com/webservices/}OrderDomains
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   shopper - Shopper
#   items - ArrayOfDomainRegistration
#   dbpItems - ArrayOfDomainByProxy
#   sROID - SOAP::SOAPString
class OrderDomains
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :shopper
  attr_accessor :items
  attr_accessor :dbpItems
  attr_accessor :sROID

  def initialize(sCLTRID = nil, credential = nil, shopper = nil, items = nil, dbpItems = nil, sROID = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @shopper = shopper
    @items = items
    @dbpItems = dbpItems
    @sROID = sROID
  end
end

# {http://wildwestdomains.com/webservices/}OrderDomainsResponse
#   orderDomainsResult - SOAP::SOAPString
class OrderDomainsResponse
  attr_accessor :orderDomainsResult

  def initialize(orderDomainsResult = nil)
    @orderDomainsResult = orderDomainsResult
  end
end

# {http://wildwestdomains.com/webservices/}OrderDomainRenewals
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   shopper - Shopper
#   items - ArrayOfDomainRenewal
#   sROID - SOAP::SOAPString
class OrderDomainRenewals
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :shopper
  attr_accessor :items
  attr_accessor :sROID

  def initialize(sCLTRID = nil, credential = nil, shopper = nil, items = nil, sROID = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @shopper = shopper
    @items = items
    @sROID = sROID
  end
end

# {http://wildwestdomains.com/webservices/}OrderDomainRenewalsResponse
#   orderDomainRenewalsResult - SOAP::SOAPString
class OrderDomainRenewalsResponse
  attr_accessor :orderDomainRenewalsResult

  def initialize(orderDomainRenewalsResult = nil)
    @orderDomainRenewalsResult = orderDomainRenewalsResult
  end
end

# {http://wildwestdomains.com/webservices/}OrderPrivateDomainRenewals
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   shopper - Shopper
#   items - ArrayOfDomainRenewal
#   dbpItems - ArrayOfResourceRenewal
#   sROID - SOAP::SOAPString
class OrderPrivateDomainRenewals
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :shopper
  attr_accessor :items
  attr_accessor :dbpItems
  attr_accessor :sROID

  def initialize(sCLTRID = nil, credential = nil, shopper = nil, items = nil, dbpItems = nil, sROID = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @shopper = shopper
    @items = items
    @dbpItems = dbpItems
    @sROID = sROID
  end
end

# {http://wildwestdomains.com/webservices/}OrderPrivateDomainRenewalsResponse
#   orderPrivateDomainRenewalsResult - SOAP::SOAPString
class OrderPrivateDomainRenewalsResponse
  attr_accessor :orderPrivateDomainRenewalsResult

  def initialize(orderPrivateDomainRenewalsResult = nil)
    @orderPrivateDomainRenewalsResult = orderPrivateDomainRenewalsResult
  end
end

# {http://wildwestdomains.com/webservices/}OrderDomainTransfers
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   shopper - Shopper
#   items - ArrayOfDomainTransfer
#   sROID - SOAP::SOAPString
class OrderDomainTransfers
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :shopper
  attr_accessor :items
  attr_accessor :sROID

  def initialize(sCLTRID = nil, credential = nil, shopper = nil, items = nil, sROID = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @shopper = shopper
    @items = items
    @sROID = sROID
  end
end

# {http://wildwestdomains.com/webservices/}OrderDomainTransfersResponse
#   orderDomainTransfersResult - SOAP::SOAPString
class OrderDomainTransfersResponse
  attr_accessor :orderDomainTransfersResult

  def initialize(orderDomainTransfersResult = nil)
    @orderDomainTransfersResult = orderDomainTransfersResult
  end
end

# {http://wildwestdomains.com/webservices/}OrderDomainPrivacy
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   shopper - Shopper
#   items - ArrayOfDomainByProxy
#   sROID - SOAP::SOAPString
class OrderDomainPrivacy
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :shopper
  attr_accessor :items
  attr_accessor :sROID

  def initialize(sCLTRID = nil, credential = nil, shopper = nil, items = nil, sROID = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @shopper = shopper
    @items = items
    @sROID = sROID
  end
end

# {http://wildwestdomains.com/webservices/}OrderDomainPrivacyResponse
#   orderDomainPrivacyResult - SOAP::SOAPString
class OrderDomainPrivacyResponse
  attr_accessor :orderDomainPrivacyResult

  def initialize(orderDomainPrivacyResult = nil)
    @orderDomainPrivacyResult = orderDomainPrivacyResult
  end
end

# {http://wildwestdomains.com/webservices/}OrderResourceRenewals
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   shopper - Shopper
#   items - ArrayOfResourceRenewal
#   sROID - SOAP::SOAPString
class OrderResourceRenewals
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :shopper
  attr_accessor :items
  attr_accessor :sROID

  def initialize(sCLTRID = nil, credential = nil, shopper = nil, items = nil, sROID = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @shopper = shopper
    @items = items
    @sROID = sROID
  end
end

# {http://wildwestdomains.com/webservices/}OrderResourceRenewalsResponse
#   orderResourceRenewalsResult - SOAP::SOAPString
class OrderResourceRenewalsResponse
  attr_accessor :orderResourceRenewalsResult

  def initialize(orderResourceRenewalsResult = nil)
    @orderResourceRenewalsResult = orderResourceRenewalsResult
  end
end

# {http://wildwestdomains.com/webservices/}OrderDomainBackOrders
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   shopper - Shopper
#   items - ArrayOfDomainBackOrder
#   sROID - SOAP::SOAPString
class OrderDomainBackOrders
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :shopper
  attr_accessor :items
  attr_accessor :sROID

  def initialize(sCLTRID = nil, credential = nil, shopper = nil, items = nil, sROID = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @shopper = shopper
    @items = items
    @sROID = sROID
  end
end

# {http://wildwestdomains.com/webservices/}OrderDomainBackOrdersResponse
#   orderDomainBackOrdersResult - SOAP::SOAPString
class OrderDomainBackOrdersResponse
  attr_accessor :orderDomainBackOrdersResult

  def initialize(orderDomainBackOrdersResult = nil)
    @orderDomainBackOrdersResult = orderDomainBackOrdersResult
  end
end

# {http://wildwestdomains.com/webservices/}Cancel
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   sType - SOAP::SOAPString
#   sIDArray - ArrayOfString
class Cancel
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :sType
  attr_accessor :sIDArray

  def initialize(sCLTRID = nil, credential = nil, sType = nil, sIDArray = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @sType = sType
    @sIDArray = sIDArray
  end
end

# {http://wildwestdomains.com/webservices/}CancelResponse
#   cancelResult - SOAP::SOAPString
class CancelResponse
  attr_accessor :cancelResult

  def initialize(cancelResult = nil)
    @cancelResult = cancelResult
  end
end

# {http://wildwestdomains.com/webservices/}UpdateDomainOwnership
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   sResourceID - SOAP::SOAPString
#   sLosingOwner - SOAP::SOAPString
#   gaining - GainingOwner
class UpdateDomainOwnership
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :sResourceID
  attr_accessor :sLosingOwner
  attr_accessor :gaining

  def initialize(sCLTRID = nil, credential = nil, sResourceID = nil, sLosingOwner = nil, gaining = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @sResourceID = sResourceID
    @sLosingOwner = sLosingOwner
    @gaining = gaining
  end
end

# {http://wildwestdomains.com/webservices/}UpdateDomainOwnershipResponse
#   updateDomainOwnershipResult - SOAP::SOAPString
class UpdateDomainOwnershipResponse
  attr_accessor :updateDomainOwnershipResult

  def initialize(updateDomainOwnershipResult = nil)
    @updateDomainOwnershipResult = updateDomainOwnershipResult
  end
end

# {http://wildwestdomains.com/webservices/}ResetPassword
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   sUser - SOAP::SOAPString
#   sPwd - SOAP::SOAPString
#   sEmail - SOAP::SOAPString
#   sPwdHint - SOAP::SOAPString
class ResetPassword
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :sUser
  attr_accessor :sPwd
  attr_accessor :sEmail
  attr_accessor :sPwdHint

  def initialize(sCLTRID = nil, credential = nil, sUser = nil, sPwd = nil, sEmail = nil, sPwdHint = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @sUser = sUser
    @sPwd = sPwd
    @sEmail = sEmail
    @sPwdHint = sPwdHint
  end
end

# {http://wildwestdomains.com/webservices/}ResetPasswordResponse
#   resetPasswordResult - SOAP::SOAPString
class ResetPasswordResponse
  attr_accessor :resetPasswordResult

  def initialize(resetPasswordResult = nil)
    @resetPasswordResult = resetPasswordResult
  end
end

# {http://wildwestdomains.com/webservices/}SetShopperInfo
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   sUser - SOAP::SOAPString
#   sEmail - SOAP::SOAPString
#   sFirstName - SOAP::SOAPString
#   sLastName - SOAP::SOAPString
#   sPhone - SOAP::SOAPString
#   sFax - SOAP::SOAPString
#   sCompany - SOAP::SOAPString
#   sAddress - SOAP::SOAPString
#   sCity - SOAP::SOAPString
#   sState - SOAP::SOAPString
#   sZip - SOAP::SOAPString
#   sCountry - SOAP::SOAPString
#   sShopperPin - SOAP::SOAPString
class SetShopperInfo
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :sUser
  attr_accessor :sEmail
  attr_accessor :sFirstName
  attr_accessor :sLastName
  attr_accessor :sPhone
  attr_accessor :sFax
  attr_accessor :sCompany
  attr_accessor :sAddress
  attr_accessor :sCity
  attr_accessor :sState
  attr_accessor :sZip
  attr_accessor :sCountry
  attr_accessor :sShopperPin

  def initialize(sCLTRID = nil, credential = nil, sUser = nil, sEmail = nil, sFirstName = nil, sLastName = nil, sPhone = nil, sFax = nil, sCompany = nil, sAddress = nil, sCity = nil, sState = nil, sZip = nil, sCountry = nil, sShopperPin = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @sUser = sUser
    @sEmail = sEmail
    @sFirstName = sFirstName
    @sLastName = sLastName
    @sPhone = sPhone
    @sFax = sFax
    @sCompany = sCompany
    @sAddress = sAddress
    @sCity = sCity
    @sState = sState
    @sZip = sZip
    @sCountry = sCountry
    @sShopperPin = sShopperPin
  end
end

# {http://wildwestdomains.com/webservices/}SetShopperInfoResponse
#   setShopperInfoResult - SOAP::SOAPString
class SetShopperInfoResponse
  attr_accessor :setShopperInfoResult

  def initialize(setShopperInfoResult = nil)
    @setShopperInfoResult = setShopperInfoResult
  end
end

# {http://wildwestdomains.com/webservices/}CreateNewShopper
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   sPwd - SOAP::SOAPString
#   sEmail - SOAP::SOAPString
#   sFirstName - SOAP::SOAPString
#   sLastName - SOAP::SOAPString
#   sPhone - SOAP::SOAPString
#   sPwdHint - SOAP::SOAPString
#   sFax - SOAP::SOAPString
#   sCompany - SOAP::SOAPString
#   sAddress - SOAP::SOAPString
#   sCity - SOAP::SOAPString
#   sState - SOAP::SOAPString
#   sZip - SOAP::SOAPString
#   sCountry - SOAP::SOAPString
#   sShopperPin - SOAP::SOAPString
class CreateNewShopper
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :sPwd
  attr_accessor :sEmail
  attr_accessor :sFirstName
  attr_accessor :sLastName
  attr_accessor :sPhone
  attr_accessor :sPwdHint
  attr_accessor :sFax
  attr_accessor :sCompany
  attr_accessor :sAddress
  attr_accessor :sCity
  attr_accessor :sState
  attr_accessor :sZip
  attr_accessor :sCountry
  attr_accessor :sShopperPin

  def initialize(sCLTRID = nil, credential = nil, sPwd = nil, sEmail = nil, sFirstName = nil, sLastName = nil, sPhone = nil, sPwdHint = nil, sFax = nil, sCompany = nil, sAddress = nil, sCity = nil, sState = nil, sZip = nil, sCountry = nil, sShopperPin = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @sPwd = sPwd
    @sEmail = sEmail
    @sFirstName = sFirstName
    @sLastName = sLastName
    @sPhone = sPhone
    @sPwdHint = sPwdHint
    @sFax = sFax
    @sCompany = sCompany
    @sAddress = sAddress
    @sCity = sCity
    @sState = sState
    @sZip = sZip
    @sCountry = sCountry
    @sShopperPin = sShopperPin
  end
end

# {http://wildwestdomains.com/webservices/}CreateNewShopperResponse
#   createNewShopperResult - SOAP::SOAPString
class CreateNewShopperResponse
  attr_accessor :createNewShopperResult

  def initialize(createNewShopperResult = nil)
    @createNewShopperResult = createNewShopperResult
  end
end

# {http://wildwestdomains.com/webservices/}CheckUser
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   sType - SOAP::SOAPString
#   sUser - SOAP::SOAPString
#   sPwd - SOAP::SOAPString
class CheckUser
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :sType
  attr_accessor :sUser
  attr_accessor :sPwd

  def initialize(sCLTRID = nil, credential = nil, sType = nil, sUser = nil, sPwd = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @sType = sType
    @sUser = sUser
    @sPwd = sPwd
  end
end

# {http://wildwestdomains.com/webservices/}CheckUserResponse
#   checkUserResult - SOAP::SOAPString
class CheckUserResponse
  attr_accessor :checkUserResult

  def initialize(checkUserResult = nil)
    @checkUserResult = checkUserResult
  end
end

# {http://wildwestdomains.com/webservices/}SetupDomainAlert
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   domainAlert - DomainAlert
#   registrant - ContactInfo
class SetupDomainAlert
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :domainAlert
  attr_accessor :registrant

  def initialize(sCLTRID = nil, credential = nil, domainAlert = nil, registrant = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @domainAlert = domainAlert
    @registrant = registrant
  end
end

# {http://wildwestdomains.com/webservices/}SetupDomainAlertResponse
#   setupDomainAlertResult - SOAP::SOAPString
class SetupDomainAlertResponse
  attr_accessor :setupDomainAlertResult

  def initialize(setupDomainAlertResult = nil)
    @setupDomainAlertResult = setupDomainAlertResult
  end
end

# {http://wildwestdomains.com/webservices/}UpdateDomainAlert
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   domainAlert - DomainAlert
#   sDomainMonitorID - SOAP::SOAPString
#   registrant - ContactInfo
class UpdateDomainAlert
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :domainAlert
  attr_accessor :sDomainMonitorID
  attr_accessor :registrant

  def initialize(sCLTRID = nil, credential = nil, domainAlert = nil, sDomainMonitorID = nil, registrant = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @domainAlert = domainAlert
    @sDomainMonitorID = sDomainMonitorID
    @registrant = registrant
  end
end

# {http://wildwestdomains.com/webservices/}UpdateDomainAlertResponse
#   updateDomainAlertResult - SOAP::SOAPString
class UpdateDomainAlertResponse
  attr_accessor :updateDomainAlertResult

  def initialize(updateDomainAlertResult = nil)
    @updateDomainAlertResult = updateDomainAlertResult
  end
end

# {http://wildwestdomains.com/webservices/}RemoveDomainAlert
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   sDomainMonitorID - SOAP::SOAPString
#   sUser - SOAP::SOAPString
class RemoveDomainAlert
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :sDomainMonitorID
  attr_accessor :sUser

  def initialize(sCLTRID = nil, credential = nil, sDomainMonitorID = nil, sUser = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @sDomainMonitorID = sDomainMonitorID
    @sUser = sUser
  end
end

# {http://wildwestdomains.com/webservices/}RemoveDomainAlertResponse
#   removeDomainAlertResult - SOAP::SOAPString
class RemoveDomainAlertResponse
  attr_accessor :removeDomainAlertResult

  def initialize(removeDomainAlertResult = nil)
    @removeDomainAlertResult = removeDomainAlertResult
  end
end

# {http://wildwestdomains.com/webservices/}GetDomainAlertCredits
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   sUser - SOAP::SOAPString
class GetDomainAlertCredits
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :sUser

  def initialize(sCLTRID = nil, credential = nil, sUser = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @sUser = sUser
  end
end

# {http://wildwestdomains.com/webservices/}GetDomainAlertCreditsResponse
#   getDomainAlertCreditsResult - SOAP::SOAPString
class GetDomainAlertCreditsResponse
  attr_accessor :getDomainAlertCreditsResult

  def initialize(getDomainAlertCreditsResult = nil)
    @getDomainAlertCreditsResult = getDomainAlertCreditsResult
  end
end

# {http://wildwestdomains.com/webservices/}GetMonitoredDomainList
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   sUser - SOAP::SOAPString
#   nPage - SOAP::SOAPInt
#   nRowsPerPage - SOAP::SOAPInt
class GetMonitoredDomainList
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :sUser
  attr_accessor :nPage
  attr_accessor :nRowsPerPage

  def initialize(sCLTRID = nil, credential = nil, sUser = nil, nPage = nil, nRowsPerPage = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @sUser = sUser
    @nPage = nPage
    @nRowsPerPage = nRowsPerPage
  end
end

# {http://wildwestdomains.com/webservices/}GetMonitoredDomainListResponse
#   getMonitoredDomainListResult - SOAP::SOAPString
class GetMonitoredDomainListResponse
  attr_accessor :getMonitoredDomainListResult

  def initialize(getMonitoredDomainListResult = nil)
    @getMonitoredDomainListResult = getMonitoredDomainListResult
  end
end

# {http://wildwestdomains.com/webservices/}GetExpiringNameList
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   sUser - SOAP::SOAPString
#   nLength - SOAP::SOAPInt
#   sDashes - SOAP::SOAPString
#   sNumbers - SOAP::SOAPString
#   sWildCardSearch - SOAP::SOAPString
#   sSearchCriteria - SOAP::SOAPString
#   sTLDs - SOAP::SOAPString
#   nPage - SOAP::SOAPInt
#   nRowsPerPage - SOAP::SOAPInt
class GetExpiringNameList
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :sUser
  attr_accessor :nLength
  attr_accessor :sDashes
  attr_accessor :sNumbers
  attr_accessor :sWildCardSearch
  attr_accessor :sSearchCriteria
  attr_accessor :sTLDs
  attr_accessor :nPage
  attr_accessor :nRowsPerPage

  def initialize(sCLTRID = nil, credential = nil, sUser = nil, nLength = nil, sDashes = nil, sNumbers = nil, sWildCardSearch = nil, sSearchCriteria = nil, sTLDs = nil, nPage = nil, nRowsPerPage = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @sUser = sUser
    @nLength = nLength
    @sDashes = sDashes
    @sNumbers = sNumbers
    @sWildCardSearch = sWildCardSearch
    @sSearchCriteria = sSearchCriteria
    @sTLDs = sTLDs
    @nPage = nPage
    @nRowsPerPage = nRowsPerPage
  end
end

# {http://wildwestdomains.com/webservices/}GetExpiringNameListResponse
#   getExpiringNameListResult - SOAP::SOAPString
class GetExpiringNameListResponse
  attr_accessor :getExpiringNameListResult

  def initialize(getExpiringNameListResult = nil)
    @getExpiringNameListResult = getExpiringNameListResult
  end
end

# {http://wildwestdomains.com/webservices/}DomainForwarding
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   sUser - SOAP::SOAPString
#   nDomainID - SOAP::SOAPInt
#   sForwardingURL - SOAP::SOAPString
#   sMngTRID - SOAP::SOAPString
class DomainForwarding
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :sUser
  attr_accessor :nDomainID
  attr_accessor :sForwardingURL
  attr_accessor :sMngTRID

  def initialize(sCLTRID = nil, credential = nil, sUser = nil, nDomainID = nil, sForwardingURL = nil, sMngTRID = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @sUser = sUser
    @nDomainID = nDomainID
    @sForwardingURL = sForwardingURL
    @sMngTRID = sMngTRID
  end
end

# {http://wildwestdomains.com/webservices/}DomainForwardingResponse
#   domainForwardingResult - SOAP::SOAPString
class DomainForwardingResponse
  attr_accessor :domainForwardingResult

  def initialize(domainForwardingResult = nil)
    @domainForwardingResult = domainForwardingResult
  end
end

# {http://wildwestdomains.com/webservices/}UpdateNameServer
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   domainArray - ArrayOfDomain
#   nsArray - ArrayOfNS
class UpdateNameServer
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :domainArray
  attr_accessor :nsArray

  def initialize(sCLTRID = nil, credential = nil, domainArray = nil, nsArray = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @domainArray = domainArray
    @nsArray = nsArray
  end
end

# {http://wildwestdomains.com/webservices/}UpdateNameServerResponse
#   updateNameServerResult - SOAP::SOAPString
class UpdateNameServerResponse
  attr_accessor :updateNameServerResult

  def initialize(updateNameServerResult = nil)
    @updateNameServerResult = updateNameServerResult
  end
end

# {http://wildwestdomains.com/webservices/}UpdateDomainContact
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   domainArray - ArrayOfDomain
#   registrant - ContactInfo
#   admin - ContactInfo
#   billing - ContactInfo
#   tech - ContactInfo
class UpdateDomainContact
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :domainArray
  attr_accessor :registrant
  attr_accessor :admin
  attr_accessor :billing
  attr_accessor :tech

  def initialize(sCLTRID = nil, credential = nil, domainArray = nil, registrant = nil, admin = nil, billing = nil, tech = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @domainArray = domainArray
    @registrant = registrant
    @admin = admin
    @billing = billing
    @tech = tech
  end
end

# {http://wildwestdomains.com/webservices/}UpdateDomainContactResponse
#   updateDomainContactResult - SOAP::SOAPString
class UpdateDomainContactResponse
  attr_accessor :updateDomainContactResult

  def initialize(updateDomainContactResult = nil)
    @updateDomainContactResult = updateDomainContactResult
  end
end

# {http://wildwestdomains.com/webservices/}SetDomainLocking
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   domainArray - ArrayOfDomain
#   sLock - SOAP::SOAPString
class SetDomainLocking
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :domainArray
  attr_accessor :sLock

  def initialize(sCLTRID = nil, credential = nil, domainArray = nil, sLock = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @domainArray = domainArray
    @sLock = sLock
  end
end

# {http://wildwestdomains.com/webservices/}SetDomainLockingResponse
#   setDomainLockingResult - SOAP::SOAPString
class SetDomainLockingResponse
  attr_accessor :setDomainLockingResult

  def initialize(setDomainLockingResult = nil)
    @setDomainLockingResult = setDomainLockingResult
  end
end

# {http://wildwestdomains.com/webservices/}ManageTransfer
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   domainArray - ArrayOfDomain
#   sAction - SOAP::SOAPString
class ManageTransfer
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :domainArray
  attr_accessor :sAction

  def initialize(sCLTRID = nil, credential = nil, domainArray = nil, sAction = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @domainArray = domainArray
    @sAction = sAction
  end
end

# {http://wildwestdomains.com/webservices/}ManageTransferResponse
#   manageTransferResult - SOAP::SOAPString
class ManageTransferResponse
  attr_accessor :manageTransferResult

  def initialize(manageTransferResult = nil)
    @manageTransferResult = manageTransferResult
  end
end

# {http://wildwestdomains.com/webservices/}UpdateDomainForwarding
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   domainArray - ArrayOfDomain
#   sAction - SOAP::SOAPString
#   sForwardingURL - SOAP::SOAPString
class UpdateDomainForwarding
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :domainArray
  attr_accessor :sAction
  attr_accessor :sForwardingURL

  def initialize(sCLTRID = nil, credential = nil, domainArray = nil, sAction = nil, sForwardingURL = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @domainArray = domainArray
    @sAction = sAction
    @sForwardingURL = sForwardingURL
  end
end

# {http://wildwestdomains.com/webservices/}UpdateDomainForwardingResponse
#   updateDomainForwardingResult - SOAP::SOAPString
class UpdateDomainForwardingResponse
  attr_accessor :updateDomainForwardingResult

  def initialize(updateDomainForwardingResult = nil)
    @updateDomainForwardingResult = updateDomainForwardingResult
  end
end

# {http://wildwestdomains.com/webservices/}UpdateDomainMasking
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   domainArray - ArrayOfDomain
#   sAction - SOAP::SOAPString
#   sForwardingURL - SOAP::SOAPString
#   sMaskingMetatagTitle - SOAP::SOAPString
#   sMaskingMetatagDesc - SOAP::SOAPString
#   sMaskingMetatagKeyword - SOAP::SOAPString
class UpdateDomainMasking
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :domainArray
  attr_accessor :sAction
  attr_accessor :sForwardingURL
  attr_accessor :sMaskingMetatagTitle
  attr_accessor :sMaskingMetatagDesc
  attr_accessor :sMaskingMetatagKeyword

  def initialize(sCLTRID = nil, credential = nil, domainArray = nil, sAction = nil, sForwardingURL = nil, sMaskingMetatagTitle = nil, sMaskingMetatagDesc = nil, sMaskingMetatagKeyword = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @domainArray = domainArray
    @sAction = sAction
    @sForwardingURL = sForwardingURL
    @sMaskingMetatagTitle = sMaskingMetatagTitle
    @sMaskingMetatagDesc = sMaskingMetatagDesc
    @sMaskingMetatagKeyword = sMaskingMetatagKeyword
  end
end

# {http://wildwestdomains.com/webservices/}UpdateDomainMaskingResponse
#   updateDomainMaskingResult - SOAP::SOAPString
class UpdateDomainMaskingResponse
  attr_accessor :updateDomainMaskingResult

  def initialize(updateDomainMaskingResult = nil)
    @updateDomainMaskingResult = updateDomainMaskingResult
  end
end

# {http://wildwestdomains.com/webservices/}ModifyDNS
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   dnsRequestArray - ArrayOfDNSRequest
#   sDomain - SOAP::SOAPString
class ModifyDNS
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :dnsRequestArray
  attr_accessor :sDomain

  def initialize(sCLTRID = nil, credential = nil, dnsRequestArray = nil, sDomain = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @dnsRequestArray = dnsRequestArray
    @sDomain = sDomain
  end
end

# {http://wildwestdomains.com/webservices/}ModifyDNSResponse
#   modifyDNSResult - SOAP::SOAPString
class ModifyDNSResponse
  attr_accessor :modifyDNSResult

  def initialize(modifyDNSResult = nil)
    @modifyDNSResult = modifyDNSResult
  end
end

# {http://wildwestdomains.com/webservices/}ValidateRegistration
#   sCLTRID - SOAP::SOAPString
#   credential - Credential
#   domainContacts - DomainContacts
#   domainDataArray - ArrayOfDomainData
class ValidateRegistration
  attr_accessor :sCLTRID
  attr_accessor :credential
  attr_accessor :domainContacts
  attr_accessor :domainDataArray

  def initialize(sCLTRID = nil, credential = nil, domainContacts = nil, domainDataArray = nil)
    @sCLTRID = sCLTRID
    @credential = credential
    @domainContacts = domainContacts
    @domainDataArray = domainDataArray
  end
end

# {http://wildwestdomains.com/webservices/}ValidateRegistrationResponse
#   validateRegistrationResult - SOAP::SOAPString
class ValidateRegistrationResponse
  attr_accessor :validateRegistrationResult

  def initialize(validateRegistrationResult = nil)
    @validateRegistrationResult = validateRegistrationResult
  end
end
