//
//  UINavigationController+Shadow.m
//  iBroke
//
//  Created by Mujtaba Hussain on 31/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

#import "UINavigationController+Shadow.h"

@implementation UINavigationController (Shadow)

- (void)viewWillAppear:(BOOL)animated
{
  CGColorRef *darkColor = [[[UIColor blackColor] colorWithAlphaComponent:.6f] CGColor];
  CGColorRef *lightColor = [[UIColor clearColor] CGColor];
  CGFloat navigationBarBottom = [[self navigationBar] frame].origin.y + [[self navigationBar] frame ].size.height;
  
  CAGradientLayer *newShadow = [[[CAGradientLayer alloc] init] autorelease];
  
  newShadow.frame = CGRectMake(0. ,navigationBarBottom, [[self view] frame].size.width, 10.);
  newShadow.colors = [NSArray arrayWithObjects:(id)darkColor, (id)lightColor, nil];
  
  [[[self view] layer] addSublayer:newShadow];
  [super viewWillAppear:animated];
}

@end
