//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/IndexFormatTooOldException.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Integer.h"
#include "org/apache/lucene/index/IndexFormatTooOldException.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/lukhnos/portmobile/util/Objects.h"

@interface OrgApacheLuceneIndexIndexFormatTooOldException () {
 @public
  NSString *resourceDescription_;
  NSString *reason_;
  JavaLangInteger *version__;
  JavaLangInteger *minVersion_;
  JavaLangInteger *maxVersion_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexFormatTooOldException, resourceDescription_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexFormatTooOldException, reason_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexFormatTooOldException, version__, JavaLangInteger *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexFormatTooOldException, minVersion_, JavaLangInteger *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexFormatTooOldException, maxVersion_, JavaLangInteger *)

@implementation OrgApacheLuceneIndexIndexFormatTooOldException

- (instancetype)initWithNSString:(NSString *)resourceDescription
                    withNSString:(NSString *)reason {
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(self, resourceDescription, reason);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                         withNSString:(NSString *)reason {
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withNSString_(self, inArg, reason);
  return self;
}

- (instancetype)initWithNSString:(NSString *)resourceDescription
                         withInt:(jint)version_
                         withInt:(jint)minVersion
                         withInt:(jint)maxVersion {
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(self, resourceDescription, version_, minVersion, maxVersion);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                              withInt:(jint)version_
                                              withInt:(jint)minVersion
                                              withInt:(jint)maxVersion {
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(self, inArg, version_, minVersion, maxVersion);
  return self;
}

- (void)dealloc {
  RELEASE_(resourceDescription_);
  RELEASE_(reason_);
  RELEASE_(version__);
  RELEASE_(minVersion_);
  RELEASE_(maxVersion_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withNSString:", "IndexFormatTooOldException", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneStoreDataInput:withNSString:", "IndexFormatTooOldException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withInt:withInt:withInt:", "IndexFormatTooOldException", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneStoreDataInput:withInt:withInt:withInt:", "IndexFormatTooOldException", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "resourceDescription_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "reason_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "version__", "version", 0x12, "Ljava.lang.Integer;", NULL, NULL, .constantValue.asLong = 0 },
    { "minVersion_", NULL, 0x12, "Ljava.lang.Integer;", NULL, NULL, .constantValue.asLong = 0 },
    { "maxVersion_", NULL, 0x12, "Ljava.lang.Integer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexIndexFormatTooOldException = { 2, "IndexFormatTooOldException", "org.apache.lucene.index", NULL, 0x1, 4, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexIndexFormatTooOldException;
}

@end

void OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(OrgApacheLuceneIndexIndexFormatTooOldException *self, NSString *resourceDescription, NSString *reason) {
  JavaIoIOException_initWithNSString_(self, JreStrcat("$$$$$", @"Format version is not supported (resource ", resourceDescription, @"): ", reason, @". This version of Lucene only supports indexes created with release 4.0 and later."));
  JreStrongAssign(&self->resourceDescription_, resourceDescription);
  JreStrongAssign(&self->reason_, reason);
  JreStrongAssign(&self->version__, nil);
  JreStrongAssign(&self->minVersion_, nil);
  JreStrongAssign(&self->maxVersion_, nil);
}

OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(NSString *resourceDescription, NSString *reason) {
  OrgApacheLuceneIndexIndexFormatTooOldException *self = [OrgApacheLuceneIndexIndexFormatTooOldException alloc];
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(self, resourceDescription, reason);
  return self;
}

void OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withNSString_(OrgApacheLuceneIndexIndexFormatTooOldException *self, OrgApacheLuceneStoreDataInput *inArg, NSString *reason) {
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(self, OrgLukhnosPortmobileUtilObjects_toStringWithId_(inArg), reason);
}

OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withNSString_(OrgApacheLuceneStoreDataInput *inArg, NSString *reason) {
  OrgApacheLuceneIndexIndexFormatTooOldException *self = [OrgApacheLuceneIndexIndexFormatTooOldException alloc];
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withNSString_(self, inArg, reason);
  return self;
}

void OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(OrgApacheLuceneIndexIndexFormatTooOldException *self, NSString *resourceDescription, jint version_, jint minVersion, jint maxVersion) {
  JavaIoIOException_initWithNSString_(self, JreStrcat("$$$I$I$I$", @"Format version is not supported (resource ", resourceDescription, @"): ", version_, @" (needs to be between ", minVersion, @" and ", maxVersion, @"). This version of Lucene only supports indexes created with release 4.0 and later."));
  JreStrongAssign(&self->resourceDescription_, resourceDescription);
  JreStrongAssign(&self->version__, JavaLangInteger_valueOfWithInt_(version_));
  JreStrongAssign(&self->minVersion_, JavaLangInteger_valueOfWithInt_(minVersion));
  JreStrongAssign(&self->maxVersion_, JavaLangInteger_valueOfWithInt_(maxVersion));
  JreStrongAssign(&self->reason_, nil);
}

OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(NSString *resourceDescription, jint version_, jint minVersion, jint maxVersion) {
  OrgApacheLuceneIndexIndexFormatTooOldException *self = [OrgApacheLuceneIndexIndexFormatTooOldException alloc];
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(self, resourceDescription, version_, minVersion, maxVersion);
  return self;
}

void OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(OrgApacheLuceneIndexIndexFormatTooOldException *self, OrgApacheLuceneStoreDataInput *inArg, jint version_, jint minVersion, jint maxVersion) {
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(self, OrgLukhnosPortmobileUtilObjects_toStringWithId_(inArg), version_, minVersion, maxVersion);
}

OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint version_, jint minVersion, jint maxVersion) {
  OrgApacheLuceneIndexIndexFormatTooOldException *self = [OrgApacheLuceneIndexIndexFormatTooOldException alloc];
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(self, inArg, version_, minVersion, maxVersion);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexIndexFormatTooOldException)
