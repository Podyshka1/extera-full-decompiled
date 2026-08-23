package org.mvel2.asm;

import com.android.p003dx.p004cf.attrib.AttAnnotationDefault;
import com.android.p003dx.p004cf.attrib.AttCode;
import com.android.p003dx.p004cf.attrib.AttExceptions;
import com.android.p003dx.p004cf.attrib.AttLineNumberTable;
import com.android.p003dx.p004cf.attrib.AttLocalVariableTable;
import com.android.p003dx.p004cf.attrib.AttLocalVariableTypeTable;
import com.android.p003dx.p004cf.attrib.AttRuntimeInvisibleParameterAnnotations;
import com.android.p003dx.p004cf.attrib.AttRuntimeVisibleParameterAnnotations;
import org.mvel2.asm.Attribute;

/* JADX INFO: loaded from: classes5.dex */
final class MethodWriter extends MethodVisitor {
    static final int COMPUTE_ALL_FRAMES = 4;
    static final int COMPUTE_INSERTED_FRAMES = 3;
    static final int COMPUTE_MAX_STACK_AND_LOCAL = 1;
    static final int COMPUTE_MAX_STACK_AND_LOCAL_FROM_FRAMES = 2;
    static final int COMPUTE_NOTHING = 0;

    /* JADX INFO: renamed from: NA */
    private static final int f1564NA = 0;
    private static final int[] STACK_SIZE_DELTA = {0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 2, 2, 1, 1, 1, 0, 0, 1, 2, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, -1, -1, -1, -1, -2, -1, -2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -3, -4, -3, -4, -3, -3, -3, -3, -1, -2, 1, 1, 1, 2, 2, 2, 0, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -2, -1, -2, -1, -2, 0, 1, 0, 1, -1, -1, 0, 0, 1, 1, -1, 0, -1, 0, 0, 0, -3, -1, -1, -3, -3, -1, -1, -1, -1, -1, -1, -2, -2, -2, -2, -2, -2, -2, -2, 0, 1, 0, -1, -1, -1, -2, -1, -2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, -1, 0, 0};
    private final int accessFlags;
    private final ByteVector code;
    private final int compute;
    private Label currentBasicBlock;
    private int[] currentFrame;
    private int currentLocals;
    private ByteVector defaultValue;
    private final String descriptor;
    private final int descriptorIndex;
    private final int[] exceptionIndexTable;
    private Attribute firstAttribute;
    private Label firstBasicBlock;
    private Attribute firstCodeAttribute;
    private Handler firstHandler;
    private boolean hasAsmInstructions;
    private boolean hasSubroutines;
    private int invisibleAnnotableParameterCount;
    private Label lastBasicBlock;
    private int lastBytecodeOffset;
    private AnnotationWriter lastCodeRuntimeInvisibleTypeAnnotation;
    private AnnotationWriter lastCodeRuntimeVisibleTypeAnnotation;
    private Handler lastHandler;
    private AnnotationWriter lastRuntimeInvisibleAnnotation;
    private AnnotationWriter[] lastRuntimeInvisibleParameterAnnotations;
    private AnnotationWriter lastRuntimeInvisibleTypeAnnotation;
    private AnnotationWriter lastRuntimeVisibleAnnotation;
    private AnnotationWriter[] lastRuntimeVisibleParameterAnnotations;
    private AnnotationWriter lastRuntimeVisibleTypeAnnotation;
    private ByteVector lineNumberTable;
    private int lineNumberTableLength;
    private ByteVector localVariableTable;
    private int localVariableTableLength;
    private ByteVector localVariableTypeTable;
    private int localVariableTypeTableLength;
    private int maxLocals;
    private int maxRelativeStackSize;
    private int maxStack;
    private final String name;
    private final int nameIndex;
    private final int numberOfExceptions;
    private ByteVector parameters;
    private int parametersCount;
    private int[] previousFrame;
    private int previousFrameOffset;
    private int relativeStackSize;
    private final int signatureIndex;
    private int sourceLength;
    private int sourceOffset;
    private ByteVector stackMapTableEntries;
    private int stackMapTableNumberOfEntries;
    private final SymbolTable symbolTable;
    private int visibleAnnotableParameterCount;

    @Override // org.mvel2.asm.MethodVisitor
    public void visitCode() {
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitEnd() {
    }

    MethodWriter(SymbolTable symbolTable, int i, String str, String str2, String str3, String[] strArr, int i2) {
        super(Opcodes.ASM9);
        this.code = new ByteVector();
        this.symbolTable = symbolTable;
        this.accessFlags = "<init>".equals(str) ? 262144 | i : i;
        this.nameIndex = symbolTable.addConstantUtf8(str);
        this.name = str;
        this.descriptorIndex = symbolTable.addConstantUtf8(str2);
        this.descriptor = str2;
        this.signatureIndex = str3 == null ? 0 : symbolTable.addConstantUtf8(str3);
        if (strArr != null && strArr.length > 0) {
            int length = strArr.length;
            this.numberOfExceptions = length;
            this.exceptionIndexTable = new int[length];
            for (int i3 = 0; i3 < this.numberOfExceptions; i3++) {
                this.exceptionIndexTable[i3] = symbolTable.addConstantClass(strArr[i3]).index;
            }
        } else {
            this.numberOfExceptions = 0;
            this.exceptionIndexTable = null;
        }
        this.compute = i2;
        if (i2 != 0) {
            int argumentsAndReturnSizes = Type.getArgumentsAndReturnSizes(str2) >> 2;
            argumentsAndReturnSizes = (i & 8) != 0 ? argumentsAndReturnSizes - 1 : argumentsAndReturnSizes;
            this.maxLocals = argumentsAndReturnSizes;
            this.currentLocals = argumentsAndReturnSizes;
            Label label = new Label();
            this.firstBasicBlock = label;
            visitLabel(label);
        }
    }

    boolean hasFrames() {
        return this.stackMapTableNumberOfEntries > 0;
    }

    boolean hasAsmInstructions() {
        return this.hasAsmInstructions;
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitParameter(String str, int i) {
        if (this.parameters == null) {
            this.parameters = new ByteVector();
        }
        this.parametersCount++;
        this.parameters.putShort(str == null ? 0 : this.symbolTable.addConstantUtf8(str)).putShort(i);
    }

    @Override // org.mvel2.asm.MethodVisitor
    public AnnotationVisitor visitAnnotationDefault() {
        ByteVector byteVector = new ByteVector();
        this.defaultValue = byteVector;
        return new AnnotationWriter(this.symbolTable, false, byteVector, null);
    }

    @Override // org.mvel2.asm.MethodVisitor
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

    @Override // org.mvel2.asm.MethodVisitor
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

    @Override // org.mvel2.asm.MethodVisitor
    public void visitAnnotableParameterCount(int i, boolean z) {
        if (z) {
            this.visibleAnnotableParameterCount = i;
        } else {
            this.invisibleAnnotableParameterCount = i;
        }
    }

    @Override // org.mvel2.asm.MethodVisitor
    public AnnotationVisitor visitParameterAnnotation(int i, String str, boolean z) {
        if (z) {
            if (this.lastRuntimeVisibleParameterAnnotations == null) {
                this.lastRuntimeVisibleParameterAnnotations = new AnnotationWriter[Type.getArgumentTypes(this.descriptor).length];
            }
            AnnotationWriter[] annotationWriterArr = this.lastRuntimeVisibleParameterAnnotations;
            AnnotationWriter annotationWriterCreate = AnnotationWriter.create(this.symbolTable, str, annotationWriterArr[i]);
            annotationWriterArr[i] = annotationWriterCreate;
            return annotationWriterCreate;
        }
        if (this.lastRuntimeInvisibleParameterAnnotations == null) {
            this.lastRuntimeInvisibleParameterAnnotations = new AnnotationWriter[Type.getArgumentTypes(this.descriptor).length];
        }
        AnnotationWriter[] annotationWriterArr2 = this.lastRuntimeInvisibleParameterAnnotations;
        AnnotationWriter annotationWriterCreate2 = AnnotationWriter.create(this.symbolTable, str, annotationWriterArr2[i]);
        annotationWriterArr2[i] = annotationWriterCreate2;
        return annotationWriterCreate2;
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitAttribute(Attribute attribute) {
        if (attribute.isCodeAttribute()) {
            attribute.nextAttribute = this.firstCodeAttribute;
            this.firstCodeAttribute = attribute;
        } else {
            attribute.nextAttribute = this.firstAttribute;
            this.firstAttribute = attribute;
        }
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitFrame(int i, int i2, Object[] objArr, int i3, Object[] objArr2) {
        int i4;
        int i5;
        int i6 = this.compute;
        if (i6 == 4) {
            return;
        }
        if (i6 == 3) {
            Label label = this.currentBasicBlock;
            Frame frame = label.frame;
            if (frame == null) {
                label.frame = new CurrentFrame(label);
                this.currentBasicBlock.frame.setInputFrameFromDescriptor(this.symbolTable, this.accessFlags, this.descriptor, i2);
                this.currentBasicBlock.frame.accept(this);
                i4 = i3;
            } else {
                if (i == -1) {
                    frame.setInputFrameFromApiFormat(this.symbolTable, i2, objArr, i3, objArr2);
                    i4 = i3;
                } else {
                    i4 = i3;
                }
                this.currentBasicBlock.frame.accept(this);
            }
        } else {
            i4 = i3;
            if (i == -1) {
                if (this.previousFrame == null) {
                    int argumentsAndReturnSizes = Type.getArgumentsAndReturnSizes(this.descriptor) >> 2;
                    Frame frame2 = new Frame(new Label());
                    frame2.setInputFrameFromDescriptor(this.symbolTable, this.accessFlags, this.descriptor, argumentsAndReturnSizes);
                    frame2.accept(this);
                }
                this.currentLocals = i2;
                int iVisitFrameStart = visitFrameStart(this.code.length, i2, i3);
                int i7 = 0;
                while (i7 < i2) {
                    this.currentFrame[iVisitFrameStart] = Frame.getAbstractTypeFromApiFormat(this.symbolTable, objArr[i7]);
                    i7++;
                    iVisitFrameStart++;
                }
                int i8 = 0;
                while (i8 < i4) {
                    this.currentFrame[iVisitFrameStart] = Frame.getAbstractTypeFromApiFormat(this.symbolTable, objArr2[i8]);
                    i8++;
                    iVisitFrameStart++;
                }
                visitFrameEnd();
            } else {
                if (this.symbolTable.getMajorVersion() < 50) {
                    throw new IllegalArgumentException("Class versions V1_5 or less must use F_NEW frames.");
                }
                if (this.stackMapTableEntries == null) {
                    this.stackMapTableEntries = new ByteVector();
                    i5 = this.code.length;
                } else {
                    i5 = (this.code.length - this.previousFrameOffset) - 1;
                    if (i5 < 0) {
                        if (i != 3) {
                            throw new IllegalStateException();
                        }
                        return;
                    }
                }
                if (i == 0) {
                    this.currentLocals = i2;
                    this.stackMapTableEntries.putByte(255).putShort(i5).putShort(i2);
                    for (int i9 = 0; i9 < i2; i9++) {
                        putFrameType(objArr[i9]);
                    }
                    this.stackMapTableEntries.putShort(i3);
                    for (int i10 = 0; i10 < i4; i10++) {
                        putFrameType(objArr2[i10]);
                    }
                } else if (i == 1) {
                    this.currentLocals += i2;
                    this.stackMapTableEntries.putByte(i2 + com.android.p003dx.p006io.Opcodes.INVOKE_POLYMORPHIC_RANGE).putShort(i5);
                    for (int i11 = 0; i11 < i2; i11++) {
                        putFrameType(objArr[i11]);
                    }
                } else if (i == 2) {
                    this.currentLocals -= i2;
                    this.stackMapTableEntries.putByte(com.android.p003dx.p006io.Opcodes.INVOKE_POLYMORPHIC_RANGE - i2).putShort(i5);
                } else if (i != 3) {
                    if (i == 4) {
                        if (i5 < 64) {
                            this.stackMapTableEntries.putByte(i5 + 64);
                        } else {
                            this.stackMapTableEntries.putByte(247).putShort(i5);
                        }
                        putFrameType(objArr2[0]);
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else if (i5 < 64) {
                    this.stackMapTableEntries.putByte(i5);
                } else {
                    this.stackMapTableEntries.putByte(com.android.p003dx.p006io.Opcodes.INVOKE_POLYMORPHIC_RANGE).putShort(i5);
                }
                this.previousFrameOffset = this.code.length;
                this.stackMapTableNumberOfEntries++;
            }
        }
        if (this.compute == 2) {
            this.relativeStackSize = i4;
            for (int i12 = 0; i12 < i4; i12++) {
                Object obj = objArr2[i12];
                if (obj == Opcodes.LONG || obj == Opcodes.DOUBLE) {
                    this.relativeStackSize++;
                }
            }
            int i13 = this.relativeStackSize;
            if (i13 > this.maxRelativeStackSize) {
                this.maxRelativeStackSize = i13;
            }
        }
        this.maxStack = Math.max(this.maxStack, i3);
        this.maxLocals = Math.max(this.maxLocals, this.currentLocals);
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitInsn(int i) {
        ByteVector byteVector = this.code;
        this.lastBytecodeOffset = byteVector.length;
        byteVector.putByte(i);
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i2 = this.compute;
            if (i2 == 4 || i2 == 3) {
                label.frame.execute(i, 0, null, null);
            } else {
                int i3 = this.relativeStackSize + STACK_SIZE_DELTA[i];
                if (i3 > this.maxRelativeStackSize) {
                    this.maxRelativeStackSize = i3;
                }
                this.relativeStackSize = i3;
            }
            if ((i < 172 || i > 177) && i != 191) {
                return;
            }
            endCurrentBasicBlockWithNoSuccessor();
        }
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitIntInsn(int i, int i2) {
        ByteVector byteVector = this.code;
        this.lastBytecodeOffset = byteVector.length;
        if (i == 17) {
            byteVector.put12(i, i2);
        } else {
            byteVector.put11(i, i2);
        }
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i3 = this.compute;
            if (i3 == 4 || i3 == 3) {
                label.frame.execute(i, i2, null, null);
            } else if (i != 188) {
                int i4 = this.relativeStackSize + 1;
                if (i4 > this.maxRelativeStackSize) {
                    this.maxRelativeStackSize = i4;
                }
                this.relativeStackSize = i4;
            }
        }
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitVarInsn(int i, int i2) {
        ByteVector byteVector = this.code;
        this.lastBytecodeOffset = byteVector.length;
        if (i2 < 4 && i != 169) {
            byteVector.putByte((i < 54 ? ((i - 21) << 2) + 26 : ((i - 54) << 2) + 59) + i2);
        } else if (i2 >= 256) {
            byteVector.putByte(196).put12(i, i2);
        } else {
            byteVector.put11(i, i2);
        }
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i3 = this.compute;
            if (i3 == 4 || i3 == 3) {
                label.frame.execute(i, i2, null, null);
            } else if (i == 169) {
                label.flags = (short) (label.flags | 64);
                label.outputStackSize = (short) this.relativeStackSize;
                endCurrentBasicBlockWithNoSuccessor();
            } else {
                int i4 = this.relativeStackSize + STACK_SIZE_DELTA[i];
                if (i4 > this.maxRelativeStackSize) {
                    this.maxRelativeStackSize = i4;
                }
                this.relativeStackSize = i4;
            }
        }
        int i5 = this.compute;
        if (i5 != 0) {
            int i6 = (i == 22 || i == 24 || i == 55 || i == 57) ? i2 + 2 : i2 + 1;
            if (i6 > this.maxLocals) {
                this.maxLocals = i6;
            }
        }
        if (i < 54 || i5 != 4 || this.firstHandler == null) {
            return;
        }
        visitLabel(new Label());
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitTypeInsn(int i, String str) {
        this.lastBytecodeOffset = this.code.length;
        Symbol symbolAddConstantClass = this.symbolTable.addConstantClass(str);
        this.code.put12(i, symbolAddConstantClass.index);
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i2 = this.compute;
            if (i2 == 4 || i2 == 3) {
                label.frame.execute(i, this.lastBytecodeOffset, symbolAddConstantClass, this.symbolTable);
            } else if (i == 187) {
                int i3 = this.relativeStackSize + 1;
                if (i3 > this.maxRelativeStackSize) {
                    this.maxRelativeStackSize = i3;
                }
                this.relativeStackSize = i3;
            }
        }
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitFieldInsn(int i, String str, String str2, String str3) {
        int i2;
        int i3;
        this.lastBytecodeOffset = this.code.length;
        Symbol symbolAddConstantFieldref = this.symbolTable.addConstantFieldref(str, str2, str3);
        this.code.put12(i, symbolAddConstantFieldref.index);
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i4 = this.compute;
            if (i4 == 4 || i4 == 3) {
                label.frame.execute(i, 0, symbolAddConstantFieldref, this.symbolTable);
                return;
            }
            char cCharAt = str3.charAt(0);
            int i5 = -2;
            switch (i) {
                case 178:
                    i2 = this.relativeStackSize + ((cCharAt == 'D' || cCharAt == 'J') ? 2 : 1);
                    break;
                case 179:
                    i3 = this.relativeStackSize;
                    if (cCharAt != 'D' && cCharAt != 'J') {
                        i5 = -1;
                    }
                    i2 = i3 + i5;
                    break;
                case 180:
                    i2 = this.relativeStackSize + ((cCharAt == 'D' || cCharAt == 'J') ? 1 : 0);
                    break;
                default:
                    i3 = this.relativeStackSize;
                    if (cCharAt == 'D' || cCharAt == 'J') {
                        i5 = -3;
                    }
                    i2 = i3 + i5;
                    break;
            }
            if (i2 > this.maxRelativeStackSize) {
                this.maxRelativeStackSize = i2;
            }
            this.relativeStackSize = i2;
        }
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitMethodInsn(int i, String str, String str2, String str3, boolean z) {
        int i2;
        this.lastBytecodeOffset = this.code.length;
        Symbol symbolAddConstantMethodref = this.symbolTable.addConstantMethodref(str, str2, str3, z);
        if (i == 185) {
            this.code.put12(185, symbolAddConstantMethodref.index).put11(symbolAddConstantMethodref.getArgumentsAndReturnSizes() >> 2, 0);
        } else {
            this.code.put12(i, symbolAddConstantMethodref.index);
        }
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i3 = this.compute;
            if (i3 == 4 || i3 == 3) {
                label.frame.execute(i, 0, symbolAddConstantMethodref, this.symbolTable);
                return;
            }
            int argumentsAndReturnSizes = symbolAddConstantMethodref.getArgumentsAndReturnSizes();
            int i4 = (argumentsAndReturnSizes & 3) - (argumentsAndReturnSizes >> 2);
            if (i == 184) {
                i2 = this.relativeStackSize + i4 + 1;
            } else {
                i2 = this.relativeStackSize + i4;
            }
            if (i2 > this.maxRelativeStackSize) {
                this.maxRelativeStackSize = i2;
            }
            this.relativeStackSize = i2;
        }
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitInvokeDynamicInsn(String str, String str2, Handle handle, Object... objArr) {
        this.lastBytecodeOffset = this.code.length;
        Symbol symbolAddConstantInvokeDynamic = this.symbolTable.addConstantInvokeDynamic(str, str2, handle, objArr);
        this.code.put12(186, symbolAddConstantInvokeDynamic.index);
        this.code.putShort(0);
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i = this.compute;
            if (i == 4 || i == 3) {
                label.frame.execute(186, 0, symbolAddConstantInvokeDynamic, this.symbolTable);
                return;
            }
            int argumentsAndReturnSizes = symbolAddConstantInvokeDynamic.getArgumentsAndReturnSizes();
            int i2 = this.relativeStackSize + ((argumentsAndReturnSizes & 3) - (argumentsAndReturnSizes >> 2)) + 1;
            if (i2 > this.maxRelativeStackSize) {
                this.maxRelativeStackSize = i2;
            }
            this.relativeStackSize = i2;
        }
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitJumpInsn(int i, Label label) {
        boolean z;
        ByteVector byteVector = this.code;
        int i2 = byteVector.length;
        this.lastBytecodeOffset = i2;
        int i3 = i >= 200 ? i - 33 : i;
        if ((label.flags & 4) == 0 || label.bytecodeOffset - i2 >= -32768) {
            if (i3 != i) {
                byteVector.putByte(i);
                ByteVector byteVector2 = this.code;
                label.put(byteVector2, byteVector2.length - 1, true);
            } else {
                byteVector.putByte(i3);
                ByteVector byteVector3 = this.code;
                label.put(byteVector3, byteVector3.length - 1, false);
            }
            z = false;
        } else {
            if (i3 == 167) {
                byteVector.putByte(200);
            } else if (i3 == 168) {
                byteVector.putByte(201);
            } else {
                byteVector.putByte(i3 >= 198 ? i3 ^ 1 : ((i3 + 1) ^ 1) - 1);
                this.code.putShort(8);
                this.code.putByte(com.android.p003dx.p006io.Opcodes.REM_INT_LIT8);
                this.hasAsmInstructions = true;
                z = true;
                ByteVector byteVector4 = this.code;
                label.put(byteVector4, byteVector4.length - 1, true);
            }
            z = false;
            ByteVector byteVector42 = this.code;
            label.put(byteVector42, byteVector42.length - 1, true);
        }
        Label label2 = this.currentBasicBlock;
        if (label2 != null) {
            int i4 = this.compute;
            Label label3 = null;
            if (i4 == 4) {
                label2.frame.execute(i3, 0, null, null);
                Label canonicalInstance = label.getCanonicalInstance();
                canonicalInstance.flags = (short) (canonicalInstance.flags | 2);
                addSuccessorToCurrentBasicBlock(0, label);
                if (i3 != 167) {
                    label3 = new Label();
                }
            } else if (i4 == 3) {
                label2.frame.execute(i3, 0, null, null);
            } else if (i4 == 2) {
                this.relativeStackSize += STACK_SIZE_DELTA[i3];
            } else if (i3 == 168) {
                short s = label.flags;
                if ((s & 32) == 0) {
                    label.flags = (short) (s | 32);
                    this.hasSubroutines = true;
                }
                label2.flags = (short) (label2.flags | 16);
                addSuccessorToCurrentBasicBlock(this.relativeStackSize + 1, label);
                label3 = new Label();
            } else {
                int i5 = this.relativeStackSize + STACK_SIZE_DELTA[i3];
                this.relativeStackSize = i5;
                addSuccessorToCurrentBasicBlock(i5, label);
            }
            if (label3 != null) {
                if (z) {
                    label3.flags = (short) (label3.flags | 2);
                }
                visitLabel(label3);
            }
            if (i3 == 167) {
                endCurrentBasicBlockWithNoSuccessor();
            }
        }
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitLabel(Label label) {
        boolean z = this.hasAsmInstructions;
        ByteVector byteVector = this.code;
        this.hasAsmInstructions = z | label.resolve(byteVector.data, byteVector.length);
        short s = label.flags;
        if ((s & 1) != 0) {
            return;
        }
        int i = this.compute;
        if (i == 4) {
            Label label2 = this.currentBasicBlock;
            if (label2 != null) {
                if (label.bytecodeOffset == label2.bytecodeOffset) {
                    label2.flags = (short) ((s & 2) | label2.flags);
                    label.frame = label2.frame;
                    return;
                }
                addSuccessorToCurrentBasicBlock(0, label);
            }
            Label label3 = this.lastBasicBlock;
            if (label3 != null) {
                if (label.bytecodeOffset == label3.bytecodeOffset) {
                    label3.flags = (short) (label3.flags | (label.flags & 2));
                    label.frame = label3.frame;
                    this.currentBasicBlock = label3;
                    return;
                }
                label3.nextBasicBlock = label;
            }
            this.lastBasicBlock = label;
            this.currentBasicBlock = label;
            label.frame = new Frame(label);
            return;
        }
        if (i == 3) {
            Label label4 = this.currentBasicBlock;
            if (label4 == null) {
                this.currentBasicBlock = label;
                return;
            } else {
                label4.frame.owner = label;
                return;
            }
        }
        if (i == 1) {
            Label label5 = this.currentBasicBlock;
            if (label5 != null) {
                label5.outputStackMax = (short) this.maxRelativeStackSize;
                addSuccessorToCurrentBasicBlock(this.relativeStackSize, label);
            }
            this.currentBasicBlock = label;
            this.relativeStackSize = 0;
            this.maxRelativeStackSize = 0;
            Label label6 = this.lastBasicBlock;
            if (label6 != null) {
                label6.nextBasicBlock = label;
            }
            this.lastBasicBlock = label;
            return;
        }
        if (i == 2 && this.currentBasicBlock == null) {
            this.currentBasicBlock = label;
        }
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitLdcInsn(Object obj) {
        char cCharAt;
        this.lastBytecodeOffset = this.code.length;
        Symbol symbolAddConstant = this.symbolTable.addConstant(obj);
        int i = symbolAddConstant.index;
        int i2 = symbolAddConstant.tag;
        boolean z = i2 == 5 || i2 == 6 || (i2 == 17 && ((cCharAt = symbolAddConstant.value.charAt(0)) == 'J' || cCharAt == 'D'));
        if (z) {
            this.code.put12(20, i);
        } else if (i >= 256) {
            this.code.put12(19, i);
        } else {
            this.code.put11(18, i);
        }
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i3 = this.compute;
            if (i3 == 4 || i3 == 3) {
                label.frame.execute(18, 0, symbolAddConstant, this.symbolTable);
                return;
            }
            int i4 = this.relativeStackSize + (z ? 2 : 1);
            if (i4 > this.maxRelativeStackSize) {
                this.maxRelativeStackSize = i4;
            }
            this.relativeStackSize = i4;
        }
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitIincInsn(int i, int i2) {
        int i3;
        int i4;
        ByteVector byteVector = this.code;
        this.lastBytecodeOffset = byteVector.length;
        if (i > 255 || i2 > 127 || i2 < -128) {
            byteVector.putByte(196).put12(132, i).putShort(i2);
        } else {
            byteVector.putByte(132).put11(i, i2);
        }
        Label label = this.currentBasicBlock;
        if (label != null && ((i4 = this.compute) == 4 || i4 == 3)) {
            label.frame.execute(132, i, null, null);
        }
        if (this.compute == 0 || (i3 = i + 1) <= this.maxLocals) {
            return;
        }
        this.maxLocals = i3;
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitTableSwitchInsn(int i, int i2, Label label, Label... labelArr) {
        ByteVector byteVector = this.code;
        this.lastBytecodeOffset = byteVector.length;
        byteVector.putByte(170).putByteArray(null, 0, (4 - (this.code.length % 4)) % 4);
        label.put(this.code, this.lastBytecodeOffset, true);
        this.code.putInt(i).putInt(i2);
        for (Label label2 : labelArr) {
            label2.put(this.code, this.lastBytecodeOffset, true);
        }
        visitSwitchInsn(label, labelArr);
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitLookupSwitchInsn(Label label, int[] iArr, Label[] labelArr) {
        ByteVector byteVector = this.code;
        this.lastBytecodeOffset = byteVector.length;
        byteVector.putByte(171).putByteArray(null, 0, (4 - (this.code.length % 4)) % 4);
        label.put(this.code, this.lastBytecodeOffset, true);
        this.code.putInt(labelArr.length);
        for (int i = 0; i < labelArr.length; i++) {
            this.code.putInt(iArr[i]);
            labelArr[i].put(this.code, this.lastBytecodeOffset, true);
        }
        visitSwitchInsn(label, labelArr);
    }

    private void visitSwitchInsn(Label label, Label[] labelArr) {
        Label label2 = this.currentBasicBlock;
        if (label2 != null) {
            int i = this.compute;
            if (i == 4) {
                label2.frame.execute(171, 0, null, null);
                addSuccessorToCurrentBasicBlock(0, label);
                Label canonicalInstance = label.getCanonicalInstance();
                canonicalInstance.flags = (short) (canonicalInstance.flags | 2);
                for (Label label3 : labelArr) {
                    addSuccessorToCurrentBasicBlock(0, label3);
                    Label canonicalInstance2 = label3.getCanonicalInstance();
                    canonicalInstance2.flags = (short) (canonicalInstance2.flags | 2);
                }
            } else if (i == 1) {
                int i2 = this.relativeStackSize - 1;
                this.relativeStackSize = i2;
                addSuccessorToCurrentBasicBlock(i2, label);
                for (Label label4 : labelArr) {
                    addSuccessorToCurrentBasicBlock(this.relativeStackSize, label4);
                }
            }
            endCurrentBasicBlockWithNoSuccessor();
        }
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitMultiANewArrayInsn(String str, int i) {
        this.lastBytecodeOffset = this.code.length;
        Symbol symbolAddConstantClass = this.symbolTable.addConstantClass(str);
        this.code.put12(197, symbolAddConstantClass.index).putByte(i);
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i2 = this.compute;
            if (i2 == 4 || i2 == 3) {
                label.frame.execute(197, i, symbolAddConstantClass, this.symbolTable);
            } else {
                this.relativeStackSize += 1 - i;
            }
        }
    }

    @Override // org.mvel2.asm.MethodVisitor
    public AnnotationVisitor visitInsnAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (z) {
            AnnotationWriter annotationWriterCreate = AnnotationWriter.create(this.symbolTable, (i & (-16776961)) | (this.lastBytecodeOffset << 8), typePath, str, this.lastCodeRuntimeVisibleTypeAnnotation);
            this.lastCodeRuntimeVisibleTypeAnnotation = annotationWriterCreate;
            return annotationWriterCreate;
        }
        AnnotationWriter annotationWriterCreate2 = AnnotationWriter.create(this.symbolTable, (i & (-16776961)) | (this.lastBytecodeOffset << 8), typePath, str, this.lastCodeRuntimeInvisibleTypeAnnotation);
        this.lastCodeRuntimeInvisibleTypeAnnotation = annotationWriterCreate2;
        return annotationWriterCreate2;
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitTryCatchBlock(Label label, Label label2, Label label3, String str) {
        Handler handler = new Handler(label, label2, label3, str != null ? this.symbolTable.addConstantClass(str).index : 0, str);
        if (this.firstHandler == null) {
            this.firstHandler = handler;
        } else {
            this.lastHandler.nextHandler = handler;
        }
        this.lastHandler = handler;
    }

    @Override // org.mvel2.asm.MethodVisitor
    public AnnotationVisitor visitTryCatchAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (z) {
            AnnotationWriter annotationWriterCreate = AnnotationWriter.create(this.symbolTable, i, typePath, str, this.lastCodeRuntimeVisibleTypeAnnotation);
            this.lastCodeRuntimeVisibleTypeAnnotation = annotationWriterCreate;
            return annotationWriterCreate;
        }
        AnnotationWriter annotationWriterCreate2 = AnnotationWriter.create(this.symbolTable, i, typePath, str, this.lastCodeRuntimeInvisibleTypeAnnotation);
        this.lastCodeRuntimeInvisibleTypeAnnotation = annotationWriterCreate2;
        return annotationWriterCreate2;
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitLocalVariable(String str, String str2, String str3, Label label, Label label2, int i) {
        if (str3 != null) {
            if (this.localVariableTypeTable == null) {
                this.localVariableTypeTable = new ByteVector();
            }
            this.localVariableTypeTableLength++;
            this.localVariableTypeTable.putShort(label.bytecodeOffset).putShort(label2.bytecodeOffset - label.bytecodeOffset).putShort(this.symbolTable.addConstantUtf8(str)).putShort(this.symbolTable.addConstantUtf8(str3)).putShort(i);
        }
        if (this.localVariableTable == null) {
            this.localVariableTable = new ByteVector();
        }
        this.localVariableTableLength++;
        this.localVariableTable.putShort(label.bytecodeOffset).putShort(label2.bytecodeOffset - label.bytecodeOffset).putShort(this.symbolTable.addConstantUtf8(str)).putShort(this.symbolTable.addConstantUtf8(str2)).putShort(i);
        if (this.compute != 0) {
            char cCharAt = str2.charAt(0);
            int i2 = i + ((cCharAt == 'J' || cCharAt == 'D') ? 2 : 1);
            if (i2 > this.maxLocals) {
                this.maxLocals = i2;
            }
        }
    }

    @Override // org.mvel2.asm.MethodVisitor
    public AnnotationVisitor visitLocalVariableAnnotation(int i, TypePath typePath, Label[] labelArr, Label[] labelArr2, int[] iArr, String str, boolean z) {
        ByteVector byteVector = new ByteVector();
        byteVector.putByte(i >>> 24).putShort(labelArr.length);
        for (int i2 = 0; i2 < labelArr.length; i2++) {
            byteVector.putShort(labelArr[i2].bytecodeOffset).putShort(labelArr2[i2].bytecodeOffset - labelArr[i2].bytecodeOffset).putShort(iArr[i2]);
        }
        TypePath.put(typePath, byteVector);
        byteVector.putShort(this.symbolTable.addConstantUtf8(str)).putShort(0);
        if (z) {
            AnnotationWriter annotationWriter = new AnnotationWriter(this.symbolTable, true, byteVector, this.lastCodeRuntimeVisibleTypeAnnotation);
            this.lastCodeRuntimeVisibleTypeAnnotation = annotationWriter;
            return annotationWriter;
        }
        AnnotationWriter annotationWriter2 = new AnnotationWriter(this.symbolTable, true, byteVector, this.lastCodeRuntimeInvisibleTypeAnnotation);
        this.lastCodeRuntimeInvisibleTypeAnnotation = annotationWriter2;
        return annotationWriter2;
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitLineNumber(int i, Label label) {
        if (this.lineNumberTable == null) {
            this.lineNumberTable = new ByteVector();
        }
        this.lineNumberTableLength++;
        this.lineNumberTable.putShort(label.bytecodeOffset);
        this.lineNumberTable.putShort(i);
    }

    @Override // org.mvel2.asm.MethodVisitor
    public void visitMaxs(int i, int i2) {
        int i3 = this.compute;
        if (i3 == 4) {
            computeAllFrames();
            return;
        }
        if (i3 == 1) {
            computeMaxStackAndLocal();
        } else if (i3 == 2) {
            this.maxStack = this.maxRelativeStackSize;
        } else {
            this.maxStack = i;
            this.maxLocals = i2;
        }
    }

    private void computeAllFrames() {
        Handler handler = this.firstHandler;
        while (true) {
            if (handler == null) {
                break;
            }
            String str = handler.catchTypeDescriptor;
            int abstractTypeFromInternalName = Frame.getAbstractTypeFromInternalName(this.symbolTable, str != null ? str : "java/lang/Throwable");
            Label canonicalInstance = handler.handlerPc.getCanonicalInstance();
            canonicalInstance.flags = (short) (canonicalInstance.flags | 2);
            Label canonicalInstance2 = handler.endPc.getCanonicalInstance();
            for (Label canonicalInstance3 = handler.startPc.getCanonicalInstance(); canonicalInstance3 != canonicalInstance2; canonicalInstance3 = canonicalInstance3.nextBasicBlock) {
                canonicalInstance3.outgoingEdges = new Edge(abstractTypeFromInternalName, canonicalInstance, canonicalInstance3.outgoingEdges);
            }
            handler = handler.nextHandler;
        }
        Frame frame = this.firstBasicBlock.frame;
        frame.setInputFrameFromDescriptor(this.symbolTable, this.accessFlags, this.descriptor, this.maxLocals);
        frame.accept(this);
        Label label = this.firstBasicBlock;
        label.nextListElement = Label.EMPTY_LIST;
        int iMax = 0;
        while (label != Label.EMPTY_LIST) {
            Label label2 = label.nextListElement;
            label.nextListElement = null;
            label.flags = (short) (label.flags | 8);
            int inputStackSize = label.frame.getInputStackSize() + label.outputStackMax;
            if (inputStackSize > iMax) {
                iMax = inputStackSize;
            }
            for (Edge edge = label.outgoingEdges; edge != null; edge = edge.nextEdge) {
                Label canonicalInstance4 = edge.successor.getCanonicalInstance();
                if (label.frame.merge(this.symbolTable, canonicalInstance4.frame, edge.info) && canonicalInstance4.nextListElement == null) {
                    canonicalInstance4.nextListElement = label2;
                    label2 = canonicalInstance4;
                }
            }
            label = label2;
        }
        for (Label label3 = this.firstBasicBlock; label3 != null; label3 = label3.nextBasicBlock) {
            if ((label3.flags & 10) == 10) {
                label3.frame.accept(this);
            }
            if ((label3.flags & 8) == 0) {
                Label label4 = label3.nextBasicBlock;
                int i = label3.bytecodeOffset;
                int i2 = (label4 == null ? this.code.length : label4.bytecodeOffset) - 1;
                if (i2 >= i) {
                    for (int i3 = i; i3 < i2; i3++) {
                        this.code.data[i3] = 0;
                    }
                    this.code.data[i2] = -65;
                    this.currentFrame[visitFrameStart(i, 0, 1)] = Frame.getAbstractTypeFromInternalName(this.symbolTable, "java/lang/Throwable");
                    visitFrameEnd();
                    this.firstHandler = Handler.removeRange(this.firstHandler, label3, label4);
                    iMax = Math.max(iMax, 1);
                }
            }
        }
        this.maxStack = iMax;
    }

    private void computeMaxStackAndLocal() {
        for (Handler handler = this.firstHandler; handler != null; handler = handler.nextHandler) {
            Label label = handler.handlerPc;
            Label label2 = handler.endPc;
            for (Label label3 = handler.startPc; label3 != label2; label3 = label3.nextBasicBlock) {
                if ((label3.flags & 16) == 0) {
                    label3.outgoingEdges = new Edge(Integer.MAX_VALUE, label, label3.outgoingEdges);
                } else {
                    Edge edge = label3.outgoingEdges.nextEdge;
                    edge.nextEdge = new Edge(Integer.MAX_VALUE, label, edge.nextEdge);
                }
            }
        }
        if (this.hasSubroutines) {
            this.firstBasicBlock.markSubroutine((short) 1);
            short s = 1;
            for (short s2 = 1; s2 <= s; s2 = (short) (s2 + 1)) {
                for (Label label4 = this.firstBasicBlock; label4 != null; label4 = label4.nextBasicBlock) {
                    if ((label4.flags & 16) != 0 && label4.subroutineId == s2) {
                        Label label5 = label4.outgoingEdges.nextEdge.successor;
                        if (label5.subroutineId == 0) {
                            s = (short) (s + 1);
                            label5.markSubroutine(s);
                        }
                    }
                }
            }
            for (Label label6 = this.firstBasicBlock; label6 != null; label6 = label6.nextBasicBlock) {
                if ((label6.flags & 16) != 0) {
                    label6.outgoingEdges.nextEdge.successor.addSubroutineRetSuccessors(label6);
                }
            }
        }
        Label label7 = this.firstBasicBlock;
        label7.nextListElement = Label.EMPTY_LIST;
        int i = this.maxStack;
        while (label7 != Label.EMPTY_LIST) {
            Label label8 = label7.nextListElement;
            short s3 = label7.inputStackSize;
            int i2 = label7.outputStackMax + s3;
            if (i2 > i) {
                i = i2;
            }
            Edge edge2 = label7.outgoingEdges;
            if ((label7.flags & 16) != 0) {
                edge2 = edge2.nextEdge;
            }
            label7 = label8;
            while (edge2 != null) {
                Label label9 = edge2.successor;
                if (label9.nextListElement == null) {
                    int i3 = edge2.info;
                    label9.inputStackSize = (short) (i3 == Integer.MAX_VALUE ? 1 : i3 + s3);
                    label9.nextListElement = label7;
                    label7 = label9;
                }
                edge2 = edge2.nextEdge;
            }
        }
        this.maxStack = i;
    }

    private void addSuccessorToCurrentBasicBlock(int i, Label label) {
        Label label2 = this.currentBasicBlock;
        label2.outgoingEdges = new Edge(i, label, label2.outgoingEdges);
    }

    private void endCurrentBasicBlockWithNoSuccessor() {
        int i = this.compute;
        if (i != 4) {
            if (i == 1) {
                this.currentBasicBlock.outputStackMax = (short) this.maxRelativeStackSize;
                this.currentBasicBlock = null;
                return;
            }
            return;
        }
        Label label = new Label();
        label.frame = new Frame(label);
        ByteVector byteVector = this.code;
        label.resolve(byteVector.data, byteVector.length);
        this.lastBasicBlock.nextBasicBlock = label;
        this.lastBasicBlock = label;
        this.currentBasicBlock = null;
    }

    int visitFrameStart(int i, int i2, int i3) {
        int i4 = i2 + 3 + i3;
        int[] iArr = this.currentFrame;
        if (iArr == null || iArr.length < i4) {
            this.currentFrame = new int[i4];
        }
        int[] iArr2 = this.currentFrame;
        iArr2[0] = i;
        iArr2[1] = i2;
        iArr2[2] = i3;
        return 3;
    }

    void visitAbstractType(int i, int i2) {
        this.currentFrame[i] = i2;
    }

    void visitFrameEnd() {
        if (this.previousFrame != null) {
            if (this.stackMapTableEntries == null) {
                this.stackMapTableEntries = new ByteVector();
            }
            putFrame();
            this.stackMapTableNumberOfEntries++;
        }
        this.previousFrame = this.currentFrame;
        this.currentFrame = null;
    }

    private void putFrame() {
        int i;
        char c;
        int i2;
        int[] iArr = this.currentFrame;
        int i3 = iArr[1];
        int i4 = iArr[2];
        int i5 = 0;
        int i6 = 3;
        if (this.symbolTable.getMajorVersion() < 50) {
            this.stackMapTableEntries.putShort(this.currentFrame[0]).putShort(i3);
            int i7 = i3 + 3;
            putAbstractTypes(3, i7);
            this.stackMapTableEntries.putShort(i4);
            putAbstractTypes(i7, i4 + i7);
            return;
        }
        if (this.stackMapTableNumberOfEntries == 0) {
            i = this.currentFrame[0];
        } else {
            i = (this.currentFrame[0] - this.previousFrame[0]) - 1;
        }
        int i8 = this.previousFrame[1];
        int i9 = i3 - i8;
        if (i4 == 0) {
            switch (i9) {
                case -3:
                case -2:
                case -1:
                    c = 248;
                    break;
                case 0:
                    c = i >= 64 ? (char) 251 : (char) 0;
                    break;
                case 1:
                case 2:
                case 3:
                    c = 252;
                    break;
                default:
                    c = 255;
                    break;
            }
        } else {
            c = (i9 == 0 && i4 == 1) ? i < 63 ? '@' : (char) 247 : (char) 255;
        }
        if (c != 255) {
            int i10 = 3;
            while (i5 < i8 && i5 < i3) {
                i2 = i6;
                if (this.currentFrame[i10] != this.previousFrame[i10]) {
                    c = 255;
                } else {
                    i10++;
                    i5++;
                    i6 = i2;
                }
            }
            i2 = i6;
        } else {
            i2 = i6;
        }
        if (c == 0) {
            this.stackMapTableEntries.putByte(i);
            return;
        }
        if (c == '@') {
            this.stackMapTableEntries.putByte(i + 64);
            putAbstractTypes(i3 + 3, i3 + 4);
            return;
        }
        if (c == 247) {
            this.stackMapTableEntries.putByte(247).putShort(i);
            putAbstractTypes(i3 + 3, i3 + 4);
            return;
        }
        if (c == 248) {
            this.stackMapTableEntries.putByte(i9 + com.android.p003dx.p006io.Opcodes.INVOKE_POLYMORPHIC_RANGE).putShort(i);
            return;
        }
        if (c == 251) {
            this.stackMapTableEntries.putByte(com.android.p003dx.p006io.Opcodes.INVOKE_POLYMORPHIC_RANGE).putShort(i);
            return;
        }
        if (c == 252) {
            int i11 = i2;
            this.stackMapTableEntries.putByte(i9 + com.android.p003dx.p006io.Opcodes.INVOKE_POLYMORPHIC_RANGE).putShort(i);
            putAbstractTypes(i8 + i11, i3 + i11);
        } else {
            this.stackMapTableEntries.putByte(255).putShort(i).putShort(i3);
            int i12 = i3 + 3;
            putAbstractTypes(i2, i12);
            this.stackMapTableEntries.putShort(i4);
            putAbstractTypes(i12, i4 + i12);
        }
    }

    private void putAbstractTypes(int i, int i2) {
        while (i < i2) {
            Frame.putAbstractType(this.symbolTable, this.currentFrame[i], this.stackMapTableEntries);
            i++;
        }
    }

    private void putFrameType(Object obj) {
        if (obj instanceof Integer) {
            this.stackMapTableEntries.putByte(((Integer) obj).intValue());
        } else if (obj instanceof String) {
            this.stackMapTableEntries.putByte(7).putShort(this.symbolTable.addConstantClass((String) obj).index);
        } else {
            this.stackMapTableEntries.putByte(8).putShort(((Label) obj).bytecodeOffset);
        }
    }

    boolean canCopyMethodAttributes(ClassReader classReader, boolean z, boolean z2, int i, int i2, int i3) {
        if (classReader == this.symbolTable.getSource() && i == this.descriptorIndex && i2 == this.signatureIndex) {
            if (z2 == ((this.accessFlags & 131072) != 0)) {
                if (z != (this.symbolTable.getMajorVersion() < 49 && (this.accessFlags & 4096) != 0)) {
                    return false;
                }
                if (i3 == 0) {
                    if (this.numberOfExceptions != 0) {
                        return false;
                    }
                } else if (classReader.readUnsignedShort(i3) == this.numberOfExceptions) {
                    int i4 = i3 + 2;
                    for (int i5 = 0; i5 < this.numberOfExceptions; i5++) {
                        if (classReader.readUnsignedShort(i4) != this.exceptionIndexTable[i5]) {
                            return false;
                        }
                        i4 += 2;
                    }
                }
                return true;
            }
        }
        return false;
    }

    void setMethodAttributesSource(int i, int i2) {
        this.sourceOffset = i + 6;
        this.sourceLength = i2 - 6;
    }

    int computeMethodInfoSize() {
        int exceptionTableSize;
        if (this.sourceOffset != 0) {
            return this.sourceLength + 6;
        }
        int i = this.code.length;
        if (i <= 0) {
            exceptionTableSize = 8;
        } else {
            if (i > 65535) {
                throw new MethodTooLargeException(this.symbolTable.getClassName(), this.name, this.descriptor, this.code.length);
            }
            this.symbolTable.addConstantUtf8(AttCode.ATTRIBUTE_NAME);
            exceptionTableSize = this.code.length + 16 + Handler.getExceptionTableSize(this.firstHandler) + 8;
            if (this.stackMapTableEntries != null) {
                this.symbolTable.addConstantUtf8(this.symbolTable.getMajorVersion() >= 50 ? "StackMapTable" : "StackMap");
                exceptionTableSize += this.stackMapTableEntries.length + 8;
            }
            if (this.lineNumberTable != null) {
                this.symbolTable.addConstantUtf8(AttLineNumberTable.ATTRIBUTE_NAME);
                exceptionTableSize += this.lineNumberTable.length + 8;
            }
            if (this.localVariableTable != null) {
                this.symbolTable.addConstantUtf8(AttLocalVariableTable.ATTRIBUTE_NAME);
                exceptionTableSize += this.localVariableTable.length + 8;
            }
            if (this.localVariableTypeTable != null) {
                this.symbolTable.addConstantUtf8(AttLocalVariableTypeTable.ATTRIBUTE_NAME);
                exceptionTableSize += this.localVariableTypeTable.length + 8;
            }
            AnnotationWriter annotationWriter = this.lastCodeRuntimeVisibleTypeAnnotation;
            if (annotationWriter != null) {
                exceptionTableSize += annotationWriter.computeAnnotationsSize("RuntimeVisibleTypeAnnotations");
            }
            AnnotationWriter annotationWriter2 = this.lastCodeRuntimeInvisibleTypeAnnotation;
            if (annotationWriter2 != null) {
                exceptionTableSize += annotationWriter2.computeAnnotationsSize("RuntimeInvisibleTypeAnnotations");
            }
            Attribute attribute = this.firstCodeAttribute;
            if (attribute != null) {
                SymbolTable symbolTable = this.symbolTable;
                ByteVector byteVector = this.code;
                exceptionTableSize += attribute.computeAttributesSize(symbolTable, byteVector.data, byteVector.length, this.maxStack, this.maxLocals);
            }
        }
        if (this.numberOfExceptions > 0) {
            this.symbolTable.addConstantUtf8(AttExceptions.ATTRIBUTE_NAME);
            exceptionTableSize += (this.numberOfExceptions * 2) + 8;
        }
        int iComputeAttributesSize = exceptionTableSize + Attribute.computeAttributesSize(this.symbolTable, this.accessFlags, this.signatureIndex) + AnnotationWriter.computeAnnotationsSize(this.lastRuntimeVisibleAnnotation, this.lastRuntimeInvisibleAnnotation, this.lastRuntimeVisibleTypeAnnotation, this.lastRuntimeInvisibleTypeAnnotation);
        AnnotationWriter[] annotationWriterArr = this.lastRuntimeVisibleParameterAnnotations;
        if (annotationWriterArr != null) {
            int length = this.visibleAnnotableParameterCount;
            if (length == 0) {
                length = annotationWriterArr.length;
            }
            iComputeAttributesSize += AnnotationWriter.computeParameterAnnotationsSize(AttRuntimeVisibleParameterAnnotations.ATTRIBUTE_NAME, annotationWriterArr, length);
        }
        AnnotationWriter[] annotationWriterArr2 = this.lastRuntimeInvisibleParameterAnnotations;
        if (annotationWriterArr2 != null) {
            int length2 = this.invisibleAnnotableParameterCount;
            if (length2 == 0) {
                length2 = annotationWriterArr2.length;
            }
            iComputeAttributesSize += AnnotationWriter.computeParameterAnnotationsSize(AttRuntimeInvisibleParameterAnnotations.ATTRIBUTE_NAME, annotationWriterArr2, length2);
        }
        if (this.defaultValue != null) {
            this.symbolTable.addConstantUtf8(AttAnnotationDefault.ATTRIBUTE_NAME);
            iComputeAttributesSize += this.defaultValue.length + 6;
        }
        if (this.parameters != null) {
            this.symbolTable.addConstantUtf8("MethodParameters");
            iComputeAttributesSize += this.parameters.length + 7;
        }
        Attribute attribute2 = this.firstAttribute;
        return attribute2 != null ? iComputeAttributesSize + attribute2.computeAttributesSize(this.symbolTable) : iComputeAttributesSize;
    }

    void putMethodInfo(ByteVector byteVector) {
        int attributeCount;
        ByteVector byteVector2 = byteVector;
        boolean z = this.symbolTable.getMajorVersion() < 49;
        byteVector2.putShort((~(z ? 4096 : 0)) & this.accessFlags).putShort(this.nameIndex).putShort(this.descriptorIndex);
        if (this.sourceOffset != 0) {
            byteVector2.putByteArray(this.symbolTable.getSource().classFileBuffer, this.sourceOffset, this.sourceLength);
            return;
        }
        int attributeCount2 = this.code.length > 0 ? 1 : 0;
        if (this.numberOfExceptions > 0) {
            attributeCount2++;
        }
        int i = this.accessFlags;
        if ((i & 4096) != 0 && z) {
            attributeCount2++;
        }
        if (this.signatureIndex != 0) {
            attributeCount2++;
        }
        if ((131072 & i) != 0) {
            attributeCount2++;
        }
        if (this.lastRuntimeVisibleAnnotation != null) {
            attributeCount2++;
        }
        if (this.lastRuntimeInvisibleAnnotation != null) {
            attributeCount2++;
        }
        if (this.lastRuntimeVisibleParameterAnnotations != null) {
            attributeCount2++;
        }
        if (this.lastRuntimeInvisibleParameterAnnotations != null) {
            attributeCount2++;
        }
        if (this.lastRuntimeVisibleTypeAnnotation != null) {
            attributeCount2++;
        }
        if (this.lastRuntimeInvisibleTypeAnnotation != null) {
            attributeCount2++;
        }
        if (this.defaultValue != null) {
            attributeCount2++;
        }
        if (this.parameters != null) {
            attributeCount2++;
        }
        Attribute attribute = this.firstAttribute;
        if (attribute != null) {
            attributeCount2 += attribute.getAttributeCount();
        }
        byteVector2.putShort(attributeCount2);
        int i2 = this.code.length;
        if (i2 > 0) {
            int exceptionTableSize = i2 + 10 + Handler.getExceptionTableSize(this.firstHandler);
            ByteVector byteVector3 = this.stackMapTableEntries;
            if (byteVector3 != null) {
                exceptionTableSize += byteVector3.length + 8;
                attributeCount = 1;
            } else {
                attributeCount = 0;
            }
            ByteVector byteVector4 = this.lineNumberTable;
            if (byteVector4 != null) {
                exceptionTableSize += byteVector4.length + 8;
                attributeCount++;
            }
            ByteVector byteVector5 = this.localVariableTable;
            if (byteVector5 != null) {
                exceptionTableSize += byteVector5.length + 8;
                attributeCount++;
            }
            ByteVector byteVector6 = this.localVariableTypeTable;
            if (byteVector6 != null) {
                exceptionTableSize += byteVector6.length + 8;
                attributeCount++;
            }
            AnnotationWriter annotationWriter = this.lastCodeRuntimeVisibleTypeAnnotation;
            if (annotationWriter != null) {
                exceptionTableSize += annotationWriter.computeAnnotationsSize("RuntimeVisibleTypeAnnotations");
                attributeCount++;
            }
            AnnotationWriter annotationWriter2 = this.lastCodeRuntimeInvisibleTypeAnnotation;
            if (annotationWriter2 != null) {
                exceptionTableSize += annotationWriter2.computeAnnotationsSize("RuntimeInvisibleTypeAnnotations");
                attributeCount++;
            }
            Attribute attribute2 = this.firstCodeAttribute;
            if (attribute2 != null) {
                SymbolTable symbolTable = this.symbolTable;
                ByteVector byteVector7 = this.code;
                exceptionTableSize += attribute2.computeAttributesSize(symbolTable, byteVector7.data, byteVector7.length, this.maxStack, this.maxLocals);
                attributeCount += this.firstCodeAttribute.getAttributeCount();
            }
            ByteVector byteVectorPutInt = byteVector2.putShort(this.symbolTable.addConstantUtf8(AttCode.ATTRIBUTE_NAME)).putInt(exceptionTableSize).putShort(this.maxStack).putShort(this.maxLocals).putInt(this.code.length);
            ByteVector byteVector8 = this.code;
            byteVectorPutInt.putByteArray(byteVector8.data, 0, byteVector8.length);
            Handler.putExceptionTable(this.firstHandler, byteVector2);
            byteVector2.putShort(attributeCount);
            if (this.stackMapTableEntries != null) {
                ByteVector byteVectorPutShort = byteVector2.putShort(this.symbolTable.addConstantUtf8(this.symbolTable.getMajorVersion() >= 50 ? "StackMapTable" : "StackMap")).putInt(this.stackMapTableEntries.length + 2).putShort(this.stackMapTableNumberOfEntries);
                ByteVector byteVector9 = this.stackMapTableEntries;
                byteVectorPutShort.putByteArray(byteVector9.data, 0, byteVector9.length);
            }
            if (this.lineNumberTable != null) {
                ByteVector byteVectorPutShort2 = byteVector2.putShort(this.symbolTable.addConstantUtf8(AttLineNumberTable.ATTRIBUTE_NAME)).putInt(this.lineNumberTable.length + 2).putShort(this.lineNumberTableLength);
                ByteVector byteVector10 = this.lineNumberTable;
                byteVectorPutShort2.putByteArray(byteVector10.data, 0, byteVector10.length);
            }
            if (this.localVariableTable != null) {
                ByteVector byteVectorPutShort3 = byteVector2.putShort(this.symbolTable.addConstantUtf8(AttLocalVariableTable.ATTRIBUTE_NAME)).putInt(this.localVariableTable.length + 2).putShort(this.localVariableTableLength);
                ByteVector byteVector11 = this.localVariableTable;
                byteVectorPutShort3.putByteArray(byteVector11.data, 0, byteVector11.length);
            }
            if (this.localVariableTypeTable != null) {
                ByteVector byteVectorPutShort4 = byteVector2.putShort(this.symbolTable.addConstantUtf8(AttLocalVariableTypeTable.ATTRIBUTE_NAME)).putInt(this.localVariableTypeTable.length + 2).putShort(this.localVariableTypeTableLength);
                ByteVector byteVector12 = this.localVariableTypeTable;
                byteVectorPutShort4.putByteArray(byteVector12.data, 0, byteVector12.length);
            }
            AnnotationWriter annotationWriter3 = this.lastCodeRuntimeVisibleTypeAnnotation;
            if (annotationWriter3 != null) {
                annotationWriter3.putAnnotations(this.symbolTable.addConstantUtf8("RuntimeVisibleTypeAnnotations"), byteVector2);
            }
            AnnotationWriter annotationWriter4 = this.lastCodeRuntimeInvisibleTypeAnnotation;
            if (annotationWriter4 != null) {
                annotationWriter4.putAnnotations(this.symbolTable.addConstantUtf8("RuntimeInvisibleTypeAnnotations"), byteVector2);
            }
            Attribute attribute3 = this.firstCodeAttribute;
            if (attribute3 != null) {
                SymbolTable symbolTable2 = this.symbolTable;
                ByteVector byteVector13 = this.code;
                attribute3.putAttributes(symbolTable2, byteVector13.data, byteVector13.length, this.maxStack, this.maxLocals, byteVector);
                byteVector2 = byteVector;
            }
        }
        if (this.numberOfExceptions > 0) {
            byteVector2.putShort(this.symbolTable.addConstantUtf8(AttExceptions.ATTRIBUTE_NAME)).putInt((this.numberOfExceptions * 2) + 2).putShort(this.numberOfExceptions);
            for (int i3 : this.exceptionIndexTable) {
                byteVector2.putShort(i3);
            }
        }
        Attribute.putAttributes(this.symbolTable, this.accessFlags, this.signatureIndex, byteVector2);
        AnnotationWriter.putAnnotations(this.symbolTable, this.lastRuntimeVisibleAnnotation, this.lastRuntimeInvisibleAnnotation, this.lastRuntimeVisibleTypeAnnotation, this.lastRuntimeInvisibleTypeAnnotation, byteVector2);
        if (this.lastRuntimeVisibleParameterAnnotations != null) {
            int iAddConstantUtf8 = this.symbolTable.addConstantUtf8(AttRuntimeVisibleParameterAnnotations.ATTRIBUTE_NAME);
            AnnotationWriter[] annotationWriterArr = this.lastRuntimeVisibleParameterAnnotations;
            int length = this.visibleAnnotableParameterCount;
            if (length == 0) {
                length = annotationWriterArr.length;
            }
            AnnotationWriter.putParameterAnnotations(iAddConstantUtf8, annotationWriterArr, length, byteVector2);
        }
        if (this.lastRuntimeInvisibleParameterAnnotations != null) {
            int iAddConstantUtf82 = this.symbolTable.addConstantUtf8(AttRuntimeInvisibleParameterAnnotations.ATTRIBUTE_NAME);
            AnnotationWriter[] annotationWriterArr2 = this.lastRuntimeInvisibleParameterAnnotations;
            int length2 = this.invisibleAnnotableParameterCount;
            if (length2 == 0) {
                length2 = annotationWriterArr2.length;
            }
            AnnotationWriter.putParameterAnnotations(iAddConstantUtf82, annotationWriterArr2, length2, byteVector2);
        }
        if (this.defaultValue != null) {
            ByteVector byteVectorPutInt2 = byteVector2.putShort(this.symbolTable.addConstantUtf8(AttAnnotationDefault.ATTRIBUTE_NAME)).putInt(this.defaultValue.length);
            ByteVector byteVector14 = this.defaultValue;
            byteVectorPutInt2.putByteArray(byteVector14.data, 0, byteVector14.length);
        }
        if (this.parameters != null) {
            ByteVector byteVectorPutByte = byteVector2.putShort(this.symbolTable.addConstantUtf8("MethodParameters")).putInt(this.parameters.length + 1).putByte(this.parametersCount);
            ByteVector byteVector15 = this.parameters;
            byteVectorPutByte.putByteArray(byteVector15.data, 0, byteVector15.length);
        }
        Attribute attribute4 = this.firstAttribute;
        if (attribute4 != null) {
            attribute4.putAttributes(this.symbolTable, byteVector2);
        }
    }

    final void collectAttributePrototypes(Attribute.Set set) {
        set.addAttributes(this.firstAttribute);
        set.addAttributes(this.firstCodeAttribute);
    }
}
