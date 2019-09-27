//
//  MUTestViewController.m
//  Category
//
//  Created by soda on 2019/9/23.
//  Copyright © 2019 123. All rights reserved.
//

#import "MUTestViewController.h"
#import "avformat.h"

@interface MUTestViewController ()

@end

@implementation MUTestViewController

- (void)viewDidLoad {
    av_register_all();
    [super viewDidLoad];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        self.view.backgroundColor = UIColor.redColor;
    });
   
}



@end
