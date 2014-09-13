//
//  FoundationExtensions.swift
//
//  Created by Brian Kracoff on 9/11/14.
//  Copyright (c) 2014 Brian Kracoff (kracoff.org)
//
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

// MARK: NSDate

func + (left: NSDate, right: NSDate) -> NSDate {
    return NSDate(timeIntervalSinceReferenceDate:(left.timeIntervalSinceReferenceDate+right.timeIntervalSinceReferenceDate))
}

func - (left: NSDate, right: NSDate) -> NSDate {
    return NSDate(timeIntervalSinceReferenceDate:(left.timeIntervalSinceReferenceDate-right.timeIntervalSinceReferenceDate))
}

func > (left: NSDate, right: NSDate) -> Bool {
    return left.timeIntervalSinceReferenceDate > right.timeIntervalSinceReferenceDate
}

func >= (left: NSDate, right: NSDate) -> Bool {
    return left.timeIntervalSinceReferenceDate >= right.timeIntervalSinceReferenceDate
}

func < (left: NSDate, right: NSDate) -> Bool {
    return left.timeIntervalSinceReferenceDate < right.timeIntervalSinceReferenceDate
}

func <= (left: NSDate, right: NSDate) -> Bool {
    return left.timeIntervalSinceReferenceDate <= right.timeIntervalSinceReferenceDate
}

// MARK: NSIndexPath

extension NSIndexPath: ArrayLiteralConvertible {
    
    public class func convertFromArrayLiteral(indexes: Int...) -> Self {
        return self(indexes: indexes, length: indexes.count)
    }
    
}

// MARK: NSSet

extension NSSet: ArrayLiteralConvertible {
    
    public class func convertFromArrayLiteral(elements: AnyObject...) -> Self {
        return self(array: elements)
    }
    
}

// MARK: NSURL

extension NSURL: StringLiteralConvertible {
    
    typealias ExtendedGraphemeClusterLiteralType = StringLiteralType
    
    public class func convertFromExtendedGraphemeClusterLiteral(value: StringLiteralType) -> Self {
        return self(string: value)
    }
    
    public class func convertFromStringLiteral(value: StringLiteralType) -> Self {
        return self(string: value)
    }
    
}
