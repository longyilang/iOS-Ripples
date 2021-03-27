//
//  ViewController.m
//  Ripples
//
//  Created by 龙一郎 on 2021/3/27.
//

#import "ViewController.h"

#import "RipplesAnimationView.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet RipplesAnimationView *ripples;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    __weak typeof(self) weakSelf = self;
    self.ripples.startEventHandle = ^(BOOL selected){
        if (!selected) {
            [weakSelf.ripples startAnimation];
        }else{
            [weakSelf.ripples stopAnimation];
        }
    };
}


@end
