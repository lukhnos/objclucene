//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/en/KStemData4.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisEnKStemData4")
#ifdef RESTRICT_OrgApacheLuceneAnalysisEnKStemData4
#define INCLUDE_ALL_OrgApacheLuceneAnalysisEnKStemData4 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisEnKStemData4 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisEnKStemData4

#if !defined (OrgApacheLuceneAnalysisEnKStemData4_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisEnKStemData4 || defined(INCLUDE_OrgApacheLuceneAnalysisEnKStemData4))
#define OrgApacheLuceneAnalysisEnKStemData4_

@class IOSObjectArray;

/*!
 @brief A list of words used by Kstem
 */
@interface OrgApacheLuceneAnalysisEnKStemData4 : NSObject

+ (IOSObjectArray *)data;

+ (void)setData:(IOSObjectArray *)value;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisEnKStemData4)

inline IOSObjectArray *OrgApacheLuceneAnalysisEnKStemData4_get_data();
inline IOSObjectArray *OrgApacheLuceneAnalysisEnKStemData4_set_data(IOSObjectArray *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneAnalysisEnKStemData4_data;
J2OBJC_STATIC_FIELD_OBJ(OrgApacheLuceneAnalysisEnKStemData4, data, IOSObjectArray *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisEnKStemData4)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisEnKStemData4")
