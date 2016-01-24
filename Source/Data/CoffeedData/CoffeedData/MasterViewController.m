//
//  MasterViewController.m
//  CoffeedData
//
//  Created by Alec Kretch on 1/23/16.
//  Copyright © 2016 Alec Kretch. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

@interface MasterViewController ()

@property NSMutableArray *objects;
@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
    NSString *data = @"Tazzina Di Gelato|(520)300-5538|5420 E Broadway Blvd Tucson, AZ 85711|4.5 star rating|http://s3-media2.fl.yelpcdn.com/assets/2/www/img/b7e9d647188d/gfx/header_print.gif|32.220746|-110.876735\nCrave Coffee Bar|(520)445-6665|4530 E Broadway Tucson, AZ 85711|4.5 star rating|http://s3-media4.fl.yelpcdn.com/bphoto/GAUe7M_xw0x-7FBxWq1aTQ/90s.jpg|32.221160|-110.895870\nStella Java|(520)777-1496|100 S Avenida Del Convento Tucson, AZ 85745|4.5 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.220135|-110.985629\nSparkroot|(520)623-4477|245 E Congress St Tucson, AZ 85701|4.5 star rating|s3-media1.fl.yelpcdn.com/assets/srv0/yelp_styleguide/0288f46ccbae/assets/img/default_avatars/user_30_square.png|32.222190|-110.967495\nTucson Coffee Roasters|(520)403-1240|3225 N Swan Tucson, AZ 85712|4.5 star rating|http://s3-media4.fl.yelpcdn.com/bphoto/5AbKlmoH7fdWSsMixRuikA/90s.jpg|32.266465|-110.893924\nExo Roast Co|(520)777-4709|403 N 6th Ave Tucson, AZ 85705|4.5 star rating|http://s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.226610|-110.969077\nYellow Brick Coffee|(520)226-4068|3220 S Dodge Blvd Tucson, AZ 85713|5.0 star rating|http://s3-media1.fl.yelpcdn.com/photo/iae_-BkJVL2-U2FNv9nYuQ/30s.jpg|32.186552|-110.914200\nSavaya Coffee Market|(520)747-3200|5350 E Broadway Blvd Tucson, AZ 85711|4.5 star rating|s3-media1.fl.yelpcdn.com/bphoto/JL-vlhUsQMbGy4o83CWUSw/90s.jpg|32.220906|-110.878005\nSeven Cups|(520)881-4072|2516 E 6th St Tucson, AZ 85716|4.5 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.227642|-110.934732\nCartel Coffee Lab|(480)621-6381|2516 N Campbell Ave Tucson, AZ 85719|4.0 star rating|s3-media1.fl.yelpcdn.com/photo/RmzoczQtGkWCpp9XOubQuw/30s.jpg|32.252540|-110.943577\nRaging Sage|(520)320-5203|2458 N Campbell Ave Tucson, AZ 85719|4.0 star rating|s3-media4.fl.yelpcdn.com/bphoto/J0e2BmjRi9iwufzSorg8jw/90s.jpg|32.251301|-110.943684\nTazzina Di Gelato|(520)300-5538|5420 E Broadway Blvd Tucson, AZ 85711|4.5 star rating|http:s3-media2.fl.yelpcdn.com/assets/2/www/img/b7e9d647188d/gfx/header_print.gif|32.220746|-110.876735\nBrewd|(520)623-2336|4960 N Sabino Canyon Rd Tucson, AZ 85750|4.5 star rating|s3-media4.fl.yelpcdn.com/bphoto/GAUe7M_xw0x-7FBxWq1aTQ/90s.jpg|32.296995|-110.823466\nBlack Crown Coffee Co.|(520)207-6473|4024 E Speedway Blvd Tucson, AZ 85712|4.0 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.235905|-110.906663\nThe Scented Leaf|(520)624-2930|943 E University Blvd Tucson, AZ 85719|4.5 star rating|s3-media4.fl.yelpcdn.com/photo/2z8R6CpN_0Af9r0X0lypCw/30s.jpg|32.232037|-110.957112\nPresta Coffee Roasters|(520)777-1496|2502 N 1st Ave Tucson, AZ 85719|5.0 star rating|s3-media4.fl.yelpcdn.com/bphoto/uSVB3ocKXlIlJ20bmsWkmA/90s.jpg|32.252568|-110.960376\nCafé Aqui|(520)623-3767|1317 S 6th Ave Tucson, AZ 85713|5.0 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.205511|-110.968197\nChatime - Tea House & Lounge|(520)777-8096|1800 E Fort Lowell Rd Tucson, AZ 85719|4.0 star rating|s3-media3.fl.yelpcdn.com/photo/oYlvwPjUrLD8CIL-c2kfnQ/30s.jpg|32.264080|-110.944918\nSan Giorgi’s Coffee|(520)544-3069|6435 N Thornydale Rd Tucson, AZ 85741|4.5 star rating|s3-media2.fl.yelpcdn.com/bphoto/iKYkNznIKl3s8xaWUwodiA/90s.jpg|32.325019|-111.046657\nCaffe Luce|(520)395-0266|4205 N Campbell Ave Tucson, AZ 85719|4.0 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.283416|-110.944346\nCartel Coffee Lab|(480)621-6381|210 E Broadway Tucson, AZ 85701|4.0 star rating|s3-media3.fl.yelpcdn.com/photo/HMHE8N0XjRZWmjGb6LwkRA/30s.jpg|32.220905|-110.966736\nCafé Passé|(520)624-4411|415 N 4th Ave Tucson, AZ 85707|4.0 star rating|s3-media1.fl.yelpcdn.com/bphoto/ihY--sJLumYRqLVG7Ck-9Q/90s.jpg|32.226852|-110.965838\nCafe Marcel|(520)623-3700|2281 N Oracle Rd Tucson, AZ 85705|4.5 star rating|http:s3-media2.fl.yelpcdn.com/assets/2/www/img/b7e9d647188d/gfx/header_print.gif|32.249059|-110.978546\nCafe A La Cart|(520)628-8533|150 N Main Ave Tucson, AZ 85701|4.5 star rating|s3-media1.fl.yelpcdn.com/bphoto/AbcmGdb2E-KF2jtRMyfVFA/90s.jpg|32.223512|-110.975063\nAlvernon Donut Shop|(520)326-3307|1450 S Alvernon Way Tucson, AZ 85711|4.5 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.204025|-110.909985\nCaffé Lucé|(520)207-5504|943 E University Blvd Tucson, AZ 85707|4.0 star rating|s3-media2.fl.yelpcdn.com/photo/2xd7X7gKI7qh0LcXpISRnQ/30s.jpg|32.232037|-110.957112\nShot In The Dark Cafe|(520)882-5544|121 E Broadway Tucson, AZ 85701|3.5 star rating|s3-media4.fl.yelpcdn.com/bphoto/fDtwx5RBWX4JcwGMqniB7A/90s.jpg|32.221479|-110.967955\nSavaya Coffee Market|(520)638-5511|2905 E Skyline Dr Tucson, AZ 85718|4.0 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.324742|-110.930113\nRoasted Tea and Coffee Shop|(520)624-8852|33 N Stone Ave Tucson, AZ 85701|4.5 star rating|s3-media2.fl.yelpcdn.com/photo/BMgpj1eDqPhZHL4x1CYmsQ/30s.jpg|32.222456|-110.971655\nPublic Brewhouse|(520)775-2337|209 N Hoff Ave Tucson, AZ 85705|4.5 star rating|s3-media1.fl.yelpcdn.com/bphoto/sQ9yASyLsWPKJkHV6TqzsA/90s.jpg|32.223941|-110.964822\nLe Buzz|(520)749-3903|9121 E Tanque Verde Rd Tucson, AZ 85749|4.0 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.259136|-110.797434\nEspresso Art Cafe|(520)624-4126|942 E University Blvd Tucson, AZ 85719|4.0 star rating|s3-media1.fl.yelpcdn.com/photo/p83XShybOzlDVLm8CxX0iA/30s.jpg|32.231656|-110.957446\nLaverna’s Coffee Shop|(520)623-1389|220 S Plumer Ave Tucson, AZ 85719|4.0 star rating|http:s3-media2.fl.yelpcdn.com/assets/2/www/img/b7e9d647188d/gfx/header_print.gif|32.219468|-110.939743\nRevolutionary Grounds|(520)620-1770|606 N 4th Ave Tucson, AZ 85705|4.0 star rating|s3-media4.fl.yelpcdn.com/bphoto/Z74lV6KLBvKAD-5NP6y6Kw/90s.jpg|32.229306|-110.965373\nChocolate Iguana On 4th|(520)798-1211|500 N 4th Ave Tucson, AZ 85705|4.5 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.228068|-110.965384\nCafe Desta|(520)370-7000|758 S Stone Ave Tucson, AZ 85701|4.5 star rating|s3-media3.fl.yelpcdn.com/photo/C8vjF-R5zQHmXtFCFntG8w/30s.jpg|32.212233|-110.969101\nEpic Cafe|(520)624-6844|745 N 4th Ave Tucson, AZ 85705|3.5 star rating|s3-media4.fl.yelpcdn.com/bphoto/S09L0rJTL2i6S_9f3w6eKA/90s.jpg|32.230965|-110.965653\nCrossroads Coffee Company|(520)485-3850|8898 E Tanque Verde Rd Tucson, AZ 85749|4.5 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.257403|-110.802924\nBentley’s House of Coffee & Tea|(520)795-0338|1730 E Speedway Blvd Tucson, AZ 85719|4.0 star rating|s3-media4.fl.yelpcdn.com/photo/J7Vc2Q6-cgjhZ2xXv1yJJA/30s.jpg|32.235681|-110.945939\nStarbucks|(520)620-9344|802 E University Blvd Tucson, AZ 85719|3.5 star rating|s3-media2.fl.yelpcdn.com/bphoto/CxzaEZX7Zu8xHBqOBlzqFQ/90s.jpg|32.231486|-110.959071\nBing’s Boba Tea|(520)288-8220|2040 W Orange Grove Rd Tucson, AZ 85704|4.0 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.324620|-111.010640\nCoffee Times Drive|(520)318-3698|3401 E Speedway Blvd Tucson, AZ 85716|4.5 star rating|s3-media1.fl.yelpcdn.com/photo/nYIqzttDwlyAYMH4gdCzIg/30s.jpg|32.236418|-110.920168\nCivano Coffee House|(520)441-7400|5278 S Civano Blvd Tucson, AZ 85747|4.0 star rating|http:s3-media2.fl.yelpcdn.com/assets/2/www/img/b7e9d647188d/gfx/header_print.gif|32.155691|-110.769149\nGloria Jean’s Coffee|(520)887-9086|4500 N Oracle Rd Tucson, AZ 85705|4.0 star rating|s3-media3.fl.yelpcdn.com/bphoto/bMO_f74nG2ZIVlZt2xNFsA/90s.jpg|32.289124|-110.974166\nStarbucks|(520)325-8669|4811 E Grant Rd Tucson, AZ 85712|4.0 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.252140|-110.890371\nRoadrunner Coffee|(520)579-7011|9665 N Thornydale Rd Tucson, AZ 85742|4.0 star rating|s3-media2.fl.yelpcdn.com/photo/O1hUSQpLYHIgOd_rg1kUxA/30s.jpg|32.381928|-111.047343\nStarbucks|(520)529-9211|6370 N Campbell Ave Tucson, AZ 85718|4.5 star rating|s3-media2.fl.yelpcdn.com/bphoto/NrcLGxj1zZggb5faLSyOzw/90s.jpg|32.322017|-110.928706\nStarbucks|(520)747-2728|5405 E Granite St Tucson, AZ 85707|4.5 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.182884|-110.876956\nBeyond Bread|(520)461-1111|421 W Ina Rd Tucson, AZ 85704|4.0 star rating|s3-media1.fl.yelpcdn.com/assets/srv0/yelp_styleguide/0288f46ccbae/assets/img/default_avatars/user_30_square.png|32.336419|-110.976124\nCoffee X Change|(520)751-4739|6841 E Camino Principal Tucson, AZ 85715|3.5 star rating|s3-media2.fl.yelpcdn.com/bphoto/hGF4Q-Vj93-GEaZjZjNFoA/90s.jpg|32.250575|-110.846384\nAdventure Coffee Roasting|(520)247-2651|Tucson, AZ|5.0 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.221743|-110.926479\nStarbucks|(520)615-0881|4700 E Sunrise Dr Tucson, AZ 85718|4.0 star rating|s3-media3.fl.yelpcdn.com/photo/dmCqRVfFvxnvWfGopqV_Yg/30s.jpg|32.306536|-110.892069\nStarbucks|(520)622-8116|1821 E Broadway Blvd Tucson, AZ 85719|3.5 star rating|http:s3-media2.fl.yelpcdn.com/assets/2/www/img/b7e9d647188d/gfx/header_print.gif|32.221839|-110.944397\nBeyond Bread|(520)747-7477|6260 E Speedway Blvd Tucson, AZ 85712|4.0 star rating|s3-media3.fl.yelpcdn.com/bphoto/dbc4GdBUrpfY6P8YqX_jNg/90s.jpg|32.235942|-110.858940\nBing’s Boba Tea|(520)288-8302|2510 N Campbell Ave Tucson, AZ 85719|4.0 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.252361|-110.943613\nStarbucks|(520)320-1760|3025 E Speedway Blvd Tucson, AZ 85716|4.0 star rating|s3-media3.fl.yelpcdn.com/photo/trtbl-k00FTWhlLM2ok3Hw/30s.jpg|32.236476|-110.927219\nStarbucks|(520)295-3920|1209 W Irvington Rd Tucson, AZ 85714|3.0 star rating|s3-media4.fl.yelpcdn.com/bphoto/2EtW2aQ-doFiMwFzb6qNDg/90s.jpg|32.162541|-110.990093\nScooter’s Express-O|(520)620-1116|110 S Church Ave Tucson, AZ 85701|4.5 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.220647|-110.972769\nIke’s Coffee & Tea|(520)792-1800|100 N Stone Ave Tucson, AZ 85701|4.0 star rating|s3-media3.fl.yelpcdn.com/photo/Oek1pIwHa1jDyiZQKFCtbQ/30s.jpg|32.223157|-110.971274\nStarbucks|(520)293-7086|405 E Wetmore Rd Tucson, AZ 85705|3.5 star rating|s3-media1.fl.yelpcdn.com/bphoto/FbK1G5aDKYl05bDDtenUgA/90s.jpg|32.287002|-110.965666\nBisbee Breakfast Club Ina|(520)579-7495|4131 W Ina Rd Tucson, AZ 85741|3.5 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.337160|-111.053544\nCaffeNation|(520)294-4995|3191 E Valencia Rd Tucson, AZ 85706|3.0 star rating|s3-media3.fl.yelpcdn.com/photo/Cx0OC1mKOt6dEUmo-jo2Xg/30s.jpg|32.134726|-110.924280\nStarbucks|(520)721-7221|9525 E Old Spanish Trl Tucson, AZ 85748|4.0 star rating|http:s3-media2.fl.yelpcdn.com/assets/2/www/img/b7e9d647188d/gfx/header_print.gif|32.132264|-110.732306\nStarbucks|(520)323-4512|3421 E Broadway Blvd Tucson, AZ 85716|3.0 star rating|s3-media2.fl.yelpcdn.com/bphoto/iIdt3KdkjLMu5q1wNqeJqA/90s.jpg|32.222130|-110.918345\nStarbucks|(520)575-0241|6001 N Oracle Rd Tucson, AZ 85704|4.0 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.315829|-110.977310\nConnections Cafe|(520)495-7900|2561 W Ruthrauff Rd Tucson, AZ 85705|4.5 star rating|s3-media1.fl.yelpcdn.com/photo/FY3epL4qDRA7eSB_yF1miA/30s.jpg|32.293630|-111.021236\nStarbucks|(520)546-7771|6291 E Speedway Blvd Tucson, AZ 85712|3.0 star rating|s3-media4.fl.yelpcdn.com/bphoto/HzNVj0qDfH1oKpjSKmXgFw/90s.jpg|32.236365|-110.858296\nFrost Gelato|(520)886-0354|7301 E Tanque Verde Rd Tucson, AZ 85715|4.5 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.251251|-110.836157\nStarbucks|(520)744-3418|5970 W Arizona Pavilions Dr Tucson, AZ 85743|3.5 star rating|s3-media4.fl.yelpcdn.com/photo/2us76m1WzvJeTfLdFc88Dg/30s.jpg|32.355210|-111.091671\nTerrace Cafe & Bar|(520)882-7701|350 S Freeway Rd Tucson, AZ 85745|5.0 star rating|s3-media4.fl.yelpcdn.com/bphoto/L874a2JnkcB-tBjtK_IIEw/90s.jpg|32.224578|-110.980383\nStarbucks|(520)232-0105|1825 E River Rd Tucson, AZ 85718|3.0 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.288064|-110.945009\nOmar’s Hi-Way Chef Restaurant|(520)574-0961|5451 E Benson Hwy Tucson, AZ 85706|3.5 star rating|s3-media2.fl.yelpcdn.com/photo/Y44SZuYE62do1aDcdxNtmg/30s.jpg|32.127114|-110.876064\nStarbucks|(520)514-1945|5870 E Broadway Blvd Tucson, AZ 85711|3.5 star rating|http:s3-media2.fl.yelpcdn.com/assets/2/www/img/b7e9d647188d/gfx/header_print.gif|32.219198|-110.865589\nStarbucks|(520)721-7236|7288 E Broadway Blvd Tucson, AZ 85710|3.5 star rating|s3-media1.fl.yelpcdn.com/bphoto/FU5GvhK2Bj3nRs2qOXhWNA/90s.jpg|32.220470|-110.838455\nFrost Gelato|(520)797-0188|7131 N Oracle Rd Tucson, AZ 85704|4.5 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.336287|-110.978115\nStarbucks|(520)229-1979|10785 N Oracle Rd Tucson, AZ 85737|3.5 star rating|s3-media4.fl.yelpcdn.com/photo/9MmItqTK-Kc7lAAfj35e_Q/30s.jpg|32.401957|-110.956204\nFermented Tea Company Kombucha Coffee Cafe|(520)286-6889|3820 S Palo Verde Rd Tucson, AZ 85714|5.0 star rating|s3-media4.fl.yelpcdn.com/bphoto/OICz5C2g5jj1DZsHf2j0gQ/90s.jpg|32.177422|-110.918621\nTylers Coffee|(855)554-3833|1810 S 6th Ave Tucson, AZ 85713|4.5 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.200500|-110.968519\nStarbucks|(520)408-2292|98 W River Rd Tucson, AZ 85704|4.0 star rating|s3-media4.fl.yelpcdn.com/photo/CoxMeNp2BSfpw5W29Wlqew/30s.jpg|32.297257|-110.973347\nStarbucks|(520)579-7257|4905 W Ina Rd Tucson, AZ 85743|4.0 star rating|s3-media1.fl.yelpcdn.com/bphoto/wq1lD3_Y9Cjz6r-ddsNiTA/90s.jpg|32.337082|-111.068517\nFrost Gelato|(520)615-9490|2905 E Skyline Dr Tucson, AZ 85718|4.5 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.324742|-110.930113\nCoffee On the Fly|(520)293-0521|3952 N 1st Ave Tucson, AZ 85719|5.0 star rating|s3-media2.fl.yelpcdn.com/photo/HgRVric2wybU-q8tq-doaA/30s.jpg|32.278672|-110.960649\nMaya Tea Company|(520)918-9811|225 W Flores St Tucson, AZ 85705|3.5 star rating|http:s3-media2.fl.yelpcdn.com/assets/2/www/img/b7e9d647188d/gfx/header_print.gif|32.246864|-110.975807\nBig Moe’s Coffee Emporium||3230 N Dodge Blvd Tucson, AZ 85716|3.0 star rating|s3-media2.fl.yelpcdn.com/bphoto/tf6u9IO2Scjg2D6XA28wCA/90s.jpg|32.266122|-110.913849\nCaffeNation Bistro & Deli|(520)209-2732|4951 E Grant Rd Tucson, AZ 85712|3.0 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.251211|-110.887672\nStarbucks|(520)296-1813|7890 E Speedway Blvd Tucson, AZ 85710|4.0 star rating|s3-media1.fl.yelpcdn.com/photo/9t5JfAjWVDSuVYEMngjqvA/30s.jpg|32.235191|-110.824224\nStarbucks|(520)219-4880|639 W Ina Rd Tucson, AZ 85704|3.0 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c73d296de521/assets/img/default_avatars/business_90_square.png|32.336621|-110.979282\nEspresso Wrench|(520)722-9100|3200 S Dodge Blvd Tucson, AZ 85713|5.0 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.186914|-110.914220\nIke’s Coffee Bar||7250 South Tucson Blvd. Tucson, AZ 85756|2.5 star rating|s3-media2.fl.yelpcdn.com/photo/Efmc6-guf92CYVoJnCcBzQ/30s.jpg|32.120071|-110.937950\nCoffee X Change|(520)886-6496|8501 E Broadway Blvd Tucson, AZ 85710|4.0 star rating|s3-media3.fl.yelpcdn.com/bphoto/hNvLMUCoMFh1z_bIE0nUIQ/90s.jpg|32.221379|-110.810571\nStarbucks|(520)219-9338|7555 N La Cholla Blvd Tucson, AZ 85741|3.0 star rating|s3-media4.fl.yelpcdn.com/assets/srv0/yelp_styleguide/c2252a4cd43e/assets/img/stars/stars_map.png|32.343486|-111.013209\nDunkin’ Donuts|(520)790-5892|5346 E 22nd St Tucson, AZ 85711|3.5 star rating|s3-media3.fl.yelpcdn.com/photo/ruz6cjuTZrzKlMct_LlO-w/30s.jpg|32.206488|-110.878131\nJava Edge|(520)294-3917|3820 S Palo Verde Tucson, AZ 85714|2.0 star rating|http:s3-media2.fl.yelpcdn.com/assets/2/www/img/b7e9d647188d/gfx/header_print.gif|32.177422|-110.918621";
    NSArray *cafes = [data componentsSeparatedByString:@"\n"];
    for (int i=0; i<cafes.count; i++)
    {
        NSString *cafe = cafes[i];
        NSArray *objects = [cafe componentsSeparatedByString:@"|"];
        NSString *title = objects[0];
        NSString *phone = objects[1];
        NSString *address = objects[2];
        NSString *ratingStringFull = objects[3];
        NSArray *ratingObjects = [ratingStringFull componentsSeparatedByString:@" "];
        NSString *ratingString = ratingObjects[0];
        double ratingDouble = [ratingString doubleValue];
        NSNumber *rating = [NSNumber numberWithDouble:ratingDouble];
        NSString *urlImageString = objects[4];
        if ([urlImageString containsString:@"http:"] && ![urlImageString containsString:@"http://"])
        {
            NSString *urlHost = [urlImageString substringWithRange:NSMakeRange(5, urlImageString.length-5)];
            urlImageString = [NSString stringWithFormat:@"http://%@", urlHost];
        }
        else if (![urlImageString containsString:@"http://"])
        {
            urlImageString = [NSString stringWithFormat:@"http://%@", urlImageString];
        }
        NSURL *urlImage = [NSURL URLWithString:urlImageString];
        NSData *dataImage = [NSData dataWithContentsOfURL:urlImage];
        PFFile *fileImage = [PFFile fileWithData:dataImage];
        NSString *latitudeString = objects[5];
        double latitude = [latitudeString doubleValue];
        NSString *longitudeString = objects[6];
        double longitude = [longitudeString doubleValue];
        PFGeoPoint *geoPoint = [PFGeoPoint geoPointWithLatitude:latitude longitude:longitude];
        
        PFObject *cafeObject = [PFObject objectWithClassName:@"Cafes"];
        [cafeObject setObject:title forKey:@"title"];
        [cafeObject setObject:phone forKey:@"phone"];
        [cafeObject setObject:address forKey:@"address"];
        [cafeObject setObject:rating forKey:@"rating"];
        [cafeObject setObject:fileImage forKey:@"image"];
        [cafeObject setObject:geoPoint forKey:@"geoPoint"];
        [cafeObject save];
        
    }

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
}

- (void)viewWillAppear:(BOOL)animated {
    self.clearsSelectionOnViewWillAppear = self.splitViewController.isCollapsed;
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender {
    if (!self.objects) {
        self.objects = [[NSMutableArray alloc] init];
    }
    [self.objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDate *object = self.objects[indexPath.row];
        DetailViewController *controller = (DetailViewController *)[[segue destinationViewController] topViewController];
        [controller setDetailItem:object];
        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
        controller.navigationItem.leftItemsSupplementBackButton = YES;
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSDate *object = self.objects[indexPath.row];
    cell.textLabel.text = [object description];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

@end
