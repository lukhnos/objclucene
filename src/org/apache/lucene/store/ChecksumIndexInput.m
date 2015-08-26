//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/ChecksumIndexInput.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalStateException.h"
#include "org/apache/lucene/store/ChecksumIndexInput.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/IndexInput.h"

@implementation OrgApacheLuceneStoreChecksumIndexInput

- (instancetype)initWithNSString:(NSString *)resourceDescription {
  OrgApacheLuceneStoreChecksumIndexInput_initWithNSString_(self, resourceDescription);
  return self;
}

- (jlong)getChecksum {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)seekWithLong:(jlong)pos {
  jlong skip = pos - [self getFilePointer];
  if (skip < 0) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("@$", [self getClass], @" cannot seek backwards")) autorelease];
  }
  [self skipBytesWithLong:skip];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "ChecksumIndexInput", NULL, 0x4, NULL, NULL },
    { "getChecksum", NULL, "J", 0x401, "Ljava.io.IOException;", NULL },
    { "seekWithLong:", "seek", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreChecksumIndexInput = { 2, "ChecksumIndexInput", "org.apache.lucene.store", NULL, 0x401, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreChecksumIndexInput;
}

@end

void OrgApacheLuceneStoreChecksumIndexInput_initWithNSString_(OrgApacheLuceneStoreChecksumIndexInput *self, NSString *resourceDescription) {
  OrgApacheLuceneStoreIndexInput_initWithNSString_(self, resourceDescription);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreChecksumIndexInput)
