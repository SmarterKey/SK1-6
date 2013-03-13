//
//  DeviceMasterVC.m
//  SK1-6
//
//  Created by Administrator on 3/12/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "DeviceMasterVC.h"
#import "Device.h"

@interface DeviceMasterVC ()

//try to declare array here to keep it local
//@property (nonatomic, retain) NSMutableArray *devices;

@end

@implementation DeviceMasterVC
@synthesize deviceTableView = _deviceTableView;
@synthesize devices = _devices;


//here we give the NSMutableArray some initial values shold it be empty.
- (NSMutableArray *) devices
{
    if (_devices == nil)
    {
        //here set up some initial data for the array (devices), used in TableView, to display. First create the Device class instances in the instance variables device1, device 2 etc and set the property values accordingly. Then set these instances in the "devices" array
        Device *device1 = [[Device alloc] initWithTitle:@"Device 1" gsmNumber:@"0795843214" passCode:@"123456" twilioNumber:@"987654321"];
        Device *device2 = [[Device alloc] initWithTitle:@"Device 2" gsmNumber:@"07740189740" passCode:@"765432" twilioNumber:@"08009876543"];
        
        //now put these instances of Class objects into the array
        _devices = [[NSMutableArray alloc] initWithObjects:device1, device2, nil];
    }
    return _devices;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setDeviceTableView:nil];
    [self setDeviceTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma mark - Table View
//here we need to set up tableView. Remember there are 2 obligatory methods to declare for the 2 protocols of Delegate & DataSource declared in .h


//set optional method "sections" integer by default to 1
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

//set the obligatory method "rowsInSection" to the count of the number of items in the instance of the array _devices. This tells the tableView its DataSource. NB you MUST set the DataSource of the tableView in StoryBoards by ctrl drag from Table View to the yellow circle ie View Controller when 2 outlets can be set. Simply click DataSource to set it and the little circle should fill up.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _devices.count;
}

//set the obligatory method "cellForRow", which tells the tableView what to show in the rows. Basically it should show the contents of each object in the array. This satisfies the protocol settings for Delegate. The delegate of this TableView is itself, that is to say display rows here in this tableView. NB you MUST set the Delegate of the tableView in StoryBoards by ctrl drag from Table View to the yellow circle ie View Controller when 2 outlets can be set. Simply click Delegate to set it and the little circle should fill up.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    
    //create an instance of a tableView Cell called *cell and set & then select a cell identifier which you have already set up and named in the Table View Cell attribute property "reuse identifier" in StoryBoards. Dequeue so it can be reused every row to be dispalyed saving on memory and run time.
    static NSString *cellIdentifier = @"DeviceCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    //if cell is empty initilise 1 and set its style
    if (cell == nil) 
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    //now to set the context of the cell row to display in the tableView we need to create an instance of the class Device called device and set its values to the current(index.Path) row of the "devices" array. NB It is necessary to ensure the relevant class file (.h) you want to create an instance of here (Device.h) has been imported at the very top of this file directly under the 1st import of "thisFile.h".
    Device *ddevice = [[self devices] objectAtIndex:[indexPath row]];
   // Device *device = [self.devices objectAtIndex:indexPath.row];
    
    //set specifically the cell text to display in the default cell values of the tableView called "textLabel" and others eg imageView etc.... as defined in your cell identifier using the format "Classinstance.property" to get the property of the class at this row of the array.
    [[cell textLabel] setText:ddevice.passCode];
    
    //cell.textLabel.text = device.passCode;
    //here set other cell values if relevant
    
    //and now return the new value of the "cell" property from this method
    return cell;
}

@end
