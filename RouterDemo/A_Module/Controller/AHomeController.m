//
//  AHomeController.m
//  RouterDemo
//
//  Created by Destiny on 2021/4/19.
//

#import "AHomeController.h"

@interface AHomeController ()

@end

@implementation AHomeController

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
                cell.textLabel.text = @"点我跳转A模块Page1";
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
        [self pushBModulePage1];
    } else {
        [self pushCModulePage1];
    }
}

- (void)pushAModulePage1
{
    NSMutableDictionary *param = [NSMutableDictionary dictionary];
    [param setValue:@"APage1Controller" forKey:@"vcClassName"];
    //需要回调时添加
    [param setValue:@"callback" forKey:@"callback"];
    //需要传值是添加
    [param setValue:@{@"value":@"我是上一个页面传过来的value"} forKey:@"vauleParameter"];
    
    UIViewController *viewController = [[DRouter sharedInstance]mediator_AModulePage1:param completion:^(NSDictionary * _Nonnull dic) {
        [self showAlert:[dic objectForKey:@"value"]];
        
    }];
   [self.navigationController pushViewController:viewController animated:YES];
}

- (void)pushBModulePage1
{
    NSMutableDictionary *param = [NSMutableDictionary dictionary];
    [param setValue:@"BPage1Controller" forKey:@"vcClassName"];
    [param setValue:@"callback" forKey:@"callback"];
    
    UIViewController *viewController = [[DRouter sharedInstance]mediator_BModulePage1:param completion:^(NSDictionary * _Nonnull dic) {
        [self showAlert:[dic objectForKey:@"value"]];
        
    }];
   [self.navigationController pushViewController:viewController animated:YES];
}

- (void)pushCModulePage1
{
    NSMutableDictionary *param = [NSMutableDictionary dictionary];
    [param setValue:@"CPage1Controller" forKey:@"vcClassName"];
    [param setValue:@"callback" forKey:@"callback"];
    
    UIViewController *viewController = [[DRouter sharedInstance]mediator_CModulePage1:param completion:^(NSDictionary * _Nonnull dic) {
        [self showAlert:[dic objectForKey:@"value"]];
        
    }];
   [self.navigationController pushViewController:viewController animated:YES];
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
