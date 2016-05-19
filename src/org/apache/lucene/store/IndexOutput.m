//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/IndexOutput.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/store/IndexOutput.h"

@interface OrgApacheLuceneStoreIndexOutput () {
 @public
  NSString *resourceDescription_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreIndexOutput, resourceDescription_, NSString *)

@implementation OrgApacheLuceneStoreIndexOutput

- (instancetype)initWithNSString:(NSString *)resourceDescription {
  OrgApacheLuceneStoreIndexOutput_initWithNSString_(self, resourceDescription);
  return self;
}

- (void)close {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jlong)getFilePointer {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)getChecksum {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)description {
  return resourceDescription_;
}

- (void)dealloc {
  RELEASE_(resourceDescription_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "IndexOutput", NULL, 0x4, NULL, NULL },
    { "close", NULL, "V", 0x401, "Ljava.io.IOException;", NULL },
    { "getFilePointer", NULL, "J", 0x401, NULL, NULL },
    { "getChecksum", NULL, "J", 0x401, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "resourceDescription_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreIndexOutput = { 2, "IndexOutput", "org.apache.lucene.store", NULL, 0x401, 5, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreIndexOutput;
}

@end

void OrgApacheLuceneStoreIndexOutput_initWithNSString_(OrgApacheLuceneStoreIndexOutput *self, NSString *resourceDescription) {
  OrgApacheLuceneStoreDataOutput_init(self);
  if (resourceDescription == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"resourceDescription must not be null");
  }
  JreStrongAssign(&self->resourceDescription_, resourceDescription);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreIndexOutput)
