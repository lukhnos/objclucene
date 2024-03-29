//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/LockObtainFailedException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreLockObtainFailedException")
#ifdef RESTRICT_OrgApacheLuceneStoreLockObtainFailedException
#define INCLUDE_ALL_OrgApacheLuceneStoreLockObtainFailedException 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreLockObtainFailedException 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreLockObtainFailedException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneStoreLockObtainFailedException_) && (INCLUDE_ALL_OrgApacheLuceneStoreLockObtainFailedException || defined(INCLUDE_OrgApacheLuceneStoreLockObtainFailedException))
#define OrgApacheLuceneStoreLockObtainFailedException_

#define RESTRICT_JavaIoIOException 1
#define INCLUDE_JavaIoIOException 1
#include "java/io/IOException.h"

@class JavaLangThrowable;

/*!
 @brief This exception is thrown when the <code>write.lock</code>
  could not be acquired.This
  happens when a writer tries to open an index
  that another writer already has open.
 - seealso: LockFactory#obtainLock(Directory, String)
 */
@interface OrgApacheLuceneStoreLockObtainFailedException : JavaIoIOException

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)message;

- (instancetype __nonnull)initWithNSString:(NSString *)message
                     withJavaLangThrowable:(JavaLangThrowable *)cause;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreLockObtainFailedException)

FOUNDATION_EXPORT void OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_(OrgApacheLuceneStoreLockObtainFailedException *self, NSString *message);

FOUNDATION_EXPORT OrgApacheLuceneStoreLockObtainFailedException *new_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_(NSString *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreLockObtainFailedException *create_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_(NSString *message);

FOUNDATION_EXPORT void OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_withJavaLangThrowable_(OrgApacheLuceneStoreLockObtainFailedException *self, NSString *message, JavaLangThrowable *cause);

FOUNDATION_EXPORT OrgApacheLuceneStoreLockObtainFailedException *new_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreLockObtainFailedException *create_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreLockObtainFailedException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreLockObtainFailedException")
