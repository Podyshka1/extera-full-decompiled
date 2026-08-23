package org.mvel2.asm;

/* JADX INFO: loaded from: classes5.dex */
public abstract class FieldVisitor {
    protected final int api;

    /* JADX INFO: renamed from: fv */
    protected FieldVisitor f1562fv;

    protected FieldVisitor(int i) {
        this(i, null);
    }

    protected FieldVisitor(int i, FieldVisitor fieldVisitor) {
        if (i != 589824 && i != 524288 && i != 458752 && i != 393216 && i != 327680 && i != 262144 && i != 17432576) {
            throw new IllegalArgumentException("Unsupported api " + i);
        }
        if (i == 17432576) {
            Constants.checkAsmExperimental(this);
        }
        this.api = i;
        this.f1562fv = fieldVisitor;
    }

    public FieldVisitor getDelegate() {
        return this.f1562fv;
    }

    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        FieldVisitor fieldVisitor = this.f1562fv;
        if (fieldVisitor != null) {
            return fieldVisitor.visitAnnotation(str, z);
        }
        return null;
    }

    public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (this.api < 327680) {
            throw new UnsupportedOperationException("This feature requires ASM5");
        }
        FieldVisitor fieldVisitor = this.f1562fv;
        if (fieldVisitor != null) {
            return fieldVisitor.visitTypeAnnotation(i, typePath, str, z);
        }
        return null;
    }

    public void visitAttribute(Attribute attribute) {
        FieldVisitor fieldVisitor = this.f1562fv;
        if (fieldVisitor != null) {
            fieldVisitor.visitAttribute(attribute);
        }
    }

    public void visitEnd() {
        FieldVisitor fieldVisitor = this.f1562fv;
        if (fieldVisitor != null) {
            fieldVisitor.visitEnd();
        }
    }
}
