//
//  Created by mike_rowe on 27/10/11.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "build.h"

@class BuildDetail;

@interface BuildDetailView : UIView

@property(nonatomic, retain) BuildDetail *buildDetail;

- (id)initWithFrame:(CGRect)frame build:(Build *)build;

@end