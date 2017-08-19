//
//  ViewController.h
//  RBObjCProject
//
//  Created by Rohan Bhale on 15/08/17.
//  Copyright © 2017 RB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextView *textView;

- (IBAction)getMessageButtonTapped:(id)sender;

@end

