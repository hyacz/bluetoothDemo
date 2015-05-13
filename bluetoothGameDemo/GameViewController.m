//
//  GameViewController.m
//  bluetoothGameDemo
//
//  Created by hyacz on 15/5/13.
//  Copyright (c) 2015年 hyaczStudio. All rights reserved.
//

#import "GameViewController.h"
//#import "GameScene.h"
//
//@implementation SKScene (Unarchive)
//
//+ (instancetype)unarchiveFromFile:(NSString *)file {
//    /* Retrieve scene file path from the application bundle */
//    NSString *nodePath = [[NSBundle mainBundle] pathForResource:file ofType:@"sks"];
//    /* Unarchive the file to an SKScene object */
//    NSData *data = [NSData dataWithContentsOfFile:nodePath
//                                          options:NSDataReadingMappedIfSafe
//                                            error:nil];
//    NSKeyedUnarchiver *arch = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
//    [arch setClass:self forClassName:@"SKScene"];
//    SKScene *scene = [arch decodeObjectForKey:NSKeyedArchiveRootObjectKey];
//    [arch finishDecoding];
//    
//    return scene;
//}
//
//@end

@interface GameViewController ()
@property (weak, nonatomic) IBOutlet UIButton *connect;
@property (weak, nonatomic) IBOutlet UIButton *disconnect;
@property (weak, nonatomic) IBOutlet UITextField *txtMessage;

@end


@implementation GameViewController



#pragma -mark MVC-lifeCycle
- (void)viewDidLoad
{
    [super viewDidLoad];

//    // Configure the view.
//    SKView * skView = (SKView *)self.view;
//    skView.showsFPS = YES;
//    skView.showsNodeCount = YES;
//    /* Sprite Kit applies additional optimizations to improve rendering performance */
//    skView.ignoresSiblingOrder = NO;
//    
//    // Create and configure the scene.
//    GameScene *scene = [GameScene unarchiveFromFile:@"GameScene"];
//    scene.scaleMode = SKSceneScaleModeAspectFill;
//    
//    // Present the scene.
//    [skView presentScene:scene];
}


//- (NSUInteger)supportedInterfaceOrientations
//{
//    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
//        return UIInterfaceOrientationMaskAllButUpsideDown;
//    } else {
//        return UIInterfaceOrientationMaskAll;
//    }
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

//- (BOOL)prefersStatusBarHidden {
//    return YES;
//}

@end
