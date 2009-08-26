require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsWebservices = "http://wildwestdomains.com/webservices/"

  EncodedRegistry.register(
    :class => Credential,
    :schema_type => XSD::QName.new(NsWebservices, "Credential"),
    :schema_element => [
      ["account", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "Account")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "Password")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfString,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfString"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Shopper,
    :schema_type => XSD::QName.new(NsWebservices, "Shopper"),
    :schema_element => [
      ["user", "SOAP::SOAPString", [0, 1]],
      ["pwd", "SOAP::SOAPString", [0, 1]],
      ["pwdhint", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["firstname", "SOAP::SOAPString", [0, 1]],
      ["lastname", "SOAP::SOAPString", [0, 1]],
      ["phone", "SOAP::SOAPString", [0, 1]],
      ["pin", "SOAP::SOAPString", [0, 1]],
      ["dbpuser", "SOAP::SOAPString", [0, 1]],
      ["dbppwd", "SOAP::SOAPString", [0, 1]],
      ["dbppwdhint", "SOAP::SOAPString", [0, 1]],
      ["dbpemail", "SOAP::SOAPString", [0, 1]],
      ["dbppin", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfOrderItem,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfOrderItem"),
    :schema_element => [
      ["orderItem", ["OrderItem[]", XSD::QName.new(NsWebservices, "OrderItem")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => OrderItem,
    :schema_type => XSD::QName.new(NsWebservices, "OrderItem"),
    :schema_basetype => XSD::QName.new(NsWebservices, "Order"),
    :schema_element => [
      ["productid", "SOAP::SOAPInt"],
      ["quantity", "SOAP::SOAPUnsignedInt"],
      ["riid", "SOAP::SOAPString", [0, 1]],
      ["duration", "SOAP::SOAPDouble"]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDomainRegistration,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfDomainRegistration"),
    :schema_element => [
      ["domainRegistration", ["DomainRegistration[]", XSD::QName.new(NsWebservices, "DomainRegistration")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DomainRegistration,
    :schema_type => XSD::QName.new(NsWebservices, "DomainRegistration"),
    :schema_basetype => XSD::QName.new(NsWebservices, "Order"),
    :schema_element => [
      ["order", "OrderItem", [0, 1]],
      ["sld", "SOAP::SOAPString", [0, 1]],
      ["tld", "SOAP::SOAPString", [0, 1]],
      ["period", "SOAP::SOAPInt"],
      ["registrant", "ContactInfo", [0, 1]],
      ["nexus", "Nexus", [0, 1]],
      ["nsArray", "ArrayOfNS", [0, 1]],
      ["admin", "ContactInfo", [0, 1]],
      ["billing", "ContactInfo", [0, 1]],
      ["tech", "ContactInfo", [0, 1]],
      ["autorenewflag", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => ContactInfo,
    :schema_type => XSD::QName.new(NsWebservices, "ContactInfo"),
    :schema_element => [
      ["fname", "SOAP::SOAPString", [0, 1]],
      ["lname", "SOAP::SOAPString", [0, 1]],
      ["org", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["sa1", "SOAP::SOAPString", [0, 1]],
      ["sa2", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["sp", "SOAP::SOAPString", [0, 1]],
      ["pc", "SOAP::SOAPString", [0, 1]],
      ["cc", "SOAP::SOAPString", [0, 1]],
      ["phone", "SOAP::SOAPString", [0, 1]],
      ["fax", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Nexus,
    :schema_type => XSD::QName.new(NsWebservices, "Nexus"),
    :schema_element => [
      ["category", "SOAP::SOAPString", [0, 1]],
      ["use", "SOAP::SOAPString", [0, 1]],
      ["country", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfNS,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfNS"),
    :schema_element => [
      ["nS", ["NS[]", XSD::QName.new(NsWebservices, "NS")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => NS,
    :schema_type => XSD::QName.new(NsWebservices, "NS"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDomainByProxy,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfDomainByProxy"),
    :schema_element => [
      ["domainByProxy", ["DomainByProxy[]", XSD::QName.new(NsWebservices, "DomainByProxy")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DomainByProxy,
    :schema_type => XSD::QName.new(NsWebservices, "DomainByProxy"),
    :schema_basetype => XSD::QName.new(NsWebservices, "Order"),
    :schema_element => [
      ["order", "OrderItem", [0, 1]],
      ["sld", "SOAP::SOAPString", [0, 1]],
      ["tld", "SOAP::SOAPString", [0, 1]],
      ["resourceid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDomainRenewal,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfDomainRenewal"),
    :schema_element => [
      ["domainRenewal", ["DomainRenewal[]", XSD::QName.new(NsWebservices, "DomainRenewal")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DomainRenewal,
    :schema_type => XSD::QName.new(NsWebservices, "DomainRenewal"),
    :schema_basetype => XSD::QName.new(NsWebservices, "Order"),
    :schema_element => [
      ["order", "OrderItem", [0, 1]],
      ["resourceid", "SOAP::SOAPString", [0, 1]],
      ["sld", "SOAP::SOAPString", [0, 1]],
      ["tld", "SOAP::SOAPString", [0, 1]],
      ["period", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfResourceRenewal,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfResourceRenewal"),
    :schema_element => [
      ["resourceRenewal", ["ResourceRenewal[]", XSD::QName.new(NsWebservices, "ResourceRenewal")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ResourceRenewal,
    :schema_type => XSD::QName.new(NsWebservices, "ResourceRenewal"),
    :schema_basetype => XSD::QName.new(NsWebservices, "Order"),
    :schema_element => [
      ["order", "OrderItem", [0, 1]],
      ["resourceid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDomainTransfer,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfDomainTransfer"),
    :schema_element => [
      ["domainTransfer", ["DomainTransfer[]", XSD::QName.new(NsWebservices, "DomainTransfer")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DomainTransfer,
    :schema_type => XSD::QName.new(NsWebservices, "DomainTransfer"),
    :schema_basetype => XSD::QName.new(NsWebservices, "Order"),
    :schema_element => [
      ["order", "OrderItem", [0, 1]],
      ["sld", "SOAP::SOAPString", [0, 1]],
      ["tld", "SOAP::SOAPString", [0, 1]],
      ["authInfo", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDomainBackOrder,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfDomainBackOrder"),
    :schema_element => [
      ["domainBackOrder", ["DomainBackOrder[]", XSD::QName.new(NsWebservices, "DomainBackOrder")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DomainBackOrder,
    :schema_type => XSD::QName.new(NsWebservices, "DomainBackOrder"),
    :schema_basetype => XSD::QName.new(NsWebservices, "Order"),
    :schema_element => [
      ["order", "OrderItem", [0, 1]],
      ["privateBackOrder", "SOAP::SOAPBoolean"],
      ["sld", "SOAP::SOAPString", [0, 1]],
      ["tld", "SOAP::SOAPString", [0, 1]],
      ["registrant", "ContactInfo", [0, 1]],
      ["nexus", "Nexus", [0, 1]],
      ["admin", "ContactInfo", [0, 1]],
      ["billing", "ContactInfo", [0, 1]],
      ["tech", "ContactInfo", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GainingOwner,
    :schema_type => XSD::QName.new(NsWebservices, "GainingOwner"),
    :schema_element => [
      ["shopperNoDBP", "ShopperNoDBP", [0, 1]],
      ["registrant", "ContactInfo", [0, 1]],
      ["admin", "ContactInfo", [0, 1]],
      ["billing", "ContactInfo", [0, 1]],
      ["tech", "ContactInfo", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ShopperNoDBP,
    :schema_type => XSD::QName.new(NsWebservices, "ShopperNoDBP"),
    :schema_element => [
      ["user", "SOAP::SOAPString", [0, 1]],
      ["pwd", "SOAP::SOAPString", [0, 1]],
      ["pwdhint", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["firstname", "SOAP::SOAPString", [0, 1]],
      ["lastname", "SOAP::SOAPString", [0, 1]],
      ["phone", "SOAP::SOAPString", [0, 1]],
      ["pin", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DomainAlert,
    :schema_type => XSD::QName.new(NsWebservices, "DomainAlert"),
    :schema_element => [
      ["user", "SOAP::SOAPString", [0, 1]],
      ["domain", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["tld", "SOAP::SOAPString", [0, 1]],
      ["privateReg", "SOAP::SOAPInt"],
      ["backorder", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDomain,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfDomain"),
    :schema_element => [
      ["domain", ["Domain[]", XSD::QName.new(NsWebservices, "Domain")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Domain,
    :schema_type => XSD::QName.new(NsWebservices, "Domain"),
    :schema_element => [
      ["resourceid", "SOAP::SOAPString", [0, 1]],
      ["mngTRID", "SOAP::SOAPString", [0, 1]],
      ["transferKey", "SOAP::SOAPString", [0, 1]],
      ["newAuthInfo", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDNSRequest,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfDNSRequest"),
    :schema_element => [
      ["dNSRequest", ["DNSRequest[]", XSD::QName.new(NsWebservices, "DNSRequest")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DNSRequest,
    :schema_type => XSD::QName.new(NsWebservices, "DNSRequest"),
    :schema_element => [
      ["recType", "SOAP::SOAPString", [0, 1]],
      ["action", "SOAP::SOAPString", [0, 1]],
      ["key", "SOAP::SOAPString", [0, 1]],
      ["ttl", "SOAP::SOAPInt"],
      ["recValue", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DomainContacts,
    :schema_type => XSD::QName.new(NsWebservices, "DomainContacts"),
    :schema_element => [
      ["registrant", "ContactInfo", [0, 1]],
      ["admin", "ContactInfo", [0, 1]],
      ["billing", "ContactInfo", [0, 1]],
      ["tech", "ContactInfo", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDomainData,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfDomainData"),
    :schema_element => [
      ["domainData", ["DomainData[]", XSD::QName.new(NsWebservices, "DomainData")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DomainData,
    :schema_type => XSD::QName.new(NsWebservices, "DomainData"),
    :schema_element => [
      ["sld", "SOAP::SOAPString", [0, 1]],
      ["tld", "SOAP::SOAPString", [0, 1]],
      ["period", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => Credential,
    :schema_type => XSD::QName.new(NsWebservices, "Credential"),
    :schema_element => [
      ["account", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "Account")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "Password")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfString,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfString"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Shopper,
    :schema_type => XSD::QName.new(NsWebservices, "Shopper"),
    :schema_element => [
      ["user", "SOAP::SOAPString", [0, 1]],
      ["pwd", "SOAP::SOAPString", [0, 1]],
      ["pwdhint", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["firstname", "SOAP::SOAPString", [0, 1]],
      ["lastname", "SOAP::SOAPString", [0, 1]],
      ["phone", "SOAP::SOAPString", [0, 1]],
      ["pin", "SOAP::SOAPString", [0, 1]],
      ["dbpuser", "SOAP::SOAPString", [0, 1]],
      ["dbppwd", "SOAP::SOAPString", [0, 1]],
      ["dbppwdhint", "SOAP::SOAPString", [0, 1]],
      ["dbpemail", "SOAP::SOAPString", [0, 1]],
      ["dbppin", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfOrderItem,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfOrderItem"),
    :schema_element => [
      ["orderItem", ["OrderItem[]", XSD::QName.new(NsWebservices, "OrderItem")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => OrderItem,
    :schema_type => XSD::QName.new(NsWebservices, "OrderItem"),
    :schema_basetype => XSD::QName.new(NsWebservices, "Order"),
    :schema_element => [
      ["productid", "SOAP::SOAPInt"],
      ["quantity", "SOAP::SOAPUnsignedInt"],
      ["riid", "SOAP::SOAPString", [0, 1]],
      ["duration", "SOAP::SOAPDouble"]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDomainRegistration,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfDomainRegistration"),
    :schema_element => [
      ["domainRegistration", ["DomainRegistration[]", XSD::QName.new(NsWebservices, "DomainRegistration")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DomainRegistration,
    :schema_type => XSD::QName.new(NsWebservices, "DomainRegistration"),
    :schema_basetype => XSD::QName.new(NsWebservices, "Order"),
    :schema_element => [
      ["order", "OrderItem", [0, 1]],
      ["sld", "SOAP::SOAPString", [0, 1]],
      ["tld", "SOAP::SOAPString", [0, 1]],
      ["period", "SOAP::SOAPInt"],
      ["registrant", "ContactInfo", [0, 1]],
      ["nexus", "Nexus", [0, 1]],
      ["nsArray", "ArrayOfNS", [0, 1]],
      ["admin", "ContactInfo", [0, 1]],
      ["billing", "ContactInfo", [0, 1]],
      ["tech", "ContactInfo", [0, 1]],
      ["autorenewflag", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => ContactInfo,
    :schema_type => XSD::QName.new(NsWebservices, "ContactInfo"),
    :schema_element => [
      ["fname", "SOAP::SOAPString", [0, 1]],
      ["lname", "SOAP::SOAPString", [0, 1]],
      ["org", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["sa1", "SOAP::SOAPString", [0, 1]],
      ["sa2", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["sp", "SOAP::SOAPString", [0, 1]],
      ["pc", "SOAP::SOAPString", [0, 1]],
      ["cc", "SOAP::SOAPString", [0, 1]],
      ["phone", "SOAP::SOAPString", [0, 1]],
      ["fax", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nexus,
    :schema_type => XSD::QName.new(NsWebservices, "Nexus"),
    :schema_element => [
      ["category", "SOAP::SOAPString", [0, 1]],
      ["use", "SOAP::SOAPString", [0, 1]],
      ["country", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfNS,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfNS"),
    :schema_element => [
      ["nS", ["NS[]", XSD::QName.new(NsWebservices, "NS")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => NS,
    :schema_type => XSD::QName.new(NsWebservices, "NS"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDomainByProxy,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfDomainByProxy"),
    :schema_element => [
      ["domainByProxy", ["DomainByProxy[]", XSD::QName.new(NsWebservices, "DomainByProxy")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DomainByProxy,
    :schema_type => XSD::QName.new(NsWebservices, "DomainByProxy"),
    :schema_basetype => XSD::QName.new(NsWebservices, "Order"),
    :schema_element => [
      ["order", "OrderItem", [0, 1]],
      ["sld", "SOAP::SOAPString", [0, 1]],
      ["tld", "SOAP::SOAPString", [0, 1]],
      ["resourceid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDomainRenewal,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfDomainRenewal"),
    :schema_element => [
      ["domainRenewal", ["DomainRenewal[]", XSD::QName.new(NsWebservices, "DomainRenewal")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DomainRenewal,
    :schema_type => XSD::QName.new(NsWebservices, "DomainRenewal"),
    :schema_basetype => XSD::QName.new(NsWebservices, "Order"),
    :schema_element => [
      ["order", "OrderItem", [0, 1]],
      ["resourceid", "SOAP::SOAPString", [0, 1]],
      ["sld", "SOAP::SOAPString", [0, 1]],
      ["tld", "SOAP::SOAPString", [0, 1]],
      ["period", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfResourceRenewal,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfResourceRenewal"),
    :schema_element => [
      ["resourceRenewal", ["ResourceRenewal[]", XSD::QName.new(NsWebservices, "ResourceRenewal")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ResourceRenewal,
    :schema_type => XSD::QName.new(NsWebservices, "ResourceRenewal"),
    :schema_basetype => XSD::QName.new(NsWebservices, "Order"),
    :schema_element => [
      ["order", "OrderItem", [0, 1]],
      ["resourceid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDomainTransfer,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfDomainTransfer"),
    :schema_element => [
      ["domainTransfer", ["DomainTransfer[]", XSD::QName.new(NsWebservices, "DomainTransfer")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DomainTransfer,
    :schema_type => XSD::QName.new(NsWebservices, "DomainTransfer"),
    :schema_basetype => XSD::QName.new(NsWebservices, "Order"),
    :schema_element => [
      ["order", "OrderItem", [0, 1]],
      ["sld", "SOAP::SOAPString", [0, 1]],
      ["tld", "SOAP::SOAPString", [0, 1]],
      ["authInfo", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDomainBackOrder,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfDomainBackOrder"),
    :schema_element => [
      ["domainBackOrder", ["DomainBackOrder[]", XSD::QName.new(NsWebservices, "DomainBackOrder")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DomainBackOrder,
    :schema_type => XSD::QName.new(NsWebservices, "DomainBackOrder"),
    :schema_basetype => XSD::QName.new(NsWebservices, "Order"),
    :schema_element => [
      ["order", "OrderItem", [0, 1]],
      ["privateBackOrder", "SOAP::SOAPBoolean"],
      ["sld", "SOAP::SOAPString", [0, 1]],
      ["tld", "SOAP::SOAPString", [0, 1]],
      ["registrant", "ContactInfo", [0, 1]],
      ["nexus", "Nexus", [0, 1]],
      ["admin", "ContactInfo", [0, 1]],
      ["billing", "ContactInfo", [0, 1]],
      ["tech", "ContactInfo", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GainingOwner,
    :schema_type => XSD::QName.new(NsWebservices, "GainingOwner"),
    :schema_element => [
      ["shopperNoDBP", "ShopperNoDBP", [0, 1]],
      ["registrant", "ContactInfo", [0, 1]],
      ["admin", "ContactInfo", [0, 1]],
      ["billing", "ContactInfo", [0, 1]],
      ["tech", "ContactInfo", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShopperNoDBP,
    :schema_type => XSD::QName.new(NsWebservices, "ShopperNoDBP"),
    :schema_element => [
      ["user", "SOAP::SOAPString", [0, 1]],
      ["pwd", "SOAP::SOAPString", [0, 1]],
      ["pwdhint", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["firstname", "SOAP::SOAPString", [0, 1]],
      ["lastname", "SOAP::SOAPString", [0, 1]],
      ["phone", "SOAP::SOAPString", [0, 1]],
      ["pin", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DomainAlert,
    :schema_type => XSD::QName.new(NsWebservices, "DomainAlert"),
    :schema_element => [
      ["user", "SOAP::SOAPString", [0, 1]],
      ["domain", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["tld", "SOAP::SOAPString", [0, 1]],
      ["privateReg", "SOAP::SOAPInt"],
      ["backorder", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDomain,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfDomain"),
    :schema_element => [
      ["domain", ["Domain[]", XSD::QName.new(NsWebservices, "Domain")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Domain,
    :schema_type => XSD::QName.new(NsWebservices, "Domain"),
    :schema_element => [
      ["resourceid", "SOAP::SOAPString", [0, 1]],
      ["mngTRID", "SOAP::SOAPString", [0, 1]],
      ["transferKey", "SOAP::SOAPString", [0, 1]],
      ["newAuthInfo", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDNSRequest,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfDNSRequest"),
    :schema_element => [
      ["dNSRequest", ["DNSRequest[]", XSD::QName.new(NsWebservices, "DNSRequest")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DNSRequest,
    :schema_type => XSD::QName.new(NsWebservices, "DNSRequest"),
    :schema_element => [
      ["recType", "SOAP::SOAPString", [0, 1]],
      ["action", "SOAP::SOAPString", [0, 1]],
      ["key", "SOAP::SOAPString", [0, 1]],
      ["ttl", "SOAP::SOAPInt"],
      ["recValue", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DomainContacts,
    :schema_type => XSD::QName.new(NsWebservices, "DomainContacts"),
    :schema_element => [
      ["registrant", "ContactInfo", [0, 1]],
      ["admin", "ContactInfo", [0, 1]],
      ["billing", "ContactInfo", [0, 1]],
      ["tech", "ContactInfo", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDomainData,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfDomainData"),
    :schema_element => [
      ["domainData", ["DomainData[]", XSD::QName.new(NsWebservices, "DomainData")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DomainData,
    :schema_type => XSD::QName.new(NsWebservices, "DomainData"),
    :schema_element => [
      ["sld", "SOAP::SOAPString", [0, 1]],
      ["tld", "SOAP::SOAPString", [0, 1]],
      ["period", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessRequest,
    :schema_name => XSD::QName.new(NsWebservices, "ProcessRequest"),
    :schema_element => [
      ["sRequestXML", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessRequestResponse,
    :schema_name => XSD::QName.new(NsWebservices, "ProcessRequestResponse"),
    :schema_element => [
      ["processRequestResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "ProcessRequestResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Describe,
    :schema_name => XSD::QName.new(NsWebservices, "Describe"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeResponse,
    :schema_name => XSD::QName.new(NsWebservices, "DescribeResponse"),
    :schema_element => [
      ["describeResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "DescribeResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CheckAvailability,
    :schema_name => XSD::QName.new(NsWebservices, "CheckAvailability"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["sDomainArray", "ArrayOfString", [0, 1]],
      ["sHostArray", "ArrayOfString", [0, 1]],
      ["sNSArray", "ArrayOfString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CheckAvailabilityResponse,
    :schema_name => XSD::QName.new(NsWebservices, "CheckAvailabilityResponse"),
    :schema_element => [
      ["checkAvailabilityResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "CheckAvailabilityResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Info,
    :schema_name => XSD::QName.new(NsWebservices, "Info"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["sResourceID", "SOAP::SOAPString", [0, 1]],
      ["sType", "SOAP::SOAPString", [0, 1]],
      ["sDomain", "SOAP::SOAPString", [0, 1]],
      ["sOrderID", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InfoResponse,
    :schema_name => XSD::QName.new(NsWebservices, "InfoResponse"),
    :schema_element => [
      ["infoResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "InfoResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => NameGen,
    :schema_name => XSD::QName.new(NsWebservices, "NameGen"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["sSLD", "SOAP::SOAPString", [0, 1]],
      ["sTLD", "SOAP::SOAPString", [0, 1]],
      ["sTLDs", "SOAP::SOAPString", [0, 1]],
      ["nRows", "SOAP::SOAPUnsignedShort"],
      ["bHypens", "SOAP::SOAPBoolean"],
      ["bNumbers", "SOAP::SOAPBoolean"],
      ["nMaxLen", "SOAP::SOAPUnsignedShort"],
      ["bIntelliSearch", "SOAP::SOAPBoolean"],
      ["nPage", "SOAP::SOAPUnsignedShort"],
      ["sTime", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => NameGenResponse,
    :schema_name => XSD::QName.new(NsWebservices, "NameGenResponse"),
    :schema_element => [
      ["nameGenResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "NameGenResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => NameGenDB,
    :schema_name => XSD::QName.new(NsWebservices, "NameGenDB"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["sKey", "SOAP::SOAPString", [0, 1]],
      ["nMaxResults", "SOAP::SOAPInt"],
      ["bExcludeTaken", "SOAP::SOAPBoolean"],
      ["sTLDs", "SOAP::SOAPString", [0, 1]],
      ["bAddPrefix", "SOAP::SOAPBoolean"],
      ["bAddSuffix", "SOAP::SOAPBoolean"],
      ["bAddDashes", "SOAP::SOAPBoolean"],
      ["bAddRelated", "SOAP::SOAPBoolean"],
      ["bAdvancedSplit", "SOAP::SOAPBoolean"],
      ["bBaseOnTop", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => NameGenDBResponse,
    :schema_name => XSD::QName.new(NsWebservices, "NameGenDBResponse"),
    :schema_element => [
      ["nameGenDBResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "NameGenDBResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => NameGenDBWithTimeLimit,
    :schema_name => XSD::QName.new(NsWebservices, "NameGenDBWithTimeLimit"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["sKey", "SOAP::SOAPString", [0, 1]],
      ["nMaxResults", "SOAP::SOAPInt"],
      ["bExcludeTaken", "SOAP::SOAPBoolean"],
      ["sTLDs", "SOAP::SOAPString", [0, 1]],
      ["bAddPrefix", "SOAP::SOAPBoolean"],
      ["bAddSuffix", "SOAP::SOAPBoolean"],
      ["bAddDashes", "SOAP::SOAPBoolean"],
      ["bAddRelated", "SOAP::SOAPBoolean"],
      ["bAdvancedSplit", "SOAP::SOAPBoolean"],
      ["bBaseOnTop", "SOAP::SOAPBoolean"],
      ["nMaxWaitSeconds", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => NameGenDBWithTimeLimitResponse,
    :schema_name => XSD::QName.new(NsWebservices, "NameGenDBWithTimeLimitResponse"),
    :schema_element => [
      ["nameGenDBWithTimeLimitResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "NameGenDBWithTimeLimitResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Poll,
    :schema_name => XSD::QName.new(NsWebservices, "Poll"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["sOp", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PollResponse,
    :schema_name => XSD::QName.new(NsWebservices, "PollResponse"),
    :schema_element => [
      ["pollResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "PollResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrderCredits,
    :schema_name => XSD::QName.new(NsWebservices, "OrderCredits"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["shopper", "Shopper", [0, 1]],
      ["items", "ArrayOfOrderItem", [0, 1]],
      ["sROID", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrderCreditsResponse,
    :schema_name => XSD::QName.new(NsWebservices, "OrderCreditsResponse"),
    :schema_element => [
      ["orderCreditsResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "OrderCreditsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrderDomains,
    :schema_name => XSD::QName.new(NsWebservices, "OrderDomains"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["shopper", "Shopper", [0, 1]],
      ["items", "ArrayOfDomainRegistration", [0, 1]],
      ["dbpItems", "ArrayOfDomainByProxy", [0, 1]],
      ["sROID", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrderDomainsResponse,
    :schema_name => XSD::QName.new(NsWebservices, "OrderDomainsResponse"),
    :schema_element => [
      ["orderDomainsResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "OrderDomainsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrderDomainRenewals,
    :schema_name => XSD::QName.new(NsWebservices, "OrderDomainRenewals"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["shopper", "Shopper", [0, 1]],
      ["items", "ArrayOfDomainRenewal", [0, 1]],
      ["sROID", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrderDomainRenewalsResponse,
    :schema_name => XSD::QName.new(NsWebservices, "OrderDomainRenewalsResponse"),
    :schema_element => [
      ["orderDomainRenewalsResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "OrderDomainRenewalsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrderPrivateDomainRenewals,
    :schema_name => XSD::QName.new(NsWebservices, "OrderPrivateDomainRenewals"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["shopper", "Shopper", [0, 1]],
      ["items", "ArrayOfDomainRenewal", [0, 1]],
      ["dbpItems", "ArrayOfResourceRenewal", [0, 1]],
      ["sROID", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrderPrivateDomainRenewalsResponse,
    :schema_name => XSD::QName.new(NsWebservices, "OrderPrivateDomainRenewalsResponse"),
    :schema_element => [
      ["orderPrivateDomainRenewalsResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "OrderPrivateDomainRenewalsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrderDomainTransfers,
    :schema_name => XSD::QName.new(NsWebservices, "OrderDomainTransfers"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["shopper", "Shopper", [0, 1]],
      ["items", "ArrayOfDomainTransfer", [0, 1]],
      ["sROID", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrderDomainTransfersResponse,
    :schema_name => XSD::QName.new(NsWebservices, "OrderDomainTransfersResponse"),
    :schema_element => [
      ["orderDomainTransfersResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "OrderDomainTransfersResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrderDomainPrivacy,
    :schema_name => XSD::QName.new(NsWebservices, "OrderDomainPrivacy"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["shopper", "Shopper", [0, 1]],
      ["items", "ArrayOfDomainByProxy", [0, 1]],
      ["sROID", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrderDomainPrivacyResponse,
    :schema_name => XSD::QName.new(NsWebservices, "OrderDomainPrivacyResponse"),
    :schema_element => [
      ["orderDomainPrivacyResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "OrderDomainPrivacyResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrderResourceRenewals,
    :schema_name => XSD::QName.new(NsWebservices, "OrderResourceRenewals"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["shopper", "Shopper", [0, 1]],
      ["items", "ArrayOfResourceRenewal", [0, 1]],
      ["sROID", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrderResourceRenewalsResponse,
    :schema_name => XSD::QName.new(NsWebservices, "OrderResourceRenewalsResponse"),
    :schema_element => [
      ["orderResourceRenewalsResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "OrderResourceRenewalsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrderDomainBackOrders,
    :schema_name => XSD::QName.new(NsWebservices, "OrderDomainBackOrders"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["shopper", "Shopper", [0, 1]],
      ["items", "ArrayOfDomainBackOrder", [0, 1]],
      ["sROID", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrderDomainBackOrdersResponse,
    :schema_name => XSD::QName.new(NsWebservices, "OrderDomainBackOrdersResponse"),
    :schema_element => [
      ["orderDomainBackOrdersResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "OrderDomainBackOrdersResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Cancel,
    :schema_name => XSD::QName.new(NsWebservices, "Cancel"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["sType", "SOAP::SOAPString", [0, 1]],
      ["sIDArray", "ArrayOfString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CancelResponse,
    :schema_name => XSD::QName.new(NsWebservices, "CancelResponse"),
    :schema_element => [
      ["cancelResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "CancelResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateDomainOwnership,
    :schema_name => XSD::QName.new(NsWebservices, "UpdateDomainOwnership"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["sResourceID", "SOAP::SOAPString", [0, 1]],
      ["sLosingOwner", "SOAP::SOAPString", [0, 1]],
      ["gaining", "GainingOwner", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateDomainOwnershipResponse,
    :schema_name => XSD::QName.new(NsWebservices, "UpdateDomainOwnershipResponse"),
    :schema_element => [
      ["updateDomainOwnershipResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "UpdateDomainOwnershipResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResetPassword,
    :schema_name => XSD::QName.new(NsWebservices, "ResetPassword"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["sUser", "SOAP::SOAPString", [0, 1]],
      ["sPwd", "SOAP::SOAPString", [0, 1]],
      ["sEmail", "SOAP::SOAPString", [0, 1]],
      ["sPwdHint", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResetPasswordResponse,
    :schema_name => XSD::QName.new(NsWebservices, "ResetPasswordResponse"),
    :schema_element => [
      ["resetPasswordResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "ResetPasswordResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetShopperInfo,
    :schema_name => XSD::QName.new(NsWebservices, "SetShopperInfo"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["sUser", "SOAP::SOAPString", [0, 1]],
      ["sEmail", "SOAP::SOAPString", [0, 1]],
      ["sFirstName", "SOAP::SOAPString", [0, 1]],
      ["sLastName", "SOAP::SOAPString", [0, 1]],
      ["sPhone", "SOAP::SOAPString", [0, 1]],
      ["sFax", "SOAP::SOAPString", [0, 1]],
      ["sCompany", "SOAP::SOAPString", [0, 1]],
      ["sAddress", "SOAP::SOAPString", [0, 1]],
      ["sCity", "SOAP::SOAPString", [0, 1]],
      ["sState", "SOAP::SOAPString", [0, 1]],
      ["sZip", "SOAP::SOAPString", [0, 1]],
      ["sCountry", "SOAP::SOAPString", [0, 1]],
      ["sShopperPin", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetShopperInfoResponse,
    :schema_name => XSD::QName.new(NsWebservices, "SetShopperInfoResponse"),
    :schema_element => [
      ["setShopperInfoResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "SetShopperInfoResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateNewShopper,
    :schema_name => XSD::QName.new(NsWebservices, "CreateNewShopper"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["sPwd", "SOAP::SOAPString", [0, 1]],
      ["sEmail", "SOAP::SOAPString", [0, 1]],
      ["sFirstName", "SOAP::SOAPString", [0, 1]],
      ["sLastName", "SOAP::SOAPString", [0, 1]],
      ["sPhone", "SOAP::SOAPString", [0, 1]],
      ["sPwdHint", "SOAP::SOAPString", [0, 1]],
      ["sFax", "SOAP::SOAPString", [0, 1]],
      ["sCompany", "SOAP::SOAPString", [0, 1]],
      ["sAddress", "SOAP::SOAPString", [0, 1]],
      ["sCity", "SOAP::SOAPString", [0, 1]],
      ["sState", "SOAP::SOAPString", [0, 1]],
      ["sZip", "SOAP::SOAPString", [0, 1]],
      ["sCountry", "SOAP::SOAPString", [0, 1]],
      ["sShopperPin", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateNewShopperResponse,
    :schema_name => XSD::QName.new(NsWebservices, "CreateNewShopperResponse"),
    :schema_element => [
      ["createNewShopperResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "CreateNewShopperResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CheckUser,
    :schema_name => XSD::QName.new(NsWebservices, "CheckUser"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["sType", "SOAP::SOAPString", [0, 1]],
      ["sUser", "SOAP::SOAPString", [0, 1]],
      ["sPwd", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CheckUserResponse,
    :schema_name => XSD::QName.new(NsWebservices, "CheckUserResponse"),
    :schema_element => [
      ["checkUserResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "CheckUserResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetupDomainAlert,
    :schema_name => XSD::QName.new(NsWebservices, "SetupDomainAlert"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["domainAlert", "DomainAlert", [0, 1]],
      ["registrant", "ContactInfo", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetupDomainAlertResponse,
    :schema_name => XSD::QName.new(NsWebservices, "SetupDomainAlertResponse"),
    :schema_element => [
      ["setupDomainAlertResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "SetupDomainAlertResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateDomainAlert,
    :schema_name => XSD::QName.new(NsWebservices, "UpdateDomainAlert"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["domainAlert", "DomainAlert", [0, 1]],
      ["sDomainMonitorID", "SOAP::SOAPString", [0, 1]],
      ["registrant", "ContactInfo", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateDomainAlertResponse,
    :schema_name => XSD::QName.new(NsWebservices, "UpdateDomainAlertResponse"),
    :schema_element => [
      ["updateDomainAlertResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "UpdateDomainAlertResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveDomainAlert,
    :schema_name => XSD::QName.new(NsWebservices, "RemoveDomainAlert"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["sDomainMonitorID", "SOAP::SOAPString", [0, 1]],
      ["sUser", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveDomainAlertResponse,
    :schema_name => XSD::QName.new(NsWebservices, "RemoveDomainAlertResponse"),
    :schema_element => [
      ["removeDomainAlertResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "RemoveDomainAlertResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDomainAlertCredits,
    :schema_name => XSD::QName.new(NsWebservices, "GetDomainAlertCredits"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["sUser", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDomainAlertCreditsResponse,
    :schema_name => XSD::QName.new(NsWebservices, "GetDomainAlertCreditsResponse"),
    :schema_element => [
      ["getDomainAlertCreditsResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "GetDomainAlertCreditsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetMonitoredDomainList,
    :schema_name => XSD::QName.new(NsWebservices, "GetMonitoredDomainList"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["sUser", "SOAP::SOAPString", [0, 1]],
      ["nPage", "SOAP::SOAPInt"],
      ["nRowsPerPage", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => GetMonitoredDomainListResponse,
    :schema_name => XSD::QName.new(NsWebservices, "GetMonitoredDomainListResponse"),
    :schema_element => [
      ["getMonitoredDomainListResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "GetMonitoredDomainListResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetExpiringNameList,
    :schema_name => XSD::QName.new(NsWebservices, "GetExpiringNameList"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["sUser", "SOAP::SOAPString", [0, 1]],
      ["nLength", "SOAP::SOAPInt"],
      ["sDashes", "SOAP::SOAPString", [0, 1]],
      ["sNumbers", "SOAP::SOAPString", [0, 1]],
      ["sWildCardSearch", "SOAP::SOAPString", [0, 1]],
      ["sSearchCriteria", "SOAP::SOAPString", [0, 1]],
      ["sTLDs", "SOAP::SOAPString", [0, 1]],
      ["nPage", "SOAP::SOAPInt"],
      ["nRowsPerPage", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => GetExpiringNameListResponse,
    :schema_name => XSD::QName.new(NsWebservices, "GetExpiringNameListResponse"),
    :schema_element => [
      ["getExpiringNameListResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "GetExpiringNameListResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DomainForwarding,
    :schema_name => XSD::QName.new(NsWebservices, "DomainForwarding"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["sUser", "SOAP::SOAPString", [0, 1]],
      ["nDomainID", "SOAP::SOAPInt"],
      ["sForwardingURL", "SOAP::SOAPString", [0, 1]],
      ["sMngTRID", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DomainForwardingResponse,
    :schema_name => XSD::QName.new(NsWebservices, "DomainForwardingResponse"),
    :schema_element => [
      ["domainForwardingResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "DomainForwardingResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateNameServer,
    :schema_name => XSD::QName.new(NsWebservices, "UpdateNameServer"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["domainArray", "ArrayOfDomain", [0, 1]],
      ["nsArray", "ArrayOfNS", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateNameServerResponse,
    :schema_name => XSD::QName.new(NsWebservices, "UpdateNameServerResponse"),
    :schema_element => [
      ["updateNameServerResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "UpdateNameServerResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateDomainContact,
    :schema_name => XSD::QName.new(NsWebservices, "UpdateDomainContact"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["domainArray", "ArrayOfDomain", [0, 1]],
      ["registrant", "ContactInfo", [0, 1]],
      ["admin", "ContactInfo", [0, 1]],
      ["billing", "ContactInfo", [0, 1]],
      ["tech", "ContactInfo", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateDomainContactResponse,
    :schema_name => XSD::QName.new(NsWebservices, "UpdateDomainContactResponse"),
    :schema_element => [
      ["updateDomainContactResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "UpdateDomainContactResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetDomainLocking,
    :schema_name => XSD::QName.new(NsWebservices, "SetDomainLocking"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["domainArray", "ArrayOfDomain", [0, 1]],
      ["sLock", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetDomainLockingResponse,
    :schema_name => XSD::QName.new(NsWebservices, "SetDomainLockingResponse"),
    :schema_element => [
      ["setDomainLockingResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "SetDomainLockingResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ManageTransfer,
    :schema_name => XSD::QName.new(NsWebservices, "ManageTransfer"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["domainArray", "ArrayOfDomain", [0, 1]],
      ["sAction", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ManageTransferResponse,
    :schema_name => XSD::QName.new(NsWebservices, "ManageTransferResponse"),
    :schema_element => [
      ["manageTransferResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "ManageTransferResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateDomainForwarding,
    :schema_name => XSD::QName.new(NsWebservices, "UpdateDomainForwarding"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["domainArray", "ArrayOfDomain", [0, 1]],
      ["sAction", "SOAP::SOAPString", [0, 1]],
      ["sForwardingURL", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateDomainForwardingResponse,
    :schema_name => XSD::QName.new(NsWebservices, "UpdateDomainForwardingResponse"),
    :schema_element => [
      ["updateDomainForwardingResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "UpdateDomainForwardingResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateDomainMasking,
    :schema_name => XSD::QName.new(NsWebservices, "UpdateDomainMasking"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["domainArray", "ArrayOfDomain", [0, 1]],
      ["sAction", "SOAP::SOAPString", [0, 1]],
      ["sForwardingURL", "SOAP::SOAPString", [0, 1]],
      ["sMaskingMetatagTitle", "SOAP::SOAPString", [0, 1]],
      ["sMaskingMetatagDesc", "SOAP::SOAPString", [0, 1]],
      ["sMaskingMetatagKeyword", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateDomainMaskingResponse,
    :schema_name => XSD::QName.new(NsWebservices, "UpdateDomainMaskingResponse"),
    :schema_element => [
      ["updateDomainMaskingResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "UpdateDomainMaskingResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ModifyDNS,
    :schema_name => XSD::QName.new(NsWebservices, "ModifyDNS"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["dnsRequestArray", "ArrayOfDNSRequest", [0, 1]],
      ["sDomain", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ModifyDNSResponse,
    :schema_name => XSD::QName.new(NsWebservices, "ModifyDNSResponse"),
    :schema_element => [
      ["modifyDNSResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "ModifyDNSResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ValidateRegistration,
    :schema_name => XSD::QName.new(NsWebservices, "ValidateRegistration"),
    :schema_element => [
      ["sCLTRID", "SOAP::SOAPString", [0, 1]],
      ["credential", "Credential", [0, 1]],
      ["domainContacts", "DomainContacts", [0, 1]],
      ["domainDataArray", "ArrayOfDomainData", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ValidateRegistrationResponse,
    :schema_name => XSD::QName.new(NsWebservices, "ValidateRegistrationResponse"),
    :schema_element => [
      ["validateRegistrationResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "ValidateRegistrationResult")], [0, 1]]
    ]
  )
end
