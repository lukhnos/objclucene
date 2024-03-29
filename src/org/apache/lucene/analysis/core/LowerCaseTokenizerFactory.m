//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/LowerCaseTokenizerFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/core/LowerCaseFilterFactory.h"
#include "org/apache/lucene/analysis/core/LowerCaseTokenizer.h"
#include "org/apache/lucene/analysis/core/LowerCaseTokenizerFactory.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/TokenizerFactory.h"
#include "org/apache/lucene/util/AttributeFactory.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/core/LowerCaseTokenizerFactory must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisCoreLowerCaseTokenizer *)createWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory {
  return create_OrgApacheLuceneAnalysisCoreLowerCaseTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(factory);
}

- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent {
  return create_OrgApacheLuceneAnalysisCoreLowerCaseFilterFactory_initWithJavaUtilMap_(create_JavaUtilHashMap_initWithJavaUtilMap_([self getOriginalArgs]));
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisCoreLowerCaseTokenizer;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisUtilAbstractAnalysisFactory;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilMap:);
  methods[1].selector = @selector(createWithOrgApacheLuceneUtilAttributeFactory:);
  methods[2].selector = @selector(getMultiTermComponent);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V", "create", "LOrgApacheLuceneUtilAttributeFactory;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory = { "LowerCaseTokenizerFactory", "org.apache.lucene.analysis.core", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory;
}

@end

void OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenizerFactory_initWithJavaUtilMap_(self, args);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory *new_OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory *create_OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCoreLowerCaseTokenizerFactory)
