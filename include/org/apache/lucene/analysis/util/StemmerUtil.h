//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/StemmerUtil.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisUtilStemmerUtil")
#ifdef RESTRICT_OrgApacheLuceneAnalysisUtilStemmerUtil
#define INCLUDE_ALL_OrgApacheLuceneAnalysisUtilStemmerUtil 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisUtilStemmerUtil 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisUtilStemmerUtil

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisUtilStemmerUtil_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisUtilStemmerUtil || defined(INCLUDE_OrgApacheLuceneAnalysisUtilStemmerUtil))
#define OrgApacheLuceneAnalysisUtilStemmerUtil_

@class IOSCharArray;

/*!
 @brief Some commonly-used stemming functions
 */
@interface OrgApacheLuceneAnalysisUtilStemmerUtil : NSObject

#pragma mark Public

/*!
 @brief Delete a character in-place
 @param s Input Buffer
 @param pos Position of character to delete
 @param len length of input buffer
 @return length of input buffer after deletion
 */
+ (jint)delete__WithCharArray:(IOSCharArray *)s
                      withInt:(jint)pos
                      withInt:(jint)len;

/*!
 @brief Delete n characters in-place
 @param s Input Buffer
 @param pos Position of character to delete
 @param len Length of input buffer
 @param nChars number of characters to delete
 @return length of input buffer after deletion
 */
+ (jint)deleteNWithCharArray:(IOSCharArray *)s
                     withInt:(jint)pos
                     withInt:(jint)len
                     withInt:(jint)nChars;

/*!
 @brief Returns true if the character array ends with the suffix.
 @param s Input Buffer
 @param len length of input buffer
 @param suffix Suffix string to test
 @return true if <code>s</code> ends with <code>suffix</code>
 */
+ (jboolean)endsWithWithCharArray:(IOSCharArray *)s
                          withInt:(jint)len
                    withCharArray:(IOSCharArray *)suffix;

/*!
 @brief Returns true if the character array ends with the suffix.
 @param s Input Buffer
 @param len length of input buffer
 @param suffix Suffix string to test
 @return true if <code>s</code> ends with <code>suffix</code>
 */
+ (jboolean)endsWithWithCharArray:(IOSCharArray *)s
                          withInt:(jint)len
                     withNSString:(NSString *)suffix;

/*!
 @brief Returns true if the character array starts with the suffix.
 @param s Input Buffer
 @param len length of input buffer
 @param prefix Prefix string to test
 @return true if <code>s</code> starts with <code>prefix</code>
 */
+ (jboolean)startsWithWithCharArray:(IOSCharArray *)s
                            withInt:(jint)len
                       withNSString:(NSString *)prefix;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisUtilStemmerUtil)

FOUNDATION_EXPORT jboolean OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(IOSCharArray *s, jint len, NSString *prefix);

FOUNDATION_EXPORT jboolean OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(IOSCharArray *s, jint len, NSString *suffix);

FOUNDATION_EXPORT jboolean OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withCharArray_(IOSCharArray *s, jint len, IOSCharArray *suffix);

FOUNDATION_EXPORT jint OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(IOSCharArray *s, jint pos, jint len);

FOUNDATION_EXPORT jint OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(IOSCharArray *s, jint pos, jint len, jint nChars);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisUtilStemmerUtil)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisUtilStemmerUtil")
