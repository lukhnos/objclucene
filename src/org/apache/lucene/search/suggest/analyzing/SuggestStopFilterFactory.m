//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/analyzing/SuggestStopFilterFactory.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/core/StopAnalyzer.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/ResourceLoader.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"
#include "org/apache/lucene/search/suggest/analyzing/SuggestStopFilter.h"
#include "org/apache/lucene/search/suggest/analyzing/SuggestStopFilterFactory.h"

@interface OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory () {
 @public
  OrgApacheLuceneAnalysisUtilCharArraySet *stopWords_;
  NSString *stopWordFiles_;
  NSString *format_;
  jboolean ignoreCase_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory, stopWords_, OrgApacheLuceneAnalysisUtilCharArraySet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory, stopWordFiles_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory, format_, NSString *)

NSString *OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory_FORMAT_WORDSET = @"wordset";
NSString *OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory_FORMAT_SNOWBALL = @"snowball";

@implementation OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory

+ (NSString *)FORMAT_WORDSET {
  return OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory_FORMAT_WORDSET;
}

+ (NSString *)FORMAT_SNOWBALL {
  return OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory_FORMAT_SNOWBALL;
}

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader {
  if (stopWordFiles_ != nil) {
    if ([((NSString *) nil_chk(OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory_FORMAT_WORDSET)) equalsIgnoreCase:format_]) {
      JreStrongAssign(&stopWords_, [self getWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:loader withNSString:stopWordFiles_ withBoolean:ignoreCase_]);
    }
    else if ([((NSString *) nil_chk(OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory_FORMAT_SNOWBALL)) equalsIgnoreCase:format_]) {
      JreStrongAssign(&stopWords_, [self getSnowballWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:loader withNSString:stopWordFiles_ withBoolean:ignoreCase_]);
    }
    else {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", @"Unknown 'format' specified for 'words' file: ", format_));
    }
  }
  else {
    if (nil != format_) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", @"'format' can not be specified w/o an explicit 'words' file: ", format_));
    }
    JreStrongAssignAndConsume(&stopWords_, new_OrgApacheLuceneAnalysisUtilCharArraySet_initWithJavaUtilCollection_withBoolean_(JreLoadStatic(OrgApacheLuceneAnalysisCoreStopAnalyzer, ENGLISH_STOP_WORDS_SET), ignoreCase_));
  }
}

- (jboolean)isIgnoreCase {
  return ignoreCase_;
}

- (OrgApacheLuceneAnalysisUtilCharArraySet *)getStopWords {
  return stopWords_;
}

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter *suggestStopFilter = create_OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(input, stopWords_);
  return suggestStopFilter;
}

- (void)dealloc {
  RELEASE_(stopWords_);
  RELEASE_(stopWordFiles_);
  RELEASE_(format_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "SuggestStopFilterFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "informWithOrgApacheLuceneAnalysisUtilResourceLoader:", "inform", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "isIgnoreCase", NULL, "Z", 0x1, NULL, NULL },
    { "getStopWords", NULL, "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x1, NULL, NULL },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.TokenStream;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "FORMAT_WORDSET", "FORMAT_WORDSET", 0x19, "Ljava.lang.String;", &OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory_FORMAT_WORDSET, NULL, .constantValue.asLong = 0 },
    { "FORMAT_SNOWBALL", "FORMAT_SNOWBALL", 0x19, "Ljava.lang.String;", &OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory_FORMAT_SNOWBALL, NULL, .constantValue.asLong = 0 },
    { "stopWords_", NULL, 0x2, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
    { "stopWordFiles_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "format_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "ignoreCase_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory = { 2, "SuggestStopFilterFactory", "org.apache.lucene.search.suggest.analyzing", NULL, 0x1, 5, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory;
}

@end

void OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  JreStrongAssign(&self->stopWordFiles_, [self getWithJavaUtilMap:args withNSString:@"words"]);
  JreStrongAssign(&self->format_, [self getWithJavaUtilMap:args withNSString:@"format" withNSString:(nil == self->stopWordFiles_ ? nil : OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory_FORMAT_WORDSET)]);
  self->ignoreCase_ = [self getBooleanWithJavaUtilMap:args withNSString:@"ignoreCase" withBoolean:false];
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory *new_OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory *create_OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilterFactory)
