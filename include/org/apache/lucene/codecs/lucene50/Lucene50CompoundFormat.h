//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene50/Lucene50CompoundFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat")
#ifdef RESTRICT_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat
#define INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_) && (INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat || defined(INCLUDE_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat))
#define OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_

#define RESTRICT_OrgApacheLuceneCodecsCompoundFormat 1
#define INCLUDE_OrgApacheLuceneCodecsCompoundFormat 1
#include "org/apache/lucene/codecs/CompoundFormat.h"

@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;

/*!
 @brief Lucene 5.0 compound file format
 <p>
  Files: 
 <ul>
     <li><tt>.cfs</tt>: An optional "virtual" file consisting of all the other 
     index files for systems that frequently run out of file handles.
 <li><tt>.cfe</tt>: The "virtual" compound file's entry table holding all 
     entries in the corresponding .cfs file. 
 </ul>
  <p>Description:</p>
  <ul>
    <li>Compound (.cfs) --&gt; Header, FileData <sup>FileCount</sup>, Footer</li>
    <li>Compound Entry Table (.cfe) --&gt; Header, FileCount, &lt;FileName,
        DataOffset, DataLength&gt; <sup>FileCount</sup></li>
    <li>Header --&gt; <code>IndexHeader</code></li>
    <li>FileCount --&gt; <code>VInt</code></li>
    <li>DataOffset,DataLength,Checksum --&gt; <code>UInt64</code></li>
    <li>FileName --&gt; <code>String</code></li>
    <li>FileData --&gt; raw file data</li>
    <li>Footer --&gt; <code>CodecFooter</code></li>
  </ul>
  <p>Notes:</p>
  <ul>
    <li>FileCount indicates how many files are contained in this compound file. 
        The entry table that follows has that many entries.    
 <li>Each directory entry contains a long pointer to the start of this file's data
        section, the files length, and a String with that file's name. 
 </ul>
 */
@interface OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat : OrgApacheLuceneCodecsCompoundFormat
@property (readonly, copy, class) NSString *DATA_EXTENSION NS_SWIFT_NAME(DATA_EXTENSION);
@property (readonly, copy, class) NSString *ENTRIES_EXTENSION NS_SWIFT_NAME(ENTRIES_EXTENSION);
@property (readonly, copy, class) NSString *DATA_CODEC NS_SWIFT_NAME(DATA_CODEC);
@property (readonly, copy, class) NSString *ENTRY_CODEC NS_SWIFT_NAME(ENTRY_CODEC);
@property (readonly, class) jint VERSION_START NS_SWIFT_NAME(VERSION_START);
@property (readonly, class) jint VERSION_CURRENT NS_SWIFT_NAME(VERSION_CURRENT);

#pragma mark Public

/*!
 @brief Sole constructor.
 */
- (instancetype __nonnull)init;

- (OrgApacheLuceneStoreDirectory *)getCompoundReaderWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                                  withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
                                                    withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (void)writeWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
           withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
             withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat)

/*!
 @brief Extension of compound file
 */
inline NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_get_DATA_EXTENSION(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat, DATA_EXTENSION, NSString *)

/*!
 @brief Extension of compound file entries
 */
inline NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_get_ENTRIES_EXTENSION(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRIES_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat, ENTRIES_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_get_DATA_CODEC(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_CODEC;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat, DATA_CODEC, NSString *)

inline NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_get_ENTRY_CODEC(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRY_CODEC;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat, ENTRY_CODEC, NSString *)

inline jint OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_get_VERSION_START(void);
#define OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_VERSION_START 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat, VERSION_START, jint)

inline jint OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_get_VERSION_CURRENT(void);
#define OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_VERSION_CURRENT 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat, VERSION_CURRENT, jint)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_init(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat *new_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat *create_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat")
