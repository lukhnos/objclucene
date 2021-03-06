//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/StoredFieldsReader.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/codecs/StoredFieldsReader.h"
#include "org/apache/lucene/index/StoredFieldVisitor.h"

#pragma clang diagnostic ignored "-Wprotocol"

@implementation OrgApacheLuceneCodecsStoredFieldsReader

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsStoredFieldsReader_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)visitDocumentWithInt:(jint)docID
withOrgApacheLuceneIndexStoredFieldVisitor:(OrgApacheLuceneIndexStoredFieldVisitor *)visitor {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneCodecsStoredFieldsReader *)clone {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)checkIntegrity {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneCodecsStoredFieldsReader *)getMergeInstance {
  return self;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "StoredFieldsReader", NULL, 0x4, NULL, NULL },
    { "visitDocumentWithInt:withOrgApacheLuceneIndexStoredFieldVisitor:", "visitDocument", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "clone", NULL, "Lorg.apache.lucene.codecs.StoredFieldsReader;", 0x401, NULL, NULL },
    { "checkIntegrity", NULL, "V", 0x401, "Ljava.io.IOException;", NULL },
    { "getMergeInstance", NULL, "Lorg.apache.lucene.codecs.StoredFieldsReader;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsStoredFieldsReader = { 2, "StoredFieldsReader", "org.apache.lucene.codecs", NULL, 0x401, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsStoredFieldsReader;
}

@end

void OrgApacheLuceneCodecsStoredFieldsReader_init(OrgApacheLuceneCodecsStoredFieldsReader *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsStoredFieldsReader)
