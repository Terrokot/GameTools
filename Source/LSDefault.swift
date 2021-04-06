//LSDefault.swift
import Foundation

@propertyWrapper
public struct LSDefault {

    private let key: String
    private var defaultValue: String? = nil
    
    init(key: String, defaultValue: String) {
        self.key = key
        self.defaultValue = defaultValue
    }
    
    init(key: String) {
        self.key = key
    }

    public var wrappedValue: String {
        get {
            guard let value = UserDefaults.standard.string(forKey: key) else {
                return unlock(value: defaultValue ?? "")
            }
            return unlock(value: value)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }

    private func unlock(value: String) -> String {
        
        let array = String(value.reversed()).components(separatedBy: " ")

        let array1 = array.compactMap { Int($0, radix: 0o10) }
                          .compactMap { UnicodeScalar($0) }
                          .map { Character($0) }
                          .map { String($0) }
        let temp = array1.joined()
        return String(temp)
    }
}

