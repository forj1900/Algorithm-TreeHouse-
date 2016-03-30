//
//  ViewController.m
//  Algorythm
//
//  Created by Sergey1T on 15.12.15.
//  Copyright © 2015 Sergey Zhuchkov. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.aButton setTitle:@"Press me" forState:UIControlStateNormal];
    [self.bButton setTitle:@"Press me too!" forState:UIControlStateNormal];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"showPlaylistDeteil"]) {
        PlaylistDetailViewController *playlistDetailViewController = (PlaylistDetailViewController *) segue.destinationViewController;
        playlistDetailViewController.segueLabelText = @"You pressed button";
    }
}


@end
