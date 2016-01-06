//
//  GroupBuyMode.m
//  GroupBuy
//
//  Created by zhanglu1988em on 16/1/6.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import "GroupBuyMode.h"

@implementation GroupBuyMode

-(instancetype) initWithDict: (NSDictionary*) dict
{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+(instancetype) groupBuyModeWithDict:(NSDictionary*) dict
{
    return [[self alloc] initWithDict:dict];
}

+(NSArray*) groupBuyModes
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"tgs" ofType:@"plist"];
    NSArray *arry = [[NSArray alloc] initWithContentsOfFile:path];
    NSMutableArray *arryM = [NSMutableArray array];
    for (NSDictionary *dict in arry) {
        [arryM addObject:[self groupBuyModeWithDict:dict]];
    }
    return arryM;
}

@end
