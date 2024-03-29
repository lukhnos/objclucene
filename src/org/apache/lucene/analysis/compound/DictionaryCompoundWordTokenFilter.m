//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/compound/DictionaryCompoundWordTokenFilter.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/LinkedList.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/compound/CompoundWordTokenFilterBase.h"
#include "org/apache/lucene/analysis/compound/DictionaryCompoundWordTokenFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/compound/DictionaryCompoundWordTokenFilter must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)dictionary {
  OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, input, dictionary);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)dictionary
                                                   withInt:(jint)minWordSize
                                                   withInt:(jint)minSubwordSize
                                                   withInt:(jint)maxSubwordSize
                                               withBoolean:(jboolean)onlyLongestMatch {
  OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(self, input, dictionary, minWordSize, minSubwordSize, maxSubwordSize, onlyLongestMatch);
  return self;
}

- (void)decompose {
  jint len = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) java_length];
  for (jint i = 0; i <= len - self->minSubwordSize_; ++i) {
    OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken *longestMatchToken = nil;
    for (jint j = self->minSubwordSize_; j <= self->maxSubwordSize_; ++j) {
      if (i + j > len) {
        break;
      }
      if ([((OrgApacheLuceneAnalysisUtilCharArraySet *) nil_chk(dictionary_)) containsWithCharArray:[termAtt_ buffer] withInt:i withInt:j]) {
        if (self->onlyLongestMatch_) {
          if (longestMatchToken != nil) {
            if ([((id<JavaLangCharSequence>) nil_chk(longestMatchToken->txt_)) java_length] < j) {
              longestMatchToken = create_OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken_initWithOrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_withInt_withInt_(self, i, j);
            }
          }
          else {
            longestMatchToken = create_OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken_initWithOrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_withInt_withInt_(self, i, j);
          }
        }
        else {
          [((JavaUtilLinkedList *) nil_chk(tokens_)) addWithId:create_OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken_initWithOrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_withInt_withInt_(self, i, j)];
        }
      }
    }
    if (self->onlyLongestMatch_ && longestMatchToken != nil) {
      [((JavaUtilLinkedList *) nil_chk(tokens_)) addWithId:longestMatchToken];
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisUtilCharArraySet:);
  methods[1].selector = @selector(initWithOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisUtilCharArraySet:withInt:withInt:withInt:withBoolean:);
  methods[2].selector = @selector(decompose);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisTokenStream;LOrgApacheLuceneAnalysisUtilCharArraySet;", "LOrgApacheLuceneAnalysisTokenStream;LOrgApacheLuceneAnalysisUtilCharArraySet;IIIZ" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter = { "DictionaryCompoundWordTokenFilter", "org.apache.lucene.analysis.compound", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter;
}

@end

void OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary) {
  OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, input, dictionary);
  if (dictionary == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"dictionary cannot be null");
  }
}

OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter *new_OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter, initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_, input, dictionary)
}

OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter *create_OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter, initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_, input, dictionary)
}

void OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary, jint minWordSize, jint minSubwordSize, jint maxSubwordSize, jboolean onlyLongestMatch) {
  OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(self, input, dictionary, minWordSize, minSubwordSize, maxSubwordSize, onlyLongestMatch);
  if (dictionary == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"dictionary cannot be null");
  }
}

OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter *new_OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary, jint minWordSize, jint minSubwordSize, jint maxSubwordSize, jboolean onlyLongestMatch) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter, initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_, input, dictionary, minWordSize, minSubwordSize, maxSubwordSize, onlyLongestMatch)
}

OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter *create_OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary, jint minWordSize, jint minSubwordSize, jint maxSubwordSize, jboolean onlyLongestMatch) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter, initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_, input, dictionary, minWordSize, minSubwordSize, maxSubwordSize, onlyLongestMatch)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCompoundDictionaryCompoundWordTokenFilter)
