//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/tst/TSTAutocomplete.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/util/ArrayList.h"
#include "java/util/Stack.h"
#include "org/apache/lucene/search/suggest/tst/TSTAutocomplete.h"
#include "org/apache/lucene/search/suggest/tst/TernaryTreeNode.h"

@implementation OrgApacheLuceneSearchSuggestTstTSTAutocomplete

- (instancetype)init {
  OrgApacheLuceneSearchSuggestTstTSTAutocomplete_init(self);
  return self;
}

- (void)balancedTreeWithNSObjectArray:(IOSObjectArray *)tokens
                    withNSObjectArray:(IOSObjectArray *)vals
                              withInt:(jint)lo
                              withInt:(jint)hi
withOrgApacheLuceneSearchSuggestTstTernaryTreeNode:(OrgApacheLuceneSearchSuggestTstTernaryTreeNode *)root {
  if (lo > hi) return;
  jint mid = (lo + hi) / 2;
  root = [self insertWithOrgApacheLuceneSearchSuggestTstTernaryTreeNode:root withJavaLangCharSequence:(NSString *) check_class_cast(IOSObjectArray_Get(nil_chk(tokens), mid), [NSString class]) withId:IOSObjectArray_Get(nil_chk(vals), mid) withInt:0];
  [self balancedTreeWithNSObjectArray:tokens withNSObjectArray:vals withInt:lo withInt:mid - 1 withOrgApacheLuceneSearchSuggestTstTernaryTreeNode:root];
  [self balancedTreeWithNSObjectArray:tokens withNSObjectArray:vals withInt:mid + 1 withInt:hi withOrgApacheLuceneSearchSuggestTstTernaryTreeNode:root];
}

- (OrgApacheLuceneSearchSuggestTstTernaryTreeNode *)insertWithOrgApacheLuceneSearchSuggestTstTernaryTreeNode:(OrgApacheLuceneSearchSuggestTstTernaryTreeNode *)currentNode
                                                                                    withJavaLangCharSequence:(id<JavaLangCharSequence>)s
                                                                                                      withId:(id)val
                                                                                                     withInt:(jint)x {
  if (s == nil || [s length] <= x) {
    return currentNode;
  }
  if (currentNode == nil) {
    OrgApacheLuceneSearchSuggestTstTernaryTreeNode *newNode = [new_OrgApacheLuceneSearchSuggestTstTernaryTreeNode_init() autorelease];
    newNode->splitchar_ = [((id<JavaLangCharSequence>) nil_chk(s)) charAtWithInt:x];
    currentNode = newNode;
    if (x < [s length] - 1) {
      JreStrongAssign(&currentNode->eqKid_, [self insertWithOrgApacheLuceneSearchSuggestTstTernaryTreeNode:currentNode->eqKid_ withJavaLangCharSequence:s withId:val withInt:x + 1]);
    }
    else {
      JreStrongAssign(&currentNode->token_, [s description]);
      JreStrongAssign(&currentNode->val_, val);
      return currentNode;
    }
  }
  else if (currentNode->splitchar_ > [((id<JavaLangCharSequence>) nil_chk(s)) charAtWithInt:x]) {
    JreStrongAssign(&currentNode->loKid_, [self insertWithOrgApacheLuceneSearchSuggestTstTernaryTreeNode:currentNode->loKid_ withJavaLangCharSequence:s withId:val withInt:x]);
  }
  else if (currentNode->splitchar_ == [s charAtWithInt:x]) {
    if (x < [s length] - 1) {
      JreStrongAssign(&currentNode->eqKid_, [self insertWithOrgApacheLuceneSearchSuggestTstTernaryTreeNode:currentNode->eqKid_ withJavaLangCharSequence:s withId:val withInt:x + 1]);
    }
    else {
      JreStrongAssign(&currentNode->token_, [s description]);
      JreStrongAssign(&currentNode->val_, val);
      return currentNode;
    }
  }
  else {
    JreStrongAssign(&currentNode->hiKid_, [self insertWithOrgApacheLuceneSearchSuggestTstTernaryTreeNode:currentNode->hiKid_ withJavaLangCharSequence:s withId:val withInt:x]);
  }
  return currentNode;
}

- (JavaUtilArrayList *)prefixCompletionWithOrgApacheLuceneSearchSuggestTstTernaryTreeNode:(OrgApacheLuceneSearchSuggestTstTernaryTreeNode *)root
                                                                 withJavaLangCharSequence:(id<JavaLangCharSequence>)s
                                                                                  withInt:(jint)x {
  OrgApacheLuceneSearchSuggestTstTernaryTreeNode *p = root;
  JavaUtilArrayList *suggest = [new_JavaUtilArrayList_init() autorelease];
  while (p != nil) {
    if ([((id<JavaLangCharSequence>) nil_chk(s)) charAtWithInt:x] < ((OrgApacheLuceneSearchSuggestTstTernaryTreeNode *) nil_chk(p))->splitchar_) {
      p = p->loKid_;
    }
    else if ([s charAtWithInt:x] == p->splitchar_) {
      if (x == [s length] - 1) {
        break;
      }
      else {
        x++;
      }
      p = p->eqKid_;
    }
    else {
      p = p->hiKid_;
    }
  }
  if (p == nil) return suggest;
  if (((OrgApacheLuceneSearchSuggestTstTernaryTreeNode *) nil_chk(p))->eqKid_ == nil && p->token_ == nil) return suggest;
  if (p->eqKid_ == nil && p->token_ != nil) {
    [suggest addWithId:p];
    return suggest;
  }
  if (p->token_ != nil) {
    [suggest addWithId:p];
  }
  p = p->eqKid_;
  JavaUtilStack *st = [new_JavaUtilStack_init() autorelease];
  [st pushWithId:p];
  while (![st empty]) {
    OrgApacheLuceneSearchSuggestTstTernaryTreeNode *top = [st peek];
    [st pop];
    if (((OrgApacheLuceneSearchSuggestTstTernaryTreeNode *) nil_chk(top))->token_ != nil) {
      [suggest addWithId:top];
    }
    if (top->eqKid_ != nil) {
      [st pushWithId:top->eqKid_];
    }
    if (top->loKid_ != nil) {
      [st pushWithId:top->loKid_];
    }
    if (top->hiKid_ != nil) {
      [st pushWithId:top->hiKid_];
    }
  }
  return suggest;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "TSTAutocomplete", NULL, 0x0, NULL, NULL },
    { "balancedTreeWithNSObjectArray:withNSObjectArray:withInt:withInt:withOrgApacheLuceneSearchSuggestTstTernaryTreeNode:", "balancedTree", "V", 0x1, NULL, NULL },
    { "insertWithOrgApacheLuceneSearchSuggestTstTernaryTreeNode:withJavaLangCharSequence:withId:withInt:", "insert", "Lorg.apache.lucene.search.suggest.tst.TernaryTreeNode;", 0x1, NULL, NULL },
    { "prefixCompletionWithOrgApacheLuceneSearchSuggestTstTernaryTreeNode:withJavaLangCharSequence:withInt:", "prefixCompletion", "Ljava.util.ArrayList;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestTstTSTAutocomplete = { 2, "TSTAutocomplete", "org.apache.lucene.search.suggest.tst", NULL, 0x1, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestTstTSTAutocomplete;
}

@end

void OrgApacheLuceneSearchSuggestTstTSTAutocomplete_init(OrgApacheLuceneSearchSuggestTstTSTAutocomplete *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchSuggestTstTSTAutocomplete *new_OrgApacheLuceneSearchSuggestTstTSTAutocomplete_init() {
  OrgApacheLuceneSearchSuggestTstTSTAutocomplete *self = [OrgApacheLuceneSearchSuggestTstTSTAutocomplete alloc];
  OrgApacheLuceneSearchSuggestTstTSTAutocomplete_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestTstTSTAutocomplete)
