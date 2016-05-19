//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/IndexFormatTooNewException.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/index/IndexFormatTooNewException.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/lukhnos/portmobile/util/Objects.h"

@interface OrgApacheLuceneIndexIndexFormatTooNewException () {
 @public
  NSString *resourceDescription_;
  jint version__;
  jint minVersion_;
  jint maxVersion_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexFormatTooNewException, resourceDescription_, NSString *)

@implementation OrgApacheLuceneIndexIndexFormatTooNewException

- (instancetype)initWithNSString:(NSString *)resourceDescription
                         withInt:(jint)version_
                         withInt:(jint)minVersion
                         withInt:(jint)maxVersion {
  OrgApacheLuceneIndexIndexFormatTooNewException_initWithNSString_withInt_withInt_withInt_(self, resourceDescription, version_, minVersion, maxVersion);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                              withInt:(jint)version_
                                              withInt:(jint)minVersion
                                              withInt:(jint)maxVersion {
  OrgApacheLuceneIndexIndexFormatTooNewException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(self, inArg, version_, minVersion, maxVersion);
  return self;
}

- (NSString *)getResourceDescription {
  return resourceDescription_;
}

- (jint)getVersion {
  return version__;
}

- (jint)getMaxVersion {
  return maxVersion_;
}

- (jint)getMinVersion {
  return minVersion_;
}

- (void)dealloc {
  RELEASE_(resourceDescription_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withInt:withInt:withInt:", "IndexFormatTooNewException", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneStoreDataInput:withInt:withInt:withInt:", "IndexFormatTooNewException", NULL, 0x1, NULL, NULL },
    { "getResourceDescription", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getVersion", NULL, "I", 0x1, NULL, NULL },
    { "getMaxVersion", NULL, "I", 0x1, NULL, NULL },
    { "getMinVersion", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "resourceDescription_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "version__", "version", 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "minVersion_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxVersion_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexIndexFormatTooNewException = { 2, "IndexFormatTooNewException", "org.apache.lucene.index", NULL, 0x1, 6, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexIndexFormatTooNewException;
}

@end

void OrgApacheLuceneIndexIndexFormatTooNewException_initWithNSString_withInt_withInt_withInt_(OrgApacheLuceneIndexIndexFormatTooNewException *self, NSString *resourceDescription, jint version_, jint minVersion, jint maxVersion) {
  JavaIoIOException_initWithNSString_(self, JreStrcat("$$$I$I$IC", @"Format version is not supported (resource ", resourceDescription, @"): ", version_, @" (needs to be between ", minVersion, @" and ", maxVersion, ')'));
  JreStrongAssign(&self->resourceDescription_, resourceDescription);
  self->version__ = version_;
  self->minVersion_ = minVersion;
  self->maxVersion_ = maxVersion;
}

OrgApacheLuceneIndexIndexFormatTooNewException *new_OrgApacheLuceneIndexIndexFormatTooNewException_initWithNSString_withInt_withInt_withInt_(NSString *resourceDescription, jint version_, jint minVersion, jint maxVersion) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexIndexFormatTooNewException, initWithNSString_withInt_withInt_withInt_, resourceDescription, version_, minVersion, maxVersion)
}

OrgApacheLuceneIndexIndexFormatTooNewException *create_OrgApacheLuceneIndexIndexFormatTooNewException_initWithNSString_withInt_withInt_withInt_(NSString *resourceDescription, jint version_, jint minVersion, jint maxVersion) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexIndexFormatTooNewException, initWithNSString_withInt_withInt_withInt_, resourceDescription, version_, minVersion, maxVersion)
}

void OrgApacheLuceneIndexIndexFormatTooNewException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(OrgApacheLuceneIndexIndexFormatTooNewException *self, OrgApacheLuceneStoreDataInput *inArg, jint version_, jint minVersion, jint maxVersion) {
  OrgApacheLuceneIndexIndexFormatTooNewException_initWithNSString_withInt_withInt_withInt_(self, OrgLukhnosPortmobileUtilObjects_toStringWithId_(inArg), version_, minVersion, maxVersion);
}

OrgApacheLuceneIndexIndexFormatTooNewException *new_OrgApacheLuceneIndexIndexFormatTooNewException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint version_, jint minVersion, jint maxVersion) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexIndexFormatTooNewException, initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_, inArg, version_, minVersion, maxVersion)
}

OrgApacheLuceneIndexIndexFormatTooNewException *create_OrgApacheLuceneIndexIndexFormatTooNewException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint version_, jint minVersion, jint maxVersion) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexIndexFormatTooNewException, initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_, inArg, version_, minVersion, maxVersion)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexIndexFormatTooNewException)
