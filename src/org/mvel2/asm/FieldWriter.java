package org.mvel2.asm;

import com.android.p003dx.p004cf.attrib.AttConstantValue;
import org.mvel2.asm.Attribute;

/* JADX INFO: loaded from: classes5.dex */
final class FieldWriter extends FieldVisitor {
    private final int accessFlags;
    private int constantValueIndex;
    private final int descriptorIndex;
    private Attribute firstAttribute;
    private AnnotationWriter lastRuntimeInvisibleAnnotation;
    private AnnotationWriter lastRuntimeInvisibleTypeAnnotation;
    private AnnotationWriter lastRuntimeVisibleAnnotation;
    private AnnotationWriter lastRuntimeVisibleTypeAnnotation;
    private final int nameIndex;
    private int signatureIndex;
    private final SymbolTable symbolTable;

    @Override // org.mvel2.asm.FieldVisitor
    public void visitEnd() {
    }

    FieldWriter(SymbolTable symbolTable, int i, String str, String str2, String str3, Object obj) {
        super(Opcodes.ASM9);
        this.symbolTable = symbolTable;
        this.accessFlags = i;
        this.nameIndex = symbolTable.addConstantUtf8(str);
        this.descriptorIndex = symbolTable.addConstantUtf8(str2);
        if (str3 != null) {
            this.signatureIndex = symbolTable.addConstantUtf8(str3);
        }
        if (obj != null) {
            this.constantValueIndex = symbolTable.addConstant(obj).index;
        }
    }

    @Override // org.mvel2.asm.FieldVisitor
    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        if (z) {
            AnnotationWriter annotationWriterCreate = AnnotationWriter.create(this.symbolTable, str, this.lastRuntimeVisibleAnnotation);
            this.lastRuntimeVisibleAnnotation = annotationWriterCreate;
            return annotationWriterCreate;
        }
        AnnotationWriter annotationWriterCreate2 = AnnotationWriter.create(this.symbolTable, str, this.lastRuntimeInvisibleAnnotation);
        this.lastRuntimeInvisibleAnnotation = annotationWriterCreate2;
        return annotationWriterCreate2;
    }

    @Override // org.mvel2.asm.FieldVisitor
    public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (z) {
            AnnotationWriter annotationWriterCreate = AnnotationWriter.create(this.symbolTable, i, typePath, str, this.lastRuntimeVisibleTypeAnnotation);
            this.lastRuntimeVisibleTypeAnnotation = annotationWriterCreate;
            return annotationWriterCreate;
        }
        AnnotationWriter annotationWriterCreate2 = AnnotationWriter.create(this.symbolTable, i, typePath, str, this.lastRuntimeInvisibleTypeAnnotation);
        this.lastRuntimeInvisibleTypeAnnotation = annotationWriterCreate2;
        return annotationWriterCreate2;
    }

    @Override // org.mvel2.asm.FieldVisitor
    public void visitAttribute(Attribute attribute) {
        attribute.nextAttribute = this.firstAttribute;
        this.firstAttribute = attribute;
    }

    int computeFieldInfoSize() {
        int i;
        if (this.constantValueIndex != 0) {
            this.symbolTable.addConstantUtf8(AttConstantValue.ATTRIBUTE_NAME);
            i = 16;
        } else {
            i = 8;
        }
        int iComputeAttributesSize = i + Attribute.computeAttributesSize(this.symbolTable, this.accessFlags, this.signatureIndex) + AnnotationWriter.computeAnnotationsSize(this.lastRuntimeVisibleAnnotation, this.lastRuntimeInvisibleAnnotation, this.lastRuntimeVisibleTypeAnnotation, this.lastRuntimeInvisibleTypeAnnotation);
        Attribute attribute = this.firstAttribute;
        return attribute != null ? iComputeAttributesSize + attribute.computeAttributesSize(this.symbolTable) : iComputeAttributesSize;
    }

    void putFieldInfo(ByteVector byteVector) {
        boolean z = this.symbolTable.getMajorVersion() < 49;
        byteVector.putShort((~(z ? 4096 : 0)) & this.accessFlags).putShort(this.nameIndex).putShort(this.descriptorIndex);
        int attributeCount = this.constantValueIndex != 0 ? 1 : 0;
        int i = this.accessFlags;
        if ((i & 4096) != 0 && z) {
            attributeCount++;
        }
        if (this.signatureIndex != 0) {
            attributeCount++;
        }
        if ((131072 & i) != 0) {
            attributeCount++;
        }
        if (this.lastRuntimeVisibleAnnotation != null) {
            attributeCount++;
        }
        if (this.lastRuntimeInvisibleAnnotation != null) {
            attributeCount++;
        }
        if (this.lastRuntimeVisibleTypeAnnotation != null) {
            attributeCount++;
        }
        if (this.lastRuntimeInvisibleTypeAnnotation != null) {
            attributeCount++;
        }
        Attribute attribute = this.firstAttribute;
        if (attribute != null) {
            attributeCount += attribute.getAttributeCount();
        }
        byteVector.putShort(attributeCount);
        if (this.constantValueIndex != 0) {
            byteVector.putShort(this.symbolTable.addConstantUtf8(AttConstantValue.ATTRIBUTE_NAME)).putInt(2).putShort(this.constantValueIndex);
        }
        Attribute.putAttributes(this.symbolTable, this.accessFlags, this.signatureIndex, byteVector);
        AnnotationWriter.putAnnotations(this.symbolTable, this.lastRuntimeVisibleAnnotation, this.lastRuntimeInvisibleAnnotation, this.lastRuntimeVisibleTypeAnnotation, this.lastRuntimeInvisibleTypeAnnotation, byteVector);
        Attribute attribute2 = this.firstAttribute;
        if (attribute2 != null) {
            attribute2.putAttributes(this.symbolTable, byteVector);
        }
    }

    final void collectAttributePrototypes(Attribute.Set set) {
        set.addAttributes(this.firstAttribute);
    }
}
