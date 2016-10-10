#include <TestFramework.h>

#import <UIKit/UIKit.h>
#import "Starboard/SmartTypes.h"
#import "CALayerInternal.h"
#import "NullCompositor.h"

// TODO:Task 8737070:Create Button in UIThread to enable Unit tests. Do it for all other controls and write UT for them. Also re-enable
// Accessibility UT
DISABLED_TEST(Accessibility, accessors) {
    SetCACompositor(new NullCompositor);

    auto button = [[UIButton alloc] init];
    button.isAccessibilityElement = TRUE;
    button.accessibilityHint = @"TestHint";

    EXPECT_TRUE_MSG(button.isAccessibilityElement == TRUE, "Bad accessor");
    EXPECT_TRUE_MSG([button.accessibilityHint isEqualToString:@"TestHint"], "Bad accessor");

    auto item = [[UIBarButtonItem alloc] init];
    item.isAccessibilityElement = TRUE;
    item.accessibilityHint = @"TestHint";

    EXPECT_TRUE_MSG(item.isAccessibilityElement == TRUE, "Bad accessor");
    EXPECT_TRUE_MSG([item.accessibilityHint isEqualToString:@"TestHint"], "Bad accessor");
}
