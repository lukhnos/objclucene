//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/util/UnescapedCharSequence.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_) && (OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_

#define JavaLangCharSequence_RESTRICT 1
#define JavaLangCharSequence_INCLUDE 1
#include "java/lang/CharSequence.h"

@class IOSBooleanArray;
@class IOSCharArray;
@class JavaUtilLocale;

@interface OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence : NSObject < JavaLangCharSequence >

#pragma mark Public

- (instancetype)initWithCharArray:(IOSCharArray *)chars
                 withBooleanArray:(IOSBooleanArray *)wasEscaped
                          withInt:(jint)offset
                          withInt:(jint)length;

- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)text;

- (jchar)charAtWithInt:(jint)index;

- (jint)length;

- (id<JavaLangCharSequence>)subSequenceFrom:(jint)start
                                         to:(jint)end;

+ (id<JavaLangCharSequence>)toLowerCaseWithJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                             withJavaUtilLocale:(JavaUtilLocale *)locale;

- (NSString *)description;

- (NSString *)toStringEscaped;

- (NSString *)toStringEscapedWithCharArray:(IOSCharArray *)enabledChars;

+ (jboolean)wasEscapedWithJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                       withInt:(jint)index;

- (jboolean)wasEscapedWithInt:(jint)index;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithCharArray_withBooleanArray_withInt_withInt_(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *self, IOSCharArray *chars, IOSBooleanArray *wasEscaped, jint offset, jint length);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *new_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithCharArray_withBooleanArray_withInt_withInt_(IOSCharArray *chars, IOSBooleanArray *wasEscaped, jint offset, jint length) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithJavaLangCharSequence_(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *self, id<JavaLangCharSequence> text);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *new_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithJavaLangCharSequence_(id<JavaLangCharSequence> text) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT jboolean OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_wasEscapedWithJavaLangCharSequence_withInt_(id<JavaLangCharSequence> text, jint index);

FOUNDATION_EXPORT id<JavaLangCharSequence> OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_toLowerCaseWithJavaLangCharSequence_withJavaUtilLocale_(id<JavaLangCharSequence> text, JavaUtilLocale *locale);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_INCLUDE_ALL")
