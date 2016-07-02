//
//  MoreView.m
//  MyKeyBoard
//
//  Created by 李泽鲁 on 14-9-16.
//  Copyright (c) 2014年 Mrli. All rights reserved.
//

#import "MoreView.h"

@interface MoreView()

@property (nonatomic, strong) MoreBlock block;

@end


@implementation MoreView

- (id)initWithFrame:(CGRect)frame
{
    frame = CGRectMake(0, 0, 320, 216);
    self = [super initWithFrame:frame];
    if (self) {
        UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(10, 10, 70, 70)];
        button1.backgroundColor = [UIColor whiteColor];
        [button1 setTitle:@"功能1" forState:UIControlStateNormal];
        [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        button1.tag = 1;
        [button1 addTarget:self action:@selector(tapButton:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button1];
        
        UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake(90, 10, 70, 70)];
        button2.backgroundColor = [UIColor whiteColor];
        [button2 setTitle:@"功能2" forState:UIControlStateNormal];
        [button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        button2.tag = 2;
        [button2 addTarget:self action:@selector(tapButton:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button2];
  
    }
    return self;
}

-(void) setMoreBlock:(MoreBlock)block
{
    self.block = block;
}

-(void) tapButton:(UIButton *)sender
{
    self.block(sender.tag);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
