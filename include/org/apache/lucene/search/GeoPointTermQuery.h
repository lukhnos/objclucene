//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/GeoPointTermQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchGeoPointTermQuery_INCLUDE_ALL")
#if OrgApacheLuceneSearchGeoPointTermQuery_RESTRICT
#define OrgApacheLuceneSearchGeoPointTermQuery_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchGeoPointTermQuery_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchGeoPointTermQuery_RESTRICT

#if !defined (_OrgApacheLuceneSearchGeoPointTermQuery_) && (OrgApacheLuceneSearchGeoPointTermQuery_INCLUDE_ALL || OrgApacheLuceneSearchGeoPointTermQuery_INCLUDE)
#define _OrgApacheLuceneSearchGeoPointTermQuery_

#define OrgApacheLuceneSearchMultiTermQuery_RESTRICT 1
#define OrgApacheLuceneSearchMultiTermQuery_INCLUDE 1
#include "org/apache/lucene/search/MultiTermQuery.h"

@class OrgApacheLuceneSearchMultiTermQuery_RewriteMethod;

@interface OrgApacheLuceneSearchGeoPointTermQuery : OrgApacheLuceneSearchMultiTermQuery {
 @public
  jdouble minLon_;
  jdouble minLat_;
  jdouble maxLon_;
  jdouble maxLat_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
                      withDouble:(jdouble)minLon
                      withDouble:(jdouble)minLat
                      withDouble:(jdouble)maxLon
                      withDouble:(jdouble)maxLat;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchGeoPointTermQuery)

FOUNDATION_EXPORT OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *OrgApacheLuceneSearchGeoPointTermQuery_GEO_CONSTANT_SCORE_REWRITE_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchGeoPointTermQuery, GEO_CONSTANT_SCORE_REWRITE_, OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGeoPointTermQuery_initWithNSString_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointTermQuery *self, NSString *field, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGeoPointTermQuery)

#endif

#pragma pop_macro("OrgApacheLuceneSearchGeoPointTermQuery_INCLUDE_ALL")
