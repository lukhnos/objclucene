//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/util/GeoProjectionUtils.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilGeoProjectionUtils_INCLUDE_ALL")
#if OrgApacheLuceneUtilGeoProjectionUtils_RESTRICT
#define OrgApacheLuceneUtilGeoProjectionUtils_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilGeoProjectionUtils_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilGeoProjectionUtils_RESTRICT

#if !defined (_OrgApacheLuceneUtilGeoProjectionUtils_) && (OrgApacheLuceneUtilGeoProjectionUtils_INCLUDE_ALL || OrgApacheLuceneUtilGeoProjectionUtils_INCLUDE)
#define _OrgApacheLuceneUtilGeoProjectionUtils_

@class IOSDoubleArray;

#define OrgApacheLuceneUtilGeoProjectionUtils_SEMIMAJOR_AXIS 6378137.0
#define OrgApacheLuceneUtilGeoProjectionUtils_FLATTENING 0.0033528106647474805
#define OrgApacheLuceneUtilGeoProjectionUtils_SEMIMINOR_AXIS 6356752.314245179
#define OrgApacheLuceneUtilGeoProjectionUtils_PI_OVER_2 1.5707963267948966
#define OrgApacheLuceneUtilGeoProjectionUtils_SEMIMAJOR_AXIS2 4.0680631590769E13
#define OrgApacheLuceneUtilGeoProjectionUtils_SEMIMINOR_AXIS2 4.0408299984661445E13

@interface OrgApacheLuceneUtilGeoProjectionUtils : NSObject

#pragma mark Public

- (instancetype)init;

+ (IOSDoubleArray *)ecfToENUWithDouble:(jdouble)x
                            withDouble:(jdouble)y
                            withDouble:(jdouble)z
                            withDouble:(jdouble)centerLon
                            withDouble:(jdouble)centerLat
                            withDouble:(jdouble)centerAlt
                       withDoubleArray:(IOSDoubleArray *)enu;

+ (IOSDoubleArray *)ecfToLLAWithDouble:(jdouble)x
                            withDouble:(jdouble)y
                            withDouble:(jdouble)z
                       withDoubleArray:(IOSDoubleArray *)lla;

+ (IOSDoubleArray *)enuToECFWithDouble:(jdouble)x
                            withDouble:(jdouble)y
                            withDouble:(jdouble)z
                            withDouble:(jdouble)centerLon
                            withDouble:(jdouble)centerLat
                            withDouble:(jdouble)centerAlt
                       withDoubleArray:(IOSDoubleArray *)ecf;

+ (IOSDoubleArray *)enuToLLAWithDouble:(jdouble)x
                            withDouble:(jdouble)y
                            withDouble:(jdouble)z
                            withDouble:(jdouble)centerLon
                            withDouble:(jdouble)centerLat
                            withDouble:(jdouble)centerAlt
                       withDoubleArray:(IOSDoubleArray *)lla;

+ (IOSDoubleArray *)llaToECFWithDouble:(jdouble)lon
                            withDouble:(jdouble)lat
                            withDouble:(jdouble)alt
                       withDoubleArray:(IOSDoubleArray *)ecf;

+ (IOSDoubleArray *)llaToENUWithDouble:(jdouble)lon
                            withDouble:(jdouble)lat
                            withDouble:(jdouble)alt
                            withDouble:(jdouble)centerLon
                            withDouble:(jdouble)centerLat
                            withDouble:(jdouble)centerAlt
                       withDoubleArray:(IOSDoubleArray *)enu;

+ (IOSDoubleArray *)pointFromLonLatBearingWithDouble:(jdouble)lon
                                          withDouble:(jdouble)lat
                                          withDouble:(jdouble)bearing
                                          withDouble:(jdouble)dist
                                     withDoubleArray:(IOSDoubleArray *)pt;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilGeoProjectionUtils)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilGeoProjectionUtils, SEMIMAJOR_AXIS, jdouble)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilGeoProjectionUtils, FLATTENING, jdouble)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilGeoProjectionUtils, SEMIMINOR_AXIS, jdouble)

FOUNDATION_EXPORT jdouble OrgApacheLuceneUtilGeoProjectionUtils_ECCENTRICITY_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilGeoProjectionUtils, ECCENTRICITY_, jdouble)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilGeoProjectionUtils, PI_OVER_2, jdouble)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilGeoProjectionUtils, SEMIMAJOR_AXIS2, jdouble)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilGeoProjectionUtils, SEMIMINOR_AXIS2, jdouble)

FOUNDATION_EXPORT IOSDoubleArray *OrgApacheLuceneUtilGeoProjectionUtils_ecfToLLAWithDouble_withDouble_withDouble_withDoubleArray_(jdouble x, jdouble y, jdouble z, IOSDoubleArray *lla);

FOUNDATION_EXPORT IOSDoubleArray *OrgApacheLuceneUtilGeoProjectionUtils_llaToECFWithDouble_withDouble_withDouble_withDoubleArray_(jdouble lon, jdouble lat, jdouble alt, IOSDoubleArray *ecf);

FOUNDATION_EXPORT IOSDoubleArray *OrgApacheLuceneUtilGeoProjectionUtils_llaToENUWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDoubleArray_(jdouble lon, jdouble lat, jdouble alt, jdouble centerLon, jdouble centerLat, jdouble centerAlt, IOSDoubleArray *enu);

FOUNDATION_EXPORT IOSDoubleArray *OrgApacheLuceneUtilGeoProjectionUtils_enuToLLAWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDoubleArray_(jdouble x, jdouble y, jdouble z, jdouble centerLon, jdouble centerLat, jdouble centerAlt, IOSDoubleArray *lla);

FOUNDATION_EXPORT IOSDoubleArray *OrgApacheLuceneUtilGeoProjectionUtils_ecfToENUWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDoubleArray_(jdouble x, jdouble y, jdouble z, jdouble centerLon, jdouble centerLat, jdouble centerAlt, IOSDoubleArray *enu);

FOUNDATION_EXPORT IOSDoubleArray *OrgApacheLuceneUtilGeoProjectionUtils_enuToECFWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDoubleArray_(jdouble x, jdouble y, jdouble z, jdouble centerLon, jdouble centerLat, jdouble centerAlt, IOSDoubleArray *ecf);

FOUNDATION_EXPORT IOSDoubleArray *OrgApacheLuceneUtilGeoProjectionUtils_pointFromLonLatBearingWithDouble_withDouble_withDouble_withDouble_withDoubleArray_(jdouble lon, jdouble lat, jdouble bearing, jdouble dist, IOSDoubleArray *pt);

FOUNDATION_EXPORT void OrgApacheLuceneUtilGeoProjectionUtils_init(OrgApacheLuceneUtilGeoProjectionUtils *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilGeoProjectionUtils *new_OrgApacheLuceneUtilGeoProjectionUtils_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilGeoProjectionUtils)

#endif

#pragma pop_macro("OrgApacheLuceneUtilGeoProjectionUtils_INCLUDE_ALL")
