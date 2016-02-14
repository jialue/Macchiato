//
//  NSURLConnection_URLConnection.h
//  Macchiato
//
//  Created by Jialue Huang on 2/13/16.
//  Copyright © 2016 Jialue Huang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURLConnection ()

@end

@implementation NSURLConnection

-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    NSLog(@"Received Response");
    
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    NSLog(@"Got Data");
    
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection {
    
    // code here to do something with all the data (XML) that was returned
    
}

@end
