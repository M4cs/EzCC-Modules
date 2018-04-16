#import "TweetbotLauncher.h"
#import "spawn.h"

@interface UIApplication (PrivateMethods)
- (BOOL)launchApplicationWithIdentifier:(NSString *)identifier suspended:(BOOL)suspend;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation TweetbotLauncher
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
	return nil;// not much point having this as it can confuse people
}

- (BOOL)isSelected {
	return self.TweetbotLauncher;
}

- (void)setSelected:(BOOL)selected {
  self.TweetbotLauncher = selected;
	[super refreshState];
    [self tweetbot];
}

- (void)tweetbot {
  NSString *bundleID = @"com.tapbots.Tweetbot4";
  [[UIApplication sharedApplication] launchApplicationWithIdentifier:bundleID suspended:FALSE];
		self.TweetbotLauncher = NO;
		
}
@end
