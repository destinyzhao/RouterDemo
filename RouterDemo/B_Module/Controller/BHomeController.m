//
//  BHomeController.m
//  RouterDemo
//
//  Created by Destiny on 2021/4/19.
//

#import "BHomeController.h"

@interface BHomeController ()

@end

@implementation BHomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"mycell";
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        //初始化单元格
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
            
            if (indexPath.row == 0) {
                cell.textLabel.text = @"点我跳转A模块Page1（HHRouter）";
            } else if (indexPath.row == 1) {
                cell.textLabel.text = @"点我跳转B模块Page1";
            } else {
                cell.textLabel.text =  @"点我跳转C模块Page1";
            }
        }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        [self pushAModulePage1];
        
    } else if (indexPath.row == 1) {
        
    } else {
       
    }
}

- (void)pushAModulePage1{
    
    UIViewController *vc = [[HHRouter shared] matchController:@"APage1Controller"];
    [self.navigationController pushViewController:vc animated:YES];
    
    
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
