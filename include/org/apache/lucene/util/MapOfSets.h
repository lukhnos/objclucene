//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/MapOfSets.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilMapOfSets_INCLUDE_ALL")
#if OrgApacheLuceneUtilMapOfSets_RESTRICT
#define OrgApacheLuceneUtilMapOfSets_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilMapOfSets_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilMapOfSets_RESTRICT

#if !defined (_OrgApacheLuceneUtilMapOfSets_) && (OrgApacheLuceneUtilMapOfSets_INCLUDE_ALL || OrgApacheLuceneUtilMapOfSets_INCLUDE)
#define _OrgApacheLuceneUtilMapOfSets_

@protocol JavaUtilCollection;
@protocol JavaUtilMap;

@interface OrgApacheLuceneUtilMapOfSets : NSObject

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)m;

- (id<JavaUtilMap>)getMap;

- (jint)putWithId:(id)key
           withId:(id)val;

- (jint)putAllWithId:(id)key
withJavaUtilCollection:(id<JavaUtilCollection>)vals;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilMapOfSets)

FOUNDATION_EXPORT void OrgApacheLuceneUtilMapOfSets_initWithJavaUtilMap_(OrgApacheLuceneUtilMapOfSets *self, id<JavaUtilMap> m);

FOUNDATION_EXPORT OrgApacheLuceneUtilMapOfSets *new_OrgApacheLuceneUtilMapOfSets_initWithJavaUtilMap_(id<JavaUtilMap> m) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilMapOfSets)

#endif

#pragma pop_macro("OrgApacheLuceneUtilMapOfSets_INCLUDE_ALL")
