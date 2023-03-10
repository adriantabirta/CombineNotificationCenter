//
//  SystemWillPresentNotificationUseCase.swift
//  
//
//  Created by Adrian Tabirta on 11.03.2023.
//

import Combine

public protocol SystemWillPresentNotificationUseCase {
    
    func execute(use options: SystemNotificationPresentationOptions) -> AnyPublisher<Void, Never>
}
