//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/LeafReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexLeafReader_INCLUDE_ALL")
#if OrgApacheLuceneIndexLeafReader_RESTRICT
#define OrgApacheLuceneIndexLeafReader_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexLeafReader_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexLeafReader_RESTRICT

#if !defined (_OrgApacheLuceneIndexLeafReader_) && (OrgApacheLuceneIndexLeafReader_INCLUDE_ALL || OrgApacheLuceneIndexLeafReader_INCLUDE)
#define _OrgApacheLuceneIndexLeafReader_

#define OrgApacheLuceneIndexIndexReader_RESTRICT 1
#define OrgApacheLuceneIndexIndexReader_INCLUDE 1
#include "org/apache/lucene/index/IndexReader.h"

@class OrgApacheLuceneIndexBinaryDocValues;
@class OrgApacheLuceneIndexDocsAndPositionsEnum;
@class OrgApacheLuceneIndexDocsEnum;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexFields;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneIndexNumericDocValues;
@class OrgApacheLuceneIndexPostingsEnum;
@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneIndexSortedNumericDocValues;
@class OrgApacheLuceneIndexSortedSetDocValues;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneIndexTerms;
@protocol OrgApacheLuceneIndexLeafReader_CoreClosedListener;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneIndexLeafReader : OrgApacheLuceneIndexIndexReader

#pragma mark Public

- (void)addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id<OrgApacheLuceneIndexLeafReader_CoreClosedListener>)listener;

- (void)checkIntegrity;

- (jint)docFreqWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (OrgApacheLuceneIndexFields *)fields;

- (OrgApacheLuceneIndexBinaryDocValues *)getBinaryDocValuesWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexLeafReaderContext *)getContext;

- (jint)getDocCountWithNSString:(NSString *)field;

- (id<OrgApacheLuceneUtilBits>)getDocsWithFieldWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexFieldInfos *)getFieldInfos;

- (id<OrgApacheLuceneUtilBits>)getLiveDocs;

- (OrgApacheLuceneIndexNumericDocValues *)getNormValuesWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValuesWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexSortedDocValues *)getSortedDocValuesWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexSortedNumericDocValues *)getSortedNumericDocValuesWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexSortedSetDocValues *)getSortedSetDocValuesWithNSString:(NSString *)field;

- (jlong)getSumDocFreqWithNSString:(NSString *)field;

- (jlong)getSumTotalTermFreqWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexPostingsEnum *)postingsWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (OrgApacheLuceneIndexPostingsEnum *)postingsWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                                                   withInt:(jint)flags;

- (void)removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id<OrgApacheLuceneIndexLeafReader_CoreClosedListener>)listener;

- (OrgApacheLuceneIndexDocsEnum *)termDocsEnumWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (OrgApacheLuceneIndexDocsAndPositionsEnum *)termPositionsEnumWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (OrgApacheLuceneIndexTerms *)termsWithNSString:(NSString *)field;

- (jlong)totalTermFreqWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

#pragma mark Protected

- (instancetype)init;

+ (void)addCoreClosedListenerAsReaderClosedListenerWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                 withOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id<OrgApacheLuceneIndexLeafReader_CoreClosedListener>)listener;

+ (void)removeCoreClosedListenerAsReaderClosedListenerWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                    withOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id<OrgApacheLuceneIndexLeafReader_CoreClosedListener>)listener;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexLeafReader)

FOUNDATION_EXPORT void OrgApacheLuceneIndexLeafReader_init(OrgApacheLuceneIndexLeafReader *self);

FOUNDATION_EXPORT void OrgApacheLuceneIndexLeafReader_addCoreClosedListenerAsReaderClosedListenerWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexLeafReader_CoreClosedListener_(OrgApacheLuceneIndexIndexReader *reader, id<OrgApacheLuceneIndexLeafReader_CoreClosedListener> listener);

FOUNDATION_EXPORT void OrgApacheLuceneIndexLeafReader_removeCoreClosedListenerAsReaderClosedListenerWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexLeafReader_CoreClosedListener_(OrgApacheLuceneIndexIndexReader *reader, id<OrgApacheLuceneIndexLeafReader_CoreClosedListener> listener);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexLeafReader)

#endif

#if !defined (_OrgApacheLuceneIndexLeafReader_CoreClosedListener_) && (OrgApacheLuceneIndexLeafReader_INCLUDE_ALL || OrgApacheLuceneIndexLeafReader_CoreClosedListener_INCLUDE)
#define _OrgApacheLuceneIndexLeafReader_CoreClosedListener_

@protocol OrgApacheLuceneIndexLeafReader_CoreClosedListener < NSObject, JavaObject >

- (void)onCloseWithId:(id)ownerCoreCacheKey;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexLeafReader_CoreClosedListener)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexLeafReader_CoreClosedListener)

#endif

#pragma pop_macro("OrgApacheLuceneIndexLeafReader_INCLUDE_ALL")