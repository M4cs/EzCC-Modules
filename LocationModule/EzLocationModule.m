#import "EzLocationModule.h"


@interface CLLocationManager ()
+ (BOOL)locationServicesEnabled;
+ (void)setLocationServicesEnabled:(BOOL) newValue;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation EzLocationModule 
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
	return [UIColor blueColor];
}

- (BOOL)isSelected {
	[CLLocationManager setLocationServicesEnabled:false];
	return self.ezlocation;
}

- (void)setSelected:(BOOL)selected {
	self.ezlocation = selected;
	[CLLocationManager setLocationServicesEnabled:true];
	[super refreshState];
	
}
@end