#import "EzSoundcloudOpener.h"
#import "spawn.h"

@interface UIApplication (PrivateMethods)
- (BOOL)launchApplicationWithIdentifier:(NSString *)identifier suspended:(BOOL)suspend;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation EzSoundcloudOpener
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
	return nil;// not much point having this as it can confuse people
}

- (BOOL)isSelected {
	return self.EzSoundcloudOpener;
}

- (void)setSelected:(BOOL)selected {
  self.EzSoundcloudOpener = selected;
	[super refreshState];
    [self soundcloud];
}

- (void)soundcloud {
  NSString *bundleID = @"com.soundcloud.TouchApp";
  [[UIApplication sharedApplication] launchApplicationWithIdentifier:bundleID suspended:FALSE];

}
@end
