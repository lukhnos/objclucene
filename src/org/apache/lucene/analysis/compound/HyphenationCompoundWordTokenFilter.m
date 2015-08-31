//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/compound/HyphenationCompoundWordTokenFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/CharSequence.h"
#include "java/util/LinkedList.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/compound/CompoundWordTokenFilterBase.h"
#include "org/apache/lucene/analysis/compound/HyphenationCompoundWordTokenFilter.h"
#include "org/apache/lucene/analysis/compound/hyphenation/Hyphenation.h"
#include "org/apache/lucene/analysis/compound/hyphenation/HyphenationTree.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/xml/sax/InputSource.h"

@interface OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter () {
 @public
  OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *hyphenator_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter, hyphenator_, OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *)

@implementation OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree:(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *)hyphenator
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)dictionary {
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, input, hyphenator, dictionary);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree:(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *)hyphenator
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)dictionary
                                                   withInt:(jint)minWordSize
                                                   withInt:(jint)minSubwordSize
                                                   withInt:(jint)maxSubwordSize
                                               withBoolean:(jboolean)onlyLongestMatch {
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(self, input, hyphenator, dictionary, minWordSize, minSubwordSize, maxSubwordSize, onlyLongestMatch);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree:(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *)hyphenator
                                                   withInt:(jint)minWordSize
                                                   withInt:(jint)minSubwordSize
                                                   withInt:(jint)maxSubwordSize {
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withInt_withInt_withInt_(self, input, hyphenator, minWordSize, minSubwordSize, maxSubwordSize);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree:(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *)hyphenator {
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_(self, input, hyphenator);
  return self;
}

+ (OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *)getHyphenationTreeWithNSString:(NSString *)hyphenationFilename {
  return OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_getHyphenationTreeWithNSString_(hyphenationFilename);
}

+ (OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *)getHyphenationTreeWithOrgXmlSaxInputSource:(OrgXmlSaxInputSource *)hyphenationSource {
  return OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_getHyphenationTreeWithOrgXmlSaxInputSource_(hyphenationSource);
}

- (void)decompose {
  OrgApacheLuceneAnalysisCompoundHyphenationHyphenation *hyphens = [((OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *) nil_chk(hyphenator_)) hyphenateWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer] withInt:0 withInt:[termAtt_ length] withInt:1 withInt:1];
  if (hyphens == nil) {
    return;
  }
  IOSIntArray *hyp = [((OrgApacheLuceneAnalysisCompoundHyphenationHyphenation *) nil_chk(hyphens)) getHyphenationPoints];
  for (jint i = 0; i < ((IOSIntArray *) nil_chk(hyp))->size_; ++i) {
    jint remaining = hyp->size_ - i;
    jint start = IOSIntArray_Get(hyp, i);
    OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken *longestMatchToken = nil;
    for (jint j = 1; j < remaining; j++) {
      jint partLength = IOSIntArray_Get(hyp, i + j) - start;
      if (partLength > self->maxSubwordSize_) {
        break;
      }
      if (partLength < self->minSubwordSize_) {
        continue;
      }
      if (dictionary_ == nil || [dictionary_ containsWithCharArray:[termAtt_ buffer] withInt:start withInt:partLength]) {
        if (self->onlyLongestMatch_) {
          if (longestMatchToken != nil) {
            if ([((id<JavaLangCharSequence>) nil_chk(longestMatchToken->txt_)) length] < partLength) {
              longestMatchToken = [new_OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken_initWithOrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_withInt_withInt_(self, start, partLength) autorelease];
            }
          }
          else {
            longestMatchToken = [new_OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken_initWithOrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_withInt_withInt_(self, start, partLength) autorelease];
          }
        }
        else {
          [((JavaUtilLinkedList *) nil_chk(tokens_)) addWithId:[new_OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken_initWithOrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_withInt_withInt_(self, start, partLength) autorelease]];
        }
      }
      else if ([dictionary_ containsWithCharArray:[termAtt_ buffer] withInt:start withInt:partLength - 1]) {
        if (self->onlyLongestMatch_) {
          if (longestMatchToken != nil) {
            if ([((id<JavaLangCharSequence>) nil_chk(longestMatchToken->txt_)) length] < partLength - 1) {
              longestMatchToken = [new_OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken_initWithOrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_withInt_withInt_(self, start, partLength - 1) autorelease];
            }
          }
          else {
            longestMatchToken = [new_OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken_initWithOrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_withInt_withInt_(self, start, partLength - 1) autorelease];
          }
        }
        else {
          [((JavaUtilLinkedList *) nil_chk(tokens_)) addWithId:[new_OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken_initWithOrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_withInt_withInt_(self, start, partLength - 1) autorelease]];
        }
      }
    }
    if (self->onlyLongestMatch_ && longestMatchToken != nil) {
      [((JavaUtilLinkedList *) nil_chk(tokens_)) addWithId:longestMatchToken];
    }
  }
}

- (void)dealloc {
  RELEASE_(hyphenator_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree:withOrgApacheLuceneAnalysisUtilCharArraySet:", "HyphenationCompoundWordTokenFilter", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree:withOrgApacheLuceneAnalysisUtilCharArraySet:withInt:withInt:withInt:withBoolean:", "HyphenationCompoundWordTokenFilter", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree:withInt:withInt:withInt:", "HyphenationCompoundWordTokenFilter", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree:", "HyphenationCompoundWordTokenFilter", NULL, 0x1, NULL, NULL },
    { "getHyphenationTreeWithNSString:", "getHyphenationTree", "Lorg.apache.lucene.analysis.compound.hyphenation.HyphenationTree;", 0x9, "Ljava.io.IOException;", NULL },
    { "getHyphenationTreeWithOrgXmlSaxInputSource:", "getHyphenationTree", "Lorg.apache.lucene.analysis.compound.hyphenation.HyphenationTree;", 0x9, "Ljava.io.IOException;", NULL },
    { "decompose", NULL, "V", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "hyphenator_", NULL, 0x2, "Lorg.apache.lucene.analysis.compound.hyphenation.HyphenationTree;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter = { 2, "HyphenationCompoundWordTokenFilter", "org.apache.lucene.analysis.compound", NULL, 0x1, 7, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter;
}

@end

void OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *hyphenator, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary) {
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(self, input, hyphenator, dictionary, OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MIN_WORD_SIZE, OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MIN_SUBWORD_SIZE, OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MAX_SUBWORD_SIZE, NO);
}

OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter *new_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *hyphenator, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary) {
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter *self = [OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter alloc];
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, input, hyphenator, dictionary);
  return self;
}

void OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *hyphenator, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary, jint minWordSize, jint minSubwordSize, jint maxSubwordSize, jboolean onlyLongestMatch) {
  OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(self, input, dictionary, minWordSize, minSubwordSize, maxSubwordSize, onlyLongestMatch);
  JreStrongAssign(&self->hyphenator_, hyphenator);
}

OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter *new_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *hyphenator, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary, jint minWordSize, jint minSubwordSize, jint maxSubwordSize, jboolean onlyLongestMatch) {
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter *self = [OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter alloc];
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(self, input, hyphenator, dictionary, minWordSize, minSubwordSize, maxSubwordSize, onlyLongestMatch);
  return self;
}

void OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withInt_withInt_withInt_(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *hyphenator, jint minWordSize, jint minSubwordSize, jint maxSubwordSize) {
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(self, input, hyphenator, nil, minWordSize, minSubwordSize, maxSubwordSize, NO);
}

OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter *new_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withInt_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *hyphenator, jint minWordSize, jint minSubwordSize, jint maxSubwordSize) {
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter *self = [OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter alloc];
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withInt_withInt_withInt_(self, input, hyphenator, minWordSize, minSubwordSize, maxSubwordSize);
  return self;
}

void OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *hyphenator) {
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withInt_withInt_withInt_(self, input, hyphenator, OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MIN_WORD_SIZE, OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MIN_SUBWORD_SIZE, OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MAX_SUBWORD_SIZE);
}

OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter *new_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *hyphenator) {
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter *self = [OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter alloc];
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_(self, input, hyphenator);
  return self;
}

OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_getHyphenationTreeWithNSString_(NSString *hyphenationFilename) {
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initialize();
  return OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_getHyphenationTreeWithOrgXmlSaxInputSource_([new_OrgXmlSaxInputSource_initWithNSString_(hyphenationFilename) autorelease]);
}

OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_getHyphenationTreeWithOrgXmlSaxInputSource_(OrgXmlSaxInputSource *hyphenationSource) {
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initialize();
  OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *tree = [new_OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_init() autorelease];
  [tree loadPatternsWithOrgXmlSaxInputSource:hyphenationSource];
  return tree;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter)