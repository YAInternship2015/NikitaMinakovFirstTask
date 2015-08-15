//
//  ViewController.m
//  FirstTaskYalantis
//
//  Created by Никита on 14.08.15.
//  Copyright (c) 2015 Nikita Minakov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSArray* namesArray;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.namesArray = @[@"ambulance",@"aston_martin",@"bus",@"dodge",@"falcon",@"ferrari",@"lorrygreen",@"travel_bus",@"transmit_monster_truck",@"public_transportation"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.namesArray count];
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString* identifier = @"CustomCell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.textLabel.text = [self.namesArray objectAtIndex:indexPath.row];
    //self.labelInCell.text =[self.namesArray objectAtIndex:indexPath.row];
    UIImage* img = [UIImage imageNamed:[self.namesArray objectAtIndex:indexPath.row]];
    
    cell.imageView.image = img;
    return cell;
    
}

@end
