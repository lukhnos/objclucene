//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/CorruptIndexException.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/index/CorruptIndexException.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/lukhnos/portmobile/util/Objects.h"

@interface OrgApacheLuceneIndexCorruptIndexException () {
 @public
  NSString *message_;
  NSString *resourceDescription_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexCorruptIndexException, message_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexCorruptIndexException, resourceDescription_, NSString *)

@implementation OrgApacheLuceneIndexCorruptIndexException

- (instancetype)initWithNSString:(NSString *)message
withOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)input {
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(self, message, input);
  return self;
}

- (instancetype)initWithNSString:(NSString *)message
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)output {
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataOutput_(self, message, output);
  return self;
}

- (instancetype)initWithNSString:(NSString *)message
withOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)input
                 withNSException:(NSException *)cause {
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_withNSException_(self, message, input, cause);
  return self;
}

- (instancetype)initWithNSString:(NSString *)message
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)output
                 withNSException:(NSException *)cause {
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataOutput_withNSException_(self, message, output, cause);
  return self;
}

- (instancetype)initWithNSString:(NSString *)message
                    withNSString:(NSString *)resourceDescription {
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_(self, message, resourceDescription);
  return self;
}

- (instancetype)initWithNSString:(NSString *)message
                    withNSString:(NSString *)resourceDescription
                 withNSException:(NSException *)cause {
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withNSException_(self, message, resourceDescription, cause);
  return self;
}

- (NSString *)getResourceDescription {
  return resourceDescription_;
}

- (NSString *)getOriginalMessage {
  return message_;
}

- (void)dealloc {
  RELEASE_(message_);
  RELEASE_(resourceDescription_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withOrgApacheLuceneStoreDataInput:", "CorruptIndexException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withOrgApacheLuceneStoreDataOutput:", "CorruptIndexException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withOrgApacheLuceneStoreDataInput:withNSException:", "CorruptIndexException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withOrgApacheLuceneStoreDataOutput:withNSException:", "CorruptIndexException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withNSString:", "CorruptIndexException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withNSString:withNSException:", "CorruptIndexException", NULL, 0x1, NULL, NULL },
    { "getResourceDescription", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getOriginalMessage", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "message_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "resourceDescription_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexCorruptIndexException = { 2, "CorruptIndexException", "org.apache.lucene.index", NULL, 0x1, 8, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexCorruptIndexException;
}

@end

void OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(OrgApacheLuceneIndexCorruptIndexException *self, NSString *message, OrgApacheLuceneStoreDataInput *input) {
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_withNSException_(self, message, input, nil);
}

OrgApacheLuceneIndexCorruptIndexException *new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(NSString *message, OrgApacheLuceneStoreDataInput *input) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexCorruptIndexException, initWithNSString_withOrgApacheLuceneStoreDataInput_, message, input)
}

OrgApacheLuceneIndexCorruptIndexException *create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(NSString *message, OrgApacheLuceneStoreDataInput *input) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexCorruptIndexException, initWithNSString_withOrgApacheLuceneStoreDataInput_, message, input)
}

void OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataOutput_(OrgApacheLuceneIndexCorruptIndexException *self, NSString *message, OrgApacheLuceneStoreDataOutput *output) {
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataOutput_withNSException_(self, message, output, nil);
}

OrgApacheLuceneIndexCorruptIndexException *new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataOutput_(NSString *message, OrgApacheLuceneStoreDataOutput *output) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexCorruptIndexException, initWithNSString_withOrgApacheLuceneStoreDataOutput_, message, output)
}

OrgApacheLuceneIndexCorruptIndexException *create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataOutput_(NSString *message, OrgApacheLuceneStoreDataOutput *output) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexCorruptIndexException, initWithNSString_withOrgApacheLuceneStoreDataOutput_, message, output)
}

void OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_withNSException_(OrgApacheLuceneIndexCorruptIndexException *self, NSString *message, OrgApacheLuceneStoreDataInput *input, NSException *cause) {
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withNSException_(self, message, OrgLukhnosPortmobileUtilObjects_toStringWithId_(input), cause);
}

OrgApacheLuceneIndexCorruptIndexException *new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_withNSException_(NSString *message, OrgApacheLuceneStoreDataInput *input, NSException *cause) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexCorruptIndexException, initWithNSString_withOrgApacheLuceneStoreDataInput_withNSException_, message, input, cause)
}

OrgApacheLuceneIndexCorruptIndexException *create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_withNSException_(NSString *message, OrgApacheLuceneStoreDataInput *input, NSException *cause) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexCorruptIndexException, initWithNSString_withOrgApacheLuceneStoreDataInput_withNSException_, message, input, cause)
}

void OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataOutput_withNSException_(OrgApacheLuceneIndexCorruptIndexException *self, NSString *message, OrgApacheLuceneStoreDataOutput *output, NSException *cause) {
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withNSException_(self, message, OrgLukhnosPortmobileUtilObjects_toStringWithId_(output), cause);
}

OrgApacheLuceneIndexCorruptIndexException *new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataOutput_withNSException_(NSString *message, OrgApacheLuceneStoreDataOutput *output, NSException *cause) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexCorruptIndexException, initWithNSString_withOrgApacheLuceneStoreDataOutput_withNSException_, message, output, cause)
}

OrgApacheLuceneIndexCorruptIndexException *create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataOutput_withNSException_(NSString *message, OrgApacheLuceneStoreDataOutput *output, NSException *cause) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexCorruptIndexException, initWithNSString_withOrgApacheLuceneStoreDataOutput_withNSException_, message, output, cause)
}

void OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_(OrgApacheLuceneIndexCorruptIndexException *self, NSString *message, NSString *resourceDescription) {
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withNSException_(self, message, resourceDescription, nil);
}

OrgApacheLuceneIndexCorruptIndexException *new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_(NSString *message, NSString *resourceDescription) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexCorruptIndexException, initWithNSString_withNSString_, message, resourceDescription)
}

OrgApacheLuceneIndexCorruptIndexException *create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_(NSString *message, NSString *resourceDescription) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexCorruptIndexException, initWithNSString_withNSString_, message, resourceDescription)
}

void OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withNSException_(OrgApacheLuceneIndexCorruptIndexException *self, NSString *message, NSString *resourceDescription, NSException *cause) {
  JavaIoIOException_initWithNSString_withNSException_(self, JreStrcat("$$$C", OrgLukhnosPortmobileUtilObjects_toStringWithId_(message), @" (resource=", resourceDescription, ')'), cause);
  JreStrongAssign(&self->resourceDescription_, resourceDescription);
  JreStrongAssign(&self->message_, message);
}

OrgApacheLuceneIndexCorruptIndexException *new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withNSException_(NSString *message, NSString *resourceDescription, NSException *cause) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexCorruptIndexException, initWithNSString_withNSString_withNSException_, message, resourceDescription, cause)
}

OrgApacheLuceneIndexCorruptIndexException *create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withNSException_(NSString *message, NSString *resourceDescription, NSException *cause) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexCorruptIndexException, initWithNSString_withNSString_withNSException_, message, resourceDescription, cause)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexCorruptIndexException)
