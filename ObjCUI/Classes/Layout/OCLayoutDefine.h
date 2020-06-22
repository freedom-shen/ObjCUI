
#define OCUISizeBoxChildHeaderCreate(__UIViewClassName__)  + (__UIViewClassName__ *(^)(UIView *view))objc_create; \
- (__UIViewClassName__ *(^)(double width))objc_width; \
- (__UIViewClassName__ *(^)(double width))objc_height; \
- (__UIViewClassName__ *(^)(double ratio))objc_widthRatio; \
- (__UIViewClassName__ *(^)(double ratio))objc_heightRatio; \
- (__UIViewClassName__ *(^)(UIView *view))objc_child;