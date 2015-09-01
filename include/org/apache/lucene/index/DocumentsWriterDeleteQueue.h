//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocumentsWriterDeleteQueue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexDocumentsWriterDeleteQueue_INCLUDE_ALL")
#if OrgApacheLuceneIndexDocumentsWriterDeleteQueue_RESTRICT
#define OrgApacheLuceneIndexDocumentsWriterDeleteQueue_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexDocumentsWriterDeleteQueue_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexDocumentsWriterDeleteQueue_RESTRICT

#if !defined (_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_) && (OrgApacheLuceneIndexDocumentsWriterDeleteQueue_INCLUDE_ALL || OrgApacheLuceneIndexDocumentsWriterDeleteQueue_INCLUDE)
#define _OrgApacheLuceneIndexDocumentsWriterDeleteQueue_

#define OrgApacheLuceneUtilAccountable_RESTRICT 1
#define OrgApacheLuceneUtilAccountable_INCLUDE 1
#include "org/apache/lucene/util/Accountable.h"

@class OrgApacheLuceneIndexBufferedUpdates;
@class OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice;
@class OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node;
@class OrgApacheLuceneIndexFrozenBufferedUpdates;
@class OrgApacheLuceneIndexTerm;

@interface OrgApacheLuceneIndexDocumentsWriterDeleteQueue : NSObject < OrgApacheLuceneUtilAccountable > {
 @public
  jlong generation_;
}

#pragma mark Public

- (jint)numGlobalTermDeletes;

- (jlong)ramBytesUsed;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneIndexBufferedUpdates:(OrgApacheLuceneIndexBufferedUpdates *)globalBufferedUpdates
                                                   withLong:(jlong)generation;

- (instancetype)initWithLong:(jlong)generation;

- (void)addWithOrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node:(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *)item;

- (void)addWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
withOrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice:(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice *)slice;

- (jboolean)anyChanges;

- (void)clear;

- (OrgApacheLuceneIndexFrozenBufferedUpdates *)freezeGlobalBufferWithOrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice:(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice *)callerSlice;

- (OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice *)newSlice OBJC_METHOD_FAMILY_NONE;

- (void)tryApplyGlobalSlice;

- (jboolean)updateSliceWithOrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice:(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice *)slice;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexDocumentsWriterDeleteQueue)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocumentsWriterDeleteQueue_init(OrgApacheLuceneIndexDocumentsWriterDeleteQueue *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterDeleteQueue *new_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocumentsWriterDeleteQueue_initWithLong_(OrgApacheLuceneIndexDocumentsWriterDeleteQueue *self, jlong generation);

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterDeleteQueue *new_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_initWithLong_(jlong generation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocumentsWriterDeleteQueue_initWithOrgApacheLuceneIndexBufferedUpdates_withLong_(OrgApacheLuceneIndexDocumentsWriterDeleteQueue *self, OrgApacheLuceneIndexBufferedUpdates *globalBufferedUpdates, jlong generation);

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterDeleteQueue *new_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_initWithOrgApacheLuceneIndexBufferedUpdates_withLong_(OrgApacheLuceneIndexBufferedUpdates *globalBufferedUpdates, jlong generation) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocumentsWriterDeleteQueue)

#endif

#if !defined (_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice_) && (OrgApacheLuceneIndexDocumentsWriterDeleteQueue_INCLUDE_ALL || OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice_INCLUDE)
#define _OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice_

@class OrgApacheLuceneIndexBufferedUpdates;
@class OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node;

@interface OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice : NSObject {
 @public
  OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *sliceHead_;
  OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *sliceTail_;
}

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node:(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *)currentTail;

- (void)applyWithOrgApacheLuceneIndexBufferedUpdates:(OrgApacheLuceneIndexBufferedUpdates *)del
                                             withInt:(jint)docIDUpto;

- (jboolean)isEmpty;

- (jboolean)isTailItemWithId:(id)item;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice, sliceHead_, OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice, sliceTail_, OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice_initWithOrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node_(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice *self, OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *currentTail);

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice *new_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice_initWithOrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node_(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *currentTail) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice)

#endif

#if !defined (_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node_) && (OrgApacheLuceneIndexDocumentsWriterDeleteQueue_INCLUDE_ALL || OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node_INCLUDE)
#define _OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node_

@class JavaUtilConcurrentAtomicAtomicReferenceFieldUpdater;
@class OrgApacheLuceneIndexBufferedUpdates;

@interface OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node : NSObject {
 @public
  volatile_id next_;
  id item_;
}

#pragma mark Package-Private

- (instancetype)initWithId:(id)item;

- (void)applyWithOrgApacheLuceneIndexBufferedUpdates:(OrgApacheLuceneIndexBufferedUpdates *)bufferedDeletes
                                             withInt:(jint)docIDUpto;

- (jboolean)casNextWithOrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node:(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *)cmp
                   withOrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node:(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *)val;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node)

J2OBJC_VOLATILE_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node, next_, OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node, item_, id)

FOUNDATION_EXPORT JavaUtilConcurrentAtomicAtomicReferenceFieldUpdater *OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node_nextUpdater_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node, nextUpdater_, JavaUtilConcurrentAtomicAtomicReferenceFieldUpdater *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node_initWithId_(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *self, id item);

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *new_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node_initWithId_(id item) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node)

#endif

#pragma pop_macro("OrgApacheLuceneIndexDocumentsWriterDeleteQueue_INCLUDE_ALL")
