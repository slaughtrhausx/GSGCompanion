//
//  WebView.swift
//  GSGCompanion
//
//  Created by Sean Bartley on 12/7/22.
//
import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some UIView {
        let webView = WKWebView ()
        let request = URLRequest(url: URL(string: "https://gsg.live")!)
        webView.load(request)
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    
    }
    
}


