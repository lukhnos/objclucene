//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/de/GermanAnalyzer.java
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
#include "org/apache/lucene/analysis/de/GermanAnalyzer.h"
#include "org/apache/lucene/analysis/de/GermanLightStemFilter.h"
#include "org/apache/lucene/analysis/de/GermanNormalizationFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/SetKeywordMarkerFilter.h"
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

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/de/GermanAnalyzer must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisDeGermanAnalyzer () {
 @public
  /*!
   @brief Contains words that should be indexed but not stemmed.
   */
  OrgApacheLuceneAnalysisUtilCharArraySet *exclusionSet_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisDeGermanAnalyzer, exclusionSet_, OrgApacheLuceneAnalysisUtilCharArraySet *)

@interface OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder : NSObject

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder)

inline OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder_get_DEFAULT_SET(void);
static OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder_DEFAULT_SET;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder, DEFAULT_SET, OrgApacheLuceneAnalysisUtilCharArraySet *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder *create_OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder)

NSString *OrgApacheLuceneAnalysisDeGermanAnalyzer_DEFAULT_STOPWORD_FILE = @"german_stop.txt";

@implementation OrgApacheLuceneAnalysisDeGermanAnalyzer

+ (NSString *)DEFAULT_STOPWORD_FILE {
  return OrgApacheLuceneAnalysisDeGermanAnalyzer_DEFAULT_STOPWORD_FILE;
}

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet {
  return OrgApacheLuceneAnalysisDeGermanAnalyzer_getDefaultStopSet();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisDeGermanAnalyzer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords {
  OrgApacheLuceneAnalysisDeGermanAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords
                    withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stemExclusionSet {
  OrgApacheLuceneAnalysisDeGermanAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, stemExclusionSet);
  return self;
}

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName {
  OrgApacheLuceneAnalysisTokenizer *source;
  if ([((OrgApacheLuceneUtilVersion *) nil_chk([self getVersion])) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_7_0)]) {
    source = create_OrgApacheLuceneAnalysisStandardStandardTokenizer_init();
  }
  else {
    source = create_OrgApacheLuceneAnalysisStandardStd40StandardTokenizer40_init();
  }
  OrgApacheLuceneAnalysisTokenStream *result = create_OrgApacheLuceneAnalysisStandardStandardFilter_initWithOrgApacheLuceneAnalysisTokenStream_(source);
  result = create_OrgApacheLuceneAnalysisCoreLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result);
  result = create_OrgApacheLuceneAnalysisCoreStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, stopwords_);
  result = create_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, exclusionSet_);
  result = create_OrgApacheLuceneAnalysisDeGermanNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result);
  result = create_OrgApacheLuceneAnalysisDeGermanLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result);
  return create_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(source, result);
}

- (void)dealloc {
  RELEASE_(exclusionSet_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgApacheLuceneAnalysisUtilCharArraySet;", 0x19, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;", 0x4, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getDefaultStopSet);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(initWithOrgApacheLuceneAnalysisUtilCharArraySet:);
  methods[3].selector = @selector(initWithOrgApacheLuceneAnalysisUtilCharArraySet:withOrgApacheLuceneAnalysisUtilCharArraySet:);
  methods[4].selector = @selector(createComponentsWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STOPWORD_FILE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 4, -1, -1 },
    { "exclusionSet_", "LOrgApacheLuceneAnalysisUtilCharArraySet;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisUtilCharArraySet;", "LOrgApacheLuceneAnalysisUtilCharArraySet;LOrgApacheLuceneAnalysisUtilCharArraySet;", "createComponents", "LNSString;", &OrgApacheLuceneAnalysisDeGermanAnalyzer_DEFAULT_STOPWORD_FILE, "LOrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisDeGermanAnalyzer = { "GermanAnalyzer", "org.apache.lucene.analysis.de", ptrTable, methods, fields, 7, 0x11, 5, 2, -1, 5, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisDeGermanAnalyzer;
}

@end

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisDeGermanAnalyzer_getDefaultStopSet() {
  OrgApacheLuceneAnalysisDeGermanAnalyzer_initialize();
  return JreLoadStatic(OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder, DEFAULT_SET);
}

void OrgApacheLuceneAnalysisDeGermanAnalyzer_init(OrgApacheLuceneAnalysisDeGermanAnalyzer *self) {
  OrgApacheLuceneAnalysisDeGermanAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, JreLoadStatic(OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder, DEFAULT_SET));
}

OrgApacheLuceneAnalysisDeGermanAnalyzer *new_OrgApacheLuceneAnalysisDeGermanAnalyzer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisDeGermanAnalyzer, init)
}

OrgApacheLuceneAnalysisDeGermanAnalyzer *create_OrgApacheLuceneAnalysisDeGermanAnalyzer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisDeGermanAnalyzer, init)
}

void OrgApacheLuceneAnalysisDeGermanAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisDeGermanAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  OrgApacheLuceneAnalysisDeGermanAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, JreLoadStatic(OrgApacheLuceneAnalysisUtilCharArraySet, EMPTY_SET));
}

OrgApacheLuceneAnalysisDeGermanAnalyzer *new_OrgApacheLuceneAnalysisDeGermanAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisDeGermanAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords)
}

OrgApacheLuceneAnalysisDeGermanAnalyzer *create_OrgApacheLuceneAnalysisDeGermanAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisDeGermanAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords)
}

void OrgApacheLuceneAnalysisDeGermanAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisDeGermanAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  JreStrongAssign(&self->exclusionSet_, OrgApacheLuceneAnalysisUtilCharArraySet_unmodifiableSetWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet_copy__WithJavaUtilSet_(stemExclusionSet)));
}

OrgApacheLuceneAnalysisDeGermanAnalyzer *new_OrgApacheLuceneAnalysisDeGermanAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisDeGermanAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords, stemExclusionSet)
}

OrgApacheLuceneAnalysisDeGermanAnalyzer *create_OrgApacheLuceneAnalysisDeGermanAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisDeGermanAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords, stemExclusionSet)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisDeGermanAnalyzer)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder)

@implementation OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_SET", "LOrgApacheLuceneAnalysisUtilCharArraySet;", .constantValue.asLong = 0, 0x1a, -1, 0, -1, -1 },
  };
  static const void *ptrTable[] = { &OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder_DEFAULT_SET, "LOrgApacheLuceneAnalysisDeGermanAnalyzer;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder = { "DefaultSetHolder", "org.apache.lucene.analysis.de", ptrTable, methods, fields, 7, 0xa, 1, 1, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder class]) {
    {
      @try {
        JreStrongAssign(&OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder_DEFAULT_SET, OrgApacheLuceneAnalysisUtilWordlistLoader_getSnowballWordSetWithJavaIoReader_(OrgApacheLuceneUtilIOUtils_getDecodingReaderWithIOSClass_withNSString_withJavaNioCharsetCharset_(OrgApacheLuceneAnalysisSnowballSnowballFilter_class_(), OrgApacheLuceneAnalysisDeGermanAnalyzer_DEFAULT_STOPWORD_FILE, JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8))));
      }
      @catch (JavaIoIOException *ex) {
        @throw create_JavaLangRuntimeException_initWithNSString_(@"Unable to load default stopword set");
      }
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder)
  }
}

@end

void OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder, init)
}

OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder *create_OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisDeGermanAnalyzer_DefaultSetHolder)
