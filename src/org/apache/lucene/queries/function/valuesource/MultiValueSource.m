//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/MultiValueSource.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/valuesource/MultiValueSource.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queries/function/valuesource/MultiValueSource must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)dimension {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(dimension);
  #pragma clang diagnostic pop
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource = { "MultiValueSource", "org.apache.lucene.queries.function.valuesource", NULL, methods, NULL, 7, 0x401, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource_init(OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource *self) {
  OrgApacheLuceneQueriesFunctionValueSource_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource)
