//
//  DateString.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 22/05/22.
//

import Foundation

extension String {

    func toDate(withFormat format: String = "dd/MM/yy HH:mm a")-> Date?{

        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.locale = Locale.current
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.dateFormat = format
        let date = dateFormatter.date(from: self)

        return date

    }
}

extension Date {

    func toString(withFormat format: String = "dd/MM/yyyy HH:mm a") -> String {

        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.dateFormat = format
        let str = dateFormatter.string(from: self)

        return str
    }
}

