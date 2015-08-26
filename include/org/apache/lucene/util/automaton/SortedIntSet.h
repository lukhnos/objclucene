//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/SortedIntSet.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilAutomatonSortedIntSet_INCLUDE_ALL")
#if OrgApacheLuceneUtilAutomatonSortedIntSet_RESTRICT
#define OrgApacheLuceneUtilAutomatonSortedIntSet_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilAutomatonSortedIntSet_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilAutomatonSortedIntSet_RESTRICT

#if !defined (_OrgApacheLuceneUtilAutomatonSortedIntSet_) && (OrgApacheLuceneUtilAutomatonSortedIntSet_INCLUDE_ALL || OrgApacheLuceneUtilAutomatonSortedIntSet_INCLUDE)
#define _OrgApacheLuceneUtilAutomatonSortedIntSet_

@class IOSIntArray;
@class OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet;

@interface OrgApacheLuceneUtilAutomatonSortedIntSet : NSObject {
 @public
  IOSIntArray *values_;
  IOSIntArray *counts_;
  jint upto_;
  jint state_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)capacity;

- (void)computeHash;

- (void)decrWithInt:(jint)num;

- (jboolean)isEqual:(id)_other;

- (OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *)freezeWithInt:(jint)state;

- (NSUInteger)hash;

- (void)incrWithInt:(jint)num;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAutomatonSortedIntSet)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonSortedIntSet, values_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonSortedIntSet, counts_, IOSIntArray *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonSortedIntSet_initWithInt_(OrgApacheLuceneUtilAutomatonSortedIntSet *self, jint capacity);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonSortedIntSet *new_OrgApacheLuceneUtilAutomatonSortedIntSet_initWithInt_(jint capacity) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonSortedIntSet)

#endif

#if !defined (_OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_) && (OrgApacheLuceneUtilAutomatonSortedIntSet_INCLUDE_ALL || OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_INCLUDE)
#define _OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_

@class IOSIntArray;

@interface OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet : NSObject {
 @public
  IOSIntArray *values_;
  jint hashCode_;
  jint state_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)num
                    withInt:(jint)state;

- (instancetype)initWithIntArray:(IOSIntArray *)values
                         withInt:(jint)hashCode
                         withInt:(jint)state;

- (jboolean)isEqual:(id)_other;

- (NSUInteger)hash;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet, values_, IOSIntArray *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithIntArray_withInt_withInt_(OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *self, IOSIntArray *values, jint hashCode, jint state);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *new_OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithIntArray_withInt_withInt_(IOSIntArray *values, jint hashCode, jint state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithInt_withInt_(OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *self, jint num, jint state);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *new_OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithInt_withInt_(jint num, jint state) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet)

#endif

#pragma pop_macro("OrgApacheLuceneUtilAutomatonSortedIntSet_INCLUDE_ALL")
