//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/PrefixCodedTerms.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexPrefixCodedTerms")
#ifdef RESTRICT_OrgApacheLuceneIndexPrefixCodedTerms
#define INCLUDE_ALL_OrgApacheLuceneIndexPrefixCodedTerms 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexPrefixCodedTerms 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexPrefixCodedTerms

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexPrefixCodedTerms_) && (INCLUDE_ALL_OrgApacheLuceneIndexPrefixCodedTerms || defined(INCLUDE_OrgApacheLuceneIndexPrefixCodedTerms))
#define OrgApacheLuceneIndexPrefixCodedTerms_

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class OrgApacheLuceneIndexPrefixCodedTerms_TermIterator;
@class OrgApacheLuceneStoreRAMFile;
@protocol JavaUtilCollection;

/*!
 @brief Prefix codes term instances (prefixes are shared)
 */
@interface OrgApacheLuceneIndexPrefixCodedTerms : NSObject < OrgApacheLuceneUtilAccountable > {
 @public
  OrgApacheLuceneStoreRAMFile *buffer_;
}

#pragma mark Public

- (jboolean)isEqual:(id)obj;

- (id<JavaUtilCollection>)getChildResources;

- (NSUInteger)hash;

/*!
 @brief Return an iterator over the terms stored in this <code>PrefixCodedTerms</code>.
 */
- (OrgApacheLuceneIndexPrefixCodedTerms_TermIterator *)iterator;

- (jlong)ramBytesUsed;

/*!
 @brief Records del gen for this packet.
 */
- (void)setDelGenWithLong:(jlong)delGen;

/*!
 @brief Return the number of terms stored in this <code>PrefixCodedTerms</code>.
 */
- (jlong)size;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexPrefixCodedTerms)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexPrefixCodedTerms, buffer_, OrgApacheLuceneStoreRAMFile *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexPrefixCodedTerms)

#endif

#if !defined (OrgApacheLuceneIndexPrefixCodedTerms_Builder_) && (INCLUDE_ALL_OrgApacheLuceneIndexPrefixCodedTerms || defined(INCLUDE_OrgApacheLuceneIndexPrefixCodedTerms_Builder))
#define OrgApacheLuceneIndexPrefixCodedTerms_Builder_

@class OrgApacheLuceneIndexPrefixCodedTerms;
@class OrgApacheLuceneIndexTerm;

/*!
 @brief Builds a PrefixCodedTerms: call add repeatedly, then finish.
 */
@interface OrgApacheLuceneIndexPrefixCodedTerms_Builder : NSObject

#pragma mark Public

/*!
 @brief Sole constructor.
 */
- (instancetype __nonnull)init;

/*!
 @brief add a term
 */
- (void)addWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

/*!
 @brief return finalized form
 */
- (OrgApacheLuceneIndexPrefixCodedTerms *)finish;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexPrefixCodedTerms_Builder)

FOUNDATION_EXPORT void OrgApacheLuceneIndexPrefixCodedTerms_Builder_init(OrgApacheLuceneIndexPrefixCodedTerms_Builder *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexPrefixCodedTerms_Builder *new_OrgApacheLuceneIndexPrefixCodedTerms_Builder_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexPrefixCodedTerms_Builder *create_OrgApacheLuceneIndexPrefixCodedTerms_Builder_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexPrefixCodedTerms_Builder)

#endif

#if !defined (OrgApacheLuceneIndexPrefixCodedTerms_TermIterator_) && (INCLUDE_ALL_OrgApacheLuceneIndexPrefixCodedTerms || defined(INCLUDE_OrgApacheLuceneIndexPrefixCodedTerms_TermIterator))
#define OrgApacheLuceneIndexPrefixCodedTerms_TermIterator_

#define RESTRICT_OrgApacheLuceneIndexFieldTermIterator 1
#define INCLUDE_OrgApacheLuceneIndexFieldTermIterator 1
#include "org/apache/lucene/index/FieldTermIterator.h"

@class OrgApacheLuceneStoreIndexInput;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilBytesRefBuilder;

/*!
 @brief An iterator over the list of terms stored in a <code>PrefixCodedTerms</code>.
 */
@interface OrgApacheLuceneIndexPrefixCodedTerms_TermIterator : OrgApacheLuceneIndexFieldTermIterator {
 @public
  OrgApacheLuceneStoreIndexInput *input_;
  OrgApacheLuceneUtilBytesRefBuilder *builder_;
  OrgApacheLuceneUtilBytesRef *bytes_;
  jlong end_;
  jlong delGen_;
  NSString *field_;
}

#pragma mark Public

- (jlong)delGen;

- (NSString *)field;

- (OrgApacheLuceneUtilBytesRef *)next;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initPackagePrivate NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexPrefixCodedTerms_TermIterator)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexPrefixCodedTerms_TermIterator, input_, OrgApacheLuceneStoreIndexInput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexPrefixCodedTerms_TermIterator, builder_, OrgApacheLuceneUtilBytesRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexPrefixCodedTerms_TermIterator, bytes_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexPrefixCodedTerms_TermIterator, field_, NSString *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexPrefixCodedTerms_TermIterator)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexPrefixCodedTerms")
