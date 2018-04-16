#import "SCCMusicModule.h"

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation SCCMusicModule
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

-(void)setApplicationIdentifier:(NSString *)appID{
	self.appID = @"com.apple.Music";
}
-(NSString *)applicationIdentifier{
	return self.appID;
}
@end
