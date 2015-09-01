//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/standard/StandardAnalyzer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/core/LowerCaseFilter.h"
#include "org/apache/lucene/analysis/core/StopAnalyzer.h"
#include "org/apache/lucene/analysis/core/StopFilter.h"
#include "org/apache/lucene/analysis/standard/StandardAnalyzer.h"
#include "org/apache/lucene/analysis/standard/StandardFilter.h"
#include "org/apache/lucene/analysis/standard/StandardTokenizer.h"
#include "org/apache/lucene/analysis/standard/std40/StandardTokenizer40.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/util/Version.h"

@interface OrgApacheLuceneAnalysisStandardStandardAnalyzer () {
 @public
  jint maxTokenLength_;
}

@end

@interface OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1 : OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents {
 @public
  OrgApacheLuceneAnalysisStandardStandardAnalyzer *this$0_;
  OrgApacheLuceneAnalysisTokenizer *val$src_;
}

- (void)setReaderWithJavaIoReader:(JavaIoReader *)reader;

- (instancetype)initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer:(OrgApacheLuceneAnalysisStandardStandardAnalyzer *)outer$
                                   withOrgApacheLuceneAnalysisTokenizer:(OrgApacheLuceneAnalysisTokenizer *)capture$0
                                   withOrgApacheLuceneAnalysisTokenizer:(OrgApacheLuceneAnalysisTokenizer *)arg$0
                                 withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg$1;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1, this$0_, OrgApacheLuceneAnalysisStandardStandardAnalyzer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1, val$src_, OrgApacheLuceneAnalysisTokenizer *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1_initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1 *self, OrgApacheLuceneAnalysisStandardStandardAnalyzer *outer$, OrgApacheLuceneAnalysisTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *arg$0, OrgApacheLuceneAnalysisTokenStream *arg$1);

__attribute__((unused)) static OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1 *new_OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1_initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardStandardAnalyzer *outer$, OrgApacheLuceneAnalysisTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *arg$0, OrgApacheLuceneAnalysisTokenStream *arg$1) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisStandardStandardAnalyzer)

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisStandardStandardAnalyzer_STOP_WORDS_SET_;

@implementation OrgApacheLuceneAnalysisStandardStandardAnalyzer

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName {
  OrgApacheLuceneAnalysisTokenizer *src;
  if ([((OrgApacheLuceneUtilVersion *) nil_chk([self getVersion])) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_7_0_)]) {
    OrgApacheLuceneAnalysisStandardStandardTokenizer *t = [new_OrgApacheLuceneAnalysisStandardStandardTokenizer_init() autorelease];
    [t setMaxTokenLengthWithInt:maxTokenLength_];
    src = t;
  }
  else {
    OrgApacheLuceneAnalysisStandardStd40StandardTokenizer40 *t = [new_OrgApacheLuceneAnalysisStandardStd40StandardTokenizer40_init() autorelease];
    [t setMaxTokenLengthWithInt:maxTokenLength_];
    src = t;
  }
  OrgApacheLuceneAnalysisTokenStream *tok = [new_OrgApacheLuceneAnalysisStandardStandardFilter_initWithOrgApacheLuceneAnalysisTokenStream_(src) autorelease];
  tok = [new_OrgApacheLuceneAnalysisCoreLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(tok) autorelease];
  tok = [new_OrgApacheLuceneAnalysisCoreStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(tok, stopwords_) autorelease];
  return [new_OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1_initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(self, src, src, tok) autorelease];
}

- (instancetype)init {
  OrgApacheLuceneAnalysisStandardStandardAnalyzer_init(self);
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisStandardStandardAnalyzer class]) {
    JreStrongAssign(&OrgApacheLuceneAnalysisStandardStandardAnalyzer_STOP_WORDS_SET_, JreLoadStatic(OrgApacheLuceneAnalysisCoreStopAnalyzer, ENGLISH_STOP_WORDS_SET_));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisStandardStandardAnalyzer)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createComponentsWithNSString:", "createComponents", "Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", 0x4, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_MAX_TOKEN_LENGTH", "DEFAULT_MAX_TOKEN_LENGTH", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisStandardStandardAnalyzer_DEFAULT_MAX_TOKEN_LENGTH },
    { "maxTokenLength_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "STOP_WORDS_SET_", NULL, 0x19, "Lorg.apache.lucene.analysis.util.CharArraySet;", &OrgApacheLuceneAnalysisStandardStandardAnalyzer_STOP_WORDS_SET_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisStandardStandardAnalyzer = { 2, "StandardAnalyzer", "org.apache.lucene.analysis.standard", NULL, 0x11, 2, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisStandardStandardAnalyzer;
}

@end

void OrgApacheLuceneAnalysisStandardStandardAnalyzer_init(OrgApacheLuceneAnalysisStandardStandardAnalyzer *self) {
  NSObject_init(self);
  self->maxTokenLength_ = OrgApacheLuceneAnalysisStandardStandardAnalyzer_DEFAULT_MAX_TOKEN_LENGTH;
}

OrgApacheLuceneAnalysisStandardStandardAnalyzer *new_OrgApacheLuceneAnalysisStandardStandardAnalyzer_init() {
  OrgApacheLuceneAnalysisStandardStandardAnalyzer *self = [OrgApacheLuceneAnalysisStandardStandardAnalyzer alloc];
  OrgApacheLuceneAnalysisStandardStandardAnalyzer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisStandardStandardAnalyzer)

@implementation OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1

- (void)setReaderWithJavaIoReader:(JavaIoReader *)reader {
  jint m = this$0_->maxTokenLength_;
  if ([val$src_ isKindOfClass:[OrgApacheLuceneAnalysisStandardStandardTokenizer class]]) {
    [((OrgApacheLuceneAnalysisStandardStandardTokenizer *) nil_chk(((OrgApacheLuceneAnalysisStandardStandardTokenizer *) check_class_cast(val$src_, [OrgApacheLuceneAnalysisStandardStandardTokenizer class])))) setMaxTokenLengthWithInt:m];
  }
  else {
    [((OrgApacheLuceneAnalysisStandardStd40StandardTokenizer40 *) nil_chk(((OrgApacheLuceneAnalysisStandardStd40StandardTokenizer40 *) check_class_cast(val$src_, [OrgApacheLuceneAnalysisStandardStd40StandardTokenizer40 class])))) setMaxTokenLengthWithInt:m];
  }
  [super setReaderWithJavaIoReader:reader];
}

- (instancetype)initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer:(OrgApacheLuceneAnalysisStandardStandardAnalyzer *)outer$
                                   withOrgApacheLuceneAnalysisTokenizer:(OrgApacheLuceneAnalysisTokenizer *)capture$0
                                   withOrgApacheLuceneAnalysisTokenizer:(OrgApacheLuceneAnalysisTokenizer *)arg$0
                                 withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg$1 {
  OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1_initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(self, outer$, capture$0, arg$0, arg$1);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$src_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setReaderWithJavaIoReader:", "setReader", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer:withOrgApacheLuceneAnalysisTokenizer:withOrgApacheLuceneAnalysisTokenizer:withOrgApacheLuceneAnalysisTokenStream:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.analysis.standard.StandardAnalyzer;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$src_", NULL, 0x1012, "Lorg.apache.lucene.analysis.Tokenizer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneAnalysisStandardStandardAnalyzer", "createComponentsWithNSString:" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1 = { 2, "", "org.apache.lucene.analysis.standard", "StandardAnalyzer", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1;
}

@end

void OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1_initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1 *self, OrgApacheLuceneAnalysisStandardStandardAnalyzer *outer$, OrgApacheLuceneAnalysisTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *arg$0, OrgApacheLuceneAnalysisTokenStream *arg$1) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$src_, capture$0);
  OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(self, arg$0, arg$1);
}

OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1 *new_OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1_initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardStandardAnalyzer *outer$, OrgApacheLuceneAnalysisTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *arg$0, OrgApacheLuceneAnalysisTokenStream *arg$1) {
  OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1 *self = [OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1 alloc];
  OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1_initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(self, outer$, capture$0, arg$0, arg$1);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisStandardStandardAnalyzer_$1)
