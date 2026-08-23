package com.android.p003dx.merge;

import com.android.dex.Annotation;
import com.android.dex.CallSiteId;
import com.android.dex.ClassDef;
import com.android.dex.Dex;
import com.android.dex.DexException;
import com.android.dex.EncodedValue;
import com.android.dex.EncodedValueCodec;
import com.android.dex.EncodedValueReader;
import com.android.dex.FieldId;
import com.android.dex.Leb128;
import com.android.dex.MethodHandle;
import com.android.dex.MethodId;
import com.android.dex.ProtoId;
import com.android.dex.TableOfContents;
import com.android.dex.TypeList;
import com.android.dex.util.ByteOutput;
import com.android.p003dx.util.ByteArrayAnnotatedOutput;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class IndexMap {
    private final HashMap<Integer, Integer> annotationDirectoryOffsets;
    private final HashMap<Integer, Integer> annotationOffsets;
    private final HashMap<Integer, Integer> annotationSetOffsets;
    private final HashMap<Integer, Integer> annotationSetRefListOffsets;
    public final int[] callSiteIds;
    private final HashMap<Integer, Integer> encodedArrayValueOffset;
    public final short[] fieldIds;
    public final HashMap<Integer, Integer> methodHandleIds = new HashMap<>();
    public final short[] methodIds;
    public final short[] protoIds;
    public final int[] stringIds;
    private final Dex target;
    public final short[] typeIds;
    private final HashMap<Integer, Integer> typeListOffsets;

    public IndexMap(Dex dex, TableOfContents tableOfContents) {
        this.target = dex;
        this.stringIds = new int[tableOfContents.stringIds.size];
        this.typeIds = new short[tableOfContents.typeIds.size];
        this.protoIds = new short[tableOfContents.protoIds.size];
        this.fieldIds = new short[tableOfContents.fieldIds.size];
        this.methodIds = new short[tableOfContents.methodIds.size];
        this.callSiteIds = new int[tableOfContents.callSiteIds.size];
        HashMap<Integer, Integer> map = new HashMap<>();
        this.typeListOffsets = map;
        this.annotationOffsets = new HashMap<>();
        HashMap<Integer, Integer> map2 = new HashMap<>();
        this.annotationSetOffsets = map2;
        this.annotationSetRefListOffsets = new HashMap<>();
        HashMap<Integer, Integer> map3 = new HashMap<>();
        this.annotationDirectoryOffsets = map3;
        HashMap<Integer, Integer> map4 = new HashMap<>();
        this.encodedArrayValueOffset = map4;
        map.put(0, 0);
        map2.put(0, 0);
        map3.put(0, 0);
        map4.put(0, 0);
    }

    public void putTypeListOffset(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        this.typeListOffsets.put(Integer.valueOf(i), Integer.valueOf(i2));
    }

    public void putAnnotationOffset(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        this.annotationOffsets.put(Integer.valueOf(i), Integer.valueOf(i2));
    }

    public void putAnnotationSetOffset(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        this.annotationSetOffsets.put(Integer.valueOf(i), Integer.valueOf(i2));
    }

    public void putAnnotationSetRefListOffset(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        this.annotationSetRefListOffsets.put(Integer.valueOf(i), Integer.valueOf(i2));
    }

    public void putAnnotationDirectoryOffset(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        this.annotationDirectoryOffsets.put(Integer.valueOf(i), Integer.valueOf(i2));
    }

    public void putEncodedArrayValueOffset(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        this.encodedArrayValueOffset.put(Integer.valueOf(i), Integer.valueOf(i2));
    }

    public int adjustString(int i) {
        if (i == -1) {
            return -1;
        }
        return this.stringIds[i];
    }

    public int adjustType(int i) {
        if (i == -1) {
            return -1;
        }
        return this.typeIds[i] & 65535;
    }

    public TypeList adjustTypeList(TypeList typeList) {
        if (typeList == TypeList.EMPTY) {
            return typeList;
        }
        short[] sArr = (short[]) typeList.getTypes().clone();
        for (int i = 0; i < sArr.length; i++) {
            sArr[i] = (short) adjustType(sArr[i]);
        }
        return new TypeList(this.target, sArr);
    }

    public int adjustProto(int i) {
        return this.protoIds[i] & 65535;
    }

    public int adjustField(int i) {
        return this.fieldIds[i] & 65535;
    }

    public int adjustMethod(int i) {
        return this.methodIds[i] & 65535;
    }

    public int adjustTypeListOffset(int i) {
        return this.typeListOffsets.get(Integer.valueOf(i)).intValue();
    }

    public int adjustAnnotation(int i) {
        return this.annotationOffsets.get(Integer.valueOf(i)).intValue();
    }

    public int adjustAnnotationSet(int i) {
        return this.annotationSetOffsets.get(Integer.valueOf(i)).intValue();
    }

    public int adjustAnnotationSetRefList(int i) {
        return this.annotationSetRefListOffsets.get(Integer.valueOf(i)).intValue();
    }

    public int adjustAnnotationDirectory(int i) {
        return this.annotationDirectoryOffsets.get(Integer.valueOf(i)).intValue();
    }

    public int adjustEncodedArray(int i) {
        return this.encodedArrayValueOffset.get(Integer.valueOf(i)).intValue();
    }

    public int adjustCallSite(int i) {
        return this.callSiteIds[i];
    }

    public int adjustMethodHandle(int i) {
        return this.methodHandleIds.get(Integer.valueOf(i)).intValue();
    }

    public MethodId adjust(MethodId methodId) {
        return new MethodId(this.target, adjustType(methodId.getDeclaringClassIndex()), adjustProto(methodId.getProtoIndex()), adjustString(methodId.getNameIndex()));
    }

    public CallSiteId adjust(CallSiteId callSiteId) {
        return new CallSiteId(this.target, adjustEncodedArray(callSiteId.getCallSiteOffset()));
    }

    public MethodHandle adjust(MethodHandle methodHandle) {
        int iAdjustMethod;
        Dex dex = this.target;
        MethodHandle.MethodHandleType methodHandleType = methodHandle.getMethodHandleType();
        int unused1 = methodHandle.getUnused1();
        if (methodHandle.getMethodHandleType().isField()) {
            iAdjustMethod = adjustField(methodHandle.getFieldOrMethodId());
        } else {
            iAdjustMethod = adjustMethod(methodHandle.getFieldOrMethodId());
        }
        return new MethodHandle(dex, methodHandleType, unused1, iAdjustMethod, methodHandle.getUnused2());
    }

    public FieldId adjust(FieldId fieldId) {
        return new FieldId(this.target, adjustType(fieldId.getDeclaringClassIndex()), adjustType(fieldId.getTypeIndex()), adjustString(fieldId.getNameIndex()));
    }

    public ProtoId adjust(ProtoId protoId) {
        return new ProtoId(this.target, adjustString(protoId.getShortyIndex()), adjustType(protoId.getReturnTypeIndex()), adjustTypeListOffset(protoId.getParametersOffset()));
    }

    public ClassDef adjust(ClassDef classDef) {
        return new ClassDef(this.target, classDef.getOffset(), adjustType(classDef.getTypeIndex()), classDef.getAccessFlags(), adjustType(classDef.getSupertypeIndex()), adjustTypeListOffset(classDef.getInterfacesOffset()), classDef.getSourceFileIndex(), classDef.getAnnotationsOffset(), classDef.getClassDataOffset(), classDef.getStaticValuesOffset());
    }

    public SortableType adjust(SortableType sortableType) {
        return new SortableType(sortableType.getDex(), sortableType.getIndexMap(), adjust(sortableType.getClassDef()));
    }

    public EncodedValue adjustEncodedValue(EncodedValue encodedValue) {
        ByteArrayAnnotatedOutput byteArrayAnnotatedOutput = new ByteArrayAnnotatedOutput(32);
        new EncodedValueTransformer(byteArrayAnnotatedOutput).transform(new EncodedValueReader(encodedValue));
        return new EncodedValue(byteArrayAnnotatedOutput.toByteArray());
    }

    public EncodedValue adjustEncodedArray(EncodedValue encodedValue) {
        ByteArrayAnnotatedOutput byteArrayAnnotatedOutput = new ByteArrayAnnotatedOutput(32);
        new EncodedValueTransformer(byteArrayAnnotatedOutput).transformArray(new EncodedValueReader(encodedValue, 28));
        return new EncodedValue(byteArrayAnnotatedOutput.toByteArray());
    }

    public Annotation adjust(Annotation annotation) {
        ByteArrayAnnotatedOutput byteArrayAnnotatedOutput = new ByteArrayAnnotatedOutput(32);
        new EncodedValueTransformer(byteArrayAnnotatedOutput).transformAnnotation(annotation.getReader());
        return new Annotation(this.target, annotation.getVisibility(), new EncodedValue(byteArrayAnnotatedOutput.toByteArray()));
    }

    private final class EncodedValueTransformer {
        private final ByteOutput out;

        public EncodedValueTransformer(ByteOutput byteOutput) {
            this.out = byteOutput;
        }

        public void transform(EncodedValueReader encodedValueReader) {
            int iPeek = encodedValueReader.peek();
            if (iPeek == 0) {
                EncodedValueCodec.writeSignedIntegralValue(this.out, 0, encodedValueReader.readByte());
                return;
            }
            if (iPeek == 6) {
                EncodedValueCodec.writeSignedIntegralValue(this.out, 6, encodedValueReader.readLong());
                return;
            }
            if (iPeek == 2) {
                EncodedValueCodec.writeSignedIntegralValue(this.out, 2, encodedValueReader.readShort());
                return;
            }
            if (iPeek == 3) {
                EncodedValueCodec.writeUnsignedIntegralValue(this.out, 3, encodedValueReader.readChar());
                return;
            }
            if (iPeek == 4) {
                EncodedValueCodec.writeSignedIntegralValue(this.out, 4, encodedValueReader.readInt());
                return;
            }
            if (iPeek == 16) {
                EncodedValueCodec.writeRightZeroExtendedValue(this.out, 16, ((long) Float.floatToIntBits(encodedValueReader.readFloat())) << 32);
                return;
            }
            if (iPeek == 17) {
                EncodedValueCodec.writeRightZeroExtendedValue(this.out, 17, Double.doubleToLongBits(encodedValueReader.readDouble()));
                return;
            }
            switch (iPeek) {
                case 21:
                    EncodedValueCodec.writeUnsignedIntegralValue(this.out, 21, IndexMap.this.adjustProto(encodedValueReader.readMethodType()));
                    return;
                case 22:
                    EncodedValueCodec.writeUnsignedIntegralValue(this.out, 22, IndexMap.this.adjustMethodHandle(encodedValueReader.readMethodHandle()));
                    return;
                case 23:
                    EncodedValueCodec.writeUnsignedIntegralValue(this.out, 23, IndexMap.this.adjustString(encodedValueReader.readString()));
                    return;
                case 24:
                    EncodedValueCodec.writeUnsignedIntegralValue(this.out, 24, IndexMap.this.adjustType(encodedValueReader.readType()));
                    return;
                case 25:
                    EncodedValueCodec.writeUnsignedIntegralValue(this.out, 25, IndexMap.this.adjustField(encodedValueReader.readField()));
                    return;
                case 26:
                    EncodedValueCodec.writeUnsignedIntegralValue(this.out, 26, IndexMap.this.adjustMethod(encodedValueReader.readMethod()));
                    return;
                case 27:
                    EncodedValueCodec.writeUnsignedIntegralValue(this.out, 27, IndexMap.this.adjustField(encodedValueReader.readEnum()));
                    return;
                case 28:
                    writeTypeAndArg(28, 0);
                    transformArray(encodedValueReader);
                    return;
                case 29:
                    writeTypeAndArg(29, 0);
                    transformAnnotation(encodedValueReader);
                    return;
                case 30:
                    encodedValueReader.readNull();
                    writeTypeAndArg(30, 0);
                    return;
                case 31:
                    writeTypeAndArg(31, encodedValueReader.readBoolean() ? 1 : 0);
                    return;
                default:
                    throw new DexException("Unexpected type: " + Integer.toHexString(encodedValueReader.peek()));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void transformAnnotation(EncodedValueReader encodedValueReader) {
            int annotation = encodedValueReader.readAnnotation();
            Leb128.writeUnsignedLeb128(this.out, IndexMap.this.adjustType(encodedValueReader.getAnnotationType()));
            Leb128.writeUnsignedLeb128(this.out, annotation);
            for (int i = 0; i < annotation; i++) {
                Leb128.writeUnsignedLeb128(this.out, IndexMap.this.adjustString(encodedValueReader.readAnnotationName()));
                transform(encodedValueReader);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void transformArray(EncodedValueReader encodedValueReader) {
            int array = encodedValueReader.readArray();
            Leb128.writeUnsignedLeb128(this.out, array);
            for (int i = 0; i < array; i++) {
                transform(encodedValueReader);
            }
        }

        private void writeTypeAndArg(int i, int i2) {
            this.out.writeByte(i | (i2 << 5));
        }
    }
}
