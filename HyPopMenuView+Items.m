
#import "HyPopMenuView+Items.h"

@implementation HyPopMenuView (Items)

+(HyPopMenuView *)initWithImages:(NSArray *)images titles:(NSArray *)titles delegate:(id<HyPopMenuViewDelegate>)delegate{
    HyPopMenuView *popView = [HyPopMenuView sharedPopMenuManager];
    NSMutableArray *models =[NSMutableArray array];
    for (int i = 0; i < images.count; i++) {
        PopMenuModel *model = [PopMenuModel allocPopMenuModelWithImageNameString:images[i] AtTitleString:titles[i] AtTextColor:[UIColor grayColor] AtTransitionType:PopMenuTransitionTypeCustomizeApi AtTransitionRenderingColor:nil];
        [models addObject:model];
    }
    popView.dataSource = models;
    popView.delegate = delegate;
    popView.popMenuSpeed = 12.0f;
    popView.backgroundType = HyPopMenuViewBackgroundTypeLightBlur;
    popView.automaticIdentificationColor = false;
    popView.animationType = HyPopMenuViewAnimationTypeViscous;
    return popView;
}
@end
