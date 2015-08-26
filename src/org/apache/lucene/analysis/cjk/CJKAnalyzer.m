//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/cjk/CJKAnalyzer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/RuntimeException.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/cjk/CJKAnalyzer.h"
#include "org/apache/lucene/analysis/cjk/CJKBigramFilter.h"
#include "org/apache/lucene/analysis/cjk/CJKWidthFilter.h"
#include "org/apache/lucene/analysis/core/LowerCaseFilter.h"
#include "org/apache/lucene/analysis/core/StopFilter.h"
#include "org/apache/lucene/analysis/standard/StandardTokenizer.h"
#include "org/apache/lucene/analysis/standard/std40/StandardTokenizer40.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"
#include "org/apache/lucene/util/Version.h"

@interface OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder : NSObject

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder)

static OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET_, OrgApacheLuceneAnalysisUtilCharArraySet *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder)

NSString *OrgApacheLuceneAnalysisCjkCJKAnalyzer_DEFAULT_STOPWORD_FILE_ = @"stopwords.txt";

@implementation OrgApacheLuceneAnalysisCjkCJKAnalyzer

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet {
  return OrgApacheLuceneAnalysisCjkCJKAnalyzer_getDefaultStopSet();
}

- (instancetype)init {
  OrgApacheLuceneAnalysisCjkCJKAnalyzer_init(self);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords {
  OrgApacheLuceneAnalysisCjkCJKAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
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
  OrgApacheLuceneAnalysisTokenStream *result = [new_OrgApacheLuceneAnalysisCjkCJKWidthFilter_initWithOrgApacheLuceneAnalysisTokenStream_(source) autorelease];
  result = [new_OrgApacheLuceneAnalysisCoreLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result) autorelease];
  result = [new_OrgApacheLuceneAnalysisCjkCJKBigramFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result) autorelease];
  return [new_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(source, [new_OrgApacheLuceneAnalysisCoreStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, stopwords_) autorelease]) autorelease];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getDefaultStopSet", NULL, "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x9, NULL, NULL },
    { "init", "CJKAnalyzer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisUtilCharArraySet:", "CJKAnalyzer", NULL, 0x1, NULL, NULL },
    { "createComponentsWithNSString:", "createComponents", "Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STOPWORD_FILE_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisCjkCJKAnalyzer_DEFAULT_STOPWORD_FILE_, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.analysis.cjk.CJKAnalyzer$DefaultSetHolder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCjkCJKAnalyzer = { 2, "CJKAnalyzer", "org.apache.lucene.analysis.cjk", NULL, 0x11, 4, methods, 1, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCjkCJKAnalyzer;
}

@end

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisCjkCJKAnalyzer_getDefaultStopSet() {
  OrgApacheLuceneAnalysisCjkCJKAnalyzer_initialize();
  return JreLoadStatic(OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET_);
}

void OrgApacheLuceneAnalysisCjkCJKAnalyzer_init(OrgApacheLuceneAnalysisCjkCJKAnalyzer *self) {
  OrgApacheLuceneAnalysisCjkCJKAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, JreLoadStatic(OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET_));
}

OrgApacheLuceneAnalysisCjkCJKAnalyzer *new_OrgApacheLuceneAnalysisCjkCJKAnalyzer_init() {
  OrgApacheLuceneAnalysisCjkCJKAnalyzer *self = [OrgApacheLuceneAnalysisCjkCJKAnalyzer alloc];
  OrgApacheLuceneAnalysisCjkCJKAnalyzer_init(self);
  return self;
}

void OrgApacheLuceneAnalysisCjkCJKAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisCjkCJKAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
}

OrgApacheLuceneAnalysisCjkCJKAnalyzer *new_OrgApacheLuceneAnalysisCjkCJKAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  OrgApacheLuceneAnalysisCjkCJKAnalyzer *self = [OrgApacheLuceneAnalysisCjkCJKAnalyzer alloc];
  OrgApacheLuceneAnalysisCjkCJKAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCjkCJKAnalyzer)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder)

@implementation OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder

- (instancetype)init {
  OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder_init(self);
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder class]) {
    {
      @try {
        JreStrongAssign(&OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET_, OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_loadStopwordSetWithBoolean_withIOSClass_withNSString_withNSString_(NO, OrgApacheLuceneAnalysisCjkCJKAnalyzer_class_(), OrgApacheLuceneAnalysisCjkCJKAnalyzer_DEFAULT_STOPWORD_FILE_, @"#"));
      }
      @catch (JavaIoIOException *ex) {
        @throw [new_JavaLangRuntimeException_initWithNSString_(@"Unable to load default stopword set") autorelease];
      }
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STOP_SET_", NULL, 0x18, "Lorg.apache.lucene.analysis.util.CharArraySet;", &OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder = { 2, "DefaultSetHolder", "org.apache.lucene.analysis.cjk", "CJKAnalyzer", 0xa, 1, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder;
}

@end

void OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder_init() {
  OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder *self = [OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder alloc];
  OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCjkCJKAnalyzer_DefaultSetHolder)
