//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/bkdtree/BKDTreeDocValuesFormat.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/bkdtree/BKDTreeDocValuesFormat.h"

#pragma clang diagnostic ignored "-Wprotocol"

NSString *OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_DATA_CODEC_NAME_ = @"BKDData";
NSString *OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_DATA_EXTENSION_ = @"kdd";
NSString *OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_META_CODEC_NAME_ = @"BKDMeta";
NSString *OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_META_EXTENSION_ = @"kdm";

@implementation OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat

- (instancetype)init {
  OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DATA_CODEC_NAME_", NULL, 0x18, "Ljava.lang.String;", &OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_DATA_CODEC_NAME_, NULL, .constantValue.asLong = 0 },
    { "DATA_VERSION_START", "DATA_VERSION_START", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_DATA_VERSION_START },
    { "DATA_VERSION_CURRENT", "DATA_VERSION_CURRENT", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_DATA_VERSION_CURRENT },
    { "DATA_EXTENSION_", NULL, 0x18, "Ljava.lang.String;", &OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_DATA_EXTENSION_, NULL, .constantValue.asLong = 0 },
    { "META_CODEC_NAME_", NULL, 0x18, "Ljava.lang.String;", &OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_META_CODEC_NAME_, NULL, .constantValue.asLong = 0 },
    { "META_VERSION_START", "META_VERSION_START", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_META_VERSION_START },
    { "META_VERSION_CURRENT", "META_VERSION_CURRENT", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_META_VERSION_CURRENT },
    { "META_EXTENSION_", NULL, 0x18, "Ljava.lang.String;", &OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_META_EXTENSION_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat = { 2, "BKDTreeDocValuesFormat", "org.apache.lucene.bkdtree", NULL, 0x1, 1, methods, 8, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat;
}

@end

void OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_init(OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat *self) {
  NSObject_init(self);
}

OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat *new_OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_init() {
  OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat *self = [OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat alloc];
  OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneBkdtreeBKDTreeDocValuesFormat)
