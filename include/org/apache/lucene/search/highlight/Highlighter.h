//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/Highlighter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchHighlightHighlighter_INCLUDE_ALL")
#if OrgApacheLuceneSearchHighlightHighlighter_RESTRICT
#define OrgApacheLuceneSearchHighlightHighlighter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchHighlightHighlighter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchHighlightHighlighter_RESTRICT

#if !defined (_OrgApacheLuceneSearchHighlightHighlighter_) && (OrgApacheLuceneSearchHighlightHighlighter_INCLUDE_ALL || OrgApacheLuceneSearchHighlightHighlighter_INCLUDE)
#define _OrgApacheLuceneSearchHighlightHighlighter_

@class IOSObjectArray;
@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol OrgApacheLuceneSearchHighlightEncoder;
@protocol OrgApacheLuceneSearchHighlightFormatter;
@protocol OrgApacheLuceneSearchHighlightFragmenter;
@protocol OrgApacheLuceneSearchHighlightScorer;

#define OrgApacheLuceneSearchHighlightHighlighter_DEFAULT_MAX_CHARS_TO_ANALYZE 51200

@interface OrgApacheLuceneSearchHighlightHighlighter : NSObject

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchHighlightFormatter:(id<OrgApacheLuceneSearchHighlightFormatter>)formatter
                      withOrgApacheLuceneSearchHighlightEncoder:(id<OrgApacheLuceneSearchHighlightEncoder>)encoder
                       withOrgApacheLuceneSearchHighlightScorer:(id<OrgApacheLuceneSearchHighlightScorer>)fragmentScorer;

- (NSString *)getBestFragmentWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                    withNSString:(NSString *)fieldName
                                                    withNSString:(NSString *)text;

- (NSString *)getBestFragmentWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream
                                                       withNSString:(NSString *)text;

- (IOSObjectArray *)getBestFragmentsWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream
                                                              withNSString:(NSString *)text
                                                                   withInt:(jint)maxNumFragments;

- (IOSObjectArray *)getBestTextFragmentsWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream
                                                                  withNSString:(NSString *)text
                                                                   withBoolean:(jboolean)mergeContiguousFragments
                                                                       withInt:(jint)maxNumFragments;

- (void)setTextFragmenterWithOrgApacheLuceneSearchHighlightFragmenter:(id<OrgApacheLuceneSearchHighlightFragmenter>)fragmenter;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchHighlightHighlighter)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchHighlightHighlighter, DEFAULT_MAX_CHARS_TO_ANALYZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightEncoder_withOrgApacheLuceneSearchHighlightScorer_(OrgApacheLuceneSearchHighlightHighlighter *self, id<OrgApacheLuceneSearchHighlightFormatter> formatter, id<OrgApacheLuceneSearchHighlightEncoder> encoder, id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer);

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightHighlighter *new_OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightEncoder_withOrgApacheLuceneSearchHighlightScorer_(id<OrgApacheLuceneSearchHighlightFormatter> formatter, id<OrgApacheLuceneSearchHighlightEncoder> encoder, id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchHighlightHighlighter)

#endif

#if !defined (_OrgApacheLuceneSearchHighlightFragmentQueue_) && (OrgApacheLuceneSearchHighlightHighlighter_INCLUDE_ALL || OrgApacheLuceneSearchHighlightFragmentQueue_INCLUDE)
#define _OrgApacheLuceneSearchHighlightFragmentQueue_

#define OrgApacheLuceneUtilPriorityQueue_RESTRICT 1
#define OrgApacheLuceneUtilPriorityQueue_INCLUDE 1
#include "org/apache/lucene/util/PriorityQueue.h"

@class OrgApacheLuceneSearchHighlightTextFragment;

@interface OrgApacheLuceneSearchHighlightFragmentQueue : OrgApacheLuceneUtilPriorityQueue

#pragma mark Public

- (instancetype)initWithInt:(jint)size;

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchHighlightTextFragment *)fragA
                    withId:(OrgApacheLuceneSearchHighlightTextFragment *)fragB;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchHighlightFragmentQueue)

FOUNDATION_EXPORT void OrgApacheLuceneSearchHighlightFragmentQueue_initWithInt_(OrgApacheLuceneSearchHighlightFragmentQueue *self, jint size);

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightFragmentQueue *new_OrgApacheLuceneSearchHighlightFragmentQueue_initWithInt_(jint size) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchHighlightFragmentQueue)

#endif

#pragma pop_macro("OrgApacheLuceneSearchHighlightHighlighter_INCLUDE_ALL")
