//
//  XibTextViewController.m
//  QCXibDemo
//
//  Created by EricZhang on 2018/6/29.
//  Copyright © 2018年 BYX. All rights reserved.
//

#import "XibTextViewController.h"
#import "XibTextTableViewCell.h"

/*
 ⚠️：
 1.owner关联view是从上往下连
 2.tableview协议关联owner从下往上
 3.Device和模拟器型号要选择一致
 4.通过右键拉属性和执行方法
 
 */



@interface XibTextViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UIButton *btn1;
@property (strong, nonatomic) IBOutlet UIButton *btn2;
@property (strong, nonatomic) IBOutlet UIButton *btn3;
@property (strong, nonatomic) IBOutlet UIButton *btn4;
@property (strong, nonatomic) IBOutlet UITableView *tableview;

@property (nonatomic,strong)  NSMutableArray *titleArr;


@end

@implementation XibTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self setCell];
    
    self.titleArr = [NSMutableArray arrayWithObjects:@"标题一",@"标题二",@"标题三", nil];
    
    [self.tableview reloadData];
   
    
    
    
}


-(void)setCell{
    
    [self.tableview registerNib:[UINib nibWithNibName:@"XibTextTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell1"];
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
//    self.tableview.separatorStyle=UITableViewCellSelectionStyleNone;//取消下划线
    self.tableview.showsVerticalScrollIndicator = FALSE;//取消滑动栏
    
    
    
    
    
}




- (IBAction)btnClick1:(id)sender {
}
- (IBAction)btnClick2:(id)sender {
}
- (IBAction)btnClick3:(id)sender {
}
- (IBAction)btnClick4:(id)sender {
}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.titleArr.count;
    
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    XibTextTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell1"];
    
    
    cell.titleLabel.text = self.titleArr[indexPath.row];
    
    
    return cell;
    
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"我点击了单个项目");
    
    
    
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
