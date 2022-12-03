//
//  Model.swift
//  Spark2
//
//  Created by Jessica Kent on 11/16/22.


// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let route = try? newJSONDecoder().decode(Route.self, from: jsonData)



import Foundation

// MARK: - Route
struct Route: Codable {
    var stationLocatorURL: String
    var totalResults: Int
    var stationCounts: StationCounts
    var fuelStations: [FuelStation]

    enum CodingKeys: String, CodingKey {
        case stationLocatorURL = "station_locator_url"
        case totalResults = "total_results"
        case stationCounts = "station_counts"
        case fuelStations = "fuel_stations"
    }
}

// MARK: - FuelStation
struct FuelStation: Codable {
    var accessCode: AccessCode
    var accessDaysTime, accessDetailCode: String?
    var cardsAccepted: JSONNull?
    var dateLastConfirmed: String
    var expectedDate: JSONNull?
    var fuelTypeCode: FuelTypeCode
    var groupsWithAccessCode: GroupsWithAccessCode
    var id: Int
    var openDate: String
    var ownerTypeCode: OwnerTypeCode
    var statusCode: StatusCode
    var restrictedAccess: Bool?
    var stationName: String
    var stationPhone: String?
    var updatedAt: Date
    var facilityType: String
    var geocodeStatus: GeocodeStatus
    var latitude, longitude: Double
    var city: String
    var intersectionDirections: String?
    var plus4: JSONNull?
    var staete: Sta?
    var streetAddress, zip: String
    var country: Country
    var bdBlends, cngDispenserNum, cngFillTypeCode, cngPsi: JSONNull?
    var cngRenewableSource, cngTotalCompression, cngTotalStorage, cngVehicleClass: JSONNull?
    var e85BlenderPump, e85OtherEthanolBlends: JSONNull?
    var evConnectorTypes: [EvConnectorType]?
    var evDcFastNum: Int?
    var evLevel1EvseNum: JSONNull?
    var evLevel2EvseNum: Int?
    var evNetwork: EvNetwork
    var evNetworkWeb: JSONNull?
    var evOtherEvse: String?
    var evPricing: EvPricing?
    var evRenewableSource, hyIsRetail, hyPressures, hyStandards: JSONNull?
    var hyStatusLink, lngRenewableSource, lngVehicleClass, lpgPrimary: JSONNull?
    var lpgNozzleTypes, ngFillTypeCode, ngPsi, ngVehicleClass: JSONNull?
    var accessDaysTimeFr, intersectionDirectionsFr, bdBlendsFr: JSONNull?
    var groupsWithAccessCodeFr: GroupsWithAccessCodeFr
    var evPricingFr: JSONNull?
    var state: Sta?
   var geometry: JSONNull?

    enum CodingKeys: String, CodingKey {
        case accessCode = "access_code"
        case accessDaysTime = "access_days_time"
        case accessDetailCode = "access_detail_code"
        case cardsAccepted = "cards_accepted"
        case dateLastConfirmed = "date_last_confirmed"
        case expectedDate = "expected_date"
        case fuelTypeCode = "fuel_type_code"
        case groupsWithAccessCode = "groups_with_access_code"
        case id
        case openDate = "open_date"
        case ownerTypeCode = "owner_type_code"
        case statusCode = "status_code"
        case restrictedAccess = "restricted_access"
        case stationName = "station_name"
        case stationPhone = "station_phone"
        case updatedAt = "updated_at"
        case facilityType = "facility_type"
        case geocodeStatus = "geocode_status"
        case latitude, longitude, city
        case intersectionDirections = "intersection_directions"
        case plus4, staete
        case streetAddress = "street_address"
        case zip, country
        case bdBlends = "bd_blends"
        case cngDispenserNum = "cng_dispenser_num"
        case cngFillTypeCode = "cng_fill_type_code"
        case cngPsi = "cng_psi"
        case cngRenewableSource = "cng_renewable_source"
        case cngTotalCompression = "cng_total_compression"
        case cngTotalStorage = "cng_total_storage"
        case cngVehicleClass = "cng_vehicle_class"
        case e85BlenderPump = "e85_blender_pump"
        case e85OtherEthanolBlends = "e85_other_ethanol_blends"
        case evConnectorTypes = "ev_connector_types"
        case evDcFastNum = "ev_dc_fast_num"
        case evLevel1EvseNum = "ev_level1_evse_num"
        case evLevel2EvseNum = "ev_level2_evse_num"
        case evNetwork = "ev_network"
        case evNetworkWeb = "ev_network_web"
        case evOtherEvse = "ev_other_evse"
        case evPricing = "ev_pricing"
        case evRenewableSource = "ev_renewable_source"
        case hyIsRetail = "hy_is_retail"
        case hyPressures = "hy_pressures"
        case hyStandards = "hy_standards"
        case hyStatusLink = "hy_status_link"
        case lngRenewableSource = "lng_renewable_source"
        case lngVehicleClass = "lng_vehicle_class"
        case lpgPrimary = "lpg_primary"
        case lpgNozzleTypes = "lpg_nozzle_types"
        case ngFillTypeCode = "ng_fill_type_code"
        case ngPsi = "ng_psi"
        case ngVehicleClass = "ng_vehicle_class"
        case accessDaysTimeFr = "access_days_time_fr"
        case intersectionDirectionsFr = "intersection_directions_fr"
        case bdBlendsFr = "bd_blends_fr"
        case groupsWithAccessCodeFr = "groups_with_access_code_fr"
        case evPricingFr = "ev_pricing_fr"
        case state
        case geometry = "Geometry"
    }
}

enum AccessCode: String, Codable {
    case accessCodePrivate = "private"
    case accessCodePublic = "public"
}

enum Country: String, Codable {
    case us = "US"
}

enum EvConnectorType: String, Codable {
    case chademo = "CHADEMO"
    case j1772 = "J1772"
    case j1772Combo = "J1772COMBO"
}

enum EvNetwork: String, Codable {
    case nonNetworked = "Non-Networked"
}

enum EvPricing: String, Codable {
    case free = "Free"
    case payToPark = "Pay to Park"
    case the2ServiceFee045PerKWh = "$2 service fee + $0.45 per kWh"
}

enum FuelTypeCode: String, Codable {
    case elec = "ELEC"
}

enum GeocodeStatus: String, Codable {
    case gps = "GPS"
    case the2008 = "200-8"
    case the2009 = "200-9"
}

enum GroupsWithAccessCode: String, Codable {
    case groupsWithAccessCodePrivate = "Private"
    case groupsWithAccessCodePublic = "Public"
    case privateGovernmentOnly = "Private - Government only"
    case publicCallAhead = "Public - Call ahead"
}

enum GroupsWithAccessCodeFr: String, Codable {
    case groupsWithAccessCodeFrPublic = "Public"
    case privé = "Privé"
    case privéRéservéAuGouvernement = "Privé - Réservé au gouvernement"
    case publicAppelerÀLAvance = "Public - Appeler à l'avance"
}

enum OwnerTypeCode: String, Codable {
    case lg = "LG"
    case p = "P"
    case sg = "SG"
}

enum Sta: String, Codable {
    case ca = "CA"
}

enum StatusCode: String, Codable {
    case e = "E"
}

// MARK: - StationCounts
struct StationCounts: Codable {
    var total: Int
    var fuels: Fuels
}

// MARK: - Fuels
struct Fuels: Codable {
    var bd, e85: Bd
    var elec: Elec
    var hy, lng, cng, lpg: Bd

    enum CodingKeys: String, CodingKey {
        case bd = "BD"
        case e85 = "E85"
        case elec = "ELEC"
        case hy = "HY"
        case lng = "LNG"
        case cng = "CNG"
        case lpg = "LPG"
    }
}

// MARK: - Bd
struct Bd: Codable {
    var total: Int
}

// MARK: - Elec
struct Elec: Codable {
    var total: Int
    var stations: Bd
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
