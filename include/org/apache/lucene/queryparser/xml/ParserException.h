//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/ParserException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlParserException")
#ifdef RESTRICT_OrgApacheLuceneQueryparserXmlParserException
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlParserException 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlParserException 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserXmlParserException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserXmlParserException_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserXmlParserException || defined(INCLUDE_OrgApacheLuceneQueryparserXmlParserException))
#define OrgApacheLuceneQueryparserXmlParserException_

#define RESTRICT_JavaLangException 1
#define INCLUDE_JavaLangException 1
#include "java/lang/Exception.h"

@class JavaLangThrowable;

/*!
 @brief Thrown when the xml queryparser encounters 
  invalid syntax/configuration.
 */
@interface OrgApacheLuceneQueryparserXmlParserException : JavaLangException

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithNSString:(NSString *)message;

- (instancetype __nonnull)initWithNSString:(NSString *)message
                     withJavaLangThrowable:(JavaLangThrowable *)cause;

- (instancetype __nonnull)initWithJavaLangThrowable:(JavaLangThrowable *)cause;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                     withJavaLangThrowable:(JavaLangThrowable *)arg1
                               withBoolean:(jboolean)arg2
                               withBoolean:(jboolean)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlParserException)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlParserException_init(OrgApacheLuceneQueryparserXmlParserException *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlParserException *new_OrgApacheLuceneQueryparserXmlParserException_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlParserException *create_OrgApacheLuceneQueryparserXmlParserException_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(OrgApacheLuceneQueryparserXmlParserException *self, NSString *message);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlParserException *new_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(NSString *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlParserException *create_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(NSString *message);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlParserException_initWithNSString_withJavaLangThrowable_(OrgApacheLuceneQueryparserXmlParserException *self, NSString *message, JavaLangThrowable *cause);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlParserException *new_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlParserException *create_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlParserException_initWithJavaLangThrowable_(OrgApacheLuceneQueryparserXmlParserException *self, JavaLangThrowable *cause);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlParserException *new_OrgApacheLuceneQueryparserXmlParserException_initWithJavaLangThrowable_(JavaLangThrowable *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlParserException *create_OrgApacheLuceneQueryparserXmlParserException_initWithJavaLangThrowable_(JavaLangThrowable *cause);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlParserException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlParserException")
