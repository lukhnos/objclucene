//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SingletonSortedNumericDocValues.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexSingletonSortedNumericDocValues")
#ifdef RESTRICT_OrgApacheLuceneIndexSingletonSortedNumericDocValues
#define INCLUDE_ALL_OrgApacheLuceneIndexSingletonSortedNumericDocValues 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexSingletonSortedNumericDocValues 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexSingletonSortedNumericDocValues

#if !defined (OrgApacheLuceneIndexSingletonSortedNumericDocValues_) && (INCLUDE_ALL_OrgApacheLuceneIndexSingletonSortedNumericDocValues || defined(INCLUDE_OrgApacheLuceneIndexSingletonSortedNumericDocValues))
#define OrgApacheLuceneIndexSingletonSortedNumericDocValues_

#define RESTRICT_OrgApacheLuceneIndexSortedNumericDocValues 1
#define INCLUDE_OrgApacheLuceneIndexSortedNumericDocValues 1
#include "org/apache/lucene/index/SortedNumericDocValues.h"

@class OrgApacheLuceneIndexNumericDocValues;
@protocol OrgApacheLuceneUtilBits;

/*!
 @brief Exposes multi-valued view over a single-valued instance.
 <p>
 This can be used if you want to have one multi-valued implementation
 that works for single or multi-valued types.
 */
@interface OrgApacheLuceneIndexSingletonSortedNumericDocValues : OrgApacheLuceneIndexSortedNumericDocValues

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexNumericDocValues:(OrgApacheLuceneIndexNumericDocValues *)inArg
                                 withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)docsWithField;

- (jint)count;

/*!
 @brief Return the wrapped <code>Bits</code>
 */
- (id<OrgApacheLuceneUtilBits>)getDocsWithField;

/*!
 @brief Return the wrapped <code>NumericDocValues</code>
 */
- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValues;

- (void)setDocumentWithInt:(jint)doc;

- (jlong)valueAtWithInt:(jint)index;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSingletonSortedNumericDocValues)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSingletonSortedNumericDocValues_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(OrgApacheLuceneIndexSingletonSortedNumericDocValues *self, OrgApacheLuceneIndexNumericDocValues *inArg, id<OrgApacheLuceneUtilBits> docsWithField);

FOUNDATION_EXPORT OrgApacheLuceneIndexSingletonSortedNumericDocValues *new_OrgApacheLuceneIndexSingletonSortedNumericDocValues_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(OrgApacheLuceneIndexNumericDocValues *inArg, id<OrgApacheLuceneUtilBits> docsWithField) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexSingletonSortedNumericDocValues *create_OrgApacheLuceneIndexSingletonSortedNumericDocValues_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(OrgApacheLuceneIndexNumericDocValues *inArg, id<OrgApacheLuceneUtilBits> docsWithField);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSingletonSortedNumericDocValues)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexSingletonSortedNumericDocValues")
