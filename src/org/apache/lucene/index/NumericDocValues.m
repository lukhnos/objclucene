//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/NumericDocValues.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/NumericDocValues.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/NumericDocValues must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneIndexNumericDocValues

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexNumericDocValues_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jlong)getWithInt:(jint)docID {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x401, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getWithInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "get", "I" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexNumericDocValues = { "NumericDocValues", "org.apache.lucene.index", ptrTable, methods, NULL, 7, 0x401, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexNumericDocValues;
}

@end

void OrgApacheLuceneIndexNumericDocValues_init(OrgApacheLuceneIndexNumericDocValues *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexNumericDocValues)
