//
//  APage1Controller.m
//  RouterDemo
//
//  Created by Destiny on 2021/4/20.
//

#import "APage1Controller.h"

@interface APage1Controller ()

@end

@implementation APage1Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"A_Module_Page1";
}

- (IBAction)blockAction:(UIButton *)sender {
    if(self.backBlock){
        [self.navigationController popViewControllerAnimated:YES];
        
        self.backBlock(@{@"value":@"A_Module_Page1_Block"});
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
