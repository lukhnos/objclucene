//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/payloads/DelimitedPayloadTokenFilterFactory.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/payloads/DelimitedPayloadTokenFilterFactory.h"

#pragma clang diagnostic ignored "-Wprotocol"

NSString *OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilterFactory_ENCODER_ATTR_ = @"encoder";
NSString *OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilterFactory_DELIMITER_ATTR_ = @"delimiter";

@implementation OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilterFactory

- (instancetype)init {
  OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilterFactory_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ENCODER_ATTR_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilterFactory_ENCODER_ATTR_, NULL, .constantValue.asLong = 0 },
    { "DELIMITER_ATTR_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilterFactory_DELIMITER_ATTR_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilterFactory = { 2, "DelimitedPayloadTokenFilterFactory", "org.apache.lucene.analysis.payloads", NULL, 0x1, 1, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilterFactory;
}

@end

void OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilterFactory_init(OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilterFactory *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilterFactory *new_OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilterFactory_init() {
  OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilterFactory *self = [OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilterFactory alloc];
  OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilterFactory_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPayloadsDelimitedPayloadTokenFilterFactory)
