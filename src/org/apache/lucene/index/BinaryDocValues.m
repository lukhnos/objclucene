//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/BinaryDocValues.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/BinaryDocValues.h"
#include "org/apache/lucene/util/BytesRef.h"

@implementation OrgApacheLuceneIndexBinaryDocValues

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexBinaryDocValues_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneUtilBytesRef *)getWithInt:(jint)docID {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "BinaryDocValues", NULL, 0x4, NULL, NULL },
    { "getWithInt:", "get", "Lorg.apache.lucene.util.BytesRef;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexBinaryDocValues = { 2, "BinaryDocValues", "org.apache.lucene.index", NULL, 0x401, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexBinaryDocValues;
}

@end

void OrgApacheLuceneIndexBinaryDocValues_init(OrgApacheLuceneIndexBinaryDocValues *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexBinaryDocValues)
