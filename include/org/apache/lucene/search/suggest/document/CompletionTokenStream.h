//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/CompletionTokenStream.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream
#ifdef INCLUDE_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttributeImpl
#define INCLUDE_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttribute 1
#endif

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream))
#define OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_

#define RESTRICT_OrgApacheLuceneAnalysisTokenStream 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenStream 1
#include "org/apache/lucene/analysis/TokenStream.h"

@class OrgApacheLuceneUtilAttributeFactory;
@class OrgApacheLuceneUtilAttributeSource;
@class OrgApacheLuceneUtilAutomatonAutomaton;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Token stream which converts a provided token stream to an automaton.
 The accepted strings enumeration from the automaton are available through the 
 <code>org.apache.lucene.analysis.tokenattributes.TermToBytesRefAttribute</code> attribute
  The token stream uses a <code>org.apache.lucene.analysis.tokenattributes.PayloadAttribute</code> to store
  a completion's payload (see <code>CompletionTokenStream.setPayload(org.apache.lucene.util.BytesRef)</code>)
 */
@interface OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream : OrgApacheLuceneAnalysisTokenStream {
 @public
  jboolean preserveSep_;
  jboolean preservePositionIncrements_;
  jint maxGraphExpansions_;
}

#pragma mark Public

- (void)close;

- (void)end;

- (jboolean)incrementToken;

- (void)reset;

/*!
 @brief Sets a payload available throughout successive token stream enumeration
 */
- (void)setPayloadWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)payload;

/*!
 @brief Converts the token stream to an automaton,
  treating the transition labels as utf-8
 */
- (OrgApacheLuceneUtilAutomatonAutomaton *)toAutomaton;

/*!
 @brief Converts the tokenStream to an automaton
 */
- (OrgApacheLuceneUtilAutomatonAutomaton *)toAutomatonWithBoolean:(jboolean)unicodeAware;

#pragma mark Package-Private

/*!
 @brief Creates a token stream to convert <code>input</code> to a token stream
  of accepted strings by its automaton.
 <p>
  The token stream <code>input</code> is converted to an automaton
  with the default settings of <code>org.apache.lucene.search.suggest.document.CompletionAnalyzer</code>
 */
- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (instancetype __nonnull)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                                         withBoolean:(jboolean)preserveSep
                                                         withBoolean:(jboolean)preservePositionIncrements
                                                             withInt:(jint)maxGraphExpansions;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream *new_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream *create_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withBoolean_withInt_(OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream *self, OrgApacheLuceneAnalysisTokenStream *input, jboolean preserveSep, jboolean preservePositionIncrements, jint maxGraphExpansions);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream *new_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withBoolean_withInt_(OrgApacheLuceneAnalysisTokenStream *input, jboolean preserveSep, jboolean preservePositionIncrements, jint maxGraphExpansions) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream *create_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withBoolean_withInt_(OrgApacheLuceneAnalysisTokenStream *input, jboolean preserveSep, jboolean preservePositionIncrements, jint maxGraphExpansions);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream)

#endif

#if !defined (OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttribute_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttribute))
#define OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttribute_

#define RESTRICT_OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute 1
#include "org/apache/lucene/analysis/tokenattributes/TermToBytesRefAttribute.h"

@class OrgApacheLuceneUtilBytesRefBuilder;
@protocol JavaLangCharSequence;

/*!
 @brief Attribute providing access to the term builder and UTF-16 conversion
 */
@protocol OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttribute < OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute, JavaObject >

/*!
 @brief Returns the builder from which the term is derived.
 */
- (OrgApacheLuceneUtilBytesRefBuilder *)builder;

/*!
 @brief Returns the term represented as UTF-16
 */
- (id<JavaLangCharSequence>)toUTF16;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttribute)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttribute)

#endif

#if !defined (OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttributeImpl_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttributeImpl))
#define OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttributeImpl_

#define RESTRICT_OrgApacheLuceneUtilAttributeImpl 1
#define INCLUDE_OrgApacheLuceneUtilAttributeImpl 1
#include "org/apache/lucene/util/AttributeImpl.h"

#define RESTRICT_OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute 1
#include "org/apache/lucene/analysis/tokenattributes/TermToBytesRefAttribute.h"

@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilBytesRefBuilder;
@protocol JavaLangCharSequence;
@protocol OrgApacheLuceneUtilAttributeReflector;

/*!
 @brief Custom attribute implementation for completion token stream
 */
@interface OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttributeImpl : OrgApacheLuceneUtilAttributeImpl < OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttribute, OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute >

#pragma mark Public

/*!
 @brief Sole constructor
  no-op
 */
- (instancetype __nonnull)init;

- (OrgApacheLuceneUtilBytesRefBuilder *)builder;

- (void)clear;

- (OrgApacheLuceneUtilAttributeImpl *)java_clone;

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneUtilBytesRef *)getBytesRef;

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector;

- (id<JavaLangCharSequence>)toUTF16;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttributeImpl)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttributeImpl_init(OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttributeImpl *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttributeImpl *new_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttributeImpl_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttributeImpl *create_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttributeImpl_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_BytesRefBuilderTermAttributeImpl)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream")
