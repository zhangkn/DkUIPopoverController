//
//  DKMenuTableViewController.m
//  DkUIPopoverController
//
//  Created by devzkn on 03/12/2016.
//  Copyright © 2016 DevKevin. All rights reserved.
//

#import "DKMenuTableViewController.h"

@interface DKMenuTableViewController ()
@property (nonatomic,strong) NSArray *menuTitles;
@end

@implementation DKMenuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.menuTitles = @[@"kevun",@"lydia",@"mamei"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString  *reuseIdentifier = @"DKUITableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    }
//     Configure the cell...
    cell.textLabel.text = self.menuTitles[indexPath.row];
    
    return cell;
}



@end
