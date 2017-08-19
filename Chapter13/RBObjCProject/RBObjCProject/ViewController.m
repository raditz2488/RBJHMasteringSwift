//
//  ViewController.m
//  RBObjCProject
//
//  Created by Rohan Bhale on 15/08/17.
//  Copyright © 2017 RB. All rights reserved.
//

#import "ViewController.h"
#import "RBObjCProject-Swift.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)getMessageButtonTapped:(id)sender {
    MessageBuilder *mb = [[MessageBuilder alloc] init];
    self.textView.text = [mb getPersonalizedMessageWithName:@"Rohan"];
}
@end
