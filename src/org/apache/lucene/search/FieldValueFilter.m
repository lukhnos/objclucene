//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FieldValueFilter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "org/apache/lucene/search/FieldValueFilter.h"

#pragma clang diagnostic ignored "-Wprotocol"

@implementation OrgApacheLuceneSearchFieldValueFilter

- (instancetype)init {
  OrgApacheLuceneSearchFieldValueFilter_init(self);
  return self;
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecated alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFieldValueFilter = { 2, "FieldValueFilter", "org.apache.lucene.search", NULL, 0x1, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchFieldValueFilter;
}

@end

void OrgApacheLuceneSearchFieldValueFilter_init(OrgApacheLuceneSearchFieldValueFilter *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchFieldValueFilter *new_OrgApacheLuceneSearchFieldValueFilter_init() {
  OrgApacheLuceneSearchFieldValueFilter *self = [OrgApacheLuceneSearchFieldValueFilter alloc];
  OrgApacheLuceneSearchFieldValueFilter_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFieldValueFilter)
