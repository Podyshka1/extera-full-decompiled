package org.mvel2.asm;

/* JADX INFO: loaded from: classes5.dex */
public abstract class MethodVisitor {
    private static final String REQUIRES_ASM5 = "This feature requires ASM5";
    protected final int api;

    /* JADX INFO: renamed from: mv */
    protected MethodVisitor f1563mv;

    protected MethodVisitor(int i) {
        this(i, null);
    }

    protected MethodVisitor(int i, MethodVisitor methodVisitor) {
        if (i != 589824 && i != 524288 && i != 458752 && i != 393216 && i != 327680 && i != 262144 && i != 17432576) {
            throw new IllegalArgumentException("Unsupported api " + i);
        }
        if (i == 17432576) {
            Constants.checkAsmExperimental(this);
        }
        this.api = i;
        this.f1563mv = methodVisitor;
    }

    public MethodVisitor getDelegate() {
        return this.f1563mv;
    }

    public void visitParameter(String str, int i) {
        if (this.api < 327680) {
            throw new UnsupportedOperationException(REQUIRES_ASM5);
        }
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitParameter(str, i);
        }
    }

    public AnnotationVisitor visitAnnotationDefault() {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            return methodVisitor.visitAnnotationDefault();
        }
        return null;
    }

    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            return methodVisitor.visitAnnotation(str, z);
        }
        return null;
    }

    public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (this.api < 327680) {
            throw new UnsupportedOperationException(REQUIRES_ASM5);
        }
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            return methodVisitor.visitTypeAnnotation(i, typePath, str, z);
        }
        return null;
    }

    public void visitAnnotableParameterCount(int i, boolean z) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitAnnotableParameterCount(i, z);
        }
    }

    public AnnotationVisitor visitParameterAnnotation(int i, String str, boolean z) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            return methodVisitor.visitParameterAnnotation(i, str, z);
        }
        return null;
    }

    public void visitAttribute(Attribute attribute) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitAttribute(attribute);
        }
    }

    public void visitCode() {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitCode();
        }
    }

    public void visitFrame(int i, int i2, Object[] objArr, int i3, Object[] objArr2) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitFrame(i, i2, objArr, i3, objArr2);
        }
    }

    public void visitInsn(int i) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitInsn(i);
        }
    }

    public void visitIntInsn(int i, int i2) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitIntInsn(i, i2);
        }
    }

    public void visitVarInsn(int i, int i2) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitVarInsn(i, i2);
        }
    }

    public void visitTypeInsn(int i, String str) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitTypeInsn(i, str);
        }
    }

    public void visitFieldInsn(int i, String str, String str2, String str3) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitFieldInsn(i, str, str2, str3);
        }
    }

    @Deprecated
    public void visitMethodInsn(int i, String str, String str2, String str3) {
        visitMethodInsn(i | (this.api < 327680 ? 256 : 0), str, str2, str3, i == 185);
    }

    public void visitMethodInsn(int i, String str, String str2, String str3, boolean z) {
        if (this.api < 327680 && (i & 256) == 0) {
            if (z != (i == 185)) {
                throw new UnsupportedOperationException("INVOKESPECIAL/STATIC on interfaces requires ASM5");
            }
            visitMethodInsn(i, str, str2, str3);
        } else {
            MethodVisitor methodVisitor = this.f1563mv;
            if (methodVisitor != null) {
                methodVisitor.visitMethodInsn(i & (-257), str, str2, str3, z);
            }
        }
    }

    public void visitInvokeDynamicInsn(String str, String str2, Handle handle, Object... objArr) {
        if (this.api < 327680) {
            throw new UnsupportedOperationException(REQUIRES_ASM5);
        }
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitInvokeDynamicInsn(str, str2, handle, objArr);
        }
    }

    public void visitJumpInsn(int i, Label label) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitJumpInsn(i, label);
        }
    }

    public void visitLabel(Label label) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitLabel(label);
        }
    }

    public void visitLdcInsn(Object obj) {
        if (this.api < 327680 && ((obj instanceof Handle) || ((obj instanceof Type) && ((Type) obj).getSort() == 11))) {
            throw new UnsupportedOperationException(REQUIRES_ASM5);
        }
        if (this.api < 458752 && (obj instanceof ConstantDynamic)) {
            throw new UnsupportedOperationException("This feature requires ASM7");
        }
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitLdcInsn(obj);
        }
    }

    public void visitIincInsn(int i, int i2) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitIincInsn(i, i2);
        }
    }

    public void visitTableSwitchInsn(int i, int i2, Label label, Label... labelArr) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitTableSwitchInsn(i, i2, label, labelArr);
        }
    }

    public void visitLookupSwitchInsn(Label label, int[] iArr, Label[] labelArr) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitLookupSwitchInsn(label, iArr, labelArr);
        }
    }

    public void visitMultiANewArrayInsn(String str, int i) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitMultiANewArrayInsn(str, i);
        }
    }

    public AnnotationVisitor visitInsnAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (this.api < 327680) {
            throw new UnsupportedOperationException(REQUIRES_ASM5);
        }
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            return methodVisitor.visitInsnAnnotation(i, typePath, str, z);
        }
        return null;
    }

    public void visitTryCatchBlock(Label label, Label label2, Label label3, String str) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitTryCatchBlock(label, label2, label3, str);
        }
    }

    public AnnotationVisitor visitTryCatchAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (this.api < 327680) {
            throw new UnsupportedOperationException(REQUIRES_ASM5);
        }
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            return methodVisitor.visitTryCatchAnnotation(i, typePath, str, z);
        }
        return null;
    }

    public void visitLocalVariable(String str, String str2, String str3, Label label, Label label2, int i) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitLocalVariable(str, str2, str3, label, label2, i);
        }
    }

    public AnnotationVisitor visitLocalVariableAnnotation(int i, TypePath typePath, Label[] labelArr, Label[] labelArr2, int[] iArr, String str, boolean z) {
        if (this.api < 327680) {
            throw new UnsupportedOperationException(REQUIRES_ASM5);
        }
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            return methodVisitor.visitLocalVariableAnnotation(i, typePath, labelArr, labelArr2, iArr, str, z);
        }
        return null;
    }

    public void visitLineNumber(int i, Label label) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitLineNumber(i, label);
        }
    }

    public void visitMaxs(int i, int i2) {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitMaxs(i, i2);
        }
    }

    public void visitEnd() {
        MethodVisitor methodVisitor = this.f1563mv;
        if (methodVisitor != null) {
            methodVisitor.visitEnd();
        }
    }
}
