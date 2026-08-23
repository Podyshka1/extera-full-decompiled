package com.android.dx.cf.attrib;

import com.android.dx.rop.annotation.Annotations;
import com.android.dx.util.MutabilityException;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseAnnotations extends BaseAttribute {
    private final Annotations annotations;
    private final int byteLength;

    public BaseAnnotations(String str, Annotations annotations, int i) {
        super(str);
        try {
            if (annotations.isMutable()) {
                throw new MutabilityException("annotations.isMutable()");
            }
            this.annotations = annotations;
            this.byteLength = i;
        } catch (NullPointerException unused) {
            f$$ExternalSyntheticBUOutline2.m179m("annotations == null");
            throw null;
        }
    }

    @Override // com.android.dx.cf.iface.Attribute
    public final int byteLength() {
        return this.byteLength + 6;
    }

    public final Annotations getAnnotations() {
        return this.annotations;
    }
}
