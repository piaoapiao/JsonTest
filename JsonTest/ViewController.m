//
//  ViewController.m
//  JsonTest
//
//  Created by guodong on 2017/5/29.
//  Copyright © 2017年 guodong. All rights reserved.
//

#import "ViewController.h"

#import "SBJson5.h"
#import "CJSONSerializer.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    //    [dic  setObject:[NSNumber numberWithDouble:123.123] forKey:@"amout"];
    [dic  setObject:[NSNumber numberWithDouble:8963.79] forKey:@"amout"];
    //8963.79
    
    
    NSError *error = NULL;
    NSData *jsonData = [[CJSONSerializer serializer] serializeObject:dic error:&error];
    NSString *tp = [NSString stringWithUTF8String:[jsonData bytes]];
    NSLog(@"TouchJSON:%@",tp);
    
    
    SBJson5Writer *writer = [[SBJson5Writer alloc] init];
    tp = [writer stringWithObject:dic];
    NSLog(@"SBJson5:%@",tp);
    
    
    jsonData = [NSJSONSerialization dataWithJSONObject:dic options:nil error:nil];
    tp = [NSString stringWithUTF8String:[jsonData bytes]];
    NSLog(@"NSJSON:%@",tp);
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
