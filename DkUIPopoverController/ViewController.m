//
//  ViewController.m
//  DkUIPopoverController
//
//  Created by devzkn on 03/12/2016.
//  Copyright © 2016 DevKevin. All rights reserved.
//

#import "ViewController.h"
#import "DKMenuTableViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIBarButtonItem *item;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)clickUIBarButtonItemMenu:(UIBarButtonItem *)sender {
    
    //创建UIPopoverController.h
    
    UIPopoverController *popoverControl = [[UIPopoverController alloc]initWithContentViewController:[[DKMenuTableViewController alloc] init]];
    //设置内容
//    popoverControl setContentViewController:<#(UIViewController * _Nonnull)#>
    //设置尺寸
    CGSize size = CGSizeMake([UIScreen mainScreen].bounds.size.width, 130);
    [popoverControl setPopoverContentSize:size animated:YES];
    //设置显示的位置
    [popoverControl presentPopoverFromBarButtonItem:self.item permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
#warning ios7上popoverControl 销毁的时候，必须要求popoverControl没有显示。因此通常把popoverControl设置为属性进行强引用
}



@end
