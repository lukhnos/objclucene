//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ngram/Lucene43EdgeNGramTokenizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_RESTRICT
#define OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_) && (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_INCLUDE_ALL || OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_INCLUDE)
#define _OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_

#define OrgApacheLuceneAnalysisTokenizer_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenizer_INCLUDE 1
#include "org/apache/lucene/analysis/Tokenizer.h"

@class OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum;
@class OrgApacheLuceneUtilAttributeFactory;

#define OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_DEFAULT_MAX_GRAM_SIZE 1
#define OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_DEFAULT_MIN_GRAM_SIZE 1

@interface OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer : OrgApacheLuceneAnalysisTokenizer

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory
                                                    withInt:(jint)minGram
                                                    withInt:(jint)maxGram;

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory
withOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum:(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum *)side
                                                    withInt:(jint)minGram
                                                    withInt:(jint)maxGram;

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory
                                               withNSString:(NSString *)sideLabel
                                                    withInt:(jint)minGram
                                                    withInt:(jint)maxGram;

- (instancetype)initWithInt:(jint)minGram
                    withInt:(jint)maxGram;

- (instancetype)initWithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum:(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum *)side
                                                                                withInt:(jint)minGram
                                                                                withInt:(jint)maxGram;

- (instancetype)initWithNSString:(NSString *)sideLabel
                         withInt:(jint)minGram
                         withInt:(jint)maxGram;

- (void)end;

- (jboolean)incrementToken;

- (void)reset;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_DEFAULT_SIDE_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, DEFAULT_SIDE_, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, DEFAULT_MAX_GRAM_SIZE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, DEFAULT_MIN_GRAM_SIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum *side, jint minGram, jint maxGram);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum *side, jint minGram, jint maxGram) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum *side, jint minGram, jint maxGram);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum *side, jint minGram, jint maxGram) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withNSString_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory, NSString *sideLabel, jint minGram, jint maxGram);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withNSString_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, NSString *sideLabel, jint minGram, jint maxGram) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, jint minGram, jint maxGram);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithInt_withInt_(jint minGram, jint maxGram) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithNSString_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, NSString *sideLabel, jint minGram, jint maxGram);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithNSString_withInt_withInt_(NSString *sideLabel, jint minGram, jint maxGram) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer)

#endif

#if !defined (_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum_) && (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_INCLUDE_ALL || OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum_INCLUDE)
#define _OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum_

#define JavaLangEnum_RESTRICT 1
#define JavaLangEnum_INCLUDE 1
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side) {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_FRONT = 0,
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_BACK = 1,
};

@interface OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum : JavaLangEnum < NSCopying >

#pragma mark Public

- (NSString *)getLabel;

+ (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum *)getSideWithNSString:(NSString *)sideName;

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum_values();

+ (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum_values_[];

#define OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum_FRONT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum_values_[OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_FRONT]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum, FRONT)

#define OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum_BACK OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum_values_[OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_BACK]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum, BACK)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum_getSideWithNSString_(NSString *sideName);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_SideEnum)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_INCLUDE_ALL")
