//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SegmentInfo.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexSegmentInfo")
#ifdef RESTRICT_OrgApacheLuceneIndexSegmentInfo
#define INCLUDE_ALL_OrgApacheLuceneIndexSegmentInfo 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexSegmentInfo 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexSegmentInfo

#if !defined (OrgApacheLuceneIndexSegmentInfo_) && (INCLUDE_ALL_OrgApacheLuceneIndexSegmentInfo || defined(INCLUDE_OrgApacheLuceneIndexSegmentInfo))
#define OrgApacheLuceneIndexSegmentInfo_

@class IOSByteArray;
@class IOSObjectArray;
@class OrgApacheLuceneCodecsCodec;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneUtilVersion;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;
@protocol JavaUtilSet;

/*!
 @brief Information about a segment such as its name, directory, and files related
 to the segment.
 */
@interface OrgApacheLuceneIndexSegmentInfo : NSObject {
 @public
  /*!
   @brief Unique segment name in the directory.
   */
  NSString *name_;
  /*!
   @brief Where this segment resides.
   */
  OrgApacheLuceneStoreDirectory *dir_;
}

+ (jint)NO_;

+ (jint)YES_;

#pragma mark Public

/*!
 @brief Construct a new complete SegmentInfo instance from input.
 <p>Note: this is public only to allow access from
 the codecs package.</p>
 */
- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                       withOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)version_
                                         withNSString:(NSString *)name
                                              withInt:(jint)maxDoc
                                          withBoolean:(jboolean)isCompoundFile
                       withOrgApacheLuceneCodecsCodec:(OrgApacheLuceneCodecsCodec *)codec
                                      withJavaUtilMap:(id<JavaUtilMap>)diagnostics
                                        withByteArray:(IOSByteArray *)id_
                                      withJavaUtilMap:(id<JavaUtilMap>)attributes;

/*!
 @brief Add this file to the set of files written for this
 segment.
 */
- (void)addFileWithNSString:(NSString *)file;

/*!
 @brief Add these files to the set of files written for this
 segment.
 */
- (void)addFilesWithJavaUtilCollection:(id<JavaUtilCollection>)files;

/*!
 @brief We consider another SegmentInfo instance equal if it
 has the same dir and same name.
 */
- (jboolean)isEqual:(id)obj;

/*!
 @brief Return all files referenced by this SegmentInfo.
 */
- (id<JavaUtilSet>)files;

/*!
 @brief Get a codec attribute value, or null if it does not exist
 */
- (NSString *)getAttributeWithNSString:(NSString *)key;

/*!
 @brief Returns the internal codec attributes map.
 @return internal codec attributes map.
 */
- (id<JavaUtilMap>)getAttributes;

/*!
 @brief Return <code>Codec</code> that wrote this segment.
 */
- (OrgApacheLuceneCodecsCodec *)getCodec;

/*!
 @brief Returns diagnostics saved into the segment when it was
 written.
 The map is immutable. 
 */
- (id<JavaUtilMap>)getDiagnostics;

/*!
 @brief Return the id that uniquely identifies this segment.
 */
- (IOSByteArray *)getId;

/*!
 @brief Returns true if this segment is stored as a compound
 file; else, false.
 */
- (jboolean)getUseCompoundFile;

/*!
 @brief Returns the version of the code which wrote the segment.
 */
- (OrgApacheLuceneUtilVersion *)getVersion;

- (NSUInteger)hash;

/*!
 @brief Returns number of documents in this segment (deletions
 are not taken into account).
 */
- (jint)maxDoc;

/*!
 @brief Puts a codec attribute value.
 <p>
 This is a key-value mapping for the field that the codec can use to store
 additional metadata, and will be available to the codec when reading the
 segment via <code>getAttribute(String)</code>
 <p>
 If a value already exists for the field, it will be replaced with the new
 value.
 */
- (NSString *)putAttributeWithNSString:(NSString *)key
                          withNSString:(NSString *)value;

/*!
 @brief Can only be called once.
 */
- (void)setCodecWithOrgApacheLuceneCodecsCodec:(OrgApacheLuceneCodecsCodec *)codec;

/*!
 @brief Sets the files written for this segment.
 */
- (void)setFilesWithJavaUtilCollection:(id<JavaUtilCollection>)files;

- (NSString *)description;

/*!
 @brief Used for debugging.
 */
- (NSString *)toStringWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                                withInt:(jint)delCount;

/*!
 @brief Used for debugging.
 Format may suddenly change.
 <p>Current format looks like
 <code>_a(3.1):c45/4:[sorter=&lt;long: "timestamp"&gt;!]</code>, which means
 the segment's name is <code>_a</code>; it was created with Lucene 3.1 (or
 '?' if it's unknown); it's using compound file
 format (would be <code>C</code> if not compound); it
 has 45 documents; it has 4 deletions (this part is
 left off when there are no deletions); it is sorted by the timestamp field
 in descending order (this part is omitted for unsorted segments).</p>
 */
- (NSString *)toStringWithInt:(jint)delCount;

#pragma mark Package-Private

/*!
 @brief strips any segment name from the file, naming it with this segment
 this is because "segment names" can change, e.g. by addIndexes(Dir)
 */
- (NSString *)namedForThisSegmentWithNSString:(NSString *)file;

- (void)setDiagnosticsWithJavaUtilMap:(id<JavaUtilMap>)diagnostics;

- (void)setMaxDocWithInt:(jint)maxDoc;

/*!
 @brief Mark whether this segment is stored as a compound file.
 @param isCompoundFile true if this is a compound file;
 else, false
 */
- (void)setUseCompoundFileWithBoolean:(jboolean)isCompoundFile;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSegmentInfo)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentInfo, name_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentInfo, dir_, OrgApacheLuceneStoreDirectory *)

/*!
 @brief Used by some member fields to mean not present (e.g.,
 norms, deletions).
 */
inline jint OrgApacheLuceneIndexSegmentInfo_get_NO();
#define OrgApacheLuceneIndexSegmentInfo_NO -1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexSegmentInfo, NO, jint)

/*!
 @brief Used by some member fields to mean present (e.g.,
 norms, deletions).
 */
inline jint OrgApacheLuceneIndexSegmentInfo_get_YES();
#define OrgApacheLuceneIndexSegmentInfo_YES 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexSegmentInfo, YES, jint)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSegmentInfo_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneUtilVersion_withNSString_withInt_withBoolean_withOrgApacheLuceneCodecsCodec_withJavaUtilMap_withByteArray_withJavaUtilMap_(OrgApacheLuceneIndexSegmentInfo *self, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneUtilVersion *version_, NSString *name, jint maxDoc, jboolean isCompoundFile, OrgApacheLuceneCodecsCodec *codec, id<JavaUtilMap> diagnostics, IOSByteArray *id_, id<JavaUtilMap> attributes);

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentInfo *new_OrgApacheLuceneIndexSegmentInfo_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneUtilVersion_withNSString_withInt_withBoolean_withOrgApacheLuceneCodecsCodec_withJavaUtilMap_withByteArray_withJavaUtilMap_(OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneUtilVersion *version_, NSString *name, jint maxDoc, jboolean isCompoundFile, OrgApacheLuceneCodecsCodec *codec, id<JavaUtilMap> diagnostics, IOSByteArray *id_, id<JavaUtilMap> attributes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentInfo *create_OrgApacheLuceneIndexSegmentInfo_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneUtilVersion_withNSString_withInt_withBoolean_withOrgApacheLuceneCodecsCodec_withJavaUtilMap_withByteArray_withJavaUtilMap_(OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneUtilVersion *version_, NSString *name, jint maxDoc, jboolean isCompoundFile, OrgApacheLuceneCodecsCodec *codec, id<JavaUtilMap> diagnostics, IOSByteArray *id_, id<JavaUtilMap> attributes);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSegmentInfo)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexSegmentInfo")
