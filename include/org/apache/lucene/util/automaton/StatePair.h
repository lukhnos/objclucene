//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/StatePair.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilAutomatonStatePair_INCLUDE_ALL")
#if OrgApacheLuceneUtilAutomatonStatePair_RESTRICT
#define OrgApacheLuceneUtilAutomatonStatePair_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilAutomatonStatePair_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilAutomatonStatePair_RESTRICT

#if !defined (_OrgApacheLuceneUtilAutomatonStatePair_) && (OrgApacheLuceneUtilAutomatonStatePair_INCLUDE_ALL || OrgApacheLuceneUtilAutomatonStatePair_INCLUDE)
#define _OrgApacheLuceneUtilAutomatonStatePair_

@interface OrgApacheLuceneUtilAutomatonStatePair : NSObject {
 @public
  jint s_;
  jint s1_;
  jint s2_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)s1
                    withInt:(jint)s2;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)s
                    withInt:(jint)s1
                    withInt:(jint)s2;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAutomatonStatePair)

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonStatePair_initWithInt_withInt_withInt_(OrgApacheLuceneUtilAutomatonStatePair *self, jint s, jint s1, jint s2);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonStatePair *new_OrgApacheLuceneUtilAutomatonStatePair_initWithInt_withInt_withInt_(jint s, jint s1, jint s2) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonStatePair_initWithInt_withInt_(OrgApacheLuceneUtilAutomatonStatePair *self, jint s1, jint s2);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonStatePair *new_OrgApacheLuceneUtilAutomatonStatePair_initWithInt_withInt_(jint s1, jint s2) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonStatePair)

#endif

#pragma pop_macro("OrgApacheLuceneUtilAutomatonStatePair_INCLUDE_ALL")
