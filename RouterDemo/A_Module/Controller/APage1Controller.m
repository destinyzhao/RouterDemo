//
//  APage1Controller.m
//  RouterDemo
//
//  Created by Destiny on 2021/4/20.
//

#import "APage1Controller.h"
#import "UIViewController+Parameter.h"
#import "UIViewController+Block.h"


@interface APage1Controller ()

@end

@implementation APage1Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"A_Module_Page1";
    
    
    NSDictionary *vauleParameter = self.parameter;
    
    if(vauleParameter != nil){
        [self showAlert:[vauleParameter objectForKey:@"value"]];
    }
    
}

- (IBAction)blockAction:(UIButton *)sender {
    
    if(self.backBlock){
        [self.navigationController popViewControllerAnimated:YES];
        
        self.backBlock(@{@"value":@"A_Module_Page1_Block"});
    }else{
        [self.navigationController popViewControllerAnimated:YES];
    }
}


- (void)showAlert:(NSString *)msg{
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"title"
                                                                   message:msg
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {
                                                                  //响应事件
                                                                  NSLog(@"action = %@", action);
    }];
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
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
