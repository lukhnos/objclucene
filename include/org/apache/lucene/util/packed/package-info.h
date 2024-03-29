//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/package-info.java
//

/*!
 @brief Packed integer arrays and streams.
 <p>
      The packed package provides     
 <ul>
       <li>sequential and random access capable arrays of positive longs,</li>
       <li>routines for efficient serialization and deserialization of streams of packed integers.</li>
      </ul>
  
      The implementations provide different trade-offs between memory usage and
      access speed. The standard usage scenario is replacing large int or long
      arrays in order to reduce the memory footprint. 
 <p>
      The main access point is the <code>org.apache.lucene.util.packed.PackedInts</code> factory.  
 <h3>In-memory structures</h3>
   
 <ul>
      <li><b><code>org.apache.lucene.util.packed.PackedInts.Mutable</code></b><ul>
          <li>Only supports positive longs.</li>
          <li>Requires the number of bits per value to be known in advance.</li>
          <li>Random-access for both writing and reading.</li>
      </ul></li>
      <li><b><code>org.apache.lucene.util.packed.GrowableWriter</code></b><ul>
          <li>Same as PackedInts.Mutable but grows the number of bits per values when needed.</li>
          <li>Useful to build a PackedInts.Mutable from a read-once stream of longs.</li>
      </ul></li>
      <li><b><code>org.apache.lucene.util.packed.PagedGrowableWriter</code></b><ul>
          <li>Slices data into fixed-size blocks stored in GrowableWriters.</li>
          <li>Supports more than 2B values.</li>
          <li>You should use PackedLongValues instead if you don't need random write access.</li>
      </ul></li>
      <li><b><code>org.apache.lucene.util.packed.PackedLongValues.deltaPackedBuilder</code></b><ul>
          <li>Can store any sequence of longs.</li>
          <li>Compression is good when values are close to each other.</li>
          <li>Supports random reads, but only sequential writes.</li>
          <li>Can address up to 2^42 values.</li>
      </ul></li>
      <li><b><code>org.apache.lucene.util.packed.PackedLongValues.packedBuilder</code></b><ul>
          <li>Same as deltaPackedBuilder but assumes values are 0-based.</li>
      </ul></li>
      <li><b><code>org.apache.lucene.util.packed.PackedLongValues.monotonicBuilder</code></b><ul>
          <li>Same as deltaPackedBuilder except that compression is good when the stream is a succession of affine functions.</li>
      </ul></li>
  </ul>
   
 <h3>Disk-based structures</h3>
   
 <ul>
      <li><b><code>org.apache.lucene.util.packed.PackedInts.Writer</code>, <code>org.apache.lucene.util.packed.PackedInts.Reader</code>, <code>org.apache.lucene.util.packed.PackedInts.ReaderIterator</code></b><ul>
          <li>Only supports positive longs.</li>
          <li>Requires the number of bits per value to be known in advance.</li>
          <li>Supports both fast sequential access with low memory footprint with ReaderIterator and random-access by either loading values in memory or leaving them on disk with Reader.</li>
      </ul></li>
      <li><b><code>org.apache.lucene.util.packed.BlockPackedWriter</code>, <code>org.apache.lucene.util.packed.BlockPackedReader</code>, <code>org.apache.lucene.util.packed.BlockPackedReaderIterator</code></b><ul>
          <li>Splits the stream into fixed-size blocks.</li>
          <li>Compression is good when values are close to each other.</li>
          <li>Can address up to 2B * blockSize values.</li>
      </ul></li>
      <li><b><code>org.apache.lucene.util.packed.MonotonicBlockPackedWriter</code>, <code>org.apache.lucene.util.packed.MonotonicBlockPackedReader</code></b><ul>
          <li>Same as the non-monotonic variants except that compression is good when the stream is a succession of affine functions.</li>
          <li>The reason why there is no sequential access is that if you need sequential access, you should rather delta-encode and use BlockPackedWriter.</li>
      </ul></li>
      <li><b><code>org.apache.lucene.util.packed.PackedDataOutput</code>, <code>org.apache.lucene.util.packed.PackedDataInput</code></b><ul>
          <li>Writes sequences of longs where each long can use any number of bits.</li>
      </ul></li>
  </ul>
 */
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedPackage_info")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedPackage_info
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedPackage_info 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedPackage_info 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedPackage_info

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedPackage_info")
