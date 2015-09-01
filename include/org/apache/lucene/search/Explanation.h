//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/Explanation.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchExplanation_INCLUDE_ALL")
#if OrgApacheLuceneSearchExplanation_RESTRICT
#define OrgApacheLuceneSearchExplanation_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchExplanation_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchExplanation_RESTRICT

#if !defined (_OrgApacheLuceneSearchExplanation_) && (OrgApacheLuceneSearchExplanation_INCLUDE_ALL || OrgApacheLuceneSearchExplanation_INCLUDE)
#define _OrgApacheLuceneSearchExplanation_

@class IOSObjectArray;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneSearchExplanation : NSObject

#pragma mark Public

- (NSString *)getDescription;

- (IOSObjectArray *)getDetails;

- (jfloat)getValue;

+ (OrgApacheLuceneSearchExplanation *)matchWithFloat:(jfloat)value
                                        withNSString:(NSString *)description_
                              withJavaUtilCollection:(id<JavaUtilCollection>)details;

+ (OrgApacheLuceneSearchExplanation *)matchWithFloat:(jfloat)value
                                        withNSString:(NSString *)description_
           withOrgApacheLuceneSearchExplanationArray:(IOSObjectArray *)details;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchExplanation)

FOUNDATION_EXPORT OrgApacheLuceneSearchExplanation *OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withJavaUtilCollection_(jfloat value, NSString *description_, id<JavaUtilCollection> details);

FOUNDATION_EXPORT OrgApacheLuceneSearchExplanation *OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(jfloat value, NSString *description_, IOSObjectArray *details);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchExplanation)

#endif

#pragma pop_macro("OrgApacheLuceneSearchExplanation_INCLUDE_ALL")
