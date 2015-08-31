//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/util/GeoProjectionUtils.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/StrictMath.h"
#include "org/apache/lucene/util/GeoProjectionUtils.h"

@interface OrgApacheLuceneUtilGeoProjectionUtils ()

+ (IOSObjectArray *)createPhiTransformWithDouble:(jdouble)originLon
                                      withDouble:(jdouble)originLat
                                withDoubleArray2:(IOSObjectArray *)phiMatrix;

+ (IOSObjectArray *)createTransposedPhiTransformWithDouble:(jdouble)originLon
                                                withDouble:(jdouble)originLat
                                          withDoubleArray2:(IOSObjectArray *)phiMatrix;

@end

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilGeoProjectionUtils_createPhiTransformWithDouble_withDouble_withDoubleArray2_(jdouble originLon, jdouble originLat, IOSObjectArray *phiMatrix);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneUtilGeoProjectionUtils_createTransposedPhiTransformWithDouble_withDouble_withDoubleArray2_(jdouble originLon, jdouble originLat, IOSObjectArray *phiMatrix);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilGeoProjectionUtils)

jdouble OrgApacheLuceneUtilGeoProjectionUtils_ECCENTRICITY_;

@implementation OrgApacheLuceneUtilGeoProjectionUtils

+ (IOSDoubleArray *)ecfToLLAWithDouble:(jdouble)x
                            withDouble:(jdouble)y
                            withDouble:(jdouble)z
                       withDoubleArray:(IOSDoubleArray *)lla {
  return OrgApacheLuceneUtilGeoProjectionUtils_ecfToLLAWithDouble_withDouble_withDouble_withDoubleArray_(x, y, z, lla);
}

+ (IOSDoubleArray *)llaToECFWithDouble:(jdouble)lon
                            withDouble:(jdouble)lat
                            withDouble:(jdouble)alt
                       withDoubleArray:(IOSDoubleArray *)ecf {
  return OrgApacheLuceneUtilGeoProjectionUtils_llaToECFWithDouble_withDouble_withDouble_withDoubleArray_(lon, lat, alt, ecf);
}

+ (IOSDoubleArray *)llaToENUWithDouble:(jdouble)lon
                            withDouble:(jdouble)lat
                            withDouble:(jdouble)alt
                            withDouble:(jdouble)centerLon
                            withDouble:(jdouble)centerLat
                            withDouble:(jdouble)centerAlt
                       withDoubleArray:(IOSDoubleArray *)enu {
  return OrgApacheLuceneUtilGeoProjectionUtils_llaToENUWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDoubleArray_(lon, lat, alt, centerLon, centerLat, centerAlt, enu);
}

+ (IOSDoubleArray *)enuToLLAWithDouble:(jdouble)x
                            withDouble:(jdouble)y
                            withDouble:(jdouble)z
                            withDouble:(jdouble)centerLon
                            withDouble:(jdouble)centerLat
                            withDouble:(jdouble)centerAlt
                       withDoubleArray:(IOSDoubleArray *)lla {
  return OrgApacheLuceneUtilGeoProjectionUtils_enuToLLAWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDoubleArray_(x, y, z, centerLon, centerLat, centerAlt, lla);
}

+ (IOSDoubleArray *)ecfToENUWithDouble:(jdouble)x
                            withDouble:(jdouble)y
                            withDouble:(jdouble)z
                            withDouble:(jdouble)centerLon
                            withDouble:(jdouble)centerLat
                            withDouble:(jdouble)centerAlt
                       withDoubleArray:(IOSDoubleArray *)enu {
  return OrgApacheLuceneUtilGeoProjectionUtils_ecfToENUWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDoubleArray_(x, y, z, centerLon, centerLat, centerAlt, enu);
}

+ (IOSDoubleArray *)enuToECFWithDouble:(jdouble)x
                            withDouble:(jdouble)y
                            withDouble:(jdouble)z
                            withDouble:(jdouble)centerLon
                            withDouble:(jdouble)centerLat
                            withDouble:(jdouble)centerAlt
                       withDoubleArray:(IOSDoubleArray *)ecf {
  return OrgApacheLuceneUtilGeoProjectionUtils_enuToECFWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDoubleArray_(x, y, z, centerLon, centerLat, centerAlt, ecf);
}

+ (IOSObjectArray *)createPhiTransformWithDouble:(jdouble)originLon
                                      withDouble:(jdouble)originLat
                                withDoubleArray2:(IOSObjectArray *)phiMatrix {
  return OrgApacheLuceneUtilGeoProjectionUtils_createPhiTransformWithDouble_withDouble_withDoubleArray2_(originLon, originLat, phiMatrix);
}

+ (IOSObjectArray *)createTransposedPhiTransformWithDouble:(jdouble)originLon
                                                withDouble:(jdouble)originLat
                                          withDoubleArray2:(IOSObjectArray *)phiMatrix {
  return OrgApacheLuceneUtilGeoProjectionUtils_createTransposedPhiTransformWithDouble_withDouble_withDoubleArray2_(originLon, originLat, phiMatrix);
}

+ (IOSDoubleArray *)pointFromLonLatBearingWithDouble:(jdouble)lon
                                          withDouble:(jdouble)lat
                                          withDouble:(jdouble)bearing
                                          withDouble:(jdouble)dist
                                     withDoubleArray:(IOSDoubleArray *)pt {
  return OrgApacheLuceneUtilGeoProjectionUtils_pointFromLonLatBearingWithDouble_withDouble_withDouble_withDouble_withDoubleArray_(lon, lat, bearing, dist, pt);
}

- (instancetype)init {
  OrgApacheLuceneUtilGeoProjectionUtils_init(self);
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilGeoProjectionUtils class]) {
    OrgApacheLuceneUtilGeoProjectionUtils_ECCENTRICITY_ = JavaLangStrictMath_sqrtWithDouble_((2.0 - OrgApacheLuceneUtilGeoProjectionUtils_FLATTENING) * OrgApacheLuceneUtilGeoProjectionUtils_FLATTENING);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilGeoProjectionUtils)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "ecfToLLAWithDouble:withDouble:withDouble:withDoubleArray:", "ecfToLLA", "[D", 0x19, NULL, NULL },
    { "llaToECFWithDouble:withDouble:withDouble:withDoubleArray:", "llaToECF", "[D", 0x19, NULL, NULL },
    { "llaToENUWithDouble:withDouble:withDouble:withDouble:withDouble:withDouble:withDoubleArray:", "llaToENU", "[D", 0x9, NULL, NULL },
    { "enuToLLAWithDouble:withDouble:withDouble:withDouble:withDouble:withDouble:withDoubleArray:", "enuToLLA", "[D", 0x9, NULL, NULL },
    { "ecfToENUWithDouble:withDouble:withDouble:withDouble:withDouble:withDouble:withDoubleArray:", "ecfToENU", "[D", 0x9, NULL, NULL },
    { "enuToECFWithDouble:withDouble:withDouble:withDouble:withDouble:withDouble:withDoubleArray:", "enuToECF", "[D", 0x9, NULL, NULL },
    { "createPhiTransformWithDouble:withDouble:withDoubleArray2:", "createPhiTransform", "[[D", 0xa, NULL, NULL },
    { "createTransposedPhiTransformWithDouble:withDouble:withDoubleArray2:", "createTransposedPhiTransform", "[[D", 0xa, NULL, NULL },
    { "pointFromLonLatBearingWithDouble:withDouble:withDouble:withDouble:withDoubleArray:", "pointFromLonLatBearing", "[D", 0x19, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "SEMIMAJOR_AXIS", "SEMIMAJOR_AXIS", 0x18, "D", NULL, NULL, .constantValue.asDouble = OrgApacheLuceneUtilGeoProjectionUtils_SEMIMAJOR_AXIS },
    { "FLATTENING", "FLATTENING", 0x18, "D", NULL, NULL, .constantValue.asDouble = OrgApacheLuceneUtilGeoProjectionUtils_FLATTENING },
    { "SEMIMINOR_AXIS", "SEMIMINOR_AXIS", 0x18, "D", NULL, NULL, .constantValue.asDouble = OrgApacheLuceneUtilGeoProjectionUtils_SEMIMINOR_AXIS },
    { "ECCENTRICITY_", NULL, 0x18, "D", &OrgApacheLuceneUtilGeoProjectionUtils_ECCENTRICITY_, NULL, .constantValue.asLong = 0 },
    { "PI_OVER_2", "PI_OVER_2", 0x18, "D", NULL, NULL, .constantValue.asDouble = OrgApacheLuceneUtilGeoProjectionUtils_PI_OVER_2 },
    { "SEMIMAJOR_AXIS2", "SEMIMAJOR_AXIS2", 0x18, "D", NULL, NULL, .constantValue.asDouble = OrgApacheLuceneUtilGeoProjectionUtils_SEMIMAJOR_AXIS2 },
    { "SEMIMINOR_AXIS2", "SEMIMINOR_AXIS2", 0x18, "D", NULL, NULL, .constantValue.asDouble = OrgApacheLuceneUtilGeoProjectionUtils_SEMIMINOR_AXIS2 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilGeoProjectionUtils = { 2, "GeoProjectionUtils", "org.apache.lucene.util", NULL, 0x1, 10, methods, 7, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilGeoProjectionUtils;
}

@end

IOSDoubleArray *OrgApacheLuceneUtilGeoProjectionUtils_ecfToLLAWithDouble_withDouble_withDouble_withDoubleArray_(jdouble x, jdouble y, jdouble z, IOSDoubleArray *lla) {
  OrgApacheLuceneUtilGeoProjectionUtils_initialize();
  jboolean atPole = NO;
  jdouble ad_c = 1.0026000;
  jdouble e2 = (OrgApacheLuceneUtilGeoProjectionUtils_SEMIMAJOR_AXIS2 - OrgApacheLuceneUtilGeoProjectionUtils_SEMIMINOR_AXIS2) / (OrgApacheLuceneUtilGeoProjectionUtils_SEMIMAJOR_AXIS2);
  jdouble ep2 = (OrgApacheLuceneUtilGeoProjectionUtils_SEMIMAJOR_AXIS2 - OrgApacheLuceneUtilGeoProjectionUtils_SEMIMINOR_AXIS2) / (OrgApacheLuceneUtilGeoProjectionUtils_SEMIMINOR_AXIS2);
  jdouble cos67P5 = 0.38268343236508977;
  if (lla == nil) {
    lla = [IOSDoubleArray arrayWithLength:3];
  }
  if (x != 0.0) {
    *IOSDoubleArray_GetRef(nil_chk(lla), 0) = JavaLangStrictMath_atan2WithDouble_withDouble_(y, x);
  }
  else {
    if (y > 0) {
      *IOSDoubleArray_GetRef(nil_chk(lla), 0) = OrgApacheLuceneUtilGeoProjectionUtils_PI_OVER_2;
    }
    else if (y < 0) {
      *IOSDoubleArray_GetRef(nil_chk(lla), 0) = -OrgApacheLuceneUtilGeoProjectionUtils_PI_OVER_2;
    }
    else {
      atPole = YES;
      *IOSDoubleArray_GetRef(nil_chk(lla), 0) = 0.0;
      if (z > 0.0) {
        *IOSDoubleArray_GetRef(lla, 1) = OrgApacheLuceneUtilGeoProjectionUtils_PI_OVER_2;
      }
      else if (z < 0.0) {
        *IOSDoubleArray_GetRef(lla, 1) = -OrgApacheLuceneUtilGeoProjectionUtils_PI_OVER_2;
      }
      else {
        *IOSDoubleArray_GetRef(lla, 1) = OrgApacheLuceneUtilGeoProjectionUtils_PI_OVER_2;
        *IOSDoubleArray_GetRef(lla, 2) = -OrgApacheLuceneUtilGeoProjectionUtils_SEMIMINOR_AXIS;
        return lla;
      }
    }
  }
  jdouble w2 = x * x + y * y;
  jdouble w = JavaLangStrictMath_sqrtWithDouble_(w2);
  jdouble t0 = z * ad_c;
  jdouble s0 = JavaLangStrictMath_sqrtWithDouble_(t0 * t0 + w2);
  jdouble sinB0 = t0 / s0;
  jdouble cosB0 = w / s0;
  jdouble sin3B0 = sinB0 * sinB0 * sinB0;
  jdouble t1 = z + OrgApacheLuceneUtilGeoProjectionUtils_SEMIMINOR_AXIS * ep2 * sin3B0;
  jdouble sum = w - OrgApacheLuceneUtilGeoProjectionUtils_SEMIMAJOR_AXIS * e2 * cosB0 * cosB0 * cosB0;
  jdouble s1 = JavaLangStrictMath_sqrtWithDouble_(t1 * t1 + sum * sum);
  jdouble sinP1 = t1 / s1;
  jdouble cosP1 = sum / s1;
  jdouble rn = OrgApacheLuceneUtilGeoProjectionUtils_SEMIMAJOR_AXIS / JavaLangStrictMath_sqrtWithDouble_(1.0 - e2 * sinP1 * sinP1);
  if (cosP1 >= cos67P5) {
    *IOSDoubleArray_GetRef(nil_chk(lla), 2) = w / cosP1 - rn;
  }
  else if (cosP1 <= -cos67P5) {
    *IOSDoubleArray_GetRef(nil_chk(lla), 2) = w / -cosP1 - rn;
  }
  else {
    *IOSDoubleArray_GetRef(nil_chk(lla), 2) = z / sinP1 + rn * (e2 - 1.0);
  }
  if (!atPole) {
    *IOSDoubleArray_GetRef(nil_chk(lla), 1) = JavaLangStrictMath_atanWithDouble_(sinP1 / cosP1);
  }
  *IOSDoubleArray_GetRef(nil_chk(lla), 0) = JavaLangStrictMath_toDegreesWithDouble_(IOSDoubleArray_Get(lla, 0));
  *IOSDoubleArray_GetRef(lla, 1) = JavaLangStrictMath_toDegreesWithDouble_(IOSDoubleArray_Get(lla, 1));
  return lla;
}

IOSDoubleArray *OrgApacheLuceneUtilGeoProjectionUtils_llaToECFWithDouble_withDouble_withDouble_withDoubleArray_(jdouble lon, jdouble lat, jdouble alt, IOSDoubleArray *ecf) {
  OrgApacheLuceneUtilGeoProjectionUtils_initialize();
  lon = JavaLangStrictMath_toRadiansWithDouble_(lon);
  lat = JavaLangStrictMath_toRadiansWithDouble_(lat);
  jdouble sl = JavaLangStrictMath_sinWithDouble_(lat);
  jdouble s2 = sl * sl;
  jdouble cl = JavaLangStrictMath_cosWithDouble_(lat);
  jdouble ge2 = (OrgApacheLuceneUtilGeoProjectionUtils_SEMIMAJOR_AXIS2 - OrgApacheLuceneUtilGeoProjectionUtils_SEMIMINOR_AXIS2) / (OrgApacheLuceneUtilGeoProjectionUtils_SEMIMAJOR_AXIS2);
  if (ecf == nil) {
    ecf = [IOSDoubleArray arrayWithLength:3];
  }
  if (lat < -OrgApacheLuceneUtilGeoProjectionUtils_PI_OVER_2 && lat > -1.001 * OrgApacheLuceneUtilGeoProjectionUtils_PI_OVER_2) {
    lat = -OrgApacheLuceneUtilGeoProjectionUtils_PI_OVER_2;
  }
  else if (lat > OrgApacheLuceneUtilGeoProjectionUtils_PI_OVER_2 && lat < 1.001 * OrgApacheLuceneUtilGeoProjectionUtils_PI_OVER_2) {
    lat = OrgApacheLuceneUtilGeoProjectionUtils_PI_OVER_2;
  }
  JreAssert(((lat >= -OrgApacheLuceneUtilGeoProjectionUtils_PI_OVER_2) || (lat <= OrgApacheLuceneUtilGeoProjectionUtils_PI_OVER_2)), (@"org/apache/lucene/util/GeoProjectionUtils.java:132 condition failed: assert (lat >= -PI_OVER_2) || (lat <= PI_OVER_2);"));
  if (lon > JavaLangStrictMath_PI) {
    JreMinusAssignDoubleD(&lon, (2 * JavaLangStrictMath_PI));
  }
  jdouble rn = OrgApacheLuceneUtilGeoProjectionUtils_SEMIMAJOR_AXIS / JavaLangStrictMath_sqrtWithDouble_(1.0 - ge2 * s2);
  *IOSDoubleArray_GetRef(nil_chk(ecf), 0) = (rn + alt) * cl * JavaLangStrictMath_cosWithDouble_(lon);
  *IOSDoubleArray_GetRef(ecf, 1) = (rn + alt) * cl * JavaLangStrictMath_sinWithDouble_(lon);
  *IOSDoubleArray_GetRef(ecf, 2) = ((rn * (1.0 - ge2)) + alt) * sl;
  return ecf;
}

IOSDoubleArray *OrgApacheLuceneUtilGeoProjectionUtils_llaToENUWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDoubleArray_(jdouble lon, jdouble lat, jdouble alt, jdouble centerLon, jdouble centerLat, jdouble centerAlt, IOSDoubleArray *enu) {
  OrgApacheLuceneUtilGeoProjectionUtils_initialize();
  if (enu == nil) {
    enu = [IOSDoubleArray arrayWithLength:3];
  }
  IOSDoubleArray *ecf = OrgApacheLuceneUtilGeoProjectionUtils_llaToECFWithDouble_withDouble_withDouble_withDoubleArray_(lon, lat, alt, nil);
  return OrgApacheLuceneUtilGeoProjectionUtils_ecfToENUWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDoubleArray_(IOSDoubleArray_Get(nil_chk(ecf), 0), IOSDoubleArray_Get(ecf, 1), IOSDoubleArray_Get(ecf, 2), centerLon, centerLat, centerAlt, enu);
}

IOSDoubleArray *OrgApacheLuceneUtilGeoProjectionUtils_enuToLLAWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDoubleArray_(jdouble x, jdouble y, jdouble z, jdouble centerLon, jdouble centerLat, jdouble centerAlt, IOSDoubleArray *lla) {
  OrgApacheLuceneUtilGeoProjectionUtils_initialize();
  if (lla == nil) {
    lla = [IOSDoubleArray arrayWithLength:3];
  }
  lla = OrgApacheLuceneUtilGeoProjectionUtils_enuToECFWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDoubleArray_(x, y, z, centerLon, centerLat, centerAlt, lla);
  return OrgApacheLuceneUtilGeoProjectionUtils_ecfToLLAWithDouble_withDouble_withDouble_withDoubleArray_(IOSDoubleArray_Get(nil_chk(lla), 0), IOSDoubleArray_Get(lla, 1), IOSDoubleArray_Get(lla, 2), lla);
}

IOSDoubleArray *OrgApacheLuceneUtilGeoProjectionUtils_ecfToENUWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDoubleArray_(jdouble x, jdouble y, jdouble z, jdouble centerLon, jdouble centerLat, jdouble centerAlt, IOSDoubleArray *enu) {
  OrgApacheLuceneUtilGeoProjectionUtils_initialize();
  if (enu == nil) {
    enu = [IOSDoubleArray arrayWithLength:3];
  }
  IOSObjectArray *phi = OrgApacheLuceneUtilGeoProjectionUtils_createPhiTransformWithDouble_withDouble_withDoubleArray2_(centerLon, centerLat, nil);
  IOSDoubleArray *originECF = OrgApacheLuceneUtilGeoProjectionUtils_llaToECFWithDouble_withDouble_withDouble_withDoubleArray_(centerLon, centerLat, centerAlt, nil);
  IOSDoubleArray *originENU = [IOSDoubleArray arrayWithLength:3];
  *IOSDoubleArray_GetRef(originENU, 0) = ((IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(phi), 0)), 0) * IOSDoubleArray_Get(nil_chk(originECF), 0)) + (IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 0)), 1) * IOSDoubleArray_Get(originECF, 1)) + (IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 0)), 2) * IOSDoubleArray_Get(originECF, 2)));
  *IOSDoubleArray_GetRef(originENU, 1) = ((IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 1)), 0) * IOSDoubleArray_Get(originECF, 0)) + (IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 1)), 1) * IOSDoubleArray_Get(originECF, 1)) + (IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 1)), 2) * IOSDoubleArray_Get(originECF, 2)));
  *IOSDoubleArray_GetRef(originENU, 2) = ((IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 2)), 0) * IOSDoubleArray_Get(originECF, 0)) + (IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 2)), 1) * IOSDoubleArray_Get(originECF, 1)) + (IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 2)), 2) * IOSDoubleArray_Get(originECF, 2)));
  *IOSDoubleArray_GetRef(nil_chk(enu), 0) = ((IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 0)), 0) * x) + (IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 0)), 1) * y) + (IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 0)), 2) * z)) - IOSDoubleArray_Get(originENU, 0);
  *IOSDoubleArray_GetRef(enu, 1) = ((IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 1)), 0) * x) + (IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 1)), 1) * y) + (IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 1)), 2) * z)) - IOSDoubleArray_Get(originENU, 1);
  *IOSDoubleArray_GetRef(enu, 2) = ((IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 2)), 0) * x) + (IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 2)), 1) * y) + (IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 2)), 2) * z)) - IOSDoubleArray_Get(originENU, 2);
  return enu;
}

IOSDoubleArray *OrgApacheLuceneUtilGeoProjectionUtils_enuToECFWithDouble_withDouble_withDouble_withDouble_withDouble_withDouble_withDoubleArray_(jdouble x, jdouble y, jdouble z, jdouble centerLon, jdouble centerLat, jdouble centerAlt, IOSDoubleArray *ecf) {
  OrgApacheLuceneUtilGeoProjectionUtils_initialize();
  if (ecf == nil) {
    ecf = [IOSDoubleArray arrayWithLength:3];
  }
  IOSObjectArray *phi = OrgApacheLuceneUtilGeoProjectionUtils_createTransposedPhiTransformWithDouble_withDouble_withDoubleArray2_(centerLon, centerLat, nil);
  IOSDoubleArray *ecfOrigin = OrgApacheLuceneUtilGeoProjectionUtils_llaToECFWithDouble_withDouble_withDouble_withDoubleArray_(centerLon, centerLat, centerAlt, nil);
  *IOSDoubleArray_GetRef(nil_chk(ecf), 0) = (IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(phi), 0)), 0) * x + IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 0)), 1) * y + IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 0)), 2) * z) + IOSDoubleArray_Get(nil_chk(ecfOrigin), 0);
  *IOSDoubleArray_GetRef(ecf, 1) = (IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 1)), 0) * x + IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 1)), 1) * y + IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 1)), 2) * z) + IOSDoubleArray_Get(ecfOrigin, 1);
  *IOSDoubleArray_GetRef(ecf, 2) = (IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 2)), 0) * x + IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 2)), 1) * y + IOSDoubleArray_Get(nil_chk(IOSObjectArray_Get(phi, 2)), 2) * z) + IOSDoubleArray_Get(ecfOrigin, 2);
  return ecf;
}

IOSObjectArray *OrgApacheLuceneUtilGeoProjectionUtils_createPhiTransformWithDouble_withDouble_withDoubleArray2_(jdouble originLon, jdouble originLat, IOSObjectArray *phiMatrix) {
  OrgApacheLuceneUtilGeoProjectionUtils_initialize();
  if (phiMatrix == nil) {
    phiMatrix = [IOSDoubleArray arrayWithDimensions:2 lengths:(jint[]){ 3, 3 }];
  }
  originLon = JavaLangStrictMath_toRadiansWithDouble_(originLon);
  originLat = JavaLangStrictMath_toRadiansWithDouble_(originLat);
  jdouble sLon = JavaLangStrictMath_sinWithDouble_(originLon);
  jdouble cLon = JavaLangStrictMath_cosWithDouble_(originLon);
  jdouble sLat = JavaLangStrictMath_sinWithDouble_(originLat);
  jdouble cLat = JavaLangStrictMath_cosWithDouble_(originLat);
  *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(nil_chk(phiMatrix), 0)), 0) = -sLon;
  *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(phiMatrix, 0)), 1) = cLon;
  *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(phiMatrix, 0)), 2) = 0.0;
  *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(phiMatrix, 1)), 0) = -sLat * cLon;
  *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(phiMatrix, 1)), 1) = -sLat * sLon;
  *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(phiMatrix, 1)), 2) = cLat;
  *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(phiMatrix, 2)), 0) = cLat * cLon;
  *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(phiMatrix, 2)), 1) = cLat * sLon;
  *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(phiMatrix, 2)), 2) = sLat;
  return phiMatrix;
}

IOSObjectArray *OrgApacheLuceneUtilGeoProjectionUtils_createTransposedPhiTransformWithDouble_withDouble_withDoubleArray2_(jdouble originLon, jdouble originLat, IOSObjectArray *phiMatrix) {
  OrgApacheLuceneUtilGeoProjectionUtils_initialize();
  if (phiMatrix == nil) {
    phiMatrix = [IOSDoubleArray arrayWithDimensions:2 lengths:(jint[]){ 3, 3 }];
  }
  originLon = JavaLangStrictMath_toRadiansWithDouble_(originLon);
  originLat = JavaLangStrictMath_toRadiansWithDouble_(originLat);
  jdouble sLat = JavaLangStrictMath_sinWithDouble_(originLat);
  jdouble cLat = JavaLangStrictMath_cosWithDouble_(originLat);
  jdouble sLon = JavaLangStrictMath_sinWithDouble_(originLon);
  jdouble cLon = JavaLangStrictMath_cosWithDouble_(originLon);
  *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(nil_chk(phiMatrix), 0)), 0) = -sLon;
  *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(phiMatrix, 1)), 0) = cLon;
  *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(phiMatrix, 2)), 0) = 0.0;
  *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(phiMatrix, 0)), 1) = -sLat * cLon;
  *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(phiMatrix, 1)), 1) = -sLat * sLon;
  *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(phiMatrix, 2)), 1) = cLat;
  *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(phiMatrix, 0)), 2) = cLat * cLon;
  *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(phiMatrix, 1)), 2) = cLat * sLon;
  *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(phiMatrix, 2)), 2) = sLat;
  return phiMatrix;
}

IOSDoubleArray *OrgApacheLuceneUtilGeoProjectionUtils_pointFromLonLatBearingWithDouble_withDouble_withDouble_withDouble_withDoubleArray_(jdouble lon, jdouble lat, jdouble bearing, jdouble dist, IOSDoubleArray *pt) {
  OrgApacheLuceneUtilGeoProjectionUtils_initialize();
  if (pt == nil) {
    pt = [IOSDoubleArray arrayWithLength:2];
  }
  jdouble alpha1 = JavaLangStrictMath_toRadiansWithDouble_(bearing);
  jdouble cosA1 = JavaLangStrictMath_cosWithDouble_(alpha1);
  jdouble sinA1 = JavaLangStrictMath_sinWithDouble_(alpha1);
  jdouble tanU1 = (1 - OrgApacheLuceneUtilGeoProjectionUtils_FLATTENING) * JavaLangStrictMath_tanWithDouble_(JavaLangStrictMath_toRadiansWithDouble_(lat));
  jdouble cosU1 = 1 / JavaLangStrictMath_sqrtWithDouble_((1 + tanU1 * tanU1));
  jdouble sinU1 = tanU1 * cosU1;
  jdouble sig1 = JavaLangStrictMath_atan2WithDouble_withDouble_(tanU1, cosA1);
  jdouble sinAlpha = cosU1 * sinA1;
  jdouble cosSqAlpha = 1 - sinAlpha * sinAlpha;
  jdouble uSq = cosSqAlpha * (OrgApacheLuceneUtilGeoProjectionUtils_SEMIMAJOR_AXIS2 - OrgApacheLuceneUtilGeoProjectionUtils_SEMIMINOR_AXIS2) / OrgApacheLuceneUtilGeoProjectionUtils_SEMIMINOR_AXIS2;
  jdouble A = 1 + uSq / 16384.0 * (4096.0 + uSq * (-768.0 + uSq * (320.0 - 175.0 * uSq)));
  jdouble B = uSq / 1024.0 * (256.0 + uSq * (-128.0 + uSq * (74.0 - 47.0 * uSq)));
  jdouble sigma = dist / (OrgApacheLuceneUtilGeoProjectionUtils_SEMIMINOR_AXIS * A);
  jdouble sigmaP;
  jdouble sinSigma, cosSigma, cos2SigmaM, deltaSigma;
  do {
    cos2SigmaM = JavaLangStrictMath_cosWithDouble_(2 * sig1 + sigma);
    sinSigma = JavaLangStrictMath_sinWithDouble_(sigma);
    cosSigma = JavaLangStrictMath_cosWithDouble_(sigma);
    deltaSigma = B * sinSigma * (cos2SigmaM + (B / 4.0) * (cosSigma * (-1 + 2 * cos2SigmaM * cos2SigmaM) - (B / 6) * cos2SigmaM * (-3 + 4 * sinSigma * sinSigma) * (-3 + 4 * cos2SigmaM * cos2SigmaM)));
    sigmaP = sigma;
    sigma = dist / (OrgApacheLuceneUtilGeoProjectionUtils_SEMIMINOR_AXIS * A) + deltaSigma;
  }
  while (JavaLangStrictMath_absWithDouble_(sigma - sigmaP) > 1E-12);
  jdouble tmp = sinU1 * sinSigma - cosU1 * cosSigma * cosA1;
  jdouble lat2 = JavaLangStrictMath_atan2WithDouble_withDouble_(sinU1 * cosSigma + cosU1 * sinSigma * cosA1, (1 - OrgApacheLuceneUtilGeoProjectionUtils_FLATTENING) * JavaLangStrictMath_sqrtWithDouble_(sinAlpha * sinAlpha + tmp * tmp));
  jdouble lambda = JavaLangStrictMath_atan2WithDouble_withDouble_(sinSigma * sinA1, cosU1 * cosSigma - sinU1 * sinSigma * cosA1);
  jdouble c = OrgApacheLuceneUtilGeoProjectionUtils_FLATTENING / 16 * cosSqAlpha * (4 + OrgApacheLuceneUtilGeoProjectionUtils_FLATTENING * (4 - 3 * cosSqAlpha));
  jdouble lam = lambda - (1 - c) * OrgApacheLuceneUtilGeoProjectionUtils_FLATTENING * sinAlpha * (sigma + c * sinSigma * (cos2SigmaM + c * cosSigma * (-1 + 2 * cos2SigmaM * cos2SigmaM)));
  *IOSDoubleArray_GetRef(nil_chk(pt), 0) = lon + JavaLangStrictMath_toDegreesWithDouble_(lam);
  *IOSDoubleArray_GetRef(pt, 1) = JavaLangStrictMath_toDegreesWithDouble_(lat2);
  return pt;
}

void OrgApacheLuceneUtilGeoProjectionUtils_init(OrgApacheLuceneUtilGeoProjectionUtils *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilGeoProjectionUtils *new_OrgApacheLuceneUtilGeoProjectionUtils_init() {
  OrgApacheLuceneUtilGeoProjectionUtils *self = [OrgApacheLuceneUtilGeoProjectionUtils alloc];
  OrgApacheLuceneUtilGeoProjectionUtils_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilGeoProjectionUtils)