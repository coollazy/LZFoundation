import Foundation

public extension Date {
    func addYear(_ year: Int) -> Date {
        Calendar.current.date(byAdding:.year, value: year, to: self)!
    }

    func addMonth(_ month: Int) -> Date {
        Calendar.current.date(byAdding:.month, value: month, to: self)!
    }

    func addDay(_ day: Int) -> Date {
        Calendar.current.date(byAdding:.day, value: day, to: self)!
    }
    
    func addHour(_ hour: Int) -> Date {
        Calendar.current.date(byAdding:.hour, value: hour, to: self)!
    }
    
    func addMinute(_ minute: Int) -> Date {
        Calendar.current.date(byAdding:.minute, value: minute, to: self)!
    }
    
    func addSecond(_ second: Int) -> Date {
        Calendar.current.date(byAdding:.second, value: second, to: self)!
    }
}

public extension Date {
    func firstMinuteOfHour() -> Date {
        var dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour], from: self)
        dateComponents.minute = 0
        return Calendar.current.date(from: dateComponents)!
    }
    
    func lastMinuteOfHour() -> Date {
        var dateComponents = DateComponents()
        dateComponents.hour = 1
        dateComponents.second = -1
        return Calendar.current.date(byAdding: dateComponents, to: self.firstMinuteOfHour())!
    }
    
    func firstHourOfDay(timeZone: TimeZone? = nil) -> Date {
        var dateComponents = Calendar.current.dateComponents([.year, .month, .day], from: self)
        if let timeZone = timeZone {
            dateComponents.timeZone = timeZone
        }
        dateComponents.hour = 0
        return Calendar.current.date(from: dateComponents)!
    }
    
    func lastHourOfDay(timeZone: TimeZone? = nil) -> Date {
        var dateComponents = DateComponents()
        dateComponents.day = 1
        dateComponents.second = -1
        return Calendar.current.date(byAdding: dateComponents, to: self.firstHourOfDay(timeZone: timeZone))!
    }
    
    func firstDayOfMonth() -> Date {
        var dateComponents = Calendar.current.dateComponents([.year, .month], from: self)
        dateComponents.day = 1
        return Calendar.current.date(from: dateComponents)!
    }
    
    func lastDayOfMonth() -> Date {
        var dateComponents = DateComponents()
        dateComponents.month = 1
        dateComponents.second = -1
        return Calendar.current.date(byAdding: dateComponents, to: self.firstDayOfMonth())!
    }
    
    func firstDayOfYear() -> Date {
        var dateComponents = Calendar.current.dateComponents([.year], from: self)
        dateComponents.month = 1
        dateComponents.day = 1
        return Calendar.current.date(from: dateComponents)!
    }
    
    func lastDayOfYear() -> Date {
        var dateComponents = DateComponents()
        dateComponents.year = 1
        dateComponents.second = -1
        return Calendar.current.date(byAdding: dateComponents, to: self.firstDayOfYear())!
    }
}
