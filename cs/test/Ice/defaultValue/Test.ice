// **********************************************************************
//
// Copyright (c) 2003-2013 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_LICENSE file included in this distribution.
//
// **********************************************************************

#pragma once

module Test
{

enum Color { red, green, blue };

module Nested
{

enum Color { red, green, blue };

};

//
// Struct1 maps to a C# class because it contains string members.
//
struct Struct1
{
    bool boolFalse = false;
    bool boolTrue = true;
    byte b = 254;
    short s = 16000;
    int i = 3;
    long l = 4;
    float f = 5.1;
    double d = 6.2;
    string str = "foo \\ \"bar\n \r\n\t\v\f\a\b\? \007 \x07";
    Color c1 = ::Test::red;
    Color c2 = Test::green;
    Color c3 = blue;
    Nested::Color nc1 = ::Test::Nested::red;
    Nested::Color nc2 = Nested::green;
    Nested::Color nc3 = Nested::blue;
    string noDefault;
    int zeroI = 0;
    long zeroL = 0;
    float zeroF = 0;
    float zeroDotF = 0.0;
    double zeroD = 0;
    double zeroDotD = 0;
};

const bool ConstBool = true;
const byte ConstByte = 254;
const short ConstShort = 16000;
const int ConstInt = 3;
const long ConstLong = 4;
const float ConstFloat = 5.1;
const double ConstDouble = 6.2;
const string ConstString = "foo \\ \"bar\n \r\n\t\v\f\a\b\? \007 \x07";
const Color ConstColor1 = ::Test::red;
const Color ConstColor2 = Test::green;
const Color ConstColor3 = blue;
const Nested::Color ConstNestedColor1 = ::Test::Nested::red;
const Nested::Color ConstNestedColor2 = Test::Nested::green;
const Nested::Color ConstNestedColor3 = Nested::blue;
const int ConstZeroI = 0;
const long ConstZeroL = 0;
const float ConstZeroF = 0;
const float ConstZeroDotF = 0.0;
const double ConstZeroD = 0;
const double ConstZeroDotD = 0;

struct Struct2
{
    bool boolTrue = ConstBool;
    byte b = ConstByte;
    short s = ConstShort;
    int i = ConstInt;
    long l = ConstLong;
    float f = ConstFloat;
    double d = ConstDouble;
    string str = ConstString;
    Color c1 = ConstColor1;
    Color c2 = ConstColor2;
    Color c3 = ConstColor3;
    Nested::Color nc1 = ConstNestedColor1;
    Nested::Color nc2 = ConstNestedColor2;
    Nested::Color nc3 = ConstNestedColor3;
    int zeroI = ConstZeroI;
    long zeroL = ConstZeroL;
    float zeroF = ConstZeroF;
    float zeroDotF = ConstZeroDotF;
    double zeroD = ConstZeroD;
    double zeroDotD = ConstZeroDotD;
};

//
// Struct3 would normally map to a C# struct because we have omitted
// the string members, but we use metadata to force it to be mapped
// to a class.
//
["clr:class"]
struct Struct3
{
    bool boolFalse = false;
    bool boolTrue = true;
    byte b = 1;
    short s = 2;
    int i = 3;
    long l = 4;
    float f = 5.1;
    double d = 6.2;
    //string str = "foo \\ \"bar\n \r\n\t\v\f\a\b\? \007 \x07";
    Color c1 = ::Test::red;
    Color c2 = Test::green;
    Color c3 = blue;
    Nested::Color nc1 = ::Test::Nested::red;
    Nested::Color nc2 = Nested::green;
    Nested::Color nc3 = Nested::blue;
    //string noDefault;
    int zeroI = 0;
    long zeroL = 0;
    float zeroF = 0;
    float zeroDotF = 0.0;
    double zeroD = 0;
    double zeroDotD = 0;
};

//
// Struct4 would normally map to a C# struct because we have omitted
// the string members, and don't contains clr:class metadata, but as it
// contains default values it is mapped to a class.
//
struct Struct4
{
    bool boolFalse = false;
    bool boolTrue = true;
    byte b = 1;
    short s = 2;
    int i = 3;
    long l = 4;
    float f = 5.1;
    double d = 6.2;
    //string str = "foo \\ \"bar\n \r\n\t\v\f\a\b\? \007 \x07";
    Color c1 = ::Test::red;
    Color c2 = Test::green;
    Color c3 = blue;
    Nested::Color nc1 = ::Test::Nested::red;
    Nested::Color nc2 = Nested::green;
    Nested::Color nc3 = Nested::blue;
    //string noDefault;
    int zeroI = 0;
    long zeroL = 0;
    float zeroF = 0;
    float zeroDotF = 0.0;
    double zeroD = 0;
    double zeroDotD = 0;
};

class Base
{
    bool boolFalse = false;
    bool boolTrue = true;
    byte b = 1;
    short s = 2;
    int i = 3;
    long l = 4;
    float f = 5.1;
    double d = 6.2;
    string str = "foo \\ \"bar\n \r\n\t\v\f\a\b\? \007 \x07";
    string noDefault;
    int zeroI = 0;
    long zeroL = 0;
    float zeroF = 0;
    float zeroDotF = 0.0;
    double zeroD = 0;
    double zeroDotD = 0;
};

class Derived extends Base
{
    Color c1 = ::Test::red;
    Color c2 = Test::green;
    Color c3 = blue;
    
    Nested::Color nc1 = ::Test::Nested::red;
    Nested::Color nc2 = Nested::green;
    Nested::Color nc3 = Nested::blue;
};

exception BaseEx
{
    bool boolFalse = false;
    bool boolTrue = true;
    byte b = 1;
    short s = 2;
    int i = 3;
    long l = 4;
    float f = 5.1;
    double d = 6.2;
    string str = "foo \\ \"bar\n \r\n\t\v\f\a\b\? \007 \x07";
    string noDefault;
    int zeroI = 0;
    long zeroL = 0;
    float zeroF = 0;
    float zeroDotF = 0.0;
    double zeroD = 0;
    double zeroDotD = 0;
};

exception DerivedEx extends BaseEx
{
    Color c1 = ConstColor1;
    Color c2 = ConstColor2;
    Color c3 = ConstColor3;
    
    Nested::Color nc1 = ConstNestedColor1;
    Nested::Color nc2 = ConstNestedColor2;
    Nested::Color nc3 = ConstNestedColor3;
};

["clr:property"]
class ClassProperty
{
    bool boolFalse = false;
    bool boolTrue = true;
    byte b = 1;
    short s = 2;
    int i = 3;
    long l = 4;
    float f = 5.1;
    double d = 6.2;
    string str = "foo bar";
    string noDefault;
    int zeroI = 0;
    long zeroL = 0;
    float zeroF = 0;
    float zeroDotF = 0.0;
    double zeroD = 0;
    double zeroDotD = 0;
};

["clr:property"]
struct StructProperty
{
    bool boolFalse = false;
    bool boolTrue = true;
    byte b = 1;
    short s = 2;
    int i = 3;
    long l = 4;
    float f = 5.1;
    double d = 6.2;
    string str = "foo bar";
    string noDefault;
    int zeroI = 0;
    long zeroL = 0;
    float zeroF = 0;
    float zeroDotF = 0.0;
    double zeroD = 0;
    double zeroDotD = 0;
};

//
// Exceptions don't support "clr:property" metadata, but
// we want to ensure that the generated code compiles.
// A warning "warning: ignoring invalid metadata `clr:property'"
// is expected when compiling this file.
//
["clr:property"]
exception ExceptionProperty
{
    bool boolFalse = false;
    bool boolTrue = true;
    byte b = 1;
    short s = 2;
    int i = 3;
    long l = 4;
    float f = 5.1;
    double d = 6.2;
    string str = "foo bar";
    string noDefault;
    int zeroI = 0;
    long zeroL = 0;
    float zeroF = 0;
    float zeroDotF = 0.0;
    double zeroD = 0;
    double zeroDotD = 0;
};

};
