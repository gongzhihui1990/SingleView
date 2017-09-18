//
//  MainController.m
//  SingleView
//
//  Created by 龚志辉 on 2017/9/15.
//  Copyright © 2017年 龚志辉. All rights reserved.
//

#import "LoginController.h"
#import "MainController.h"
@interface LoginController ()<UITextFieldDelegate, UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *pwTF;
@property (weak, nonatomic) IBOutlet UITextField *idTF;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

- (IBAction)loginClick:(id)sender;
@end

@implementation LoginController
- (IBAction)back:(id)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.idTF.delegate = self;
    self.pwTF.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)performJumpMain{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    MainController *vc = [mainStoryboard instantiateViewControllerWithIdentifier: @"MainController"];
    vc.userName = self.idTF.text;
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)loginClick:(id)sender {
    if ([@"123456" isEqualToString:self.pwTF.text]) {
        // PayResultController
        [self performJumpMain];
//        dispatch_async(dispatch_get_global_queue(0, 0), ^{
//            // 处理耗时操作的代码块...
//            sleep(2);
//            //通知主线程刷新
//            dispatch_async(dispatch_get_main_queue(), ^{
//                //回调或者说是通知主线程刷新，
//                [self performJumpMain];
//            });
//            
//        });
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    if ([self.idTF isFirstResponder]) {
        [self.pwTF becomeFirstResponder];
    }
    else if ([self.pwTF isFirstResponder]) {
        [self.view endEditing:YES];
    }
    return YES;
}

@end
