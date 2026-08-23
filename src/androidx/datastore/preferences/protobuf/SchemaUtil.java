package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Internal;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
abstract class SchemaUtil {
    private static final Class GENERATED_MESSAGE_CLASS = getGeneratedMessageClass();
    private static final UnknownFieldSchema UNKNOWN_FIELD_SET_FULL_SCHEMA = getUnknownFieldSetSchema();
    private static final UnknownFieldSchema UNKNOWN_FIELD_SET_LITE_SCHEMA = new UnknownFieldSetLiteSchema();

    public static void requireGeneratedMessage(Class cls) {
        Class cls2;
        if (!GeneratedMessageLite.class.isAssignableFrom(cls) && !Protobuf.assumeLiteRuntime && (cls2 = GENERATED_MESSAGE_CLASS) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void writeDoubleList(int i, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeDoubleList(i, list, z);
    }

    public static void writeFloatList(int i, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeFloatList(i, list, z);
    }

    public static void writeInt64List(int i, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeInt64List(i, list, z);
    }

    public static void writeUInt64List(int i, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeUInt64List(i, list, z);
    }

    public static void writeSInt64List(int i, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSInt64List(i, list, z);
    }

    public static void writeFixed64List(int i, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeFixed64List(i, list, z);
    }

    public static void writeSFixed64List(int i, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSFixed64List(i, list, z);
    }

    public static void writeInt32List(int i, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeInt32List(i, list, z);
    }

    public static void writeUInt32List(int i, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeUInt32List(i, list, z);
    }

    public static void writeSInt32List(int i, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSInt32List(i, list, z);
    }

    public static void writeFixed32List(int i, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeFixed32List(i, list, z);
    }

    public static void writeSFixed32List(int i, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSFixed32List(i, list, z);
    }

    public static void writeEnumList(int i, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeEnumList(i, list, z);
    }

    public static void writeBoolList(int i, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeBoolList(i, list, z);
    }

    public static void writeStringList(int i, List list, Writer writer) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeStringList(i, list);
    }

    public static void writeBytesList(int i, List list, Writer writer) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeBytesList(i, list);
    }

    public static void writeMessageList(int i, List list, Writer writer, Schema schema) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeMessageList(i, list, schema);
    }

    public static void writeGroupList(int i, List list, Writer writer, Schema schema) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeGroupList(i, list, schema);
    }

    static int computeSizeInt64ListNoTag(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof LongArrayList) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iComputeInt64SizeNoTag = 0;
        for (int i = 0; i < size; i++) {
            iComputeInt64SizeNoTag += CodedOutputStream.computeInt64SizeNoTag(((Long) list.get(i)).longValue());
        }
        return iComputeInt64SizeNoTag;
    }

    static int computeSizeInt64List(int i, List list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        int iComputeSizeInt64ListNoTag = computeSizeInt64ListNoTag(list);
        if (z) {
            return CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(iComputeSizeInt64ListNoTag);
        }
        return iComputeSizeInt64ListNoTag + (list.size() * CodedOutputStream.computeTagSize(i));
    }

    static int computeSizeUInt64ListNoTag(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof LongArrayList) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iComputeUInt64SizeNoTag = 0;
        for (int i = 0; i < size; i++) {
            iComputeUInt64SizeNoTag += CodedOutputStream.computeUInt64SizeNoTag(((Long) list.get(i)).longValue());
        }
        return iComputeUInt64SizeNoTag;
    }

    static int computeSizeUInt64List(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeSizeUInt64ListNoTag = computeSizeUInt64ListNoTag(list);
        if (z) {
            return CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(iComputeSizeUInt64ListNoTag);
        }
        return iComputeSizeUInt64ListNoTag + (size * CodedOutputStream.computeTagSize(i));
    }

    static int computeSizeSInt64ListNoTag(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof LongArrayList) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iComputeSInt64SizeNoTag = 0;
        for (int i = 0; i < size; i++) {
            iComputeSInt64SizeNoTag += CodedOutputStream.computeSInt64SizeNoTag(((Long) list.get(i)).longValue());
        }
        return iComputeSInt64SizeNoTag;
    }

    static int computeSizeSInt64List(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeSizeSInt64ListNoTag = computeSizeSInt64ListNoTag(list);
        if (z) {
            return CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(iComputeSizeSInt64ListNoTag);
        }
        return iComputeSizeSInt64ListNoTag + (size * CodedOutputStream.computeTagSize(i));
    }

    static int computeSizeEnumListNoTag(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof IntArrayList) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iComputeEnumSizeNoTag = 0;
        for (int i = 0; i < size; i++) {
            iComputeEnumSizeNoTag += CodedOutputStream.computeEnumSizeNoTag(((Integer) list.get(i)).intValue());
        }
        return iComputeEnumSizeNoTag;
    }

    static int computeSizeEnumList(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeSizeEnumListNoTag = computeSizeEnumListNoTag(list);
        if (z) {
            return CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(iComputeSizeEnumListNoTag);
        }
        return iComputeSizeEnumListNoTag + (size * CodedOutputStream.computeTagSize(i));
    }

    static int computeSizeInt32ListNoTag(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof IntArrayList) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iComputeInt32SizeNoTag = 0;
        for (int i = 0; i < size; i++) {
            iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(((Integer) list.get(i)).intValue());
        }
        return iComputeInt32SizeNoTag;
    }

    static int computeSizeInt32List(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeSizeInt32ListNoTag = computeSizeInt32ListNoTag(list);
        if (z) {
            return CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(iComputeSizeInt32ListNoTag);
        }
        return iComputeSizeInt32ListNoTag + (size * CodedOutputStream.computeTagSize(i));
    }

    static int computeSizeUInt32ListNoTag(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof IntArrayList) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iComputeUInt32SizeNoTag = 0;
        for (int i = 0; i < size; i++) {
            iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(((Integer) list.get(i)).intValue());
        }
        return iComputeUInt32SizeNoTag;
    }

    static int computeSizeUInt32List(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeSizeUInt32ListNoTag = computeSizeUInt32ListNoTag(list);
        if (z) {
            return CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(iComputeSizeUInt32ListNoTag);
        }
        return iComputeSizeUInt32ListNoTag + (size * CodedOutputStream.computeTagSize(i));
    }

    static int computeSizeSInt32ListNoTag(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof IntArrayList) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iComputeSInt32SizeNoTag = 0;
        for (int i = 0; i < size; i++) {
            iComputeSInt32SizeNoTag += CodedOutputStream.computeSInt32SizeNoTag(((Integer) list.get(i)).intValue());
        }
        return iComputeSInt32SizeNoTag;
    }

    static int computeSizeSInt32List(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeSizeSInt32ListNoTag = computeSizeSInt32ListNoTag(list);
        if (z) {
            return CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(iComputeSizeSInt32ListNoTag);
        }
        return iComputeSizeSInt32ListNoTag + (size * CodedOutputStream.computeTagSize(i));
    }

    static int computeSizeFixed32ListNoTag(List list) {
        return list.size() * 4;
    }

    static int computeSizeFixed32List(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z) {
            return CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(size * 4);
        }
        return size * CodedOutputStream.computeFixed32Size(i, 0);
    }

    static int computeSizeFixed64ListNoTag(List list) {
        return list.size() * 8;
    }

    static int computeSizeFixed64List(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z) {
            return CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(size * 8);
        }
        return size * CodedOutputStream.computeFixed64Size(i, 0L);
    }

    static int computeSizeBoolListNoTag(List list) {
        return list.size();
    }

    static int computeSizeBoolList(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z) {
            return CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(size);
        }
        return size * CodedOutputStream.computeBoolSize(i, true);
    }

    static int computeSizeStringList(int i, List list) {
        int iComputeStringSizeNoTag;
        int iComputeStringSizeNoTag2;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int iComputeTagSize = CodedOutputStream.computeTagSize(i) * size;
        if (!(list instanceof LazyStringList)) {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof ByteString) {
                    iComputeStringSizeNoTag = CodedOutputStream.computeBytesSizeNoTag((ByteString) obj);
                } else {
                    iComputeStringSizeNoTag = CodedOutputStream.computeStringSizeNoTag((String) obj);
                }
                iComputeTagSize += iComputeStringSizeNoTag;
                i2++;
            }
            return iComputeTagSize;
        }
        LazyStringList lazyStringList = (LazyStringList) list;
        while (i2 < size) {
            Object raw = lazyStringList.getRaw(i2);
            if (raw instanceof ByteString) {
                iComputeStringSizeNoTag2 = CodedOutputStream.computeBytesSizeNoTag((ByteString) raw);
            } else {
                iComputeStringSizeNoTag2 = CodedOutputStream.computeStringSizeNoTag((String) raw);
            }
            iComputeTagSize += iComputeStringSizeNoTag2;
            i2++;
        }
        return iComputeTagSize;
    }

    static int computeSizeMessage(int i, Object obj, Schema schema) {
        return CodedOutputStream.computeMessageSize(i, (MessageLite) obj, schema);
    }

    static int computeSizeMessageList(int i, List list, Schema schema) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeTagSize = CodedOutputStream.computeTagSize(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            iComputeTagSize += CodedOutputStream.computeMessageSizeNoTag((MessageLite) list.get(i2), schema);
        }
        return iComputeTagSize;
    }

    static int computeSizeByteStringList(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeTagSize = size * CodedOutputStream.computeTagSize(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            iComputeTagSize += CodedOutputStream.computeBytesSizeNoTag((ByteString) list.get(i2));
        }
        return iComputeTagSize;
    }

    static int computeSizeGroupList(int i, List list, Schema schema) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iComputeGroupSize = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iComputeGroupSize += CodedOutputStream.computeGroupSize(i, (MessageLite) list.get(i2), schema);
        }
        return iComputeGroupSize;
    }

    public static UnknownFieldSchema unknownFieldSetFullSchema() {
        return UNKNOWN_FIELD_SET_FULL_SCHEMA;
    }

    public static UnknownFieldSchema unknownFieldSetLiteSchema() {
        return UNKNOWN_FIELD_SET_LITE_SCHEMA;
    }

    private static UnknownFieldSchema getUnknownFieldSetSchema() {
        try {
            Class unknownFieldSetSchemaClass = getUnknownFieldSetSchemaClass();
            if (unknownFieldSetSchemaClass == null) {
                return null;
            }
            return (UnknownFieldSchema) unknownFieldSetSchemaClass.getConstructor(null).newInstance(null);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class getGeneratedMessageClass() {
        if (Protobuf.assumeLiteRuntime) {
            return null;
        }
        try {
            return Class.forName("androidx.datastore.preferences.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class getUnknownFieldSetSchemaClass() {
        if (Protobuf.assumeLiteRuntime) {
            return null;
        }
        try {
            return Class.forName("androidx.datastore.preferences.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    static boolean safeEquals(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    static void mergeMap(MapFieldSchema mapFieldSchema, Object obj, Object obj2, long j) {
        UnsafeUtil.putObject(obj, j, mapFieldSchema.mergeFrom(UnsafeUtil.getObject(obj, j), UnsafeUtil.getObject(obj2, j)));
    }

    static void mergeExtensions(ExtensionSchema extensionSchema, Object obj, Object obj2) {
        FieldSet extensions = extensionSchema.getExtensions(obj2);
        if (extensions.isEmpty()) {
            return;
        }
        extensionSchema.getMutableExtensions(obj).mergeFrom(extensions);
    }

    static void mergeUnknownFields(UnknownFieldSchema unknownFieldSchema, Object obj, Object obj2) {
        unknownFieldSchema.setToMessage(obj, unknownFieldSchema.merge(unknownFieldSchema.getFromMessage(obj), unknownFieldSchema.getFromMessage(obj2)));
    }

    static Object filterUnknownEnumList(Object obj, int i, List list, Internal.EnumVerifier enumVerifier, Object obj2, UnknownFieldSchema unknownFieldSchema) {
        if (enumVerifier == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                Integer num = (Integer) list.get(i3);
                int iIntValue = num.intValue();
                if (enumVerifier.isInRange(iIntValue)) {
                    if (i3 != i2) {
                        list.set(i2, num);
                    }
                    i2++;
                } else {
                    obj2 = storeUnknownEnum(obj, i, iIntValue, obj2, unknownFieldSchema);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
            return obj2;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            int iIntValue2 = ((Integer) it.next()).intValue();
            if (!enumVerifier.isInRange(iIntValue2)) {
                obj2 = storeUnknownEnum(obj, i, iIntValue2, obj2, unknownFieldSchema);
                it.remove();
            }
        }
        return obj2;
    }

    static Object storeUnknownEnum(Object obj, int i, int i2, Object obj2, UnknownFieldSchema unknownFieldSchema) {
        if (obj2 == null) {
            obj2 = unknownFieldSchema.getBuilderFromMessage(obj);
        }
        unknownFieldSchema.addVarint(obj2, i, i2);
        return obj2;
    }
}
