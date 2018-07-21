//
//  ViewController.m
//  TestMyCatory
//
//  Created by roy on 2018/7/19.
//  Copyright © 2018年 Iceroy. All rights reserved.
//

#import "ViewController.h"
#import "UIView+TagWithName.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view =[[UIView alloc]initWithFrame:CGRectMake(0, 0, 500, 200)];
    [view setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:view];
    [view setName:@"view"];
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(200, 200, 50, 50)];
    [view1 setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:view1];
    [view1 setName:@"view1"];
    
    UIView *viewTemp =[self.view viewWithName:@"view1"];
    [viewTemp setBackgroundColor:[UIColor blueColor]];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
