//
//  ViewController.m
//  NSNumber
//
//  Created by Christopher Munna on 12/17/12.
//  Copyright (c) 2012 Christopher Munna. All rights reserved.
//

#import "ViewController.h"
#import "NSDecimalNumber_nsdecimalnumber.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    tester=[[NSDecimalNumber alloc] initWithInt:5];
    //double x=3.5;
    int g=100000000000000;
    double k=pow(4,.5);
    long double y=3.1415926535897932384626433L;
    int a=9;
    NSString *one=[NSString stringWithFormat:@"194.0356"];
    //long double z=3.141592653;
    NSNumber *num=[NSNumber numberWithDouble:y];
    NSDecimalNumber *number=[[NSDecimalNumber alloc] initWithDouble:k];
    NSDecimalNumber *number2=[[NSDecimalNumber alloc] initWithDouble:y/2];
    NSDecimalNumber *number3=[NSDecimalNumber decimalNumberWithString:[NSString stringWithFormat:@"%@", one]];
    NSDecimalNumberHandler *rounddown=[NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:0 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:NO];
    
    NSLog(@"%@", number3);
    NSDecimalNumberHandler *behavior=[NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain scale:9 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:NO];
    NSString *string1;
    string1=number3.stringValue;
    string1=@"14.142135623731";
    NSString *string2 = @"45";
    number3= [[[NSDecimalNumber alloc] initWithDouble:[string1 doubleValue]*sin(3.141592653589793/4)] decimalNumberByRoundingAccordingToBehavior:behavior];
    
    //number3 = [NSDecimalNumber decimalNumberWithMantissa:34 exponent:13 isNegative:NO];
    //number3 =[NSDecimalNumber decimalNumberWithString:placeholder.stringValue];
    //number3=[NSDecimalNumber decimalNumberWithString:@"3.5"];
    //number3=[[NSDecimalNumber alloc] initWithDouble:parse.doubleValue];
    string1=@"3.1415926535897";
    string2=@"3.141592653589";
   
    if ([string1 doubleValue]>[string2 doubleValue]){
        NSLog(@"%@", number3);}
    NSDecimalNumber *number4=[[NSDecimalNumber alloc] initWithDouble:k];
    NSDecimalNumber *result = [number decimalNumberByMultiplyingBy:number withBehavior: behavior];
    
    NSDecimalNumber *blah=[number decimalNumberByRoundingAccordingToBehavior:behavior];
    NSMutableString *ze= [NSMutableString stringWithFormat:@""];
    
    //Label.text=[NSString stringWithFormat:@"%@%@", number3, ze];
    //Label.text=[NSString stringWithFormat:@"%@", number];
    
    /*NSPredicate *parser=[NSPredicate predicateWithFormat:@"2/7=0.0"];
    NSExpression *left = [(NSComparisonPredicate *)parser leftExpression];
    NSNumber *parsing=[left expressionValueWithObject:nil context:nil];
    NSLog(@"%@", parsing);*/
    int x=25;
    NSDecimalNumber *strnumber=[[NSDecimalNumber alloc] initWithString:@"x*25*sin(3)"];
    NSLog(@"%@",strnumber);
    
    NSString *ks=[NSString stringWithFormat:@"–3-2k-lf–j"];
    int n=1;
    int m=10;
    unichar character;
    int i;
    for(i=0;i<[ks length];i++)
    {
        
        character=[ks characterAtIndex:i];
        NSString *d=[NSString stringWithCharacters:&character length:1];
        if ([ks characterAtIndex:i]=='-')
        {
            printf("%d\n", n);
            n++;
        }
        if([d isEqualToString:@"–"])
        {
            printf("%d\n", m);
            m++;
        }
        if([ks characterAtIndex:i-1]<1)
        {
            printf("22\n");
        }
    }
    printf("%d\n",i);
    NSString *qq=[NSString stringWithFormat:@"jkls"];
    NSMutableString *rr=[NSMutableString stringWithFormat:@"1"];
    for(int j=0;j<[qq length];j++)
    {
        [rr appendString:[NSString stringWithFormat:@"%c", [qq characterAtIndex:j]]];
    }
    NSLog(@"%@", rr);
    
    NSDecimalNumber *tet=[[NSDecimalNumber alloc] initWithDouble:acosl(3)];
    NSLog(@"%@", tet);

    /*NSDecimalNumber *overflow=[[[NSDecimalNumber alloc] initWithString:@"1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"] decimalNumberByRoundingAccordingToBehavior:behavior];
    Label.text=[NSString stringWithFormat:@"%@", overflow];
    if ([[overflow stringValue] isEqualToString:@"NaN"]){Label.text=@"Error";}*/
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)test:(id)sender {
    NSDecimalNumber *ten=[[NSDecimalNumber alloc] initWithInt:10];
    tester= [tester decimalNumberByAdding:ten];
    Label.text=[NSString stringWithFormat: @"%@", tester];
}
@end
