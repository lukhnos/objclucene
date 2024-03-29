//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/DocumentValueSourceDictionary.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary))
#define OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_

#define RESTRICT_OrgApacheLuceneSearchSuggestDocumentDictionary 1
#define INCLUDE_OrgApacheLuceneSearchSuggestDocumentDictionary 1
#include "org/apache/lucene/search/suggest/DocumentDictionary.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneQueriesFunctionValueSource;
@protocol OrgApacheLuceneSearchSuggestInputIterator;

/*!
 @brief <p>
  Dictionary with terms and optionally payload and
  optionally contexts information
  taken from stored fields in a Lucene index.
 Similar to  
 <code>DocumentDictionary</code>, except it obtains the weight
  of the terms in a document based on a <code>ValueSource</code>.
  </p>
  <b>NOTE:</b> 
   <ul>
     <li>
       The term field has to be stored; if it is missing, the document is skipped.    
 </li>
     <li>
       The payload and contexts field are optional and are not required to be stored.    
 </li>
   </ul>
   <p>
   In practice the <code>ValueSource</code> will likely be obtained
   using the lucene expression module. The following example shows
   how to create a <code>ValueSource</code> from a simple addition of two
   fields:  
 <code>
     Expression expression = JavascriptCompiler.compile("f1 + f2");
     SimpleBindings bindings = new SimpleBindings();
     bindings.add(new SortField("f1", SortField.Type.LONG));
     bindings.add(new SortField("f2", SortField.Type.LONG));
     ValueSource valueSource = expression.getValueSource(bindings);  
 </code>
   </p>
 */
@interface OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary : OrgApacheLuceneSearchSuggestDocumentDictionary

#pragma mark Public

/*!
 @brief Creates a new dictionary with the contents of the fields named <code>field</code>
  for the terms and uses the <code>weightsValueSource</code> supplied to determine the 
  score.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                     withNSString:(NSString *)field
                    withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)weightsValueSource;

/*!
 @brief Creates a new dictionary with the contents of the fields named <code>field</code>
  for the terms, <code>payloadField</code> for the corresponding payloads
  and uses the <code>weightsValueSource</code> supplied to determine the 
  score.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                     withNSString:(NSString *)field
                    withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)weightsValueSource
                                                     withNSString:(NSString *)payload;

/*!
 @brief Creates a new dictionary with the contents of the fields named <code>field</code>
  for the terms, <code>payload</code> for the corresponding payloads, <code>contexts</code>
  for the associated contexts and uses the <code>weightsValueSource</code> supplied 
  to determine the score.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                     withNSString:(NSString *)field
                    withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)weightsValueSource
                                                     withNSString:(NSString *)payload
                                                     withNSString:(NSString *)contexts;

- (id<OrgApacheLuceneSearchSuggestInputIterator>)getEntryIterator;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)arg0
                                                     withNSString:(NSString *)arg1
                                                     withNSString:(NSString *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)arg0
                                                     withNSString:(NSString *)arg1
                                                     withNSString:(NSString *)arg2
                                                     withNSString:(NSString *)arg3 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)arg0
                                                     withNSString:(NSString *)arg1
                                                     withNSString:(NSString *)arg2
                                                     withNSString:(NSString *)arg3
                                                     withNSString:(NSString *)arg4 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withOrgApacheLuceneQueriesFunctionValueSource_withNSString_withNSString_(OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary *self, OrgApacheLuceneIndexIndexReader *reader, NSString *field, OrgApacheLuceneQueriesFunctionValueSource *weightsValueSource, NSString *payload, NSString *contexts);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary *new_OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withOrgApacheLuceneQueriesFunctionValueSource_withNSString_withNSString_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, OrgApacheLuceneQueriesFunctionValueSource *weightsValueSource, NSString *payload, NSString *contexts) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary *create_OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withOrgApacheLuceneQueriesFunctionValueSource_withNSString_withNSString_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, OrgApacheLuceneQueriesFunctionValueSource *weightsValueSource, NSString *payload, NSString *contexts);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withOrgApacheLuceneQueriesFunctionValueSource_withNSString_(OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary *self, OrgApacheLuceneIndexIndexReader *reader, NSString *field, OrgApacheLuceneQueriesFunctionValueSource *weightsValueSource, NSString *payload);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary *new_OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withOrgApacheLuceneQueriesFunctionValueSource_withNSString_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, OrgApacheLuceneQueriesFunctionValueSource *weightsValueSource, NSString *payload) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary *create_OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withOrgApacheLuceneQueriesFunctionValueSource_withNSString_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, OrgApacheLuceneQueriesFunctionValueSource *weightsValueSource, NSString *payload);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary *self, OrgApacheLuceneIndexIndexReader *reader, NSString *field, OrgApacheLuceneQueriesFunctionValueSource *weightsValueSource);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary *new_OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, OrgApacheLuceneQueriesFunctionValueSource *weightsValueSource) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary *create_OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, OrgApacheLuceneQueriesFunctionValueSource *weightsValueSource);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary)

#endif

#if !defined (OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_DocumentValueSourceInputIterator_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_DocumentValueSourceInputIterator))
#define OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_DocumentValueSourceInputIterator_

#define RESTRICT_OrgApacheLuceneSearchSuggestDocumentDictionary 1
#define INCLUDE_OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator 1
#include "org/apache/lucene/search/suggest/DocumentDictionary.h"

@class OrgApacheLuceneDocumentDocument;
@class OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary;

@interface OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_DocumentValueSourceInputIterator : OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneSearchSuggestDocumentValueSourceDictionary:(OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary *)outer$
                                                                                withBoolean:(jboolean)hasPayloads
                                                                                withBoolean:(jboolean)hasContexts;

#pragma mark Protected

/*!
 @brief Returns the weight for the current <code>docId</code> as computed 
  by the <code>weightsValueSource</code>
 */
- (jlong)getWeightWithOrgApacheLuceneDocumentDocument:(OrgApacheLuceneDocumentDocument *)doc
                                              withInt:(jint)docId;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneSearchSuggestDocumentDictionary:(OrgApacheLuceneSearchSuggestDocumentDictionary *)outer$
                                                                     withBoolean:(jboolean)arg0
                                                                     withBoolean:(jboolean)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_DocumentValueSourceInputIterator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_DocumentValueSourceInputIterator_initWithOrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_withBoolean_withBoolean_(OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_DocumentValueSourceInputIterator *self, OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary *outer$, jboolean hasPayloads, jboolean hasContexts);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_DocumentValueSourceInputIterator *new_OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_DocumentValueSourceInputIterator_initWithOrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_withBoolean_withBoolean_(OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary *outer$, jboolean hasPayloads, jboolean hasContexts) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_DocumentValueSourceInputIterator *create_OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_DocumentValueSourceInputIterator_initWithOrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_withBoolean_withBoolean_(OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary *outer$, jboolean hasPayloads, jboolean hasContexts);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary_DocumentValueSourceInputIterator)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentValueSourceDictionary")
