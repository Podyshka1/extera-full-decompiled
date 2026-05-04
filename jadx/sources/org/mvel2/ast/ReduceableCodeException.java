package org.mvel2.ast;

/* JADX INFO: loaded from: classes5.dex */
public class ReduceableCodeException extends RuntimeException {
    private Object literal;

    public Object getLiteral() {
        return this.literal;
    }

    public ReduceableCodeException(Object obj) {
        this.literal = obj;
    }
}
