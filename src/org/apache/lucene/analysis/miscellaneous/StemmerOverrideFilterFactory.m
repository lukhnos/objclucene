//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/StemmerOverrideFilterFactory.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/StemmerOverrideFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/StemmerOverrideFilterFactory.h"
#include "org/apache/lucene/analysis/util/ResourceLoader.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/miscellaneous/StemmerOverrideFilterFactory must not be compiled with ARC (-fobjc-arc)"
#endif

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
    id<JavaUtilList> files = JreRetainedLocalValue([self splitFileNamesWithNSString:dictionaryFiles_]);
    if ([((id<JavaUtilList>) nil_chk(files)) size] > 0) {
      OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder *builder = create_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder_initWithBoolean_(ignoreCase_);
      for (NSString * __strong file in files) {
        id<JavaUtilList> list = JreRetainedLocalValue([self getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader:loader withNSString:[((NSString *) nil_chk(file)) java_trim]]);
        for (NSString * __strong line in nil_chk(list)) {
          IOSObjectArray *mapping = [((NSString *) nil_chk(line)) java_split:@"\t" limit:2];
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
  return dictionary_ == nil ? input : create_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap_(input, dictionary_);
}

- (void)dealloc {
  RELEASE_(dictionary_);
  RELEASE_(dictionaryFiles_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, 4, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x1, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilMap:);
  methods[1].selector = @selector(informWithOrgApacheLuceneAnalysisUtilResourceLoader:);
  methods[2].selector = @selector(isIgnoreCase);
  methods[3].selector = @selector(createWithOrgApacheLuceneAnalysisTokenStream:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "dictionary_", "LOrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "dictionaryFiles_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "ignoreCase_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V", "inform", "LOrgApacheLuceneAnalysisUtilResourceLoader;", "LJavaIoIOException;", "create", "LOrgApacheLuceneAnalysisTokenStream;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory = { "StemmerOverrideFilterFactory", "org.apache.lucene.analysis.miscellaneous", ptrTable, methods, fields, 7, 0x1, 4, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  JreStrongAssign(&self->dictionaryFiles_, [self getWithJavaUtilMap:args withNSString:@"dictionary"]);
  self->ignoreCase_ = [self getBooleanWithJavaUtilMap:args withNSString:@"ignoreCase" withBoolean:false];
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory *create_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilterFactory)
