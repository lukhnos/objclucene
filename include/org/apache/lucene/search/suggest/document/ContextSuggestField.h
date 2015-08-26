//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/ContextSuggestField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSuggestDocumentContextSuggestField_INCLUDE_ALL")
#if OrgApacheLuceneSearchSuggestDocumentContextSuggestField_RESTRICT
#define OrgApacheLuceneSearchSuggestDocumentContextSuggestField_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSuggestDocumentContextSuggestField_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSuggestDocumentContextSuggestField_RESTRICT

#if !defined (_OrgApacheLuceneSearchSuggestDocumentContextSuggestField_) && (OrgApacheLuceneSearchSuggestDocumentContextSuggestField_INCLUDE_ALL || OrgApacheLuceneSearchSuggestDocumentContextSuggestField_INCLUDE)
#define _OrgApacheLuceneSearchSuggestDocumentContextSuggestField_

#define OrgApacheLuceneSearchSuggestDocumentSuggestField_RESTRICT 1
#define OrgApacheLuceneSearchSuggestDocumentSuggestField_INCLUDE 1
#include "org/apache/lucene/search/suggest/document/SuggestField.h"

@class IOSObjectArray;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream;
@protocol JavaLangIterable;

#define OrgApacheLuceneSearchSuggestDocumentContextSuggestField_CONTEXT_SEPARATOR 29
#define OrgApacheLuceneSearchSuggestDocumentContextSuggestField_TYPE 1

@interface OrgApacheLuceneSearchSuggestDocumentContextSuggestField : OrgApacheLuceneSearchSuggestDocumentSuggestField

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)value
                         withInt:(jint)weight
   withJavaLangCharSequenceArray:(IOSObjectArray *)contexts;

#pragma mark Protected

- (id<JavaLangIterable>)contexts;

- (jbyte)type;

- (OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream *)wrapTokenStreamWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)stream;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentContextSuggestField)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchSuggestDocumentContextSuggestField, CONTEXT_SEPARATOR, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchSuggestDocumentContextSuggestField, TYPE, jbyte)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentContextSuggestField_initWithNSString_withNSString_withInt_withJavaLangCharSequenceArray_(OrgApacheLuceneSearchSuggestDocumentContextSuggestField *self, NSString *name, NSString *value, jint weight, IOSObjectArray *contexts);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentContextSuggestField *new_OrgApacheLuceneSearchSuggestDocumentContextSuggestField_initWithNSString_withNSString_withInt_withJavaLangCharSequenceArray_(NSString *name, NSString *value, jint weight, IOSObjectArray *contexts) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentContextSuggestField)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSuggestDocumentContextSuggestField_INCLUDE_ALL")
