//
//  ToolView.h
//  MyKeyBoard
//
//  Created by 李泽鲁 on 14-9-16.
//  Copyright (c) 2014年 Mrli. All rights reserved.
//

/*****************
 封装下面的工具条组件
 *****************/
#import <UIKit/UIKit.h>

//定义block块变量类型，用于回调,把本View上的按钮的index传到Controller中
typedef void (^ToolIndex) (NSInteger index);

@interface ToolView : UIView

//块变量类型的setter方法
-(void)setToolIndex:(ToolIndex) toolBlock;

@end
