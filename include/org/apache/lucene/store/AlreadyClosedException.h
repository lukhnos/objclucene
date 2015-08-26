//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/AlreadyClosedException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneStoreAlreadyClosedException_INCLUDE_ALL")
#if OrgApacheLuceneStoreAlreadyClosedException_RESTRICT
#define OrgApacheLuceneStoreAlreadyClosedException_INCLUDE_ALL 0
#else
#define OrgApacheLuceneStoreAlreadyClosedException_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneStoreAlreadyClosedException_RESTRICT

#if !defined (_OrgApacheLuceneStoreAlreadyClosedException_) && (OrgApacheLuceneStoreAlreadyClosedException_INCLUDE_ALL || OrgApacheLuceneStoreAlreadyClosedException_INCLUDE)
#define _OrgApacheLuceneStoreAlreadyClosedException_

#define JavaLangIllegalStateException_RESTRICT 1
#define JavaLangIllegalStateException_INCLUDE 1
#include "java/lang/IllegalStateException.h"

@class JavaLangThrowable;

@interface OrgApacheLuceneStoreAlreadyClosedException : JavaLangIllegalStateException

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)message;

- (instancetype)initWithNSString:(NSString *)message
           withJavaLangThrowable:(JavaLangThrowable *)cause;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreAlreadyClosedException)

FOUNDATION_EXPORT void OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(OrgApacheLuceneStoreAlreadyClosedException *self, NSString *message);

FOUNDATION_EXPORT OrgApacheLuceneStoreAlreadyClosedException *new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(NSString *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_withJavaLangThrowable_(OrgApacheLuceneStoreAlreadyClosedException *self, NSString *message, JavaLangThrowable *cause);

FOUNDATION_EXPORT OrgApacheLuceneStoreAlreadyClosedException *new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreAlreadyClosedException)

#endif

#pragma pop_macro("OrgApacheLuceneStoreAlreadyClosedException_INCLUDE_ALL")
