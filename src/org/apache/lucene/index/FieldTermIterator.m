//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/FieldTermIterator.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/FieldTermIterator.h"

#pragma clang diagnostic ignored "-Wprotocol"

@implementation OrgApacheLuceneIndexFieldTermIterator

- (NSString *)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)delGen {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (instancetype)init {
  OrgApacheLuceneIndexFieldTermIterator_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "field", NULL, "Ljava.lang.String;", 0x400, NULL, NULL },
    { "delGen", NULL, "J", 0x400, NULL, NULL },
    { "init", NULL, NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFieldTermIterator = { 2, "FieldTermIterator", "org.apache.lucene.index", NULL, 0x400, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexFieldTermIterator;
}

@end

void OrgApacheLuceneIndexFieldTermIterator_init(OrgApacheLuceneIndexFieldTermIterator *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFieldTermIterator)
