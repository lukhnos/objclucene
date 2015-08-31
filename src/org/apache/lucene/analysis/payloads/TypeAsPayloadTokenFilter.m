//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/payloads/TypeAsPayloadTokenFilter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/payloads/TypeAsPayloadTokenFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/PayloadAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/TypeAttribute.h"
#include "org/apache/lucene/util/AttributeSource.h"
#include "org/apache/lucene/util/BytesRef.h"

@interface OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilter () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute> payloadAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute> typeAtt_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilter, payloadAtt_, id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilter, typeAtt_, id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>)

@implementation OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    NSString *type = [((id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>) nil_chk(typeAtt_)) type];
    if (type != nil && ![type isEmpty]) {
      [((id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute>) nil_chk(payloadAtt_)) setPayloadWithOrgApacheLuceneUtilBytesRef:[new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(type) autorelease]];
    }
    return YES;
  }
  else {
    return NO;
  }
}

- (void)dealloc {
  RELEASE_(payloadAtt_);
  RELEASE_(typeAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "TypeAsPayloadTokenFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x11, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "payloadAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.PayloadAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "typeAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.TypeAttribute;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilter = { 2, "TypeAsPayloadTokenFilter", "org.apache.lucene.analysis.payloads", NULL, 0x1, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilter;
}

@end

void OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssign(&self->payloadAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPayloadAttribute_class_()]);
  JreStrongAssign(&self->typeAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTypeAttribute_class_()]);
}

OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilter *new_OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilter *self = [OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilter alloc];
  OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilter)