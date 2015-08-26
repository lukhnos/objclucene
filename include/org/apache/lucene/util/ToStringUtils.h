//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/ToStringUtils.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilToStringUtils_INCLUDE_ALL")
#if OrgApacheLuceneUtilToStringUtils_RESTRICT
#define OrgApacheLuceneUtilToStringUtils_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilToStringUtils_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilToStringUtils_RESTRICT

#if !defined (_OrgApacheLuceneUtilToStringUtils_) && (OrgApacheLuceneUtilToStringUtils_INCLUDE_ALL || OrgApacheLuceneUtilToStringUtils_INCLUDE)
#define _OrgApacheLuceneUtilToStringUtils_

@class IOSByteArray;
@class JavaLangStringBuilder;

@interface OrgApacheLuceneUtilToStringUtils : NSObject

#pragma mark Public

+ (NSString *)boostWithFloat:(jfloat)boost;

+ (void)byteArrayWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer
                             withByteArray:(IOSByteArray *)bytes;

+ (NSString *)longHexWithLong:(jlong)x;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilToStringUtils)

FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilToStringUtils_boostWithFloat_(jfloat boost);

FOUNDATION_EXPORT void OrgApacheLuceneUtilToStringUtils_byteArrayWithJavaLangStringBuilder_withByteArray_(JavaLangStringBuilder *buffer, IOSByteArray *bytes);

FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilToStringUtils_longHexWithLong_(jlong x);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilToStringUtils)

#endif

#pragma pop_macro("OrgApacheLuceneUtilToStringUtils_INCLUDE_ALL")
