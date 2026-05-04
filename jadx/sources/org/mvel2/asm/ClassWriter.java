package org.mvel2.asm;

import com.android.p003dx.p004cf.attrib.AttDeprecated;
import com.android.p003dx.p004cf.attrib.AttEnclosingMethod;
import com.android.p003dx.p004cf.attrib.AttInnerClasses;
import com.android.p003dx.p004cf.attrib.AttRuntimeInvisibleAnnotations;
import com.android.p003dx.p004cf.attrib.AttRuntimeVisibleAnnotations;
import com.android.p003dx.p004cf.attrib.AttSignature;
import com.android.p003dx.p004cf.attrib.AttSourceDebugExtension;
import com.android.p003dx.p004cf.attrib.AttSourceFile;
import com.android.p003dx.p004cf.attrib.AttSynthetic;
import org.mvel2.asm.Attribute;

/* JADX INFO: loaded from: classes.dex */
public class ClassWriter extends ClassVisitor {
    public static final int COMPUTE_FRAMES = 2;
    public static final int COMPUTE_MAXS = 1;
    private int accessFlags;
    private int compute;
    private ByteVector debugExtension;
    private int enclosingClassIndex;
    private int enclosingMethodIndex;
    private Attribute firstAttribute;
    private FieldWriter firstField;
    private MethodWriter firstMethod;
    private RecordComponentWriter firstRecordComponent;
    private final int flags;
    private ByteVector innerClasses;
    private int interfaceCount;
    private int[] interfaces;
    private FieldWriter lastField;
    private MethodWriter lastMethod;
    private RecordComponentWriter lastRecordComponent;
    private AnnotationWriter lastRuntimeInvisibleAnnotation;
    private AnnotationWriter lastRuntimeInvisibleTypeAnnotation;
    private AnnotationWriter lastRuntimeVisibleAnnotation;
    private AnnotationWriter lastRuntimeVisibleTypeAnnotation;
    private ModuleWriter moduleWriter;
    private int nestHostClassIndex;
    private ByteVector nestMemberClasses;
    private int numberOfInnerClasses;
    private int numberOfNestMemberClasses;
    private int numberOfPermittedSubclasses;
    private ByteVector permittedSubclasses;
    private int signatureIndex;
    private int sourceFileIndex;
    private int superClass;
    private final SymbolTable symbolTable;
    private int thisClass;
    private int version;

    @Override // org.mvel2.asm.ClassVisitor
    public final void visitEnd() {
    }

    public ClassWriter(int i) {
        this(null, i);
    }

    public ClassWriter(ClassReader classReader, int i) {
        super(Opcodes.ASM9);
        this.flags = i;
        this.symbolTable = classReader == null ? new SymbolTable(this) : new SymbolTable(this, classReader);
        if ((i & 2) != 0) {
            this.compute = 4;
        } else if ((i & 1) != 0) {
            this.compute = 1;
        } else {
            this.compute = 0;
        }
    }

    public boolean hasFlags(int i) {
        return (this.flags & i) == i;
    }

    @Override // org.mvel2.asm.ClassVisitor
    public final void visit(int i, int i2, String str, String str2, String str3, String[] strArr) {
        this.version = i;
        this.accessFlags = i2;
        int i3 = i & 65535;
        this.thisClass = this.symbolTable.setMajorVersionAndClassName(i3, str);
        if (str2 != null) {
            this.signatureIndex = this.symbolTable.addConstantUtf8(str2);
        }
        this.superClass = str3 == null ? 0 : this.symbolTable.addConstantClass(str3).index;
        if (strArr != null && strArr.length > 0) {
            int length = strArr.length;
            this.interfaceCount = length;
            this.interfaces = new int[length];
            for (int i4 = 0; i4 < this.interfaceCount; i4++) {
                this.interfaces[i4] = this.symbolTable.addConstantClass(strArr[i4]).index;
            }
        }
        if (this.compute != 1 || i3 < 51) {
            return;
        }
        this.compute = 2;
    }

    @Override // org.mvel2.asm.ClassVisitor
    public final void visitSource(String str, String str2) {
        if (str != null) {
            this.sourceFileIndex = this.symbolTable.addConstantUtf8(str);
        }
        if (str2 != null) {
            this.debugExtension = new ByteVector().encodeUtf8(str2, 0, Integer.MAX_VALUE);
        }
    }

    @Override // org.mvel2.asm.ClassVisitor
    public final ModuleVisitor visitModule(String str, int i, String str2) {
        SymbolTable symbolTable = this.symbolTable;
        ModuleWriter moduleWriter = new ModuleWriter(symbolTable, symbolTable.addConstantModule(str).index, i, str2 == null ? 0 : this.symbolTable.addConstantUtf8(str2));
        this.moduleWriter = moduleWriter;
        return moduleWriter;
    }

    @Override // org.mvel2.asm.ClassVisitor
    public final void visitNestHost(String str) {
        this.nestHostClassIndex = this.symbolTable.addConstantClass(str).index;
    }

    @Override // org.mvel2.asm.ClassVisitor
    public final void visitOuterClass(String str, String str2, String str3) {
        this.enclosingClassIndex = this.symbolTable.addConstantClass(str).index;
        if (str2 == null || str3 == null) {
            return;
        }
        this.enclosingMethodIndex = this.symbolTable.addConstantNameAndType(str2, str3);
    }

    @Override // org.mvel2.asm.ClassVisitor
    public final AnnotationVisitor visitAnnotation(String str, boolean z) {
        if (z) {
            AnnotationWriter annotationWriterCreate = AnnotationWriter.create(this.symbolTable, str, this.lastRuntimeVisibleAnnotation);
            this.lastRuntimeVisibleAnnotation = annotationWriterCreate;
            return annotationWriterCreate;
        }
        AnnotationWriter annotationWriterCreate2 = AnnotationWriter.create(this.symbolTable, str, this.lastRuntimeInvisibleAnnotation);
        this.lastRuntimeInvisibleAnnotation = annotationWriterCreate2;
        return annotationWriterCreate2;
    }

    @Override // org.mvel2.asm.ClassVisitor
    public final AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (z) {
            AnnotationWriter annotationWriterCreate = AnnotationWriter.create(this.symbolTable, i, typePath, str, this.lastRuntimeVisibleTypeAnnotation);
            this.lastRuntimeVisibleTypeAnnotation = annotationWriterCreate;
            return annotationWriterCreate;
        }
        AnnotationWriter annotationWriterCreate2 = AnnotationWriter.create(this.symbolTable, i, typePath, str, this.lastRuntimeInvisibleTypeAnnotation);
        this.lastRuntimeInvisibleTypeAnnotation = annotationWriterCreate2;
        return annotationWriterCreate2;
    }

    @Override // org.mvel2.asm.ClassVisitor
    public final void visitAttribute(Attribute attribute) {
        attribute.nextAttribute = this.firstAttribute;
        this.firstAttribute = attribute;
    }

    @Override // org.mvel2.asm.ClassVisitor
    public final void visitNestMember(String str) {
        if (this.nestMemberClasses == null) {
            this.nestMemberClasses = new ByteVector();
        }
        this.numberOfNestMemberClasses++;
        this.nestMemberClasses.putShort(this.symbolTable.addConstantClass(str).index);
    }

    @Override // org.mvel2.asm.ClassVisitor
    public final void visitPermittedSubclass(String str) {
        if (this.permittedSubclasses == null) {
            this.permittedSubclasses = new ByteVector();
        }
        this.numberOfPermittedSubclasses++;
        this.permittedSubclasses.putShort(this.symbolTable.addConstantClass(str).index);
    }

    @Override // org.mvel2.asm.ClassVisitor
    public final void visitInnerClass(String str, String str2, String str3, int i) {
        if (this.innerClasses == null) {
            this.innerClasses = new ByteVector();
        }
        Symbol symbolAddConstantClass = this.symbolTable.addConstantClass(str);
        if (symbolAddConstantClass.info == 0) {
            this.numberOfInnerClasses++;
            this.innerClasses.putShort(symbolAddConstantClass.index);
            this.innerClasses.putShort(str2 == null ? 0 : this.symbolTable.addConstantClass(str2).index);
            this.innerClasses.putShort(str3 != null ? this.symbolTable.addConstantUtf8(str3) : 0);
            this.innerClasses.putShort(i);
            symbolAddConstantClass.info = this.numberOfInnerClasses;
        }
    }

    @Override // org.mvel2.asm.ClassVisitor
    public final RecordComponentVisitor visitRecordComponent(String str, String str2, String str3) {
        RecordComponentWriter recordComponentWriter = new RecordComponentWriter(this.symbolTable, str, str2, str3);
        if (this.firstRecordComponent == null) {
            this.firstRecordComponent = recordComponentWriter;
        } else {
            this.lastRecordComponent.delegate = recordComponentWriter;
        }
        this.lastRecordComponent = recordComponentWriter;
        return recordComponentWriter;
    }

    @Override // org.mvel2.asm.ClassVisitor
    public final FieldVisitor visitField(int i, String str, String str2, String str3, Object obj) {
        FieldWriter fieldWriter = new FieldWriter(this.symbolTable, i, str, str2, str3, obj);
        if (this.firstField == null) {
            this.firstField = fieldWriter;
        } else {
            this.lastField.f1562fv = fieldWriter;
        }
        this.lastField = fieldWriter;
        return fieldWriter;
    }

    @Override // org.mvel2.asm.ClassVisitor
    public final MethodVisitor visitMethod(int i, String str, String str2, String str3, String[] strArr) {
        MethodWriter methodWriter = new MethodWriter(this.symbolTable, i, str, str2, str3, strArr, this.compute);
        if (this.firstMethod == null) {
            this.firstMethod = methodWriter;
        } else {
            this.lastMethod.f1563mv = methodWriter;
        }
        this.lastMethod = methodWriter;
        return methodWriter;
    }

    public byte[] toByteArray() {
        int attributeCount;
        int iComputeRecordComponentInfoSize;
        int i;
        int i2;
        int i3;
        int i4;
        int attributeCount2;
        int iComputeAttributesSize;
        int i5;
        int i6;
        int iComputeAttributesSize2 = (this.interfaceCount * 2) + 24;
        int i7 = 0;
        for (FieldWriter fieldWriter = this.firstField; fieldWriter != null; fieldWriter = (FieldWriter) fieldWriter.f1562fv) {
            i7++;
            iComputeAttributesSize2 += fieldWriter.computeFieldInfoSize();
        }
        int i8 = 0;
        for (MethodWriter methodWriter = this.firstMethod; methodWriter != null; methodWriter = (MethodWriter) methodWriter.f1563mv) {
            i8++;
            iComputeAttributesSize2 += methodWriter.computeMethodInfoSize();
        }
        ByteVector byteVector = this.innerClasses;
        if (byteVector != null) {
            iComputeAttributesSize2 += byteVector.length + 8;
            this.symbolTable.addConstantUtf8(AttInnerClasses.ATTRIBUTE_NAME);
            attributeCount = 1;
        } else {
            attributeCount = 0;
        }
        if (this.enclosingClassIndex != 0) {
            attributeCount++;
            iComputeAttributesSize2 += 10;
            this.symbolTable.addConstantUtf8(AttEnclosingMethod.ATTRIBUTE_NAME);
        }
        if ((this.accessFlags & 4096) != 0 && (this.version & 65535) < 49) {
            attributeCount++;
            iComputeAttributesSize2 += 6;
            this.symbolTable.addConstantUtf8(AttSynthetic.ATTRIBUTE_NAME);
        }
        if (this.signatureIndex != 0) {
            attributeCount++;
            iComputeAttributesSize2 += 8;
            this.symbolTable.addConstantUtf8(AttSignature.ATTRIBUTE_NAME);
        }
        if (this.sourceFileIndex != 0) {
            attributeCount++;
            iComputeAttributesSize2 += 8;
            this.symbolTable.addConstantUtf8(AttSourceFile.ATTRIBUTE_NAME);
        }
        ByteVector byteVector2 = this.debugExtension;
        if (byteVector2 != null) {
            attributeCount++;
            iComputeAttributesSize2 += byteVector2.length + 6;
            this.symbolTable.addConstantUtf8(AttSourceDebugExtension.ATTRIBUTE_NAME);
        }
        if ((this.accessFlags & 131072) != 0) {
            attributeCount++;
            iComputeAttributesSize2 += 6;
            this.symbolTable.addConstantUtf8(AttDeprecated.ATTRIBUTE_NAME);
        }
        AnnotationWriter annotationWriter = this.lastRuntimeVisibleAnnotation;
        if (annotationWriter != null) {
            attributeCount++;
            iComputeAttributesSize2 += annotationWriter.computeAnnotationsSize(AttRuntimeVisibleAnnotations.ATTRIBUTE_NAME);
        }
        AnnotationWriter annotationWriter2 = this.lastRuntimeInvisibleAnnotation;
        if (annotationWriter2 != null) {
            attributeCount++;
            iComputeAttributesSize2 += annotationWriter2.computeAnnotationsSize(AttRuntimeInvisibleAnnotations.ATTRIBUTE_NAME);
        }
        AnnotationWriter annotationWriter3 = this.lastRuntimeVisibleTypeAnnotation;
        if (annotationWriter3 != null) {
            attributeCount++;
            iComputeAttributesSize2 += annotationWriter3.computeAnnotationsSize("RuntimeVisibleTypeAnnotations");
        }
        AnnotationWriter annotationWriter4 = this.lastRuntimeInvisibleTypeAnnotation;
        if (annotationWriter4 != null) {
            attributeCount++;
            iComputeAttributesSize2 += annotationWriter4.computeAnnotationsSize("RuntimeInvisibleTypeAnnotations");
        }
        if (this.symbolTable.computeBootstrapMethodsSize() > 0) {
            attributeCount++;
            iComputeAttributesSize2 += this.symbolTable.computeBootstrapMethodsSize();
        }
        ModuleWriter moduleWriter = this.moduleWriter;
        if (moduleWriter != null) {
            attributeCount += moduleWriter.getAttributeCount();
            iComputeAttributesSize2 += this.moduleWriter.computeAttributesSize();
        }
        if (this.nestHostClassIndex != 0) {
            attributeCount++;
            iComputeAttributesSize2 += 8;
            this.symbolTable.addConstantUtf8("NestHost");
        }
        ByteVector byteVector3 = this.nestMemberClasses;
        if (byteVector3 != null) {
            attributeCount++;
            iComputeAttributesSize2 += byteVector3.length + 8;
            this.symbolTable.addConstantUtf8("NestMembers");
        }
        ByteVector byteVector4 = this.permittedSubclasses;
        if (byteVector4 != null) {
            attributeCount++;
            iComputeAttributesSize2 += byteVector4.length + 8;
            this.symbolTable.addConstantUtf8("PermittedSubclasses");
        }
        int i9 = iComputeAttributesSize2;
        if ((this.accessFlags & 65536) == 0 && this.firstRecordComponent == null) {
            i3 = i9;
            iComputeRecordComponentInfoSize = 0;
            i = attributeCount;
            i2 = 0;
        } else {
            iComputeRecordComponentInfoSize = 0;
            int i10 = 0;
            for (RecordComponentWriter recordComponentWriter = this.firstRecordComponent; recordComponentWriter != null; recordComponentWriter = (RecordComponentWriter) recordComponentWriter.delegate) {
                i10++;
                iComputeRecordComponentInfoSize += recordComponentWriter.computeRecordComponentInfoSize();
            }
            int i11 = i9 + iComputeRecordComponentInfoSize + 8;
            i = attributeCount + 1;
            this.symbolTable.addConstantUtf8("Record");
            i2 = i10;
            i3 = i11;
        }
        Attribute attribute = this.firstAttribute;
        if (attribute != null) {
            i4 = i2;
            attributeCount2 = i + attribute.getAttributeCount();
            iComputeAttributesSize = i3 + this.firstAttribute.computeAttributesSize(this.symbolTable);
        } else {
            i4 = i2;
            attributeCount2 = i;
            iComputeAttributesSize = i3;
        }
        int constantPoolLength = iComputeAttributesSize + this.symbolTable.getConstantPoolLength();
        int constantPoolCount = this.symbolTable.getConstantPoolCount();
        if (constantPoolCount > 65535) {
            throw new ClassTooLargeException(this.symbolTable.getClassName(), constantPoolCount);
        }
        ByteVector byteVector5 = new ByteVector(constantPoolLength);
        byteVector5.putInt(-889275714).putInt(this.version);
        this.symbolTable.putConstantPool(byteVector5);
        byteVector5.putShort((~((this.version & 65535) < 49 ? 4096 : 0)) & this.accessFlags).putShort(this.thisClass).putShort(this.superClass);
        byteVector5.putShort(this.interfaceCount);
        for (int i12 = 0; i12 < this.interfaceCount; i12++) {
            byteVector5.putShort(this.interfaces[i12]);
        }
        byteVector5.putShort(i7);
        for (FieldWriter fieldWriter2 = this.firstField; fieldWriter2 != null; fieldWriter2 = (FieldWriter) fieldWriter2.f1562fv) {
            fieldWriter2.putFieldInfo(byteVector5);
        }
        byteVector5.putShort(i8);
        boolean zHasFrames = false;
        boolean zHasAsmInstructions = false;
        for (MethodWriter methodWriter2 = this.firstMethod; methodWriter2 != null; methodWriter2 = (MethodWriter) methodWriter2.f1563mv) {
            zHasFrames |= methodWriter2.hasFrames();
            zHasAsmInstructions |= methodWriter2.hasAsmInstructions();
            methodWriter2.putMethodInfo(byteVector5);
        }
        byteVector5.putShort(attributeCount2);
        if (this.innerClasses != null) {
            ByteVector byteVectorPutShort = byteVector5.putShort(this.symbolTable.addConstantUtf8(AttInnerClasses.ATTRIBUTE_NAME)).putInt(this.innerClasses.length + 2).putShort(this.numberOfInnerClasses);
            ByteVector byteVector6 = this.innerClasses;
            byteVectorPutShort.putByteArray(byteVector6.data, 0, byteVector6.length);
        }
        if (this.enclosingClassIndex != 0) {
            byteVector5.putShort(this.symbolTable.addConstantUtf8(AttEnclosingMethod.ATTRIBUTE_NAME)).putInt(4).putShort(this.enclosingClassIndex).putShort(this.enclosingMethodIndex);
        }
        if ((this.accessFlags & 4096) != 0 && (this.version & 65535) < 49) {
            byteVector5.putShort(this.symbolTable.addConstantUtf8(AttSynthetic.ATTRIBUTE_NAME)).putInt(0);
        }
        if (this.signatureIndex != 0) {
            i5 = 2;
            byteVector5.putShort(this.symbolTable.addConstantUtf8(AttSignature.ATTRIBUTE_NAME)).putInt(2).putShort(this.signatureIndex);
        } else {
            i5 = 2;
        }
        if (this.sourceFileIndex != 0) {
            byteVector5.putShort(this.symbolTable.addConstantUtf8(AttSourceFile.ATTRIBUTE_NAME)).putInt(i5).putShort(this.sourceFileIndex);
        }
        ByteVector byteVector7 = this.debugExtension;
        if (byteVector7 != null) {
            int i13 = byteVector7.length;
            i6 = 0;
            byteVector5.putShort(this.symbolTable.addConstantUtf8(AttSourceDebugExtension.ATTRIBUTE_NAME)).putInt(i13).putByteArray(this.debugExtension.data, 0, i13);
        } else {
            i6 = 0;
        }
        if ((this.accessFlags & 131072) != 0) {
            byteVector5.putShort(this.symbolTable.addConstantUtf8(AttDeprecated.ATTRIBUTE_NAME)).putInt(i6);
        }
        AnnotationWriter.putAnnotations(this.symbolTable, this.lastRuntimeVisibleAnnotation, this.lastRuntimeInvisibleAnnotation, this.lastRuntimeVisibleTypeAnnotation, this.lastRuntimeInvisibleTypeAnnotation, byteVector5);
        this.symbolTable.putBootstrapMethods(byteVector5);
        ModuleWriter moduleWriter2 = this.moduleWriter;
        if (moduleWriter2 != null) {
            moduleWriter2.putAttributes(byteVector5);
        }
        if (this.nestHostClassIndex != 0) {
            byteVector5.putShort(this.symbolTable.addConstantUtf8("NestHost")).putInt(2).putShort(this.nestHostClassIndex);
        }
        if (this.nestMemberClasses != null) {
            ByteVector byteVectorPutShort2 = byteVector5.putShort(this.symbolTable.addConstantUtf8("NestMembers")).putInt(this.nestMemberClasses.length + 2).putShort(this.numberOfNestMemberClasses);
            ByteVector byteVector8 = this.nestMemberClasses;
            byteVectorPutShort2.putByteArray(byteVector8.data, 0, byteVector8.length);
        }
        if (this.permittedSubclasses != null) {
            ByteVector byteVectorPutShort3 = byteVector5.putShort(this.symbolTable.addConstantUtf8("PermittedSubclasses")).putInt(this.permittedSubclasses.length + 2).putShort(this.numberOfPermittedSubclasses);
            ByteVector byteVector9 = this.permittedSubclasses;
            byteVectorPutShort3.putByteArray(byteVector9.data, 0, byteVector9.length);
        }
        if ((this.accessFlags & 65536) != 0 || this.firstRecordComponent != null) {
            byteVector5.putShort(this.symbolTable.addConstantUtf8("Record")).putInt(iComputeRecordComponentInfoSize + 2).putShort(i4);
            for (RecordComponentWriter recordComponentWriter2 = this.firstRecordComponent; recordComponentWriter2 != null; recordComponentWriter2 = (RecordComponentWriter) recordComponentWriter2.delegate) {
                recordComponentWriter2.putRecordComponentInfo(byteVector5);
            }
        }
        Attribute attribute2 = this.firstAttribute;
        if (attribute2 != null) {
            attribute2.putAttributes(this.symbolTable, byteVector5);
        }
        if (zHasAsmInstructions) {
            return replaceAsmInstructions(byteVector5.data, zHasFrames);
        }
        return byteVector5.data;
    }

    private byte[] replaceAsmInstructions(byte[] bArr, boolean z) {
        Attribute[] attributePrototypes = getAttributePrototypes();
        this.firstField = null;
        this.lastField = null;
        this.firstMethod = null;
        this.lastMethod = null;
        this.lastRuntimeVisibleAnnotation = null;
        this.lastRuntimeInvisibleAnnotation = null;
        this.lastRuntimeVisibleTypeAnnotation = null;
        this.lastRuntimeInvisibleTypeAnnotation = null;
        this.moduleWriter = null;
        this.nestHostClassIndex = 0;
        this.numberOfNestMemberClasses = 0;
        this.nestMemberClasses = null;
        this.numberOfPermittedSubclasses = 0;
        this.permittedSubclasses = null;
        this.firstRecordComponent = null;
        this.lastRecordComponent = null;
        this.firstAttribute = null;
        this.compute = z ? 3 : 0;
        new ClassReader(bArr, 0, false).accept(this, attributePrototypes, (z ? 8 : 0) | 256);
        return toByteArray();
    }

    private Attribute[] getAttributePrototypes() {
        Attribute.Set set = new Attribute.Set();
        set.addAttributes(this.firstAttribute);
        for (FieldWriter fieldWriter = this.firstField; fieldWriter != null; fieldWriter = (FieldWriter) fieldWriter.f1562fv) {
            fieldWriter.collectAttributePrototypes(set);
        }
        for (MethodWriter methodWriter = this.firstMethod; methodWriter != null; methodWriter = (MethodWriter) methodWriter.f1563mv) {
            methodWriter.collectAttributePrototypes(set);
        }
        for (RecordComponentWriter recordComponentWriter = this.firstRecordComponent; recordComponentWriter != null; recordComponentWriter = (RecordComponentWriter) recordComponentWriter.delegate) {
            recordComponentWriter.collectAttributePrototypes(set);
        }
        return set.toArray();
    }

    public int newConst(Object obj) {
        return this.symbolTable.addConstant(obj).index;
    }

    public int newUTF8(String str) {
        return this.symbolTable.addConstantUtf8(str);
    }

    public int newClass(String str) {
        return this.symbolTable.addConstantClass(str).index;
    }

    public int newMethodType(String str) {
        return this.symbolTable.addConstantMethodType(str).index;
    }

    public int newModule(String str) {
        return this.symbolTable.addConstantModule(str).index;
    }

    public int newPackage(String str) {
        return this.symbolTable.addConstantPackage(str).index;
    }

    @Deprecated
    public int newHandle(int i, String str, String str2, String str3) {
        return newHandle(i, str, str2, str3, i == 9);
    }

    public int newHandle(int i, String str, String str2, String str3, boolean z) {
        return this.symbolTable.addConstantMethodHandle(i, str, str2, str3, z).index;
    }

    public int newConstantDynamic(String str, String str2, Handle handle, Object... objArr) {
        return this.symbolTable.addConstantDynamic(str, str2, handle, objArr).index;
    }

    public int newInvokeDynamic(String str, String str2, Handle handle, Object... objArr) {
        return this.symbolTable.addConstantInvokeDynamic(str, str2, handle, objArr).index;
    }

    public int newField(String str, String str2, String str3) {
        return this.symbolTable.addConstantFieldref(str, str2, str3).index;
    }

    public int newMethod(String str, String str2, String str3, boolean z) {
        return this.symbolTable.addConstantMethodref(str, str2, str3, z).index;
    }

    public int newNameType(String str, String str2) {
        return this.symbolTable.addConstantNameAndType(str, str2);
    }

    protected String getCommonSuperClass(String str, String str2) {
        ClassLoader classLoader = getClassLoader();
        try {
            Class<?> cls = Class.forName(str.replace('/', '.'), false, classLoader);
            try {
                Class<?> cls2 = Class.forName(str2.replace('/', '.'), false, classLoader);
                if (cls.isAssignableFrom(cls2)) {
                    return str;
                }
                if (cls2.isAssignableFrom(cls)) {
                    return str2;
                }
                if (cls.isInterface() || cls2.isInterface()) {
                    return "java/lang/Object";
                }
                do {
                    cls = cls.getSuperclass();
                } while (!cls.isAssignableFrom(cls2));
                return cls.getName().replace('.', '/');
            } catch (ClassNotFoundException e) {
                throw new TypeNotPresentException(str2, e);
            }
        } catch (ClassNotFoundException e2) {
            throw new TypeNotPresentException(str, e2);
        }
    }

    protected ClassLoader getClassLoader() {
        return getClass().getClassLoader();
    }
}
