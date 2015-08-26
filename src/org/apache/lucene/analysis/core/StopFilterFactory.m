//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/StopFilterFactory.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/core/Lucene43StopFilter.h"
#include "org/apache/lucene/analysis/core/StopAnalyzer.h"
#include "org/apache/lucene/analysis/core/StopFilter.h"
#include "org/apache/lucene/analysis/core/StopFilterFactory.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/ResourceLoader.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"
#include "org/apache/lucene/util/Version.h"

@interface OrgApacheLuceneAnalysisCoreStopFilterFactory () {
 @public
  OrgApacheLuceneAnalysisUtilCharArraySet *stopWords_;
  NSString *stopWordFiles_;
  NSString *format_;
  jboolean ignoreCase_;
  jboolean enablePositionIncrements_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCoreStopFilterFactory, stopWords_, OrgApacheLuceneAnalysisUtilCharArraySet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCoreStopFilterFactory, stopWordFiles_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCoreStopFilterFactory, format_, NSString *)

NSString *OrgApacheLuceneAnalysisCoreStopFilterFactory_FORMAT_WORDSET_ = @"wordset";
NSString *OrgApacheLuceneAnalysisCoreStopFilterFactory_FORMAT_SNOWBALL_ = @"snowball";

@implementation OrgApacheLuceneAnalysisCoreStopFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisCoreStopFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader {
  if (stopWordFiles_ != nil) {
    if ([((NSString *) nil_chk(OrgApacheLuceneAnalysisCoreStopFilterFactory_FORMAT_WORDSET_)) equalsIgnoreCase:format_]) {
      JreStrongAssign(&stopWords_, [self getWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:loader withNSString:stopWordFiles_ withBoolean:ignoreCase_]);
    }
    else if ([((NSString *) nil_chk(OrgApacheLuceneAnalysisCoreStopFilterFactory_FORMAT_SNOWBALL_)) equalsIgnoreCase:format_]) {
      JreStrongAssign(&stopWords_, [self getSnowballWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:loader withNSString:stopWordFiles_ withBoolean:ignoreCase_]);
    }
    else {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", @"Unknown 'format' specified for 'words' file: ", format_)) autorelease];
    }
  }
  else {
    if (nil != format_) {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", @"'format' can not be specified w/o an explicit 'words' file: ", format_)) autorelease];
    }
    JreStrongAssignAndConsume(&stopWords_, new_OrgApacheLuceneAnalysisUtilCharArraySet_initWithJavaUtilCollection_withBoolean_(JreLoadStatic(OrgApacheLuceneAnalysisCoreStopAnalyzer, ENGLISH_STOP_WORDS_SET_), ignoreCase_));
  }
}

- (jboolean)isIgnoreCase {
  return ignoreCase_;
}

- (OrgApacheLuceneAnalysisUtilCharArraySet *)getStopWords {
  return stopWords_;
}

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  if ([((OrgApacheLuceneUtilVersion *) nil_chk(luceneMatchVersion_)) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_4_0_)]) {
    return [new_OrgApacheLuceneAnalysisCoreStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(input, stopWords_) autorelease];
  }
  else {
    OrgApacheLuceneAnalysisTokenStream *filter = [new_OrgApacheLuceneAnalysisCoreLucene43StopFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(enablePositionIncrements_, input, stopWords_) autorelease];
    return filter;
  }
}

- (void)dealloc {
  RELEASE_(stopWords_);
  RELEASE_(stopWordFiles_);
  RELEASE_(format_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "StopFilterFactory", NULL, 0x1, NULL, NULL },
    { "informWithOrgApacheLuceneAnalysisUtilResourceLoader:", "inform", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "isIgnoreCase", NULL, "Z", 0x1, NULL, NULL },
    { "getStopWords", NULL, "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x1, NULL, NULL },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.TokenStream;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "FORMAT_WORDSET_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisCoreStopFilterFactory_FORMAT_WORDSET_, NULL, .constantValue.asLong = 0 },
    { "FORMAT_SNOWBALL_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisCoreStopFilterFactory_FORMAT_SNOWBALL_, NULL, .constantValue.asLong = 0 },
    { "stopWords_", NULL, 0x2, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
    { "stopWordFiles_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "format_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "ignoreCase_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "enablePositionIncrements_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCoreStopFilterFactory = { 2, "StopFilterFactory", "org.apache.lucene.analysis.core", NULL, 0x1, 5, methods, 7, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCoreStopFilterFactory;
}

@end

void OrgApacheLuceneAnalysisCoreStopFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCoreStopFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  JreStrongAssign(&self->stopWordFiles_, [self getWithJavaUtilMap:args withNSString:@"words"]);
  JreStrongAssign(&self->format_, [self getWithJavaUtilMap:args withNSString:@"format" withNSString:(nil == self->stopWordFiles_ ? nil : OrgApacheLuceneAnalysisCoreStopFilterFactory_FORMAT_WORDSET_)]);
  self->ignoreCase_ = [self getBooleanWithJavaUtilMap:args withNSString:@"ignoreCase" withBoolean:NO];
  if ([((OrgApacheLuceneUtilVersion *) nil_chk(self->luceneMatchVersion_)) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_5_0_0_)] == NO) {
    jboolean defaultValue = [self->luceneMatchVersion_ onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_4_0_)];
    self->enablePositionIncrements_ = [self getBooleanWithJavaUtilMap:args withNSString:@"enablePositionIncrements" withBoolean:defaultValue];
    if (self->enablePositionIncrements_ == NO && [self->luceneMatchVersion_ onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_4_0_)]) {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"enablePositionIncrements=false is not supported anymore as of Lucene 4.4") autorelease];
    }
  }
  else if ([((id<JavaUtilMap>) nil_chk(args)) containsKeyWithId:@"enablePositionIncrements"]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"enablePositionIncrements is not a valid option as of Lucene 5.0") autorelease];
  }
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args)) autorelease];
  }
}

OrgApacheLuceneAnalysisCoreStopFilterFactory *new_OrgApacheLuceneAnalysisCoreStopFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisCoreStopFilterFactory *self = [OrgApacheLuceneAnalysisCoreStopFilterFactory alloc];
  OrgApacheLuceneAnalysisCoreStopFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCoreStopFilterFactory)
