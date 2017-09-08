



## Code Example

```
+ (void)moveAnimationWithTableView:(UITableView *)tableView {

NSArray *cells = tableView.visibleCells;
for (int i = 0; i < cells.count; i++) {
CGFloat totalTime = 0.4;
UITableViewCell *cell = [tableView.visibleCells objectAtIndex:i];
cell.transform = CGAffineTransformMakeTranslation(-XS_SCREEN_WIDTH, 0);
[UIView animateWithDuration:0.4 delay:i*(totalTime/cells.count) usingSpringWithDamping:0.7 initialSpringVelocity:1/0.7 options:UIViewAnimationOptionCurveEaseIn animations:^{
cell.transform = CGAffineTransformIdentity;
} completion:^(BOOL finished) {

}];
}
}
```

## Show
![2017-09-05 18_41_31.gif](http://upload-images.jianshu.io/upload_images/1819750-5969d06fc5f0b1ad.gif?imageMogr2/auto-orient/strip)


![2017-09-05 18_42_41.gif](http://upload-images.jianshu.io/upload_images/1819750-d15b7c658245dd00.gif?imageMogr2/auto-orient/strip)

![2017-09-06 09_22_16.gif](http://upload-images.jianshu.io/upload_images/1819750-7e2f494886c4087c.gif?imageMogr2/auto-orient/strip)

![2017-09-06 09_22_36.gif](http://upload-images.jianshu.io/upload_images/1819750-cf35bdb88e2233d3.gif?imageMogr2/auto-orient/strip)

![2017-09-06 09_23_07.gif](http://upload-images.jianshu.io/upload_images/1819750-0afc78f10af2b2c7.gif?imageMogr2/auto-orient/strip)


![2017-09-06 09_55_03.gif](http://upload-images.jianshu.io/upload_images/1819750-ca7bd0c59dfd74dd.gif?imageMogr2/auto-orient/strip)


![2017-09-06 14_51_40.gif](http://upload-images.jianshu.io/upload_images/1819750-eb4098312d48dd11.gif?imageMogr2/auto-orient/strip)

![2017-09-06 14_52_02.gif](http://upload-images.jianshu.io/upload_images/1819750-ca78886a3e9b0cf0.gif?imageMogr2/auto-orient/strip)

![2017-09-06 14_52_21.gif](http://upload-images.jianshu.io/upload_images/1819750-e9231b7e3e98d893.gif?imageMogr2/auto-orient/strip)

![2017-09-06 15_03_03.gif](http://upload-images.jianshu.io/upload_images/1819750-4d944aa53c9bd4c9.gif?imageMogr2/auto-orient/strip)
