//
//  PersonalViewController.m
//  school-bicycle
//
//  Created by   chironyf on 2018/5/7.
//  Copyright © 2018 chironyf. All rights reserved.
//

#import "PersonalViewController.h"
#import "PersonalDetailViewController.h"

@interface PersonalViewController ()

@property (nonatomic, strong) UITableView *personalInfoTable;

@property (nonatomic, strong) NSArray<NSNumber *> *tableNumbers;

@property (nonatomic, strong) NSArray<NSNumber *> *tableRowHeight;

@end

@implementation PersonalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"个人中心";

    _tableNumbers = @[@1, @6];
    
    _tableRowHeight = @[@68, @44];
    
    _personalInfoTable = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 0, 0) style:UITableViewStyleGrouped];
    _personalInfoTable.translatesAutoresizingMaskIntoConstraints = NO;
    
    [_personalInfoTable setDelegate:self];
    [_personalInfoTable setDataSource:self];
//    _personalInfoTable.estimatedRowHeight = 88;
//    _personalInfoTable.rowHeight = UITableViewAutomaticDimension;
    
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
    return _tableNumbers.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _tableNumbers[section].integerValue;
//    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"infocell"];
    cell.textLabel.text = @"hello";
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return _tableRowHeight[indexPath.section].floatValue;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        PersonalDetailViewController *pd = [[PersonalDetailViewController alloc] init];
        [self.navigationController pushViewController:pd animated:YES];
    }
}

@end
