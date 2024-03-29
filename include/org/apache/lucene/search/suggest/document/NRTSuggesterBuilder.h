//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/NRTSuggesterBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder))
#define OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_

@class OrgApacheLuceneStoreDataOutput;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Builder for <code>NRTSuggester</code>
 */
@interface OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder : NSObject
@property (readonly, class) jint PAYLOAD_SEP NS_SWIFT_NAME(PAYLOAD_SEP);
@property (readonly, class) jint END_BYTE NS_SWIFT_NAME(END_BYTE);

#pragma mark Public

/*!
 @brief Create a builder for <code>NRTSuggester</code>
 */
- (instancetype __nonnull)initPackagePrivate;

/*!
 @brief Adds an entry for the latest input term, should be called after 
 <code>startTerm(org.apache.lucene.util.BytesRef)</code> on the desired input
 */
- (void)addEntryWithInt:(jint)docID
withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)surfaceForm
               withLong:(jlong)weight;

/*!
 @brief Writes all the entries for the FST input term
 */
- (void)finishTerm;

/*!
 @brief Initializes an FST input term to add entries against
 */
- (void)startTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)analyzed;

/*!
 @brief Builds and stores a FST that can be loaded with 
 <code>NRTSuggester.load(org.apache.lucene.store.IndexInput)</code>
 */
- (jboolean)storeWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)output;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder)

/*!
 @brief Label used to separate surface form and docID
  in the output
 */
inline jint OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_get_PAYLOAD_SEP(void);
#define OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_PAYLOAD_SEP 31
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder, PAYLOAD_SEP, jint)

/*!
 @brief Marks end of the analyzed input and start of dedup
  byte.
 */
inline jint OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_get_END_BYTE(void);
#define OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_END_BYTE 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder, END_BYTE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_initPackagePrivate(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder *new_OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_initPackagePrivate(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder *create_OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_initPackagePrivate(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder")
