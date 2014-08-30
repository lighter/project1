//
//  ViewController.m
//  Project1
//
//  Created by lighter on 2014/8/30.
//  Copyright (c) 2014年 lighter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    // 調整 view 的位置(ios 7)
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)])
        self.edgesForExtendedLayout = UIRectEdgeNone;

    self.view.backgroundColor = [UIColor whiteColor];

    self.navigationItem.title = @"Add";

    [self addElement];

}

- (void)addElement {
    UITextField *nameField = [[UITextField alloc] initWithFrame:CGRectMake(50, 50, 220, 50)];
    nameField.borderStyle = UITextBorderStyleRoundedRect;

    UITextField *cashField = [[UITextField alloc] initWithFrame:CGRectMake(50, 120, 220, 50)];
    cashField.borderStyle = UITextBorderStyleRoundedRect;

    UIButton *saveButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    saveButton.frame = CGRectMake(50, 190, 220, 30);
    [saveButton setTitle:@"Save" forState:UIControlStateNormal];
    [saveButton addTarget:self action:@selector(saveData) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:cashField];
    [self.view addSubview:nameField];
    [self.view addSubview:saveButton];
}

- (void)saveData {
    NSLog(@"Save click");
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
