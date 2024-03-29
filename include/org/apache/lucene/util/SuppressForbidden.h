//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/SuppressForbidden.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilSuppressForbidden")
#ifdef RESTRICT_OrgApacheLuceneUtilSuppressForbidden
#define INCLUDE_ALL_OrgApacheLuceneUtilSuppressForbidden 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilSuppressForbidden 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilSuppressForbidden

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilSuppressForbidden_) && (INCLUDE_ALL_OrgApacheLuceneUtilSuppressForbidden || defined(INCLUDE_OrgApacheLuceneUtilSuppressForbidden))
#define OrgApacheLuceneUtilSuppressForbidden_

#define RESTRICT_JavaLangAnnotationAnnotation 1
#define INCLUDE_JavaLangAnnotationAnnotation 1
#include "java/lang/annotation/Annotation.h"

@class IOSClass;

/*!
 @brief Annotation to suppress forbidden-apis errors inside a whole class, a method, or a field.
 */
@protocol OrgApacheLuceneUtilSuppressForbidden < JavaLangAnnotationAnnotation >

@property (readonly) NSString *reason;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

@end

@interface OrgApacheLuceneUtilSuppressForbidden : NSObject < OrgApacheLuceneUtilSuppressForbidden > {
 @public
  NSString *reason_;
}

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilSuppressForbidden)

FOUNDATION_EXPORT id<OrgApacheLuceneUtilSuppressForbidden> create_OrgApacheLuceneUtilSuppressForbidden(NSString *reason);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilSuppressForbidden)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilSuppressForbidden")
