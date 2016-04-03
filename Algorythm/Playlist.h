//
//  Playlist.h
//  Algorythm
//
//  Created by Sergey1T on 31.03.16.
//  Copyright © 2016 Sergey Zhuchkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface Playlist : NSObject

@property (strong, nonatomic) NSString *playlistTitle;
@property (strong, nonatomic) NSString *playlistDescription;
@property (strong, nonatomic) UIImage *playlistIcon;
@property (strong, nonatomic) UIImage *playlistIconLarge;
@property (strong, nonatomic) NSArray *playlistArtists;
@property (strong, nonatomic) UIColor *playlistColor;
@property (strong, nonatomic) NSString *backgroundColor;

- (instancetype) initWithIndex: (NSUInteger) index;

@end
