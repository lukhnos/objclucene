//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/util/GeoDistanceUtils.java
//

#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "java/lang/StrictMath.h"
#include "org/apache/lucene/util/GeoDistanceUtils.h"
#include "org/apache/lucene/util/GeoProjectionUtils.h"
#include "org/apache/lucene/util/SloppyMath.h"

@implementation OrgApacheLuceneUtilGeoDistanceUtils

+ (jdouble)vincentyDistanceWithDouble:(jdouble)lonA
                           withDouble:(jdouble)latA
                           withDouble:(jdouble)lonB
                           withDouble:(jdouble)latB {
  return OrgApacheLuceneUtilGeoDistanceUtils_vincentyDistanceWithDouble_withDouble_withDouble_withDouble_(lonA, latA, lonB, latB);
}

+ (jdouble)distanceToDegreesLonWithDouble:(jdouble)lat
                               withDouble:(jdouble)distance {
  return OrgApacheLuceneUtilGeoDistanceUtils_distanceToDegreesLonWithDouble_withDouble_(lat, distance);
}

+ (jdouble)distanceToDegreesLatWithDouble:(jdouble)lat
                               withDouble:(jdouble)distance {
  return OrgApacheLuceneUtilGeoDistanceUtils_distanceToDegreesLatWithDouble_withDouble_(lat, distance);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilGeoDistanceUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "vincentyDistanceWithDouble:withDouble:withDouble:withDouble:", "vincentyDistance", "D", 0x19, NULL, NULL },
    { "distanceToDegreesLonWithDouble:withDouble:", "distanceToDegreesLon", "D", 0x9, NULL, NULL },
    { "distanceToDegreesLatWithDouble:withDouble:", "distanceToDegreesLat", "D", 0x9, NULL, NULL },
    { "init", "GeoDistanceUtils", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilGeoDistanceUtils = { 2, "GeoDistanceUtils", "org.apache.lucene.util", NULL, 0x1, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilGeoDistanceUtils;
}

@end

jdouble OrgApacheLuceneUtilGeoDistanceUtils_vincentyDistanceWithDouble_withDouble_withDouble_withDouble_(jdouble lonA, jdouble latA, jdouble lonB, jdouble latB) {
  OrgApacheLuceneUtilGeoDistanceUtils_initialize();
  jdouble L = JavaLangStrictMath_toRadiansWithDouble_(lonB - lonA);
  jdouble oF = 1 - OrgApacheLuceneUtilGeoProjectionUtils_FLATTENING;
  jdouble U1 = JavaLangStrictMath_atanWithDouble_(oF * JavaLangStrictMath_tanWithDouble_(JavaLangStrictMath_toRadiansWithDouble_(latA)));
  jdouble U2 = JavaLangStrictMath_atanWithDouble_(oF * JavaLangStrictMath_tanWithDouble_(JavaLangStrictMath_toRadiansWithDouble_(latB)));
  jdouble sU1 = JavaLangStrictMath_sinWithDouble_(U1);
  jdouble cU1 = JavaLangStrictMath_cosWithDouble_(U1);
  jdouble sU2 = JavaLangStrictMath_sinWithDouble_(U2);
  jdouble cU2 = JavaLangStrictMath_cosWithDouble_(U2);
  jdouble sigma, sinSigma, cosSigma;
  jdouble sinAlpha, cos2Alpha, cos2SigmaM;
  jdouble lambda = L;
  jdouble lambdaP;
  jdouble iters = 100;
  jdouble sinLambda, cosLambda, c;
  do {
    sinLambda = JavaLangStrictMath_sinWithDouble_(lambda);
    cosLambda = JavaLangMath_cosWithDouble_(lambda);
    sinSigma = JavaLangMath_sqrtWithDouble_((cU2 * sinLambda) * (cU2 * sinLambda) + (cU1 * sU2 - sU1 * cU2 * cosLambda) * (cU1 * sU2 - sU1 * cU2 * cosLambda));
    if (sinSigma == 0) {
      return 0;
    }
    cosSigma = sU1 * sU2 + cU1 * cU2 * cosLambda;
    sigma = JavaLangMath_atan2WithDouble_withDouble_(sinSigma, cosSigma);
    sinAlpha = cU1 * cU2 * sinLambda / sinSigma;
    cos2Alpha = 1 - sinAlpha * sinAlpha;
    cos2SigmaM = cosSigma - 2 * sU1 * sU2 / cos2Alpha;
    c = OrgApacheLuceneUtilGeoProjectionUtils_FLATTENING / 16 * cos2Alpha * (4 + OrgApacheLuceneUtilGeoProjectionUtils_FLATTENING * (4 - 3 * cos2Alpha));
    lambdaP = lambda;
    lambda = L + (1 - c) * OrgApacheLuceneUtilGeoProjectionUtils_FLATTENING * sinAlpha * (sigma + c * sinSigma * (cos2SigmaM + c * cosSigma * (-1 + 2 * cos2SigmaM * cos2SigmaM)));
  }
  while (JavaLangStrictMath_absWithDouble_(lambda - lambdaP) > 1E-12 && --iters > 0);
  if (iters == 0) {
    return 0;
  }
  jdouble uSq = cos2Alpha * (OrgApacheLuceneUtilGeoProjectionUtils_SEMIMAJOR_AXIS2 - OrgApacheLuceneUtilGeoProjectionUtils_SEMIMINOR_AXIS2) / (OrgApacheLuceneUtilGeoProjectionUtils_SEMIMINOR_AXIS2);
  jdouble A = 1 + uSq / 16384 * (4096 + uSq * (-768 + uSq * (320 - 175 * uSq)));
  jdouble B = uSq / 1024 * (256 + uSq * (-128 + uSq * (74 - 47 * uSq)));
  jdouble deltaSigma = B * sinSigma * (cos2SigmaM + B / 4 * (cosSigma * (-1 + 2 * cos2SigmaM * cos2SigmaM) - B / 6 * cos2SigmaM * (-3 + 4 * sinSigma * sinSigma) * (-3 + 4 * cos2SigmaM * cos2SigmaM)));
  return (OrgApacheLuceneUtilGeoProjectionUtils_SEMIMINOR_AXIS * A * (sigma - deltaSigma));
}

jdouble OrgApacheLuceneUtilGeoDistanceUtils_distanceToDegreesLonWithDouble_withDouble_(jdouble lat, jdouble distance) {
  OrgApacheLuceneUtilGeoDistanceUtils_initialize();
  JreDivideAssignDoubleD(&distance, 1000.0);
  lat = JavaLangStrictMath_toRadiansWithDouble_(lat);
  jdouble diameter = OrgApacheLuceneUtilSloppyMath_earthDiameterWithDouble_(JavaLangStrictMath_toRadiansWithDouble_(lat));
  jdouble a = JavaLangStrictMath_sinWithDouble_(distance / diameter);
  jdouble h = JavaLangStrictMath_minWithDouble_withDouble_(1, a);
  JreTimesAssignDoubleD(&h, h);
  jdouble cLat = JavaLangStrictMath_cosWithDouble_(lat);
  return JavaLangStrictMath_toDegreesWithDouble_(JavaLangStrictMath_acosWithDouble_(1 - ((2.0 * h) / (cLat * cLat))));
}

jdouble OrgApacheLuceneUtilGeoDistanceUtils_distanceToDegreesLatWithDouble_withDouble_(jdouble lat, jdouble distance) {
  OrgApacheLuceneUtilGeoDistanceUtils_initialize();
  jdouble diameter = OrgApacheLuceneUtilSloppyMath_earthDiameterWithDouble_(JavaLangStrictMath_toRadiansWithDouble_(lat));
  JreDivideAssignDoubleD(&distance, 1000.0);
  jdouble a = JavaLangStrictMath_sinWithDouble_(distance / diameter);
  jdouble h = JavaLangStrictMath_minWithDouble_withDouble_(1, a);
  JreTimesAssignDoubleD(&h, h);
  return JavaLangStrictMath_toDegreesWithDouble_(JavaLangStrictMath_acosWithDouble_(1 - (2.0 * h)));
}

void OrgApacheLuceneUtilGeoDistanceUtils_init(OrgApacheLuceneUtilGeoDistanceUtils *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilGeoDistanceUtils *new_OrgApacheLuceneUtilGeoDistanceUtils_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilGeoDistanceUtils, init)
}

OrgApacheLuceneUtilGeoDistanceUtils *create_OrgApacheLuceneUtilGeoDistanceUtils_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilGeoDistanceUtils, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilGeoDistanceUtils)
