//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/mutable/MutableValueLong.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilMutableMutableValueLong")
#ifdef RESTRICT_OrgApacheLuceneUtilMutableMutableValueLong
#define INCLUDE_ALL_OrgApacheLuceneUtilMutableMutableValueLong 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilMutableMutableValueLong 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilMutableMutableValueLong

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilMutableMutableValueLong_) && (INCLUDE_ALL_OrgApacheLuceneUtilMutableMutableValueLong || defined(INCLUDE_OrgApacheLuceneUtilMutableMutableValueLong))
#define OrgApacheLuceneUtilMutableMutableValueLong_

#define RESTRICT_OrgApacheLuceneUtilMutableMutableValue 1
#define INCLUDE_OrgApacheLuceneUtilMutableMutableValue 1
#include "org/apache/lucene/util/mutable/MutableValue.h"

/*!
 @brief <code>MutableValue</code> implementation of type <code>long</code>.
 When mutating instances of this object, the caller is responsible for ensuring 
  that any instance where <code>exists</code> is set to <code>false</code> must also  
 <code>value</code> set to <code>0L</code> for proper operation.
 */
@interface OrgApacheLuceneUtilMutableMutableValueLong : OrgApacheLuceneUtilMutableMutableValue {
 @public
  jlong value_;
}

#pragma mark Public

- (instancetype __nonnull)init;

- (jint)compareSameTypeWithId:(id)other;

- (void)copy__WithOrgApacheLuceneUtilMutableMutableValue:(OrgApacheLuceneUtilMutableMutableValue *)source OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneUtilMutableMutableValue *)duplicate;

- (jboolean)equalsSameTypeWithId:(id)other;

- (NSUInteger)hash;

- (id)toObject;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilMutableMutableValueLong)

FOUNDATION_EXPORT void OrgApacheLuceneUtilMutableMutableValueLong_init(OrgApacheLuceneUtilMutableMutableValueLong *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilMutableMutableValueLong *new_OrgApacheLuceneUtilMutableMutableValueLong_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilMutableMutableValueLong *create_OrgApacheLuceneUtilMutableMutableValueLong_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilMutableMutableValueLong)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilMutableMutableValueLong")
