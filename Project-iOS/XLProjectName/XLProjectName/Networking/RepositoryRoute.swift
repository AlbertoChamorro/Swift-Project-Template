//
//  NetworkRepository.swift
//  XLProjectName
//
//  Created by XLAuthorName ( XLAuthorWebsite )
//  Copyright © 2016 XLOrganizationName. All rights reserved.
//

import Foundation
import Alamofire
import Opera

extension Route {
    
    enum Repository: RouteType {
        
        case GetInfo(owner: String, repo: String)
        case Search()

        var method: Alamofire.HTTPMethod {
            switch self {
            case .GetInfo, .Search:
                return .get
            }
        }
        
        var path: String {
            switch self {
            case let .GetInfo(owner, repo):
                return "repos/\(owner)/\(repo)"
            case .Search:
                return "search/repositories"
            }
        }

    }
}
