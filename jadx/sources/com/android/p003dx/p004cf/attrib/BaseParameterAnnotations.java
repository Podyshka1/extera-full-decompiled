package com.android.p003dx.p004cf.attrib;

import com.android.p003dx.rop.annotation.AnnotationsList;
import com.android.p003dx.util.MutabilityException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseParameterAnnotations extends BaseAttribute {
    private final int byteLength;
    private final AnnotationsList parameterAnnotations;

    public BaseParameterAnnotations(String str, AnnotationsList annotationsList, int i) {
        super(str);
        try {
            if (annotationsList.isMutable()) {
                throw new MutabilityException("parameterAnnotations.isMutable()");
            }
            this.parameterAnnotations = annotationsList;
            this.byteLength = i;
        } catch (NullPointerException unused) {
            throw new NullPointerException("parameterAnnotations == null");
        }
    }

    @Override // com.android.p003dx.p004cf.iface.Attribute
    public final int byteLength() {
        return this.byteLength + 6;
    }

    public final AnnotationsList getParameterAnnotations() {
        return this.parameterAnnotations;
    }
}
