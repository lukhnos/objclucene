//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/builders/package-info.java
//

/*!
 @brief Necessary classes to implement query builders.
 <h2>Query Parser Builders</h2>
  <p>
  The package <tt>org.apache.lucene.queryParser.builders</tt> contains the interface that
  builders must implement, it also contain a utility <code>org.apache.lucene.queryparser.flexible.core.builders.QueryTreeBuilder</code>, which walks the tree
  and call the Builder for each node in the tree.
  Builder normally convert QueryNode Object into a Lucene Query Object,
  and normally it's a one-to-one mapping class.
  But other builders implementations can by written to convert QueryNode objects to other non lucene objects.
 */
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreBuildersPackage_info")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreBuildersPackage_info
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreBuildersPackage_info 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreBuildersPackage_info 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreBuildersPackage_info

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreBuildersPackage_info")
