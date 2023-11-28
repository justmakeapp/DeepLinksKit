//
//  DeeplinkCoordinator.swift
//
//
//  Created by longvu on 26/05/2023.
//

import Foundation

public protocol DeeplinkCoordinatorProtocol {
    @discardableResult
    func handleURL(_ url: URL) -> Bool
}

public struct DeeplinkCoordinator: DeeplinkCoordinatorProtocol {
    private let handlers: [DeeplinkHandlerProtocol]

    public init(handlers: [DeeplinkHandlerProtocol]) {
        self.handlers = handlers
    }

    @discardableResult
    public func handleURL(_ url: URL) -> Bool {
        guard let handler = handlers.first(where: { $0.canOpenURL(url) }) else {
            return false
        }

        handler.openURL(url)
        return true
    }
}
