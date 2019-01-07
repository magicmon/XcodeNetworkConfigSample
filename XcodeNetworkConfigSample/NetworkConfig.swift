//
//  NetworkConfig.swift
//  XcodeNetworkConfigSample
//
//  Created by magicmon on 2018. 11. 14..
//  Copyright © 2018년 magicmon. All rights reserved.
//

import Foundation

// MARK: - NetworkConfig
final class NetworkConfig {
    enum NetworkHost: String {
        case dev
        case qa
        case product
    }
    
    static let shared = NetworkConfig()
    
    private init() {}
    
    // MARK: - Instance Properties
    var host: NetworkHost {
        if serverDomain.contains(NetworkHost.dev.rawValue) {
            return NetworkHost.dev
        } else if serverDomain.contains(NetworkHost.qa.rawValue) {
            return NetworkHost.qa
        }
        
        return NetworkHost.product
    }
    
    // 서버 도메인
    var serverDomain: String {
        guard let info = Bundle.main.infoDictionary,
            let debug = info["AppDomain"] as? [String: Any], let serverURL = debug["ServerURL"] as? String else {
                #if DEBUG
                return "https://dev.test.co.kr"
                #else
                return "https://product.test.co.kr"
                #endif
        }
        
        return serverURL
    }
}
