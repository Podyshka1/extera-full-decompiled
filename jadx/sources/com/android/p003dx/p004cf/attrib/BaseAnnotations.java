package com.android.p003dx.p004cf.attrib;

import com.android.p003dx.rop.annotation.Annotations;
import com.android.p003dx.util.MutabilityException;

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
            throw new NullPointerException("annotations == null");
        }
    }

    @Override // com.android.p003dx.p004cf.iface.Attribute
    public final int byteLength() {
        return this.byteLength + 6;
    }

    public final Annotations getAnnotations() {
        return this.annotations;
    }
}
