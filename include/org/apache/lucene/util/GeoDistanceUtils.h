//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/util/GeoDistanceUtils.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilGeoDistanceUtils")
#ifdef RESTRICT_OrgApacheLuceneUtilGeoDistanceUtils
#define INCLUDE_ALL_OrgApacheLuceneUtilGeoDistanceUtils 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilGeoDistanceUtils 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilGeoDistanceUtils

#if !defined (OrgApacheLuceneUtilGeoDistanceUtils_) && (INCLUDE_ALL_OrgApacheLuceneUtilGeoDistanceUtils || defined(INCLUDE_OrgApacheLuceneUtilGeoDistanceUtils))
#define OrgApacheLuceneUtilGeoDistanceUtils_

/*!
 @brief Reusable geo-spatial distance utility methods.
 */
@interface OrgApacheLuceneUtilGeoDistanceUtils : NSObject

#pragma mark Public

- (instancetype)init;

/*!
 @brief Compute the inverse haversine to determine distance in degrees longitude for provided distance in meters
 @param lat latitude to compute delta degrees lon
 @param distance distance in meters to convert to degrees lon
 @return Sloppy distance in degrees longitude for provided distance in meters
 */
+ (jdouble)distanceToDegreesLatWithDouble:(jdouble)lat
                               withDouble:(jdouble)distance;

/*!
 @brief Compute the inverse haversine to determine distance in degrees longitude for provided distance in meters
 @param lat latitude to compute delta degrees lon
 @param distance distance in meters to convert to degrees lon
 @return Sloppy distance in degrees longitude for provided distance in meters
 */
+ (jdouble)distanceToDegreesLonWithDouble:(jdouble)lat
                               withDouble:(jdouble)distance;

/*!
 @brief Compute the distance between two geo-points using vincenty distance formula
 Vincenty uses the oblate spheroid whereas haversine uses unit sphere, this will give roughly
 22m better accuracy (in worst case) than haversine
 @param lonA longitudinal coordinate of point A (in degrees)
 @param latA latitudinal coordinate of point A (in degrees)
 @param lonB longitudinal coordinate of point B (in degrees)
 @param latB latitudinal coordinate of point B (in degrees)
 @return distance (in meters) between point A and point B
 */
+ (jdouble)vincentyDistanceWithDouble:(jdouble)lonA
                           withDouble:(jdouble)latA
                           withDouble:(jdouble)lonB
                           withDouble:(jdouble)latB;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilGeoDistanceUtils)

FOUNDATION_EXPORT jdouble OrgApacheLuceneUtilGeoDistanceUtils_vincentyDistanceWithDouble_withDouble_withDouble_withDouble_(jdouble lonA, jdouble latA, jdouble lonB, jdouble latB);

FOUNDATION_EXPORT jdouble OrgApacheLuceneUtilGeoDistanceUtils_distanceToDegreesLonWithDouble_withDouble_(jdouble lat, jdouble distance);

FOUNDATION_EXPORT jdouble OrgApacheLuceneUtilGeoDistanceUtils_distanceToDegreesLatWithDouble_withDouble_(jdouble lat, jdouble distance);

FOUNDATION_EXPORT void OrgApacheLuceneUtilGeoDistanceUtils_init(OrgApacheLuceneUtilGeoDistanceUtils *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilGeoDistanceUtils *new_OrgApacheLuceneUtilGeoDistanceUtils_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilGeoDistanceUtils *create_OrgApacheLuceneUtilGeoDistanceUtils_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilGeoDistanceUtils)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilGeoDistanceUtils")
