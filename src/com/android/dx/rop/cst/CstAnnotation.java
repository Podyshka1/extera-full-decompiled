package com.android.dx.rop.cst;

import com.android.dx.rop.annotation.Annotation;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class CstAnnotation extends Constant {
    private final Annotation annotation;

    @Override // com.android.dx.rop.cst.Constant
    public boolean isCategory2() {
        return false;
    }

    public CstAnnotation(Annotation annotation) {
        if (annotation == null) {
            f$$ExternalSyntheticBUOutline2.m179m("annotation == null");
            throw null;
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

    @Override // com.android.dx.rop.cst.Constant
    public int compareTo0(Constant constant) {
        return this.annotation.compareTo(((CstAnnotation) constant).annotation);
    }

    public String toString() {
        return this.annotation.toString();
    }

    @Override // com.android.dx.rop.cst.Constant
    public String typeName() {
        return "annotation";
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        return this.annotation.toString();
    }

    public Annotation getAnnotation() {
        return this.annotation;
    }
}
