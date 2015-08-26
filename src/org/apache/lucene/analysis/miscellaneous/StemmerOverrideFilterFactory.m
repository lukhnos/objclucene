//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/StemmerOverrideFilterFactory.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/StemmerOverrideFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/StemmerOverrideFilterFactory.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/ResourceLoader.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@interface OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory () {
 @public
  OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap *dictionary_;
  NSString *dictionaryFiles_;
  jboolean ignoreCase_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory, dictionary_, OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory, dictionaryFiles_, NSString *)

@implementation OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader {
  if (dictionaryFiles_ != nil) {
    id<JavaUtilList> files = [self splitFileNamesWithNSString:dictionaryFiles_];
    if ([((id<JavaUtilList>) nil_chk(files)) size] > 0) {
      OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder *builder = [new_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder_initWithBoolean_(ignoreCase_) autorelease];
      for (NSString * __strong file in files) {
        id<JavaUtilList> list = [self getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader:loader withNSString:[((NSString *) nil_chk(file)) trim]];
        for (NSString * __strong line in nil_chk(list)) {
          IOSObjectArray *mapping = [((NSString *) nil_chk(line)) split:@"\t" limit:2];
          [builder addWithJavaLangCharSequence:IOSObjectArray_Get(nil_chk(mapping), 0) withJavaLangCharSequence:IOSObjectArray_Get(mapping, 1)];
        }
      }
      JreStrongAssign(&dictionary_, [builder build]);
    }
  }
}

- (jboolean)isIgnoreCase {
  return ignoreCase_;
}

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  return dictionary_ == nil ? input : [new_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap_(input, dictionary_) autorelease];
}

- (void)dealloc {
  RELEASE_(dictionary_);
  RELEASE_(dictionaryFiles_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "StemmerOverrideFilterFactory", NULL, 0x1, NULL, NULL },
    { "informWithOrgApacheLuceneAnalysisUtilResourceLoader:", "inform", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "isIgnoreCase", NULL, "Z", 0x1, NULL, NULL },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.TokenStream;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "dictionary_", NULL, 0x2, "Lorg.apache.lucene.analysis.miscellaneous.StemmerOverrideFilter$StemmerOverrideMap;", NULL, NULL, .constantValue.asLong = 0 },
    { "dictionaryFiles_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "ignoreCase_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory = { 2, "StemmerOverrideFilterFactory", "org.apache.lucene.analysis.miscellaneous", NULL, 0x1, 4, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  JreStrongAssign(&self->dictionaryFiles_, [self getWithJavaUtilMap:args withNSString:@"dictionary"]);
  self->ignoreCase_ = [self getBooleanWithJavaUtilMap:args withNSString:@"ignoreCase" withBoolean:NO];
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args)) autorelease];
  }
}

OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory *self = [OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory alloc];
  OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory)
