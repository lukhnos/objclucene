//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/fst/NodeHash.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilFstNodeHash_INCLUDE_ALL")
#if OrgApacheLuceneUtilFstNodeHash_RESTRICT
#define OrgApacheLuceneUtilFstNodeHash_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilFstNodeHash_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilFstNodeHash_RESTRICT

#if !defined (_OrgApacheLuceneUtilFstNodeHash_) && (OrgApacheLuceneUtilFstNodeHash_INCLUDE_ALL || OrgApacheLuceneUtilFstNodeHash_INCLUDE)
#define _OrgApacheLuceneUtilFstNodeHash_

@class OrgApacheLuceneUtilFstBuilder;
@class OrgApacheLuceneUtilFstBuilder_UnCompiledNode;
@class OrgApacheLuceneUtilFstFST;
@class OrgApacheLuceneUtilFstFST_BytesReader;

@interface OrgApacheLuceneUtilFstNodeHash : NSObject

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)fst
        withOrgApacheLuceneUtilFstFST_BytesReader:(OrgApacheLuceneUtilFstFST_BytesReader *)inArg;

- (jlong)addWithOrgApacheLuceneUtilFstBuilder:(OrgApacheLuceneUtilFstBuilder *)builder
withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(OrgApacheLuceneUtilFstBuilder_UnCompiledNode *)nodeIn;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstNodeHash)

FOUNDATION_EXPORT void OrgApacheLuceneUtilFstNodeHash_initWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_BytesReader_(OrgApacheLuceneUtilFstNodeHash *self, OrgApacheLuceneUtilFstFST *fst, OrgApacheLuceneUtilFstFST_BytesReader *inArg);

FOUNDATION_EXPORT OrgApacheLuceneUtilFstNodeHash *new_OrgApacheLuceneUtilFstNodeHash_initWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_BytesReader_(OrgApacheLuceneUtilFstFST *fst, OrgApacheLuceneUtilFstFST_BytesReader *inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstNodeHash)

#endif

#pragma pop_macro("OrgApacheLuceneUtilFstNodeHash_INCLUDE_ALL")
