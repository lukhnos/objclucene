//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/GeoPointInPolygonQuery.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/search/GeoBoundingBox.h"
#include "org/apache/lucene/search/GeoPointInBBoxQueryImpl.h"
#include "org/apache/lucene/search/GeoPointInPolygonQuery.h"
#include "org/apache/lucene/search/GeoPointTermsEnum.h"
#include "org/apache/lucene/search/MultiTermQuery.h"
#include "org/apache/lucene/util/AttributeSource.h"
#include "org/apache/lucene/util/GeoUtils.h"
#include "org/apache/lucene/util/ToStringUtils.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/GeoPointInPolygonQuery must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchGeoPointInPolygonQuery () {
 @public
  IOSDoubleArray *x_;
  IOSDoubleArray *y_;
}

/*!
 @brief Common constructor, used only internally.
 */
- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchGeoBoundingBox:(OrgApacheLuceneSearchGeoBoundingBox *)bbox
                 withDoubleArray:(IOSDoubleArray *)polyLons
                 withDoubleArray:(IOSDoubleArray *)polyLats;

- (IOSDoubleArray *)toleranceConversionWithDoubleArray:(IOSDoubleArray *)vals;

+ (OrgApacheLuceneSearchGeoBoundingBox *)computeBBoxWithDoubleArray:(IOSDoubleArray *)polyLons
                                                    withDoubleArray:(IOSDoubleArray *)polyLats;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGeoPointInPolygonQuery, x_, IOSDoubleArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGeoPointInPolygonQuery, y_, IOSDoubleArray *)

__attribute__((unused)) static void OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_(OrgApacheLuceneSearchGeoPointInPolygonQuery *self, NSString *field, OrgApacheLuceneSearchGeoBoundingBox *bbox, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats);

__attribute__((unused)) static OrgApacheLuceneSearchGeoPointInPolygonQuery *new_OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_(NSString *field, OrgApacheLuceneSearchGeoBoundingBox *bbox, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchGeoPointInPolygonQuery *create_OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_(NSString *field, OrgApacheLuceneSearchGeoBoundingBox *bbox, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats);

__attribute__((unused)) static IOSDoubleArray *OrgApacheLuceneSearchGeoPointInPolygonQuery_toleranceConversionWithDoubleArray_(OrgApacheLuceneSearchGeoPointInPolygonQuery *self, IOSDoubleArray *vals);

__attribute__((unused)) static OrgApacheLuceneSearchGeoBoundingBox *OrgApacheLuceneSearchGeoPointInPolygonQuery_computeBBoxWithDoubleArray_withDoubleArray_(IOSDoubleArray *polyLons, IOSDoubleArray *polyLats);

/*!
 @brief Custom <code>org.apache.lucene.index.TermsEnum</code> that computes morton hash ranges based on the defined edges of
  the provided polygon.
 */
@interface OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum : OrgApacheLuceneSearchGeoPointTermsEnum {
 @public
  OrgApacheLuceneSearchGeoPointInPolygonQuery *this$0_;
}

- (instancetype)initWithOrgApacheLuceneSearchGeoPointInPolygonQuery:(OrgApacheLuceneSearchGeoPointInPolygonQuery *)outer$
                                  withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)tenum
                                                         withDouble:(jdouble)minLon
                                                         withDouble:(jdouble)minLat
                                                         withDouble:(jdouble)maxLon
                                                         withDouble:(jdouble)maxLat;

- (jboolean)cellCrossesWithDouble:(jdouble)minLon
                       withDouble:(jdouble)minLat
                       withDouble:(jdouble)maxLon
                       withDouble:(jdouble)maxLat;

- (jboolean)cellWithinWithDouble:(jdouble)minLon
                      withDouble:(jdouble)minLat
                      withDouble:(jdouble)maxLon
                      withDouble:(jdouble)maxLat;

- (jboolean)cellIntersectsShapeWithDouble:(jdouble)minLon
                               withDouble:(jdouble)minLat
                               withDouble:(jdouble)maxLon
                               withDouble:(jdouble)maxLat;

/*!
 @brief The two-phase query approach.The parent 
 <code>org.apache.lucene.search.GeoPointTermsEnum.accept</code> method is called to match
  encoded terms that fall within the bounding box of the polygon.
 Those documents that pass the initial
  bounding box filter are then compared to the provided polygon using the 
 <code>org.apache.lucene.util.GeoUtils.pointInPolygon</code> method.
 */
- (jboolean)postFilterWithDouble:(jdouble)lon
                      withDouble:(jdouble)lat;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum)

__attribute__((unused)) static void OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum_initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum *self, OrgApacheLuceneSearchGeoPointInPolygonQuery *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat);

__attribute__((unused)) static OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum *new_OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum_initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointInPolygonQuery *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum *create_OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum_initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointInPolygonQuery *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum)

@implementation OrgApacheLuceneSearchGeoPointInPolygonQuery

- (instancetype)initWithNSString:(NSString *)field
                 withDoubleArray:(IOSDoubleArray *)polyLons
                 withDoubleArray:(IOSDoubleArray *)polyLats {
  OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withDoubleArray_withDoubleArray_(self, field, polyLons, polyLats);
  return self;
}

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchGeoBoundingBox:(OrgApacheLuceneSearchGeoBoundingBox *)bbox
                 withDoubleArray:(IOSDoubleArray *)polyLons
                 withDoubleArray:(IOSDoubleArray *)polyLats {
  OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_(self, field, bbox, polyLons, polyLats);
  return self;
}

- (IOSDoubleArray *)toleranceConversionWithDoubleArray:(IOSDoubleArray *)vals {
  return OrgApacheLuceneSearchGeoPointInPolygonQuery_toleranceConversionWithDoubleArray_(self, vals);
}

- (OrgApacheLuceneIndexTermsEnum *)getTermsEnumWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms
                                      withOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)atts {
  return create_OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum_initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(self, [((OrgApacheLuceneIndexTerms *) nil_chk(terms)) iterator], self->minLon_, self->minLat_, self->maxLon_, self->maxLat_);
}

- (void)setRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:(OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)method {
  @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"cannot change rewrite method");
}

- (jboolean)isEqual:(id)o {
  if (JreObjectEqualsEquals(self, o)) return true;
  if (o == nil || !JreObjectEqualsEquals([self java_getClass], [o java_getClass])) return false;
  if (![super isEqual:o]) return false;
  OrgApacheLuceneSearchGeoPointInPolygonQuery *that = (OrgApacheLuceneSearchGeoPointInPolygonQuery *) cast_chk(o, [OrgApacheLuceneSearchGeoPointInPolygonQuery class]);
  if (!JavaUtilArrays_equalsWithDoubleArray_withDoubleArray_(x_, that->x_)) return false;
  if (!JavaUtilArrays_equalsWithDoubleArray_withDoubleArray_(y_, that->y_)) return false;
  return true;
}

- (NSUInteger)hash {
  jint result = ((jint) [super hash]);
  result = 31 * result + (x_ != nil ? JavaUtilArrays_hashCodeWithDoubleArray_(x_) : 0);
  result = 31 * result + (y_ != nil ? JavaUtilArrays_hashCodeWithDoubleArray_(y_) : 0);
  return result;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JreAssert(((IOSDoubleArray *) nil_chk(x_))->size_ == ((IOSDoubleArray *) nil_chk(y_))->size_, @"org/apache/lucene/search/GeoPointInPolygonQuery.java:124 condition failed: assert x.length == y.length;");
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  [sb appendWithNSString:[[self java_getClass] getSimpleName]];
  [sb appendWithChar:':'];
  if (![((NSString *) nil_chk([self getField])) isEqual:field]) {
    [sb appendWithNSString:@" field="];
    [sb appendWithNSString:[self getField]];
    [sb appendWithChar:':'];
  }
  [sb appendWithNSString:@" Points: "];
  for (jint i = 0; i < x_->size_; ++i) {
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:@"["])) appendWithDouble:IOSDoubleArray_Get(x_, i)])) appendWithNSString:@", "])) appendWithDouble:IOSDoubleArray_Get(y_, i)])) appendWithNSString:@"] "];
  }
  [sb appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [sb description];
}

+ (OrgApacheLuceneSearchGeoBoundingBox *)computeBBoxWithDoubleArray:(IOSDoubleArray *)polyLons
                                                    withDoubleArray:(IOSDoubleArray *)polyLats {
  return OrgApacheLuceneSearchGeoPointInPolygonQuery_computeBBoxWithDoubleArray_withDoubleArray_(polyLons, polyLats);
}

- (IOSDoubleArray *)getLons {
  return self->x_;
}

- (IOSDoubleArray *)getLats {
  return self->y_;
}

- (void)dealloc {
  RELEASE_(x_);
  RELEASE_(y_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, 1, -1, -1, -1, -1 },
    { NULL, "[D", 0x2, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermsEnum;", 0x4, 4, 5, 6, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 11, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchGeoBoundingBox;", 0xa, 14, 15, -1, -1, -1, -1 },
    { NULL, "[D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[D", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withDoubleArray:withDoubleArray:);
  methods[1].selector = @selector(initWithNSString:withOrgApacheLuceneSearchGeoBoundingBox:withDoubleArray:withDoubleArray:);
  methods[2].selector = @selector(toleranceConversionWithDoubleArray:);
  methods[3].selector = @selector(getTermsEnumWithOrgApacheLuceneIndexTerms:withOrgApacheLuceneUtilAttributeSource:);
  methods[4].selector = @selector(setRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:);
  methods[5].selector = @selector(isEqual:);
  methods[6].selector = @selector(hash);
  methods[7].selector = @selector(toStringWithNSString:);
  methods[8].selector = @selector(computeBBoxWithDoubleArray:withDoubleArray:);
  methods[9].selector = @selector(getLons);
  methods[10].selector = @selector(getLats);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "x_", "[D", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "y_", "[D", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;[D[D", "LNSString;LOrgApacheLuceneSearchGeoBoundingBox;[D[D", "toleranceConversion", "[D", "getTermsEnum", "LOrgApacheLuceneIndexTerms;LOrgApacheLuceneUtilAttributeSource;", "LJavaIoIOException;", "setRewriteMethod", "LOrgApacheLuceneSearchMultiTermQuery_RewriteMethod;", "equals", "LNSObject;", "hashCode", "toString", "LNSString;", "computeBBox", "[D[D", "LOrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGeoPointInPolygonQuery = { "GeoPointInPolygonQuery", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x11, 11, 2, -1, 16, -1, -1, -1 };
  return &_OrgApacheLuceneSearchGeoPointInPolygonQuery;
}

@end

void OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withDoubleArray_withDoubleArray_(OrgApacheLuceneSearchGeoPointInPolygonQuery *self, NSString *field, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats) {
  OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_(self, field, OrgApacheLuceneSearchGeoPointInPolygonQuery_computeBBoxWithDoubleArray_withDoubleArray_(polyLons, polyLats), polyLons, polyLats);
}

OrgApacheLuceneSearchGeoPointInPolygonQuery *new_OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withDoubleArray_withDoubleArray_(NSString *field, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGeoPointInPolygonQuery, initWithNSString_withDoubleArray_withDoubleArray_, field, polyLons, polyLats)
}

OrgApacheLuceneSearchGeoPointInPolygonQuery *create_OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withDoubleArray_withDoubleArray_(NSString *field, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGeoPointInPolygonQuery, initWithNSString_withDoubleArray_withDoubleArray_, field, polyLons, polyLats)
}

void OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_(OrgApacheLuceneSearchGeoPointInPolygonQuery *self, NSString *field, OrgApacheLuceneSearchGeoBoundingBox *bbox, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats) {
  OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_initPackagePrivateWithNSString_withDouble_withDouble_withDouble_withDouble_(self, field, ((OrgApacheLuceneSearchGeoBoundingBox *) nil_chk(bbox))->minLon_, bbox->minLat_, bbox->maxLon_, bbox->maxLat_);
  if (((IOSDoubleArray *) nil_chk(polyLats))->size_ != ((IOSDoubleArray *) nil_chk(polyLons))->size_) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"polyLats and polyLons must be equal length");
  }
  if (polyLats->size_ < 4) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"at least 4 polygon points required");
  }
  if (IOSDoubleArray_Get(polyLats, 0) != IOSDoubleArray_Get(polyLats, polyLats->size_ - 1)) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$D$I$D", @"first and last points of the polygon must be the same (it must close itself): polyLats[0]=", IOSDoubleArray_Get(polyLats, 0), @" polyLats[", (polyLats->size_ - 1), @"]=", IOSDoubleArray_Get(polyLats, polyLats->size_ - 1)));
  }
  if (IOSDoubleArray_Get(polyLons, 0) != IOSDoubleArray_Get(polyLons, polyLons->size_ - 1)) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$D$I$D", @"first and last points of the polygon must be the same (it must close itself): polyLons[0]=", IOSDoubleArray_Get(polyLons, 0), @" polyLons[", (polyLons->size_ - 1), @"]=", IOSDoubleArray_Get(polyLons, polyLons->size_ - 1)));
  }
  JreStrongAssign(&self->x_, OrgApacheLuceneSearchGeoPointInPolygonQuery_toleranceConversionWithDoubleArray_(self, polyLons));
  JreStrongAssign(&self->y_, OrgApacheLuceneSearchGeoPointInPolygonQuery_toleranceConversionWithDoubleArray_(self, polyLats));
}

OrgApacheLuceneSearchGeoPointInPolygonQuery *new_OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_(NSString *field, OrgApacheLuceneSearchGeoBoundingBox *bbox, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGeoPointInPolygonQuery, initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_, field, bbox, polyLons, polyLats)
}

OrgApacheLuceneSearchGeoPointInPolygonQuery *create_OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_(NSString *field, OrgApacheLuceneSearchGeoBoundingBox *bbox, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGeoPointInPolygonQuery, initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_, field, bbox, polyLons, polyLats)
}

IOSDoubleArray *OrgApacheLuceneSearchGeoPointInPolygonQuery_toleranceConversionWithDoubleArray_(OrgApacheLuceneSearchGeoPointInPolygonQuery *self, IOSDoubleArray *vals) {
  for (jint i = 0; i < ((IOSDoubleArray *) nil_chk(vals))->size_; ++i) {
    *IOSDoubleArray_GetRef(vals, i) = (JreFpToInt((IOSDoubleArray_Get(vals, i) / OrgApacheLuceneUtilGeoUtils_TOLERANCE))) * OrgApacheLuceneUtilGeoUtils_TOLERANCE;
  }
  return vals;
}

OrgApacheLuceneSearchGeoBoundingBox *OrgApacheLuceneSearchGeoPointInPolygonQuery_computeBBoxWithDoubleArray_withDoubleArray_(IOSDoubleArray *polyLons, IOSDoubleArray *polyLats) {
  OrgApacheLuceneSearchGeoPointInPolygonQuery_initialize();
  if (((IOSDoubleArray *) nil_chk(polyLons))->size_ != ((IOSDoubleArray *) nil_chk(polyLats))->size_) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"polyLons and polyLats must be equal length");
  }
  jdouble minLon = JavaLangDouble_POSITIVE_INFINITY;
  jdouble maxLon = JavaLangDouble_NEGATIVE_INFINITY;
  jdouble minLat = JavaLangDouble_POSITIVE_INFINITY;
  jdouble maxLat = JavaLangDouble_NEGATIVE_INFINITY;
  for (jint i = 0; i < polyLats->size_; i++) {
    if (OrgApacheLuceneUtilGeoUtils_isValidLonWithDouble_(IOSDoubleArray_Get(polyLons, i)) == false) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$D", @"invalid polyLons[", i, @"]=", IOSDoubleArray_Get(polyLons, i)));
    }
    if (OrgApacheLuceneUtilGeoUtils_isValidLatWithDouble_(IOSDoubleArray_Get(polyLats, i)) == false) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$D", @"invalid polyLats[", i, @"]=", IOSDoubleArray_Get(polyLats, i)));
    }
    minLon = JavaLangMath_minWithDouble_withDouble_(IOSDoubleArray_Get(polyLons, i), minLon);
    maxLon = JavaLangMath_maxWithDouble_withDouble_(IOSDoubleArray_Get(polyLons, i), maxLon);
    minLat = JavaLangMath_minWithDouble_withDouble_(IOSDoubleArray_Get(polyLats, i), minLat);
    maxLat = JavaLangMath_maxWithDouble_withDouble_(IOSDoubleArray_Get(polyLats, i), maxLat);
  }
  return create_OrgApacheLuceneSearchGeoBoundingBox_initPackagePrivateWithDouble_withDouble_withDouble_withDouble_(minLon, maxLon, minLat, maxLat);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGeoPointInPolygonQuery)

@implementation OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum

- (instancetype)initWithOrgApacheLuceneSearchGeoPointInPolygonQuery:(OrgApacheLuceneSearchGeoPointInPolygonQuery *)outer$
                                  withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)tenum
                                                         withDouble:(jdouble)minLon
                                                         withDouble:(jdouble)minLat
                                                         withDouble:(jdouble)maxLon
                                                         withDouble:(jdouble)maxLat {
  OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum_initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(self, outer$, tenum, minLon, minLat, maxLon, maxLat);
  return self;
}

- (jboolean)cellCrossesWithDouble:(jdouble)minLon
                       withDouble:(jdouble)minLat
                       withDouble:(jdouble)maxLon
                       withDouble:(jdouble)maxLat {
  return OrgApacheLuceneUtilGeoUtils_rectCrossesPolyWithDouble_withDouble_withDouble_withDouble_withDoubleArray_withDoubleArray_withDouble_withDouble_withDouble_withDouble_(minLon, minLat, maxLon, maxLat, this$0_->x_, this$0_->y_, this$0_->minLon_, this$0_->minLat_, this$0_->maxLon_, this$0_->maxLat_);
}

- (jboolean)cellWithinWithDouble:(jdouble)minLon
                      withDouble:(jdouble)minLat
                      withDouble:(jdouble)maxLon
                      withDouble:(jdouble)maxLat {
  return OrgApacheLuceneUtilGeoUtils_rectWithinPolyWithDouble_withDouble_withDouble_withDouble_withDoubleArray_withDoubleArray_withDouble_withDouble_withDouble_withDouble_(minLon, minLat, maxLon, maxLat, this$0_->x_, this$0_->y_, this$0_->minLon_, this$0_->minLat_, this$0_->maxLon_, this$0_->maxLat_);
}

- (jboolean)cellIntersectsShapeWithDouble:(jdouble)minLon
                               withDouble:(jdouble)minLat
                               withDouble:(jdouble)maxLon
                               withDouble:(jdouble)maxLat {
  return [self cellWithinWithDouble:minLon withDouble:minLat withDouble:maxLon withDouble:maxLat] || [self cellCrossesWithDouble:minLon withDouble:minLat withDouble:maxLon withDouble:maxLat];
}

- (jboolean)postFilterWithDouble:(jdouble)lon
                      withDouble:(jdouble)lat {
  return OrgApacheLuceneUtilGeoUtils_pointInPolygonWithDoubleArray_withDoubleArray_withDouble_withDouble_(this$0_->x_, this$0_->y_, lat, lon);
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 3, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 4, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchGeoPointInPolygonQuery:withOrgApacheLuceneIndexTermsEnum:withDouble:withDouble:withDouble:withDouble:);
  methods[1].selector = @selector(cellCrossesWithDouble:withDouble:withDouble:withDouble:);
  methods[2].selector = @selector(cellWithinWithDouble:withDouble:withDouble:withDouble:);
  methods[3].selector = @selector(cellIntersectsShapeWithDouble:withDouble:withDouble:withDouble:);
  methods[4].selector = @selector(postFilterWithDouble:withDouble:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchGeoPointInPolygonQuery;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchGeoPointInPolygonQuery;LOrgApacheLuceneIndexTermsEnum;DDDD", "cellCrosses", "DDDD", "cellWithin", "cellIntersectsShape", "postFilter", "DD", "LOrgApacheLuceneSearchGeoPointInPolygonQuery;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum = { "GeoPolygonTermsEnum", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x12, 5, 1, 7, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum;
}

@end

void OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum_initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum *self, OrgApacheLuceneSearchGeoPointInPolygonQuery *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchGeoPointTermsEnum_initPackagePrivateWithOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(self, tenum, minLon, minLat, maxLon, maxLat);
}

OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum *new_OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum_initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointInPolygonQuery *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum, initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_, outer$, tenum, minLon, minLat, maxLon, maxLat)
}

OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum *create_OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum_initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointInPolygonQuery *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum, initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_, outer$, tenum, minLon, minLat, maxLon, maxLat)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum)
