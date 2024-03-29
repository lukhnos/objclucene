//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/blocktree/BlockTreeTermsWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter")
#ifdef RESTRICT_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter
#define INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_) && (INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter || defined(INCLUDE_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter))
#define OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_

#define RESTRICT_OrgApacheLuceneCodecsFieldsConsumer 1
#define INCLUDE_OrgApacheLuceneCodecsFieldsConsumer 1
#include "org/apache/lucene/codecs/FieldsConsumer.h"

@class IOSByteArray;
@class OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum;
@class OrgApacheLuceneCodecsPostingsWriterBase;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexFields;
@class OrgApacheLuceneIndexSegmentWriteState;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilFixedBitSet;

/*!
 @brief Block-based terms index and dictionary writer.
 <p>
  Writes terms dict and index, block-encoding (column
  stride) each term's metadata for each set of terms
  between two index terms. 
 <p>
  If <code>minItemsInAutoPrefix</code> is not zero, then for 
 <code>IndexOptions.DOCS</code> fields we detect prefixes that match
  "enough" terms and insert auto-prefix terms into the index, which are
  used by <code>Terms.intersect</code>  at search time to speed up prefix
  and range queries.  Besides <code>Terms.intersect</code>, these
  auto-prefix terms are invisible to all other APIs (don't change terms
  stats, don't show up in normal <code>TermsEnum</code>s, etc.). 
 <p>
  Files: 
 <ul>
    <li><tt>.tim</tt>: <a href="#Termdictionary">Term Dictionary</a></li>
    <li><tt>.tip</tt>: <a href="#Termindex">Term Index</a></li>
  </ul>
  <p>
  <a name="Termdictionary"></a>
  <h3>Term Dictionary</h3>
  
 <p>The .tim file contains the list of terms in each
  field along with per-term statistics (such as docfreq)
  and per-term metadata (typically pointers to the postings list
  for that term in the inverted index). 
 </p>
  
 <p>The .tim is arranged in blocks: with blocks containing
  a variable number of entries (by default 25-48), where
  each entry is either a term or a reference to a
  sub-block.</p>
  
 <p>NOTE: The term dictionary can plug into different postings implementations:
  the postings writer/reader are actually responsible for encoding 
  and decoding the Postings Metadata and Term Metadata sections.</p>
  
 <ul>
     <li>TermsDict (.tim) --&gt; Header, HasAutoPrefixTerms, <i>PostingsHeader</i>, NodeBlock<sup>NumBlocks</sup>,
                                FieldSummary, DirOffset, Footer</li>
     <li>NodeBlock --&gt; (OuterNode | InnerNode)</li>
     <li>OuterNode --&gt; EntryCount, SuffixLength, Byte<sup>SuffixLength</sup>, StatsLength, &lt; TermStats &gt;<sup>EntryCount</sup>, MetaLength, &lt;<i>TermMetadata</i>&gt;<sup>EntryCount</sup></li>
     <li>InnerNode --&gt; EntryCount, SuffixLength[,Sub?], Byte<sup>SuffixLength</sup>, StatsLength, &lt; TermStats ? &gt;<sup>EntryCount</sup>, MetaLength, &lt;<i>TermMetadata ? </i>&gt;<sup>EntryCount</sup></li>
     <li>TermStats --&gt; DocFreq, TotalTermFreq </li>
     <li>FieldSummary --&gt; NumFields, &lt;FieldNumber, NumTerms, RootCodeLength, Byte<sup>RootCodeLength</sup>,
                             SumTotalTermFreq?, SumDocFreq, DocCount, LongsSize, MinTerm, MaxTerm&gt;<sup>NumFields</sup></li>
     <li>Header --&gt; <code>CodecHeader</code></li>
     <li>DirOffset --&gt; <code>Uint64</code></li>
     <li>MinTerm,MaxTerm --&gt; <code>VInt</code> length followed by the byte[]</li>
     <li>EntryCount,SuffixLength,StatsLength,DocFreq,MetaLength,NumFields,
         FieldNumber,RootCodeLength,DocCount,LongsSize --&gt; <code>VInt</code></li>
     <li>TotalTermFreq,NumTerms,SumTotalTermFreq,SumDocFreq --&gt; 
         <code>VLong</code></li>
     <li>Footer --&gt; <code>CodecFooter</code></li>
  </ul>
  <p>Notes:</p>
  <ul>
     <li>Header is a <code>CodecHeader</code> storing the version information
         for the BlockTree implementation.</li>
     <li>HasAutoPrefixTerms is a single byte; 1 means there may be auto-prefix terms and 0 means there are none.
     <li>DirOffset is a pointer to the FieldSummary section.</li>
     <li>DocFreq is the count of documents which contain the term.</li>
     <li>TotalTermFreq is the total number of occurrences of the term. This is encoded
         as the difference between the total number of occurrences and the DocFreq.</li>
     <li>FieldNumber is the fields number from <code>FieldInfos</code>. (.fnm)</li>
     <li>NumTerms is the number of unique terms for the field.</li>
     <li>RootCode points to the root block for the field.</li>
     <li>SumDocFreq is the total number of postings, the number of term-document pairs across
         the entire field.</li>
     <li>DocCount is the number of documents that have at least one posting for this field.</li>
     <li>LongsSize records how many long values the postings writer/reader record per term
         (e.g., to hold freq/prox/doc file offsets).    
 <li>MinTerm, MaxTerm are the lowest and highest term in this field.</li>
     <li>PostingsHeader and TermMetadata are plugged into by the specific postings implementation:
         these contain arbitrary per-file data (such as parameters or versioning information) 
         and per-term data (such as pointers to inverted files).</li>
     <li>For inner nodes of the tree, every entry will steal one bit to mark whether it points
         to child nodes(sub-block). If so, the corresponding TermStats and TermMetaData are omitted </li>
  </ul>
  <a name="Termindex"></a>
  <h3>Term Index</h3>
  <p>The .tip file contains an index into the term dictionary, so that it can be 
  accessed randomly.  The index is also used to determine
  when a given term cannot exist on disk (in the .tim file), saving a disk seek.</p>
  <ul>
    <li>TermsIndex (.tip) --&gt; Header, FSTIndex<sup>NumFields</sup>
                                 &lt;IndexStartFP&gt;<sup>NumFields</sup>, DirOffset, Footer</li>
    <li>Header --&gt; <code>CodecHeader</code></li>
    <li>DirOffset --&gt; <code>Uint64</code></li>
    <li>IndexStartFP --&gt; <code>VLong</code></li>
    <!-- TODO: better describe FST output here -->
    <li>FSTIndex --&gt; <code>FST&lt;byte[]&gt;</code></li>
    <li>Footer --&gt; <code>CodecFooter</code></li>
  </ul>
  <p>Notes:</p>
  <ul>
    <li>The .tip file contains a separate FST for each
        field.  The FST maps a term prefix to the on-disk
        block that holds all terms starting with that
        prefix.  Each field's IndexStartFP points to its
        FST.</li>
    <li>DirOffset is a pointer to the start of the IndexStartFPs
        for all fields</li>
    <li>It's possible that an on-disk block would contain
        too many terms (more than the allowed maximum
        (default: 48)).  When this happens, the block is
        sub-divided into new blocks (called "floor
        blocks"), and then the output in the FST for the
        block's prefix encodes the leading byte of each
        sub-block, and its file pointer. 
 </ul>
 - seealso: BlockTreeTermsReader
 */
@interface OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter : OrgApacheLuceneCodecsFieldsConsumer {
 @public
  jint maxDoc_;
  jint minItemsInBlock_;
  jint maxItemsInBlock_;
  jint minItemsInAutoPrefix_;
  jint maxItemsInAutoPrefix_;
  OrgApacheLuceneCodecsPostingsWriterBase *postingsWriter_;
  OrgApacheLuceneIndexFieldInfos *fieldInfos_;
  OrgApacheLuceneUtilFixedBitSet *prefixDocs_;
  /*!
   @brief Reused in getAutoPrefixTermsEnum:
   */
  OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum *prefixFixedBitsTermsEnum_;
}
@property (readonly, class) jint DEFAULT_MIN_BLOCK_SIZE NS_SWIFT_NAME(DEFAULT_MIN_BLOCK_SIZE);
@property (readonly, class) jint DEFAULT_MAX_BLOCK_SIZE NS_SWIFT_NAME(DEFAULT_MAX_BLOCK_SIZE);
@property (readonly, class, strong) OrgApacheLuceneUtilBytesRef *EMPTY_BYTES_REF NS_SWIFT_NAME(EMPTY_BYTES_REF);

#pragma mark Public

/*!
 @brief Create a new writer, using default values for auto-prefix terms.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
                            withOrgApacheLuceneCodecsPostingsWriterBase:(OrgApacheLuceneCodecsPostingsWriterBase *)postingsWriter
                                                                withInt:(jint)minItemsInBlock
                                                                withInt:(jint)maxItemsInBlock;

/*!
 @brief Create a new writer.The number of items (terms or
   sub-blocks) per block will aim to be between
   minItemsPerBlock and maxItemsPerBlock, though in some
   cases the blocks may be smaller than the min.
 For DOCS_ONLY fields, this terms dictionary will
   insert automatically generated prefix terms for common
   prefixes, as long as each prefix matches at least  
 <code>minItemsInAutoPrefix</code> other terms or prefixes,
   and at most <code>maxItemsInAutoPrefix</code> other terms
   or prefixes.  Set <code>minItemsInAutoPrefix</code> to 0
   to disable auto-prefix terms.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
                            withOrgApacheLuceneCodecsPostingsWriterBase:(OrgApacheLuceneCodecsPostingsWriterBase *)postingsWriter
                                                                withInt:(jint)minItemsInBlock
                                                                withInt:(jint)maxItemsInBlock
                                                                withInt:(jint)minItemsInAutoPrefix
                                                                withInt:(jint)maxItemsInAutoPrefix;

- (void)close;

/*!
 @brief Throws <code>IllegalArgumentException</code> if any of these settings
   is invalid.
 */
+ (void)validateAutoPrefixSettingsWithInt:(jint)minItemsInAutoPrefix
                                  withInt:(jint)maxItemsInAutoPrefix;

/*!
 @brief Throws <code>IllegalArgumentException</code> if any of these settings
   is invalid.
 */
+ (void)validateSettingsWithInt:(jint)minItemsInBlock
                        withInt:(jint)maxItemsInBlock;

- (void)writeWithOrgApacheLuceneIndexFields:(OrgApacheLuceneIndexFields *)fields;

#pragma mark Package-Private

+ (NSString *)brToStringWithByteArray:(IOSByteArray *)b;

+ (NSString *)brToStringWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)b;

+ (jlong)encodeOutputWithLong:(jlong)fp
                  withBoolean:(jboolean)hasTerms
                  withBoolean:(jboolean)isFloor;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter, postingsWriter_, OrgApacheLuceneCodecsPostingsWriterBase *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter, fieldInfos_, OrgApacheLuceneIndexFieldInfos *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter, prefixDocs_, OrgApacheLuceneUtilFixedBitSet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter, prefixFixedBitsTermsEnum_, OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum *)

/*!
 @brief Suggested default value for the <code>minItemsInBlock</code>
  parameter to <code>BlockTreeTermsWriter(SegmentWriteState,PostingsWriterBase,int,int)</code>
 .
 */
inline jint OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_get_DEFAULT_MIN_BLOCK_SIZE(void);
#define OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_DEFAULT_MIN_BLOCK_SIZE 25
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter, DEFAULT_MIN_BLOCK_SIZE, jint)

/*!
 @brief Suggested default value for the <code>maxItemsInBlock</code>
  parameter to <code>BlockTreeTermsWriter(SegmentWriteState,PostingsWriterBase,int,int)</code>
 .
 */
inline jint OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_get_DEFAULT_MAX_BLOCK_SIZE(void);
#define OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_DEFAULT_MAX_BLOCK_SIZE 48
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter, DEFAULT_MAX_BLOCK_SIZE, jint)

inline OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_get_EMPTY_BYTES_REF(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_EMPTY_BYTES_REF;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter, EMPTY_BYTES_REF, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneCodecsPostingsWriterBase_withInt_withInt_(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter *self, OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneCodecsPostingsWriterBase *postingsWriter, jint minItemsInBlock, jint maxItemsInBlock);

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter *new_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneCodecsPostingsWriterBase_withInt_withInt_(OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneCodecsPostingsWriterBase *postingsWriter, jint minItemsInBlock, jint maxItemsInBlock) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter *create_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneCodecsPostingsWriterBase_withInt_withInt_(OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneCodecsPostingsWriterBase *postingsWriter, jint minItemsInBlock, jint maxItemsInBlock);

FOUNDATION_EXPORT void OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneCodecsPostingsWriterBase_withInt_withInt_withInt_withInt_(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter *self, OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneCodecsPostingsWriterBase *postingsWriter, jint minItemsInBlock, jint maxItemsInBlock, jint minItemsInAutoPrefix, jint maxItemsInAutoPrefix);

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter *new_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneCodecsPostingsWriterBase_withInt_withInt_withInt_withInt_(OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneCodecsPostingsWriterBase *postingsWriter, jint minItemsInBlock, jint maxItemsInBlock, jint minItemsInAutoPrefix, jint maxItemsInAutoPrefix) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter *create_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneCodecsPostingsWriterBase_withInt_withInt_withInt_withInt_(OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneCodecsPostingsWriterBase *postingsWriter, jint minItemsInBlock, jint maxItemsInBlock, jint minItemsInAutoPrefix, jint maxItemsInAutoPrefix);

FOUNDATION_EXPORT void OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_validateSettingsWithInt_withInt_(jint minItemsInBlock, jint maxItemsInBlock);

FOUNDATION_EXPORT void OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_validateAutoPrefixSettingsWithInt_withInt_(jint minItemsInAutoPrefix, jint maxItemsInAutoPrefix);

FOUNDATION_EXPORT jlong OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_encodeOutputWithLong_withBoolean_withBoolean_(jlong fp, jboolean hasTerms, jboolean isFloor);

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_brToStringWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *b);

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_brToStringWithByteArray_(IOSByteArray *b);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter)

#endif

#if !defined (OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_TermsWriter_) && (INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter || defined(INCLUDE_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_TermsWriter))
#define OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_TermsWriter_

@class OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm;
@class OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilFixedBitSet;

@interface OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_TermsWriter : NSObject {
 @public
  OrgApacheLuceneUtilFixedBitSet *docsSeen_;
  jlong sumTotalTermFreq_;
  jlong sumDocFreq_;
  jlong indexStartFP_;
}

#pragma mark Public

- (void)finish;

/*!
 @brief Writes one term's worth of postings.
 */
- (void)writeWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text
           withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)termsEnum
withOrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm:(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *)prefixTerm;

#pragma mark Package-Private

- (instancetype __nonnull)initWithOrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter:(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter *)outer$
                                                   withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo;

/*!
 @brief Writes the top count entries in pending, using prevTerm to compute the prefix.
 */
- (void)writeBlocksWithInt:(jint)prefixLength
                   withInt:(jint)count;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_TermsWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_TermsWriter, docsSeen_, OrgApacheLuceneUtilFixedBitSet *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_TermsWriter_initWithOrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_TermsWriter *self, OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter *outer$, OrgApacheLuceneIndexFieldInfo *fieldInfo);

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_TermsWriter *new_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_TermsWriter_initWithOrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter *outer$, OrgApacheLuceneIndexFieldInfo *fieldInfo) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_TermsWriter *create_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_TermsWriter_initWithOrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter *outer$, OrgApacheLuceneIndexFieldInfo *fieldInfo);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_TermsWriter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter")
