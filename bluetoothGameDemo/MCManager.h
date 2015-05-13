//
//  MCManager.h
//  bluetoothGameDemo
//
//  Created by hyacz on 15/5/13.
//  Copyright (c) 2015年 hyaczStudio. All rights reserved.
//

#import <Foundation/Foundation.h>
@import MultipeerConnectivity;

@interface MCManager : NSObject<MCSessionDelegate>

@property (nonatomic, strong) MCPeerID *peerID;
@property (nonatomic, strong) MCSession *session;
@property (nonatomic, strong) MCBrowserViewController *browser;
@property (nonatomic, strong) MCAdvertiserAssistant *advertiser;


-(void)setupPeerAndSessionWithDisplayName:(NSString *)displayName;

-(void)setupMCBrowser;

-(void)advertiseSelf:(BOOL)shouldAdvertise;

@end
