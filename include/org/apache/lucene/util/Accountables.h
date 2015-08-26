//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/Accountables.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilAccountables_INCLUDE_ALL")
#if OrgApacheLuceneUtilAccountables_RESTRICT
#define OrgApacheLuceneUtilAccountables_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilAccountables_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilAccountables_RESTRICT

#if !defined (_OrgApacheLuceneUtilAccountables_) && (OrgApacheLuceneUtilAccountables_INCLUDE_ALL || OrgApacheLuceneUtilAccountables_INCLUDE)
#define _OrgApacheLuceneUtilAccountables_

@protocol JavaUtilCollection;
@protocol JavaUtilMap;
@protocol OrgApacheLuceneUtilAccountable;

@interface OrgApacheLuceneUtilAccountables : NSObject

#pragma mark Public

+ (id<OrgApacheLuceneUtilAccountable>)namedAccountableWithNSString:(NSString *)description_
                                withOrgApacheLuceneUtilAccountable:(id<OrgApacheLuceneUtilAccountable>)inArg;

+ (id<OrgApacheLuceneUtilAccountable>)namedAccountableWithNSString:(NSString *)description_
                                            withJavaUtilCollection:(id<JavaUtilCollection>)children
                                                          withLong:(jlong)bytes;

+ (id<OrgApacheLuceneUtilAccountable>)namedAccountableWithNSString:(NSString *)description_
                                                          withLong:(jlong)bytes;

+ (id<JavaUtilCollection>)namedAccountablesWithNSString:(NSString *)prefix
                                        withJavaUtilMap:(id<JavaUtilMap>)inArg;

+ (NSString *)toStringWithOrgApacheLuceneUtilAccountable:(id<OrgApacheLuceneUtilAccountable>)a;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAccountables)

FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilAccountables_toStringWithOrgApacheLuceneUtilAccountable_(id<OrgApacheLuceneUtilAccountable> a);

FOUNDATION_EXPORT id<OrgApacheLuceneUtilAccountable> OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(NSString *description_, id<OrgApacheLuceneUtilAccountable> inArg);

FOUNDATION_EXPORT id<OrgApacheLuceneUtilAccountable> OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withLong_(NSString *description_, jlong bytes);

FOUNDATION_EXPORT id<JavaUtilCollection> OrgApacheLuceneUtilAccountables_namedAccountablesWithNSString_withJavaUtilMap_(NSString *prefix, id<JavaUtilMap> inArg);

FOUNDATION_EXPORT id<OrgApacheLuceneUtilAccountable> OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withJavaUtilCollection_withLong_(NSString *description_, id<JavaUtilCollection> children, jlong bytes);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAccountables)

#endif

#pragma pop_macro("OrgApacheLuceneUtilAccountables_INCLUDE_ALL")
