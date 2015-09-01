//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/fst/Builder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilFstBuilder_INCLUDE_ALL")
#if OrgApacheLuceneUtilFstBuilder_RESTRICT
#define OrgApacheLuceneUtilFstBuilder_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilFstBuilder_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilFstBuilder_RESTRICT
#if OrgApacheLuceneUtilFstBuilder_UnCompiledNode_INCLUDE
#define OrgApacheLuceneUtilFstBuilder_Node_INCLUDE 1
#endif
#if OrgApacheLuceneUtilFstBuilder_CompiledNode_INCLUDE
#define OrgApacheLuceneUtilFstBuilder_Node_INCLUDE 1
#endif

#if !defined (_OrgApacheLuceneUtilFstBuilder_) && (OrgApacheLuceneUtilFstBuilder_INCLUDE_ALL || OrgApacheLuceneUtilFstBuilder_INCLUDE)
#define _OrgApacheLuceneUtilFstBuilder_

@class IOSIntArray;
@class OrgApacheLuceneUtilFstBytesStore;
@class OrgApacheLuceneUtilFstFST;
@class OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum;
@class OrgApacheLuceneUtilFstOutputs;
@class OrgApacheLuceneUtilIntsRef;

@interface OrgApacheLuceneUtilFstBuilder : NSObject {
 @public
  OrgApacheLuceneUtilFstFST *fst_;
  jlong lastFrozenNode_;
  IOSIntArray *reusedBytesPerArc_;
  jlong arcCount_;
  jlong nodeCount_;
  jboolean allowArrayArcs_;
  OrgApacheLuceneUtilFstBytesStore *bytes_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilFstFST_INPUT_TYPEEnum:(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum *)inputType
                                                         withInt:(jint)minSuffixCount1
                                                         withInt:(jint)minSuffixCount2
                                                     withBoolean:(jboolean)doShareSuffix
                                                     withBoolean:(jboolean)doShareNonSingletonNodes
                                                         withInt:(jint)shareMaxTailLength
                               withOrgApacheLuceneUtilFstOutputs:(OrgApacheLuceneUtilFstOutputs *)outputs
                                                     withBoolean:(jboolean)doPackFST
                                                       withFloat:(jfloat)acceptableOverheadRatio
                                                     withBoolean:(jboolean)allowArrayArcs
                                                         withInt:(jint)bytesPageBits;

- (void)addWithOrgApacheLuceneUtilIntsRef:(OrgApacheLuceneUtilIntsRef *)input
                                   withId:(id)output;

- (OrgApacheLuceneUtilFstFST *)finish;

- (jlong)getNodeCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstBuilder)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBuilder, fst_, OrgApacheLuceneUtilFstFST *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBuilder, reusedBytesPerArc_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBuilder, bytes_, OrgApacheLuceneUtilFstBytesStore *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilFstBuilder_initWithOrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_withInt_withInt_withBoolean_withBoolean_withInt_withOrgApacheLuceneUtilFstOutputs_withBoolean_withFloat_withBoolean_withInt_(OrgApacheLuceneUtilFstBuilder *self, OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum *inputType, jint minSuffixCount1, jint minSuffixCount2, jboolean doShareSuffix, jboolean doShareNonSingletonNodes, jint shareMaxTailLength, OrgApacheLuceneUtilFstOutputs *outputs, jboolean doPackFST, jfloat acceptableOverheadRatio, jboolean allowArrayArcs, jint bytesPageBits);

FOUNDATION_EXPORT OrgApacheLuceneUtilFstBuilder *new_OrgApacheLuceneUtilFstBuilder_initWithOrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_withInt_withInt_withBoolean_withBoolean_withInt_withOrgApacheLuceneUtilFstOutputs_withBoolean_withFloat_withBoolean_withInt_(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum *inputType, jint minSuffixCount1, jint minSuffixCount2, jboolean doShareSuffix, jboolean doShareNonSingletonNodes, jint shareMaxTailLength, OrgApacheLuceneUtilFstOutputs *outputs, jboolean doPackFST, jfloat acceptableOverheadRatio, jboolean allowArrayArcs, jint bytesPageBits) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstBuilder)

#endif

#if !defined (_OrgApacheLuceneUtilFstBuilder_Arc_) && (OrgApacheLuceneUtilFstBuilder_INCLUDE_ALL || OrgApacheLuceneUtilFstBuilder_Arc_INCLUDE)
#define _OrgApacheLuceneUtilFstBuilder_Arc_

@protocol OrgApacheLuceneUtilFstBuilder_Node;

@interface OrgApacheLuceneUtilFstBuilder_Arc : NSObject {
 @public
  jint label_;
  id<OrgApacheLuceneUtilFstBuilder_Node> target_;
  jboolean isFinal_;
  id output_;
  id nextFinalOutput_;
}

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstBuilder_Arc)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBuilder_Arc, target_, id<OrgApacheLuceneUtilFstBuilder_Node>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBuilder_Arc, output_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBuilder_Arc, nextFinalOutput_, id)

FOUNDATION_EXPORT void OrgApacheLuceneUtilFstBuilder_Arc_init(OrgApacheLuceneUtilFstBuilder_Arc *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilFstBuilder_Arc *new_OrgApacheLuceneUtilFstBuilder_Arc_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstBuilder_Arc)

#endif

#if !defined (_OrgApacheLuceneUtilFstBuilder_Node_) && (OrgApacheLuceneUtilFstBuilder_INCLUDE_ALL || OrgApacheLuceneUtilFstBuilder_Node_INCLUDE)
#define _OrgApacheLuceneUtilFstBuilder_Node_

@protocol OrgApacheLuceneUtilFstBuilder_Node < NSObject, JavaObject >

- (jboolean)isCompiled;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstBuilder_Node)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstBuilder_Node)

#endif

#if !defined (_OrgApacheLuceneUtilFstBuilder_CompiledNode_) && (OrgApacheLuceneUtilFstBuilder_INCLUDE_ALL || OrgApacheLuceneUtilFstBuilder_CompiledNode_INCLUDE)
#define _OrgApacheLuceneUtilFstBuilder_CompiledNode_

@interface OrgApacheLuceneUtilFstBuilder_CompiledNode : NSObject < OrgApacheLuceneUtilFstBuilder_Node > {
 @public
  jlong node_;
}

#pragma mark Public

- (jboolean)isCompiled;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstBuilder_CompiledNode)

FOUNDATION_EXPORT void OrgApacheLuceneUtilFstBuilder_CompiledNode_init(OrgApacheLuceneUtilFstBuilder_CompiledNode *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilFstBuilder_CompiledNode *new_OrgApacheLuceneUtilFstBuilder_CompiledNode_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstBuilder_CompiledNode)

#endif

#if !defined (_OrgApacheLuceneUtilFstBuilder_UnCompiledNode_) && (OrgApacheLuceneUtilFstBuilder_INCLUDE_ALL || OrgApacheLuceneUtilFstBuilder_UnCompiledNode_INCLUDE)
#define _OrgApacheLuceneUtilFstBuilder_UnCompiledNode_

@class IOSObjectArray;
@class OrgApacheLuceneUtilFstBuilder;
@protocol OrgApacheLuceneUtilFstBuilder_Node;

@interface OrgApacheLuceneUtilFstBuilder_UnCompiledNode : NSObject < OrgApacheLuceneUtilFstBuilder_Node > {
 @public
  OrgApacheLuceneUtilFstBuilder *owner_;
  jint numArcs_;
  IOSObjectArray *arcs_;
  id output_;
  jboolean isFinal_;
  jlong inputCount_;
  jint depth_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilFstBuilder:(OrgApacheLuceneUtilFstBuilder *)owner
                                              withInt:(jint)depth;

- (void)addArcWithInt:(jint)label
withOrgApacheLuceneUtilFstBuilder_Node:(id<OrgApacheLuceneUtilFstBuilder_Node>)target;

- (void)clear;

- (void)deleteLastWithInt:(jint)label
withOrgApacheLuceneUtilFstBuilder_Node:(id<OrgApacheLuceneUtilFstBuilder_Node>)target;

- (id)getLastOutputWithInt:(jint)labelToMatch;

- (jboolean)isCompiled;

- (void)prependOutputWithId:(id)outputPrefix;

- (void)replaceLastWithInt:(jint)labelToMatch
withOrgApacheLuceneUtilFstBuilder_Node:(id<OrgApacheLuceneUtilFstBuilder_Node>)target
                    withId:(id)nextFinalOutput
               withBoolean:(jboolean)isFinal;

- (void)setLastOutputWithInt:(jint)labelToMatch
                      withId:(id)newOutput;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstBuilder_UnCompiledNode)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBuilder_UnCompiledNode, owner_, OrgApacheLuceneUtilFstBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBuilder_UnCompiledNode, arcs_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBuilder_UnCompiledNode, output_, id)

FOUNDATION_EXPORT void OrgApacheLuceneUtilFstBuilder_UnCompiledNode_initWithOrgApacheLuceneUtilFstBuilder_withInt_(OrgApacheLuceneUtilFstBuilder_UnCompiledNode *self, OrgApacheLuceneUtilFstBuilder *owner, jint depth);

FOUNDATION_EXPORT OrgApacheLuceneUtilFstBuilder_UnCompiledNode *new_OrgApacheLuceneUtilFstBuilder_UnCompiledNode_initWithOrgApacheLuceneUtilFstBuilder_withInt_(OrgApacheLuceneUtilFstBuilder *owner, jint depth) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstBuilder_UnCompiledNode)

#endif

#pragma pop_macro("OrgApacheLuceneUtilFstBuilder_INCLUDE_ALL")
