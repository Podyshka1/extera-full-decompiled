package org.mvel2.asm;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AnnotationVisitor {
    protected final int api;

    /* JADX INFO: renamed from: av */
    protected AnnotationVisitor f1559av;

    protected AnnotationVisitor(int i) {
        this(i, null);
    }

    protected AnnotationVisitor(int i, AnnotationVisitor annotationVisitor) {
        if (i != 589824 && i != 524288 && i != 458752 && i != 393216 && i != 327680 && i != 262144 && i != 17432576) {
            throw new IllegalArgumentException("Unsupported api " + i);
        }
        if (i == 17432576) {
            Constants.checkAsmExperimental(this);
        }
        this.api = i;
        this.f1559av = annotationVisitor;
    }

    public AnnotationVisitor getDelegate() {
        return this.f1559av;
    }

    public void visit(String str, Object obj) {
        AnnotationVisitor annotationVisitor = this.f1559av;
        if (annotationVisitor != null) {
            annotationVisitor.visit(str, obj);
        }
    }

    public void visitEnum(String str, String str2, String str3) {
        AnnotationVisitor annotationVisitor = this.f1559av;
        if (annotationVisitor != null) {
            annotationVisitor.visitEnum(str, str2, str3);
        }
    }

    public AnnotationVisitor visitAnnotation(String str, String str2) {
        AnnotationVisitor annotationVisitor = this.f1559av;
        if (annotationVisitor != null) {
            return annotationVisitor.visitAnnotation(str, str2);
        }
        return null;
    }

    public AnnotationVisitor visitArray(String str) {
        AnnotationVisitor annotationVisitor = this.f1559av;
        if (annotationVisitor != null) {
            return annotationVisitor.visitArray(str);
        }
        return null;
    }

    public void visitEnd() {
        AnnotationVisitor annotationVisitor = this.f1559av;
        if (annotationVisitor != null) {
            annotationVisitor.visitEnd();
        }
    }
}
