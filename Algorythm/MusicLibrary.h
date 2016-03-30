//
//  MusicLibrary.h
//  Algorythm
//
//  Created by Sergey1T on 19.12.15.
//  Copyright © 2015 Sergey Zhuchkov. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString *const kTitle;
extern NSString *const kDescription;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;
extern NSString *const kBackgroundColor;
extern NSString *const kArtists;

@interface MusicLibrary : UIViewController

@property (strong, nonatomic) NSArray *library;


@end
