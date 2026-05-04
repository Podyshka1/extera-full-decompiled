package com.android.p003dx.rop.cst;

import com.android.p003dx.rop.annotation.Annotation;

/* JADX INFO: loaded from: classes4.dex */
public final class CstAnnotation extends Constant {
    private final Annotation annotation;

    @Override // com.android.p003dx.rop.cst.Constant
    public boolean isCategory2() {
        return false;
    }

    public CstAnnotation(Annotation annotation) {
        if (annotation == null) {
            throw new NullPointerException("annotation == null");
        }
        annotation.throwIfMutable();
        this.annotation = annotation;
    }

    public boolean equals(Object obj) {
        if (obj instanceof CstAnnotation) {
            return this.annotation.equals(((CstAnnotation) obj).annotation);
        }
        return false;
    }

    public int hashCode() {
        return this.annotation.hashCode();
    }

    @Override // com.android.p003dx.rop.cst.Constant
    protected int compareTo0(Constant constant) {
        return this.annotation.compareTo(((CstAnnotation) constant).annotation);
    }

    public String toString() {
        return this.annotation.toString();
    }

    @Override // com.android.p003dx.rop.cst.Constant
    public String typeName() {
        return "annotation";
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        return this.annotation.toString();
    }

    public Annotation getAnnotation() {
        return this.annotation;
    }
}
