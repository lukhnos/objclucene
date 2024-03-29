//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene50/Lucene50StoredFieldsFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat")
#ifdef RESTRICT_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat
#define INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_) && (INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat || defined(INCLUDE_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat))
#define OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_

#define RESTRICT_OrgApacheLuceneCodecsStoredFieldsFormat 1
#define INCLUDE_OrgApacheLuceneCodecsStoredFieldsFormat 1
#include "org/apache/lucene/codecs/StoredFieldsFormat.h"

@class OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode;
@class OrgApacheLuceneCodecsStoredFieldsReader;
@class OrgApacheLuceneCodecsStoredFieldsWriter;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;

/*!
 @brief Lucene 5.0 stored fields format.
 <p><b>Principle</b>
  <p>This <code>StoredFieldsFormat</code> compresses blocks of documents in
  order to improve the compression ratio compared to document-level
  compression. It uses the <a href="http://code.google.com/p/lz4/">LZ4</a>
  compression algorithm by default in 16KB blocks, which is fast to compress 
  and very fast to decompress data. Although the default compression method 
  that is used (<code>BEST_SPEED</code>) focuses more on speed than on 
  compression ratio, it should provide interesting compression ratios
  for redundant inputs (such as log files, HTML or plain text). For higher
  compression, you can choose (<code>BEST_COMPRESSION</code>), which uses 
  the <a href="http://en.wikipedia.org/wiki/DEFLATE">DEFLATE</a> algorithm with 60KB blocks 
  for a better ratio at the expense of slower performance. 
  These two options can be configured like this: 
 <pre class="prettyprint">
    // the default: for high performance
    indexWriterConfig.setCodec(new Lucene53Codec(Mode.BEST_SPEED));
    // instead for higher performance (but slower):
    // indexWriterConfig.setCodec(new Lucene53Codec(Mode.BEST_COMPRESSION)); 
 
@endcode
  <p><b>File formats</b>
  <p>Stored fields are represented by two files: 
 <ol>
  <li><a name="field_data"></a>
  <p>A fields data file (extension <tt>.fdt</tt>). This file stores a compact
  representation of documents in compressed blocks of 16KB or more. When
  writing a segment, documents are appended to an in-memory <tt>byte[]</tt>
  buffer. When its size reaches 16KB or more, some metadata about the documents
  is flushed to disk, immediately followed by a compressed representation of
  the buffer using the 
 <a href="http://code.google.com/p/lz4/">LZ4</a>
  <a href="http://fastcompression.blogspot.fr/2011/05/lz4-explained.html">compression format</a>.</p>
  <p>Here is a more detailed description of the field data file format:</p>
  <ul>
  <li>FieldData (.fdt) --&gt; &lt;Header&gt;, PackedIntsVersion, &lt;Chunk&gt;<sup>ChunkCount</sup>, ChunkCount, DirtyChunkCount, Footer</li>
  <li>Header --&gt; <code>IndexHeader</code></li>
  <li>PackedIntsVersion --&gt; <code>PackedInts.VERSION_CURRENT</code> as a <code>VInt</code></li>
  <li>ChunkCount is not known in advance and is the number of chunks necessary to store all document of the segment</li>
  <li>Chunk --&gt; DocBase, ChunkDocs, DocFieldCounts, DocLengths, &lt;CompressedDocs&gt;</li>
  <li>DocBase --&gt; the ID of the first document of the chunk as a <code>VInt</code></li>
  <li>ChunkDocs --&gt; the number of documents in the chunk as a <code>VInt</code></li>
  <li>DocFieldCounts --&gt; the number of stored fields of every document in the chunk, encoded as followed:<ul>
    <li>if chunkDocs=1, the unique value is encoded as a <code>VInt</code></li>
    <li>else read a <code>VInt</code> (let's call it <tt>bitsRequired</tt>)<ul>
      <li>if <tt>bitsRequired</tt> is <tt>0</tt> then all values are equal, and the common value is the following <code>VInt</code></li>
      <li>else <tt>bitsRequired</tt> is the number of bits required to store any value, and values are stored in a <code>packed</code> array where every value is stored on exactly <tt>bitsRequired</tt> bits</li>
    </ul></li>
  </ul></li>
  <li>DocLengths --&gt; the lengths of all documents in the chunk, encoded with the same method as DocFieldCounts</li>
  <li>CompressedDocs --&gt; a compressed representation of &lt;Docs&gt; using the LZ4 compression format</li>
  <li>Docs --&gt; &lt;Doc&gt;<sup>ChunkDocs</sup></li>
  <li>Doc --&gt; &lt;FieldNumAndType, Value&gt;<sup>DocFieldCount</sup></li>
  <li>FieldNumAndType --&gt; a <code>VLong</code>, whose 3 last bits are Type and other bits are FieldNum</li>
  <li>Type --&gt;<ul>
    <li>0: Value is String</li>
    <li>1: Value is BinaryValue</li>
    <li>2: Value is Int</li>
    <li>3: Value is Float</li>
    <li>4: Value is Long</li>
    <li>5: Value is Double</li>
    <li>6, 7: unused</li>
  </ul></li>
  <li>FieldNum --&gt; an ID of the field</li>
  <li>Value --&gt; <code>String</code> | BinaryValue | Int | Float | Long | Double depending on Type</li>
  <li>BinaryValue --&gt; ValueLength &lt;Byte&gt;<sup>ValueLength</sup></li>
  <li>ChunkCount --&gt; the number of chunks in this file</li>
  <li>DirtyChunkCount --&gt; the number of prematurely flushed chunks in this file</li>
  <li>Footer --&gt; <code>CodecFooter</code></li>
  </ul>
  <p>Notes
  <ul>
  <li>If documents are larger than 16KB then chunks will likely contain only
  one document. However, documents can never spread across several chunks (all
  fields of a single document are in the same chunk).</li>
  <li>When at least one document in a chunk is large enough so that the chunk
  is larger than 32KB, the chunk will actually be compressed in several LZ4
  blocks of 16KB. This allows <code>StoredFieldVisitor</code>s which are only
  interested in the first fields of a document to not have to decompress 10MB
  of data if the document is 10MB, but only 16KB.</li>
  <li>Given that the original lengths are written in the metadata of the chunk,
  the decompressor can leverage this information to stop decoding as soon as
  enough data has been decompressed.</li>
  <li>In case documents are incompressible, CompressedDocs will be less than
  0.5% larger than Docs.</li>
  </ul>
  </li>
  <li><a name="field_index"></a>
  <p>A fields index file (extension <tt>.fdx</tt>).</p>
  <ul>
  <li>FieldsIndex (.fdx) --&gt; &lt;Header&gt;, &lt;ChunkIndex&gt;, Footer</li>
  <li>Header --&gt; <code>IndexHeader</code></li>
  <li>ChunkIndex: See <code>CompressingStoredFieldsIndexWriter</code></li>
  <li>Footer --&gt; <code>CodecFooter</code></li>
  </ul>
  </li>
  </ol>
  <p><b>Known limitations</b>
  <p>This <code>StoredFieldsFormat</code> does not support individual documents
  larger than (<tt>2<sup>31</sup> - 2<sup>14</sup></tt>) bytes.
 */
@interface OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat : OrgApacheLuceneCodecsStoredFieldsFormat {
 @public
  OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *mode_;
}
@property (readonly, copy, class) NSString *MODE_KEY NS_SWIFT_NAME(MODE_KEY);

#pragma mark Public

/*!
 @brief Stored fields format with default options
 */
- (instancetype __nonnull)init;

/*!
 @brief Stored fields format with specified mode
 */
- (instancetype __nonnull)initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode:(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *)mode;

- (OrgApacheLuceneCodecsStoredFieldsReader *)fieldsReaderWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                                       withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
                                                        withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fn
                                                         withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (OrgApacheLuceneCodecsStoredFieldsWriter *)fieldsWriterWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                                       withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
                                                         withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

#pragma mark Package-Private

- (OrgApacheLuceneCodecsStoredFieldsFormat *)implWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode:(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *)mode;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat, mode_, OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *)

/*!
 @brief Attribute key for compression mode.
 */
inline NSString *OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_get_MODE_KEY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_MODE_KEY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat, MODE_KEY, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_init(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat *new_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat *create_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat *self, OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *mode);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat *new_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *mode) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat *create_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *mode);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat)

#endif

#if !defined (OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_) && (INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat || defined(INCLUDE_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode))
#define OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_Enum) {
  OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_Enum_BEST_SPEED = 0,
  OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_Enum_BEST_COMPRESSION = 1,
};

/*!
 @brief Configuration option for stored fields.
 */
@interface OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode : JavaLangEnum

@property (readonly, class, nonnull) OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *BEST_SPEED NS_SWIFT_NAME(BEST_SPEED);
@property (readonly, class, nonnull) OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *BEST_COMPRESSION NS_SWIFT_NAME(BEST_COMPRESSION);
#pragma mark Public

+ (OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_values_[];

/*!
 @brief Trade compression ratio for retrieval speed.
 */
inline OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_get_BEST_SPEED(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode, BEST_SPEED)

/*!
 @brief Trade retrieval speed for compression ratio.
 */
inline OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_get_BEST_COMPRESSION(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode, BEST_COMPRESSION)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_values(void);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat")
