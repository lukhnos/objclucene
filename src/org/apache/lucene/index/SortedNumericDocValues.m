//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SortedNumericDocValues.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/SortedNumericDocValues.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/SortedNumericDocValues must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneIndexSortedNumericDocValues

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexSortedNumericDocValues_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setDocumentWithInt:(jint)doc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jlong)valueAtWithInt:(jint)index {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)count {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "J", 0x401, 2, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setDocumentWithInt:);
  methods[2].selector = @selector(valueAtWithInt:);
  methods[3].selector = @selector(count);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setDocument", "I", "valueAt" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSortedNumericDocValues = { "SortedNumericDocValues", "org.apache.lucene.index", ptrTable, methods, NULL, 7, 0x401, 4, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexSortedNumericDocValues;
}

@end

void OrgApacheLuceneIndexSortedNumericDocValues_init(OrgApacheLuceneIndexSortedNumericDocValues *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSortedNumericDocValues)
