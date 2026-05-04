package androidx.work;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.p024io.CloseableKt;
import kotlin.reflect.KClass;
import p022j$.util.DesugarCollections;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class Data {
    public static final Companion Companion = new Companion(null);
    public static final Data EMPTY = new Builder().build();
    private final Map values;

    public Data(Data other) {
        Intrinsics.checkNotNullParameter(other, "other");
        this.values = new HashMap(other.values);
    }

    public Data(Map values) {
        Intrinsics.checkNotNullParameter(values, "values");
        this.values = new HashMap(values);
    }

    public final String getString(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object obj = this.values.get(key);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public final Map getKeyValueMap() {
        Map mapUnmodifiableMap = DesugarCollections.unmodifiableMap(this.values);
        Intrinsics.checkNotNullExpressionValue(mapUnmodifiableMap, "unmodifiableMap(...)");
        return mapUnmodifiableMap;
    }

    public static final class Builder {
        private final Map values = new LinkedHashMap();

        public final Builder putAll(Map values) {
            Intrinsics.checkNotNullParameter(values, "values");
            for (Map.Entry entry : values.entrySet()) {
                put((String) entry.getKey(), entry.getValue());
            }
            return this;
        }

        private final Builder putDirect(String str, Object obj) {
            this.values.put(str, obj);
            return this;
        }

        public final Builder putString(String key, String str) {
            Intrinsics.checkNotNullParameter(key, "key");
            return putDirect(key, str);
        }

        public final Builder putAll(Data data) {
            Intrinsics.checkNotNullParameter(data, "data");
            putAll(data.values);
            return this;
        }

        public final Builder put(String key, Object obj) {
            Intrinsics.checkNotNullParameter(key, "key");
            Map map = this.values;
            if (obj == null) {
                obj = null;
            } else {
                KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(obj.getClass());
                if (!Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Boolean.TYPE)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Byte.TYPE)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Integer.TYPE)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Long.TYPE)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Float.TYPE)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Double.TYPE)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(String.class)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Boolean[].class)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Byte[].class)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Integer[].class)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Long[].class)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Float[].class)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Double[].class)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(String[].class))) {
                    if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(boolean[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((boolean[]) obj);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(byte[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((byte[]) obj);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(int[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((int[]) obj);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(long[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((long[]) obj);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(float[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((float[]) obj);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(double[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((double[]) obj);
                    } else {
                        throw new IllegalArgumentException("Key " + key + " has invalid type " + orCreateKotlinClass);
                    }
                }
            }
            map.put(key, obj);
            return this;
        }

        public final Data build() {
            Data data = new Data(this.values);
            Data.Companion.toByteArrayInternalV1(data);
            return data;
        }
    }

    public final boolean hasKeyWithValueOfType(String key, Class klass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(klass, "klass");
        Object obj = this.values.get(key);
        return obj != null && klass.isAssignableFrom(obj.getClass());
    }

    public final int size() {
        return this.values.size();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean equals(Object obj) {
        boolean zAreEqual;
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(Data.class, obj.getClass())) {
            return false;
        }
        Data data = (Data) obj;
        Set<String> setKeySet = this.values.keySet();
        if (!Intrinsics.areEqual(setKeySet, data.values.keySet())) {
            return false;
        }
        for (String str : setKeySet) {
            Object obj2 = this.values.get(str);
            Object obj3 = data.values.get(str);
            if (obj2 == null || obj3 == null) {
                zAreEqual = obj2 == obj3;
            } else if (obj2 instanceof Object[]) {
                Object[] objArr = (Object[]) obj2;
                if (obj3 instanceof Object[]) {
                    zAreEqual = ArraysKt.contentDeepEquals(objArr, (Object[]) obj3);
                } else {
                    zAreEqual = Intrinsics.areEqual(obj2, obj3);
                }
            }
            if (!zAreEqual) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int iHashCode;
        int i = 0;
        for (Map.Entry entry : this.values.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Object[]) {
                iHashCode = Objects.hashCode(entry.getKey()) ^ ArraysKt.contentDeepHashCode((Object[]) value);
            } else {
                iHashCode = entry.hashCode();
            }
            i += iHashCode;
        }
        return i * 31;
    }

    public String toString() {
        return "Data {" + CollectionsKt.joinToString$default(this.values.entrySet(), null, null, null, 0, null, new Function1() { // from class: androidx.work.Data$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Data.toString$lambda$7$lambda$6((Map.Entry) obj);
            }
        }, 31, null) + "}";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence toString$lambda$7$lambda$6(Map.Entry entry) {
        Intrinsics.checkNotNullParameter(entry, "<destruct>");
        String str = (String) entry.getKey();
        Object value = entry.getValue();
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" : ");
        if (value instanceof Object[]) {
            value = Arrays.toString((Object[]) value);
            Intrinsics.checkNotNullExpressionValue(value, "toString(...)");
        }
        sb.append(value);
        return sb.toString();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private static final void toByteArrayInternalV1$writeHeader(DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeShort(-21521);
            dataOutputStream.writeShort(1);
        }

        private static final void toByteArrayInternalV1$writeArray(DataOutputStream dataOutputStream, Object[] objArr) throws IOException {
            int i;
            KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(objArr.getClass());
            if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Boolean[].class))) {
                i = 8;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Byte[].class))) {
                i = 9;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Integer[].class))) {
                i = 10;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Long[].class))) {
                i = 11;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Float[].class))) {
                i = 12;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Double[].class))) {
                i = 13;
            } else {
                if (!Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(String[].class))) {
                    throw new IllegalArgumentException("Unsupported value type " + Reflection.getOrCreateKotlinClass(objArr.getClass()).getQualifiedName());
                }
                i = 14;
            }
            dataOutputStream.writeByte(i);
            dataOutputStream.writeInt(objArr.length);
            for (Object obj : objArr) {
                if (i == 8) {
                    Boolean bool = obj instanceof Boolean ? (Boolean) obj : null;
                    dataOutputStream.writeBoolean(bool != null ? bool.booleanValue() : false);
                } else if (i == 9) {
                    Byte b = obj instanceof Byte ? (Byte) obj : null;
                    dataOutputStream.writeByte(b != null ? b.byteValue() : (byte) 0);
                } else if (i == 10) {
                    Integer num = obj instanceof Integer ? (Integer) obj : null;
                    dataOutputStream.writeInt(num != null ? num.intValue() : 0);
                } else if (i == 11) {
                    Long l = obj instanceof Long ? (Long) obj : null;
                    dataOutputStream.writeLong(l != null ? l.longValue() : 0L);
                } else if (i == 12) {
                    Float f = obj instanceof Float ? (Float) obj : null;
                    dataOutputStream.writeFloat(f != null ? f.floatValue() : 0.0f);
                } else if (i == 13) {
                    Double d = obj instanceof Double ? (Double) obj : null;
                    dataOutputStream.writeDouble(d != null ? d.doubleValue() : 0.0d);
                } else if (i == 14) {
                    String str = obj instanceof String ? (String) obj : null;
                    if (str == null) {
                        str = "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d";
                    }
                    dataOutputStream.writeUTF(str);
                }
            }
        }

        private static final void toByteArrayInternalV1$writeEntry(DataOutputStream dataOutputStream, String str, Object obj) throws IOException {
            if (obj == null) {
                dataOutputStream.writeByte(0);
            } else if (obj instanceof Boolean) {
                dataOutputStream.writeByte(1);
                dataOutputStream.writeBoolean(((Boolean) obj).booleanValue());
            } else if (obj instanceof Byte) {
                dataOutputStream.writeByte(2);
                dataOutputStream.writeByte(((Number) obj).byteValue());
            } else if (obj instanceof Integer) {
                dataOutputStream.writeByte(3);
                dataOutputStream.writeInt(((Number) obj).intValue());
            } else if (obj instanceof Long) {
                dataOutputStream.writeByte(4);
                dataOutputStream.writeLong(((Number) obj).longValue());
            } else if (obj instanceof Float) {
                dataOutputStream.writeByte(5);
                dataOutputStream.writeFloat(((Number) obj).floatValue());
            } else if (obj instanceof Double) {
                dataOutputStream.writeByte(6);
                dataOutputStream.writeDouble(((Number) obj).doubleValue());
            } else if (obj instanceof String) {
                dataOutputStream.writeByte(7);
                dataOutputStream.writeUTF((String) obj);
            } else if (obj instanceof Object[]) {
                toByteArrayInternalV1$writeArray(dataOutputStream, (Object[]) obj);
            } else {
                throw new IllegalArgumentException("Unsupported value type " + Reflection.getOrCreateKotlinClass(obj.getClass()).getSimpleName());
            }
            dataOutputStream.writeUTF(str);
        }

        public final byte[] toByteArrayInternalV1(Data data) {
            Intrinsics.checkNotNullParameter(data, "data");
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                try {
                    toByteArrayInternalV1$writeHeader(dataOutputStream);
                    dataOutputStream.writeInt(data.size());
                    for (Map.Entry entry : data.values.entrySet()) {
                        toByteArrayInternalV1$writeEntry(dataOutputStream, (String) entry.getKey(), entry.getValue());
                    }
                    dataOutputStream.flush();
                    if (dataOutputStream.size() > 10240) {
                        throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    CloseableKt.closeFinally(dataOutputStream, null);
                    Intrinsics.checkNotNull(byteArray);
                    return byteArray;
                } finally {
                }
            } catch (IOException e) {
                Logger.get().error(Data_Kt.TAG, "Error in Data#toByteArray: ", e);
                return new byte[0];
            }
        }

        private static final boolean fromByteArray$isObjectStream(ByteArrayInputStream byteArrayInputStream) throws IOException {
            byte[] bArr = new byte[2];
            byteArrayInputStream.read(bArr);
            byte b = (byte) (-21267);
            boolean z = false;
            if (bArr[0] == ((byte) 16777132) && bArr[1] == b) {
                z = true;
            }
            byteArrayInputStream.reset();
            return z;
        }

        private static final void fromByteArray$readHeader(DataInputStream dataInputStream) throws IOException {
            short s = dataInputStream.readShort();
            if (s != -21521) {
                throw new IllegalStateException(("Magic number doesn't match: " + ((int) s)).toString());
            }
            short s2 = dataInputStream.readShort();
            if (s2 == 1) {
                return;
            }
            throw new IllegalStateException(("Unsupported version number: " + ((int) s2)).toString());
        }

        private static final Object fromByteArray$readValue(DataInputStream dataInputStream, byte b) throws IOException {
            if (b == 0) {
                return null;
            }
            if (b == 1) {
                return Boolean.valueOf(dataInputStream.readBoolean());
            }
            if (b == 2) {
                return Byte.valueOf(dataInputStream.readByte());
            }
            if (b == 3) {
                return Integer.valueOf(dataInputStream.readInt());
            }
            if (b == 4) {
                return Long.valueOf(dataInputStream.readLong());
            }
            if (b == 5) {
                return Float.valueOf(dataInputStream.readFloat());
            }
            if (b == 6) {
                return Double.valueOf(dataInputStream.readDouble());
            }
            if (b == 7) {
                return dataInputStream.readUTF();
            }
            int i = 0;
            if (b == 8) {
                int i2 = dataInputStream.readInt();
                Boolean[] boolArr = new Boolean[i2];
                while (i < i2) {
                    boolArr[i] = Boolean.valueOf(dataInputStream.readBoolean());
                    i++;
                }
                return boolArr;
            }
            if (b == 9) {
                int i3 = dataInputStream.readInt();
                Byte[] bArr = new Byte[i3];
                while (i < i3) {
                    bArr[i] = Byte.valueOf(dataInputStream.readByte());
                    i++;
                }
                return bArr;
            }
            if (b == 10) {
                int i4 = dataInputStream.readInt();
                Integer[] numArr = new Integer[i4];
                while (i < i4) {
                    numArr[i] = Integer.valueOf(dataInputStream.readInt());
                    i++;
                }
                return numArr;
            }
            if (b == 11) {
                int i5 = dataInputStream.readInt();
                Long[] lArr = new Long[i5];
                while (i < i5) {
                    lArr[i] = Long.valueOf(dataInputStream.readLong());
                    i++;
                }
                return lArr;
            }
            if (b == 12) {
                int i6 = dataInputStream.readInt();
                Float[] fArr = new Float[i6];
                while (i < i6) {
                    fArr[i] = Float.valueOf(dataInputStream.readFloat());
                    i++;
                }
                return fArr;
            }
            if (b == 13) {
                int i7 = dataInputStream.readInt();
                Double[] dArr = new Double[i7];
                while (i < i7) {
                    dArr[i] = Double.valueOf(dataInputStream.readDouble());
                    i++;
                }
                return dArr;
            }
            if (b == 14) {
                int i8 = dataInputStream.readInt();
                String[] strArr = new String[i8];
                while (i < i8) {
                    String utf = dataInputStream.readUTF();
                    if (Intrinsics.areEqual(utf, "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d")) {
                        utf = null;
                    }
                    strArr[i] = utf;
                    i++;
                }
                return strArr;
            }
            throw new IllegalStateException("Unsupported type " + ((int) b));
        }

        public final Data fromByteArray(byte[] bytes) {
            Intrinsics.checkNotNullParameter(bytes, "bytes");
            if (bytes.length > 10240) {
                throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
            }
            if (bytes.length == 0) {
                return Data.EMPTY;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
                int i = 0;
                if (fromByteArray$isObjectStream(byteArrayInputStream)) {
                    ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    try {
                        int i2 = objectInputStream.readInt();
                        while (i < i2) {
                            linkedHashMap.put(objectInputStream.readUTF(), objectInputStream.readObject());
                            i++;
                        }
                        CloseableKt.closeFinally(objectInputStream, null);
                    } finally {
                    }
                } else {
                    DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
                    try {
                        fromByteArray$readHeader(dataInputStream);
                        int i3 = dataInputStream.readInt();
                        while (i < i3) {
                            linkedHashMap.put(dataInputStream.readUTF(), fromByteArray$readValue(dataInputStream, dataInputStream.readByte()));
                            i++;
                        }
                        CloseableKt.closeFinally(dataInputStream, null);
                    } finally {
                    }
                }
            } catch (IOException e) {
                Logger.get().error(Data_Kt.TAG, "Error in Data#fromByteArray: ", e);
            } catch (ClassNotFoundException e2) {
                Logger.get().error(Data_Kt.TAG, "Error in Data#fromByteArray: ", e2);
            }
            return new Data(linkedHashMap);
        }
    }
}
