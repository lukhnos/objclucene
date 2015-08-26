//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/compound/Lucene43CompoundWordTokenFilterBase.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_RESTRICT
#define OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_) && (OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_INCLUDE_ALL || OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_INCLUDE)
#define _OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class JavaUtilLinkedList;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneAnalysisUtilCharArraySet;
@protocol OrgApacheLuceneAnalysisTokenattributesCharTermAttribute;
@protocol OrgApacheLuceneAnalysisTokenattributesOffsetAttribute;

#define OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_DEFAULT_MIN_WORD_SIZE 5
#define OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_DEFAULT_MIN_SUBWORD_SIZE 2
#define OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_DEFAULT_MAX_SUBWORD_SIZE 15

@interface OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase : OrgApacheLuceneAnalysisTokenFilter {
 @public
  OrgApacheLuceneAnalysisUtilCharArraySet *dictionary_;
  JavaUtilLinkedList *tokens_;
  jint minWordSize_;
  jint minSubwordSize_;
  jint maxSubwordSize_;
  jboolean onlyLongestMatch_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAtt_;
}

#pragma mark Public

- (jboolean)incrementToken;

- (void)reset;

#pragma mark Protected

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)dictionary;

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)dictionary
                                               withBoolean:(jboolean)onlyLongestMatch;

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)dictionary
                                                   withInt:(jint)minWordSize
                                                   withInt:(jint)minSubwordSize
                                                   withInt:(jint)maxSubwordSize
                                               withBoolean:(jboolean)onlyLongestMatch;

- (void)decompose;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase, dictionary_, OrgApacheLuceneAnalysisUtilCharArraySet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase, tokens_, JavaUtilLinkedList *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase, offsetAtt_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase, DEFAULT_MIN_WORD_SIZE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase, DEFAULT_MIN_SUBWORD_SIZE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase, DEFAULT_MAX_SUBWORD_SIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withBoolean_(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary, jboolean onlyLongestMatch);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary, jint minWordSize, jint minSubwordSize, jint maxSubwordSize, jboolean onlyLongestMatch);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase)

#endif

#if !defined (_OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken_) && (OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_INCLUDE_ALL || OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken_INCLUDE)
#define _OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken_

@class OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase;
@protocol JavaLangCharSequence;

@interface OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken : NSObject {
 @public
  id<JavaLangCharSequence> txt_;
  jint startOffset_, endOffset_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase:(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase *)outer$
                                                                                   withInt:(jint)offset
                                                                                   withInt:(jint)length;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken, txt_, id<JavaLangCharSequence>)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken_initWithOrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_withInt_withInt_(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken *self, OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase *outer$, jint offset, jint length);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken *new_OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken_initWithOrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_withInt_withInt_(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase *outer$, jint offset, jint length) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_INCLUDE_ALL")
