package com.sun.jna;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
abstract class VarArgsChecker {
    abstract int fixedArgs(Method method);

    abstract boolean isVarArgs(Method method);

    private VarArgsChecker() {
    }

    private static final class RealVarArgsChecker extends VarArgsChecker {
        private RealVarArgsChecker() {
            super();
        }

        @Override // com.sun.jna.VarArgsChecker
        boolean isVarArgs(Method method) {
            return method.isVarArgs();
        }

        @Override // com.sun.jna.VarArgsChecker
        int fixedArgs(Method method) {
            if (method.isVarArgs()) {
                return method.getParameterTypes().length - 1;
            }
            return 0;
        }
    }

    private static final class NoVarArgsChecker extends VarArgsChecker {
        @Override // com.sun.jna.VarArgsChecker
        int fixedArgs(Method method) {
            return 0;
        }

        @Override // com.sun.jna.VarArgsChecker
        boolean isVarArgs(Method method) {
            return false;
        }

        private NoVarArgsChecker() {
            super();
        }
    }

    static VarArgsChecker create() {
        try {
            if (Method.class.getMethod("isVarArgs", null) != null) {
                return new RealVarArgsChecker();
            }
            return new NoVarArgsChecker();
        } catch (NoSuchMethodException | SecurityException unused) {
            return new NoVarArgsChecker();
        }
    }
}
