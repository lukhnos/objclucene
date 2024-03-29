//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/mutable/MutableValueFloat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilMutableMutableValueFloat")
#ifdef RESTRICT_OrgApacheLuceneUtilMutableMutableValueFloat
#define INCLUDE_ALL_OrgApacheLuceneUtilMutableMutableValueFloat 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilMutableMutableValueFloat 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilMutableMutableValueFloat

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilMutableMutableValueFloat_) && (INCLUDE_ALL_OrgApacheLuceneUtilMutableMutableValueFloat || defined(INCLUDE_OrgApacheLuceneUtilMutableMutableValueFloat))
#define OrgApacheLuceneUtilMutableMutableValueFloat_

#define RESTRICT_OrgApacheLuceneUtilMutableMutableValue 1
#define INCLUDE_OrgApacheLuceneUtilMutableMutableValue 1
#include "org/apache/lucene/util/mutable/MutableValue.h"

/*!
 @brief <code>MutableValue</code> implementation of type <code>float</code>.
 When mutating instances of this object, the caller is responsible for ensuring 
  that any instance where <code>exists</code> is set to <code>false</code> must also  
 <code>value</code> set to <code>0.0F</code> for proper operation.
 */
@interface OrgApacheLuceneUtilMutableMutableValueFloat : OrgApacheLuceneUtilMutableMutableValue {
 @public
  jfloat value_;
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

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilMutableMutableValueFloat)

FOUNDATION_EXPORT void OrgApacheLuceneUtilMutableMutableValueFloat_init(OrgApacheLuceneUtilMutableMutableValueFloat *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilMutableMutableValueFloat *new_OrgApacheLuceneUtilMutableMutableValueFloat_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilMutableMutableValueFloat *create_OrgApacheLuceneUtilMutableMutableValueFloat_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilMutableMutableValueFloat)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilMutableMutableValueFloat")
