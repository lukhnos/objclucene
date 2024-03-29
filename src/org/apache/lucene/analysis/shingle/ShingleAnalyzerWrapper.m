//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/shingle/ShingleAnalyzerWrapper.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/AnalyzerWrapper.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/shingle/ShingleAnalyzerWrapper.h"
#include "org/apache/lucene/analysis/shingle/ShingleFilter.h"
#include "org/apache/lucene/analysis/standard/StandardAnalyzer.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/shingle/ShingleAnalyzerWrapper must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper () {
 @public
  OrgApacheLuceneAnalysisAnalyzer *delegate_;
  jint maxShingleSize_;
  jint minShingleSize_;
  NSString *tokenSeparator_;
  jboolean outputUnigrams_;
  jboolean outputUnigramsIfNoShingles_;
  NSString *fillerToken_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper, delegate_, OrgApacheLuceneAnalysisAnalyzer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper, tokenSeparator_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper, fillerToken_, NSString *)

@implementation OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)defaultAnalyzer {
  OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_(self, defaultAnalyzer);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)defaultAnalyzer
                                                withInt:(jint)maxShingleSize {
  OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_(self, defaultAnalyzer, maxShingleSize);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)defaultAnalyzer
                                                withInt:(jint)minShingleSize
                                                withInt:(jint)maxShingleSize {
  OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_(self, defaultAnalyzer, minShingleSize, maxShingleSize);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)delegate
                                                withInt:(jint)minShingleSize
                                                withInt:(jint)maxShingleSize
                                           withNSString:(NSString *)tokenSeparator
                                            withBoolean:(jboolean)outputUnigrams
                                            withBoolean:(jboolean)outputUnigramsIfNoShingles
                                           withNSString:(NSString *)fillerToken {
  OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_withNSString_withBoolean_withBoolean_withNSString_(self, delegate, minShingleSize, maxShingleSize, tokenSeparator, outputUnigrams, outputUnigramsIfNoShingles, fillerToken);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)minShingleSize
                    withInt:(jint)maxShingleSize {
  OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithInt_withInt_(self, minShingleSize, maxShingleSize);
  return self;
}

- (jint)getMaxShingleSize {
  return maxShingleSize_;
}

- (jint)getMinShingleSize {
  return minShingleSize_;
}

- (NSString *)getTokenSeparator {
  return tokenSeparator_;
}

- (jboolean)isOutputUnigrams {
  return outputUnigrams_;
}

- (jboolean)isOutputUnigramsIfNoShingles {
  return outputUnigramsIfNoShingles_;
}

- (NSString *)getFillerToken {
  return fillerToken_;
}

- (OrgApacheLuceneAnalysisAnalyzer *)getWrappedAnalyzerWithNSString:(NSString *)fieldName {
  return delegate_;
}

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)wrapComponentsWithNSString:(NSString *)fieldName
                            withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:(OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)components {
  OrgApacheLuceneAnalysisShingleShingleFilter *filter = create_OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_([((OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *) nil_chk(components)) getTokenStream], minShingleSize_, maxShingleSize_);
  [filter setMinShingleSizeWithInt:minShingleSize_];
  [filter setMaxShingleSizeWithInt:maxShingleSize_];
  [filter setTokenSeparatorWithNSString:tokenSeparator_];
  [filter setOutputUnigramsWithBoolean:outputUnigrams_];
  [filter setOutputUnigramsIfNoShinglesWithBoolean:outputUnigramsIfNoShingles_];
  [filter setFillerTokenWithNSString:fillerToken_];
  return create_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_([components getTokenizer], filter);
}

- (void)dealloc {
  RELEASE_(delegate_);
  RELEASE_(tokenSeparator_);
  RELEASE_(fillerToken_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisAnalyzer;", 0x11, 5, 6, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;", 0x4, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisAnalyzer:);
  methods[1].selector = @selector(initWithOrgApacheLuceneAnalysisAnalyzer:withInt:);
  methods[2].selector = @selector(initWithOrgApacheLuceneAnalysisAnalyzer:withInt:withInt:);
  methods[3].selector = @selector(initWithOrgApacheLuceneAnalysisAnalyzer:withInt:withInt:withNSString:withBoolean:withBoolean:withNSString:);
  methods[4].selector = @selector(init);
  methods[5].selector = @selector(initWithInt:withInt:);
  methods[6].selector = @selector(getMaxShingleSize);
  methods[7].selector = @selector(getMinShingleSize);
  methods[8].selector = @selector(getTokenSeparator);
  methods[9].selector = @selector(isOutputUnigrams);
  methods[10].selector = @selector(isOutputUnigramsIfNoShingles);
  methods[11].selector = @selector(getFillerToken);
  methods[12].selector = @selector(getWrappedAnalyzerWithNSString:);
  methods[13].selector = @selector(wrapComponentsWithNSString:withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "delegate_", "LOrgApacheLuceneAnalysisAnalyzer;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "maxShingleSize_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "minShingleSize_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "tokenSeparator_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "outputUnigrams_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "outputUnigramsIfNoShingles_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "fillerToken_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisAnalyzer;", "LOrgApacheLuceneAnalysisAnalyzer;I", "LOrgApacheLuceneAnalysisAnalyzer;II", "LOrgApacheLuceneAnalysisAnalyzer;IILNSString;ZZLNSString;", "II", "getWrappedAnalyzer", "LNSString;", "wrapComponents", "LNSString;LOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper = { "ShingleAnalyzerWrapper", "org.apache.lucene.analysis.shingle", ptrTable, methods, fields, 7, 0x11, 14, 7, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper;
}

@end

void OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper *self, OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer) {
  OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_(self, defaultAnalyzer, OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_MAX_SHINGLE_SIZE);
}

OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper *new_OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper, initWithOrgApacheLuceneAnalysisAnalyzer_, defaultAnalyzer)
}

OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper *create_OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper, initWithOrgApacheLuceneAnalysisAnalyzer_, defaultAnalyzer)
}

void OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper *self, OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer, jint maxShingleSize) {
  OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_(self, defaultAnalyzer, OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_MIN_SHINGLE_SIZE, maxShingleSize);
}

OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper *new_OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_(OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer, jint maxShingleSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper, initWithOrgApacheLuceneAnalysisAnalyzer_withInt_, defaultAnalyzer, maxShingleSize)
}

OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper *create_OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_(OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer, jint maxShingleSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper, initWithOrgApacheLuceneAnalysisAnalyzer_withInt_, defaultAnalyzer, maxShingleSize)
}

void OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper *self, OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer, jint minShingleSize, jint maxShingleSize) {
  OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_withNSString_withBoolean_withBoolean_withNSString_(self, defaultAnalyzer, minShingleSize, maxShingleSize, OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_TOKEN_SEPARATOR, true, false, OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_FILLER_TOKEN);
}

OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper *new_OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_(OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer, jint minShingleSize, jint maxShingleSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper, initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_, defaultAnalyzer, minShingleSize, maxShingleSize)
}

OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper *create_OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_(OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer, jint minShingleSize, jint maxShingleSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper, initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_, defaultAnalyzer, minShingleSize, maxShingleSize)
}

void OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_withNSString_withBoolean_withBoolean_withNSString_(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper *self, OrgApacheLuceneAnalysisAnalyzer *delegate, jint minShingleSize, jint maxShingleSize, NSString *tokenSeparator, jboolean outputUnigrams, jboolean outputUnigramsIfNoShingles, NSString *fillerToken) {
  OrgApacheLuceneAnalysisAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_(self, [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk(delegate)) getReuseStrategy]);
  JreStrongAssign(&self->delegate_, delegate);
  if (maxShingleSize < 2) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Max shingle size must be >= 2");
  }
  self->maxShingleSize_ = maxShingleSize;
  if (minShingleSize < 2) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Min shingle size must be >= 2");
  }
  if (minShingleSize > maxShingleSize) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Min shingle size must be <= max shingle size");
  }
  self->minShingleSize_ = minShingleSize;
  JreStrongAssign(&self->tokenSeparator_, (tokenSeparator == nil ? @"" : tokenSeparator));
  self->outputUnigrams_ = outputUnigrams;
  self->outputUnigramsIfNoShingles_ = outputUnigramsIfNoShingles;
  JreStrongAssign(&self->fillerToken_, fillerToken);
}

OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper *new_OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_withNSString_withBoolean_withBoolean_withNSString_(OrgApacheLuceneAnalysisAnalyzer *delegate, jint minShingleSize, jint maxShingleSize, NSString *tokenSeparator, jboolean outputUnigrams, jboolean outputUnigramsIfNoShingles, NSString *fillerToken) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper, initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_withNSString_withBoolean_withBoolean_withNSString_, delegate, minShingleSize, maxShingleSize, tokenSeparator, outputUnigrams, outputUnigramsIfNoShingles, fillerToken)
}

OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper *create_OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_withNSString_withBoolean_withBoolean_withNSString_(OrgApacheLuceneAnalysisAnalyzer *delegate, jint minShingleSize, jint maxShingleSize, NSString *tokenSeparator, jboolean outputUnigrams, jboolean outputUnigramsIfNoShingles, NSString *fillerToken) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper, initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_withNSString_withBoolean_withBoolean_withNSString_, delegate, minShingleSize, maxShingleSize, tokenSeparator, outputUnigrams, outputUnigramsIfNoShingles, fillerToken)
}

void OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_init(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper *self) {
  OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithInt_withInt_(self, OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_MIN_SHINGLE_SIZE, OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_MAX_SHINGLE_SIZE);
}

OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper *new_OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper, init)
}

OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper *create_OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper, init)
}

void OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithInt_withInt_(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper *self, jint minShingleSize, jint maxShingleSize) {
  OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_(self, create_OrgApacheLuceneAnalysisStandardStandardAnalyzer_init(), minShingleSize, maxShingleSize);
}

OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper *new_OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithInt_withInt_(jint minShingleSize, jint maxShingleSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper, initWithInt_withInt_, minShingleSize, maxShingleSize)
}

OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper *create_OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper_initWithInt_withInt_(jint minShingleSize, jint maxShingleSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper, initWithInt_withInt_, minShingleSize, maxShingleSize)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisShingleShingleAnalyzerWrapper)
