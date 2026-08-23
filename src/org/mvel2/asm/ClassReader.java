package org.mvel2.asm;

import com.android.p003dx.p004cf.attrib.AttAnnotationDefault;
import com.android.p003dx.p004cf.attrib.AttBootstrapMethods;
import com.android.p003dx.p004cf.attrib.AttCode;
import com.android.p003dx.p004cf.attrib.AttConstantValue;
import com.android.p003dx.p004cf.attrib.AttDeprecated;
import com.android.p003dx.p004cf.attrib.AttEnclosingMethod;
import com.android.p003dx.p004cf.attrib.AttExceptions;
import com.android.p003dx.p004cf.attrib.AttInnerClasses;
import com.android.p003dx.p004cf.attrib.AttLineNumberTable;
import com.android.p003dx.p004cf.attrib.AttLocalVariableTable;
import com.android.p003dx.p004cf.attrib.AttLocalVariableTypeTable;
import com.android.p003dx.p004cf.attrib.AttRuntimeInvisibleAnnotations;
import com.android.p003dx.p004cf.attrib.AttRuntimeInvisibleParameterAnnotations;
import com.android.p003dx.p004cf.attrib.AttRuntimeVisibleAnnotations;
import com.android.p003dx.p004cf.attrib.AttRuntimeVisibleParameterAnnotations;
import com.android.p003dx.p004cf.attrib.AttSignature;
import com.android.p003dx.p004cf.attrib.AttSourceDebugExtension;
import com.android.p003dx.p004cf.attrib.AttSourceFile;
import com.android.p003dx.p004cf.attrib.AttSynthetic;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class ClassReader {
    static final int EXPAND_ASM_INSNS = 256;
    public static final int EXPAND_FRAMES = 8;
    private static final int INPUT_STREAM_DATA_CHUNK_SIZE = 4096;
    private static final int MAX_BUFFER_SIZE = 1048576;
    public static final int SKIP_CODE = 1;
    public static final int SKIP_DEBUG = 2;
    public static final int SKIP_FRAMES = 4;

    /* JADX INFO: renamed from: b */
    @Deprecated
    public final byte[] f1560b;
    private final int[] bootstrapMethodOffsets;
    final byte[] classFileBuffer;
    private final ConstantDynamic[] constantDynamicValues;
    private final String[] constantUtf8Values;
    private final int[] cpInfoOffsets;
    public final int header;
    private final int maxStringLength;

    protected void readBytecodeInstructionOffset(int i) {
    }

    public ClassReader(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public ClassReader(byte[] bArr, int i, int i2) {
        this(bArr, i, true);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0063 A[PHI: r8
  0x0063: PHI (r8v3 int) = (r8v0 int), (r8v1 int), (r8v4 int) binds: [B:12:0x0052, B:22:0x006f, B:18:0x0062] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    ClassReader(byte[] bArr, int i, boolean z) {
        this.classFileBuffer = bArr;
        this.f1560b = bArr;
        if (z) {
            int i2 = i + 6;
            if (readShort(i2) > 65) {
                throw new IllegalArgumentException("Unsupported class file major version " + ((int) readShort(i2)));
            }
        }
        int unsignedShort = readUnsignedShort(i + 8);
        this.cpInfoOffsets = new int[unsignedShort];
        this.constantUtf8Values = new String[unsignedShort];
        int i3 = i + 10;
        int i4 = 0;
        boolean z2 = false;
        boolean z3 = false;
        int i5 = 1;
        while (i5 < unsignedShort) {
            int i6 = i5 + 1;
            int i7 = i3 + 1;
            this.cpInfoOffsets[i5] = i7;
            int unsignedShort2 = 3;
            switch (bArr[i3]) {
                case 1:
                    unsignedShort2 = 3 + readUnsignedShort(i7);
                    if (unsignedShort2 > i4) {
                        i5 = i6;
                        i4 = unsignedShort2;
                    } else {
                        i5 = i6;
                    }
                    i3 += unsignedShort2;
                    break;
                case 2:
                case 13:
                case 14:
                default:
                    throw new IllegalArgumentException();
                case 3:
                case 4:
                case 9:
                case 10:
                case 11:
                case 12:
                    i5 = i6;
                    unsignedShort2 = 5;
                    i3 += unsignedShort2;
                    break;
                case 5:
                case 6:
                    i5 += 2;
                    unsignedShort2 = 9;
                    i3 += unsignedShort2;
                    break;
                case 7:
                case 8:
                case 16:
                case 19:
                case 20:
                    break;
                case 15:
                    unsignedShort2 = 4;
                    i5 = i6;
                    i3 += unsignedShort2;
                    break;
                case 17:
                    z2 = true;
                    z3 = true;
                    i5 = i6;
                    unsignedShort2 = 5;
                    i3 += unsignedShort2;
                    break;
                case 18:
                    z3 = true;
                    i5 = i6;
                    unsignedShort2 = 5;
                    i3 += unsignedShort2;
                    break;
            }
        }
        this.maxStringLength = i4;
        this.header = i3;
        this.constantDynamicValues = z2 ? new ConstantDynamic[unsignedShort] : null;
        this.bootstrapMethodOffsets = z3 ? readBootstrapMethodsAttribute(i4) : null;
    }

    public ClassReader(InputStream inputStream) {
        this(readStream(inputStream, false));
    }

    public ClassReader(String str) {
        this(readStream(ClassLoader.getSystemResourceAsStream(str.replace('.', '/') + ".class"), true));
    }

    private static byte[] readStream(InputStream inputStream, boolean z) throws IOException {
        if (inputStream == null) {
            throw new IOException("Class not found");
        }
        int iComputeBufferSize = computeBufferSize(inputStream);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[iComputeBufferSize];
                int i = 0;
                while (true) {
                    int i2 = inputStream.read(bArr, 0, iComputeBufferSize);
                    if (i2 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i2);
                    i++;
                }
                byteArrayOutputStream.flush();
                if (i != 1) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    if (z) {
                        inputStream.close();
                    }
                    return byteArray;
                }
                byteArrayOutputStream.close();
                return bArr;
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable unused) {
                }
                throw th;
            }
        } finally {
            if (z) {
                inputStream.close();
            }
        }
    }

    private static int computeBufferSize(InputStream inputStream) throws IOException {
        int iAvailable = inputStream.available();
        if (iAvailable < 256) {
            return 4096;
        }
        return Math.min(iAvailable, 1048576);
    }

    public int getAccess() {
        return readUnsignedShort(this.header);
    }

    public String getClassName() {
        return readClass(this.header + 2, new char[this.maxStringLength]);
    }

    public String getSuperName() {
        return readClass(this.header + 4, new char[this.maxStringLength]);
    }

    public String[] getInterfaces() {
        int i = this.header + 6;
        int unsignedShort = readUnsignedShort(i);
        String[] strArr = new String[unsignedShort];
        if (unsignedShort > 0) {
            char[] cArr = new char[this.maxStringLength];
            for (int i2 = 0; i2 < unsignedShort; i2++) {
                i += 2;
                strArr[i2] = readClass(i, cArr);
            }
        }
        return strArr;
    }

    public void accept(ClassVisitor classVisitor, int i) {
        accept(classVisitor, new Attribute[0], i);
    }

    public void accept(ClassVisitor classVisitor, Attribute[] attributeArr, int i) {
        Context context;
        ClassReader classReader;
        Context context2;
        String str;
        int i2;
        int i3;
        String utf8;
        int i4;
        String str2;
        String str3;
        int i5;
        Context context3 = new Context();
        context3.attributePrototypes = attributeArr;
        context3.parsingOptions = i;
        char[] cArr = new char[this.maxStringLength];
        context3.charBuffer = cArr;
        int i6 = this.header;
        int unsignedShort = readUnsignedShort(i6);
        String str4 = readClass(i6 + 2, cArr);
        String str5 = readClass(i6 + 4, cArr);
        int unsignedShort2 = readUnsignedShort(i6 + 6);
        String[] strArr = new String[unsignedShort2];
        int i7 = i6 + 8;
        for (int i8 = 0; i8 < unsignedShort2; i8++) {
            strArr[i8] = readClass(i7, cArr);
            i7 += 2;
        }
        int firstAttributeOffset = getFirstAttributeOffset();
        int unsignedShort3 = readUnsignedShort(firstAttributeOffset - 2);
        String str6 = null;
        String utf = null;
        String str7 = null;
        int i9 = 0;
        int i10 = 0;
        String utf82 = null;
        int i11 = 0;
        int i12 = 0;
        String str8 = null;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        Attribute attribute = null;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        while (unsignedShort3 > 0) {
            int i20 = firstAttributeOffset;
            String utf83 = readUTF8(i20, cArr);
            int i21 = readInt(i20 + 2);
            String str9 = str6;
            int i22 = i20 + 6;
            String str10 = utf;
            if (AttSourceFile.ATTRIBUTE_NAME.equals(utf83)) {
                utf8 = readUTF8(i22, cArr);
                i5 = unsignedShort;
                i3 = i22;
                str2 = str4;
                utf = str10;
                i4 = i21;
                context2 = context3;
            } else {
                if (AttInnerClasses.ATTRIBUTE_NAME.equals(utf83)) {
                    i5 = unsignedShort;
                    i3 = i22;
                    i18 = i3;
                } else if (AttEnclosingMethod.ATTRIBUTE_NAME.equals(utf83)) {
                    i5 = unsignedShort;
                    i3 = i22;
                    i10 = i3;
                } else {
                    if ("NestHost".equals(utf83)) {
                        str7 = readClass(i22, cArr);
                    } else if ("NestMembers".equals(utf83)) {
                        i5 = unsignedShort;
                        i3 = i22;
                        i16 = i3;
                    } else if ("PermittedSubclasses".equals(utf83)) {
                        i5 = unsignedShort;
                        i3 = i22;
                        i17 = i3;
                    } else if (AttSignature.ATTRIBUTE_NAME.equals(utf83)) {
                        utf82 = readUTF8(i22, cArr);
                    } else if (AttRuntimeVisibleAnnotations.ATTRIBUTE_NAME.equals(utf83)) {
                        i5 = unsignedShort;
                        i3 = i22;
                        i9 = i3;
                    } else if ("RuntimeVisibleTypeAnnotations".equals(utf83)) {
                        i5 = unsignedShort;
                        i3 = i22;
                        i14 = i3;
                    } else {
                        if (AttDeprecated.ATTRIBUTE_NAME.equals(utf83)) {
                            i5 = 131072 | unsignedShort;
                        } else if (AttSynthetic.ATTRIBUTE_NAME.equals(utf83)) {
                            i5 = unsignedShort | 4096;
                        } else if (AttSourceDebugExtension.ATTRIBUTE_NAME.equals(utf83)) {
                            if (i21 > this.classFileBuffer.length - i22) {
                                throw new IllegalArgumentException();
                            }
                            utf = readUtf(i22, i21, new char[i21]);
                            i5 = unsignedShort;
                            i3 = i22;
                            context2 = context3;
                            utf8 = str9;
                            i4 = i21;
                            str2 = str4;
                        } else if (AttRuntimeInvisibleAnnotations.ATTRIBUTE_NAME.equals(utf83)) {
                            i5 = unsignedShort;
                            i3 = i22;
                            i13 = i3;
                        } else if ("RuntimeInvisibleTypeAnnotations".equals(utf83)) {
                            i5 = unsignedShort;
                            i3 = i22;
                            i15 = i3;
                        } else if ("Record".equals(utf83)) {
                            i5 = 65536 | unsignedShort;
                            i3 = i22;
                            i19 = i3;
                        } else if ("Module".equals(utf83)) {
                            i5 = unsignedShort;
                            i3 = i22;
                            i11 = i3;
                        } else if ("ModuleMainClass".equals(utf83)) {
                            str8 = readClass(i22, cArr);
                        } else if ("ModulePackages".equals(utf83)) {
                            i5 = unsignedShort;
                            i3 = i22;
                            i12 = i3;
                        } else {
                            if (AttBootstrapMethods.ATTRIBUTE_NAME.equals(utf83)) {
                                context2 = context3;
                                str = str10;
                                i2 = unsignedShort;
                                i3 = i22;
                                utf8 = str9;
                                i4 = i21;
                                str2 = str4;
                                str3 = str7;
                            } else {
                                context2 = context3;
                                str = str10;
                                utf8 = str9;
                                str2 = str4;
                                str3 = str7;
                                i2 = unsignedShort;
                                i3 = i22;
                                i4 = i21;
                                Attribute attribute2 = readAttribute(attributeArr, utf83, i3, i4, cArr, -1, null);
                                attribute2.nextAttribute = attribute;
                                attribute = attribute2;
                            }
                            utf = str;
                            str7 = str3;
                            i5 = i2;
                        }
                        i3 = i22;
                    }
                    i5 = unsignedShort;
                    i3 = i22;
                }
                utf = str10;
                utf8 = str9;
                i4 = i21;
                context2 = context3;
                str2 = str4;
            }
            int i23 = i3 + i4;
            unsignedShort3--;
            unsignedShort = i5;
            str6 = utf8;
            context3 = context2;
            str4 = str2;
            firstAttributeOffset = i23;
        }
        String str11 = str6;
        Context context4 = context3;
        String str12 = str4;
        String str13 = utf;
        String str14 = str7;
        Attribute attribute3 = attribute;
        classVisitor.visit(readInt(this.cpInfoOffsets[1] - 7), unsignedShort, str12, utf82, str5, strArr);
        if ((i & 2) == 0 && (str11 != null || str13 != null)) {
            classVisitor.visitSource(str11, str13);
        }
        if (i11 != 0) {
            context = context4;
            classReader = this;
            classReader.readModuleAttributes(classVisitor, context, i11, i12, str8);
        } else {
            context = context4;
            classReader = this;
        }
        if (str14 != null) {
            classVisitor.visitNestHost(str14);
        }
        if (i10 != 0) {
            String str15 = classReader.readClass(i10, cArr);
            int unsignedShort4 = classReader.readUnsignedShort(i10 + 2);
            classVisitor.visitOuterClass(str15, unsignedShort4 == 0 ? null : classReader.readUTF8(classReader.cpInfoOffsets[unsignedShort4], cArr), unsignedShort4 == 0 ? null : classReader.readUTF8(classReader.cpInfoOffsets[unsignedShort4] + 2, cArr));
        }
        if (i9 != 0) {
            int unsignedShort5 = classReader.readUnsignedShort(i9);
            int elementValues = i9 + 2;
            while (true) {
                int i24 = unsignedShort5 - 1;
                if (unsignedShort5 <= 0) {
                    break;
                }
                elementValues = classReader.readElementValues(classVisitor.visitAnnotation(classReader.readUTF8(elementValues, cArr), true), elementValues + 2, true, cArr);
                unsignedShort5 = i24;
            }
        }
        int i25 = i13;
        if (i25 != 0) {
            int unsignedShort6 = classReader.readUnsignedShort(i25);
            int elementValues2 = i25 + 2;
            while (true) {
                int i26 = unsignedShort6 - 1;
                if (unsignedShort6 <= 0) {
                    break;
                }
                elementValues2 = classReader.readElementValues(classVisitor.visitAnnotation(classReader.readUTF8(elementValues2, cArr), false), elementValues2 + 2, true, cArr);
                unsignedShort6 = i26;
            }
        }
        int i27 = i14;
        if (i27 != 0) {
            int unsignedShort7 = classReader.readUnsignedShort(i27);
            int elementValues3 = i27 + 2;
            while (true) {
                int i28 = unsignedShort7 - 1;
                if (unsignedShort7 <= 0) {
                    break;
                }
                int typeAnnotationTarget = classReader.readTypeAnnotationTarget(context, elementValues3);
                elementValues3 = classReader.readElementValues(classVisitor.visitTypeAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, classReader.readUTF8(typeAnnotationTarget, cArr), true), typeAnnotationTarget + 2, true, cArr);
                unsignedShort7 = i28;
            }
        }
        int i29 = i15;
        if (i29 != 0) {
            int unsignedShort8 = classReader.readUnsignedShort(i29);
            int elementValues4 = i29 + 2;
            while (true) {
                int i30 = unsignedShort8 - 1;
                if (unsignedShort8 <= 0) {
                    break;
                }
                int typeAnnotationTarget2 = classReader.readTypeAnnotationTarget(context, elementValues4);
                elementValues4 = classReader.readElementValues(classVisitor.visitTypeAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, classReader.readUTF8(typeAnnotationTarget2, cArr), false), typeAnnotationTarget2 + 2, true, cArr);
                unsignedShort8 = i30;
            }
        }
        while (attribute3 != null) {
            Attribute attribute4 = attribute3.nextAttribute;
            attribute3.nextAttribute = null;
            classVisitor.visitAttribute(attribute3);
            attribute3 = attribute4;
        }
        int i31 = i16;
        if (i31 != 0) {
            int unsignedShort9 = classReader.readUnsignedShort(i31);
            int i32 = i31 + 2;
            while (true) {
                int i33 = unsignedShort9 - 1;
                if (unsignedShort9 <= 0) {
                    break;
                }
                classVisitor.visitNestMember(classReader.readClass(i32, cArr));
                i32 += 2;
                unsignedShort9 = i33;
            }
        }
        int i34 = i17;
        if (i34 != 0) {
            int unsignedShort10 = classReader.readUnsignedShort(i34);
            int i35 = i34 + 2;
            while (true) {
                int i36 = unsignedShort10 - 1;
                if (unsignedShort10 <= 0) {
                    break;
                }
                classVisitor.visitPermittedSubclass(classReader.readClass(i35, cArr));
                i35 += 2;
                unsignedShort10 = i36;
            }
        }
        int i37 = i18;
        if (i37 != 0) {
            int unsignedShort11 = classReader.readUnsignedShort(i37);
            int i38 = i37 + 2;
            while (true) {
                int i39 = unsignedShort11 - 1;
                if (unsignedShort11 <= 0) {
                    break;
                }
                classVisitor.visitInnerClass(classReader.readClass(i38, cArr), classReader.readClass(i38 + 2, cArr), classReader.readUTF8(i38 + 4, cArr), classReader.readUnsignedShort(i38 + 6));
                i38 += 8;
                unsignedShort11 = i39;
            }
        }
        int i40 = i19;
        if (i40 != 0) {
            int unsignedShort12 = classReader.readUnsignedShort(i40);
            int recordComponent = i40 + 2;
            while (true) {
                int i41 = unsignedShort12 - 1;
                if (unsignedShort12 <= 0) {
                    break;
                }
                recordComponent = classReader.readRecordComponent(classVisitor, context, recordComponent);
                unsignedShort12 = i41;
            }
        }
        int unsignedShort13 = classReader.readUnsignedShort(i7);
        int field = i7 + 2;
        while (true) {
            int i42 = unsignedShort13 - 1;
            if (unsignedShort13 <= 0) {
                break;
            }
            field = classReader.readField(classVisitor, context, field);
            unsignedShort13 = i42;
        }
        int unsignedShort14 = classReader.readUnsignedShort(field);
        int method = field + 2;
        while (true) {
            int i43 = unsignedShort14 - 1;
            if (unsignedShort14 > 0) {
                method = classReader.readMethod(classVisitor, context, method);
                unsignedShort14 = i43;
            } else {
                classVisitor.visitEnd();
                return;
            }
        }
    }

    private void readModuleAttributes(ClassVisitor classVisitor, Context context, int i, int i2, String str) {
        String[] strArr;
        char[] cArr = context.charBuffer;
        int i3 = i + 6;
        ModuleVisitor moduleVisitorVisitModule = classVisitor.visitModule(readModule(i, cArr), readUnsignedShort(i + 2), readUTF8(i + 4, cArr));
        if (moduleVisitorVisitModule == null) {
            return;
        }
        if (str != null) {
            moduleVisitorVisitModule.visitMainClass(str);
        }
        if (i2 != 0) {
            int unsignedShort = readUnsignedShort(i2);
            int i4 = i2 + 2;
            while (true) {
                int i5 = unsignedShort - 1;
                if (unsignedShort <= 0) {
                    break;
                }
                moduleVisitorVisitModule.visitPackage(readPackage(i4, cArr));
                i4 += 2;
                unsignedShort = i5;
            }
        }
        int unsignedShort2 = readUnsignedShort(i3);
        int i6 = i + 8;
        while (true) {
            int i7 = unsignedShort2 - 1;
            if (unsignedShort2 <= 0) {
                break;
            }
            String module = readModule(i6, cArr);
            int unsignedShort3 = readUnsignedShort(i6 + 2);
            String utf8 = readUTF8(i6 + 4, cArr);
            i6 += 6;
            moduleVisitorVisitModule.visitRequire(module, unsignedShort3, utf8);
            unsignedShort2 = i7;
        }
        int unsignedShort4 = readUnsignedShort(i6);
        int i8 = i6 + 2;
        while (true) {
            int i9 = unsignedShort4 - 1;
            String[] strArr2 = null;
            if (unsignedShort4 <= 0) {
                break;
            }
            String str2 = readPackage(i8, cArr);
            int unsignedShort5 = readUnsignedShort(i8 + 2);
            int unsignedShort6 = readUnsignedShort(i8 + 4);
            i8 += 6;
            if (unsignedShort6 != 0) {
                strArr2 = new String[unsignedShort6];
                for (int i10 = 0; i10 < unsignedShort6; i10++) {
                    strArr2[i10] = readModule(i8, cArr);
                    i8 += 2;
                }
            }
            moduleVisitorVisitModule.visitExport(str2, unsignedShort5, strArr2);
            unsignedShort4 = i9;
        }
        int unsignedShort7 = readUnsignedShort(i8);
        int i11 = i8 + 2;
        while (true) {
            int i12 = unsignedShort7 - 1;
            if (unsignedShort7 <= 0) {
                break;
            }
            String str3 = readPackage(i11, cArr);
            int unsignedShort8 = readUnsignedShort(i11 + 2);
            int unsignedShort9 = readUnsignedShort(i11 + 4);
            i11 += 6;
            if (unsignedShort9 != 0) {
                strArr = new String[unsignedShort9];
                for (int i13 = 0; i13 < unsignedShort9; i13++) {
                    strArr[i13] = readModule(i11, cArr);
                    i11 += 2;
                }
            } else {
                strArr = null;
            }
            moduleVisitorVisitModule.visitOpen(str3, unsignedShort8, strArr);
            unsignedShort7 = i12;
        }
        int unsignedShort10 = readUnsignedShort(i11);
        int i14 = i11 + 2;
        while (true) {
            int i15 = unsignedShort10 - 1;
            if (unsignedShort10 <= 0) {
                break;
            }
            moduleVisitorVisitModule.visitUse(readClass(i14, cArr));
            i14 += 2;
            unsignedShort10 = i15;
        }
        int unsignedShort11 = readUnsignedShort(i14);
        int i16 = i14 + 2;
        while (true) {
            int i17 = unsignedShort11 - 1;
            if (unsignedShort11 > 0) {
                String str4 = readClass(i16, cArr);
                int unsignedShort12 = readUnsignedShort(i16 + 2);
                i16 += 4;
                String[] strArr3 = new String[unsignedShort12];
                for (int i18 = 0; i18 < unsignedShort12; i18++) {
                    strArr3[i18] = readClass(i16, cArr);
                    i16 += 2;
                }
                moduleVisitorVisitModule.visitProvide(str4, strArr3);
                unsignedShort11 = i17;
            } else {
                moduleVisitorVisitModule.visitEnd();
                return;
            }
        }
    }

    private int readRecordComponent(ClassVisitor classVisitor, Context context, int i) {
        int i2;
        int i3;
        Attribute attribute;
        char[] cArr = context.charBuffer;
        String utf8 = readUTF8(i, cArr);
        String utf82 = readUTF8(i + 2, cArr);
        int unsignedShort = readUnsignedShort(i + 4);
        int i4 = i + 6;
        int i5 = 0;
        Attribute attribute2 = null;
        int i6 = 0;
        String utf83 = null;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = unsignedShort - 1;
            if (unsignedShort <= 0) {
                break;
            }
            String utf84 = readUTF8(i4, cArr);
            int i10 = readInt(i4 + 2);
            int i11 = i4 + 6;
            if (AttSignature.ATTRIBUTE_NAME.equals(utf84)) {
                utf83 = readUTF8(i11, cArr);
                int i12 = i5;
                i2 = i11;
                i11 = i12;
            } else {
                if (AttRuntimeVisibleAnnotations.ATTRIBUTE_NAME.equals(utf84)) {
                    i7 = i11;
                    attribute = attribute2;
                    i3 = i10;
                    i11 = i5;
                    i2 = i7;
                } else if ("RuntimeVisibleTypeAnnotations".equals(utf84)) {
                    i2 = i11;
                } else if (AttRuntimeInvisibleAnnotations.ATTRIBUTE_NAME.equals(utf84)) {
                    i8 = i11;
                    attribute = attribute2;
                    i3 = i10;
                    i11 = i5;
                    i2 = i8;
                } else if ("RuntimeInvisibleTypeAnnotations".equals(utf84)) {
                    i6 = i11;
                    attribute = attribute2;
                    i3 = i10;
                    i11 = i5;
                    i2 = i6;
                } else {
                    int i13 = i5;
                    i2 = i11;
                    Attribute attribute3 = attribute2;
                    i3 = i10;
                    Attribute attribute4 = readAttribute(context.attributePrototypes, utf84, i2, i3, cArr, -1, null);
                    attribute4.nextAttribute = attribute3;
                    attribute = attribute4;
                    i11 = i13;
                    i6 = i6;
                }
                int i14 = i2 + i3;
                i5 = i11;
                i4 = i14;
                attribute2 = attribute;
                unsignedShort = i9;
            }
            attribute = attribute2;
            i3 = i10;
            int i142 = i2 + i3;
            i5 = i11;
            i4 = i142;
            attribute2 = attribute;
            unsignedShort = i9;
        }
        int i15 = i5;
        Attribute attribute5 = attribute2;
        int i16 = i6;
        RecordComponentVisitor recordComponentVisitorVisitRecordComponent = classVisitor.visitRecordComponent(utf8, utf82, utf83);
        if (recordComponentVisitorVisitRecordComponent == null) {
            return i4;
        }
        if (i7 != 0) {
            int unsignedShort2 = readUnsignedShort(i7);
            int elementValues = i7 + 2;
            while (true) {
                int i17 = unsignedShort2 - 1;
                if (unsignedShort2 <= 0) {
                    break;
                }
                elementValues = readElementValues(recordComponentVisitorVisitRecordComponent.visitAnnotation(readUTF8(elementValues, cArr), true), elementValues + 2, true, cArr);
                unsignedShort2 = i17;
            }
        }
        if (i8 != 0) {
            int unsignedShort3 = readUnsignedShort(i8);
            int elementValues2 = i8 + 2;
            while (true) {
                int i18 = unsignedShort3 - 1;
                if (unsignedShort3 <= 0) {
                    break;
                }
                elementValues2 = readElementValues(recordComponentVisitorVisitRecordComponent.visitAnnotation(readUTF8(elementValues2, cArr), false), elementValues2 + 2, true, cArr);
                unsignedShort3 = i18;
            }
        }
        if (i15 != 0) {
            int unsignedShort4 = readUnsignedShort(i15);
            int elementValues3 = i15 + 2;
            while (true) {
                int i19 = unsignedShort4 - 1;
                if (unsignedShort4 <= 0) {
                    break;
                }
                int typeAnnotationTarget = readTypeAnnotationTarget(context, elementValues3);
                elementValues3 = readElementValues(recordComponentVisitorVisitRecordComponent.visitTypeAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, readUTF8(typeAnnotationTarget, cArr), true), typeAnnotationTarget + 2, true, cArr);
                unsignedShort4 = i19;
            }
        }
        if (i16 != 0) {
            int unsignedShort5 = readUnsignedShort(i16);
            int elementValues4 = i16 + 2;
            while (true) {
                int i20 = unsignedShort5 - 1;
                if (unsignedShort5 <= 0) {
                    break;
                }
                int typeAnnotationTarget2 = readTypeAnnotationTarget(context, elementValues4);
                elementValues4 = readElementValues(recordComponentVisitorVisitRecordComponent.visitTypeAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, readUTF8(typeAnnotationTarget2, cArr), false), typeAnnotationTarget2 + 2, true, cArr);
                unsignedShort5 = i20;
            }
        }
        Attribute attribute6 = attribute5;
        while (attribute6 != null) {
            Attribute attribute7 = attribute6.nextAttribute;
            attribute6.nextAttribute = null;
            recordComponentVisitorVisitRecordComponent.visitAttribute(attribute6);
            attribute6 = attribute7;
        }
        recordComponentVisitorVisitRecordComponent.visitEnd();
        return i4;
    }

    private int readField(ClassVisitor classVisitor, Context context, int i) {
        int i2;
        int i3;
        int i4;
        Context context2 = context;
        char[] cArr = context2.charBuffer;
        int unsignedShort = readUnsignedShort(i);
        String utf8 = readUTF8(i + 2, cArr);
        String utf82 = readUTF8(i + 4, cArr);
        int unsignedShort2 = readUnsignedShort(i + 6);
        int i5 = i + 8;
        int i6 = unsignedShort;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        String utf83 = null;
        Object obj = null;
        Attribute attribute = null;
        while (true) {
            int i11 = unsignedShort2 - 1;
            if (unsignedShort2 <= 0) {
                break;
            }
            int i12 = i7;
            String utf84 = readUTF8(i5, cArr);
            int i13 = readInt(i5 + 2);
            int i14 = i5 + 6;
            if (AttConstantValue.ATTRIBUTE_NAME.equals(utf84)) {
                int unsignedShort3 = readUnsignedShort(i14);
                obj = unsignedShort3 == 0 ? null : readConst(unsignedShort3, cArr);
            } else if (AttSignature.ATTRIBUTE_NAME.equals(utf84)) {
                utf83 = readUTF8(i14, cArr);
            } else {
                if (AttDeprecated.ATTRIBUTE_NAME.equals(utf84)) {
                    i4 = 131072 | i6;
                } else if (AttSynthetic.ATTRIBUTE_NAME.equals(utf84)) {
                    i4 = i6 | 4096;
                } else {
                    if (AttRuntimeVisibleAnnotations.ATTRIBUTE_NAME.equals(utf84)) {
                        i7 = i14;
                        i2 = i7;
                        i14 = i8;
                        i3 = i13;
                    } else {
                        if ("RuntimeVisibleTypeAnnotations".equals(utf84)) {
                            i2 = i14;
                            i9 = i2;
                        } else if (AttRuntimeInvisibleAnnotations.ATTRIBUTE_NAME.equals(utf84)) {
                            i2 = i14;
                            i3 = i13;
                            i7 = i12;
                        } else if ("RuntimeInvisibleTypeAnnotations".equals(utf84)) {
                            i2 = i14;
                            i10 = i2;
                        } else {
                            i2 = i14;
                            int i15 = i8;
                            i3 = i13;
                            Attribute attribute2 = readAttribute(context2.attributePrototypes, utf84, i2, i3, cArr, -1, null);
                            attribute2.nextAttribute = attribute;
                            attribute = attribute2;
                            i9 = i9;
                            i14 = i15;
                            i7 = i12;
                            i10 = i10;
                        }
                        i14 = i8;
                        i3 = i13;
                        i7 = i12;
                    }
                    int i16 = i2 + i3;
                    context2 = context;
                    i8 = i14;
                    i5 = i16;
                    unsignedShort2 = i11;
                }
                i2 = i14;
                i6 = i4;
                i14 = i8;
                i3 = i13;
                i7 = i12;
                int i162 = i2 + i3;
                context2 = context;
                i8 = i14;
                i5 = i162;
                unsignedShort2 = i11;
            }
            i2 = i14;
            i14 = i8;
            i3 = i13;
            i7 = i12;
            int i1622 = i2 + i3;
            context2 = context;
            i8 = i14;
            i5 = i1622;
            unsignedShort2 = i11;
        }
        int i17 = i7;
        int i18 = i8;
        int i19 = i9;
        int i20 = i10;
        FieldVisitor fieldVisitorVisitField = classVisitor.visitField(i6, utf8, utf82, utf83, obj);
        if (fieldVisitorVisitField == null) {
            return i5;
        }
        if (i17 != 0) {
            int unsignedShort4 = readUnsignedShort(i17);
            int elementValues = i17 + 2;
            while (true) {
                int i21 = unsignedShort4 - 1;
                if (unsignedShort4 <= 0) {
                    break;
                }
                elementValues = readElementValues(fieldVisitorVisitField.visitAnnotation(readUTF8(elementValues, cArr), true), elementValues + 2, true, cArr);
                unsignedShort4 = i21;
            }
        }
        if (i18 != 0) {
            int unsignedShort5 = readUnsignedShort(i18);
            int elementValues2 = i18 + 2;
            while (true) {
                int i22 = unsignedShort5 - 1;
                if (unsignedShort5 <= 0) {
                    break;
                }
                elementValues2 = readElementValues(fieldVisitorVisitField.visitAnnotation(readUTF8(elementValues2, cArr), false), elementValues2 + 2, true, cArr);
                unsignedShort5 = i22;
            }
        }
        if (i19 != 0) {
            int unsignedShort6 = readUnsignedShort(i19);
            int elementValues3 = i19 + 2;
            while (true) {
                int i23 = unsignedShort6 - 1;
                if (unsignedShort6 <= 0) {
                    break;
                }
                int typeAnnotationTarget = readTypeAnnotationTarget(context, elementValues3);
                elementValues3 = readElementValues(fieldVisitorVisitField.visitTypeAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, readUTF8(typeAnnotationTarget, cArr), true), typeAnnotationTarget + 2, true, cArr);
                unsignedShort6 = i23;
            }
        }
        if (i20 != 0) {
            int unsignedShort7 = readUnsignedShort(i20);
            int elementValues4 = i20 + 2;
            while (true) {
                int i24 = unsignedShort7 - 1;
                if (unsignedShort7 <= 0) {
                    break;
                }
                int typeAnnotationTarget2 = readTypeAnnotationTarget(context, elementValues4);
                elementValues4 = readElementValues(fieldVisitorVisitField.visitTypeAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, readUTF8(typeAnnotationTarget2, cArr), false), typeAnnotationTarget2 + 2, true, cArr);
                unsignedShort7 = i24;
            }
        }
        while (attribute != null) {
            Attribute attribute3 = attribute.nextAttribute;
            attribute.nextAttribute = null;
            fieldVisitorVisitField.visitAttribute(attribute);
            attribute = attribute3;
        }
        fieldVisitorVisitField.visitEnd();
        return i5;
    }

    private int readMethod(ClassVisitor classVisitor, Context context, int i) {
        int i2;
        char[] cArr;
        int i3;
        int i4;
        int i5;
        char[] cArr2;
        ClassReader classReader = this;
        char[] cArr3 = context.charBuffer;
        context.currentMethodAccessFlags = classReader.readUnsignedShort(i);
        context.currentMethodName = classReader.readUTF8(i + 2, cArr3);
        int i6 = i + 4;
        context.currentMethodDescriptor = classReader.readUTF8(i6, cArr3);
        int unsignedShort = classReader.readUnsignedShort(i + 6);
        int i7 = i + 8;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        Attribute attribute = null;
        int unsignedShort2 = 0;
        int i12 = 0;
        int i13 = 0;
        String[] strArr = null;
        boolean z = false;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (true) {
            int i18 = unsignedShort - 1;
            if (unsignedShort <= 0) {
                break;
            }
            int i19 = i8;
            String utf8 = classReader.readUTF8(i7, cArr3);
            int i20 = classReader.readInt(i7 + 2);
            int i21 = i9;
            int i22 = i7 + 6;
            int i23 = i19;
            if (AttCode.ATTRIBUTE_NAME.equals(utf8)) {
                if ((context.parsingOptions & 1) == 0) {
                    i17 = i22;
                }
            } else if (AttExceptions.ATTRIBUTE_NAME.equals(utf8)) {
                int unsignedShort3 = classReader.readUnsignedShort(i22);
                int i24 = i7 + 8;
                strArr = new String[unsignedShort3];
                for (int i25 = 0; i25 < unsignedShort3; i25++) {
                    strArr[i25] = classReader.readClass(i24, cArr3);
                    i24 += 2;
                }
                i14 = i22;
            } else if (AttSignature.ATTRIBUTE_NAME.equals(utf8)) {
                unsignedShort2 = classReader.readUnsignedShort(i22);
            } else if (AttDeprecated.ATTRIBUTE_NAME.equals(utf8)) {
                context.currentMethodAccessFlags |= 131072;
            } else if (AttRuntimeVisibleAnnotations.ATTRIBUTE_NAME.equals(utf8)) {
                i23 = i22;
            } else if ("RuntimeVisibleTypeAnnotations".equals(utf8)) {
                i4 = i22;
                cArr2 = cArr3;
                i5 = i20;
                i7 = i22 + i5;
                cArr3 = cArr2;
                unsignedShort = i18;
                i9 = i21;
                i8 = i23;
                i10 = i4;
            } else if (AttAnnotationDefault.ATTRIBUTE_NAME.equals(utf8)) {
                i13 = i22;
            } else {
                if (AttSynthetic.ATTRIBUTE_NAME.equals(utf8)) {
                    context.currentMethodAccessFlags |= 4096;
                    i4 = i10;
                    cArr2 = cArr3;
                    i5 = i20;
                    z = true;
                } else if (AttRuntimeInvisibleAnnotations.ATTRIBUTE_NAME.equals(utf8)) {
                    i21 = i22;
                } else if ("RuntimeInvisibleTypeAnnotations".equals(utf8)) {
                    i11 = i22;
                } else if (AttRuntimeVisibleParameterAnnotations.ATTRIBUTE_NAME.equals(utf8)) {
                    i15 = i22;
                } else if (AttRuntimeInvisibleParameterAnnotations.ATTRIBUTE_NAME.equals(utf8)) {
                    i16 = i22;
                } else if ("MethodParameters".equals(utf8)) {
                    i12 = i22;
                } else {
                    i4 = i10;
                    i5 = i20;
                    Attribute attribute2 = classReader.readAttribute(context.attributePrototypes, utf8, i22, i5, cArr3, -1, null);
                    cArr2 = cArr3;
                    attribute2.nextAttribute = attribute;
                    attribute = attribute2;
                    i11 = i11;
                }
                i7 = i22 + i5;
                cArr3 = cArr2;
                unsignedShort = i18;
                i9 = i21;
                i8 = i23;
                i10 = i4;
            }
            i4 = i10;
            cArr2 = cArr3;
            i5 = i20;
            i7 = i22 + i5;
            cArr3 = cArr2;
            unsignedShort = i18;
            i9 = i21;
            i8 = i23;
            i10 = i4;
        }
        int i26 = i8;
        int i27 = i9;
        int i28 = i10;
        char[] cArr4 = cArr3;
        int i29 = i11;
        int i30 = i13;
        int i31 = i12;
        MethodVisitor methodVisitorVisitMethod = classVisitor.visitMethod(context.currentMethodAccessFlags, context.currentMethodName, context.currentMethodDescriptor, unsignedShort2 == 0 ? null : classReader.readUtf(unsignedShort2, cArr4), strArr);
        if (methodVisitorVisitMethod == null) {
            return i7;
        }
        if (methodVisitorVisitMethod instanceof MethodWriter) {
            MethodWriter methodWriter = (MethodWriter) methodVisitorVisitMethod;
            i3 = i30;
            boolean z2 = (context.currentMethodAccessFlags & 131072) != 0;
            int unsignedShort4 = classReader.readUnsignedShort(i6);
            int i32 = unsignedShort2;
            i2 = i31;
            cArr = cArr4;
            boolean zCanCopyMethodAttributes = methodWriter.canCopyMethodAttributes(classReader, z, z2, unsignedShort4, i32, i14);
            classReader = classReader;
            if (zCanCopyMethodAttributes) {
                methodWriter.setMethodAttributesSource(i, i7 - i);
                return i7;
            }
        } else {
            i2 = i31;
            cArr = cArr4;
            i3 = i30;
        }
        if (i2 != 0 && (context.parsingOptions & 2) == 0) {
            int i33 = classReader.readByte(i2);
            int i34 = i2 + 1;
            while (true) {
                int i35 = i33 - 1;
                if (i33 <= 0) {
                    break;
                }
                methodVisitorVisitMethod.visitParameter(classReader.readUTF8(i34, cArr), classReader.readUnsignedShort(i34 + 2));
                i34 += 4;
                i33 = i35;
            }
        }
        if (i3 != 0) {
            AnnotationVisitor annotationVisitorVisitAnnotationDefault = methodVisitorVisitMethod.visitAnnotationDefault();
            classReader.readElementValue(annotationVisitorVisitAnnotationDefault, i3, null, cArr);
            if (annotationVisitorVisitAnnotationDefault != null) {
                annotationVisitorVisitAnnotationDefault.visitEnd();
            }
        }
        if (i26 != 0) {
            int unsignedShort5 = classReader.readUnsignedShort(i26);
            int elementValues = i26 + 2;
            while (true) {
                int i36 = unsignedShort5 - 1;
                if (unsignedShort5 <= 0) {
                    break;
                }
                elementValues = classReader.readElementValues(methodVisitorVisitMethod.visitAnnotation(classReader.readUTF8(elementValues, cArr), true), elementValues + 2, true, cArr);
                unsignedShort5 = i36;
            }
        }
        if (i27 != 0) {
            int unsignedShort6 = classReader.readUnsignedShort(i27);
            int elementValues2 = i27 + 2;
            while (true) {
                int i37 = unsignedShort6 - 1;
                if (unsignedShort6 <= 0) {
                    break;
                }
                elementValues2 = classReader.readElementValues(methodVisitorVisitMethod.visitAnnotation(classReader.readUTF8(elementValues2, cArr), false), elementValues2 + 2, true, cArr);
                unsignedShort6 = i37;
            }
        }
        if (i28 != 0) {
            int unsignedShort7 = classReader.readUnsignedShort(i28);
            int elementValues3 = i28 + 2;
            while (true) {
                int i38 = unsignedShort7 - 1;
                if (unsignedShort7 <= 0) {
                    break;
                }
                int typeAnnotationTarget = classReader.readTypeAnnotationTarget(context, elementValues3);
                elementValues3 = classReader.readElementValues(methodVisitorVisitMethod.visitTypeAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, classReader.readUTF8(typeAnnotationTarget, cArr), true), typeAnnotationTarget + 2, true, cArr);
                unsignedShort7 = i38;
            }
        }
        if (i29 != 0) {
            int unsignedShort8 = classReader.readUnsignedShort(i29);
            int elementValues4 = i29 + 2;
            while (true) {
                int i39 = unsignedShort8 - 1;
                if (unsignedShort8 <= 0) {
                    break;
                }
                int typeAnnotationTarget2 = classReader.readTypeAnnotationTarget(context, elementValues4);
                elementValues4 = classReader.readElementValues(methodVisitorVisitMethod.visitTypeAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, classReader.readUTF8(typeAnnotationTarget2, cArr), false), typeAnnotationTarget2 + 2, true, cArr);
                unsignedShort8 = i39;
            }
        }
        int i40 = i15;
        if (i40 != 0) {
            classReader.readParameterAnnotations(methodVisitorVisitMethod, context, i40, true);
        }
        int i41 = i16;
        if (i41 != 0) {
            classReader.readParameterAnnotations(methodVisitorVisitMethod, context, i41, false);
        }
        while (attribute != null) {
            Attribute attribute3 = attribute.nextAttribute;
            attribute.nextAttribute = null;
            methodVisitorVisitMethod.visitAttribute(attribute);
            attribute = attribute3;
        }
        int i42 = i17;
        if (i42 != 0) {
            methodVisitorVisitMethod.visitCode();
            classReader.readCode(methodVisitorVisitMethod, context, i42);
        }
        methodVisitorVisitMethod.visitEnd();
        return i7;
    }

    /* JADX WARN: Removed duplicated region for block: B:147:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03f1  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x040d  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0453  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x046e  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x04b5  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x04c3  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0526  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0578  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x05b5  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x05f3  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0607  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x061c  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0631  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0643  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0656  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x066b  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x067f  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0690  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x069e  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x06aa  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x06b1  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x06cd  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x06e2  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x03eb A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void readCode(MethodVisitor methodVisitor, Context context, int i) {
        int i2;
        char[] cArr;
        Attribute attribute;
        byte[] bArr;
        int i3;
        int i4;
        Label[] labelArr;
        boolean z;
        int i5;
        MethodVisitor methodVisitor2;
        int i6;
        int[] iArr;
        int i7;
        String utf8;
        boolean z2;
        int i8;
        int i9;
        boolean z3;
        int i10;
        String str;
        boolean z4;
        char c;
        int typeAnnotationBytecodeOffset;
        int i11;
        boolean z5;
        int i12;
        int i13;
        int i14;
        int[] iArr2;
        int i15;
        int i16;
        int i17;
        int i18;
        int[] iArr3;
        int i19;
        boolean z6;
        int i20;
        int[] iArr4;
        int i21;
        int i22;
        int i23;
        byte b;
        int unsignedShort;
        int[] typeAnnotations;
        byte b2;
        ClassReader classReader;
        Label[] labelArr2;
        ClassReader classReader2 = this;
        MethodVisitor methodVisitor3 = methodVisitor;
        byte[] bArr2 = classReader2.classFileBuffer;
        char[] cArr2 = context.charBuffer;
        int unsignedShort2 = classReader2.readUnsignedShort(i);
        int unsignedShort3 = classReader2.readUnsignedShort(i + 2);
        int i24 = classReader2.readInt(i + 4);
        int i25 = i + 8;
        if (i24 > classReader2.classFileBuffer.length - i25) {
            throw new IllegalArgumentException();
        }
        int i26 = i25 + i24;
        Label[] labelArr3 = new Label[i24 + 1];
        context.currentMethodLabels = labelArr3;
        int i27 = i25;
        while (i27 < i26) {
            int i28 = i27 - i25;
            switch (bArr2[i27] & 255) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                case 69:
                case 70:
                case 71:
                case 72:
                case 73:
                case 74:
                case 75:
                case 76:
                case 77:
                case 78:
                case 79:
                case 80:
                case 81:
                case 82:
                case 83:
                case 84:
                case 85:
                case 86:
                case 87:
                case 88:
                case 89:
                case 90:
                case 91:
                case 92:
                case 93:
                case 94:
                case 95:
                case 96:
                case 97:
                case 98:
                case 99:
                case 100:
                case 101:
                case 102:
                case 103:
                case 104:
                case 105:
                case 106:
                case 107:
                case 108:
                case 109:
                case 110:
                case 111:
                case 112:
                case 113:
                case 114:
                case 115:
                case 116:
                case 117:
                case 118:
                case 119:
                case 120:
                case 121:
                case 122:
                case 123:
                case 124:
                case 125:
                case 126:
                case 127:
                case 128:
                case 129:
                case 130:
                case 131:
                case 133:
                case 134:
                case 135:
                case 136:
                case 137:
                case 138:
                case 139:
                case 140:
                case 141:
                case 142:
                case 143:
                case 144:
                case 145:
                case 146:
                case 147:
                case 148:
                case 149:
                case 150:
                case 151:
                case 152:
                case 172:
                case 173:
                case 174:
                case 175:
                case 176:
                case 177:
                case 190:
                case 191:
                case 194:
                case 195:
                    i27++;
                    break;
                case 16:
                case 18:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 169:
                case 188:
                    i27 += 2;
                    break;
                case 17:
                case 19:
                case 20:
                case 132:
                case 178:
                case 179:
                case 180:
                case 181:
                case 182:
                case 183:
                case 184:
                case 187:
                case 189:
                case 192:
                case 193:
                    i27 += 3;
                    break;
                case 153:
                case 154:
                case 155:
                case 156:
                case 157:
                case 158:
                case 159:
                case 160:
                case 161:
                case 162:
                case 163:
                case 164:
                case 165:
                case 166:
                case 167:
                case 168:
                case 198:
                case 199:
                    classReader2.createLabel(i28 + classReader2.readShort(i27 + 1), labelArr3);
                    i27 += 3;
                    break;
                case 170:
                    int i29 = i27 + (4 - (i28 & 3));
                    classReader2.createLabel(i28 + classReader2.readInt(i29), labelArr3);
                    int i30 = (classReader2.readInt(i29 + 8) - classReader2.readInt(i29 + 4)) + 1;
                    i27 = i29 + 12;
                    while (true) {
                        int i31 = i30 - 1;
                        if (i30 > 0) {
                            classReader2.createLabel(i28 + classReader2.readInt(i27), labelArr3);
                            i27 += 4;
                            i30 = i31;
                        }
                    }
                    break;
                case 171:
                    int i32 = i27 + (4 - (i28 & 3));
                    classReader2.createLabel(i28 + classReader2.readInt(i32), labelArr3);
                    int i33 = classReader2.readInt(i32 + 4);
                    i27 = i32 + 8;
                    while (true) {
                        int i34 = i33 - 1;
                        if (i33 > 0) {
                            classReader2.createLabel(i28 + classReader2.readInt(i27 + 4), labelArr3);
                            i27 += 8;
                            i33 = i34;
                        }
                    }
                    break;
                case 185:
                case 186:
                    i27 += 5;
                    break;
                case 196:
                    int i35 = bArr2[i27 + 1] & 255;
                    if (i35 != 132) {
                        if (i35 != 169) {
                            switch (i35) {
                                default:
                                    switch (i35) {
                                        case 54:
                                        case 55:
                                        case 56:
                                        case 57:
                                        case 58:
                                            break;
                                        default:
                                            throw new IllegalArgumentException();
                                    }
                                case 21:
                                case 22:
                                case 23:
                                case 24:
                                case 25:
                                    i27 += 4;
                                    break;
                            }
                        }
                        i27 += 4;
                    } else {
                        i27 += 6;
                    }
                    break;
                case 197:
                    i27 += 4;
                    break;
                case 200:
                case 201:
                case com.android.p003dx.p006io.Opcodes.REM_INT_LIT8 /* 220 */:
                    classReader2.createLabel(i28 + classReader2.readInt(i27 + 1), labelArr3);
                    i27 += 5;
                    break;
                case com.android.p003dx.p006io.Opcodes.REM_FLOAT_2ADDR /* 202 */:
                case 203:
                case com.android.p003dx.p006io.Opcodes.SUB_DOUBLE_2ADDR /* 204 */:
                case com.android.p003dx.p006io.Opcodes.MUL_DOUBLE_2ADDR /* 205 */:
                case com.android.p003dx.p006io.Opcodes.DIV_DOUBLE_2ADDR /* 206 */:
                case com.android.p003dx.p006io.Opcodes.REM_DOUBLE_2ADDR /* 207 */:
                case com.android.p003dx.p006io.Opcodes.ADD_INT_LIT16 /* 208 */:
                case com.android.p003dx.p006io.Opcodes.RSUB_INT /* 209 */:
                case com.android.p003dx.p006io.Opcodes.MUL_INT_LIT16 /* 210 */:
                case com.android.p003dx.p006io.Opcodes.DIV_INT_LIT16 /* 211 */:
                case com.android.p003dx.p006io.Opcodes.REM_INT_LIT16 /* 212 */:
                case com.android.p003dx.p006io.Opcodes.AND_INT_LIT16 /* 213 */:
                case com.android.p003dx.p006io.Opcodes.OR_INT_LIT16 /* 214 */:
                case com.android.p003dx.p006io.Opcodes.XOR_INT_LIT16 /* 215 */:
                case com.android.p003dx.p006io.Opcodes.ADD_INT_LIT8 /* 216 */:
                case com.android.p003dx.p006io.Opcodes.RSUB_INT_LIT8 /* 217 */:
                case com.android.p003dx.p006io.Opcodes.MUL_INT_LIT8 /* 218 */:
                case com.android.p003dx.p006io.Opcodes.DIV_INT_LIT8 /* 219 */:
                    classReader2.createLabel(i28 + classReader2.readUnsignedShort(i27 + 1), labelArr3);
                    i27 += 3;
                    break;
                default:
                    throw new IllegalArgumentException();
            }
        }
        byte b3 = 8;
        int unsignedShort4 = classReader2.readUnsignedShort(i27);
        int i36 = i27 + 2;
        while (true) {
            int i37 = unsignedShort4 - 1;
            if (unsignedShort4 > 0) {
                Label labelCreateLabel = classReader2.createLabel(classReader2.readUnsignedShort(i36), labelArr3);
                Label labelCreateLabel2 = classReader2.createLabel(classReader2.readUnsignedShort(i36 + 2), labelArr3);
                Label labelCreateLabel3 = classReader2.createLabel(classReader2.readUnsignedShort(i36 + 4), labelArr3);
                String utf82 = classReader2.readUTF8(classReader2.cpInfoOffsets[classReader2.readUnsignedShort(i36 + 6)], cArr2);
                i36 += 8;
                methodVisitor3.visitTryCatchBlock(labelCreateLabel, labelCreateLabel2, labelCreateLabel3, utf82);
                unsignedShort4 = i37;
            } else {
                int unsignedShort5 = classReader2.readUnsignedShort(i36);
                int i38 = i36 + 2;
                int[] iArr5 = null;
                int i39 = 0;
                int[] typeAnnotations2 = null;
                int i40 = 0;
                Attribute attribute2 = null;
                boolean z7 = true;
                int i41 = 0;
                int i42 = 0;
                while (true) {
                    int i43 = unsignedShort5 - 1;
                    if (unsignedShort5 > 0) {
                        String utf83 = classReader2.readUTF8(i38, cArr2);
                        int i44 = classReader2.readInt(i38 + 2);
                        int i45 = i38 + 6;
                        if (AttLocalVariableTable.ATTRIBUTE_NAME.equals(utf83)) {
                            if ((context.parsingOptions & 2) == 0) {
                                int unsignedShort6 = classReader2.readUnsignedShort(i45);
                                int i46 = i38 + 8;
                                while (true) {
                                    int i47 = unsignedShort6 - 1;
                                    if (unsignedShort6 > 0) {
                                        int unsignedShort7 = classReader2.readUnsignedShort(i46);
                                        classReader2.createDebugLabel(unsignedShort7, labelArr3);
                                        int i48 = i46;
                                        classReader2.createDebugLabel(unsignedShort7 + classReader2.readUnsignedShort(i48 + 2), labelArr3);
                                        i46 = i48 + 10;
                                        unsignedShort6 = i47;
                                    } else {
                                        i41 = i45;
                                    }
                                }
                            }
                        } else if (AttLocalVariableTypeTable.ATTRIBUTE_NAME.equals(utf83)) {
                            i42 = i45;
                        } else if (AttLineNumberTable.ATTRIBUTE_NAME.equals(utf83)) {
                            if ((context.parsingOptions & 2) == 0) {
                                int unsignedShort8 = classReader2.readUnsignedShort(i45);
                                int i49 = i38 + 8;
                                while (true) {
                                    int i50 = unsignedShort8 - 1;
                                    if (unsignedShort8 > 0) {
                                        int unsignedShort9 = classReader2.readUnsignedShort(i49);
                                        int i51 = i49;
                                        int unsignedShort10 = classReader2.readUnsignedShort(i51 + 2);
                                        classReader2.createDebugLabel(unsignedShort9, labelArr3);
                                        labelArr3[unsignedShort9].addLineNumber(unsignedShort10);
                                        unsignedShort8 = i50;
                                        i49 = i51 + 4;
                                    }
                                }
                            }
                        } else {
                            if ("RuntimeVisibleTypeAnnotations".equals(utf83)) {
                                classReader = classReader2;
                                typeAnnotations = classReader2.readTypeAnnotations(methodVisitor3, context, i45, true);
                                labelArr2 = labelArr3;
                                b2 = b3;
                            } else if ("RuntimeInvisibleTypeAnnotations".equals(utf83)) {
                                typeAnnotations2 = classReader2.readTypeAnnotations(methodVisitor3, context, i45, false);
                            } else if ("StackMapTable".equals(utf83)) {
                                if ((context.parsingOptions & 4) == 0) {
                                    i39 = i38 + 8;
                                    i40 = i45 + i44;
                                }
                            } else if ("StackMap".equals(utf83)) {
                                if ((context.parsingOptions & 4) == 0) {
                                    i39 = i38 + 8;
                                    i40 = i45 + i44;
                                    typeAnnotations = iArr5;
                                    b2 = b3;
                                    z7 = false;
                                }
                                classReader = classReader2;
                                labelArr2 = labelArr3;
                            } else {
                                typeAnnotations = iArr5;
                                b2 = b3;
                                Attribute attribute3 = classReader2.readAttribute(context.attributePrototypes, utf83, i45, i44, cArr2, i, labelArr3);
                                classReader = classReader2;
                                labelArr2 = labelArr3;
                                attribute3.nextAttribute = attribute2;
                                attribute2 = attribute3;
                            }
                            i38 = i45 + i44;
                            labelArr3 = labelArr2;
                            classReader2 = classReader;
                            b3 = b2;
                            unsignedShort5 = i43;
                            iArr5 = typeAnnotations;
                            methodVisitor3 = methodVisitor;
                        }
                        typeAnnotations = iArr5;
                        b2 = b3;
                        classReader = classReader2;
                        labelArr2 = labelArr3;
                        i38 = i45 + i44;
                        labelArr3 = labelArr2;
                        classReader2 = classReader;
                        b3 = b2;
                        unsignedShort5 = i43;
                        iArr5 = typeAnnotations;
                        methodVisitor3 = methodVisitor;
                    } else {
                        int[] iArr6 = iArr5;
                        byte b4 = b3;
                        boolean z8 = true;
                        ClassReader classReader3 = classReader2;
                        Label[] labelArr4 = labelArr3;
                        Attribute attribute4 = attribute2;
                        boolean z9 = (context.parsingOptions & b4) != 0;
                        if (i39 != 0) {
                            context.currentFrameOffset = -1;
                            context.currentFrameType = 0;
                            context.currentFrameLocalCount = 0;
                            context.currentFrameLocalCountDelta = 0;
                            context.currentFrameLocalTypes = new Object[unsignedShort3];
                            context.currentFrameStackCount = 0;
                            context.currentFrameStackTypes = new Object[unsignedShort2];
                            if (z9) {
                                classReader3.computeImplicitFrame(context);
                            }
                            int i52 = i39;
                            while (true) {
                                i2 = i40;
                                if (i52 < i2 - 2) {
                                    if (bArr2[i52] != b4 || (unsignedShort = classReader3.readUnsignedShort(i52 + 1)) < 0 || unsignedShort >= i24) {
                                        i23 = i52;
                                        b = b4;
                                    } else {
                                        b = b4;
                                        i23 = i52;
                                        if ((bArr2[i25 + unsignedShort] & 255) == 187) {
                                            classReader3.createLabel(unsignedShort, labelArr4);
                                        }
                                    }
                                    i52 = i23 + 1;
                                    i40 = i2;
                                    b4 = b;
                                }
                            }
                        } else {
                            i2 = i40;
                        }
                        if (!z9 || (context.parsingOptions & 256) == 0) {
                            cArr = cArr2;
                            attribute = attribute4;
                            bArr = bArr2;
                            i3 = unsignedShort3;
                            i4 = i24;
                            labelArr = labelArr4;
                            z = z9;
                            i5 = i2;
                            methodVisitor2 = methodVisitor;
                        } else {
                            attribute = attribute4;
                            bArr = bArr2;
                            i5 = i2;
                            z = z9;
                            i4 = i24;
                            cArr = cArr2;
                            i3 = unsignedShort3;
                            labelArr = labelArr4;
                            methodVisitor2 = methodVisitor;
                            methodVisitor2.visitFrame(-1, i3, null, 0, null);
                        }
                        int[] iArr7 = iArr6;
                        int typeAnnotationBytecodeOffset2 = classReader3.getTypeAnnotationBytecodeOffset(iArr7, 0);
                        int[] iArr8 = typeAnnotations2;
                        int typeAnnotationBytecodeOffset3 = classReader3.getTypeAnnotationBytecodeOffset(iArr8, 0);
                        int i53 = (context.parsingOptions & 256) == 0 ? 33 : 0;
                        int i54 = i39;
                        int i55 = typeAnnotationBytecodeOffset2;
                        int stackMapFrame = i54;
                        int i56 = i25;
                        int i57 = typeAnnotationBytecodeOffset3;
                        boolean z10 = false;
                        int i58 = 0;
                        int i59 = 0;
                        while (i56 < i26) {
                            int i60 = i56;
                            int i61 = i60 - i25;
                            classReader3.readBytecodeInstructionOffset(i61);
                            int[] iArr9 = iArr7;
                            Label label = labelArr[i61];
                            int i62 = i3;
                            if (label != null) {
                                label.accept(methodVisitor2, (context.parsingOptions & 2) == 0 ? z8 : false);
                            }
                            while (stackMapFrame != 0) {
                                int i63 = context.currentFrameOffset;
                                if (i63 == i61 || i63 == -1) {
                                    if (i63 != -1) {
                                        if (!z7 || z) {
                                            iArr3 = iArr8;
                                            i19 = i25;
                                            z6 = z7;
                                            i20 = i26;
                                            iArr4 = iArr9;
                                            i21 = unsignedShort2;
                                            i22 = stackMapFrame;
                                            methodVisitor.visitFrame(-1, context.currentFrameLocalCount, context.currentFrameLocalTypes, context.currentFrameStackCount, context.currentFrameStackTypes);
                                        } else {
                                            iArr3 = iArr8;
                                            i19 = i25;
                                            z6 = z7;
                                            i20 = i26;
                                            iArr4 = iArr9;
                                            i21 = unsignedShort2;
                                            i22 = stackMapFrame;
                                            methodVisitor2.visitFrame(context.currentFrameType, context.currentFrameLocalCountDelta, context.currentFrameLocalTypes, context.currentFrameStackCount, context.currentFrameStackTypes);
                                        }
                                        z10 = false;
                                    } else {
                                        iArr3 = iArr8;
                                        i19 = i25;
                                        z6 = z7;
                                        i20 = i26;
                                        iArr4 = iArr9;
                                        i21 = unsignedShort2;
                                        i22 = stackMapFrame;
                                    }
                                    if (i22 < i5) {
                                        stackMapFrame = classReader3.readStackMapFrame(i22, z6, z, context);
                                        methodVisitor2 = methodVisitor;
                                        unsignedShort2 = i21;
                                        iArr8 = iArr3;
                                    } else {
                                        methodVisitor2 = methodVisitor;
                                        unsignedShort2 = i21;
                                        iArr8 = iArr3;
                                        stackMapFrame = 0;
                                    }
                                    iArr9 = iArr4;
                                    i26 = i20;
                                    z7 = z6;
                                    i25 = i19;
                                } else {
                                    int[] iArr10 = iArr8;
                                    int i64 = i25;
                                    boolean z11 = z7;
                                    int i65 = i26;
                                    int[] iArr11 = iArr9;
                                    int i66 = unsignedShort2;
                                    int i67 = stackMapFrame;
                                    if (z10) {
                                        methodVisitor2 = methodVisitor;
                                        z2 = z10;
                                    } else {
                                        if ((context.parsingOptions & 8) != 0) {
                                            methodVisitor2 = methodVisitor;
                                            methodVisitor2.visitFrame(256, 0, null, 0, null);
                                        } else {
                                            methodVisitor2 = methodVisitor;
                                        }
                                        z2 = false;
                                    }
                                    i8 = bArr[i60] & 255;
                                    switch (i8) {
                                        case 0:
                                        case 1:
                                        case 2:
                                        case 3:
                                        case 4:
                                        case 5:
                                        case 6:
                                        case 7:
                                        case 8:
                                        case 9:
                                        case 10:
                                        case 11:
                                        case 12:
                                        case 13:
                                        case 14:
                                        case 15:
                                        case 46:
                                        case 47:
                                        case 48:
                                        case 49:
                                        case 50:
                                        case 51:
                                        case 52:
                                        case 53:
                                        case 79:
                                        case 80:
                                        case 81:
                                        case 82:
                                        case 83:
                                        case 84:
                                        case 85:
                                        case 86:
                                        case 87:
                                        case 88:
                                        case 89:
                                        case 90:
                                        case 91:
                                        case 92:
                                        case 93:
                                        case 94:
                                        case 95:
                                        case 96:
                                        case 97:
                                        case 98:
                                        case 99:
                                        case 100:
                                        case 101:
                                        case 102:
                                        case 103:
                                        case 104:
                                        case 105:
                                        case 106:
                                        case 107:
                                        case 108:
                                        case 109:
                                        case 110:
                                        case 111:
                                        case 112:
                                        case 113:
                                        case 114:
                                        case 115:
                                        case 116:
                                        case 117:
                                        case 118:
                                        case 119:
                                        case 120:
                                        case 121:
                                        case 122:
                                        case 123:
                                        case 124:
                                        case 125:
                                        case 126:
                                        case 127:
                                        case 128:
                                        case 129:
                                        case 130:
                                        case 131:
                                        case 133:
                                        case 134:
                                        case 135:
                                        case 136:
                                        case 137:
                                        case 138:
                                        case 139:
                                        case 140:
                                        case 141:
                                        case 142:
                                        case 143:
                                        case 144:
                                        case 145:
                                        case 146:
                                        case 147:
                                        case 148:
                                        case 149:
                                        case 150:
                                        case 151:
                                        case 152:
                                        case 172:
                                        case 173:
                                        case 174:
                                        case 175:
                                        case 176:
                                        case 177:
                                        case 190:
                                        case 191:
                                        case 194:
                                        case 195:
                                            i9 = i5;
                                            z3 = z;
                                            methodVisitor2.visitInsn(i8);
                                            i10 = i60 + 1;
                                            typeAnnotationBytecodeOffset = i55;
                                            i11 = i58;
                                            z10 = z2;
                                            while (iArr11 != null && i11 < iArr11.length && typeAnnotationBytecodeOffset <= i61) {
                                                if (typeAnnotationBytecodeOffset != i61) {
                                                    int typeAnnotationTarget = classReader3.readTypeAnnotationTarget(context, iArr11[i11]);
                                                    i18 = i10;
                                                    boolean z12 = z8;
                                                    classReader3.readElementValues(methodVisitor2.visitInsnAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, classReader3.readUTF8(typeAnnotationTarget, cArr), z12), typeAnnotationTarget + 2, z12, cArr);
                                                } else {
                                                    i18 = i10;
                                                }
                                                i11++;
                                                typeAnnotationBytecodeOffset = classReader3.getTypeAnnotationBytecodeOffset(iArr11, i11);
                                                i10 = i18;
                                                z8 = true;
                                            }
                                            int i68 = i10;
                                            int i69 = i59;
                                            int typeAnnotationBytecodeOffset4 = i57;
                                            while (iArr10 != null) {
                                                iArr2 = iArr10;
                                                if (i69 >= iArr2.length || typeAnnotationBytecodeOffset4 > i61) {
                                                    i12 = i69;
                                                    i13 = typeAnnotationBytecodeOffset;
                                                    i14 = i67;
                                                    i5 = i9;
                                                    i57 = typeAnnotationBytecodeOffset4;
                                                    iArr8 = iArr2;
                                                    iArr7 = iArr11;
                                                    i56 = i68;
                                                    i26 = i65;
                                                    i55 = i13;
                                                    unsignedShort2 = i66;
                                                    i3 = i62;
                                                    z = z3;
                                                    z8 = true;
                                                    z7 = z11;
                                                    i59 = i12;
                                                    i25 = i64;
                                                    i58 = i11;
                                                    stackMapFrame = i14;
                                                } else {
                                                    if (typeAnnotationBytecodeOffset4 == i61) {
                                                        int typeAnnotationTarget2 = classReader3.readTypeAnnotationTarget(context, iArr2[i69]);
                                                        i15 = i69;
                                                        i16 = typeAnnotationBytecodeOffset;
                                                        i17 = i67;
                                                        classReader3.readElementValues(methodVisitor2.visitInsnAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, classReader3.readUTF8(typeAnnotationTarget2, cArr), false), typeAnnotationTarget2 + 2, true, cArr);
                                                    } else {
                                                        i15 = i69;
                                                        i16 = typeAnnotationBytecodeOffset;
                                                        i17 = i67;
                                                    }
                                                    i69 = i15 + 1;
                                                    typeAnnotationBytecodeOffset4 = classReader3.getTypeAnnotationBytecodeOffset(iArr2, i69);
                                                    iArr10 = iArr2;
                                                    typeAnnotationBytecodeOffset = i16;
                                                    i67 = i17;
                                                }
                                                break;
                                            }
                                            i12 = i69;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset4;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i68;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        case 16:
                                        case 188:
                                            i9 = i5;
                                            z3 = z;
                                            methodVisitor2.visitIntInsn(i8, bArr[i60 + 1]);
                                            i10 = i60 + 2;
                                            typeAnnotationBytecodeOffset = i55;
                                            i11 = i58;
                                            z10 = z2;
                                            while (iArr11 != null) {
                                                if (typeAnnotationBytecodeOffset != i61) {
                                                }
                                                i11++;
                                                typeAnnotationBytecodeOffset = classReader3.getTypeAnnotationBytecodeOffset(iArr11, i11);
                                                i10 = i18;
                                                z8 = true;
                                            }
                                            int i682 = i10;
                                            int i692 = i59;
                                            int typeAnnotationBytecodeOffset42 = i57;
                                            while (iArr10 != null) {
                                            }
                                            i12 = i692;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset42;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i682;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        case 17:
                                            i9 = i5;
                                            z3 = z;
                                            methodVisitor2.visitIntInsn(i8, classReader3.readShort(i60 + 1));
                                            typeAnnotationBytecodeOffset = i55;
                                            i11 = i58;
                                            z10 = z2;
                                            while (iArr11 != null) {
                                            }
                                            int i6822 = i10;
                                            int i6922 = i59;
                                            int typeAnnotationBytecodeOffset422 = i57;
                                            while (iArr10 != null) {
                                            }
                                            i12 = i6922;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset422;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i6822;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        case 18:
                                            i9 = i5;
                                            z3 = z;
                                            methodVisitor2.visitLdcInsn(classReader3.readConst(bArr[i60 + 1] & 255, cArr));
                                            i10 = i60 + 2;
                                            typeAnnotationBytecodeOffset = i55;
                                            i11 = i58;
                                            z10 = z2;
                                            while (iArr11 != null) {
                                            }
                                            int i68222 = i10;
                                            int i69222 = i59;
                                            int typeAnnotationBytecodeOffset4222 = i57;
                                            while (iArr10 != null) {
                                            }
                                            i12 = i69222;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset4222;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i68222;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        case 19:
                                        case 20:
                                            i9 = i5;
                                            z3 = z;
                                            methodVisitor2.visitLdcInsn(classReader3.readConst(classReader3.readUnsignedShort(i60 + 1), cArr));
                                            typeAnnotationBytecodeOffset = i55;
                                            i11 = i58;
                                            z10 = z2;
                                            while (iArr11 != null) {
                                            }
                                            int i682222 = i10;
                                            int i692222 = i59;
                                            int typeAnnotationBytecodeOffset42222 = i57;
                                            while (iArr10 != null) {
                                            }
                                            i12 = i692222;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset42222;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i682222;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        case 21:
                                        case 22:
                                        case 23:
                                        case 24:
                                        case 25:
                                        case 54:
                                        case 55:
                                        case 56:
                                        case 57:
                                        case 58:
                                        case 169:
                                            i9 = i5;
                                            z3 = z;
                                            methodVisitor2.visitVarInsn(i8, bArr[i60 + 1] & 255);
                                            i10 = i60 + 2;
                                            typeAnnotationBytecodeOffset = i55;
                                            i11 = i58;
                                            z10 = z2;
                                            while (iArr11 != null) {
                                            }
                                            int i6822222 = i10;
                                            int i6922222 = i59;
                                            int typeAnnotationBytecodeOffset422222 = i57;
                                            while (iArr10 != null) {
                                            }
                                            i12 = i6922222;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset422222;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i6822222;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        case 26:
                                        case 27:
                                        case 28:
                                        case 29:
                                        case 30:
                                        case 31:
                                        case 32:
                                        case 33:
                                        case 34:
                                        case 35:
                                        case 36:
                                        case 37:
                                        case 38:
                                        case 39:
                                        case 40:
                                        case 41:
                                        case 42:
                                        case 43:
                                        case 44:
                                        case 45:
                                            i9 = i5;
                                            z3 = z;
                                            int i70 = i8 - 26;
                                            methodVisitor2.visitVarInsn((i70 >> 2) + 21, i70 & 3);
                                            i10 = i60 + 1;
                                            typeAnnotationBytecodeOffset = i55;
                                            i11 = i58;
                                            z10 = z2;
                                            while (iArr11 != null) {
                                            }
                                            int i68222222 = i10;
                                            int i69222222 = i59;
                                            int typeAnnotationBytecodeOffset4222222 = i57;
                                            while (iArr10 != null) {
                                            }
                                            i12 = i69222222;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset4222222;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i68222222;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        case 59:
                                        case 60:
                                        case 61:
                                        case 62:
                                        case 63:
                                        case 64:
                                        case 65:
                                        case 66:
                                        case 67:
                                        case 68:
                                        case 69:
                                        case 70:
                                        case 71:
                                        case 72:
                                        case 73:
                                        case 74:
                                        case 75:
                                        case 76:
                                        case 77:
                                        case 78:
                                            i9 = i5;
                                            z3 = z;
                                            int i71 = i8 - 59;
                                            methodVisitor2.visitVarInsn((i71 >> 2) + 54, i71 & 3);
                                            i10 = i60 + 1;
                                            typeAnnotationBytecodeOffset = i55;
                                            i11 = i58;
                                            z10 = z2;
                                            while (iArr11 != null) {
                                            }
                                            int i682222222 = i10;
                                            int i692222222 = i59;
                                            int typeAnnotationBytecodeOffset42222222 = i57;
                                            while (iArr10 != null) {
                                            }
                                            i12 = i692222222;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset42222222;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i682222222;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        case 132:
                                            i9 = i5;
                                            z3 = z;
                                            methodVisitor2.visitIincInsn(bArr[i60 + 1] & 255, bArr[i60 + 2]);
                                            typeAnnotationBytecodeOffset = i55;
                                            i11 = i58;
                                            z10 = z2;
                                            while (iArr11 != null) {
                                            }
                                            int i6822222222 = i10;
                                            int i6922222222 = i59;
                                            int typeAnnotationBytecodeOffset422222222 = i57;
                                            while (iArr10 != null) {
                                            }
                                            i12 = i6922222222;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset422222222;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i6822222222;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        case 153:
                                        case 154:
                                        case 155:
                                        case 156:
                                        case 157:
                                        case 158:
                                        case 159:
                                        case 160:
                                        case 161:
                                        case 162:
                                        case 163:
                                        case 164:
                                        case 165:
                                        case 166:
                                        case 167:
                                        case 168:
                                        case 198:
                                        case 199:
                                            i9 = i5;
                                            z3 = z;
                                            methodVisitor2.visitJumpInsn(i8, labelArr[classReader3.readShort(i60 + 1) + i61]);
                                            typeAnnotationBytecodeOffset = i55;
                                            i11 = i58;
                                            z10 = z2;
                                            while (iArr11 != null) {
                                            }
                                            int i68222222222 = i10;
                                            int i69222222222 = i59;
                                            int typeAnnotationBytecodeOffset4222222222 = i57;
                                            while (iArr10 != null) {
                                            }
                                            i12 = i69222222222;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset4222222222;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i68222222222;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        case 170:
                                            i9 = i5;
                                            z3 = z;
                                            int i72 = i60 + (4 - (i61 & 3));
                                            Label label2 = labelArr[classReader3.readInt(i72) + i61];
                                            int i73 = classReader3.readInt(i72 + 4);
                                            int i74 = classReader3.readInt(i72 + 8);
                                            i10 = i72 + 12;
                                            int i75 = (i74 - i73) + 1;
                                            Label[] labelArr5 = new Label[i75];
                                            for (int i76 = 0; i76 < i75; i76++) {
                                                labelArr5[i76] = labelArr[i61 + classReader3.readInt(i10)];
                                                i10 += 4;
                                            }
                                            methodVisitor2.visitTableSwitchInsn(i73, i74, label2, labelArr5);
                                            typeAnnotationBytecodeOffset = i55;
                                            i11 = i58;
                                            z10 = z2;
                                            while (iArr11 != null) {
                                            }
                                            int i682222222222 = i10;
                                            int i692222222222 = i59;
                                            int typeAnnotationBytecodeOffset42222222222 = i57;
                                            while (iArr10 != null) {
                                            }
                                            i12 = i692222222222;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset42222222222;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i682222222222;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        case 171:
                                            i9 = i5;
                                            z3 = z;
                                            int i77 = i60 + (4 - (i61 & 3));
                                            Label label3 = labelArr[classReader3.readInt(i77) + i61];
                                            int i78 = classReader3.readInt(i77 + 4);
                                            i10 = i77 + 8;
                                            int[] iArr12 = new int[i78];
                                            Label[] labelArr6 = new Label[i78];
                                            for (int i79 = 0; i79 < i78; i79++) {
                                                iArr12[i79] = classReader3.readInt(i10);
                                                labelArr6[i79] = labelArr[classReader3.readInt(i10 + 4) + i61];
                                                i10 += 8;
                                            }
                                            methodVisitor2.visitLookupSwitchInsn(label3, iArr12, labelArr6);
                                            typeAnnotationBytecodeOffset = i55;
                                            i11 = i58;
                                            z10 = z2;
                                            while (iArr11 != null) {
                                            }
                                            int i6822222222222 = i10;
                                            int i6922222222222 = i59;
                                            int typeAnnotationBytecodeOffset422222222222 = i57;
                                            while (iArr10 != null) {
                                            }
                                            i12 = i6922222222222;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset422222222222;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i6822222222222;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        case 178:
                                        case 179:
                                        case 180:
                                        case 181:
                                        case 182:
                                        case 183:
                                        case 184:
                                        case 185:
                                            i9 = i5;
                                            z3 = z;
                                            int i80 = classReader3.cpInfoOffsets[classReader3.readUnsignedShort(i60 + 1)];
                                            int i81 = classReader3.cpInfoOffsets[classReader3.readUnsignedShort(i80 + 2)];
                                            String str2 = classReader3.readClass(i80, cArr);
                                            String utf84 = classReader3.readUTF8(i81, cArr);
                                            String utf85 = classReader3.readUTF8(i81 + 2, cArr);
                                            if (i8 < 182) {
                                                methodVisitor2.visitFieldInsn(i8, str2, utf84, utf85);
                                            } else {
                                                if (bArr[i80 - 1] == 11) {
                                                    str = utf85;
                                                    z4 = z8;
                                                } else {
                                                    str = utf85;
                                                    z4 = false;
                                                }
                                                methodVisitor2.visitMethodInsn(i8, str2, utf84, str, z4);
                                            }
                                            i10 = i8 == 185 ? i60 + 5 : i60 + 3;
                                            typeAnnotationBytecodeOffset = i55;
                                            i11 = i58;
                                            z10 = z2;
                                            while (iArr11 != null) {
                                            }
                                            int i68222222222222 = i10;
                                            int i69222222222222 = i59;
                                            int typeAnnotationBytecodeOffset4222222222222 = i57;
                                            while (iArr10 != null) {
                                            }
                                            i12 = i69222222222222;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset4222222222222;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i68222222222222;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        case 186:
                                            int i82 = classReader3.cpInfoOffsets[classReader3.readUnsignedShort(i60 + 1)];
                                            int i83 = classReader3.cpInfoOffsets[classReader3.readUnsignedShort(i82 + 2)];
                                            String utf86 = classReader3.readUTF8(i83, cArr);
                                            String utf87 = classReader3.readUTF8(i83 + 2, cArr);
                                            int i84 = classReader3.bootstrapMethodOffsets[classReader3.readUnsignedShort(i82)];
                                            Handle handle = (Handle) classReader3.readConst(classReader3.readUnsignedShort(i84), cArr);
                                            int unsignedShort11 = classReader3.readUnsignedShort(i84 + 2);
                                            Object[] objArr = new Object[unsignedShort11];
                                            z3 = z;
                                            int i85 = i84 + 4;
                                            i9 = i5;
                                            int i86 = 0;
                                            while (i86 < unsignedShort11) {
                                                objArr[i86] = classReader3.readConst(classReader3.readUnsignedShort(i85), cArr);
                                                i85 += 2;
                                                i86++;
                                                unsignedShort11 = unsignedShort11;
                                            }
                                            methodVisitor2.visitInvokeDynamicInsn(utf86, utf87, handle, objArr);
                                            i10 = i60 + 5;
                                            typeAnnotationBytecodeOffset = i55;
                                            i11 = i58;
                                            z10 = z2;
                                            while (iArr11 != null) {
                                            }
                                            int i682222222222222 = i10;
                                            int i692222222222222 = i59;
                                            int typeAnnotationBytecodeOffset42222222222222 = i57;
                                            while (iArr10 != null) {
                                            }
                                            i12 = i692222222222222;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset42222222222222;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i682222222222222;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        case 187:
                                        case 189:
                                        case 192:
                                        case 193:
                                            c = 132;
                                            methodVisitor2.visitTypeInsn(i8, classReader3.readClass(i60 + 1, cArr));
                                            i10 = i60 + 3;
                                            i9 = i5;
                                            z3 = z;
                                            typeAnnotationBytecodeOffset = i55;
                                            i11 = i58;
                                            z10 = z2;
                                            while (iArr11 != null) {
                                            }
                                            int i6822222222222222 = i10;
                                            int i6922222222222222 = i59;
                                            int typeAnnotationBytecodeOffset422222222222222 = i57;
                                            while (iArr10 != null) {
                                            }
                                            i12 = i6922222222222222;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset422222222222222;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i6822222222222222;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        case 196:
                                            int i87 = bArr[i60 + 1] & 255;
                                            c = 132;
                                            if (i87 == 132) {
                                                methodVisitor2.visitIincInsn(classReader3.readUnsignedShort(i60 + 2), classReader3.readShort(i60 + 4));
                                                i10 = i60 + 6;
                                            } else {
                                                methodVisitor2.visitVarInsn(i87, classReader3.readUnsignedShort(i60 + 2));
                                                i10 = i60 + 4;
                                            }
                                            i9 = i5;
                                            z3 = z;
                                            typeAnnotationBytecodeOffset = i55;
                                            i11 = i58;
                                            z10 = z2;
                                            while (iArr11 != null) {
                                            }
                                            int i68222222222222222 = i10;
                                            int i69222222222222222 = i59;
                                            int typeAnnotationBytecodeOffset4222222222222222 = i57;
                                            while (iArr10 != null) {
                                            }
                                            i12 = i69222222222222222;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset4222222222222222;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i68222222222222222;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        case 197:
                                            methodVisitor2.visitMultiANewArrayInsn(classReader3.readClass(i60 + 1, cArr), bArr[i60 + 3] & 255);
                                            i10 = i60 + 4;
                                            i9 = i5;
                                            z3 = z;
                                            typeAnnotationBytecodeOffset = i55;
                                            i11 = i58;
                                            z10 = z2;
                                            while (iArr11 != null) {
                                            }
                                            int i682222222222222222 = i10;
                                            int i692222222222222222 = i59;
                                            int typeAnnotationBytecodeOffset42222222222222222 = i57;
                                            while (iArr10 != null) {
                                            }
                                            i12 = i692222222222222222;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset42222222222222222;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i682222222222222222;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        case 200:
                                        case 201:
                                            methodVisitor2.visitJumpInsn(i8 - i53, labelArr[classReader3.readInt(i60 + 1) + i61]);
                                            i10 = i60 + 5;
                                            i9 = i5;
                                            z3 = z;
                                            typeAnnotationBytecodeOffset = i55;
                                            i11 = i58;
                                            z10 = z2;
                                            while (iArr11 != null) {
                                            }
                                            int i6822222222222222222 = i10;
                                            int i6922222222222222222 = i59;
                                            int typeAnnotationBytecodeOffset422222222222222222 = i57;
                                            while (iArr10 != null) {
                                            }
                                            i12 = i6922222222222222222;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset422222222222222222;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i6822222222222222222;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        case com.android.p003dx.p006io.Opcodes.REM_FLOAT_2ADDR /* 202 */:
                                        case 203:
                                        case com.android.p003dx.p006io.Opcodes.SUB_DOUBLE_2ADDR /* 204 */:
                                        case com.android.p003dx.p006io.Opcodes.MUL_DOUBLE_2ADDR /* 205 */:
                                        case com.android.p003dx.p006io.Opcodes.DIV_DOUBLE_2ADDR /* 206 */:
                                        case com.android.p003dx.p006io.Opcodes.REM_DOUBLE_2ADDR /* 207 */:
                                        case com.android.p003dx.p006io.Opcodes.ADD_INT_LIT16 /* 208 */:
                                        case com.android.p003dx.p006io.Opcodes.RSUB_INT /* 209 */:
                                        case com.android.p003dx.p006io.Opcodes.MUL_INT_LIT16 /* 210 */:
                                        case com.android.p003dx.p006io.Opcodes.DIV_INT_LIT16 /* 211 */:
                                        case com.android.p003dx.p006io.Opcodes.REM_INT_LIT16 /* 212 */:
                                        case com.android.p003dx.p006io.Opcodes.AND_INT_LIT16 /* 213 */:
                                        case com.android.p003dx.p006io.Opcodes.OR_INT_LIT16 /* 214 */:
                                        case com.android.p003dx.p006io.Opcodes.XOR_INT_LIT16 /* 215 */:
                                        case com.android.p003dx.p006io.Opcodes.ADD_INT_LIT8 /* 216 */:
                                        case com.android.p003dx.p006io.Opcodes.RSUB_INT_LIT8 /* 217 */:
                                        case com.android.p003dx.p006io.Opcodes.MUL_INT_LIT8 /* 218 */:
                                        case com.android.p003dx.p006io.Opcodes.DIV_INT_LIT8 /* 219 */:
                                            int i88 = i8 < 218 ? i8 - 49 : i8 - 20;
                                            Label label4 = labelArr[classReader3.readUnsignedShort(i60 + 1) + i61];
                                            if (i88 == 167 || i88 == 168) {
                                                methodVisitor2.visitJumpInsn(i88 + 33, label4);
                                                z5 = z2;
                                            } else {
                                                methodVisitor2.visitJumpInsn(i88 < 167 ? ((i88 + 1) ^ 1) - 1 : i88 ^ 1, classReader3.createLabel(i61 + 3, labelArr));
                                                methodVisitor2.visitJumpInsn(200, label4);
                                                z5 = z8;
                                            }
                                            i10 = i60 + 3;
                                            z10 = z5;
                                            i9 = i5;
                                            z3 = z;
                                            typeAnnotationBytecodeOffset = i55;
                                            i11 = i58;
                                            while (iArr11 != null) {
                                            }
                                            int i68222222222222222222 = i10;
                                            int i69222222222222222222 = i59;
                                            int typeAnnotationBytecodeOffset4222222222222222222 = i57;
                                            while (iArr10 != null) {
                                            }
                                            i12 = i69222222222222222222;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset4222222222222222222;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i68222222222222222222;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        case com.android.p003dx.p006io.Opcodes.REM_INT_LIT8 /* 220 */:
                                            methodVisitor2.visitJumpInsn(200, labelArr[classReader3.readInt(i60 + 1) + i61]);
                                            i10 = i60 + 5;
                                            i9 = i5;
                                            z3 = z;
                                            typeAnnotationBytecodeOffset = i55;
                                            z10 = z8;
                                            i11 = i58;
                                            while (iArr11 != null) {
                                            }
                                            int i682222222222222222222 = i10;
                                            int i692222222222222222222 = i59;
                                            int typeAnnotationBytecodeOffset42222222222222222222 = i57;
                                            while (iArr10 != null) {
                                            }
                                            i12 = i692222222222222222222;
                                            i13 = typeAnnotationBytecodeOffset;
                                            i14 = i67;
                                            iArr2 = iArr10;
                                            i5 = i9;
                                            i57 = typeAnnotationBytecodeOffset42222222222222222222;
                                            iArr8 = iArr2;
                                            iArr7 = iArr11;
                                            i56 = i682222222222222222222;
                                            i26 = i65;
                                            i55 = i13;
                                            unsignedShort2 = i66;
                                            i3 = i62;
                                            z = z3;
                                            z8 = true;
                                            z7 = z11;
                                            i59 = i12;
                                            i25 = i64;
                                            i58 = i11;
                                            stackMapFrame = i14;
                                            break;
                                        default:
                                            throw new AssertionError();
                                    }
                                }
                            }
                            int[] iArr102 = iArr8;
                            int i642 = i25;
                            boolean z112 = z7;
                            int i652 = i26;
                            int[] iArr112 = iArr9;
                            int i662 = unsignedShort2;
                            int i672 = stackMapFrame;
                            if (z10) {
                            }
                            i8 = bArr[i60] & 255;
                            switch (i8) {
                            }
                        }
                        int[] iArr13 = iArr7;
                        int i89 = i3;
                        int[] iArr14 = iArr8;
                        int i90 = unsignedShort2;
                        int i91 = 0;
                        Label label5 = labelArr[i4];
                        if (label5 != null) {
                            methodVisitor2.visitLabel(label5);
                        }
                        int i92 = i41;
                        if (i92 != 0 && (context.parsingOptions & 2) == 0) {
                            int i93 = i42;
                            if (i93 != 0) {
                                int unsignedShort12 = classReader3.readUnsignedShort(i93) * 3;
                                int[] iArr15 = new int[unsignedShort12];
                                int i94 = i93 + 2;
                                while (unsignedShort12 > 0) {
                                    iArr15[unsignedShort12 - 1] = i94 + 6;
                                    iArr15[unsignedShort12 - 2] = classReader3.readUnsignedShort(i94 + 8);
                                    unsignedShort12 -= 3;
                                    iArr15[unsignedShort12] = classReader3.readUnsignedShort(i94);
                                    i94 += 10;
                                }
                                iArr = iArr15;
                            } else {
                                iArr = null;
                            }
                            int unsignedShort13 = classReader3.readUnsignedShort(i92);
                            int i95 = i92 + 2;
                            while (true) {
                                int i96 = unsignedShort13 - 1;
                                if (unsignedShort13 > 0) {
                                    int unsignedShort14 = classReader3.readUnsignedShort(i95);
                                    int unsignedShort15 = classReader3.readUnsignedShort(i95 + 2);
                                    String utf88 = classReader3.readUTF8(i95 + 4, cArr);
                                    String utf89 = classReader3.readUTF8(i95 + 6, cArr);
                                    int unsignedShort16 = classReader3.readUnsignedShort(i95 + 8);
                                    int i97 = i95 + 10;
                                    if (iArr != null) {
                                        for (int i98 = i91; i98 < iArr.length; i98 += 3) {
                                            if (iArr[i98] == unsignedShort14 && iArr[i98 + 1] == unsignedShort16) {
                                                utf8 = classReader3.readUTF8(iArr[i98 + 2], cArr);
                                                i7 = unsignedShort15;
                                            }
                                        }
                                        i7 = unsignedShort15;
                                        utf8 = null;
                                    } else {
                                        i7 = unsignedShort15;
                                        utf8 = null;
                                    }
                                    methodVisitor2.visitLocalVariable(utf88, utf89, utf8, labelArr[unsignedShort14], labelArr[i7 + unsignedShort14], unsignedShort16);
                                    methodVisitor2 = methodVisitor;
                                    classReader3 = classReader3;
                                    unsignedShort13 = i96;
                                    i95 = i97;
                                    i91 = 0;
                                }
                            }
                        }
                        ClassReader classReader4 = classReader3;
                        int i99 = 65;
                        int i100 = 64;
                        if (iArr13 != null) {
                            int length = iArr13.length;
                            int i101 = 0;
                            while (i101 < length) {
                                int i102 = iArr13[i101];
                                int i103 = classReader4.readByte(i102);
                                if (i103 == 64 || i103 == i99) {
                                    int typeAnnotationTarget3 = classReader4.readTypeAnnotationTarget(context, i102);
                                    i6 = i101;
                                    classReader4.readElementValues(methodVisitor.visitLocalVariableAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, context.currentLocalVariableAnnotationRangeStarts, context.currentLocalVariableAnnotationRangeEnds, context.currentLocalVariableAnnotationRangeIndices, classReader4.readUTF8(typeAnnotationTarget3, cArr), true), typeAnnotationTarget3 + 2, true, cArr);
                                } else {
                                    i6 = i101;
                                }
                                i101 = i6 + 1;
                                i99 = 65;
                            }
                        }
                        if (iArr14 != null) {
                            int length2 = iArr14.length;
                            int i104 = 0;
                            while (i104 < length2) {
                                int i105 = iArr14[i104];
                                int i106 = classReader4.readByte(i105);
                                if (i106 == i100 || i106 == 65) {
                                    int typeAnnotationTarget4 = classReader4.readTypeAnnotationTarget(context, i105);
                                    classReader4.readElementValues(methodVisitor.visitLocalVariableAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, context.currentLocalVariableAnnotationRangeStarts, context.currentLocalVariableAnnotationRangeEnds, context.currentLocalVariableAnnotationRangeIndices, classReader4.readUTF8(typeAnnotationTarget4, cArr), false), typeAnnotationTarget4 + 2, true, cArr);
                                }
                                i104++;
                                i100 = 64;
                            }
                        }
                        Attribute attribute5 = attribute;
                        while (attribute5 != null) {
                            Attribute attribute6 = attribute5.nextAttribute;
                            attribute5.nextAttribute = null;
                            methodVisitor.visitAttribute(attribute5);
                            attribute5 = attribute6;
                        }
                        methodVisitor.visitMaxs(i90, i89);
                        return;
                    }
                }
            }
        }
    }

    protected Label readLabel(int i, Label[] labelArr) {
        if (labelArr[i] == null) {
            labelArr[i] = new Label();
        }
        return labelArr[i];
    }

    private Label createLabel(int i, Label[] labelArr) {
        Label label = readLabel(i, labelArr);
        label.flags = (short) (label.flags & (-2));
        return label;
    }

    private void createDebugLabel(int i, Label[] labelArr) {
        if (labelArr[i] == null) {
            Label label = readLabel(i, labelArr);
            label.flags = (short) (label.flags | 1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004d A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int[] readTypeAnnotations(MethodVisitor methodVisitor, Context context, int i, boolean z) {
        int i2;
        char[] cArr = context.charBuffer;
        int unsignedShort = readUnsignedShort(i);
        int[] iArr = new int[unsignedShort];
        int elementValues = i + 2;
        for (int i3 = 0; i3 < unsignedShort; i3++) {
            iArr[i3] = elementValues;
            int i4 = readInt(elementValues);
            int i5 = i4 >>> 24;
            if (i5 != 23) {
                switch (i5) {
                    default:
                        switch (i5) {
                            case 64:
                            case 65:
                                int unsignedShort2 = readUnsignedShort(elementValues + 1);
                                i2 = elementValues + 3;
                                while (true) {
                                    int i6 = unsignedShort2 - 1;
                                    if (unsignedShort2 > 0) {
                                        int unsignedShort3 = readUnsignedShort(i2);
                                        int unsignedShort4 = readUnsignedShort(i2 + 2);
                                        i2 += 6;
                                        createLabel(unsignedShort3, context.currentMethodLabels);
                                        createLabel(unsignedShort3 + unsignedShort4, context.currentMethodLabels);
                                        unsignedShort2 = i6;
                                    }
                                    break;
                                }
                                break;
                            case 66:
                            case 67:
                            case 68:
                            case 69:
                            case 70:
                                break;
                            case 71:
                            case 72:
                            case 73:
                            case 74:
                            case 75:
                                i2 = elementValues + 4;
                                break;
                            default:
                                throw new IllegalArgumentException();
                        }
                    case 16:
                    case 17:
                    case 18:
                        i2 = elementValues + 3;
                        break;
                }
            }
            int i7 = readByte(i2);
            if (i5 == 66) {
                TypePath typePath = i7 != 0 ? new TypePath(this.classFileBuffer, i2) : null;
                int i8 = i2 + (i7 * 2) + 1;
                elementValues = readElementValues(methodVisitor.visitTryCatchAnnotation(i4 & (-256), typePath, readUTF8(i8, cArr), z), i8 + 2, true, cArr);
            } else {
                elementValues = readElementValues(null, i2 + (i7 * 2) + 3, true, cArr);
            }
        }
        return iArr;
    }

    private int getTypeAnnotationBytecodeOffset(int[] iArr, int i) {
        if (iArr == null || i >= iArr.length || readByte(iArr[i]) < 67) {
            return -1;
        }
        return readUnsignedShort(iArr[i] + 1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int readTypeAnnotationTarget(Context context, int i) {
        int i2;
        int i3;
        int i4 = readInt(i);
        int i5 = i4 >>> 24;
        if (i5 != 0 && i5 != 1) {
            switch (i5) {
                case 16:
                case 17:
                case 18:
                case 23:
                    i2 = i4 & (-256);
                    i3 = i + 3;
                    break;
                case 19:
                case 20:
                case 21:
                    i2 = i4 & (-16777216);
                    i3 = i + 1;
                    break;
                case 22:
                    break;
                default:
                    switch (i5) {
                        case 64:
                        case 65:
                            i2 = i4 & (-16777216);
                            int unsignedShort = readUnsignedShort(i + 1);
                            i3 = i + 3;
                            context.currentLocalVariableAnnotationRangeStarts = new Label[unsignedShort];
                            context.currentLocalVariableAnnotationRangeEnds = new Label[unsignedShort];
                            context.currentLocalVariableAnnotationRangeIndices = new int[unsignedShort];
                            for (int i6 = 0; i6 < unsignedShort; i6++) {
                                int unsignedShort2 = readUnsignedShort(i3);
                                int unsignedShort3 = readUnsignedShort(i3 + 2);
                                int unsignedShort4 = readUnsignedShort(i3 + 4);
                                i3 += 6;
                                context.currentLocalVariableAnnotationRangeStarts[i6] = createLabel(unsignedShort2, context.currentMethodLabels);
                                context.currentLocalVariableAnnotationRangeEnds[i6] = createLabel(unsignedShort2 + unsignedShort3, context.currentMethodLabels);
                                context.currentLocalVariableAnnotationRangeIndices[i6] = unsignedShort4;
                            }
                            break;
                        case 66:
                            break;
                        case 67:
                        case 68:
                        case 69:
                        case 70:
                            i2 = i4 & (-16777216);
                            i3 = i + 3;
                            break;
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                            i2 = i4 & (-16776961);
                            i3 = i + 4;
                            break;
                        default:
                            throw new IllegalArgumentException();
                    }
                    break;
            }
        } else {
            i2 = i4 & Opcodes.V_PREVIEW;
            i3 = i + 2;
        }
        context.currentTypeAnnotationTarget = i2;
        int i7 = readByte(i3);
        context.currentTypeAnnotationTargetPath = i7 == 0 ? null : new TypePath(this.classFileBuffer, i3);
        return i3 + 1 + (i7 * 2);
    }

    private void readParameterAnnotations(MethodVisitor methodVisitor, Context context, int i, boolean z) {
        int elementValues = i + 1;
        int i2 = this.classFileBuffer[i] & 255;
        methodVisitor.visitAnnotableParameterCount(i2, z);
        char[] cArr = context.charBuffer;
        for (int i3 = 0; i3 < i2; i3++) {
            int unsignedShort = readUnsignedShort(elementValues);
            elementValues += 2;
            while (true) {
                int i4 = unsignedShort - 1;
                if (unsignedShort > 0) {
                    elementValues = readElementValues(methodVisitor.visitParameterAnnotation(i3, readUTF8(elementValues, cArr), z), elementValues + 2, true, cArr);
                    unsignedShort = i4;
                }
            }
        }
    }

    private int readElementValues(AnnotationVisitor annotationVisitor, int i, boolean z, char[] cArr) {
        int unsignedShort = readUnsignedShort(i);
        int elementValue = i + 2;
        if (!z) {
            while (true) {
                int i2 = unsignedShort - 1;
                if (unsignedShort <= 0) {
                    break;
                }
                elementValue = readElementValue(annotationVisitor, elementValue, null, cArr);
                unsignedShort = i2;
            }
        } else {
            while (true) {
                int i3 = unsignedShort - 1;
                if (unsignedShort <= 0) {
                    break;
                }
                elementValue = readElementValue(annotationVisitor, elementValue + 2, readUTF8(elementValue, cArr), cArr);
                unsignedShort = i3;
            }
        }
        if (annotationVisitor != null) {
            annotationVisitor.visitEnd();
        }
        return elementValue;
    }

    private int readElementValue(AnnotationVisitor annotationVisitor, int i, String str, char[] cArr) {
        Object obj;
        int i2 = 0;
        if (annotationVisitor == null) {
            int i3 = this.classFileBuffer[i] & 255;
            if (i3 == 64) {
                return readElementValues(null, i + 3, true, cArr);
            }
            if (i3 != 91) {
                return i3 != 101 ? i + 3 : i + 5;
            }
            return readElementValues(null, i + 1, false, cArr);
        }
        int i4 = i + 1;
        int i5 = this.classFileBuffer[i] & 255;
        if (i5 != 64) {
            if (i5 != 70) {
                if (i5 == 83) {
                    annotationVisitor.visit(str, Short.valueOf((short) readInt(this.cpInfoOffsets[readUnsignedShort(i4)])));
                    return i + 3;
                }
                if (i5 == 99) {
                    annotationVisitor.visit(str, Type.getType(readUTF8(i4, cArr)));
                    return i + 3;
                }
                if (i5 == 101) {
                    annotationVisitor.visitEnum(str, readUTF8(i4, cArr), readUTF8(i + 3, cArr));
                    return i + 5;
                }
                if (i5 == 115) {
                    annotationVisitor.visit(str, readUTF8(i4, cArr));
                    return i + 3;
                }
                if (i5 != 73 && i5 != 74) {
                    if (i5 == 90) {
                        if (readInt(this.cpInfoOffsets[readUnsignedShort(i4)]) == 0) {
                            obj = Boolean.FALSE;
                        } else {
                            obj = Boolean.TRUE;
                        }
                        annotationVisitor.visit(str, obj);
                        return i + 3;
                    }
                    if (i5 != 91) {
                        switch (i5) {
                            case 66:
                                annotationVisitor.visit(str, Byte.valueOf((byte) readInt(this.cpInfoOffsets[readUnsignedShort(i4)])));
                                return i + 3;
                            case 67:
                                annotationVisitor.visit(str, Character.valueOf((char) readInt(this.cpInfoOffsets[readUnsignedShort(i4)])));
                                return i + 3;
                            case 68:
                                break;
                            default:
                                throw new IllegalArgumentException();
                        }
                    } else {
                        int unsignedShort = readUnsignedShort(i4);
                        int i6 = i + 3;
                        if (unsignedShort == 0) {
                            return readElementValues(annotationVisitor.visitArray(str), i + 1, false, cArr);
                        }
                        int i7 = this.classFileBuffer[i6] & 255;
                        if (i7 == 70) {
                            float[] fArr = new float[unsignedShort];
                            while (i2 < unsignedShort) {
                                fArr[i2] = Float.intBitsToFloat(readInt(this.cpInfoOffsets[readUnsignedShort(i6 + 1)]));
                                i6 += 3;
                                i2++;
                            }
                            annotationVisitor.visit(str, fArr);
                            return i6;
                        }
                        if (i7 == 83) {
                            short[] sArr = new short[unsignedShort];
                            while (i2 < unsignedShort) {
                                sArr[i2] = (short) readInt(this.cpInfoOffsets[readUnsignedShort(i6 + 1)]);
                                i6 += 3;
                                i2++;
                            }
                            annotationVisitor.visit(str, sArr);
                            return i6;
                        }
                        if (i7 == 90) {
                            boolean[] zArr = new boolean[unsignedShort];
                            for (int i8 = 0; i8 < unsignedShort; i8++) {
                                zArr[i8] = readInt(this.cpInfoOffsets[readUnsignedShort(i6 + 1)]) != 0;
                                i6 += 3;
                            }
                            annotationVisitor.visit(str, zArr);
                            return i6;
                        }
                        if (i7 == 73) {
                            int[] iArr = new int[unsignedShort];
                            while (i2 < unsignedShort) {
                                iArr[i2] = readInt(this.cpInfoOffsets[readUnsignedShort(i6 + 1)]);
                                i6 += 3;
                                i2++;
                            }
                            annotationVisitor.visit(str, iArr);
                            return i6;
                        }
                        if (i7 != 74) {
                            switch (i7) {
                                case 66:
                                    byte[] bArr = new byte[unsignedShort];
                                    while (i2 < unsignedShort) {
                                        bArr[i2] = (byte) readInt(this.cpInfoOffsets[readUnsignedShort(i6 + 1)]);
                                        i6 += 3;
                                        i2++;
                                    }
                                    annotationVisitor.visit(str, bArr);
                                    return i6;
                                case 67:
                                    char[] cArr2 = new char[unsignedShort];
                                    while (i2 < unsignedShort) {
                                        cArr2[i2] = (char) readInt(this.cpInfoOffsets[readUnsignedShort(i6 + 1)]);
                                        i6 += 3;
                                        i2++;
                                    }
                                    annotationVisitor.visit(str, cArr2);
                                    return i6;
                                case 68:
                                    double[] dArr = new double[unsignedShort];
                                    while (i2 < unsignedShort) {
                                        dArr[i2] = Double.longBitsToDouble(readLong(this.cpInfoOffsets[readUnsignedShort(i6 + 1)]));
                                        i6 += 3;
                                        i2++;
                                    }
                                    annotationVisitor.visit(str, dArr);
                                    return i6;
                                default:
                                    return readElementValues(annotationVisitor.visitArray(str), i + 1, false, cArr);
                            }
                        }
                        long[] jArr = new long[unsignedShort];
                        while (i2 < unsignedShort) {
                            jArr[i2] = readLong(this.cpInfoOffsets[readUnsignedShort(i6 + 1)]);
                            i6 += 3;
                            i2++;
                        }
                        annotationVisitor.visit(str, jArr);
                        return i6;
                    }
                }
            }
            annotationVisitor.visit(str, readConst(readUnsignedShort(i4), cArr));
            return i + 3;
        }
        return readElementValues(annotationVisitor.visitAnnotation(str, readUTF8(i4, cArr)), i + 3, true, cArr);
    }

    private void computeImplicitFrame(Context context) {
        int i;
        String str = context.currentMethodDescriptor;
        Object[] objArr = context.currentFrameLocalTypes;
        int i2 = 0;
        if ((context.currentMethodAccessFlags & 8) == 0) {
            if ("<init>".equals(context.currentMethodName)) {
                objArr[0] = Opcodes.UNINITIALIZED_THIS;
            } else {
                objArr[0] = readClass(this.header + 2, context.charBuffer);
            }
            i2 = 1;
        }
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char cCharAt = str.charAt(i3);
            if (cCharAt == 'F') {
                i = i2 + 1;
                objArr[i2] = Opcodes.FLOAT;
            } else if (cCharAt != 'L') {
                if (cCharAt != 'S' && cCharAt != 'I') {
                    if (cCharAt == 'J') {
                        i = i2 + 1;
                        objArr[i2] = Opcodes.LONG;
                    } else if (cCharAt != 'Z') {
                        if (cCharAt != '[') {
                            switch (cCharAt) {
                                case 'B':
                                case 'C':
                                    break;
                                case 'D':
                                    i = i2 + 1;
                                    objArr[i2] = Opcodes.DOUBLE;
                                    break;
                                default:
                                    context.currentFrameLocalCount = i2;
                                    return;
                            }
                        } else {
                            while (str.charAt(i4) == '[') {
                                i4++;
                            }
                            if (str.charAt(i4) == 'L') {
                                do {
                                    i4++;
                                } while (str.charAt(i4) != ';');
                            }
                            int i5 = i4 + 1;
                            objArr[i2] = str.substring(i3, i5);
                            i3 = i5;
                            i2++;
                        }
                    }
                }
                i = i2 + 1;
                objArr[i2] = Opcodes.INTEGER;
            } else {
                int i6 = i4;
                while (str.charAt(i6) != ';') {
                    i6++;
                }
                objArr[i2] = str.substring(i4, i6);
                i2++;
                i3 = i6 + 1;
            }
            i2 = i;
            i3 = i4;
        }
    }

    private int readStackMapFrame(int i, boolean z, boolean z2, Context context) {
        int verificationTypeInfo;
        int i2;
        char[] cArr = context.charBuffer;
        Label[] labelArr = context.currentMethodLabels;
        if (z) {
            verificationTypeInfo = i + 1;
            i2 = this.classFileBuffer[i] & 255;
        } else {
            context.currentFrameOffset = -1;
            verificationTypeInfo = i;
            i2 = 255;
        }
        context.currentFrameLocalCountDelta = 0;
        if (i2 < 64) {
            context.currentFrameType = 3;
            context.currentFrameStackCount = 0;
        } else if (i2 < 128) {
            i2 -= 64;
            verificationTypeInfo = readVerificationTypeInfo(verificationTypeInfo, context.currentFrameStackTypes, 0, cArr, labelArr);
            context.currentFrameType = 4;
            context.currentFrameStackCount = 1;
        } else if (i2 >= 247) {
            int unsignedShort = readUnsignedShort(verificationTypeInfo);
            int i3 = verificationTypeInfo;
            verificationTypeInfo = i3 + 2;
            if (i2 == 247) {
                verificationTypeInfo = readVerificationTypeInfo(verificationTypeInfo, context.currentFrameStackTypes, 0, cArr, labelArr);
                context.currentFrameType = 4;
                context.currentFrameStackCount = 1;
            } else if (i2 >= 248 && i2 < 251) {
                context.currentFrameType = 2;
                int i4 = 251 - i2;
                context.currentFrameLocalCountDelta = i4;
                context.currentFrameLocalCount -= i4;
                context.currentFrameStackCount = 0;
            } else if (i2 == 251) {
                context.currentFrameType = 3;
                context.currentFrameStackCount = 0;
            } else if (i2 < 255) {
                int i5 = i2 - 251;
                int i6 = z2 ? context.currentFrameLocalCount : 0;
                int i7 = i5;
                while (i7 > 0) {
                    verificationTypeInfo = readVerificationTypeInfo(verificationTypeInfo, context.currentFrameLocalTypes, i6, cArr, labelArr);
                    i7--;
                    i6++;
                }
                context.currentFrameType = 1;
                context.currentFrameLocalCountDelta = i5;
                context.currentFrameLocalCount += i5;
                context.currentFrameStackCount = 0;
            } else {
                int unsignedShort2 = readUnsignedShort(verificationTypeInfo);
                int verificationTypeInfo2 = i3 + 4;
                context.currentFrameType = 0;
                context.currentFrameLocalCountDelta = unsignedShort2;
                context.currentFrameLocalCount = unsignedShort2;
                for (int i8 = 0; i8 < unsignedShort2; i8++) {
                    verificationTypeInfo2 = readVerificationTypeInfo(verificationTypeInfo2, context.currentFrameLocalTypes, i8, cArr, labelArr);
                }
                int unsignedShort3 = readUnsignedShort(verificationTypeInfo2);
                verificationTypeInfo = verificationTypeInfo2 + 2;
                context.currentFrameStackCount = unsignedShort3;
                for (int i9 = 0; i9 < unsignedShort3; i9++) {
                    verificationTypeInfo = readVerificationTypeInfo(verificationTypeInfo, context.currentFrameStackTypes, i9, cArr, labelArr);
                }
            }
            i2 = unsignedShort;
        } else {
            throw new IllegalArgumentException();
        }
        int i10 = context.currentFrameOffset + i2 + 1;
        context.currentFrameOffset = i10;
        createLabel(i10, labelArr);
        return verificationTypeInfo;
    }

    private int readVerificationTypeInfo(int i, Object[] objArr, int i2, char[] cArr, Label[] labelArr) {
        int i3 = i + 1;
        switch (this.classFileBuffer[i] & 255) {
            case 0:
                objArr[i2] = Opcodes.TOP;
                return i3;
            case 1:
                objArr[i2] = Opcodes.INTEGER;
                return i3;
            case 2:
                objArr[i2] = Opcodes.FLOAT;
                return i3;
            case 3:
                objArr[i2] = Opcodes.DOUBLE;
                return i3;
            case 4:
                objArr[i2] = Opcodes.LONG;
                return i3;
            case 5:
                objArr[i2] = Opcodes.NULL;
                return i3;
            case 6:
                objArr[i2] = Opcodes.UNINITIALIZED_THIS;
                return i3;
            case 7:
                objArr[i2] = readClass(i3, cArr);
                break;
            case 8:
                objArr[i2] = createLabel(readUnsignedShort(i3), labelArr);
                break;
            default:
                throw new IllegalArgumentException();
        }
        return i + 3;
    }

    final int getFirstAttributeOffset() {
        int i = this.header;
        int unsignedShort = i + 8 + (readUnsignedShort(i + 6) * 2);
        int unsignedShort2 = readUnsignedShort(unsignedShort);
        int i2 = unsignedShort + 2;
        while (true) {
            int i3 = unsignedShort2 - 1;
            if (unsignedShort2 <= 0) {
                break;
            }
            int unsignedShort3 = readUnsignedShort(i2 + 6);
            i2 += 8;
            while (true) {
                int i4 = unsignedShort3 - 1;
                if (unsignedShort3 > 0) {
                    i2 += readInt(i2 + 2) + 6;
                    unsignedShort3 = i4;
                }
            }
            unsignedShort2 = i3;
        }
        int unsignedShort4 = readUnsignedShort(i2);
        int i5 = i2 + 2;
        while (true) {
            int i6 = unsignedShort4 - 1;
            if (unsignedShort4 <= 0) {
                return i5 + 2;
            }
            int unsignedShort5 = readUnsignedShort(i5 + 6);
            i5 += 8;
            while (true) {
                int i7 = unsignedShort5 - 1;
                if (unsignedShort5 > 0) {
                    i5 += readInt(i5 + 2) + 6;
                    unsignedShort5 = i7;
                }
            }
            unsignedShort4 = i6;
        }
    }

    private int[] readBootstrapMethodsAttribute(int i) {
        char[] cArr = new char[i];
        int firstAttributeOffset = getFirstAttributeOffset();
        for (int unsignedShort = readUnsignedShort(firstAttributeOffset - 2); unsignedShort > 0; unsignedShort--) {
            String utf8 = readUTF8(firstAttributeOffset, cArr);
            int i2 = readInt(firstAttributeOffset + 2);
            int i3 = firstAttributeOffset + 6;
            if (AttBootstrapMethods.ATTRIBUTE_NAME.equals(utf8)) {
                int unsignedShort2 = readUnsignedShort(i3);
                int[] iArr = new int[unsignedShort2];
                int unsignedShort3 = firstAttributeOffset + 8;
                for (int i4 = 0; i4 < unsignedShort2; i4++) {
                    iArr[i4] = unsignedShort3;
                    unsignedShort3 += (readUnsignedShort(unsignedShort3 + 2) * 2) + 4;
                }
                return iArr;
            }
            firstAttributeOffset = i3 + i2;
        }
        throw new IllegalArgumentException();
    }

    private Attribute readAttribute(Attribute[] attributeArr, String str, int i, int i2, char[] cArr, int i3, Label[] labelArr) {
        for (Attribute attribute : attributeArr) {
            if (attribute.type.equals(str)) {
                return attribute.read(this, i, i2, cArr, i3, labelArr);
            }
        }
        return new Attribute(str).read(this, i, i2, null, -1, null);
    }

    public int getItemCount() {
        return this.cpInfoOffsets.length;
    }

    public int getItem(int i) {
        return this.cpInfoOffsets[i];
    }

    public int getMaxStringLength() {
        return this.maxStringLength;
    }

    public int readByte(int i) {
        return this.classFileBuffer[i] & 255;
    }

    public int readUnsignedShort(int i) {
        byte[] bArr = this.classFileBuffer;
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    public short readShort(int i) {
        byte[] bArr = this.classFileBuffer;
        return (short) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    public int readInt(int i) {
        byte[] bArr = this.classFileBuffer;
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public long readLong(int i) {
        return (((long) readInt(i)) << 32) | (((long) readInt(i + 4)) & 4294967295L);
    }

    public String readUTF8(int i, char[] cArr) {
        int unsignedShort = readUnsignedShort(i);
        if (i == 0 || unsignedShort == 0) {
            return null;
        }
        return readUtf(unsignedShort, cArr);
    }

    final String readUtf(int i, char[] cArr) {
        String[] strArr = this.constantUtf8Values;
        String str = strArr[i];
        if (str != null) {
            return str;
        }
        int i2 = this.cpInfoOffsets[i];
        String utf = readUtf(i2 + 2, readUnsignedShort(i2), cArr);
        strArr[i] = utf;
        return utf;
    }

    private String readUtf(int i, int i2, char[] cArr) {
        int i3;
        int i4 = i2 + i;
        byte[] bArr = this.classFileBuffer;
        int i5 = 0;
        while (i < i4) {
            int i6 = i + 1;
            byte b = bArr[i];
            if ((b & 128) == 0) {
                cArr[i5] = (char) (b & 127);
                i5++;
                i = i6;
            } else {
                if ((b & 224) == 192) {
                    i3 = i5 + 1;
                    i += 2;
                    cArr[i5] = (char) (((b & 31) << 6) + (bArr[i6] & 63));
                } else {
                    i3 = i5 + 1;
                    int i7 = i + 2;
                    i += 3;
                    cArr[i5] = (char) (((b & 15) << 12) + ((bArr[i6] & 63) << 6) + (bArr[i7] & 63));
                }
                i5 = i3;
            }
        }
        return new String(cArr, 0, i5);
    }

    private String readStringish(int i, char[] cArr) {
        return readUTF8(this.cpInfoOffsets[readUnsignedShort(i)], cArr);
    }

    public String readClass(int i, char[] cArr) {
        return readStringish(i, cArr);
    }

    public String readModule(int i, char[] cArr) {
        return readStringish(i, cArr);
    }

    public String readPackage(int i, char[] cArr) {
        return readStringish(i, cArr);
    }

    private ConstantDynamic readConstantDynamic(int i, char[] cArr) {
        ConstantDynamic constantDynamic = this.constantDynamicValues[i];
        if (constantDynamic != null) {
            return constantDynamic;
        }
        int[] iArr = this.cpInfoOffsets;
        int i2 = iArr[i];
        int i3 = iArr[readUnsignedShort(i2 + 2)];
        String utf8 = readUTF8(i3, cArr);
        String utf82 = readUTF8(i3 + 2, cArr);
        int i4 = this.bootstrapMethodOffsets[readUnsignedShort(i2)];
        Handle handle = (Handle) readConst(readUnsignedShort(i4), cArr);
        int unsignedShort = readUnsignedShort(i4 + 2);
        Object[] objArr = new Object[unsignedShort];
        int i5 = i4 + 4;
        for (int i6 = 0; i6 < unsignedShort; i6++) {
            objArr[i6] = readConst(readUnsignedShort(i5), cArr);
            i5 += 2;
        }
        ConstantDynamic[] constantDynamicArr = this.constantDynamicValues;
        ConstantDynamic constantDynamic2 = new ConstantDynamic(utf8, utf82, handle, objArr);
        constantDynamicArr[i] = constantDynamic2;
        return constantDynamic2;
    }

    public Object readConst(int i, char[] cArr) {
        int i2 = this.cpInfoOffsets[i];
        byte b = this.classFileBuffer[i2 - 1];
        switch (b) {
            case 3:
                return Integer.valueOf(readInt(i2));
            case 4:
                return Float.valueOf(Float.intBitsToFloat(readInt(i2)));
            case 5:
                return Long.valueOf(readLong(i2));
            case 6:
                return Double.valueOf(Double.longBitsToDouble(readLong(i2)));
            case 7:
                return Type.getObjectType(readUTF8(i2, cArr));
            case 8:
                return readUTF8(i2, cArr);
            default:
                switch (b) {
                    case 15:
                        int i3 = readByte(i2);
                        int i4 = this.cpInfoOffsets[readUnsignedShort(i2 + 1)];
                        int i5 = this.cpInfoOffsets[readUnsignedShort(i4 + 2)];
                        return new Handle(i3, readClass(i4, cArr), readUTF8(i5, cArr), readUTF8(i5 + 2, cArr), this.classFileBuffer[i4 - 1] == 11);
                    case 16:
                        return Type.getMethodType(readUTF8(i2, cArr));
                    case 17:
                        return readConstantDynamic(i, cArr);
                    default:
                        throw new IllegalArgumentException();
                }
        }
    }
}
