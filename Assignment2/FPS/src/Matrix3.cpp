//
//  Matrix3.cpp
//  SimpleFPS
//
//  Created by Akhil Raja on 12/09/20.
//

#include "Matrix3.h"
#include <math.h>

Matrix3 scalerMultiplyMatrix3(Matrix3 matrix, GLfloat scalerValue)
{
    Matrix3 newMatrix3;
    newMatrix3.m00 = matrix.m00*scalerValue;
    newMatrix3.m01 = matrix.m01*scalerValue;
    newMatrix3.m02 = matrix.m02*scalerValue;
    newMatrix3.m10 = matrix.m10*scalerValue;
    newMatrix3.m11 = matrix.m11*scalerValue;
    newMatrix3.m12 = matrix.m12*scalerValue;
    newMatrix3.m20 = matrix.m20*scalerValue;
    newMatrix3.m21 = matrix.m21*scalerValue;
    newMatrix3.m22 = matrix.m22*scalerValue;
    
    return newMatrix3;
}

Matrix3 addMatrix3(Matrix3 matrixA, Matrix3 matrixB)
{
    Matrix3 newMatrix3;
    newMatrix3.m00 = matrixA.m00 + matrixB.m00;
    newMatrix3.m01 = matrixA.m01 + matrixB.m01;
    newMatrix3.m02 = matrixA.m02 + matrixB.m02;
    newMatrix3.m10 = matrixA.m10 + matrixB.m10;
    newMatrix3.m11 = matrixA.m11 + matrixB.m11;
    newMatrix3.m12 = matrixA.m12 + matrixB.m12;
    newMatrix3.m20 = matrixA.m20 + matrixB.m20;
    newMatrix3.m21 = matrixA.m21 + matrixB.m21;
    newMatrix3.m22 = matrixA.m22 + matrixB.m22;
    
    return newMatrix3;
}
