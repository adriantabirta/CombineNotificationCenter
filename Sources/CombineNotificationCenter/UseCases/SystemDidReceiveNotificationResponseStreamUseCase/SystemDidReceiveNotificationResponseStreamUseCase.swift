//
//  SystemDidReceiveNotificationResponseStreamUseCase.swift
//  
//
//  Created by Adrian Tabirta on 11.03.2023.
//

import Combine

public protocol SystemDidReceiveNotificationResponseStreamUseCase {
    
    func execute() -> AnyPublisher<SystemNotificationResponse, Never>
}
