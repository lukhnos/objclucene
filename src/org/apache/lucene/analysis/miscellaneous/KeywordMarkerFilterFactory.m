//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/KeywordMarkerFilterFactory.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "java/util/regex/Pattern.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/KeywordMarkerFilterFactory.h"
#include "org/apache/lucene/analysis/miscellaneous/PatternKeywordMarkerFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/SetKeywordMarkerFilter.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/ResourceLoader.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@interface OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory () {
 @public
  NSString *wordFiles_;
  NSString *stringPattern_;
  jboolean ignoreCase_;
  JavaUtilRegexPattern *pattern_;
  OrgApacheLuceneAnalysisUtilCharArraySet *protectedWords_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory, wordFiles_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory, stringPattern_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory, pattern_, JavaUtilRegexPattern *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory, protectedWords_, OrgApacheLuceneAnalysisUtilCharArraySet *)

NSString *OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_PROTECTED_TOKENS = @"protected";
NSString *OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_PATTERN = @"pattern";

@implementation OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory

+ (NSString *)PROTECTED_TOKENS {
  return OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_PROTECTED_TOKENS;
}

+ (NSString *)PATTERN {
  return OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_PATTERN;
}

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader {
  if (wordFiles_ != nil) {
    JreStrongAssign(&protectedWords_, [self getWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:loader withNSString:wordFiles_ withBoolean:ignoreCase_]);
  }
  if (stringPattern_ != nil) {
    JreStrongAssign(&pattern_, ignoreCase_ ? JavaUtilRegexPattern_compileWithNSString_withInt_(stringPattern_, JavaUtilRegexPattern_CASE_INSENSITIVE | JavaUtilRegexPattern_UNICODE_CASE) : JavaUtilRegexPattern_compileWithNSString_(stringPattern_));
  }
}

- (jboolean)isIgnoreCase {
  return ignoreCase_;
}

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  if (pattern_ != nil) {
    input = create_OrgApacheLuceneAnalysisMiscellaneousPatternKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaUtilRegexPattern_(input, pattern_);
  }
  if (protectedWords_ != nil) {
    input = create_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(input, protectedWords_);
  }
  return input;
}

- (void)dealloc {
  RELEASE_(wordFiles_);
  RELEASE_(stringPattern_);
  RELEASE_(pattern_);
  RELEASE_(protectedWords_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "KeywordMarkerFilterFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "informWithOrgApacheLuceneAnalysisUtilResourceLoader:", "inform", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "isIgnoreCase", NULL, "Z", 0x1, NULL, NULL },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.TokenStream;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "PROTECTED_TOKENS", "PROTECTED_TOKENS", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_PROTECTED_TOKENS, NULL, .constantValue.asLong = 0 },
    { "PATTERN", "PATTERN", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_PATTERN, NULL, .constantValue.asLong = 0 },
    { "wordFiles_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "stringPattern_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "ignoreCase_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "pattern_", NULL, 0x2, "Ljava.util.regex.Pattern;", NULL, NULL, .constantValue.asLong = 0 },
    { "protectedWords_", NULL, 0x2, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory = { 2, "KeywordMarkerFilterFactory", "org.apache.lucene.analysis.miscellaneous", NULL, 0x1, 4, methods, 7, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  JreStrongAssign(&self->wordFiles_, [self getWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_PROTECTED_TOKENS]);
  JreStrongAssign(&self->stringPattern_, [self getWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_PATTERN]);
  self->ignoreCase_ = [self getBooleanWithJavaUtilMap:args withNSString:@"ignoreCase" withBoolean:false];
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory *create_OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilterFactory)
