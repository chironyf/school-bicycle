//
//  PersonalViewController.m
//  school-bicycle
//
//  Created by   chironyf on 2018/5/7.
//  Copyright © 2018 chironyf. All rights reserved.
//

#import "PersonalViewController.h"

@interface PersonalViewController ()

@property (nonatomic, strong) UITableView *personalInfoTable;

@end

@implementation PersonalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _personalInfoTable = [[UITableView alloc] init];
    
    [_personalInfoTable setDelegate:self];
    [_personalInfoTable setDataSource:self];
    _personalInfoTable.estimatedRowHeight = 88;
    _personalInfoTable.rowHeight = UITableViewAutomaticDimension;
    
    _personalInfoTable.backgroundColor = UIColor.blackColor;
    
    [self.view addSubview:_personalInfoTable];
    
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:_personalInfoTable attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:0];
    NSLayoutConstraint *bottom = [NSLayoutConstraint constraintWithItem:_personalInfoTable attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1 constant:0];
    NSLayoutConstraint *left = [NSLayoutConstraint constraintWithItem:_personalInfoTable attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:0];
    NSLayoutConstraint *right = [NSLayoutConstraint constraintWithItem:_personalInfoTable attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1 constant:0];
    
    [self.view addConstraints:@[top, bottom, left, right]];
    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"infocell"];
    cell.textLabel.text = @"hello";
    return cell;
}

@end
