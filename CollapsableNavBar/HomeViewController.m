//
//  HomeViewController.m
//  CollapsableNavBar
//
//  Created by Chris Grant on 29/09/2013.
//  Copyright (c) 2013 Chris Grant. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController () <UIScrollViewDelegate>
@end

@implementation HomeViewController {
    UIScrollView *_scrollView;
}

-(void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Hello";
    
    _scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [_scrollView setDelegate:self];
    [_scrollView setContentSize:CGSizeMake(0, 500)];
    [_scrollView setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:_scrollView];
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if(scrollView.contentOffset.y > -65) {
        CGFloat barHeight =  MIN(65, MAX(20, 65 - scrollView.contentOffset.y));
        [self.navigationController.navigationBar setFrame:CGRectMake(0, 0, self.view.bounds.size.width, barHeight)];
    }
}

@end