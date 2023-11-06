//
//  NominationResponse.swift
//  Nominations
//
//  Created by Sandhya on 06/11/2023.
//  Copyright © 2023 3 Sided Cube (UK) Ltd. All rights reserved.
//

import Foundation

// MARK: - Welcome
struct NominationResponse: Codable {
    let data: [DataResponse]
}

// MARK: - Datum
struct DataResponse: Codable {
    let nominationID, nomineeID, firstName, lastName, reason, process: String
    let dateSubmitted, closingDate: String

    enum CodingKeys: String, CodingKey {
        case nominationID = "nomination_id"
        case nomineeID = "nominee_id"
        case firstName = "first_name"
        case lastName = "last_name"
        case reason, process
        case dateSubmitted = "date_submitted"
        case closingDate = "closing_date"
    }
}
