//
//  FirstViewController.m
//  HomeRepair
//
//  Created by Willson Ayotte on 9/10/13.
//  Copyright (c) 2013 Willson Ayotte. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *repairList;
    NSArray *thumbs;
    NSArray *searchResults;
    NSArray *defini;
    NSArray *conclude;

    
    
}
//@synthesize thumbnailImageView;

@synthesize myTableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Find out the path of repairlist.plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"repairlist" ofType:@"plist"];
    
    // Load the file content and read the data into arrays
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    
    repairList = [dict objectForKey:@"RepairList"];
    thumbs = [dict objectForKey:@"Thumbnail"];
    defini = [dict objectForKey:@"Definition"];
    conclude = [dict objectForKey:@"Conclude"];
    
    
}

- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope
{
    NSPredicate *resultPredicate = [NSPredicate
                                    predicateWithFormat:@"SELF contains[cd] %@",
                                    searchText];
    
    searchResults = [repairList filteredArrayUsingPredicate:resultPredicate];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return [searchResults count];
        
    } else {
        return [repairList count];
        
    }
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"ItemListCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        cell.textLabel.text = [searchResults objectAtIndex:indexPath.row];
        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    } else {
        cell.textLabel.text = [repairList objectAtIndex:indexPath.row];
        cell.imageView.image = [UIImage imageNamed:[thumbs objectAtIndex:indexPath.row]];
    }
    
    return cell;
}


-(BOOL)searchDisplayController:(UISearchDisplayController *)controller
shouldReloadTableForSearchString:(NSString *)searchString
{
    [self filterContentForSearchText:searchString
                               scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
                                      objectAtIndex:[self.searchDisplayController.searchBar
                                                     selectedScopeButtonIndex]]];
    
    return YES;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        [self performSegueWithIdentifier: @"ItemListCell" sender: self];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    if ([[segue identifier] isEqualToString:@"ItemListCell"]) {
//        DetailViewController *detailViewController = [segue destinationViewController];
//        NSIndexPath *indexPath = [self.myTableView indexPathForSelectedRow];
//        detailViewController.selectedRow = [dataController objectInListAtIndex:indexPath.row];
//    }
//}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ItemListCell"]) {
        DetailViewController *destViewController = segue.destinationViewController;
        
        NSIndexPath *indexPath = nil;
        
        if ([self.searchDisplayController isActive]) {
            indexPath = [self.searchDisplayController.searchResultsTableView indexPathForSelectedRow];
            destViewController.itemName = [searchResults objectAtIndex:indexPath.row];
            
            
        } else {
            indexPath = [self.myTableView indexPathForSelectedRow];
            destViewController.itemName = [repairList objectAtIndex:indexPath.row];
            destViewController.textView = [defini objectAtIndex:indexPath.row];
            destViewController.concludeText = [conclude objectAtIndex:indexPath.row];
            destViewController.picture = [thumbs objectAtIndex:indexPath.row];
        }
    }
    
}




@end
