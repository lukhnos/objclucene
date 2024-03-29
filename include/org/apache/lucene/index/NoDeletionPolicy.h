//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/NoDeletionPolicy.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexNoDeletionPolicy")
#ifdef RESTRICT_OrgApacheLuceneIndexNoDeletionPolicy
#define INCLUDE_ALL_OrgApacheLuceneIndexNoDeletionPolicy 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexNoDeletionPolicy 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexNoDeletionPolicy

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexNoDeletionPolicy_) && (INCLUDE_ALL_OrgApacheLuceneIndexNoDeletionPolicy || defined(INCLUDE_OrgApacheLuceneIndexNoDeletionPolicy))
#define OrgApacheLuceneIndexNoDeletionPolicy_

#define RESTRICT_OrgApacheLuceneIndexIndexDeletionPolicy 1
#define INCLUDE_OrgApacheLuceneIndexIndexDeletionPolicy 1
#include "org/apache/lucene/index/IndexDeletionPolicy.h"

@protocol JavaUtilList;

/*!
 @brief An <code>IndexDeletionPolicy</code> which keeps all index commits around, never
  deleting them.This class is a singleton and can be accessed by referencing 
 <code>INSTANCE</code>.
 */
@interface OrgApacheLuceneIndexNoDeletionPolicy : OrgApacheLuceneIndexIndexDeletionPolicy
@property (readonly, class, strong) OrgApacheLuceneIndexIndexDeletionPolicy *INSTANCE NS_SWIFT_NAME(INSTANCE);

#pragma mark Public

- (OrgApacheLuceneIndexIndexDeletionPolicy *)java_clone;

- (void)onCommitWithJavaUtilList:(id<JavaUtilList>)commits;

- (void)onInitWithJavaUtilList:(id<JavaUtilList>)commits;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexNoDeletionPolicy)

/*!
 @brief The single instance of this class.
 */
inline OrgApacheLuceneIndexIndexDeletionPolicy *OrgApacheLuceneIndexNoDeletionPolicy_get_INSTANCE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneIndexIndexDeletionPolicy *OrgApacheLuceneIndexNoDeletionPolicy_INSTANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexNoDeletionPolicy, INSTANCE, OrgApacheLuceneIndexIndexDeletionPolicy *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexNoDeletionPolicy)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexNoDeletionPolicy")
