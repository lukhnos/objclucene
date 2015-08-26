//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocValues.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexDocValues_INCLUDE_ALL")
#if OrgApacheLuceneIndexDocValues_RESTRICT
#define OrgApacheLuceneIndexDocValues_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexDocValues_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexDocValues_RESTRICT

#if !defined (_OrgApacheLuceneIndexDocValues_) && (OrgApacheLuceneIndexDocValues_INCLUDE_ALL || OrgApacheLuceneIndexDocValues_INCLUDE)
#define _OrgApacheLuceneIndexDocValues_

@class OrgApacheLuceneIndexBinaryDocValues;
@class OrgApacheLuceneIndexLeafReader;
@class OrgApacheLuceneIndexNumericDocValues;
@class OrgApacheLuceneIndexRandomAccessOrds;
@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneIndexSortedNumericDocValues;
@class OrgApacheLuceneIndexSortedSetDocValues;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneIndexDocValues : NSObject

#pragma mark Public

+ (id<OrgApacheLuceneUtilBits>)docsWithValueWithOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)dv
                                                                            withInt:(jint)maxDoc;

+ (id<OrgApacheLuceneUtilBits>)docsWithValueWithOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)dv
                                                                                   withInt:(jint)maxDoc;

+ (id<OrgApacheLuceneUtilBits>)docsWithValueWithOrgApacheLuceneIndexSortedSetDocValues:(OrgApacheLuceneIndexSortedSetDocValues *)dv
                                                                               withInt:(jint)maxDoc;

+ (OrgApacheLuceneIndexBinaryDocValues *)emptyBinary;

+ (OrgApacheLuceneIndexNumericDocValues *)emptyNumeric;

+ (OrgApacheLuceneIndexSortedDocValues *)emptySorted;

+ (OrgApacheLuceneIndexSortedNumericDocValues *)emptySortedNumericWithInt:(jint)maxDoc;

+ (OrgApacheLuceneIndexRandomAccessOrds *)emptySortedSet;

+ (OrgApacheLuceneIndexBinaryDocValues *)getBinaryWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                                        withNSString:(NSString *)field;

+ (id<OrgApacheLuceneUtilBits>)getDocsWithFieldWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                                     withNSString:(NSString *)field;

+ (OrgApacheLuceneIndexNumericDocValues *)getNumericWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                                          withNSString:(NSString *)field;

+ (OrgApacheLuceneIndexSortedDocValues *)getSortedWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                                        withNSString:(NSString *)field;

+ (OrgApacheLuceneIndexSortedNumericDocValues *)getSortedNumericWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                                                      withNSString:(NSString *)field;

+ (OrgApacheLuceneIndexSortedSetDocValues *)getSortedSetWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                                              withNSString:(NSString *)field;

+ (OrgApacheLuceneIndexSortedNumericDocValues *)singletonWithOrgApacheLuceneIndexNumericDocValues:(OrgApacheLuceneIndexNumericDocValues *)dv
                                                                      withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)docsWithField;

+ (OrgApacheLuceneIndexRandomAccessOrds *)singletonWithOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)dv;

+ (OrgApacheLuceneIndexNumericDocValues *)unwrapSingletonWithOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)dv;

+ (OrgApacheLuceneIndexSortedDocValues *)unwrapSingletonWithOrgApacheLuceneIndexSortedSetDocValues:(OrgApacheLuceneIndexSortedSetDocValues *)dv;

+ (id<OrgApacheLuceneUtilBits>)unwrapSingletonBitsWithOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)dv;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDocValues)

FOUNDATION_EXPORT OrgApacheLuceneIndexBinaryDocValues *OrgApacheLuceneIndexDocValues_emptyBinary();

FOUNDATION_EXPORT OrgApacheLuceneIndexNumericDocValues *OrgApacheLuceneIndexDocValues_emptyNumeric();

FOUNDATION_EXPORT OrgApacheLuceneIndexSortedDocValues *OrgApacheLuceneIndexDocValues_emptySorted();

FOUNDATION_EXPORT OrgApacheLuceneIndexSortedNumericDocValues *OrgApacheLuceneIndexDocValues_emptySortedNumericWithInt_(jint maxDoc);

FOUNDATION_EXPORT OrgApacheLuceneIndexRandomAccessOrds *OrgApacheLuceneIndexDocValues_emptySortedSet();

FOUNDATION_EXPORT OrgApacheLuceneIndexRandomAccessOrds *OrgApacheLuceneIndexDocValues_singletonWithOrgApacheLuceneIndexSortedDocValues_(OrgApacheLuceneIndexSortedDocValues *dv);

FOUNDATION_EXPORT OrgApacheLuceneIndexSortedDocValues *OrgApacheLuceneIndexDocValues_unwrapSingletonWithOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneIndexSortedSetDocValues *dv);

FOUNDATION_EXPORT OrgApacheLuceneIndexNumericDocValues *OrgApacheLuceneIndexDocValues_unwrapSingletonWithOrgApacheLuceneIndexSortedNumericDocValues_(OrgApacheLuceneIndexSortedNumericDocValues *dv);

FOUNDATION_EXPORT id<OrgApacheLuceneUtilBits> OrgApacheLuceneIndexDocValues_unwrapSingletonBitsWithOrgApacheLuceneIndexSortedNumericDocValues_(OrgApacheLuceneIndexSortedNumericDocValues *dv);

FOUNDATION_EXPORT OrgApacheLuceneIndexSortedNumericDocValues *OrgApacheLuceneIndexDocValues_singletonWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(OrgApacheLuceneIndexNumericDocValues *dv, id<OrgApacheLuceneUtilBits> docsWithField);

FOUNDATION_EXPORT id<OrgApacheLuceneUtilBits> OrgApacheLuceneIndexDocValues_docsWithValueWithOrgApacheLuceneIndexSortedDocValues_withInt_(OrgApacheLuceneIndexSortedDocValues *dv, jint maxDoc);

FOUNDATION_EXPORT id<OrgApacheLuceneUtilBits> OrgApacheLuceneIndexDocValues_docsWithValueWithOrgApacheLuceneIndexSortedSetDocValues_withInt_(OrgApacheLuceneIndexSortedSetDocValues *dv, jint maxDoc);

FOUNDATION_EXPORT id<OrgApacheLuceneUtilBits> OrgApacheLuceneIndexDocValues_docsWithValueWithOrgApacheLuceneIndexSortedNumericDocValues_withInt_(OrgApacheLuceneIndexSortedNumericDocValues *dv, jint maxDoc);

FOUNDATION_EXPORT OrgApacheLuceneIndexNumericDocValues *OrgApacheLuceneIndexDocValues_getNumericWithOrgApacheLuceneIndexLeafReader_withNSString_(OrgApacheLuceneIndexLeafReader *reader, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneIndexBinaryDocValues *OrgApacheLuceneIndexDocValues_getBinaryWithOrgApacheLuceneIndexLeafReader_withNSString_(OrgApacheLuceneIndexLeafReader *reader, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneIndexSortedDocValues *OrgApacheLuceneIndexDocValues_getSortedWithOrgApacheLuceneIndexLeafReader_withNSString_(OrgApacheLuceneIndexLeafReader *reader, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneIndexSortedNumericDocValues *OrgApacheLuceneIndexDocValues_getSortedNumericWithOrgApacheLuceneIndexLeafReader_withNSString_(OrgApacheLuceneIndexLeafReader *reader, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneIndexSortedSetDocValues *OrgApacheLuceneIndexDocValues_getSortedSetWithOrgApacheLuceneIndexLeafReader_withNSString_(OrgApacheLuceneIndexLeafReader *reader, NSString *field);

FOUNDATION_EXPORT id<OrgApacheLuceneUtilBits> OrgApacheLuceneIndexDocValues_getDocsWithFieldWithOrgApacheLuceneIndexLeafReader_withNSString_(OrgApacheLuceneIndexLeafReader *reader, NSString *field);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocValues)

#endif

#pragma pop_macro("OrgApacheLuceneIndexDocValues_INCLUDE_ALL")
