//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/Constants.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilConstants")
#ifdef RESTRICT_OrgApacheLuceneUtilConstants
#define INCLUDE_ALL_OrgApacheLuceneUtilConstants 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilConstants 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilConstants

#if !defined (OrgApacheLuceneUtilConstants_) && (INCLUDE_ALL_OrgApacheLuceneUtilConstants || defined(INCLUDE_OrgApacheLuceneUtilConstants))
#define OrgApacheLuceneUtilConstants_

@class IOSObjectArray;

/*!
 @brief Some useful constants.
 */
@interface OrgApacheLuceneUtilConstants : NSObject

+ (NSString *)JVM_VENDOR;

+ (NSString *)JVM_VERSION;

+ (NSString *)JVM_NAME;

+ (NSString *)JVM_SPEC_VERSION;

+ (NSString *)JAVA_VERSION;

+ (NSString *)OS_NAME;

+ (jboolean)LINUX;

+ (jboolean)WINDOWS;

+ (jboolean)SUN_OS;

+ (jboolean)MAC_OS_X;

+ (jboolean)FREE_BSD;

+ (NSString *)OS_ARCH;

+ (NSString *)OS_VERSION;

+ (NSString *)JAVA_VENDOR;

+ (jboolean)JRE_IS_64BIT;

+ (jboolean)JRE_IS_MINIMUM_JAVA8;

+ (jboolean)JRE_IS_MINIMUM_JAVA9;

+ (NSString *)LUCENE_MAIN_VERSION;

+ (NSString *)LUCENE_VERSION;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilConstants)

/*!
 @brief JVM vendor info.
 */
inline NSString *OrgApacheLuceneUtilConstants_get_JVM_VENDOR();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilConstants_JVM_VENDOR;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilConstants, JVM_VENDOR, NSString *)

inline NSString *OrgApacheLuceneUtilConstants_get_JVM_VERSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilConstants_JVM_VERSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilConstants, JVM_VERSION, NSString *)

inline NSString *OrgApacheLuceneUtilConstants_get_JVM_NAME();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilConstants_JVM_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilConstants, JVM_NAME, NSString *)

inline NSString *OrgApacheLuceneUtilConstants_get_JVM_SPEC_VERSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilConstants_JVM_SPEC_VERSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilConstants, JVM_SPEC_VERSION, NSString *)

/*!
 @brief The value of <tt>System.getProperty("java.version")</tt>.
 */
inline NSString *OrgApacheLuceneUtilConstants_get_JAVA_VERSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilConstants_JAVA_VERSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilConstants, JAVA_VERSION, NSString *)

/*!
 @brief The value of <tt>System.getProperty("os.name")</tt>.
 */
inline NSString *OrgApacheLuceneUtilConstants_get_OS_NAME();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilConstants_OS_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilConstants, OS_NAME, NSString *)

/*!
 @brief True iff running on Linux.
 */
inline jboolean OrgApacheLuceneUtilConstants_get_LINUX();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilConstants_LINUX;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilConstants, LINUX, jboolean)

/*!
 @brief True iff running on Windows.
 */
inline jboolean OrgApacheLuceneUtilConstants_get_WINDOWS();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilConstants_WINDOWS;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilConstants, WINDOWS, jboolean)

/*!
 @brief True iff running on SunOS.
 */
inline jboolean OrgApacheLuceneUtilConstants_get_SUN_OS();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilConstants_SUN_OS;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilConstants, SUN_OS, jboolean)

/*!
 @brief True iff running on Mac OS X
 */
inline jboolean OrgApacheLuceneUtilConstants_get_MAC_OS_X();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilConstants_MAC_OS_X;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilConstants, MAC_OS_X, jboolean)

/*!
 @brief True iff running on FreeBSD
 */
inline jboolean OrgApacheLuceneUtilConstants_get_FREE_BSD();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilConstants_FREE_BSD;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilConstants, FREE_BSD, jboolean)

inline NSString *OrgApacheLuceneUtilConstants_get_OS_ARCH();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilConstants_OS_ARCH;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilConstants, OS_ARCH, NSString *)

inline NSString *OrgApacheLuceneUtilConstants_get_OS_VERSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilConstants_OS_VERSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilConstants, OS_VERSION, NSString *)

inline NSString *OrgApacheLuceneUtilConstants_get_JAVA_VENDOR();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilConstants_JAVA_VENDOR;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilConstants, JAVA_VENDOR, NSString *)

/*!
 @brief True iff running on a 64bit JVM
 */
inline jboolean OrgApacheLuceneUtilConstants_get_JRE_IS_64BIT();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilConstants_JRE_IS_64BIT;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilConstants, JRE_IS_64BIT, jboolean)

inline jboolean OrgApacheLuceneUtilConstants_get_JRE_IS_MINIMUM_JAVA8();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA8;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilConstants, JRE_IS_MINIMUM_JAVA8, jboolean)

inline jboolean OrgApacheLuceneUtilConstants_get_JRE_IS_MINIMUM_JAVA9();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA9;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilConstants, JRE_IS_MINIMUM_JAVA9, jboolean)

/*!
 @brief This is the internal Lucene version, including bugfix versions, recorded into each segment.
 */
inline NSString *OrgApacheLuceneUtilConstants_get_LUCENE_MAIN_VERSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilConstants_LUCENE_MAIN_VERSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilConstants, LUCENE_MAIN_VERSION, NSString *)

/*!
 @brief Don't use this constant because the name is not self-describing!
 */
inline NSString *OrgApacheLuceneUtilConstants_get_LUCENE_VERSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilConstants_LUCENE_VERSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilConstants, LUCENE_VERSION, NSString *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilConstants)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilConstants")
