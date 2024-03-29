//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/messages/NLSException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleMessagesNLSException")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleMessagesNLSException
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleMessagesNLSException 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleMessagesNLSException 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleMessagesNLSException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleMessagesNLSException_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleMessagesNLSException || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleMessagesNLSException))
#define OrgApacheLuceneQueryparserFlexibleMessagesNLSException_

@protocol OrgApacheLuceneQueryparserFlexibleMessagesMessage;

/*!
 @brief Interface that exceptions should implement to support lazy loading of messages.
 For Native Language Support (NLS), system of software internationalization. 
  This Interface should be implemented by all exceptions that require
  translation
 */
@protocol OrgApacheLuceneQueryparserFlexibleMessagesNLSException < JavaObject >

/*!
 @return a instance of a class that implements the Message interface
 */
- (id<OrgApacheLuceneQueryparserFlexibleMessagesMessage>)getMessageObject;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleMessagesNLSException)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleMessagesNLSException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleMessagesNLSException")
