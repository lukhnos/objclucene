//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/pt/PortugueseAnalyzer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/lang/RuntimeException.h"
#include "java/nio/charset/Charset.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/core/LowerCaseFilter.h"
#include "org/apache/lucene/analysis/core/StopFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/SetKeywordMarkerFilter.h"
#include "org/apache/lucene/analysis/pt/PortugueseAnalyzer.h"
#include "org/apache/lucene/analysis/pt/PortugueseLightStemFilter.h"
#include "org/apache/lucene/analysis/snowball/SnowballFilter.h"
#include "org/apache/lucene/analysis/standard/StandardFilter.h"
#include "org/apache/lucene/analysis/standard/StandardTokenizer.h"
#include "org/apache/lucene/analysis/standard/std40/StandardTokenizer40.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"
#include "org/apache/lucene/analysis/util/WordlistLoader.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/Version.h"
#include "org/lukhnos/portmobile/charset/StandardCharsets.h"

@interface OrgApacheLuceneAnalysisPtPortugueseAnalyzer () {
 @public
  OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPtPortugueseAnalyzer, stemExclusionSet_, OrgApacheLuceneAnalysisUtilCharArraySet *)

@interface OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder : NSObject

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder)

static OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET_, OrgApacheLuceneAnalysisUtilCharArraySet *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder)

NSString *OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DEFAULT_STOPWORD_FILE_ = @"portuguese_stop.txt";

@implementation OrgApacheLuceneAnalysisPtPortugueseAnalyzer

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet {
  return OrgApacheLuceneAnalysisPtPortugueseAnalyzer_getDefaultStopSet();
}

- (instancetype)init {
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer_init(self);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords {
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords
                    withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stemExclusionSet {
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, stemExclusionSet);
  return self;
}

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName {
  OrgApacheLuceneAnalysisTokenizer *source;
  if ([((OrgApacheLuceneUtilVersion *) nil_chk([self getVersion])) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_7_0_)]) {
    source = [new_OrgApacheLuceneAnalysisStandardStandardTokenizer_init() autorelease];
  }
  else {
    source = [new_OrgApacheLuceneAnalysisStandardStd40StandardTokenizer40_init() autorelease];
  }
  OrgApacheLuceneAnalysisTokenStream *result = [new_OrgApacheLuceneAnalysisStandardStandardFilter_initWithOrgApacheLuceneAnalysisTokenStream_(source) autorelease];
  result = [new_OrgApacheLuceneAnalysisCoreLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result) autorelease];
  result = [new_OrgApacheLuceneAnalysisCoreStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, stopwords_) autorelease];
  if (![((OrgApacheLuceneAnalysisUtilCharArraySet *) nil_chk(stemExclusionSet_)) isEmpty]) result = [new_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, stemExclusionSet_) autorelease];
  result = [new_OrgApacheLuceneAnalysisPtPortugueseLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result) autorelease];
  return [new_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(source, result) autorelease];
}

- (void)dealloc {
  RELEASE_(stemExclusionSet_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getDefaultStopSet", NULL, "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x9, NULL, NULL },
    { "init", "PortugueseAnalyzer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisUtilCharArraySet:", "PortugueseAnalyzer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisUtilCharArraySet:withOrgApacheLuceneAnalysisUtilCharArraySet:", "PortugueseAnalyzer", NULL, 0x1, NULL, NULL },
    { "createComponentsWithNSString:", "createComponents", "Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "stemExclusionSet_", NULL, 0x12, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
    { "DEFAULT_STOPWORD_FILE_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DEFAULT_STOPWORD_FILE_, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.analysis.pt.PortugueseAnalyzer$DefaultSetHolder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPtPortugueseAnalyzer = { 2, "PortugueseAnalyzer", "org.apache.lucene.analysis.pt", NULL, 0x11, 5, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneAnalysisPtPortugueseAnalyzer;
}

@end

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisPtPortugueseAnalyzer_getDefaultStopSet() {
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initialize();
  return JreLoadStatic(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET_);
}

void OrgApacheLuceneAnalysisPtPortugueseAnalyzer_init(OrgApacheLuceneAnalysisPtPortugueseAnalyzer *self) {
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, JreLoadStatic(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET_));
}

OrgApacheLuceneAnalysisPtPortugueseAnalyzer *new_OrgApacheLuceneAnalysisPtPortugueseAnalyzer_init() {
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer *self = [OrgApacheLuceneAnalysisPtPortugueseAnalyzer alloc];
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer_init(self);
  return self;
}

void OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisPtPortugueseAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, JreLoadStatic(OrgApacheLuceneAnalysisUtilCharArraySet, EMPTY_SET_));
}

OrgApacheLuceneAnalysisPtPortugueseAnalyzer *new_OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer *self = [OrgApacheLuceneAnalysisPtPortugueseAnalyzer alloc];
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  return self;
}

void OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisPtPortugueseAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  JreStrongAssign(&self->stemExclusionSet_, OrgApacheLuceneAnalysisUtilCharArraySet_unmodifiableSetWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet_copy__WithJavaUtilSet_(stemExclusionSet)));
}

OrgApacheLuceneAnalysisPtPortugueseAnalyzer *new_OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer *self = [OrgApacheLuceneAnalysisPtPortugueseAnalyzer alloc];
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, stemExclusionSet);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPtPortugueseAnalyzer)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder)

@implementation OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder

- (instancetype)init {
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_init(self);
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder class]) {
    {
      @try {
        JreStrongAssign(&OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET_, OrgApacheLuceneAnalysisUtilWordlistLoader_getSnowballWordSetWithJavaIoReader_(OrgApacheLuceneUtilIOUtils_getDecodingReaderWithIOSClass_withNSString_withJavaNioCharsetCharset_(OrgApacheLuceneAnalysisSnowballSnowballFilter_class_(), OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DEFAULT_STOPWORD_FILE_, JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8_))));
      }
      @catch (JavaIoIOException *ex) {
        @throw [new_JavaLangRuntimeException_initWithNSString_(@"Unable to load default stopword set") autorelease];
      }
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STOP_SET_", NULL, 0x18, "Lorg.apache.lucene.analysis.util.CharArraySet;", &OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder = { 2, "DefaultSetHolder", "org.apache.lucene.analysis.pt", "PortugueseAnalyzer", 0xa, 1, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder;
}

@end

void OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_init() {
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder *self = [OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder alloc];
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder)