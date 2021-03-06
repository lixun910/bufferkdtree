%module wrapper_cpu_float

%{
    #define SWIG_FILE_WITH_INIT
    #include "base.h"
    #include "types.h"
%}

%include "numpy.i"

%init %{
    import_array();
%}

%apply (float* INPLACE_ARRAY2, int DIM1, int DIM2) {(FLOAT_TYPE* Xtrain, INT_TYPE nXtrain, INT_TYPE dXtrain)}
%apply (float* INPLACE_ARRAY2, int DIM1, int DIM2) {(FLOAT_TYPE* Xtest, INT_TYPE nXtest, INT_TYPE dXtest)}

%apply (float* INPLACE_ARRAY2, int DIM1, int DIM2) {(FLOAT_TYPE* distances, INT_TYPE ndistances, INT_TYPE ddistances)}
%apply (int* INPLACE_ARRAY2, int DIM1, int DIM2) {(INT_TYPE* indices, INT_TYPE nindices, INT_TYPE dindices)}

%include "base.h"      
%include "types.h" 

