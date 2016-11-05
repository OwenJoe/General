//
//  OneViewController.m
//  通用框架
//
//  Created by owen on 2016/11/5.
//  Copyright © 2016年 owen. All rights reserved.
//

#import "OneViewController.h"

@interface OneViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *wbTableView;
@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"测试One";
    
    [self addTableViewMethod];
}

#pragma mark -- 初始化一个TableView
-(void)addTableViewMethod{

    self.wbTableView = [[UITableView alloc]initWithFrame:self.view.bounds];
    self.wbTableView.delegate = self;
    self.wbTableView.dataSource =self;
    [self.view addSubview:self.wbTableView];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 5;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *iDs = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:iDs];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:iDs];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    return cell;
}






















@end
