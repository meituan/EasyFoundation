//
//  EZTupleBase+EZFTransfer.m
//  EasyFoundation_Example
//
//  Created by William Zang on 2018/7/9.
//  Copyright (c) 2018 Beijing Sankuai Online Technology Co.,Ltd (Meituan)
//

@import Foundation;
@import Quick;
@import Nimble;
@import EasySequence;
@import EasyTuple;
#import "EZTupleBase+EZFTransfer.h"

QuickSpecBegin(EZTupleBaseTransferSpec)

it(@"can convert a sequence to a tuple", ^{
    EZSequence *sequence = EZS_Sequence(@[@1, @2, @3]);
    EZTuple3 *tuple = (EZTuple3 *)[EZTupleBase transferFromSequence:sequence];
    expect(tuple).to(equal(EZTuple(@1, @2, @3)));
});

QuickSpecEnd
