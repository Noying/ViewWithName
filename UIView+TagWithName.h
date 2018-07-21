//
//  UIView+TagWithName.h
//  NeyePlus
//
//  Created by roy on 2018/7/19.
//

#import <UIKit/UIKit.h>

@interface UIView (TagWithName)

-(void)setName:(NSString*)name;

-(UIView*)viewWithName:(NSString*)name;

@end
