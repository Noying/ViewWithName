//
//  UIView+TagWithName.m
//  NeyePlus
//
//  Created by roy on 2018/7/19.
//

#import "UIView+TagWithName.h"

@implementation UIView (TagWithName)

//name 不得大于96个字符,只能保证通一个view里面不能有重名的，不能保证更上层或者是否含有这个重名
-(void)setName:(NSString *)name{
    UIView *superView = [self superview];
    NSUInteger tag = [name hash];
    NSAssert(superView!=nil,@"this view must have a super view!");
    UIView *otherView = [superView viewWithTag:tag];
    NSAssert(otherView==nil,@"have same name view in this view,please give other name");
    self.tag = tag;
    [[NSUserDefaults standardUserDefaults]setObject:name forKey:[NSString stringWithFormat:@"%ld",tag]];
}

-(UIView*)viewWithName:(NSString *)name{
    UIView *view = [self viewWithTag:[name hash]];
    return view;
}

-(BOOL)isEqualName:(NSString *)name{
    return self.tag ==[name hash];
}

-(NSString*)getName{
    return  [[NSUserDefaults standardUserDefaults]objectForKey:[NSString stringWithFormat:@"%ld",self.tag]];
}
@end
