#import "TelegramLauncher.h"
#import "spawn.h"

@interface UIApplication (PrivateMethods)
- (BOOL)launchApplicationWithIdentifier:(NSString *)identifier suspended:(BOOL)suspend;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation TelegramLauncher
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
	return nil;// not much point having this as it can confuse people
}

- (BOOL)isSelected {
	return self.TelegramLauncher;
}

- (void)setSelected:(BOOL)selected {
  self.TelegramLauncher = selected;
	[super refreshState];
    [self telegram];
}

- (void)telegram {
  NSString *bundleID = @"ph.telegra.Telegraph";
  [[UIApplication sharedApplication] launchApplicationWithIdentifier:bundleID suspended:FALSE];
		self.TelegramLauncher = NO;
		
}
@end
