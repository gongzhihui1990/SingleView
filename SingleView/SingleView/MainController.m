//
//  MainController.m
//  SingleView
//
//  Created by 龚志辉 on 2017/9/15.
//  Copyright © 2017年 龚志辉. All rights reserved.
//

#import "MainController.h"

@interface MainController ()
@property (weak, nonatomic) IBOutlet UILabel *tfName;

@end

@implementation MainController
- (IBAction)back:(id)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.userName
    [self.tfName setText: self.userName];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
