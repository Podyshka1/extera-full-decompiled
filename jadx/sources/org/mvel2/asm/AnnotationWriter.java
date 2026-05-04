package org.mvel2.asm;

import com.android.p003dx.p004cf.attrib.AttRuntimeInvisibleAnnotations;
import com.android.p003dx.p004cf.attrib.AttRuntimeVisibleAnnotations;

/* JADX INFO: loaded from: classes5.dex */
final class AnnotationWriter extends AnnotationVisitor {
    private final ByteVector annotation;
    private AnnotationWriter nextAnnotation;
    private int numElementValuePairs;
    private final int numElementValuePairsOffset;
    private final AnnotationWriter previousAnnotation;
    private final SymbolTable symbolTable;
    private final boolean useNamedValues;

    AnnotationWriter(SymbolTable symbolTable, boolean z, ByteVector byteVector, AnnotationWriter annotationWriter) {
        super(Opcodes.ASM9);
        this.symbolTable = symbolTable;
        this.useNamedValues = z;
        this.annotation = byteVector;
        int i = byteVector.length;
        this.numElementValuePairsOffset = i == 0 ? -1 : i - 2;
        this.previousAnnotation = annotationWriter;
        if (annotationWriter != null) {
            annotationWriter.nextAnnotation = this;
        }
    }

    static AnnotationWriter create(SymbolTable symbolTable, String str, AnnotationWriter annotationWriter) {
        ByteVector byteVector = new ByteVector();
        byteVector.putShort(symbolTable.addConstantUtf8(str)).putShort(0);
        return new AnnotationWriter(symbolTable, true, byteVector, annotationWriter);
    }

    static AnnotationWriter create(SymbolTable symbolTable, int i, TypePath typePath, String str, AnnotationWriter annotationWriter) {
        ByteVector byteVector = new ByteVector();
        TypeReference.putTarget(i, byteVector);
        TypePath.put(typePath, byteVector);
        byteVector.putShort(symbolTable.addConstantUtf8(str)).putShort(0);
        return new AnnotationWriter(symbolTable, true, byteVector, annotationWriter);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // org.mvel2.asm.AnnotationVisitor
    public void visit(String str, Object obj) {
        this.numElementValuePairs++;
        if (this.useNamedValues) {
            this.annotation.putShort(this.symbolTable.addConstantUtf8(str));
        }
        if (obj instanceof String) {
            this.annotation.put12(115, this.symbolTable.addConstantUtf8((String) obj));
            return;
        }
        if (obj instanceof Byte) {
            this.annotation.put12(66, this.symbolTable.addConstantInteger(((Byte) obj).byteValue()).index);
            return;
        }
        if (obj instanceof Boolean) {
            this.annotation.put12(90, this.symbolTable.addConstantInteger(((Boolean) obj).booleanValue() ? 1 : 0).index);
            return;
        }
        if (obj instanceof Character) {
            this.annotation.put12(67, this.symbolTable.addConstantInteger(((Character) obj).charValue()).index);
            return;
        }
        if (obj instanceof Short) {
            this.annotation.put12(83, this.symbolTable.addConstantInteger(((Short) obj).shortValue()).index);
            return;
        }
        if (obj instanceof Type) {
            this.annotation.put12(99, this.symbolTable.addConstantUtf8(((Type) obj).getDescriptor()));
            return;
        }
        int i = 0;
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            this.annotation.put12(91, bArr.length);
            int length = bArr.length;
            while (i < length) {
                this.annotation.put12(66, this.symbolTable.addConstantInteger(bArr[i]).index);
                i++;
            }
            return;
        }
        if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            this.annotation.put12(91, zArr.length);
            int length2 = zArr.length;
            while (i < length2) {
                this.annotation.put12(90, this.symbolTable.addConstantInteger(zArr[i] ? 1 : 0).index);
                i++;
            }
            return;
        }
        if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            this.annotation.put12(91, sArr.length);
            int length3 = sArr.length;
            while (i < length3) {
                this.annotation.put12(83, this.symbolTable.addConstantInteger(sArr[i]).index);
                i++;
            }
            return;
        }
        if (obj instanceof char[]) {
            char[] cArr = (char[]) obj;
            this.annotation.put12(91, cArr.length);
            int length4 = cArr.length;
            while (i < length4) {
                this.annotation.put12(67, this.symbolTable.addConstantInteger(cArr[i]).index);
                i++;
            }
            return;
        }
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            this.annotation.put12(91, iArr.length);
            int length5 = iArr.length;
            while (i < length5) {
                this.annotation.put12(73, this.symbolTable.addConstantInteger(iArr[i]).index);
                i++;
            }
            return;
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            this.annotation.put12(91, jArr.length);
            int length6 = jArr.length;
            while (i < length6) {
                this.annotation.put12(74, this.symbolTable.addConstantLong(jArr[i]).index);
                i++;
            }
            return;
        }
        if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            this.annotation.put12(91, fArr.length);
            int length7 = fArr.length;
            while (i < length7) {
                this.annotation.put12(70, this.symbolTable.addConstantFloat(fArr[i]).index);
                i++;
            }
            return;
        }
        if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            this.annotation.put12(91, dArr.length);
            int length8 = dArr.length;
            while (i < length8) {
                this.annotation.put12(68, this.symbolTable.addConstantDouble(dArr[i]).index);
                i++;
            }
            return;
        }
        Symbol symbolAddConstant = this.symbolTable.addConstant(obj);
        this.annotation.put12(".s.IFJDCS".charAt(symbolAddConstant.tag), symbolAddConstant.index);
    }

    @Override // org.mvel2.asm.AnnotationVisitor
    public void visitEnum(String str, String str2, String str3) {
        this.numElementValuePairs++;
        if (this.useNamedValues) {
            this.annotation.putShort(this.symbolTable.addConstantUtf8(str));
        }
        this.annotation.put12(101, this.symbolTable.addConstantUtf8(str2)).putShort(this.symbolTable.addConstantUtf8(str3));
    }

    @Override // org.mvel2.asm.AnnotationVisitor
    public AnnotationVisitor visitAnnotation(String str, String str2) {
        this.numElementValuePairs++;
        if (this.useNamedValues) {
            this.annotation.putShort(this.symbolTable.addConstantUtf8(str));
        }
        this.annotation.put12(64, this.symbolTable.addConstantUtf8(str2)).putShort(0);
        return new AnnotationWriter(this.symbolTable, true, this.annotation, null);
    }

    @Override // org.mvel2.asm.AnnotationVisitor
    public AnnotationVisitor visitArray(String str) {
        this.numElementValuePairs++;
        if (this.useNamedValues) {
            this.annotation.putShort(this.symbolTable.addConstantUtf8(str));
        }
        this.annotation.put12(91, 0);
        return new AnnotationWriter(this.symbolTable, false, this.annotation, null);
    }

    @Override // org.mvel2.asm.AnnotationVisitor
    public void visitEnd() {
        int i = this.numElementValuePairsOffset;
        if (i != -1) {
            byte[] bArr = this.annotation.data;
            int i2 = this.numElementValuePairs;
            bArr[i] = (byte) (i2 >>> 8);
            bArr[i + 1] = (byte) i2;
        }
    }

    int computeAnnotationsSize(String str) {
        if (str != null) {
            this.symbolTable.addConstantUtf8(str);
        }
        int i = 8;
        for (AnnotationWriter annotationWriter = this; annotationWriter != null; annotationWriter = annotationWriter.previousAnnotation) {
            i += annotationWriter.annotation.length;
        }
        return i;
    }

    static int computeAnnotationsSize(AnnotationWriter annotationWriter, AnnotationWriter annotationWriter2, AnnotationWriter annotationWriter3, AnnotationWriter annotationWriter4) {
        int iComputeAnnotationsSize = annotationWriter != null ? annotationWriter.computeAnnotationsSize(AttRuntimeVisibleAnnotations.ATTRIBUTE_NAME) : 0;
        if (annotationWriter2 != null) {
            iComputeAnnotationsSize += annotationWriter2.computeAnnotationsSize(AttRuntimeInvisibleAnnotations.ATTRIBUTE_NAME);
        }
        if (annotationWriter3 != null) {
            iComputeAnnotationsSize += annotationWriter3.computeAnnotationsSize("RuntimeVisibleTypeAnnotations");
        }
        return annotationWriter4 != null ? iComputeAnnotationsSize + annotationWriter4.computeAnnotationsSize("RuntimeInvisibleTypeAnnotations") : iComputeAnnotationsSize;
    }

    void putAnnotations(int i, ByteVector byteVector) {
        int i2 = 2;
        int i3 = 0;
        AnnotationWriter annotationWriter = null;
        for (AnnotationWriter annotationWriter2 = this; annotationWriter2 != null; annotationWriter2 = annotationWriter2.previousAnnotation) {
            annotationWriter2.visitEnd();
            i2 += annotationWriter2.annotation.length;
            i3++;
            annotationWriter = annotationWriter2;
        }
        byteVector.putShort(i);
        byteVector.putInt(i2);
        byteVector.putShort(i3);
        while (annotationWriter != null) {
            ByteVector byteVector2 = annotationWriter.annotation;
            byteVector.putByteArray(byteVector2.data, 0, byteVector2.length);
            annotationWriter = annotationWriter.nextAnnotation;
        }
    }

    static void putAnnotations(SymbolTable symbolTable, AnnotationWriter annotationWriter, AnnotationWriter annotationWriter2, AnnotationWriter annotationWriter3, AnnotationWriter annotationWriter4, ByteVector byteVector) {
        if (annotationWriter != null) {
            annotationWriter.putAnnotations(symbolTable.addConstantUtf8(AttRuntimeVisibleAnnotations.ATTRIBUTE_NAME), byteVector);
        }
        if (annotationWriter2 != null) {
            annotationWriter2.putAnnotations(symbolTable.addConstantUtf8(AttRuntimeInvisibleAnnotations.ATTRIBUTE_NAME), byteVector);
        }
        if (annotationWriter3 != null) {
            annotationWriter3.putAnnotations(symbolTable.addConstantUtf8("RuntimeVisibleTypeAnnotations"), byteVector);
        }
        if (annotationWriter4 != null) {
            annotationWriter4.putAnnotations(symbolTable.addConstantUtf8("RuntimeInvisibleTypeAnnotations"), byteVector);
        }
    }

    static int computeParameterAnnotationsSize(String str, AnnotationWriter[] annotationWriterArr, int i) {
        int iComputeAnnotationsSize = (i * 2) + 7;
        for (int i2 = 0; i2 < i; i2++) {
            iComputeAnnotationsSize += annotationWriterArr[i2] == null ? 0 : r3.computeAnnotationsSize(str) - 8;
        }
        return iComputeAnnotationsSize;
    }

    static void putParameterAnnotations(int i, AnnotationWriter[] annotationWriterArr, int i2, ByteVector byteVector) {
        int iComputeAnnotationsSize = (i2 * 2) + 1;
        for (int i3 = 0; i3 < i2; i3++) {
            iComputeAnnotationsSize += annotationWriterArr[i3] == null ? 0 : r4.computeAnnotationsSize(null) - 8;
        }
        byteVector.putShort(i);
        byteVector.putInt(iComputeAnnotationsSize);
        byteVector.putByte(i2);
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = 0;
            AnnotationWriter annotationWriter = null;
            for (AnnotationWriter annotationWriter2 = annotationWriterArr[i4]; annotationWriter2 != null; annotationWriter2 = annotationWriter2.previousAnnotation) {
                annotationWriter2.visitEnd();
                i5++;
                annotationWriter = annotationWriter2;
            }
            byteVector.putShort(i5);
            while (annotationWriter != null) {
                ByteVector byteVector2 = annotationWriter.annotation;
                byteVector.putByteArray(byteVector2.data, 0, byteVector2.length);
                annotationWriter = annotationWriter.nextAnnotation;
            }
        }
    }
}
