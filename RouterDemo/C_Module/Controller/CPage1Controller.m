//
//  CPage1Controller.m
//  RouterDemo
//
//  Created by Destiny on 2021/4/20.
//

#import "CPage1Controller.h"

@interface CPage1Controller ()

@end

@implementation CPage1Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)blockAction:(UIButton *)sender {
    if(self.didViewControllerBlock){
        [self.navigationController popViewControllerAnimated:YES];
        
        self.didViewControllerBlock(@{@"value":@"C_Module_Page1_Block"});
    }else{
        [self.navigationController popViewControllerAnimated:YES];
    }
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
