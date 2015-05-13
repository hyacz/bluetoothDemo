//
//  ConnectionsViewController.m
//  bluetoothGameDemo
//
//  Created by hyacz on 15/5/13.
//  Copyright (c) 2015年 hyaczStudio. All rights reserved.
//

#import "ConnectionsViewController.h"
#import "AppDelegate.h"

@interface ConnectionsViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UISwitch *swVisible;
@property (weak, nonatomic) IBOutlet UIButton *btnDisconnect;
@property (weak, nonatomic) IBOutlet UITableView *tbConnectedDevices;

@property (nonatomic, strong) AppDelegate *appDelegate;
@end

@implementation ConnectionsViewController
- (IBAction)browseForDevices:(UIButton *)sender {
    [[_appDelegate mcManager] setupMCBrowser];
    [[[_appDelegate mcManager] browser] setDelegate:self];
    [self presentViewController:[[_appDelegate mcManager] browser] animated:YES completion:nil];
}
- (IBAction)toggleVisible:(UISwitch *)sender {
}
- (IBAction)disconnect:(UIButton *)sender {
}


#pragma -mark Delegate
-(void)browserViewControllerDidFinish:(MCBrowserViewController *)browserViewController{
    [_appDelegate.mcManager.browser dismissViewControllerAnimated:YES completion:nil];
}

-(void)browserViewControllerWasCancelled:(MCBrowserViewController *)browserViewController{
    [_appDelegate.mcManager.browser dismissViewControllerAnimated:YES completion:nil];
}


#pragma -mark MVC-lifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.txtName.delegate = self;
    
    _appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [[_appDelegate mcManager] setupPeerAndSessionWithDisplayName:[UIDevice currentDevice].name];
    [[_appDelegate mcManager] advertiseSelf:_swVisible.isOn];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
