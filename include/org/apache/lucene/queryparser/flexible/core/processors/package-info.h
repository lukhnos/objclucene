//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/processors/package-info.java
//

/*!
 @brief Interfaces and implementations used by query node processors
 <h2>Query Node Processors</h2>
 <p>
 The package <tt>org.apache.lucene.queryParser.processors</tt> contains interfaces
 that should be implemented by every query node processor.
 <p>
 The interface that every query node processor should implement is <code>org.apache.lucene.queryparser.flexible.core.processors.QueryNodeProcessor</code>.
 A query node processor should be used to process a <code>org.apache.lucene.queryparser.flexible.core.nodes.QueryNode</code> tree.
 <code>org.apache.lucene.queryparser.flexible.core.nodes.QueryNode</code> trees can be programmatically created or generated by a
 text parser. See <code>org.apache.lucene.queryparser.flexible.core.parser</code> for more details about text parsers.
 <p>
 A query node processor should be used to process a <code>org.apache.lucene.queryparser.flexible.core.nodes.QueryNode</code> tree.
 <code>org.apache.lucene.queryparser.flexible.core.nodes.QueryNode</code> trees can be programmatically created or generated by a
 text parser. See <code>org.apache.lucene.queryparser.flexible.core.parser</code> for more details about text parsers.
 <p>
 A pipeline of processors can be assembled using <code>org.apache.lucene.queryparser.flexible.core.processors.QueryNodeProcessorPipeline</code>.
 <p>
 Implementors may want to extend <code>org.apache.lucene.queryparser.flexible.core.processors.QueryNodeProcessorImpl</code>, which simplifies
 the implementation, because it walks automatically the <code>org.apache.lucene.queryparser.flexible.core.nodes.QueryNode</code>. See
 <code>org.apache.lucene.queryparser.flexible.core.processors.QueryNodeProcessorImpl</code> for more details.
 */
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsPackage_info")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsPackage_info
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsPackage_info 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsPackage_info 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsPackage_info

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsPackage_info")
