//
//  ViewController.m
//  不同tableview加载页面
//
//  Created by 云卷云舒丶 on 15/12/24.
//  Copyright © 2015年 sc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview1;
@property (weak, nonatomic) IBOutlet UITableView *tableview2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.tableview1.translatesAutoresizingMaskIntoConstraints = NO;
//    self.tableview2.translatesAutoresizingMaskIntoConstraints = NO;
//    
//    self.view.translatesAutoresizingMaskIntoConstraints = NO;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if ([tableView isEqual: _tableview1]) {
        return 2;
    }
    else{
        return 1;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([tableView isEqual:_tableview1]) {
        NSString * identifier1 = @"_tableview1";
        UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier1 ];
        
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:identifier1];
        }
        cell.textLabel.text = [NSString stringWithFormat:@"this is cell1 %ld",indexPath.row];
        return cell;
    }
    else
    {
        NSString * identifier2 = @"_tableview2";
        UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier2 ];
        
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:identifier2];
        }
        cell.textLabel.text = [NSString stringWithFormat:@"this is cell2 %ld",indexPath.row];
        return cell;
        
    }
}


@end
