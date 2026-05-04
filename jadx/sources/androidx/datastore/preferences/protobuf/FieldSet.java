package androidx.datastore.preferences.protobuf;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.datastore.preferences.protobuf.WireFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class FieldSet {
    private static final FieldSet DEFAULT_INSTANCE = new FieldSet(true);
    private final SmallSortedMap fields;
    private boolean hasLazyField;
    private boolean isImmutable;

    public interface FieldDescriptorLite extends Comparable {
        WireFormat.FieldType getLiteType();

        int getNumber();

        boolean isPacked();

        boolean isRepeated();
    }

    private FieldSet() {
        this.fields = SmallSortedMap.newFieldMap();
    }

    private FieldSet(boolean z) {
        this(SmallSortedMap.newFieldMap());
        makeImmutable();
    }

    private FieldSet(SmallSortedMap smallSortedMap) {
        this.fields = smallSortedMap;
        makeImmutable();
    }

    public static FieldSet newFieldSet() {
        return new FieldSet();
    }

    boolean isEmpty() {
        return this.fields.isEmpty();
    }

    public void makeImmutable() {
        if (this.isImmutable) {
            return;
        }
        int numArrayEntries = this.fields.getNumArrayEntries();
        for (int i = 0; i < numArrayEntries; i++) {
            Map.Entry arrayEntryAt = this.fields.getArrayEntryAt(i);
            if (arrayEntryAt.getValue() instanceof GeneratedMessageLite) {
                ((GeneratedMessageLite) arrayEntryAt.getValue()).makeImmutable();
            }
        }
        this.fields.makeImmutable();
        this.isImmutable = true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FieldSet) {
            return this.fields.equals(((FieldSet) obj).fields);
        }
        return false;
    }

    public int hashCode() {
        return this.fields.hashCode();
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public FieldSet m2105clone() {
        FieldSet fieldSetNewFieldSet = newFieldSet();
        int numArrayEntries = this.fields.getNumArrayEntries();
        for (int i = 0; i < numArrayEntries; i++) {
            Map.Entry arrayEntryAt = this.fields.getArrayEntryAt(i);
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(arrayEntryAt.getKey());
            fieldSetNewFieldSet.setField(null, arrayEntryAt.getValue());
        }
        for (Map.Entry entry : this.fields.getOverflowEntries()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(entry.getKey());
            fieldSetNewFieldSet.setField(null, entry.getValue());
        }
        fieldSetNewFieldSet.hasLazyField = this.hasLazyField;
        return fieldSetNewFieldSet;
    }

    public Iterator iterator() {
        if (isEmpty()) {
            return Collections.emptyIterator();
        }
        if (this.hasLazyField) {
            return new LazyField$LazyIterator(this.fields.entrySet().iterator());
        }
        return this.fields.entrySet().iterator();
    }

    Iterator descendingIterator() {
        if (isEmpty()) {
            return Collections.emptyIterator();
        }
        if (this.hasLazyField) {
            return new LazyField$LazyIterator(this.fields.descendingEntrySet().iterator());
        }
        return this.fields.descendingEntrySet().iterator();
    }

    public void setField(FieldDescriptorLite fieldDescriptorLite, Object obj) {
        if (fieldDescriptorLite.isRepeated()) {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                verifyType(fieldDescriptorLite, obj2);
            }
            obj = arrayList;
        } else {
            verifyType(fieldDescriptorLite, obj);
        }
        this.fields.put((Comparable) fieldDescriptorLite, obj);
    }

    private void verifyType(FieldDescriptorLite fieldDescriptorLite, Object obj) {
        if (!isValidType(fieldDescriptorLite.getLiteType(), obj)) {
            throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(fieldDescriptorLite.getNumber()), fieldDescriptorLite.getLiteType().getJavaType(), obj.getClass().getName()));
        }
    }

    private static boolean isValidType(WireFormat.FieldType fieldType, Object obj) {
        Internal.checkNotNull(obj);
        switch (C05491.$SwitchMap$com$google$protobuf$WireFormat$JavaType[fieldType.getJavaType().ordinal()]) {
            case 7:
                if ((obj instanceof ByteString) || (obj instanceof byte[])) {
                }
                break;
            case 8:
                if (!(obj instanceof Integer)) {
                }
                break;
            case 9:
                if (!(obj instanceof MessageLite)) {
                }
                break;
        }
        return false;
    }

    public boolean isInitialized() {
        int numArrayEntries = this.fields.getNumArrayEntries();
        for (int i = 0; i < numArrayEntries; i++) {
            if (!isInitialized(this.fields.getArrayEntryAt(i))) {
                return false;
            }
        }
        Iterator it = this.fields.getOverflowEntries().iterator();
        while (it.hasNext()) {
            if (!isInitialized((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    private static boolean isInitialized(Map.Entry entry) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(entry.getKey());
        throw null;
    }

    static int getWireFormatForFieldType(WireFormat.FieldType fieldType, boolean z) {
        if (z) {
            return 2;
        }
        return fieldType.getWireType();
    }

    public void mergeFrom(FieldSet fieldSet) {
        int numArrayEntries = fieldSet.fields.getNumArrayEntries();
        for (int i = 0; i < numArrayEntries; i++) {
            mergeFromField(fieldSet.fields.getArrayEntryAt(i));
        }
        Iterator it = fieldSet.fields.getOverflowEntries().iterator();
        while (it.hasNext()) {
            mergeFromField((Map.Entry) it.next());
        }
    }

    private void mergeFromField(Map.Entry entry) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(entry.getKey());
        entry.getValue();
        throw null;
    }

    static void writeElement(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, int i, Object obj) {
        if (fieldType == WireFormat.FieldType.GROUP) {
            codedOutputStream.writeGroup(i, (MessageLite) obj);
        } else {
            codedOutputStream.writeTag(i, getWireFormatForFieldType(fieldType, false));
            writeElementNoTag(codedOutputStream, fieldType, obj);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.FieldSet$1 */
    static /* synthetic */ class C05491 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$JavaType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.GROUP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[WireFormat.JavaType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$JavaType = iArr2;
            try {
                iArr2[WireFormat.JavaType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    static void writeElementNoTag(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, Object obj) {
        switch (C05491.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
            case 1:
                codedOutputStream.writeDoubleNoTag(((Double) obj).doubleValue());
                break;
            case 2:
                codedOutputStream.writeFloatNoTag(((Float) obj).floatValue());
                break;
            case 3:
                codedOutputStream.writeInt64NoTag(((Long) obj).longValue());
                break;
            case 4:
                codedOutputStream.writeUInt64NoTag(((Long) obj).longValue());
                break;
            case 5:
                codedOutputStream.writeInt32NoTag(((Integer) obj).intValue());
                break;
            case 6:
                codedOutputStream.writeFixed64NoTag(((Long) obj).longValue());
                break;
            case 7:
                codedOutputStream.writeFixed32NoTag(((Integer) obj).intValue());
                break;
            case 8:
                codedOutputStream.writeBoolNoTag(((Boolean) obj).booleanValue());
                break;
            case 9:
                codedOutputStream.writeGroupNoTag((MessageLite) obj);
                break;
            case 10:
                codedOutputStream.writeMessageNoTag((MessageLite) obj);
                break;
            case 11:
                if (obj instanceof ByteString) {
                    codedOutputStream.writeBytesNoTag((ByteString) obj);
                } else {
                    codedOutputStream.writeStringNoTag((String) obj);
                }
                break;
            case 12:
                if (obj instanceof ByteString) {
                    codedOutputStream.writeBytesNoTag((ByteString) obj);
                } else {
                    codedOutputStream.writeByteArrayNoTag((byte[]) obj);
                }
                break;
            case 13:
                codedOutputStream.writeUInt32NoTag(((Integer) obj).intValue());
                break;
            case 14:
                codedOutputStream.writeSFixed32NoTag(((Integer) obj).intValue());
                break;
            case 15:
                codedOutputStream.writeSFixed64NoTag(((Long) obj).longValue());
                break;
            case 16:
                codedOutputStream.writeSInt32NoTag(((Integer) obj).intValue());
                break;
            case 17:
                codedOutputStream.writeSInt64NoTag(((Long) obj).longValue());
                break;
            case 18:
                codedOutputStream.writeEnumNoTag(((Integer) obj).intValue());
                break;
        }
    }

    public int getSerializedSize() {
        int numArrayEntries = this.fields.getNumArrayEntries();
        int iComputeFieldSize = 0;
        for (int i = 0; i < numArrayEntries; i++) {
            Map.Entry arrayEntryAt = this.fields.getArrayEntryAt(i);
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(arrayEntryAt.getKey());
            iComputeFieldSize += computeFieldSize(null, arrayEntryAt.getValue());
        }
        for (Map.Entry entry : this.fields.getOverflowEntries()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(entry.getKey());
            iComputeFieldSize += computeFieldSize(null, entry.getValue());
        }
        return iComputeFieldSize;
    }

    public int getMessageSetSerializedSize() {
        int numArrayEntries = this.fields.getNumArrayEntries();
        int messageSetSerializedSize = 0;
        for (int i = 0; i < numArrayEntries; i++) {
            messageSetSerializedSize += getMessageSetSerializedSize(this.fields.getArrayEntryAt(i));
        }
        Iterator it = this.fields.getOverflowEntries().iterator();
        while (it.hasNext()) {
            messageSetSerializedSize += getMessageSetSerializedSize((Map.Entry) it.next());
        }
        return messageSetSerializedSize;
    }

    private int getMessageSetSerializedSize(Map.Entry entry) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(entry.getKey());
        entry.getValue();
        throw null;
    }

    static int computeElementSize(WireFormat.FieldType fieldType, int i, Object obj) {
        int iComputeTagSize = CodedOutputStream.computeTagSize(i);
        if (fieldType == WireFormat.FieldType.GROUP) {
            iComputeTagSize *= 2;
        }
        return iComputeTagSize + computeElementSizeNoTag(fieldType, obj);
    }

    static int computeElementSizeNoTag(WireFormat.FieldType fieldType, Object obj) {
        switch (C05491.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
            case 1:
                return CodedOutputStream.computeDoubleSizeNoTag(((Double) obj).doubleValue());
            case 2:
                return CodedOutputStream.computeFloatSizeNoTag(((Float) obj).floatValue());
            case 3:
                return CodedOutputStream.computeInt64SizeNoTag(((Long) obj).longValue());
            case 4:
                return CodedOutputStream.computeUInt64SizeNoTag(((Long) obj).longValue());
            case 5:
                return CodedOutputStream.computeInt32SizeNoTag(((Integer) obj).intValue());
            case 6:
                return CodedOutputStream.computeFixed64SizeNoTag(((Long) obj).longValue());
            case 7:
                return CodedOutputStream.computeFixed32SizeNoTag(((Integer) obj).intValue());
            case 8:
                return CodedOutputStream.computeBoolSizeNoTag(((Boolean) obj).booleanValue());
            case 9:
                return CodedOutputStream.computeGroupSizeNoTag((MessageLite) obj);
            case 10:
                return CodedOutputStream.computeMessageSizeNoTag((MessageLite) obj);
            case 11:
                if (obj instanceof ByteString) {
                    return CodedOutputStream.computeBytesSizeNoTag((ByteString) obj);
                }
                return CodedOutputStream.computeStringSizeNoTag((String) obj);
            case 12:
                if (obj instanceof ByteString) {
                    return CodedOutputStream.computeBytesSizeNoTag((ByteString) obj);
                }
                return CodedOutputStream.computeByteArraySizeNoTag((byte[]) obj);
            case 13:
                return CodedOutputStream.computeUInt32SizeNoTag(((Integer) obj).intValue());
            case 14:
                return CodedOutputStream.computeSFixed32SizeNoTag(((Integer) obj).intValue());
            case 15:
                return CodedOutputStream.computeSFixed64SizeNoTag(((Long) obj).longValue());
            case 16:
                return CodedOutputStream.computeSInt32SizeNoTag(((Integer) obj).intValue());
            case 17:
                return CodedOutputStream.computeSInt64SizeNoTag(((Long) obj).longValue());
            case 18:
                return CodedOutputStream.computeEnumSizeNoTag(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int computeFieldSize(FieldDescriptorLite fieldDescriptorLite, Object obj) {
        WireFormat.FieldType liteType = fieldDescriptorLite.getLiteType();
        int number = fieldDescriptorLite.getNumber();
        if (fieldDescriptorLite.isRepeated()) {
            List list = (List) obj;
            int size = list.size();
            int i = 0;
            if (!fieldDescriptorLite.isPacked()) {
                int iComputeElementSize = 0;
                while (i < size) {
                    iComputeElementSize += computeElementSize(liteType, number, list.get(i));
                    i++;
                }
                return iComputeElementSize;
            }
            if (list.isEmpty()) {
                return 0;
            }
            int iComputeElementSizeNoTag = 0;
            while (i < size) {
                iComputeElementSizeNoTag += computeElementSizeNoTag(liteType, list.get(i));
                i++;
            }
            return CodedOutputStream.computeTagSize(number) + iComputeElementSizeNoTag + CodedOutputStream.computeUInt32SizeNoTag(iComputeElementSizeNoTag);
        }
        return computeElementSize(liteType, number, obj);
    }
}
