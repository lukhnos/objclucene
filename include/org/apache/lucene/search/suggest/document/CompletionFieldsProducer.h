//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/CompletionFieldsProducer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer

#if !defined (OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer))
#define OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer_

#define RESTRICT_OrgApacheLuceneCodecsFieldsProducer 1
#define INCLUDE_OrgApacheLuceneCodecsFieldsProducer 1
#include "org/apache/lucene/codecs/FieldsProducer.h"

@class OrgApacheLuceneIndexSegmentReadState;
@class OrgApacheLuceneIndexTerms;
@protocol JavaUtilCollection;
@protocol JavaUtilIterator;

/*!
 @brief <p>
 Completion index (.cmp) is opened and read at instantiation to read in <code>SuggestField</code>
 numbers and their FST offsets in the Completion dictionary (.lkp).
 </p>
 <p>
 Completion dictionary (.lkp) is opened at instantiation and a field's FST is loaded
 into memory the first time it is requested via <code>terms(String)</code>.
 </p>
 <p>
 NOTE: Only the footer is validated for Completion dictionary (.lkp) and not the checksum due
 to random access pattern and checksum validation being too costly at instantiation
 </p>
 */
@interface OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer : OrgApacheLuceneCodecsFieldsProducer

#pragma mark Public

- (void)checkIntegrity;

- (void)close;

- (id<JavaUtilCollection>)getChildResources;

- (OrgApacheLuceneCodecsFieldsProducer *)getMergeInstance;

- (id<JavaUtilIterator>)iterator;

- (jlong)ramBytesUsed;

- (jint)size;

- (OrgApacheLuceneIndexTerms *)termsWithNSString:(NSString *)field;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer_initWithOrgApacheLuceneIndexSegmentReadState_(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer *self, OrgApacheLuceneIndexSegmentReadState *state);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer *new_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer_initWithOrgApacheLuceneIndexSegmentReadState_(OrgApacheLuceneIndexSegmentReadState *state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer *create_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer_initWithOrgApacheLuceneIndexSegmentReadState_(OrgApacheLuceneIndexSegmentReadState *state);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer")
