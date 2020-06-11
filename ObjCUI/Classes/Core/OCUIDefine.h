

#ifndef WeakSelf
#define WeakSelf(type) autoreleasepool{} __weak __typeof__(type) weakSelf = type;
#endif

#ifndef StrongSelf
#define StrongSelf(type) autoreleasepool{} __strong __typeof__(type) strongSelf = type;
#endif


typedef void (^OCUITextMaker)(UILabel *maker);