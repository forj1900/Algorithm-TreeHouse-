//
//  Playlist.m
//  Algorythm
//
//  Created by Sergey1T on 31.03.16.
//  Copyright © 2016 Sergey Zhuchkov. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"

@implementation Playlist

- (instancetype) initWithIndex: (NSUInteger) index {
    self = [super init];
    if (self) {
        MusicLibrary *musicLibrary = [[MusicLibrary alloc] init];
        NSArray *library = musicLibrary.library;
        
        NSDictionary *playlistDictionary = library [index];
        
        _playlistTitle = [playlistDictionary objectForKey:kTitle];
        _playlistDescription = [playlistDictionary objectForKey:kDescription];
        
        NSString *iconName = [playlistDictionary objectForKey: kIcon];
        _playlistIcon = [UIImage imageNamed:iconName];
        
        NSString *largeIconName = [playlistDictionary objectForKey: kLargeIcon];
        _playlistIconLarge = [UIImage imageNamed:largeIconName];
        
        _playlistArtists = [NSArray arrayWithArray:[playlistDictionary objectForKey: kArtists]];
        
        NSDictionary *colorDictionary = [playlistDictionary objectForKey:kBackgroundColor];
        _backgroundColor = [self rgbColorFromDictionary:colorDictionary];
        
    }
    return self;
}


- (UIColor *) rgbColorFromDictionary: (NSDictionary *) colorDictionary {
    CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue];
    CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue];
    CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue];
    CGFloat alfa = [[colorDictionary objectForKey:@"alfa"] doubleValue];
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alfa];

    
    
}
@end
