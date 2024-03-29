//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/CommandLineUtil.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilCommandLineUtil")
#ifdef RESTRICT_OrgApacheLuceneUtilCommandLineUtil
#define INCLUDE_ALL_OrgApacheLuceneUtilCommandLineUtil 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilCommandLineUtil 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilCommandLineUtil

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilCommandLineUtil_) && (INCLUDE_ALL_OrgApacheLuceneUtilCommandLineUtil || defined(INCLUDE_OrgApacheLuceneUtilCommandLineUtil))
#define OrgApacheLuceneUtilCommandLineUtil_

@class IOSClass;
@class OrgApacheLuceneStoreFSDirectory;
@class OrgApacheLuceneStoreLockFactory;
@class OrgLukhnosPortmobileFilePath;

/*!
 @brief Class containing some useful methods used by command line tools
 */
@interface OrgApacheLuceneUtilCommandLineUtil : NSObject

#pragma mark Public

/*!
 @brief Loads a specific Directory implementation
 @param clazzName The name of the Directory class to load
 @return The Directory class loaded
 @throw ClassNotFoundExceptionIf the specified class cannot be found.
 */
+ (IOSClass *)loadDirectoryClassWithNSString:(NSString *)clazzName;

/*!
 @brief Loads a specific FSDirectory implementation
 @param clazzName The name of the FSDirectory class to load
 @return The FSDirectory class loaded
 @throw ClassNotFoundExceptionIf the specified class cannot be found.
 */
+ (IOSClass *)loadFSDirectoryClassWithNSString:(NSString *)clazzName;

/*!
 @brief Creates a new specific FSDirectory instance
 @param clazz The class of the object to be created
 @param path The file to be used as parameter constructor
 @return The new FSDirectory instance
 @throw NoSuchMethodExceptionIf the Directory does not have a constructor that takes <code>Path</code>.
 @throw InstantiationExceptionIf the class is abstract or an interface.
 @throw IllegalAccessExceptionIf the constructor does not have public visibility.
 @throw InvocationTargetExceptionIf the constructor throws an exception
 */
+ (OrgApacheLuceneStoreFSDirectory *)newFSDirectoryWithIOSClass:(IOSClass *)clazz
                               withOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)path OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Creates a new specific FSDirectory instance
 @param clazz The class of the object to be created
 @param path The file to be used as parameter constructor
 @param lf The lock factory to be used
 @return The new FSDirectory instance
 @throw NoSuchMethodExceptionIf the Directory does not have a constructor that takes <code>Path</code>.
 @throw InstantiationExceptionIf the class is abstract or an interface.
 @throw IllegalAccessExceptionIf the constructor does not have public visibility.
 @throw InvocationTargetExceptionIf the constructor throws an exception
 */
+ (OrgApacheLuceneStoreFSDirectory *)newFSDirectoryWithIOSClass:(IOSClass *)clazz
                               withOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)path
                            withOrgApacheLuceneStoreLockFactory:(OrgApacheLuceneStoreLockFactory *)lf OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Creates a specific FSDirectory instance starting from its class name, using the default lock factory
 @param clazzName The name of the FSDirectory class to load
 @param path The path to be used as parameter constructor
 @return the new FSDirectory instance
 */
+ (OrgApacheLuceneStoreFSDirectory *)newFSDirectoryWithNSString:(NSString *)clazzName
                               withOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)path OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Creates a specific FSDirectory instance starting from its class name
 @param clazzName The name of the FSDirectory class to load
 @param path The path to be used as parameter constructor
 @param lf The lock factory to be used
 @return the new FSDirectory instance
 */
+ (OrgApacheLuceneStoreFSDirectory *)newFSDirectoryWithNSString:(NSString *)clazzName
                               withOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)path
                            withOrgApacheLuceneStoreLockFactory:(OrgApacheLuceneStoreLockFactory *)lf OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilCommandLineUtil)

FOUNDATION_EXPORT OrgApacheLuceneStoreFSDirectory *OrgApacheLuceneUtilCommandLineUtil_newFSDirectoryWithNSString_withOrgLukhnosPortmobileFilePath_(NSString *clazzName, OrgLukhnosPortmobileFilePath *path);

FOUNDATION_EXPORT OrgApacheLuceneStoreFSDirectory *OrgApacheLuceneUtilCommandLineUtil_newFSDirectoryWithNSString_withOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(NSString *clazzName, OrgLukhnosPortmobileFilePath *path, OrgApacheLuceneStoreLockFactory *lf);

FOUNDATION_EXPORT IOSClass *OrgApacheLuceneUtilCommandLineUtil_loadDirectoryClassWithNSString_(NSString *clazzName);

FOUNDATION_EXPORT IOSClass *OrgApacheLuceneUtilCommandLineUtil_loadFSDirectoryClassWithNSString_(NSString *clazzName);

FOUNDATION_EXPORT OrgApacheLuceneStoreFSDirectory *OrgApacheLuceneUtilCommandLineUtil_newFSDirectoryWithIOSClass_withOrgLukhnosPortmobileFilePath_(IOSClass *clazz, OrgLukhnosPortmobileFilePath *path);

FOUNDATION_EXPORT OrgApacheLuceneStoreFSDirectory *OrgApacheLuceneUtilCommandLineUtil_newFSDirectoryWithIOSClass_withOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(IOSClass *clazz, OrgLukhnosPortmobileFilePath *path, OrgApacheLuceneStoreLockFactory *lf);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilCommandLineUtil)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilCommandLineUtil")
