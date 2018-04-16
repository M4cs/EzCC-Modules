#import "SpotifyLauncher.h"
#import "spawn.h"

@interface UIApplication (PrivateMethods)
- (BOOL)launchApplicationWithIdentifier:(NSString *)identifier suspended:(BOOL)suspend;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation SpotifyLauncher
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
	return nil;// not much point having this as it can confuse people
}

- (BOOL)isSelected {
	return self.SpotifyLauncher;
}

- (void)setSelected:(BOOL)selected {
  self.SpotifyLauncher = selected;
	[super refreshState];
    [self spotify];
}

- (void)spotify {
  NSString *bundleID = @"com.spotify.client";
  [[UIApplication sharedApplication] launchApplicationWithIdentifier:bundleID suspended:FALSE];
		self.SpotifyLauncher = NO;
	
}
@end
