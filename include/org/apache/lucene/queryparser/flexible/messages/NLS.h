//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/messages/NLS.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleMessagesNLS_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleMessagesNLS_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleMessagesNLS_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleMessagesNLS_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleMessagesNLS_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleMessagesNLS_) && (OrgApacheLuceneQueryparserFlexibleMessagesNLS_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleMessagesNLS_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleMessagesNLS_

@class IOSClass;
@class IOSObjectArray;
@class JavaUtilLocale;

@interface OrgApacheLuceneQueryparserFlexibleMessagesNLS : NSObject

#pragma mark Public

+ (NSString *)getLocalizedMessageWithNSString:(NSString *)key;

+ (NSString *)getLocalizedMessageWithNSString:(NSString *)key
                           withJavaUtilLocale:(JavaUtilLocale *)locale;

+ (NSString *)getLocalizedMessageWithNSString:(NSString *)key
                           withJavaUtilLocale:(JavaUtilLocale *)locale
                            withNSObjectArray:(IOSObjectArray *)args;

+ (NSString *)getLocalizedMessageWithNSString:(NSString *)key
                            withNSObjectArray:(IOSObjectArray *)args;

#pragma mark Protected

- (instancetype)init;

+ (void)initializeMessagesWithNSString:(NSString *)bundleName
                          withIOSClass:(IOSClass *)clazz OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleMessagesNLS)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleMessagesNLS_init(OrgApacheLuceneQueryparserFlexibleMessagesNLS *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleMessagesNLS *new_OrgApacheLuceneQueryparserFlexibleMessagesNLS_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserFlexibleMessagesNLS_getLocalizedMessageWithNSString_(NSString *key);

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserFlexibleMessagesNLS_getLocalizedMessageWithNSString_withJavaUtilLocale_(NSString *key, JavaUtilLocale *locale);

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserFlexibleMessagesNLS_getLocalizedMessageWithNSString_withJavaUtilLocale_withNSObjectArray_(NSString *key, JavaUtilLocale *locale, IOSObjectArray *args);

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserFlexibleMessagesNLS_getLocalizedMessageWithNSString_withNSObjectArray_(NSString *key, IOSObjectArray *args);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleMessagesNLS_initializeMessagesWithNSString_withIOSClass_(NSString *bundleName, IOSClass *clazz);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleMessagesNLS)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleMessagesNLS_INCLUDE_ALL")