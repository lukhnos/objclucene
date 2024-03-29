//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/payloads/NumericPayloadTokenFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/payloads/NumericPayloadTokenFilter.h"
#include "org/apache/lucene/analysis/payloads/NumericPayloadTokenFilterFactory.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/payloads/NumericPayloadTokenFilterFactory must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisPayloadsNumericPayloadTokenFilterFactory () {
 @public
  jfloat payload_;
  NSString *typeMatch_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPayloadsNumericPayloadTokenFilterFactory, typeMatch_, NSString *)

@implementation OrgApacheLuceneAnalysisPayloadsNumericPayloadTokenFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisPayloadsNumericPayloadTokenFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisPayloadsNumericPayloadTokenFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  return create_OrgApacheLuceneAnalysisPayloadsNumericPayloadTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withFloat_withNSString_(input, payload_, typeMatch_);
}

- (void)dealloc {
  RELEASE_(typeMatch_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisPayloadsNumericPayloadTokenFilter;", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilMap:);
  methods[1].selector = @selector(createWithOrgApacheLuceneAnalysisTokenStream:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "payload_", "F", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "typeMatch_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V", "create", "LOrgApacheLuceneAnalysisTokenStream;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPayloadsNumericPayloadTokenFilterFactory = { "NumericPayloadTokenFilterFactory", "org.apache.lucene.analysis.payloads", ptrTable, methods, fields, 7, 0x1, 2, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisPayloadsNumericPayloadTokenFilterFactory;
}

@end

void OrgApacheLuceneAnalysisPayloadsNumericPayloadTokenFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisPayloadsNumericPayloadTokenFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  self->payload_ = [self requireFloatWithJavaUtilMap:args withNSString:@"payload"];
  JreStrongAssign(&self->typeMatch_, [self requireWithJavaUtilMap:args withNSString:@"typeMatch"]);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisPayloadsNumericPayloadTokenFilterFactory *new_OrgApacheLuceneAnalysisPayloadsNumericPayloadTokenFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPayloadsNumericPayloadTokenFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisPayloadsNumericPayloadTokenFilterFactory *create_OrgApacheLuceneAnalysisPayloadsNumericPayloadTokenFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPayloadsNumericPayloadTokenFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPayloadsNumericPayloadTokenFilterFactory)
