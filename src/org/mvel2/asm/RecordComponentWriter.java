package org.mvel2.asm;

import org.mvel2.asm.Attribute;

/* JADX INFO: loaded from: classes5.dex */
final class RecordComponentWriter extends RecordComponentVisitor {
    private final int descriptorIndex;
    private Attribute firstAttribute;
    private AnnotationWriter lastRuntimeInvisibleAnnotation;
    private AnnotationWriter lastRuntimeInvisibleTypeAnnotation;
    private AnnotationWriter lastRuntimeVisibleAnnotation;
    private AnnotationWriter lastRuntimeVisibleTypeAnnotation;
    private final int nameIndex;
    private int signatureIndex;
    private final SymbolTable symbolTable;

    @Override // org.mvel2.asm.RecordComponentVisitor
    public void visitEnd() {
    }

    public RecordComponentWriter(SymbolTable symbolTable, String str, String str2, String str3) {
        super(Opcodes.ASM9);
        this.symbolTable = symbolTable;
        this.nameIndex = symbolTable.addConstantUtf8(str);
        this.descriptorIndex = symbolTable.addConstantUtf8(str2);
        if (str3 != null) {
            this.signatureIndex = symbolTable.addConstantUtf8(str3);
        }
    }

    @Override // org.mvel2.asm.RecordComponentVisitor
    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        SymbolTable symbolTable = this.symbolTable;
        if (z) {
            AnnotationWriter annotationWriterCreate = AnnotationWriter.create(symbolTable, str, this.lastRuntimeVisibleAnnotation);
            this.lastRuntimeVisibleAnnotation = annotationWriterCreate;
            return annotationWriterCreate;
        }
        AnnotationWriter annotationWriterCreate2 = AnnotationWriter.create(symbolTable, str, this.lastRuntimeInvisibleAnnotation);
        this.lastRuntimeInvisibleAnnotation = annotationWriterCreate2;
        return annotationWriterCreate2;
    }

    @Override // org.mvel2.asm.RecordComponentVisitor
    public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        SymbolTable symbolTable = this.symbolTable;
        if (z) {
            AnnotationWriter annotationWriterCreate = AnnotationWriter.create(symbolTable, i, typePath, str, this.lastRuntimeVisibleTypeAnnotation);
            this.lastRuntimeVisibleTypeAnnotation = annotationWriterCreate;
            return annotationWriterCreate;
        }
        AnnotationWriter annotationWriterCreate2 = AnnotationWriter.create(symbolTable, i, typePath, str, this.lastRuntimeInvisibleTypeAnnotation);
        this.lastRuntimeInvisibleTypeAnnotation = annotationWriterCreate2;
        return annotationWriterCreate2;
    }

    @Override // org.mvel2.asm.RecordComponentVisitor
    public void visitAttribute(Attribute attribute) {
        attribute.nextAttribute = this.firstAttribute;
        this.firstAttribute = attribute;
    }

    public int computeRecordComponentInfoSize() {
        int iComputeAttributesSize = Attribute.computeAttributesSize(this.symbolTable, 0, this.signatureIndex) + 6 + AnnotationWriter.computeAnnotationsSize(this.lastRuntimeVisibleAnnotation, this.lastRuntimeInvisibleAnnotation, this.lastRuntimeVisibleTypeAnnotation, this.lastRuntimeInvisibleTypeAnnotation);
        Attribute attribute = this.firstAttribute;
        return attribute != null ? iComputeAttributesSize + attribute.computeAttributesSize(this.symbolTable) : iComputeAttributesSize;
    }

    public void putRecordComponentInfo(ByteVector byteVector) {
        byteVector.putShort(this.nameIndex).putShort(this.descriptorIndex);
        int attributeCount = this.signatureIndex != 0 ? 1 : 0;
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
        Attribute.putAttributes(this.symbolTable, 0, this.signatureIndex, byteVector);
        AnnotationWriter.putAnnotations(this.symbolTable, this.lastRuntimeVisibleAnnotation, this.lastRuntimeInvisibleAnnotation, this.lastRuntimeVisibleTypeAnnotation, this.lastRuntimeInvisibleTypeAnnotation, byteVector);
        Attribute attribute2 = this.firstAttribute;
        if (attribute2 != null) {
            attribute2.putAttributes(this.symbolTable, byteVector);
        }
    }

    public final void collectAttributePrototypes(Attribute.Set set) {
        set.addAttributes(this.firstAttribute);
    }
}
