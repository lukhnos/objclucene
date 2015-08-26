//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/IndexFormatTooOldException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexIndexFormatTooOldException_INCLUDE_ALL")
#if OrgApacheLuceneIndexIndexFormatTooOldException_RESTRICT
#define OrgApacheLuceneIndexIndexFormatTooOldException_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexIndexFormatTooOldException_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexIndexFormatTooOldException_RESTRICT

#if !defined (_OrgApacheLuceneIndexIndexFormatTooOldException_) && (OrgApacheLuceneIndexIndexFormatTooOldException_INCLUDE_ALL || OrgApacheLuceneIndexIndexFormatTooOldException_INCLUDE)
#define _OrgApacheLuceneIndexIndexFormatTooOldException_

#define JavaIoIOException_RESTRICT 1
#define JavaIoIOException_INCLUDE 1
#include "java/io/IOException.h"

@class JavaLangInteger;
@class OrgApacheLuceneStoreDataInput;

@interface OrgApacheLuceneIndexIndexFormatTooOldException : JavaIoIOException

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                              withInt:(jint)version_
                                              withInt:(jint)minVersion
                                              withInt:(jint)maxVersion;

- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                         withNSString:(NSString *)reason;

- (instancetype)initWithNSString:(NSString *)resourceDescription
                         withInt:(jint)version_
                         withInt:(jint)minVersion
                         withInt:(jint)maxVersion;

- (instancetype)initWithNSString:(NSString *)resourceDescription
                    withNSString:(NSString *)reason;

- (JavaLangInteger *)getMaxVersion;

- (JavaLangInteger *)getMinVersion;

- (NSString *)getReason;

- (NSString *)getResourceDescription;

- (JavaLangInteger *)getVersion;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexIndexFormatTooOldException)

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(OrgApacheLuceneIndexIndexFormatTooOldException *self, NSString *resourceDescription, NSString *reason);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(NSString *resourceDescription, NSString *reason) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withNSString_(OrgApacheLuceneIndexIndexFormatTooOldException *self, OrgApacheLuceneStoreDataInput *inArg, NSString *reason);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withNSString_(OrgApacheLuceneStoreDataInput *inArg, NSString *reason) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(OrgApacheLuceneIndexIndexFormatTooOldException *self, NSString *resourceDescription, jint version_, jint minVersion, jint maxVersion);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(NSString *resourceDescription, jint version_, jint minVersion, jint maxVersion) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(OrgApacheLuceneIndexIndexFormatTooOldException *self, OrgApacheLuceneStoreDataInput *inArg, jint version_, jint minVersion, jint maxVersion);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint version_, jint minVersion, jint maxVersion) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexFormatTooOldException)

#endif

#pragma pop_macro("OrgApacheLuceneIndexIndexFormatTooOldException_INCLUDE_ALL")
