//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/GeoPointTermsEnum.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchGeoPointTermsEnum")
#ifdef RESTRICT_OrgApacheLuceneSearchGeoPointTermsEnum
#define INCLUDE_ALL_OrgApacheLuceneSearchGeoPointTermsEnum 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchGeoPointTermsEnum 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchGeoPointTermsEnum

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchGeoPointTermsEnum_) && (INCLUDE_ALL_OrgApacheLuceneSearchGeoPointTermsEnum || defined(INCLUDE_OrgApacheLuceneSearchGeoPointTermsEnum))
#define OrgApacheLuceneSearchGeoPointTermsEnum_

#define RESTRICT_OrgApacheLuceneIndexFilteredTermsEnum 1
#define INCLUDE_OrgApacheLuceneIndexFilteredTermsEnum 1
#include "org/apache/lucene/index/FilteredTermsEnum.h"

@class OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatus;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneSearchGeoPointTermsEnum_Range;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief computes all ranges along a space-filling curve that represents
  the given bounding box and enumerates all terms contained within those ranges
 */
@interface OrgApacheLuceneSearchGeoPointTermsEnum : OrgApacheLuceneIndexFilteredTermsEnum {
 @public
  jdouble minLon_;
  jdouble minLat_;
  jdouble maxLon_;
  jdouble maxLat_;
  OrgApacheLuceneSearchGeoPointTermsEnum_Range *currentRange_;
}
@property (readonly, class) jshort DETAIL_LEVEL NS_SWIFT_NAME(DETAIL_LEVEL);

#pragma mark Public

- (jboolean)boundaryTerm;

#pragma mark Protected

/*!
 @brief The two-phase query approach.
 <code>nextSeekTerm</code> is called to obtain the next term that matches a numeric
  range of the bounding box. Those terms that pass the initial range filter are then compared against the
  decoded min/max latitude and longitude values of the bounding box only if the range is not a "boundary" range
  (e.g., a range that straddles the boundary of the bbox).
 @param term term for candidate document
 @return match status
 */
- (OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatus *)acceptWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term;

/*!
 @brief Return whether quad-cell contains the bounding box of this shape
 */
- (jboolean)cellContainsWithDouble:(jdouble)minLon
                        withDouble:(jdouble)minLat
                        withDouble:(jdouble)maxLon
                        withDouble:(jdouble)maxLat;

/*!
 @brief Determine whether the quad-cell crosses the shape
 */
- (jboolean)cellCrossesWithDouble:(jdouble)minLon
                       withDouble:(jdouble)minLat
                       withDouble:(jdouble)maxLon
                       withDouble:(jdouble)maxLat;

/*!
 @brief Primary driver for cells intersecting shape boundaries
 */
- (jboolean)cellIntersectsMBRWithDouble:(jdouble)minLon
                             withDouble:(jdouble)minLat
                             withDouble:(jdouble)maxLon
                             withDouble:(jdouble)maxLat;

/*!
 @brief Default shape is a rectangle, so this returns the same as <code>cellIntersectsMBR</code>
 */
- (jboolean)cellIntersectsShapeWithDouble:(jdouble)minLon
                               withDouble:(jdouble)minLat
                               withDouble:(jdouble)maxLon
                               withDouble:(jdouble)maxLat;

/*!
 @brief Determine whether quad-cell is within the shape
 */
- (jboolean)cellWithinWithDouble:(jdouble)minLon
                      withDouble:(jdouble)minLat
                      withDouble:(jdouble)maxLon
                      withDouble:(jdouble)maxLat;

- (OrgApacheLuceneUtilBytesRef *)nextSeekTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term;

- (jboolean)postFilterWithDouble:(jdouble)lon
                      withDouble:(jdouble)lat;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)tenum
                                                                   withDouble:(jdouble)minLon
                                                                   withDouble:(jdouble)minLat
                                                                   withDouble:(jdouble)maxLon
                                                                   withDouble:(jdouble)maxLat;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)arg0
                                                    withBoolean:(jboolean)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGeoPointTermsEnum)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGeoPointTermsEnum, currentRange_, OrgApacheLuceneSearchGeoPointTermsEnum_Range *)

inline jshort OrgApacheLuceneSearchGeoPointTermsEnum_get_DETAIL_LEVEL(void);
#define OrgApacheLuceneSearchGeoPointTermsEnum_DETAIL_LEVEL 14
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchGeoPointTermsEnum, DETAIL_LEVEL, jshort)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGeoPointTermsEnum_initPackagePrivateWithOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointTermsEnum *self, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGeoPointTermsEnum)

#endif

#if !defined (OrgApacheLuceneSearchGeoPointTermsEnum_Range_) && (INCLUDE_ALL_OrgApacheLuceneSearchGeoPointTermsEnum || defined(INCLUDE_OrgApacheLuceneSearchGeoPointTermsEnum_Range))
#define OrgApacheLuceneSearchGeoPointTermsEnum_Range_

#define RESTRICT_JavaLangComparable 1
#define INCLUDE_JavaLangComparable 1
#include "java/lang/Comparable.h"

@class OrgApacheLuceneSearchGeoPointTermsEnum;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Internal class to represent a range along the space filling curve
 */
@interface OrgApacheLuceneSearchGeoPointTermsEnum_Range : NSObject < JavaLangComparable > {
 @public
  OrgApacheLuceneUtilBytesRef *cell_;
  jshort level_;
  jboolean boundary_;
}

#pragma mark Public

- (jint)compareToWithId:(OrgApacheLuceneSearchGeoPointTermsEnum_Range *)other;

#pragma mark Package-Private

- (instancetype __nonnull)initWithOrgApacheLuceneSearchGeoPointTermsEnum:(OrgApacheLuceneSearchGeoPointTermsEnum *)outer$
                                                                withLong:(jlong)lower
                                                               withShort:(jshort)res
                                                               withShort:(jshort)level
                                                             withBoolean:(jboolean)boundary;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGeoPointTermsEnum_Range)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGeoPointTermsEnum_Range, cell_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGeoPointTermsEnum_Range_initWithOrgApacheLuceneSearchGeoPointTermsEnum_withLong_withShort_withShort_withBoolean_(OrgApacheLuceneSearchGeoPointTermsEnum_Range *self, OrgApacheLuceneSearchGeoPointTermsEnum *outer$, jlong lower, jshort res, jshort level, jboolean boundary);

FOUNDATION_EXPORT OrgApacheLuceneSearchGeoPointTermsEnum_Range *new_OrgApacheLuceneSearchGeoPointTermsEnum_Range_initWithOrgApacheLuceneSearchGeoPointTermsEnum_withLong_withShort_withShort_withBoolean_(OrgApacheLuceneSearchGeoPointTermsEnum *outer$, jlong lower, jshort res, jshort level, jboolean boundary) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchGeoPointTermsEnum_Range *create_OrgApacheLuceneSearchGeoPointTermsEnum_Range_initWithOrgApacheLuceneSearchGeoPointTermsEnum_withLong_withShort_withShort_withBoolean_(OrgApacheLuceneSearchGeoPointTermsEnum *outer$, jlong lower, jshort res, jshort level, jboolean boundary);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGeoPointTermsEnum_Range)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchGeoPointTermsEnum")
