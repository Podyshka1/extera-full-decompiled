package androidx.datastore.preferences.protobuf;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.datastore.preferences.protobuf.Internal;
import androidx.datastore.preferences.protobuf.InvalidProtocolBufferException;
import androidx.datastore.preferences.protobuf.WireFormat;
import androidx.datastore.preferences.protobuf.Writer;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.telegram.messenger.CharacterCompat;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
final class MessageSchema implements Schema {
    private static final int[] EMPTY_INT_ARRAY = new int[0];
    private static final Unsafe UNSAFE = UnsafeUtil.getUnsafe();
    private final int[] buffer;
    private final int checkInitializedCount;
    private final MessageLite defaultInstance;
    private final ExtensionSchema extensionSchema;
    private final boolean hasExtensions;
    private final int[] intArray;
    private final ListFieldSchema listFieldSchema;
    private final boolean lite;
    private final MapFieldSchema mapFieldSchema;
    private final int maxFieldNumber;
    private final int minFieldNumber;
    private final NewInstanceSchema newInstanceSchema;
    private final Object[] objects;
    private final int repeatedFieldOffsetStart;
    private final ProtoSyntax syntax;
    private final UnknownFieldSchema unknownFieldSchema;
    private final boolean useCachedSizeField;

    private static boolean isEnforceUtf8(int i) {
        return (i & 536870912) != 0;
    }

    private static boolean isRequired(int i) {
        return (i & 268435456) != 0;
    }

    private static long offset(int i) {
        return i & 1048575;
    }

    private static int type(int i) {
        return (i & 267386880) >>> 20;
    }

    private MessageSchema(int[] iArr, Object[] objArr, int i, int i2, MessageLite messageLite, ProtoSyntax protoSyntax, boolean z, int[] iArr2, int i3, int i4, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, MapFieldSchema mapFieldSchema) {
        this.buffer = iArr;
        this.objects = objArr;
        this.minFieldNumber = i;
        this.maxFieldNumber = i2;
        this.lite = messageLite instanceof GeneratedMessageLite;
        this.syntax = protoSyntax;
        this.hasExtensions = extensionSchema != null && extensionSchema.hasExtensions(messageLite);
        this.useCachedSizeField = z;
        this.intArray = iArr2;
        this.checkInitializedCount = i3;
        this.repeatedFieldOffsetStart = i4;
        this.newInstanceSchema = newInstanceSchema;
        this.listFieldSchema = listFieldSchema;
        this.unknownFieldSchema = unknownFieldSchema;
        this.extensionSchema = extensionSchema;
        this.defaultInstance = messageLite;
        this.mapFieldSchema = mapFieldSchema;
    }

    static MessageSchema newSchema(Class cls, MessageInfo messageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, MapFieldSchema mapFieldSchema) {
        if (messageInfo instanceof RawMessageInfo) {
            return newSchemaForRawMessageInfo((RawMessageInfo) messageInfo, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
        }
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(messageInfo);
        return newSchemaForMessageInfo(null, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0375  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static MessageSchema newSchemaForRawMessageInfo(RawMessageInfo rawMessageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, MapFieldSchema mapFieldSchema) {
        int i;
        int iCharAt;
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr;
        int i6;
        int i7;
        int i8;
        char cCharAt;
        int i9;
        char cCharAt2;
        int i10;
        char cCharAt3;
        int i11;
        char cCharAt4;
        int i12;
        char cCharAt5;
        int i13;
        char cCharAt6;
        int i14;
        char cCharAt7;
        int i15;
        char cCharAt8;
        int i16;
        int i17;
        int i18;
        int i19;
        int iObjectFieldOffset;
        String str;
        int i20;
        int iObjectFieldOffset2;
        int i21;
        int i22;
        int iObjectFieldOffset3;
        int i23;
        Field fieldReflectField;
        char cCharAt9;
        int i24;
        int i25;
        Object obj;
        Field fieldReflectField2;
        Object obj2;
        Field fieldReflectField3;
        int i26;
        char cCharAt10;
        int i27;
        char cCharAt11;
        int i28;
        char cCharAt12;
        int i29;
        char cCharAt13;
        String stringInfo = rawMessageInfo.getStringInfo();
        int length = stringInfo.length();
        char cCharAt14 = stringInfo.charAt(0);
        char c = CharacterCompat.MIN_HIGH_SURROGATE;
        if (cCharAt14 >= 55296) {
            int i30 = 1;
            while (true) {
                i = i30 + 1;
                if (stringInfo.charAt(i30) < 55296) {
                    break;
                }
                i30 = i;
            }
        } else {
            i = 1;
        }
        int i31 = i + 1;
        int iCharAt2 = stringInfo.charAt(i);
        if (iCharAt2 >= 55296) {
            int i32 = iCharAt2 & 8191;
            int i33 = 13;
            while (true) {
                i29 = i31 + 1;
                cCharAt13 = stringInfo.charAt(i31);
                if (cCharAt13 < 55296) {
                    break;
                }
                i32 |= (cCharAt13 & 8191) << i33;
                i33 += 13;
                i31 = i29;
            }
            iCharAt2 = i32 | (cCharAt13 << i33);
            i31 = i29;
        }
        if (iCharAt2 == 0) {
            i4 = 0;
            iCharAt = 0;
            i3 = 0;
            i7 = 0;
            i2 = 0;
            i6 = 0;
            iArr = EMPTY_INT_ARRAY;
            i5 = 0;
        } else {
            int i34 = i31 + 1;
            int iCharAt3 = stringInfo.charAt(i31);
            if (iCharAt3 >= 55296) {
                int i35 = iCharAt3 & 8191;
                int i36 = 13;
                while (true) {
                    i15 = i34 + 1;
                    cCharAt8 = stringInfo.charAt(i34);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i35 |= (cCharAt8 & 8191) << i36;
                    i36 += 13;
                    i34 = i15;
                }
                iCharAt3 = i35 | (cCharAt8 << i36);
                i34 = i15;
            }
            int i37 = i34 + 1;
            int iCharAt4 = stringInfo.charAt(i34);
            if (iCharAt4 >= 55296) {
                int i38 = iCharAt4 & 8191;
                int i39 = 13;
                while (true) {
                    i14 = i37 + 1;
                    cCharAt7 = stringInfo.charAt(i37);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i38 |= (cCharAt7 & 8191) << i39;
                    i39 += 13;
                    i37 = i14;
                }
                iCharAt4 = i38 | (cCharAt7 << i39);
                i37 = i14;
            }
            int i40 = i37 + 1;
            int iCharAt5 = stringInfo.charAt(i37);
            if (iCharAt5 >= 55296) {
                int i41 = iCharAt5 & 8191;
                int i42 = 13;
                while (true) {
                    i13 = i40 + 1;
                    cCharAt6 = stringInfo.charAt(i40);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i41 |= (cCharAt6 & 8191) << i42;
                    i42 += 13;
                    i40 = i13;
                }
                iCharAt5 = i41 | (cCharAt6 << i42);
                i40 = i13;
            }
            int i43 = i40 + 1;
            int iCharAt6 = stringInfo.charAt(i40);
            if (iCharAt6 >= 55296) {
                int i44 = iCharAt6 & 8191;
                int i45 = 13;
                while (true) {
                    i12 = i43 + 1;
                    cCharAt5 = stringInfo.charAt(i43);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt5 & 8191) << i45;
                    i45 += 13;
                    i43 = i12;
                }
                iCharAt6 = i44 | (cCharAt5 << i45);
                i43 = i12;
            }
            int i46 = i43 + 1;
            iCharAt = stringInfo.charAt(i43);
            if (iCharAt >= 55296) {
                int i47 = iCharAt & 8191;
                int i48 = 13;
                while (true) {
                    i11 = i46 + 1;
                    cCharAt4 = stringInfo.charAt(i46);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt4 & 8191) << i48;
                    i48 += 13;
                    i46 = i11;
                }
                iCharAt = i47 | (cCharAt4 << i48);
                i46 = i11;
            }
            int i49 = i46 + 1;
            int iCharAt7 = stringInfo.charAt(i46);
            if (iCharAt7 >= 55296) {
                int i50 = iCharAt7 & 8191;
                int i51 = 13;
                while (true) {
                    i10 = i49 + 1;
                    cCharAt3 = stringInfo.charAt(i49);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt3 & 8191) << i51;
                    i51 += 13;
                    i49 = i10;
                }
                iCharAt7 = i50 | (cCharAt3 << i51);
                i49 = i10;
            }
            int i52 = i49 + 1;
            int iCharAt8 = stringInfo.charAt(i49);
            if (iCharAt8 >= 55296) {
                int i53 = iCharAt8 & 8191;
                int i54 = 13;
                while (true) {
                    i9 = i52 + 1;
                    cCharAt2 = stringInfo.charAt(i52);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt2 & 8191) << i54;
                    i54 += 13;
                    i52 = i9;
                }
                iCharAt8 = i53 | (cCharAt2 << i54);
                i52 = i9;
            }
            int i55 = i52 + 1;
            int iCharAt9 = stringInfo.charAt(i52);
            if (iCharAt9 >= 55296) {
                int i56 = iCharAt9 & 8191;
                int i57 = 13;
                while (true) {
                    i8 = i55 + 1;
                    cCharAt = stringInfo.charAt(i55);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i56 |= (cCharAt & 8191) << i57;
                    i57 += 13;
                    i55 = i8;
                }
                iCharAt9 = i56 | (cCharAt << i57);
                i55 = i8;
            }
            int[] iArr2 = new int[iCharAt9 + iCharAt7 + iCharAt8];
            i2 = (iCharAt3 * 2) + iCharAt4;
            int i58 = iCharAt7;
            i3 = iCharAt5;
            i4 = i58;
            i5 = iCharAt3;
            iArr = iArr2;
            i6 = iCharAt9;
            i31 = i55;
            i7 = iCharAt6;
        }
        Unsafe unsafe = UNSAFE;
        Object[] objects = rawMessageInfo.getObjects();
        Class<?> cls = rawMessageInfo.getDefaultInstance().getClass();
        int[] iArr3 = new int[iCharAt * 3];
        Object[] objArr = new Object[iCharAt * 2];
        int i59 = i6 + i4;
        int i60 = i59;
        int i61 = i6;
        int i62 = 0;
        int i63 = 0;
        while (i31 < length) {
            int i64 = i31 + 1;
            int iCharAt10 = stringInfo.charAt(i31);
            if (iCharAt10 >= c) {
                int i65 = iCharAt10 & 8191;
                int i66 = i64;
                int i67 = 13;
                while (true) {
                    i28 = i66 + 1;
                    cCharAt12 = stringInfo.charAt(i66);
                    if (cCharAt12 < c) {
                        break;
                    }
                    i65 |= (cCharAt12 & 8191) << i67;
                    i67 += 13;
                    i66 = i28;
                }
                iCharAt10 = i65 | (cCharAt12 << i67);
                i16 = i28;
            } else {
                i16 = i64;
            }
            int i68 = i16 + 1;
            int iCharAt11 = stringInfo.charAt(i16);
            if (iCharAt11 >= c) {
                int i69 = iCharAt11 & 8191;
                int i70 = i68;
                int i71 = 13;
                while (true) {
                    i27 = i70 + 1;
                    cCharAt11 = stringInfo.charAt(i70);
                    if (cCharAt11 < c) {
                        break;
                    }
                    i69 |= (cCharAt11 & 8191) << i71;
                    i71 += 13;
                    i70 = i27;
                }
                iCharAt11 = i69 | (cCharAt11 << i71);
                i17 = i27;
            } else {
                i17 = i68;
            }
            int i72 = iCharAt11 & 255;
            int i73 = length;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i62] = i63;
                i62++;
            }
            int[] iArr4 = iArr3;
            if (i72 >= 51) {
                int i74 = i17 + 1;
                int iCharAt12 = stringInfo.charAt(i17);
                char c2 = CharacterCompat.MIN_HIGH_SURROGATE;
                if (iCharAt12 >= 55296) {
                    int i75 = iCharAt12 & 8191;
                    int i76 = 13;
                    while (true) {
                        i26 = i74 + 1;
                        cCharAt10 = stringInfo.charAt(i74);
                        if (cCharAt10 < c2) {
                            break;
                        }
                        i75 |= (cCharAt10 & 8191) << i76;
                        i76 += 13;
                        i74 = i26;
                        c2 = CharacterCompat.MIN_HIGH_SURROGATE;
                    }
                    iCharAt12 = i75 | (cCharAt10 << i76);
                    i74 = i26;
                }
                int i77 = i72 - 51;
                int i78 = i74;
                if (i77 == 9 || i77 == 17) {
                    i25 = i2 + 1;
                    objArr[((i63 / 3) * 2) + 1] = objects[i2];
                } else {
                    if (i77 == 12 && (rawMessageInfo.getSyntax().equals(ProtoSyntax.PROTO2) || (iCharAt11 & 2048) != 0)) {
                        i25 = i2 + 1;
                        objArr[((i63 / 3) * 2) + 1] = objects[i2];
                    }
                    int i79 = iCharAt12 * 2;
                    obj = objects[i79];
                    if (!(obj instanceof Field)) {
                        fieldReflectField2 = (Field) obj;
                    } else {
                        fieldReflectField2 = reflectField(cls, (String) obj);
                        objects[i79] = fieldReflectField2;
                    }
                    int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldReflectField2);
                    int i80 = i79 + 1;
                    obj2 = objects[i80];
                    if (!(obj2 instanceof Field)) {
                        fieldReflectField3 = (Field) obj2;
                    } else {
                        fieldReflectField3 = reflectField(cls, (String) obj2);
                        objects[i80] = fieldReflectField3;
                    }
                    str = stringInfo;
                    iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldReflectField3);
                    i23 = iObjectFieldOffset4;
                    i22 = 0;
                    i18 = iCharAt10;
                    i31 = i78;
                }
                i2 = i25;
                int i792 = iCharAt12 * 2;
                obj = objects[i792];
                if (!(obj instanceof Field)) {
                }
                int iObjectFieldOffset42 = (int) unsafe.objectFieldOffset(fieldReflectField2);
                int i802 = i792 + 1;
                obj2 = objects[i802];
                if (!(obj2 instanceof Field)) {
                }
                str = stringInfo;
                iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldReflectField3);
                i23 = iObjectFieldOffset42;
                i22 = 0;
                i18 = iCharAt10;
                i31 = i78;
            } else {
                int i81 = i2 + 1;
                Field fieldReflectField4 = reflectField(cls, (String) objects[i2]);
                if (i72 == 9 || i72 == 17) {
                    i18 = iCharAt10;
                    objArr[((i63 / 3) * 2) + 1] = fieldReflectField4.getType();
                } else {
                    if (i72 == 27 || i72 == 49) {
                        i18 = iCharAt10;
                        i24 = i2 + 2;
                        objArr[((i63 / 3) * 2) + 1] = objects[i81];
                    } else if (i72 == 12 || i72 == 30 || i72 == 44) {
                        i18 = iCharAt10;
                        if (rawMessageInfo.getSyntax() == ProtoSyntax.PROTO2 || (iCharAt11 & 2048) != 0) {
                            i24 = i2 + 2;
                            objArr[((i63 / 3) * 2) + 1] = objects[i81];
                        }
                    } else if (i72 == 50) {
                        int i82 = i61 + 1;
                        iArr[i61] = i63;
                        int i83 = (i63 / 3) * 2;
                        int i84 = i2 + 2;
                        objArr[i83] = objects[i81];
                        if ((iCharAt11 & 2048) != 0) {
                            i19 = i2 + 3;
                            objArr[i83 + 1] = objects[i84];
                            i18 = iCharAt10;
                            i61 = i82;
                        } else {
                            i19 = i84;
                            i61 = i82;
                            i18 = iCharAt10;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField4);
                        if ((iCharAt11 & 4096) == 0 || i72 > 17) {
                            str = stringInfo;
                            i20 = i19;
                            iObjectFieldOffset2 = 1048575;
                            i21 = i17;
                            i22 = 0;
                        } else {
                            int i85 = i17 + 1;
                            int iCharAt13 = stringInfo.charAt(i17);
                            if (iCharAt13 >= 55296) {
                                int i86 = iCharAt13 & 8191;
                                int i87 = 13;
                                while (true) {
                                    i21 = i85 + 1;
                                    cCharAt9 = stringInfo.charAt(i85);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i86 |= (cCharAt9 & 8191) << i87;
                                    i87 += 13;
                                    i85 = i21;
                                }
                                iCharAt13 = i86 | (cCharAt9 << i87);
                            } else {
                                i21 = i85;
                            }
                            int i88 = (i5 * 2) + (iCharAt13 / 32);
                            Object obj3 = objects[i88];
                            str = stringInfo;
                            if (obj3 instanceof Field) {
                                fieldReflectField = (Field) obj3;
                            } else {
                                fieldReflectField = reflectField(cls, (String) obj3);
                                objects[i88] = fieldReflectField;
                            }
                            i20 = i19;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldReflectField);
                            i22 = iCharAt13 % 32;
                        }
                        int i89 = iObjectFieldOffset2;
                        if (i72 >= 18 && i72 <= 49) {
                            iArr[i60] = iObjectFieldOffset;
                            i60++;
                        }
                        iObjectFieldOffset3 = i89;
                        i23 = iObjectFieldOffset;
                        i2 = i20;
                        i31 = i21;
                    } else {
                        i18 = iCharAt10;
                    }
                    i19 = i24;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField4);
                    if ((iCharAt11 & 4096) == 0) {
                        str = stringInfo;
                        i20 = i19;
                        iObjectFieldOffset2 = 1048575;
                        i21 = i17;
                        i22 = 0;
                        int i892 = iObjectFieldOffset2;
                        if (i72 >= 18) {
                            iArr[i60] = iObjectFieldOffset;
                            i60++;
                        }
                        iObjectFieldOffset3 = i892;
                        i23 = iObjectFieldOffset;
                        i2 = i20;
                        i31 = i21;
                    }
                }
                i19 = i81;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField4);
                if ((iCharAt11 & 4096) == 0) {
                }
            }
            int i90 = i63 + 1;
            iArr4[i63] = i18;
            int i91 = i63 + 2;
            int i92 = iObjectFieldOffset3;
            iArr4[i90] = ((iCharAt11 & 512) != 0 ? 536870912 : 0) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & 2048) != 0 ? Integer.MIN_VALUE : 0) | (i72 << 20) | i23;
            i63 += 3;
            iArr4[i91] = (i22 << 20) | i92;
            length = i73;
            iArr3 = iArr4;
            stringInfo = str;
            c = CharacterCompat.MIN_HIGH_SURROGATE;
        }
        return new MessageSchema(iArr3, objArr, i3, i7, rawMessageInfo.getDefaultInstance(), rawMessageInfo.getSyntax(), false, iArr, i6, i59, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    private static Field reflectField(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    static MessageSchema newSchemaForMessageInfo(StructuralMessageInfo structuralMessageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, MapFieldSchema mapFieldSchema) {
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public Object newInstance() {
        return this.newInstanceSchema.newInstance(this.defaultInstance);
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public boolean equals(Object obj, Object obj2) {
        int length = this.buffer.length;
        for (int i = 0; i < length; i += 3) {
            if (!equals(obj, obj2, i)) {
                return false;
            }
        }
        if (!this.unknownFieldSchema.getFromMessage(obj).equals(this.unknownFieldSchema.getFromMessage(obj2))) {
            return false;
        }
        if (this.hasExtensions) {
            return this.extensionSchema.getExtensions(obj).equals(this.extensionSchema.getExtensions(obj2));
        }
        return true;
    }

    private boolean equals(Object obj, Object obj2, int i) {
        int iTypeAndOffsetAt = typeAndOffsetAt(i);
        long jOffset = offset(iTypeAndOffsetAt);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                if (!arePresentForEquals(obj, obj2, i) || Double.doubleToLongBits(UnsafeUtil.getDouble(obj, jOffset)) != Double.doubleToLongBits(UnsafeUtil.getDouble(obj2, jOffset))) {
                }
                break;
            case 1:
                if (!arePresentForEquals(obj, obj2, i) || Float.floatToIntBits(UnsafeUtil.getFloat(obj, jOffset)) != Float.floatToIntBits(UnsafeUtil.getFloat(obj2, jOffset))) {
                }
                break;
            case 2:
                if (!arePresentForEquals(obj, obj2, i) || UnsafeUtil.getLong(obj, jOffset) != UnsafeUtil.getLong(obj2, jOffset)) {
                }
                break;
            case 3:
                if (!arePresentForEquals(obj, obj2, i) || UnsafeUtil.getLong(obj, jOffset) != UnsafeUtil.getLong(obj2, jOffset)) {
                }
                break;
            case 4:
                if (!arePresentForEquals(obj, obj2, i) || UnsafeUtil.getInt(obj, jOffset) != UnsafeUtil.getInt(obj2, jOffset)) {
                }
                break;
            case 5:
                if (!arePresentForEquals(obj, obj2, i) || UnsafeUtil.getLong(obj, jOffset) != UnsafeUtil.getLong(obj2, jOffset)) {
                }
                break;
            case 6:
                if (!arePresentForEquals(obj, obj2, i) || UnsafeUtil.getInt(obj, jOffset) != UnsafeUtil.getInt(obj2, jOffset)) {
                }
                break;
            case 7:
                if (!arePresentForEquals(obj, obj2, i) || UnsafeUtil.getBoolean(obj, jOffset) != UnsafeUtil.getBoolean(obj2, jOffset)) {
                }
                break;
            case 8:
                if (!arePresentForEquals(obj, obj2, i) || !SchemaUtil.safeEquals(UnsafeUtil.getObject(obj, jOffset), UnsafeUtil.getObject(obj2, jOffset))) {
                }
                break;
            case 9:
                if (!arePresentForEquals(obj, obj2, i) || !SchemaUtil.safeEquals(UnsafeUtil.getObject(obj, jOffset), UnsafeUtil.getObject(obj2, jOffset))) {
                }
                break;
            case 10:
                if (!arePresentForEquals(obj, obj2, i) || !SchemaUtil.safeEquals(UnsafeUtil.getObject(obj, jOffset), UnsafeUtil.getObject(obj2, jOffset))) {
                }
                break;
            case 11:
                if (!arePresentForEquals(obj, obj2, i) || UnsafeUtil.getInt(obj, jOffset) != UnsafeUtil.getInt(obj2, jOffset)) {
                }
                break;
            case 12:
                if (!arePresentForEquals(obj, obj2, i) || UnsafeUtil.getInt(obj, jOffset) != UnsafeUtil.getInt(obj2, jOffset)) {
                }
                break;
            case 13:
                if (!arePresentForEquals(obj, obj2, i) || UnsafeUtil.getInt(obj, jOffset) != UnsafeUtil.getInt(obj2, jOffset)) {
                }
                break;
            case 14:
                if (!arePresentForEquals(obj, obj2, i) || UnsafeUtil.getLong(obj, jOffset) != UnsafeUtil.getLong(obj2, jOffset)) {
                }
                break;
            case 15:
                if (!arePresentForEquals(obj, obj2, i) || UnsafeUtil.getInt(obj, jOffset) != UnsafeUtil.getInt(obj2, jOffset)) {
                }
                break;
            case 16:
                if (!arePresentForEquals(obj, obj2, i) || UnsafeUtil.getLong(obj, jOffset) != UnsafeUtil.getLong(obj2, jOffset)) {
                }
                break;
            case 17:
                if (!arePresentForEquals(obj, obj2, i) || !SchemaUtil.safeEquals(UnsafeUtil.getObject(obj, jOffset), UnsafeUtil.getObject(obj2, jOffset))) {
                }
                break;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
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
                if (!isOneofCaseEqual(obj, obj2, i) || !SchemaUtil.safeEquals(UnsafeUtil.getObject(obj, jOffset), UnsafeUtil.getObject(obj2, jOffset))) {
                }
                break;
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public int hashCode(Object obj) {
        int i;
        int iHashLong;
        int length = this.buffer.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i3);
            int iNumberAt = numberAt(i3);
            long jOffset = offset(iTypeAndOffsetAt);
            int iHashCode = 37;
            switch (type(iTypeAndOffsetAt)) {
                case 0:
                    i = i2 * 53;
                    iHashLong = Internal.hashLong(Double.doubleToLongBits(UnsafeUtil.getDouble(obj, jOffset)));
                    i2 = i + iHashLong;
                    break;
                case 1:
                    i = i2 * 53;
                    iHashLong = Float.floatToIntBits(UnsafeUtil.getFloat(obj, jOffset));
                    i2 = i + iHashLong;
                    break;
                case 2:
                    i = i2 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(obj, jOffset));
                    i2 = i + iHashLong;
                    break;
                case 3:
                    i = i2 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(obj, jOffset));
                    i2 = i + iHashLong;
                    break;
                case 4:
                    i = i2 * 53;
                    iHashLong = UnsafeUtil.getInt(obj, jOffset);
                    i2 = i + iHashLong;
                    break;
                case 5:
                    i = i2 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(obj, jOffset));
                    i2 = i + iHashLong;
                    break;
                case 6:
                    i = i2 * 53;
                    iHashLong = UnsafeUtil.getInt(obj, jOffset);
                    i2 = i + iHashLong;
                    break;
                case 7:
                    i = i2 * 53;
                    iHashLong = Internal.hashBoolean(UnsafeUtil.getBoolean(obj, jOffset));
                    i2 = i + iHashLong;
                    break;
                case 8:
                    i = i2 * 53;
                    iHashLong = ((String) UnsafeUtil.getObject(obj, jOffset)).hashCode();
                    i2 = i + iHashLong;
                    break;
                case 9:
                    Object object = UnsafeUtil.getObject(obj, jOffset);
                    if (object != null) {
                        iHashCode = object.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 10:
                    i = i2 * 53;
                    iHashLong = UnsafeUtil.getObject(obj, jOffset).hashCode();
                    i2 = i + iHashLong;
                    break;
                case 11:
                    i = i2 * 53;
                    iHashLong = UnsafeUtil.getInt(obj, jOffset);
                    i2 = i + iHashLong;
                    break;
                case 12:
                    i = i2 * 53;
                    iHashLong = UnsafeUtil.getInt(obj, jOffset);
                    i2 = i + iHashLong;
                    break;
                case 13:
                    i = i2 * 53;
                    iHashLong = UnsafeUtil.getInt(obj, jOffset);
                    i2 = i + iHashLong;
                    break;
                case 14:
                    i = i2 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(obj, jOffset));
                    i2 = i + iHashLong;
                    break;
                case 15:
                    i = i2 * 53;
                    iHashLong = UnsafeUtil.getInt(obj, jOffset);
                    i2 = i + iHashLong;
                    break;
                case 16:
                    i = i2 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(obj, jOffset));
                    i2 = i + iHashLong;
                    break;
                case 17:
                    Object object2 = UnsafeUtil.getObject(obj, jOffset);
                    if (object2 != null) {
                        iHashCode = object2.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
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
                    i = i2 * 53;
                    iHashLong = UnsafeUtil.getObject(obj, jOffset).hashCode();
                    i2 = i + iHashLong;
                    break;
                case 50:
                    i = i2 * 53;
                    iHashLong = UnsafeUtil.getObject(obj, jOffset).hashCode();
                    i2 = i + iHashLong;
                    break;
                case 51:
                    if (isOneofPresent(obj, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = Internal.hashLong(Double.doubleToLongBits(oneofDoubleAt(obj, jOffset)));
                        i2 = i + iHashLong;
                    }
                    break;
                case 52:
                    if (isOneofPresent(obj, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = Float.floatToIntBits(oneofFloatAt(obj, jOffset));
                        i2 = i + iHashLong;
                    }
                    break;
                case 53:
                    if (isOneofPresent(obj, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(obj, jOffset));
                        i2 = i + iHashLong;
                    }
                    break;
                case 54:
                    if (isOneofPresent(obj, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(obj, jOffset));
                        i2 = i + iHashLong;
                    }
                    break;
                case 55:
                    if (isOneofPresent(obj, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = oneofIntAt(obj, jOffset);
                        i2 = i + iHashLong;
                    }
                    break;
                case 56:
                    if (isOneofPresent(obj, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(obj, jOffset));
                        i2 = i + iHashLong;
                    }
                    break;
                case 57:
                    if (isOneofPresent(obj, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = oneofIntAt(obj, jOffset);
                        i2 = i + iHashLong;
                    }
                    break;
                case 58:
                    if (isOneofPresent(obj, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = Internal.hashBoolean(oneofBooleanAt(obj, jOffset));
                        i2 = i + iHashLong;
                    }
                    break;
                case 59:
                    if (isOneofPresent(obj, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = ((String) UnsafeUtil.getObject(obj, jOffset)).hashCode();
                        i2 = i + iHashLong;
                    }
                    break;
                case 60:
                    if (isOneofPresent(obj, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = UnsafeUtil.getObject(obj, jOffset).hashCode();
                        i2 = i + iHashLong;
                    }
                    break;
                case 61:
                    if (isOneofPresent(obj, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = UnsafeUtil.getObject(obj, jOffset).hashCode();
                        i2 = i + iHashLong;
                    }
                    break;
                case 62:
                    if (isOneofPresent(obj, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = oneofIntAt(obj, jOffset);
                        i2 = i + iHashLong;
                    }
                    break;
                case 63:
                    if (isOneofPresent(obj, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = oneofIntAt(obj, jOffset);
                        i2 = i + iHashLong;
                    }
                    break;
                case 64:
                    if (isOneofPresent(obj, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = oneofIntAt(obj, jOffset);
                        i2 = i + iHashLong;
                    }
                    break;
                case 65:
                    if (isOneofPresent(obj, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(obj, jOffset));
                        i2 = i + iHashLong;
                    }
                    break;
                case 66:
                    if (isOneofPresent(obj, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = oneofIntAt(obj, jOffset);
                        i2 = i + iHashLong;
                    }
                    break;
                case 67:
                    if (isOneofPresent(obj, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(obj, jOffset));
                        i2 = i + iHashLong;
                    }
                    break;
                case 68:
                    if (isOneofPresent(obj, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = UnsafeUtil.getObject(obj, jOffset).hashCode();
                        i2 = i + iHashLong;
                    }
                    break;
            }
        }
        int iHashCode2 = (i2 * 53) + this.unknownFieldSchema.getFromMessage(obj).hashCode();
        return this.hasExtensions ? (iHashCode2 * 53) + this.extensionSchema.getExtensions(obj).hashCode() : iHashCode2;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void mergeFrom(Object obj, Object obj2) {
        checkMutable(obj);
        obj2.getClass();
        for (int i = 0; i < this.buffer.length; i += 3) {
            mergeSingleField(obj, obj2, i);
        }
        SchemaUtil.mergeUnknownFields(this.unknownFieldSchema, obj, obj2);
        if (this.hasExtensions) {
            SchemaUtil.mergeExtensions(this.extensionSchema, obj, obj2);
        }
    }

    private void mergeSingleField(Object obj, Object obj2, int i) {
        int iTypeAndOffsetAt = typeAndOffsetAt(i);
        long jOffset = offset(iTypeAndOffsetAt);
        int iNumberAt = numberAt(i);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                if (isFieldPresent(obj2, i)) {
                    UnsafeUtil.putDouble(obj, jOffset, UnsafeUtil.getDouble(obj2, jOffset));
                    setFieldPresent(obj, i);
                }
                break;
            case 1:
                if (isFieldPresent(obj2, i)) {
                    UnsafeUtil.putFloat(obj, jOffset, UnsafeUtil.getFloat(obj2, jOffset));
                    setFieldPresent(obj, i);
                }
                break;
            case 2:
                if (isFieldPresent(obj2, i)) {
                    UnsafeUtil.putLong(obj, jOffset, UnsafeUtil.getLong(obj2, jOffset));
                    setFieldPresent(obj, i);
                }
                break;
            case 3:
                if (isFieldPresent(obj2, i)) {
                    UnsafeUtil.putLong(obj, jOffset, UnsafeUtil.getLong(obj2, jOffset));
                    setFieldPresent(obj, i);
                }
                break;
            case 4:
                if (isFieldPresent(obj2, i)) {
                    UnsafeUtil.putInt(obj, jOffset, UnsafeUtil.getInt(obj2, jOffset));
                    setFieldPresent(obj, i);
                }
                break;
            case 5:
                if (isFieldPresent(obj2, i)) {
                    UnsafeUtil.putLong(obj, jOffset, UnsafeUtil.getLong(obj2, jOffset));
                    setFieldPresent(obj, i);
                }
                break;
            case 6:
                if (isFieldPresent(obj2, i)) {
                    UnsafeUtil.putInt(obj, jOffset, UnsafeUtil.getInt(obj2, jOffset));
                    setFieldPresent(obj, i);
                }
                break;
            case 7:
                if (isFieldPresent(obj2, i)) {
                    UnsafeUtil.putBoolean(obj, jOffset, UnsafeUtil.getBoolean(obj2, jOffset));
                    setFieldPresent(obj, i);
                }
                break;
            case 8:
                if (isFieldPresent(obj2, i)) {
                    UnsafeUtil.putObject(obj, jOffset, UnsafeUtil.getObject(obj2, jOffset));
                    setFieldPresent(obj, i);
                }
                break;
            case 9:
                mergeMessage(obj, obj2, i);
                break;
            case 10:
                if (isFieldPresent(obj2, i)) {
                    UnsafeUtil.putObject(obj, jOffset, UnsafeUtil.getObject(obj2, jOffset));
                    setFieldPresent(obj, i);
                }
                break;
            case 11:
                if (isFieldPresent(obj2, i)) {
                    UnsafeUtil.putInt(obj, jOffset, UnsafeUtil.getInt(obj2, jOffset));
                    setFieldPresent(obj, i);
                }
                break;
            case 12:
                if (isFieldPresent(obj2, i)) {
                    UnsafeUtil.putInt(obj, jOffset, UnsafeUtil.getInt(obj2, jOffset));
                    setFieldPresent(obj, i);
                }
                break;
            case 13:
                if (isFieldPresent(obj2, i)) {
                    UnsafeUtil.putInt(obj, jOffset, UnsafeUtil.getInt(obj2, jOffset));
                    setFieldPresent(obj, i);
                }
                break;
            case 14:
                if (isFieldPresent(obj2, i)) {
                    UnsafeUtil.putLong(obj, jOffset, UnsafeUtil.getLong(obj2, jOffset));
                    setFieldPresent(obj, i);
                }
                break;
            case 15:
                if (isFieldPresent(obj2, i)) {
                    UnsafeUtil.putInt(obj, jOffset, UnsafeUtil.getInt(obj2, jOffset));
                    setFieldPresent(obj, i);
                }
                break;
            case 16:
                if (isFieldPresent(obj2, i)) {
                    UnsafeUtil.putLong(obj, jOffset, UnsafeUtil.getLong(obj2, jOffset));
                    setFieldPresent(obj, i);
                }
                break;
            case 17:
                mergeMessage(obj, obj2, i);
                break;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
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
                this.listFieldSchema.mergeListsAt(obj, obj2, jOffset);
                break;
            case 50:
                SchemaUtil.mergeMap(this.mapFieldSchema, obj, obj2, jOffset);
                break;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (isOneofPresent(obj2, iNumberAt, i)) {
                    UnsafeUtil.putObject(obj, jOffset, UnsafeUtil.getObject(obj2, jOffset));
                    setOneofPresent(obj, iNumberAt, i);
                }
                break;
            case 60:
                mergeOneofMessage(obj, obj2, i);
                break;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (isOneofPresent(obj2, iNumberAt, i)) {
                    UnsafeUtil.putObject(obj, jOffset, UnsafeUtil.getObject(obj2, jOffset));
                    setOneofPresent(obj, iNumberAt, i);
                }
                break;
            case 68:
                mergeOneofMessage(obj, obj2, i);
                break;
        }
    }

    private void mergeMessage(Object obj, Object obj2, int i) {
        if (isFieldPresent(obj2, i)) {
            long jOffset = offset(typeAndOffsetAt(i));
            Unsafe unsafe = UNSAFE;
            Object object = unsafe.getObject(obj2, jOffset);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + numberAt(i) + " is present but null: " + obj2);
            }
            Schema messageFieldSchema = getMessageFieldSchema(i);
            if (!isFieldPresent(obj, i)) {
                if (!isMutable(object)) {
                    unsafe.putObject(obj, jOffset, object);
                } else {
                    Object objNewInstance = messageFieldSchema.newInstance();
                    messageFieldSchema.mergeFrom(objNewInstance, object);
                    unsafe.putObject(obj, jOffset, objNewInstance);
                }
                setFieldPresent(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, jOffset);
            if (!isMutable(object2)) {
                Object objNewInstance2 = messageFieldSchema.newInstance();
                messageFieldSchema.mergeFrom(objNewInstance2, object2);
                unsafe.putObject(obj, jOffset, objNewInstance2);
                object2 = objNewInstance2;
            }
            messageFieldSchema.mergeFrom(object2, object);
        }
    }

    private void mergeOneofMessage(Object obj, Object obj2, int i) {
        int iNumberAt = numberAt(i);
        if (isOneofPresent(obj2, iNumberAt, i)) {
            long jOffset = offset(typeAndOffsetAt(i));
            Unsafe unsafe = UNSAFE;
            Object object = unsafe.getObject(obj2, jOffset);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + numberAt(i) + " is present but null: " + obj2);
            }
            Schema messageFieldSchema = getMessageFieldSchema(i);
            if (!isOneofPresent(obj, iNumberAt, i)) {
                if (!isMutable(object)) {
                    unsafe.putObject(obj, jOffset, object);
                } else {
                    Object objNewInstance = messageFieldSchema.newInstance();
                    messageFieldSchema.mergeFrom(objNewInstance, object);
                    unsafe.putObject(obj, jOffset, objNewInstance);
                }
                setOneofPresent(obj, iNumberAt, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, jOffset);
            if (!isMutable(object2)) {
                Object objNewInstance2 = messageFieldSchema.newInstance();
                messageFieldSchema.mergeFrom(objNewInstance2, object2);
                unsafe.putObject(obj, jOffset, objNewInstance2);
                object2 = objNewInstance2;
            }
            messageFieldSchema.mergeFrom(object2, object);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.datastore.preferences.protobuf.Schema
    public int getSerializedSize(Object obj) {
        int i;
        int iComputeDoubleSize;
        int iComputeFloatSize;
        int iComputeInt64Size;
        int iComputeSizeFixed64ListNoTag;
        int iComputeTagSize;
        int iComputeUInt32SizeNoTag;
        MessageSchema messageSchema = this;
        Object obj2 = obj;
        Unsafe unsafe = UNSAFE;
        int i2 = 1048575;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        while (i3 < messageSchema.buffer.length) {
            int iTypeAndOffsetAt = messageSchema.typeAndOffsetAt(i3);
            int iType = type(iTypeAndOffsetAt);
            int iNumberAt = messageSchema.numberAt(i3);
            int i7 = messageSchema.buffer[i3 + 2];
            int i8 = i7 & i2;
            if (iType <= 17) {
                if (i8 != i6) {
                    i4 = i8 == i2 ? 0 : unsafe.getInt(obj2, i8);
                    i6 = i8;
                }
                i = 1 << (i7 >>> 20);
            } else {
                i = 0;
            }
            int i9 = i5;
            long jOffset = offset(iTypeAndOffsetAt);
            if (iType < FieldType.DOUBLE_LIST_PACKED.m188id() || iType > FieldType.SINT64_LIST_PACKED.m188id()) {
                i8 = 0;
            }
            switch (iType) {
                case 0:
                    if (messageSchema.isFieldPresent(obj2, i3, i6, i4, i)) {
                        iComputeDoubleSize = CodedOutputStream.computeDoubleSize(iNumberAt, 0.0d);
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 1:
                    if (messageSchema.isFieldPresent(obj2, i3, i6, i4, i)) {
                        iComputeFloatSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i5 = i9 + iComputeFloatSize;
                        messageSchema = this;
                        obj2 = obj;
                    }
                    messageSchema = this;
                    obj2 = obj;
                    i5 = i9;
                    break;
                case 2:
                    if (messageSchema.isFieldPresent(obj2, i3, i6, i4, i)) {
                        iComputeInt64Size = CodedOutputStream.computeInt64Size(iNumberAt, unsafe.getLong(obj2, jOffset));
                        i5 = i9 + iComputeInt64Size;
                        messageSchema = this;
                    }
                    messageSchema = this;
                    i5 = i9;
                    break;
                case 3:
                    if (messageSchema.isFieldPresent(obj2, i3, i6, i4, i)) {
                        iComputeInt64Size = CodedOutputStream.computeUInt64Size(iNumberAt, unsafe.getLong(obj2, jOffset));
                        i5 = i9 + iComputeInt64Size;
                        messageSchema = this;
                    }
                    messageSchema = this;
                    i5 = i9;
                    break;
                case 4:
                    if (messageSchema.isFieldPresent(obj2, i3, i6, i4, i)) {
                        iComputeInt64Size = CodedOutputStream.computeInt32Size(iNumberAt, unsafe.getInt(obj2, jOffset));
                        i5 = i9 + iComputeInt64Size;
                        messageSchema = this;
                    }
                    messageSchema = this;
                    i5 = i9;
                    break;
                case 5:
                    if (messageSchema.isFieldPresent(obj2, i3, i6, i4, i)) {
                        iComputeFloatSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i5 = i9 + iComputeFloatSize;
                        messageSchema = this;
                        obj2 = obj;
                    }
                    messageSchema = this;
                    obj2 = obj;
                    i5 = i9;
                    break;
                case 6:
                    if (messageSchema.isFieldPresent(obj2, i3, i6, i4, i)) {
                        iComputeFloatSize = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i5 = i9 + iComputeFloatSize;
                        messageSchema = this;
                        obj2 = obj;
                    }
                    messageSchema = this;
                    obj2 = obj;
                    i5 = i9;
                    break;
                case 7:
                    if (messageSchema.isFieldPresent(obj2, i3, i6, i4, i)) {
                        iComputeFloatSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i5 = i9 + iComputeFloatSize;
                        messageSchema = this;
                        obj2 = obj;
                    }
                    messageSchema = this;
                    obj2 = obj;
                    i5 = i9;
                    break;
                case 8:
                    if (messageSchema.isFieldPresent(obj2, i3, i6, i4, i)) {
                        Object object = unsafe.getObject(obj2, jOffset);
                        if (object instanceof ByteString) {
                            iComputeInt64Size = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object);
                        } else {
                            iComputeInt64Size = CodedOutputStream.computeStringSize(iNumberAt, (String) object);
                        }
                        i5 = i9 + iComputeInt64Size;
                        messageSchema = this;
                    }
                    messageSchema = this;
                    i5 = i9;
                    break;
                case 9:
                    if (messageSchema.isFieldPresent(obj2, i3, i6, i4, i)) {
                        iComputeDoubleSize = SchemaUtil.computeSizeMessage(iNumberAt, unsafe.getObject(obj2, jOffset), messageSchema.getMessageFieldSchema(i3));
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 10:
                    if (messageSchema.isFieldPresent(obj2, i3, i6, i4, i)) {
                        iComputeInt64Size = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) unsafe.getObject(obj2, jOffset));
                        i5 = i9 + iComputeInt64Size;
                        messageSchema = this;
                    }
                    messageSchema = this;
                    i5 = i9;
                    break;
                case 11:
                    if (messageSchema.isFieldPresent(obj2, i3, i6, i4, i)) {
                        iComputeInt64Size = CodedOutputStream.computeUInt32Size(iNumberAt, unsafe.getInt(obj2, jOffset));
                        i5 = i9 + iComputeInt64Size;
                        messageSchema = this;
                    }
                    messageSchema = this;
                    i5 = i9;
                    break;
                case 12:
                    if (messageSchema.isFieldPresent(obj2, i3, i6, i4, i)) {
                        iComputeInt64Size = CodedOutputStream.computeEnumSize(iNumberAt, unsafe.getInt(obj2, jOffset));
                        i5 = i9 + iComputeInt64Size;
                        messageSchema = this;
                    }
                    messageSchema = this;
                    i5 = i9;
                    break;
                case 13:
                    if (messageSchema.isFieldPresent(obj2, i3, i6, i4, i)) {
                        iComputeFloatSize = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i5 = i9 + iComputeFloatSize;
                        messageSchema = this;
                        obj2 = obj;
                    }
                    messageSchema = this;
                    obj2 = obj;
                    i5 = i9;
                    break;
                case 14:
                    if (messageSchema.isFieldPresent(obj2, i3, i6, i4, i)) {
                        iComputeFloatSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i5 = i9 + iComputeFloatSize;
                        messageSchema = this;
                        obj2 = obj;
                    }
                    messageSchema = this;
                    obj2 = obj;
                    i5 = i9;
                    break;
                case 15:
                    if (messageSchema.isFieldPresent(obj2, i3, i6, i4, i)) {
                        iComputeInt64Size = CodedOutputStream.computeSInt32Size(iNumberAt, unsafe.getInt(obj2, jOffset));
                        i5 = i9 + iComputeInt64Size;
                        messageSchema = this;
                    }
                    messageSchema = this;
                    i5 = i9;
                    break;
                case 16:
                    if (messageSchema.isFieldPresent(obj2, i3, i6, i4, i)) {
                        iComputeInt64Size = CodedOutputStream.computeSInt64Size(iNumberAt, unsafe.getLong(obj2, jOffset));
                        i5 = i9 + iComputeInt64Size;
                        messageSchema = this;
                    }
                    messageSchema = this;
                    i5 = i9;
                    break;
                case 17:
                    if (messageSchema.isFieldPresent(obj2, i3, i6, i4, i)) {
                        iComputeDoubleSize = CodedOutputStream.computeGroupSize(iNumberAt, (MessageLite) unsafe.getObject(obj2, jOffset), messageSchema.getMessageFieldSchema(i3));
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 18:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed64List(iNumberAt, (List) unsafe.getObject(obj2, jOffset), false);
                    i5 = i9 + iComputeDoubleSize;
                    break;
                case 19:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed32List(iNumberAt, (List) unsafe.getObject(obj2, jOffset), false);
                    i5 = i9 + iComputeDoubleSize;
                    break;
                case 20:
                    iComputeDoubleSize = SchemaUtil.computeSizeInt64List(iNumberAt, (List) unsafe.getObject(obj2, jOffset), false);
                    i5 = i9 + iComputeDoubleSize;
                    break;
                case 21:
                    iComputeDoubleSize = SchemaUtil.computeSizeUInt64List(iNumberAt, (List) unsafe.getObject(obj2, jOffset), false);
                    i5 = i9 + iComputeDoubleSize;
                    break;
                case 22:
                    iComputeDoubleSize = SchemaUtil.computeSizeInt32List(iNumberAt, (List) unsafe.getObject(obj2, jOffset), false);
                    i5 = i9 + iComputeDoubleSize;
                    break;
                case 23:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed64List(iNumberAt, (List) unsafe.getObject(obj2, jOffset), false);
                    i5 = i9 + iComputeDoubleSize;
                    break;
                case 24:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed32List(iNumberAt, (List) unsafe.getObject(obj2, jOffset), false);
                    i5 = i9 + iComputeDoubleSize;
                    break;
                case 25:
                    iComputeDoubleSize = SchemaUtil.computeSizeBoolList(iNumberAt, (List) unsafe.getObject(obj2, jOffset), false);
                    i5 = i9 + iComputeDoubleSize;
                    break;
                case 26:
                    iComputeDoubleSize = SchemaUtil.computeSizeStringList(iNumberAt, (List) unsafe.getObject(obj2, jOffset));
                    i5 = i9 + iComputeDoubleSize;
                    break;
                case 27:
                    iComputeDoubleSize = SchemaUtil.computeSizeMessageList(iNumberAt, (List) unsafe.getObject(obj2, jOffset), messageSchema.getMessageFieldSchema(i3));
                    i5 = i9 + iComputeDoubleSize;
                    break;
                case 28:
                    iComputeDoubleSize = SchemaUtil.computeSizeByteStringList(iNumberAt, (List) unsafe.getObject(obj2, jOffset));
                    i5 = i9 + iComputeDoubleSize;
                    break;
                case 29:
                    iComputeDoubleSize = SchemaUtil.computeSizeUInt32List(iNumberAt, (List) unsafe.getObject(obj2, jOffset), false);
                    i5 = i9 + iComputeDoubleSize;
                    break;
                case 30:
                    iComputeDoubleSize = SchemaUtil.computeSizeEnumList(iNumberAt, (List) unsafe.getObject(obj2, jOffset), false);
                    i5 = i9 + iComputeDoubleSize;
                    break;
                case 31:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed32List(iNumberAt, (List) unsafe.getObject(obj2, jOffset), false);
                    i5 = i9 + iComputeDoubleSize;
                    break;
                case 32:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed64List(iNumberAt, (List) unsafe.getObject(obj2, jOffset), false);
                    i5 = i9 + iComputeDoubleSize;
                    break;
                case 33:
                    iComputeDoubleSize = SchemaUtil.computeSizeSInt32List(iNumberAt, (List) unsafe.getObject(obj2, jOffset), false);
                    i5 = i9 + iComputeDoubleSize;
                    break;
                case 34:
                    iComputeDoubleSize = SchemaUtil.computeSizeSInt64List(iNumberAt, (List) unsafe.getObject(obj2, jOffset), false);
                    i5 = i9 + iComputeDoubleSize;
                    break;
                case 35:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(obj2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (messageSchema.useCachedSizeField) {
                            unsafe.putInt(obj2, i8, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i5 = i9 + iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                    }
                    i5 = i9;
                    break;
                case 36:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(obj2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (messageSchema.useCachedSizeField) {
                            unsafe.putInt(obj2, i8, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i5 = i9 + iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                    }
                    i5 = i9;
                    break;
                case 37:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeInt64ListNoTag((List) unsafe.getObject(obj2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (messageSchema.useCachedSizeField) {
                            unsafe.putInt(obj2, i8, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i5 = i9 + iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                    }
                    i5 = i9;
                    break;
                case 38:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeUInt64ListNoTag((List) unsafe.getObject(obj2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (messageSchema.useCachedSizeField) {
                            unsafe.putInt(obj2, i8, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i5 = i9 + iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                    }
                    i5 = i9;
                    break;
                case 39:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeInt32ListNoTag((List) unsafe.getObject(obj2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (messageSchema.useCachedSizeField) {
                            unsafe.putInt(obj2, i8, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i5 = i9 + iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                    }
                    i5 = i9;
                    break;
                case 40:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(obj2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (messageSchema.useCachedSizeField) {
                            unsafe.putInt(obj2, i8, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i5 = i9 + iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                    }
                    i5 = i9;
                    break;
                case 41:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(obj2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (messageSchema.useCachedSizeField) {
                            unsafe.putInt(obj2, i8, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i5 = i9 + iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                    }
                    i5 = i9;
                    break;
                case 42:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeBoolListNoTag((List) unsafe.getObject(obj2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (messageSchema.useCachedSizeField) {
                            unsafe.putInt(obj2, i8, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i5 = i9 + iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                    }
                    i5 = i9;
                    break;
                case 43:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeUInt32ListNoTag((List) unsafe.getObject(obj2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (messageSchema.useCachedSizeField) {
                            unsafe.putInt(obj2, i8, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i5 = i9 + iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                    }
                    i5 = i9;
                    break;
                case 44:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeEnumListNoTag((List) unsafe.getObject(obj2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (messageSchema.useCachedSizeField) {
                            unsafe.putInt(obj2, i8, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i5 = i9 + iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                    }
                    i5 = i9;
                    break;
                case 45:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(obj2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (messageSchema.useCachedSizeField) {
                            unsafe.putInt(obj2, i8, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i5 = i9 + iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                    }
                    i5 = i9;
                    break;
                case 46:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(obj2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (messageSchema.useCachedSizeField) {
                            unsafe.putInt(obj2, i8, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i5 = i9 + iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                    }
                    i5 = i9;
                    break;
                case 47:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeSInt32ListNoTag((List) unsafe.getObject(obj2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (messageSchema.useCachedSizeField) {
                            unsafe.putInt(obj2, i8, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i5 = i9 + iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                    }
                    i5 = i9;
                    break;
                case 48:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeSInt64ListNoTag((List) unsafe.getObject(obj2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (messageSchema.useCachedSizeField) {
                            unsafe.putInt(obj2, i8, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i5 = i9 + iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                    }
                    i5 = i9;
                    break;
                case 49:
                    iComputeDoubleSize = SchemaUtil.computeSizeGroupList(iNumberAt, (List) unsafe.getObject(obj2, jOffset), messageSchema.getMessageFieldSchema(i3));
                    i5 = i9 + iComputeDoubleSize;
                    break;
                case 50:
                    iComputeDoubleSize = messageSchema.mapFieldSchema.getSerializedSize(iNumberAt, unsafe.getObject(obj2, jOffset), messageSchema.getMapFieldDefaultEntry(i3));
                    i5 = i9 + iComputeDoubleSize;
                    break;
                case 51:
                    if (messageSchema.isOneofPresent(obj2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeDoubleSize(iNumberAt, 0.0d);
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 52:
                    if (messageSchema.isOneofPresent(obj2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 53:
                    if (messageSchema.isOneofPresent(obj2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt64Size(iNumberAt, oneofLongAt(obj2, jOffset));
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 54:
                    if (messageSchema.isOneofPresent(obj2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt64Size(iNumberAt, oneofLongAt(obj2, jOffset));
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 55:
                    if (messageSchema.isOneofPresent(obj2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt32Size(iNumberAt, oneofIntAt(obj2, jOffset));
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 56:
                    if (messageSchema.isOneofPresent(obj2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 57:
                    if (messageSchema.isOneofPresent(obj2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 58:
                    if (messageSchema.isOneofPresent(obj2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 59:
                    if (messageSchema.isOneofPresent(obj2, iNumberAt, i3)) {
                        Object object2 = unsafe.getObject(obj2, jOffset);
                        if (object2 instanceof ByteString) {
                            iComputeDoubleSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object2);
                        } else {
                            iComputeDoubleSize = CodedOutputStream.computeStringSize(iNumberAt, (String) object2);
                        }
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 60:
                    if (messageSchema.isOneofPresent(obj2, iNumberAt, i3)) {
                        iComputeDoubleSize = SchemaUtil.computeSizeMessage(iNumberAt, unsafe.getObject(obj2, jOffset), messageSchema.getMessageFieldSchema(i3));
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 61:
                    if (messageSchema.isOneofPresent(obj2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) unsafe.getObject(obj2, jOffset));
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 62:
                    if (messageSchema.isOneofPresent(obj2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt32Size(iNumberAt, oneofIntAt(obj2, jOffset));
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 63:
                    if (messageSchema.isOneofPresent(obj2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeEnumSize(iNumberAt, oneofIntAt(obj2, jOffset));
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 64:
                    if (messageSchema.isOneofPresent(obj2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 65:
                    if (messageSchema.isOneofPresent(obj2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 66:
                    if (messageSchema.isOneofPresent(obj2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt32Size(iNumberAt, oneofIntAt(obj2, jOffset));
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 67:
                    if (messageSchema.isOneofPresent(obj2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt64Size(iNumberAt, oneofLongAt(obj2, jOffset));
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                case 68:
                    if (messageSchema.isOneofPresent(obj2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeGroupSize(iNumberAt, (MessageLite) unsafe.getObject(obj2, jOffset), messageSchema.getMessageFieldSchema(i3));
                        i5 = i9 + iComputeDoubleSize;
                    }
                    i5 = i9;
                    break;
                default:
                    i5 = i9;
                    break;
            }
            i3 += 3;
            i2 = 1048575;
        }
        int unknownFieldsSerializedSize = i5 + messageSchema.getUnknownFieldsSerializedSize(messageSchema.unknownFieldSchema, obj2);
        return messageSchema.hasExtensions ? unknownFieldsSerializedSize + messageSchema.extensionSchema.getExtensions(obj2).getSerializedSize() : unknownFieldsSerializedSize;
    }

    private int getUnknownFieldsSerializedSize(UnknownFieldSchema unknownFieldSchema, Object obj) {
        return unknownFieldSchema.getSerializedSize(unknownFieldSchema.getFromMessage(obj));
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void writeTo(Object obj, Writer writer) {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            writeFieldsInDescendingOrder(obj, writer);
        } else {
            writeFieldsInAscendingOrder(obj, writer);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void writeFieldsInAscendingOrder(Object obj, Writer writer) {
        Map.Entry entry;
        Iterator it;
        boolean z;
        Map.Entry entry2;
        int i;
        int i2;
        int i3;
        boolean z2;
        MessageSchema messageSchema = this;
        if (messageSchema.hasExtensions) {
            FieldSet extensions = messageSchema.extensionSchema.getExtensions(obj);
            if (extensions.isEmpty()) {
                entry = null;
                it = null;
            } else {
                Iterator it2 = extensions.iterator();
                entry = (Map.Entry) it2.next();
                it = it2;
            }
        }
        int length = messageSchema.buffer.length;
        Unsafe unsafe = UNSAFE;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (i5 < length) {
            int iTypeAndOffsetAt = messageSchema.typeAndOffsetAt(i5);
            int iNumberAt = messageSchema.numberAt(i5);
            int iType = type(iTypeAndOffsetAt);
            if (iType <= 17) {
                int i7 = messageSchema.buffer[i5 + 2];
                z = true;
                int i8 = i7 & 1048575;
                if (i8 != i4) {
                    i6 = i8 == 1048575 ? 0 : unsafe.getInt(obj, i8);
                    i4 = i8;
                }
                int i9 = 1 << (i7 >>> 20);
                entry2 = entry;
                i = i4;
                i2 = i6;
                i3 = i9;
            } else {
                z = true;
                entry2 = entry;
                i = i4;
                i2 = i6;
                i3 = 0;
            }
            while (entry2 != null && messageSchema.extensionSchema.extensionNumber(entry2) <= iNumberAt) {
                messageSchema.extensionSchema.serializeExtension(writer, entry2);
                entry2 = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            long jOffset = offset(iTypeAndOffsetAt);
            switch (iType) {
                case 0:
                    if (messageSchema.isFieldPresent(obj, i5, i, i2, i3)) {
                        writer.writeDouble(iNumberAt, doubleAt(obj, jOffset));
                    }
                    break;
                case 1:
                    if (messageSchema.isFieldPresent(obj, i5, i, i2, i3)) {
                        writer.writeFloat(iNumberAt, floatAt(obj, jOffset));
                    }
                    messageSchema = this;
                    break;
                case 2:
                    if (messageSchema.isFieldPresent(obj, i5, i, i2, i3)) {
                        writer.writeInt64(iNumberAt, unsafe.getLong(obj, jOffset));
                    }
                    messageSchema = this;
                    break;
                case 3:
                    if (messageSchema.isFieldPresent(obj, i5, i, i2, i3)) {
                        writer.writeUInt64(iNumberAt, unsafe.getLong(obj, jOffset));
                    }
                    messageSchema = this;
                    break;
                case 4:
                    if (messageSchema.isFieldPresent(obj, i5, i, i2, i3)) {
                        writer.writeInt32(iNumberAt, unsafe.getInt(obj, jOffset));
                    }
                    messageSchema = this;
                    break;
                case 5:
                    if (messageSchema.isFieldPresent(obj, i5, i, i2, i3)) {
                        writer.writeFixed64(iNumberAt, unsafe.getLong(obj, jOffset));
                    }
                    messageSchema = this;
                    break;
                case 6:
                    if (messageSchema.isFieldPresent(obj, i5, i, i2, i3)) {
                        writer.writeFixed32(iNumberAt, unsafe.getInt(obj, jOffset));
                    }
                    messageSchema = this;
                    break;
                case 7:
                    if (messageSchema.isFieldPresent(obj, i5, i, i2, i3)) {
                        writer.writeBool(iNumberAt, booleanAt(obj, jOffset));
                    }
                    messageSchema = this;
                    break;
                case 8:
                    if (messageSchema.isFieldPresent(obj, i5, i, i2, i3)) {
                        messageSchema.writeString(iNumberAt, unsafe.getObject(obj, jOffset), writer);
                    }
                    break;
                case 9:
                    if (messageSchema.isFieldPresent(obj, i5, i, i2, i3)) {
                        writer.writeMessage(iNumberAt, unsafe.getObject(obj, jOffset), messageSchema.getMessageFieldSchema(i5));
                    }
                    break;
                case 10:
                    if (messageSchema.isFieldPresent(obj, i5, i, i2, i3)) {
                        writer.writeBytes(iNumberAt, (ByteString) unsafe.getObject(obj, jOffset));
                    }
                    messageSchema = this;
                    break;
                case 11:
                    if (messageSchema.isFieldPresent(obj, i5, i, i2, i3)) {
                        writer.writeUInt32(iNumberAt, unsafe.getInt(obj, jOffset));
                    }
                    messageSchema = this;
                    break;
                case 12:
                    if (messageSchema.isFieldPresent(obj, i5, i, i2, i3)) {
                        writer.writeEnum(iNumberAt, unsafe.getInt(obj, jOffset));
                    }
                    messageSchema = this;
                    break;
                case 13:
                    if (messageSchema.isFieldPresent(obj, i5, i, i2, i3)) {
                        writer.writeSFixed32(iNumberAt, unsafe.getInt(obj, jOffset));
                    }
                    messageSchema = this;
                    break;
                case 14:
                    if (messageSchema.isFieldPresent(obj, i5, i, i2, i3)) {
                        writer.writeSFixed64(iNumberAt, unsafe.getLong(obj, jOffset));
                    }
                    messageSchema = this;
                    break;
                case 15:
                    if (messageSchema.isFieldPresent(obj, i5, i, i2, i3)) {
                        writer.writeSInt32(iNumberAt, unsafe.getInt(obj, jOffset));
                    }
                    messageSchema = this;
                    break;
                case 16:
                    if (messageSchema.isFieldPresent(obj, i5, i, i2, i3)) {
                        writer.writeSInt64(iNumberAt, unsafe.getLong(obj, jOffset));
                    }
                    messageSchema = this;
                    break;
                case 17:
                    if (messageSchema.isFieldPresent(obj, i5, i, i2, i3)) {
                        writer.writeGroup(iNumberAt, unsafe.getObject(obj, jOffset), messageSchema.getMessageFieldSchema(i5));
                    }
                    break;
                case 18:
                    SchemaUtil.writeDoubleList(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, false);
                    break;
                case 19:
                    SchemaUtil.writeFloatList(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, false);
                    break;
                case 20:
                    SchemaUtil.writeInt64List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, false);
                    break;
                case 21:
                    SchemaUtil.writeUInt64List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, false);
                    break;
                case 22:
                    SchemaUtil.writeInt32List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, false);
                    break;
                case 23:
                    SchemaUtil.writeFixed64List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, false);
                    break;
                case 24:
                    SchemaUtil.writeFixed32List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, false);
                    break;
                case 25:
                    SchemaUtil.writeBoolList(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, false);
                    break;
                case 26:
                    SchemaUtil.writeStringList(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer);
                    break;
                case 27:
                    SchemaUtil.writeMessageList(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, messageSchema.getMessageFieldSchema(i5));
                    break;
                case 28:
                    SchemaUtil.writeBytesList(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer);
                    break;
                case 29:
                    z2 = false;
                    SchemaUtil.writeUInt32List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, false);
                    break;
                case 30:
                    z2 = false;
                    SchemaUtil.writeEnumList(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, false);
                    break;
                case 31:
                    z2 = false;
                    SchemaUtil.writeSFixed32List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, false);
                    break;
                case 32:
                    z2 = false;
                    SchemaUtil.writeSFixed64List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, false);
                    break;
                case 33:
                    z2 = false;
                    SchemaUtil.writeSInt32List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, false);
                    break;
                case 34:
                    z2 = false;
                    SchemaUtil.writeSInt64List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, false);
                    break;
                case 35:
                    SchemaUtil.writeDoubleList(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, z);
                    break;
                case 36:
                    SchemaUtil.writeFloatList(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, z);
                    break;
                case 37:
                    SchemaUtil.writeInt64List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, z);
                    break;
                case 38:
                    SchemaUtil.writeUInt64List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, z);
                    break;
                case 39:
                    SchemaUtil.writeInt32List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, z);
                    break;
                case 40:
                    SchemaUtil.writeFixed64List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, z);
                    break;
                case 41:
                    SchemaUtil.writeFixed32List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, z);
                    break;
                case 42:
                    SchemaUtil.writeBoolList(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, z);
                    break;
                case 43:
                    SchemaUtil.writeUInt32List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, z);
                    break;
                case 44:
                    SchemaUtil.writeEnumList(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, z);
                    break;
                case 45:
                    SchemaUtil.writeSFixed32List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, z);
                    break;
                case 46:
                    SchemaUtil.writeSFixed64List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, z);
                    break;
                case 47:
                    SchemaUtil.writeSInt32List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, z);
                    break;
                case 48:
                    SchemaUtil.writeSInt64List(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, z);
                    break;
                case 49:
                    SchemaUtil.writeGroupList(messageSchema.numberAt(i5), (List) unsafe.getObject(obj, jOffset), writer, messageSchema.getMessageFieldSchema(i5));
                    break;
                case 50:
                    messageSchema.writeMapHelper(writer, iNumberAt, unsafe.getObject(obj, jOffset), i5);
                    break;
                case 51:
                    if (messageSchema.isOneofPresent(obj, iNumberAt, i5)) {
                        writer.writeDouble(iNumberAt, oneofDoubleAt(obj, jOffset));
                    }
                    break;
                case 52:
                    if (messageSchema.isOneofPresent(obj, iNumberAt, i5)) {
                        writer.writeFloat(iNumberAt, oneofFloatAt(obj, jOffset));
                    }
                    break;
                case 53:
                    if (messageSchema.isOneofPresent(obj, iNumberAt, i5)) {
                        writer.writeInt64(iNumberAt, oneofLongAt(obj, jOffset));
                    }
                    break;
                case 54:
                    if (messageSchema.isOneofPresent(obj, iNumberAt, i5)) {
                        writer.writeUInt64(iNumberAt, oneofLongAt(obj, jOffset));
                    }
                    break;
                case 55:
                    if (messageSchema.isOneofPresent(obj, iNumberAt, i5)) {
                        writer.writeInt32(iNumberAt, oneofIntAt(obj, jOffset));
                    }
                    break;
                case 56:
                    if (messageSchema.isOneofPresent(obj, iNumberAt, i5)) {
                        writer.writeFixed64(iNumberAt, oneofLongAt(obj, jOffset));
                    }
                    break;
                case 57:
                    if (messageSchema.isOneofPresent(obj, iNumberAt, i5)) {
                        writer.writeFixed32(iNumberAt, oneofIntAt(obj, jOffset));
                    }
                    break;
                case 58:
                    if (messageSchema.isOneofPresent(obj, iNumberAt, i5)) {
                        writer.writeBool(iNumberAt, oneofBooleanAt(obj, jOffset));
                    }
                    break;
                case 59:
                    if (messageSchema.isOneofPresent(obj, iNumberAt, i5)) {
                        messageSchema.writeString(iNumberAt, unsafe.getObject(obj, jOffset), writer);
                    }
                    break;
                case 60:
                    if (messageSchema.isOneofPresent(obj, iNumberAt, i5)) {
                        writer.writeMessage(iNumberAt, unsafe.getObject(obj, jOffset), messageSchema.getMessageFieldSchema(i5));
                    }
                    break;
                case 61:
                    if (messageSchema.isOneofPresent(obj, iNumberAt, i5)) {
                        writer.writeBytes(iNumberAt, (ByteString) unsafe.getObject(obj, jOffset));
                    }
                    break;
                case 62:
                    if (messageSchema.isOneofPresent(obj, iNumberAt, i5)) {
                        writer.writeUInt32(iNumberAt, oneofIntAt(obj, jOffset));
                    }
                    break;
                case 63:
                    if (messageSchema.isOneofPresent(obj, iNumberAt, i5)) {
                        writer.writeEnum(iNumberAt, oneofIntAt(obj, jOffset));
                    }
                    break;
                case 64:
                    if (messageSchema.isOneofPresent(obj, iNumberAt, i5)) {
                        writer.writeSFixed32(iNumberAt, oneofIntAt(obj, jOffset));
                    }
                    break;
                case 65:
                    if (messageSchema.isOneofPresent(obj, iNumberAt, i5)) {
                        writer.writeSFixed64(iNumberAt, oneofLongAt(obj, jOffset));
                    }
                    break;
                case 66:
                    if (messageSchema.isOneofPresent(obj, iNumberAt, i5)) {
                        writer.writeSInt32(iNumberAt, oneofIntAt(obj, jOffset));
                    }
                    break;
                case 67:
                    if (messageSchema.isOneofPresent(obj, iNumberAt, i5)) {
                        writer.writeSInt64(iNumberAt, oneofLongAt(obj, jOffset));
                    }
                    break;
                case 68:
                    if (messageSchema.isOneofPresent(obj, iNumberAt, i5)) {
                        writer.writeGroup(iNumberAt, unsafe.getObject(obj, jOffset), messageSchema.getMessageFieldSchema(i5));
                    }
                    break;
            }
            i5 += 3;
            i6 = i2;
            i4 = i;
            entry = entry2;
        }
        while (entry != null) {
            messageSchema.extensionSchema.serializeExtension(writer, entry);
            entry = it.hasNext() ? (Map.Entry) it.next() : null;
        }
        messageSchema.writeUnknownInMessageTo(messageSchema.unknownFieldSchema, obj, writer);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void writeFieldsInDescendingOrder(Object obj, Writer writer) {
        Iterator itDescendingIterator;
        Map.Entry entry;
        writeUnknownInMessageTo(this.unknownFieldSchema, obj, writer);
        if (this.hasExtensions) {
            FieldSet extensions = this.extensionSchema.getExtensions(obj);
            if (extensions.isEmpty()) {
                itDescendingIterator = null;
                entry = null;
            } else {
                itDescendingIterator = extensions.descendingIterator();
                entry = (Map.Entry) itDescendingIterator.next();
            }
        }
        for (int length = this.buffer.length - 3; length >= 0; length -= 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(length);
            int iNumberAt = numberAt(length);
            while (entry != null && this.extensionSchema.extensionNumber(entry) > iNumberAt) {
                this.extensionSchema.serializeExtension(writer, entry);
                entry = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
            }
            switch (type(iTypeAndOffsetAt)) {
                case 0:
                    if (isFieldPresent(obj, length)) {
                        writer.writeDouble(iNumberAt, doubleAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 1:
                    if (isFieldPresent(obj, length)) {
                        writer.writeFloat(iNumberAt, floatAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 2:
                    if (isFieldPresent(obj, length)) {
                        writer.writeInt64(iNumberAt, longAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 3:
                    if (isFieldPresent(obj, length)) {
                        writer.writeUInt64(iNumberAt, longAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 4:
                    if (isFieldPresent(obj, length)) {
                        writer.writeInt32(iNumberAt, intAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 5:
                    if (isFieldPresent(obj, length)) {
                        writer.writeFixed64(iNumberAt, longAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 6:
                    if (isFieldPresent(obj, length)) {
                        writer.writeFixed32(iNumberAt, intAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 7:
                    if (isFieldPresent(obj, length)) {
                        writer.writeBool(iNumberAt, booleanAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 8:
                    if (isFieldPresent(obj, length)) {
                        writeString(iNumberAt, UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 9:
                    if (isFieldPresent(obj, length)) {
                        writer.writeMessage(iNumberAt, UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
                case 10:
                    if (isFieldPresent(obj, length)) {
                        writer.writeBytes(iNumberAt, (ByteString) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 11:
                    if (isFieldPresent(obj, length)) {
                        writer.writeUInt32(iNumberAt, intAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 12:
                    if (isFieldPresent(obj, length)) {
                        writer.writeEnum(iNumberAt, intAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 13:
                    if (isFieldPresent(obj, length)) {
                        writer.writeSFixed32(iNumberAt, intAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 14:
                    if (isFieldPresent(obj, length)) {
                        writer.writeSFixed64(iNumberAt, longAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 15:
                    if (isFieldPresent(obj, length)) {
                        writer.writeSInt32(iNumberAt, intAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 16:
                    if (isFieldPresent(obj, length)) {
                        writer.writeSInt64(iNumberAt, longAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 17:
                    if (isFieldPresent(obj, length)) {
                        writer.writeGroup(iNumberAt, UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
                case 18:
                    SchemaUtil.writeDoubleList(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 19:
                    SchemaUtil.writeFloatList(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 20:
                    SchemaUtil.writeInt64List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 21:
                    SchemaUtil.writeUInt64List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 22:
                    SchemaUtil.writeInt32List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 23:
                    SchemaUtil.writeFixed64List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 24:
                    SchemaUtil.writeFixed32List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 25:
                    SchemaUtil.writeBoolList(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 26:
                    SchemaUtil.writeStringList(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer);
                    break;
                case 27:
                    SchemaUtil.writeMessageList(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, getMessageFieldSchema(length));
                    break;
                case 28:
                    SchemaUtil.writeBytesList(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer);
                    break;
                case 29:
                    SchemaUtil.writeUInt32List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 30:
                    SchemaUtil.writeEnumList(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 31:
                    SchemaUtil.writeSFixed32List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 32:
                    SchemaUtil.writeSFixed64List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 33:
                    SchemaUtil.writeSInt32List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 34:
                    SchemaUtil.writeSInt64List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 35:
                    SchemaUtil.writeDoubleList(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 36:
                    SchemaUtil.writeFloatList(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 37:
                    SchemaUtil.writeInt64List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 38:
                    SchemaUtil.writeUInt64List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 39:
                    SchemaUtil.writeInt32List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 40:
                    SchemaUtil.writeFixed64List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 41:
                    SchemaUtil.writeFixed32List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 42:
                    SchemaUtil.writeBoolList(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 43:
                    SchemaUtil.writeUInt32List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 44:
                    SchemaUtil.writeEnumList(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 45:
                    SchemaUtil.writeSFixed32List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 46:
                    SchemaUtil.writeSFixed64List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 47:
                    SchemaUtil.writeSInt32List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 48:
                    SchemaUtil.writeSInt64List(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 49:
                    SchemaUtil.writeGroupList(numberAt(length), (List) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer, getMessageFieldSchema(length));
                    break;
                case 50:
                    writeMapHelper(writer, iNumberAt, UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), length);
                    break;
                case 51:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeDouble(iNumberAt, oneofDoubleAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 52:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeFloat(iNumberAt, oneofFloatAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 53:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeInt64(iNumberAt, oneofLongAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 54:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeUInt64(iNumberAt, oneofLongAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 55:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeInt32(iNumberAt, oneofIntAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 56:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeFixed64(iNumberAt, oneofLongAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 57:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeFixed32(iNumberAt, oneofIntAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 58:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeBool(iNumberAt, oneofBooleanAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 59:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writeString(iNumberAt, UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 60:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeMessage(iNumberAt, UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
                case 61:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeBytes(iNumberAt, (ByteString) UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 62:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeUInt32(iNumberAt, oneofIntAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 63:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeEnum(iNumberAt, oneofIntAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 64:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeSFixed32(iNumberAt, oneofIntAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 65:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeSFixed64(iNumberAt, oneofLongAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 66:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeSInt32(iNumberAt, oneofIntAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 67:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeSInt64(iNumberAt, oneofLongAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 68:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeGroup(iNumberAt, UnsafeUtil.getObject(obj, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.extensionSchema.serializeExtension(writer, entry);
            entry = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
        }
    }

    private void writeMapHelper(Writer writer, int i, Object obj, int i2) {
        if (obj != null) {
            writer.writeMap(i, this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i2)), this.mapFieldSchema.forMapData(obj));
        }
    }

    private void writeUnknownInMessageTo(UnknownFieldSchema unknownFieldSchema, Object obj, Writer writer) {
        unknownFieldSchema.writeTo(unknownFieldSchema.getFromMessage(obj), writer);
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void mergeFrom(Object obj, Reader reader, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
        extensionRegistryLite.getClass();
        checkMutable(obj);
        mergeFromHelper(this.unknownFieldSchema, this.extensionSchema, obj, reader, extensionRegistryLite);
    }

    /* JADX WARN: Code restructure failed: missing block: B:327:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a8, code lost:
    
        r0 = r10.checkInitializedCount;
        r4 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ad, code lost:
    
        if (r0 >= r10.repeatedFieldOffsetStart) goto L325;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00af, code lost:
    
        r4 = r10.filterMapUnknownEnumValues(r2, r10.intArray[r0], r4, r5, r20);
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00c0, code lost:
    
        if (r4 == null) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00c2, code lost:
    
        r5.setBuilderToMessage(r2, r4);
     */
    /* JADX WARN: Removed duplicated region for block: B:229:0x06d2 A[Catch: all -> 0x06f3, TRY_LEAVE, TryCatch #9 {all -> 0x06f3, blocks: (B:227:0x06cc, B:229:0x06d2, B:240:0x06f7, B:241:0x06fc), top: B:274:0x06cc }] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x06f5  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x072d A[LOOP:4: B:254:0x0729->B:256:0x072d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0740  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void mergeFromHelper(UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, Object obj, Reader reader, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
        UnknownFieldSchema unknownFieldSchema2;
        Object obj2;
        int i;
        Object objFilterMapUnknownEnumValues;
        Object obj3;
        Object builderFromMessage;
        UnknownFieldSchema unknownFieldSchema3;
        ExtensionSchema extensionSchema2;
        Object objFindExtensionByNumber;
        UnknownFieldSchema unknownFieldSchema4;
        Object objFilterMapUnknownEnumValues2;
        Reader reader2;
        MessageSchema messageSchema;
        Object obj4;
        List listMutableListAt;
        Object obj5;
        MessageSchema messageSchema2 = this;
        ExtensionRegistryLite extensionRegistryLite2 = extensionRegistryLite;
        FieldSet mutableExtensions = null;
        Object extension = null;
        while (true) {
            try {
                int fieldNumber = reader.getFieldNumber();
                int iPositionForFieldNumber = messageSchema2.positionForFieldNumber(fieldNumber);
                if (iPositionForFieldNumber >= 0) {
                    obj3 = obj;
                    ExtensionRegistryLite extensionRegistryLite3 = extensionRegistryLite2;
                    builderFromMessage = extension;
                    unknownFieldSchema3 = unknownFieldSchema;
                    Reader reader3 = reader;
                    try {
                        int iTypeAndOffsetAt = messageSchema2.typeAndOffsetAt(iPositionForFieldNumber);
                        try {
                        } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                            unknownFieldSchema2 = unknownFieldSchema3;
                        }
                        switch (type(iTypeAndOffsetAt)) {
                            case 0:
                                UnsafeUtil.putDouble(obj3, offset(iTypeAndOffsetAt), reader3.readDouble());
                                messageSchema2.setFieldPresent(obj3, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 1:
                                UnsafeUtil.putFloat(obj3, offset(iTypeAndOffsetAt), reader3.readFloat());
                                messageSchema2.setFieldPresent(obj3, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 2:
                                UnsafeUtil.putLong(obj3, offset(iTypeAndOffsetAt), reader3.readInt64());
                                messageSchema2.setFieldPresent(obj3, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 3:
                                UnsafeUtil.putLong(obj3, offset(iTypeAndOffsetAt), reader3.readUInt64());
                                messageSchema2.setFieldPresent(obj3, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 4:
                                UnsafeUtil.putInt(obj3, offset(iTypeAndOffsetAt), reader3.readInt32());
                                messageSchema2.setFieldPresent(obj3, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 5:
                                UnsafeUtil.putLong(obj3, offset(iTypeAndOffsetAt), reader3.readFixed64());
                                messageSchema2.setFieldPresent(obj3, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 6:
                                UnsafeUtil.putInt(obj3, offset(iTypeAndOffsetAt), reader3.readFixed32());
                                messageSchema2.setFieldPresent(obj3, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 7:
                                UnsafeUtil.putBoolean(obj3, offset(iTypeAndOffsetAt), reader3.readBool());
                                messageSchema2.setFieldPresent(obj3, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 8:
                                messageSchema2.readString(obj3, iTypeAndOffsetAt, reader3);
                                messageSchema2.setFieldPresent(obj3, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 9:
                                MessageLite messageLite = (MessageLite) messageSchema2.mutableMessageFieldForMerge(obj3, iPositionForFieldNumber);
                                reader3.mergeMessageField(messageLite, messageSchema2.getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite3);
                                messageSchema2.storeMessageField(obj3, iPositionForFieldNumber, messageLite);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 10:
                                UnsafeUtil.putObject(obj3, offset(iTypeAndOffsetAt), reader3.readBytes());
                                messageSchema2.setFieldPresent(obj3, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 11:
                                UnsafeUtil.putInt(obj3, offset(iTypeAndOffsetAt), reader3.readUInt32());
                                messageSchema2.setFieldPresent(obj3, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 12:
                                int i2 = reader3.readEnum();
                                messageSchema2.getEnumFieldVerifier(iPositionForFieldNumber);
                                UnsafeUtil.putInt(obj3, offset(iTypeAndOffsetAt), i2);
                                messageSchema2.setFieldPresent(obj3, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 13:
                                UnsafeUtil.putInt(obj3, offset(iTypeAndOffsetAt), reader3.readSFixed32());
                                messageSchema2.setFieldPresent(obj3, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 14:
                                UnsafeUtil.putLong(obj3, offset(iTypeAndOffsetAt), reader3.readSFixed64());
                                messageSchema2.setFieldPresent(obj3, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 15:
                                UnsafeUtil.putInt(obj3, offset(iTypeAndOffsetAt), reader3.readSInt32());
                                messageSchema2.setFieldPresent(obj3, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 16:
                                UnsafeUtil.putLong(obj3, offset(iTypeAndOffsetAt), reader3.readSInt64());
                                messageSchema2.setFieldPresent(obj3, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 17:
                                MessageLite messageLite2 = (MessageLite) messageSchema2.mutableMessageFieldForMerge(obj3, iPositionForFieldNumber);
                                reader3.mergeGroupField(messageLite2, messageSchema2.getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite3);
                                messageSchema2.storeMessageField(obj3, iPositionForFieldNumber, messageLite2);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 18:
                                reader3.readDoubleList(messageSchema2.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 19:
                                reader3.readFloatList(messageSchema2.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 20:
                                reader3.readInt64List(messageSchema2.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 21:
                                reader3.readUInt64List(messageSchema2.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 22:
                                reader3.readInt32List(messageSchema2.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 23:
                                reader3.readFixed64List(messageSchema2.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 24:
                                reader3.readFixed32List(messageSchema2.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 25:
                                reader3.readBoolList(messageSchema2.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 26:
                                messageSchema2.readStringList(obj3, iTypeAndOffsetAt, reader3);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 27:
                                unknownFieldSchema2 = unknownFieldSchema3;
                                obj2 = obj3;
                                MessageSchema messageSchema3 = messageSchema2;
                                try {
                                    extensionRegistryLite3 = extensionRegistryLite;
                                } catch (InvalidProtocolBufferException.InvalidWireTypeException unused2) {
                                    extensionRegistryLite3 = extensionRegistryLite;
                                    messageSchema2 = messageSchema3;
                                    reader3 = reader3;
                                }
                                try {
                                    messageSchema2.readMessageList(obj2, iTypeAndOffsetAt, reader3, messageSchema3.getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite3);
                                    extension = builderFromMessage;
                                } catch (InvalidProtocolBufferException.InvalidWireTypeException unused3) {
                                    extension = builderFromMessage;
                                    try {
                                        if (unknownFieldSchema2.shouldDiscardUnknownFields(reader3)) {
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 28:
                                reader2 = reader3;
                                messageSchema = messageSchema2;
                                reader2.readBytesList(messageSchema.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extensionRegistryLite3 = extensionRegistryLite;
                                messageSchema2 = messageSchema;
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 29:
                                reader2 = reader3;
                                unknownFieldSchema2 = unknownFieldSchema3;
                                obj2 = obj3;
                                messageSchema = messageSchema2;
                                try {
                                    try {
                                        reader2.readUInt32List(messageSchema.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                        extensionRegistryLite3 = extensionRegistryLite;
                                        messageSchema2 = messageSchema;
                                        extension = builderFromMessage;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        messageSchema2 = messageSchema;
                                        extension = builderFromMessage;
                                        i = messageSchema2.checkInitializedCount;
                                        objFilterMapUnknownEnumValues = extension;
                                        while (i < messageSchema2.repeatedFieldOffsetStart) {
                                        }
                                        UnknownFieldSchema unknownFieldSchema5 = unknownFieldSchema2;
                                        if (objFilterMapUnknownEnumValues != null) {
                                        }
                                        throw th;
                                    }
                                } catch (InvalidProtocolBufferException.InvalidWireTypeException unused4) {
                                    extensionRegistryLite3 = extensionRegistryLite;
                                    messageSchema2 = messageSchema;
                                    extension = builderFromMessage;
                                    reader3 = reader2;
                                    if (unknownFieldSchema2.shouldDiscardUnknownFields(reader3)) {
                                    }
                                    break;
                                }
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 30:
                                messageSchema = messageSchema2;
                                obj2 = obj3;
                                reader2 = reader3;
                                extension = builderFromMessage;
                                try {
                                    List listMutableListAt2 = messageSchema.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt));
                                    reader2.readEnumList(listMutableListAt2);
                                    messageSchema.getEnumFieldVerifier(iPositionForFieldNumber);
                                    obj4 = obj2;
                                    try {
                                        extension = SchemaUtil.filterUnknownEnumList(obj4, fieldNumber, listMutableListAt2, null, extension, unknownFieldSchema);
                                        extensionRegistryLite3 = extensionRegistryLite;
                                        messageSchema2 = messageSchema;
                                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused5) {
                                        unknownFieldSchema2 = unknownFieldSchema;
                                        extensionRegistryLite3 = extensionRegistryLite;
                                        obj2 = obj4;
                                        messageSchema2 = messageSchema;
                                        reader3 = reader2;
                                        if (unknownFieldSchema2.shouldDiscardUnknownFields(reader3)) {
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        obj2 = obj4;
                                        unknownFieldSchema2 = unknownFieldSchema;
                                        messageSchema2 = messageSchema;
                                        i = messageSchema2.checkInitializedCount;
                                        objFilterMapUnknownEnumValues = extension;
                                        while (i < messageSchema2.repeatedFieldOffsetStart) {
                                        }
                                        UnknownFieldSchema unknownFieldSchema52 = unknownFieldSchema2;
                                        if (objFilterMapUnknownEnumValues != null) {
                                        }
                                        throw th;
                                    }
                                } catch (InvalidProtocolBufferException.InvalidWireTypeException unused6) {
                                    unknownFieldSchema2 = unknownFieldSchema;
                                    extensionRegistryLite3 = extensionRegistryLite;
                                    messageSchema2 = messageSchema;
                                    reader3 = reader2;
                                    if (unknownFieldSchema2.shouldDiscardUnknownFields(reader3)) {
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    unknownFieldSchema2 = unknownFieldSchema;
                                }
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 31:
                                reader2 = reader3;
                                extension = builderFromMessage;
                                messageSchema = messageSchema2;
                                reader2.readSFixed32List(messageSchema.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extensionRegistryLite3 = extensionRegistryLite;
                                builderFromMessage = extension;
                                messageSchema2 = messageSchema;
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 32:
                                reader2 = reader3;
                                extension = builderFromMessage;
                                messageSchema = messageSchema2;
                                reader2.readSFixed64List(messageSchema.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extensionRegistryLite3 = extensionRegistryLite;
                                builderFromMessage = extension;
                                messageSchema2 = messageSchema;
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 33:
                                reader2 = reader3;
                                extension = builderFromMessage;
                                messageSchema = messageSchema2;
                                reader2.readSInt32List(messageSchema.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extensionRegistryLite3 = extensionRegistryLite;
                                builderFromMessage = extension;
                                messageSchema2 = messageSchema;
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 34:
                                reader2 = reader3;
                                extension = builderFromMessage;
                                messageSchema = messageSchema2;
                                reader2.readSInt64List(messageSchema.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extensionRegistryLite3 = extensionRegistryLite;
                                builderFromMessage = extension;
                                messageSchema2 = messageSchema;
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 35:
                                reader2 = reader3;
                                extension = builderFromMessage;
                                messageSchema = messageSchema2;
                                reader2.readDoubleList(messageSchema.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extensionRegistryLite3 = extensionRegistryLite;
                                builderFromMessage = extension;
                                messageSchema2 = messageSchema;
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 36:
                                reader2 = reader3;
                                extension = builderFromMessage;
                                messageSchema = messageSchema2;
                                reader2.readFloatList(messageSchema.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extensionRegistryLite3 = extensionRegistryLite;
                                builderFromMessage = extension;
                                messageSchema2 = messageSchema;
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 37:
                                reader2 = reader3;
                                extension = builderFromMessage;
                                messageSchema = messageSchema2;
                                reader2.readInt64List(messageSchema.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extensionRegistryLite3 = extensionRegistryLite;
                                builderFromMessage = extension;
                                messageSchema2 = messageSchema;
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 38:
                                reader2 = reader3;
                                extension = builderFromMessage;
                                messageSchema = messageSchema2;
                                reader2.readUInt64List(messageSchema.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extensionRegistryLite3 = extensionRegistryLite;
                                builderFromMessage = extension;
                                messageSchema2 = messageSchema;
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 39:
                                reader2 = reader3;
                                extension = builderFromMessage;
                                messageSchema = messageSchema2;
                                reader2.readInt32List(messageSchema.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extensionRegistryLite3 = extensionRegistryLite;
                                builderFromMessage = extension;
                                messageSchema2 = messageSchema;
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 40:
                                reader2 = reader3;
                                extension = builderFromMessage;
                                messageSchema = messageSchema2;
                                reader2.readFixed64List(messageSchema.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extensionRegistryLite3 = extensionRegistryLite;
                                builderFromMessage = extension;
                                messageSchema2 = messageSchema;
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 41:
                                reader2 = reader3;
                                extension = builderFromMessage;
                                messageSchema = messageSchema2;
                                reader2.readFixed32List(messageSchema.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extensionRegistryLite3 = extensionRegistryLite;
                                builderFromMessage = extension;
                                messageSchema2 = messageSchema;
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 42:
                                reader2 = reader3;
                                extension = builderFromMessage;
                                messageSchema = messageSchema2;
                                reader2.readBoolList(messageSchema.listFieldSchema.mutableListAt(obj3, offset(iTypeAndOffsetAt)));
                                extensionRegistryLite3 = extensionRegistryLite;
                                builderFromMessage = extension;
                                messageSchema2 = messageSchema;
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 43:
                                reader2 = reader3;
                                obj2 = obj3;
                                extension = builderFromMessage;
                                messageSchema = messageSchema2;
                                try {
                                    reader2.readUInt32List(messageSchema.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    extensionRegistryLite3 = extensionRegistryLite;
                                    builderFromMessage = extension;
                                    messageSchema2 = messageSchema;
                                    extension = builderFromMessage;
                                } catch (InvalidProtocolBufferException.InvalidWireTypeException unused7) {
                                    unknownFieldSchema2 = unknownFieldSchema;
                                    extensionRegistryLite3 = extensionRegistryLite;
                                    messageSchema2 = messageSchema;
                                    reader3 = reader2;
                                    if (unknownFieldSchema2.shouldDiscardUnknownFields(reader3)) {
                                    }
                                } catch (Throwable th6) {
                                    th = th6;
                                    unknownFieldSchema2 = unknownFieldSchema;
                                    messageSchema2 = messageSchema;
                                    i = messageSchema2.checkInitializedCount;
                                    objFilterMapUnknownEnumValues = extension;
                                    while (i < messageSchema2.repeatedFieldOffsetStart) {
                                    }
                                    UnknownFieldSchema unknownFieldSchema522 = unknownFieldSchema2;
                                    if (objFilterMapUnknownEnumValues != null) {
                                    }
                                    throw th;
                                }
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 44:
                                messageSchema = messageSchema2;
                                obj4 = obj3;
                                reader2 = reader3;
                                try {
                                    listMutableListAt = messageSchema.listFieldSchema.mutableListAt(obj4, offset(iTypeAndOffsetAt));
                                    reader2.readEnumList(listMutableListAt);
                                    messageSchema.getEnumFieldVerifier(iPositionForFieldNumber);
                                    extension = builderFromMessage;
                                } catch (InvalidProtocolBufferException.InvalidWireTypeException unused8) {
                                    extension = builderFromMessage;
                                } catch (Throwable th7) {
                                    th = th7;
                                    obj2 = obj4;
                                    extension = builderFromMessage;
                                }
                                try {
                                    extension = SchemaUtil.filterUnknownEnumList(obj4, fieldNumber, listMutableListAt, null, extension, unknownFieldSchema3);
                                    extensionRegistryLite3 = extensionRegistryLite;
                                    messageSchema2 = messageSchema;
                                } catch (InvalidProtocolBufferException.InvalidWireTypeException unused9) {
                                    unknownFieldSchema2 = unknownFieldSchema;
                                    extensionRegistryLite3 = extensionRegistryLite;
                                    obj2 = obj4;
                                    messageSchema2 = messageSchema;
                                    reader3 = reader2;
                                    if (unknownFieldSchema2.shouldDiscardUnknownFields(reader3)) {
                                    }
                                } catch (Throwable th8) {
                                    th = th8;
                                    obj2 = obj4;
                                    unknownFieldSchema2 = unknownFieldSchema;
                                    messageSchema2 = messageSchema;
                                    i = messageSchema2.checkInitializedCount;
                                    objFilterMapUnknownEnumValues = extension;
                                    while (i < messageSchema2.repeatedFieldOffsetStart) {
                                    }
                                    UnknownFieldSchema unknownFieldSchema5222 = unknownFieldSchema2;
                                    if (objFilterMapUnknownEnumValues != null) {
                                    }
                                    throw th;
                                }
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 45:
                                messageSchema = messageSchema2;
                                obj5 = obj3;
                                reader2 = reader3;
                                reader2.readSFixed32List(messageSchema.listFieldSchema.mutableListAt(obj5, offset(iTypeAndOffsetAt)));
                                extensionRegistryLite3 = extensionRegistryLite;
                                messageSchema2 = messageSchema;
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 46:
                                messageSchema = messageSchema2;
                                obj5 = obj3;
                                reader2 = reader3;
                                reader2.readSFixed64List(messageSchema.listFieldSchema.mutableListAt(obj5, offset(iTypeAndOffsetAt)));
                                extensionRegistryLite3 = extensionRegistryLite;
                                messageSchema2 = messageSchema;
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 47:
                                messageSchema = messageSchema2;
                                obj5 = obj3;
                                reader2 = reader3;
                                reader2.readSInt32List(messageSchema.listFieldSchema.mutableListAt(obj5, offset(iTypeAndOffsetAt)));
                                extensionRegistryLite3 = extensionRegistryLite;
                                messageSchema2 = messageSchema;
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 48:
                                messageSchema = messageSchema2;
                                obj5 = obj3;
                                reader2 = reader3;
                                unknownFieldSchema2 = unknownFieldSchema3;
                                try {
                                    reader2.readSInt64List(messageSchema.listFieldSchema.mutableListAt(obj5, offset(iTypeAndOffsetAt)));
                                    extensionRegistryLite3 = extensionRegistryLite;
                                    messageSchema2 = messageSchema;
                                    extension = builderFromMessage;
                                } catch (InvalidProtocolBufferException.InvalidWireTypeException unused10) {
                                    extensionRegistryLite3 = extensionRegistryLite;
                                    obj2 = obj5;
                                    messageSchema2 = messageSchema;
                                    extension = builderFromMessage;
                                    reader3 = reader2;
                                    if (unknownFieldSchema2.shouldDiscardUnknownFields(reader3)) {
                                    }
                                } catch (Throwable th9) {
                                    th = th9;
                                    obj2 = obj5;
                                    messageSchema2 = messageSchema;
                                    extension = builderFromMessage;
                                    i = messageSchema2.checkInitializedCount;
                                    objFilterMapUnknownEnumValues = extension;
                                    while (i < messageSchema2.repeatedFieldOffsetStart) {
                                    }
                                    UnknownFieldSchema unknownFieldSchema52222 = unknownFieldSchema2;
                                    if (objFilterMapUnknownEnumValues != null) {
                                    }
                                    throw th;
                                }
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 49:
                                unknownFieldSchema2 = unknownFieldSchema3;
                                try {
                                    obj2 = obj;
                                } catch (Throwable th10) {
                                    th = th10;
                                    messageSchema = messageSchema2;
                                    obj5 = obj;
                                    obj2 = obj5;
                                    messageSchema2 = messageSchema;
                                    extension = builderFromMessage;
                                    i = messageSchema2.checkInitializedCount;
                                    objFilterMapUnknownEnumValues = extension;
                                    while (i < messageSchema2.repeatedFieldOffsetStart) {
                                    }
                                    UnknownFieldSchema unknownFieldSchema522222 = unknownFieldSchema2;
                                    if (objFilterMapUnknownEnumValues != null) {
                                    }
                                    throw th;
                                }
                                try {
                                    messageSchema2.readGroupList(obj2, offset(iTypeAndOffsetAt), reader, messageSchema2.getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite);
                                    messageSchema = messageSchema2;
                                    obj5 = obj2;
                                    reader2 = reader;
                                    extensionRegistryLite3 = extensionRegistryLite;
                                    messageSchema2 = messageSchema;
                                    extension = builderFromMessage;
                                } catch (InvalidProtocolBufferException.InvalidWireTypeException unused11) {
                                    extensionRegistryLite3 = extensionRegistryLite;
                                    reader3 = reader;
                                    extension = builderFromMessage;
                                    if (unknownFieldSchema2.shouldDiscardUnknownFields(reader3)) {
                                    }
                                } catch (Throwable th11) {
                                    th = th11;
                                    messageSchema = messageSchema2;
                                    messageSchema2 = messageSchema;
                                    extension = builderFromMessage;
                                    i = messageSchema2.checkInitializedCount;
                                    objFilterMapUnknownEnumValues = extension;
                                    while (i < messageSchema2.repeatedFieldOffsetStart) {
                                    }
                                    UnknownFieldSchema unknownFieldSchema5222222 = unknownFieldSchema2;
                                    if (objFilterMapUnknownEnumValues != null) {
                                    }
                                    throw th;
                                }
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 50:
                                unknownFieldSchema2 = unknownFieldSchema3;
                                try {
                                    try {
                                        messageSchema2.mergeMap(obj3, iPositionForFieldNumber, messageSchema2.getMapFieldDefaultEntry(iPositionForFieldNumber), extensionRegistryLite3, reader);
                                        extensionRegistryLite3 = extensionRegistryLite;
                                        extension = builderFromMessage;
                                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused12) {
                                        obj2 = obj;
                                        reader3 = reader;
                                        extensionRegistryLite3 = extensionRegistryLite;
                                        extension = builderFromMessage;
                                        if (unknownFieldSchema2.shouldDiscardUnknownFields(reader3)) {
                                            if (extension == null) {
                                                extension = unknownFieldSchema2.getBuilderFromMessage(obj2);
                                            }
                                            if (!unknownFieldSchema2.mergeOneFieldFrom(extension, reader3, 0)) {
                                                objFilterMapUnknownEnumValues2 = extension;
                                                for (int i3 = messageSchema2.checkInitializedCount; i3 < messageSchema2.repeatedFieldOffsetStart; i3++) {
                                                    objFilterMapUnknownEnumValues2 = messageSchema2.filterMapUnknownEnumValues(obj2, messageSchema2.intArray[i3], objFilterMapUnknownEnumValues2, unknownFieldSchema2, obj);
                                                }
                                                if (objFilterMapUnknownEnumValues2 == null) {
                                                    return;
                                                }
                                                unknownFieldSchema2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues2);
                                            }
                                        } else if (!reader3.skipField()) {
                                            objFilterMapUnknownEnumValues2 = extension;
                                            for (int i4 = messageSchema2.checkInitializedCount; i4 < messageSchema2.repeatedFieldOffsetStart; i4++) {
                                                objFilterMapUnknownEnumValues2 = messageSchema2.filterMapUnknownEnumValues(obj2, messageSchema2.intArray[i4], objFilterMapUnknownEnumValues2, unknownFieldSchema2, obj);
                                            }
                                            if (objFilterMapUnknownEnumValues2 == null) {
                                                return;
                                            }
                                            unknownFieldSchema2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues2);
                                        }
                                    }
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                } catch (Throwable th12) {
                                    th = th12;
                                    obj2 = obj;
                                }
                                break;
                            case 51:
                                UnsafeUtil.putObject(obj3, offset(iTypeAndOffsetAt), Double.valueOf(reader3.readDouble()));
                                messageSchema2.setOneofPresent(obj3, fieldNumber, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 52:
                                UnsafeUtil.putObject(obj3, offset(iTypeAndOffsetAt), Float.valueOf(reader3.readFloat()));
                                messageSchema2.setOneofPresent(obj3, fieldNumber, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 53:
                                UnsafeUtil.putObject(obj3, offset(iTypeAndOffsetAt), Long.valueOf(reader3.readInt64()));
                                messageSchema2.setOneofPresent(obj3, fieldNumber, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 54:
                                UnsafeUtil.putObject(obj3, offset(iTypeAndOffsetAt), Long.valueOf(reader3.readUInt64()));
                                messageSchema2.setOneofPresent(obj3, fieldNumber, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 55:
                                UnsafeUtil.putObject(obj3, offset(iTypeAndOffsetAt), Integer.valueOf(reader3.readInt32()));
                                messageSchema2.setOneofPresent(obj3, fieldNumber, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 56:
                                UnsafeUtil.putObject(obj3, offset(iTypeAndOffsetAt), Long.valueOf(reader3.readFixed64()));
                                messageSchema2.setOneofPresent(obj3, fieldNumber, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 57:
                                UnsafeUtil.putObject(obj3, offset(iTypeAndOffsetAt), Integer.valueOf(reader3.readFixed32()));
                                messageSchema2.setOneofPresent(obj3, fieldNumber, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 58:
                                UnsafeUtil.putObject(obj3, offset(iTypeAndOffsetAt), Boolean.valueOf(reader3.readBool()));
                                messageSchema2.setOneofPresent(obj3, fieldNumber, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 59:
                                messageSchema2.readString(obj3, iTypeAndOffsetAt, reader3);
                                messageSchema2.setOneofPresent(obj3, fieldNumber, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 60:
                                MessageLite messageLite3 = (MessageLite) messageSchema2.mutableOneofMessageFieldForMerge(obj3, fieldNumber, iPositionForFieldNumber);
                                reader3.mergeMessageField(messageLite3, messageSchema2.getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite3);
                                messageSchema2.storeOneofMessageField(obj3, fieldNumber, iPositionForFieldNumber, messageLite3);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 61:
                                UnsafeUtil.putObject(obj3, offset(iTypeAndOffsetAt), reader3.readBytes());
                                messageSchema2.setOneofPresent(obj3, fieldNumber, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 62:
                                UnsafeUtil.putObject(obj3, offset(iTypeAndOffsetAt), Integer.valueOf(reader3.readUInt32()));
                                messageSchema2.setOneofPresent(obj3, fieldNumber, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 63:
                                int i5 = reader3.readEnum();
                                messageSchema2.getEnumFieldVerifier(iPositionForFieldNumber);
                                UnsafeUtil.putObject(obj3, offset(iTypeAndOffsetAt), Integer.valueOf(i5));
                                messageSchema2.setOneofPresent(obj3, fieldNumber, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 64:
                                UnsafeUtil.putObject(obj3, offset(iTypeAndOffsetAt), Integer.valueOf(reader3.readSFixed32()));
                                messageSchema2.setOneofPresent(obj3, fieldNumber, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 65:
                                UnsafeUtil.putObject(obj3, offset(iTypeAndOffsetAt), Long.valueOf(reader3.readSFixed64()));
                                messageSchema2.setOneofPresent(obj3, fieldNumber, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 66:
                                UnsafeUtil.putObject(obj3, offset(iTypeAndOffsetAt), Integer.valueOf(reader3.readSInt32()));
                                messageSchema2.setOneofPresent(obj3, fieldNumber, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 67:
                                UnsafeUtil.putObject(obj3, offset(iTypeAndOffsetAt), Long.valueOf(reader3.readSInt64()));
                                messageSchema2.setOneofPresent(obj3, fieldNumber, iPositionForFieldNumber);
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            case 68:
                                unknownFieldSchema2 = unknownFieldSchema3;
                                try {
                                    MessageLite messageLite4 = (MessageLite) messageSchema2.mutableOneofMessageFieldForMerge(obj3, fieldNumber, iPositionForFieldNumber);
                                    reader3.mergeGroupField(messageLite4, messageSchema2.getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite3);
                                    messageSchema2.storeOneofMessageField(obj3, fieldNumber, iPositionForFieldNumber, messageLite4);
                                    extension = builderFromMessage;
                                } catch (InvalidProtocolBufferException.InvalidWireTypeException unused13) {
                                    obj2 = obj3;
                                    extension = builderFromMessage;
                                    if (unknownFieldSchema2.shouldDiscardUnknownFields(reader3)) {
                                    }
                                } catch (Throwable th13) {
                                    th = th13;
                                    obj2 = obj3;
                                    extension = builderFromMessage;
                                    i = messageSchema2.checkInitializedCount;
                                    objFilterMapUnknownEnumValues = extension;
                                    while (i < messageSchema2.repeatedFieldOffsetStart) {
                                    }
                                    UnknownFieldSchema unknownFieldSchema52222222 = unknownFieldSchema2;
                                    if (objFilterMapUnknownEnumValues != null) {
                                    }
                                    throw th;
                                }
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                            default:
                                if (builderFromMessage == null) {
                                    builderFromMessage = unknownFieldSchema3.getBuilderFromMessage(obj3);
                                }
                                if (!unknownFieldSchema3.mergeOneFieldFrom(builderFromMessage, reader3, 0)) {
                                    Object objFilterMapUnknownEnumValues3 = builderFromMessage;
                                    for (int i6 = messageSchema2.checkInitializedCount; i6 < messageSchema2.repeatedFieldOffsetStart; i6++) {
                                        objFilterMapUnknownEnumValues3 = messageSchema2.filterMapUnknownEnumValues(obj3, messageSchema2.intArray[i6], objFilterMapUnknownEnumValues3, unknownFieldSchema3, obj);
                                    }
                                    if (objFilterMapUnknownEnumValues3 != null) {
                                        unknownFieldSchema3.setBuilderToMessage(obj3, objFilterMapUnknownEnumValues3);
                                        return;
                                    }
                                    return;
                                }
                                extension = builderFromMessage;
                                extensionRegistryLite2 = extensionRegistryLite3;
                                break;
                                break;
                        }
                    } catch (Throwable th14) {
                        th = th14;
                        unknownFieldSchema2 = unknownFieldSchema3;
                        obj2 = obj3;
                        extension = builderFromMessage;
                        i = messageSchema2.checkInitializedCount;
                        objFilterMapUnknownEnumValues = extension;
                        while (i < messageSchema2.repeatedFieldOffsetStart) {
                        }
                        UnknownFieldSchema unknownFieldSchema522222222 = unknownFieldSchema2;
                        if (objFilterMapUnknownEnumValues != null) {
                        }
                        throw th;
                    }
                } else {
                    if (fieldNumber == Integer.MAX_VALUE) {
                        int i7 = messageSchema2.checkInitializedCount;
                        Object objFilterMapUnknownEnumValues4 = extension;
                        while (i7 < messageSchema2.repeatedFieldOffsetStart) {
                            objFilterMapUnknownEnumValues4 = messageSchema2.filterMapUnknownEnumValues(obj, messageSchema2.intArray[i7], objFilterMapUnknownEnumValues4, unknownFieldSchema, obj);
                            i7++;
                            messageSchema2 = messageSchema2;
                        }
                        if (objFilterMapUnknownEnumValues4 != null) {
                            unknownFieldSchema.setBuilderToMessage(obj, objFilterMapUnknownEnumValues4);
                        }
                        return;
                    }
                    MessageSchema messageSchema4 = messageSchema2;
                    try {
                        if (messageSchema4.hasExtensions) {
                            extensionSchema2 = extensionSchema;
                            objFindExtensionByNumber = extensionSchema2.findExtensionByNumber(extensionRegistryLite2, messageSchema4.defaultInstance, fieldNumber);
                        } else {
                            extensionSchema2 = extensionSchema;
                            objFindExtensionByNumber = null;
                        }
                        if (objFindExtensionByNumber != null) {
                            if (mutableExtensions == null) {
                                try {
                                    mutableExtensions = extensionSchema.getMutableExtensions(obj);
                                } catch (Throwable th15) {
                                    th = th15;
                                    obj2 = obj;
                                    unknownFieldSchema2 = unknownFieldSchema;
                                    messageSchema2 = messageSchema4;
                                }
                            }
                            Object obj6 = extension;
                            FieldSet fieldSet = mutableExtensions;
                            try {
                                mutableExtensions = fieldSet;
                                extension = extensionSchema2.parseExtension(obj, reader, objFindExtensionByNumber, extensionRegistryLite2, fieldSet, obj6, unknownFieldSchema);
                                extensionRegistryLite2 = extensionRegistryLite2;
                                messageSchema2 = messageSchema4;
                            } catch (Throwable th16) {
                                th = th16;
                                obj2 = obj;
                                builderFromMessage = obj6;
                                unknownFieldSchema4 = unknownFieldSchema;
                                unknownFieldSchema2 = unknownFieldSchema4;
                                messageSchema2 = messageSchema4;
                                extension = builderFromMessage;
                                i = messageSchema2.checkInitializedCount;
                                objFilterMapUnknownEnumValues = extension;
                                while (i < messageSchema2.repeatedFieldOffsetStart) {
                                }
                                UnknownFieldSchema unknownFieldSchema5222222222 = unknownFieldSchema2;
                                if (objFilterMapUnknownEnumValues != null) {
                                }
                                throw th;
                            }
                        } else {
                            obj2 = obj;
                            builderFromMessage = extension;
                            unknownFieldSchema4 = unknownFieldSchema;
                            ExtensionRegistryLite extensionRegistryLite4 = extensionRegistryLite2;
                            try {
                                if (unknownFieldSchema4.shouldDiscardUnknownFields(reader)) {
                                    try {
                                        if (!reader.skipField()) {
                                        }
                                        extensionRegistryLite2 = extensionRegistryLite4;
                                        messageSchema2 = messageSchema4;
                                        extension = builderFromMessage;
                                    } catch (Throwable th17) {
                                        th = th17;
                                        unknownFieldSchema2 = unknownFieldSchema4;
                                        messageSchema2 = messageSchema4;
                                        extension = builderFromMessage;
                                        i = messageSchema2.checkInitializedCount;
                                        objFilterMapUnknownEnumValues = extension;
                                        while (i < messageSchema2.repeatedFieldOffsetStart) {
                                        }
                                        UnknownFieldSchema unknownFieldSchema52222222222 = unknownFieldSchema2;
                                        if (objFilterMapUnknownEnumValues != null) {
                                        }
                                        throw th;
                                    }
                                } else {
                                    if (builderFromMessage == null) {
                                        builderFromMessage = unknownFieldSchema4.getBuilderFromMessage(obj2);
                                    }
                                    if (!unknownFieldSchema4.mergeOneFieldFrom(builderFromMessage, reader, 0)) {
                                    }
                                    extensionRegistryLite2 = extensionRegistryLite4;
                                    messageSchema2 = messageSchema4;
                                    extension = builderFromMessage;
                                }
                            } catch (Throwable th18) {
                                th = th18;
                                messageSchema2 = messageSchema4;
                                unknownFieldSchema2 = unknownFieldSchema4;
                            }
                        }
                    } catch (Throwable th19) {
                        th = th19;
                        obj3 = obj;
                        builderFromMessage = extension;
                        unknownFieldSchema3 = unknownFieldSchema;
                        messageSchema2 = messageSchema4;
                        unknownFieldSchema2 = unknownFieldSchema3;
                        obj2 = obj3;
                    }
                }
                extension = builderFromMessage;
            } catch (Throwable th20) {
                th = th20;
                unknownFieldSchema2 = unknownFieldSchema;
                obj2 = obj;
            }
            i = messageSchema2.checkInitializedCount;
            objFilterMapUnknownEnumValues = extension;
            while (i < messageSchema2.repeatedFieldOffsetStart) {
                objFilterMapUnknownEnumValues = messageSchema2.filterMapUnknownEnumValues(obj2, messageSchema2.intArray[i], objFilterMapUnknownEnumValues, unknownFieldSchema2, obj);
                i++;
                messageSchema2 = this;
            }
            UnknownFieldSchema unknownFieldSchema522222222222 = unknownFieldSchema2;
            if (objFilterMapUnknownEnumValues != null) {
                unknownFieldSchema522222222222.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues);
            }
            throw th;
        }
        unknownFieldSchema2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues2);
    }

    private Schema getMessageFieldSchema(int i) {
        int i2 = (i / 3) * 2;
        Schema schema = (Schema) this.objects[i2];
        if (schema != null) {
            return schema;
        }
        Schema schemaSchemaFor = Protobuf.getInstance().schemaFor((Class) this.objects[i2 + 1]);
        this.objects[i2] = schemaSchemaFor;
        return schemaSchemaFor;
    }

    private Object getMapFieldDefaultEntry(int i) {
        return this.objects[(i / 3) * 2];
    }

    private Internal.EnumVerifier getEnumFieldVerifier(int i) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(this.objects[((i / 3) * 2) + 1]);
        return null;
    }

    private Object mutableMessageFieldForMerge(Object obj, int i) {
        Schema messageFieldSchema = getMessageFieldSchema(i);
        long jOffset = offset(typeAndOffsetAt(i));
        if (!isFieldPresent(obj, i)) {
            return messageFieldSchema.newInstance();
        }
        Object object = UNSAFE.getObject(obj, jOffset);
        if (isMutable(object)) {
            return object;
        }
        Object objNewInstance = messageFieldSchema.newInstance();
        if (object != null) {
            messageFieldSchema.mergeFrom(objNewInstance, object);
        }
        return objNewInstance;
    }

    private void storeMessageField(Object obj, int i, Object obj2) {
        UNSAFE.putObject(obj, offset(typeAndOffsetAt(i)), obj2);
        setFieldPresent(obj, i);
    }

    private Object mutableOneofMessageFieldForMerge(Object obj, int i, int i2) {
        Schema messageFieldSchema = getMessageFieldSchema(i2);
        if (!isOneofPresent(obj, i, i2)) {
            return messageFieldSchema.newInstance();
        }
        Object object = UNSAFE.getObject(obj, offset(typeAndOffsetAt(i2)));
        if (isMutable(object)) {
            return object;
        }
        Object objNewInstance = messageFieldSchema.newInstance();
        if (object != null) {
            messageFieldSchema.mergeFrom(objNewInstance, object);
        }
        return objNewInstance;
    }

    private void storeOneofMessageField(Object obj, int i, int i2, Object obj2) {
        UNSAFE.putObject(obj, offset(typeAndOffsetAt(i2)), obj2);
        setOneofPresent(obj, i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x006a  */
    @Override // androidx.datastore.preferences.protobuf.Schema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void makeImmutable(Object obj) {
        if (isMutable(obj)) {
            if (obj instanceof GeneratedMessageLite) {
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
                generatedMessageLite.clearMemoizedSerializedSize();
                generatedMessageLite.clearMemoizedHashCode();
                generatedMessageLite.markImmutable();
            }
            int length = this.buffer.length;
            for (int i = 0; i < length; i += 3) {
                int iTypeAndOffsetAt = typeAndOffsetAt(i);
                long jOffset = offset(iTypeAndOffsetAt);
                int iType = type(iTypeAndOffsetAt);
                if (iType != 9) {
                    if (iType == 60 || iType == 68) {
                        if (isOneofPresent(obj, numberAt(i), i)) {
                            getMessageFieldSchema(i).makeImmutable(UNSAFE.getObject(obj, jOffset));
                        }
                    } else {
                        switch (iType) {
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
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
                                this.listFieldSchema.makeImmutableListAt(obj, jOffset);
                                break;
                            case 50:
                                Unsafe unsafe = UNSAFE;
                                Object object = unsafe.getObject(obj, jOffset);
                                if (object != null) {
                                    unsafe.putObject(obj, jOffset, this.mapFieldSchema.toImmutable(object));
                                }
                                break;
                        }
                    }
                } else if (isFieldPresent(obj, i)) {
                    getMessageFieldSchema(i).makeImmutable(UNSAFE.getObject(obj, jOffset));
                }
            }
            this.unknownFieldSchema.makeImmutable(obj);
            if (this.hasExtensions) {
                this.extensionSchema.makeImmutable(obj);
            }
        }
    }

    private final void mergeMap(Object obj, int i, Object obj2, ExtensionRegistryLite extensionRegistryLite, Reader reader) {
        long jOffset = offset(typeAndOffsetAt(i));
        Object object = UnsafeUtil.getObject(obj, jOffset);
        if (object == null) {
            object = this.mapFieldSchema.newMapField(obj2);
            UnsafeUtil.putObject(obj, jOffset, object);
        } else if (this.mapFieldSchema.isImmutable(object)) {
            Object objNewMapField = this.mapFieldSchema.newMapField(obj2);
            this.mapFieldSchema.mergeFrom(objNewMapField, object);
            UnsafeUtil.putObject(obj, jOffset, objNewMapField);
            object = objNewMapField;
        }
        reader.readMap(this.mapFieldSchema.forMutableMapData(object), this.mapFieldSchema.forMapMetadata(obj2), extensionRegistryLite);
    }

    private Object filterMapUnknownEnumValues(Object obj, int i, Object obj2, UnknownFieldSchema unknownFieldSchema, Object obj3) {
        numberAt(i);
        if (UnsafeUtil.getObject(obj, offset(typeAndOffsetAt(i))) == null) {
            return obj2;
        }
        getEnumFieldVerifier(i);
        return obj2;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x007c  */
    @Override // androidx.datastore.preferences.protobuf.Schema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean isInitialized(Object obj) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i4 < this.checkInitializedCount) {
            int i6 = this.intArray[i4];
            int iNumberAt = numberAt(i6);
            int iTypeAndOffsetAt = typeAndOffsetAt(i6);
            int i7 = this.buffer[i6 + 2];
            int i8 = i7 & 1048575;
            int i9 = 1 << (i7 >>> 20);
            if (i8 != i3) {
                if (i8 != 1048575) {
                    i5 = UNSAFE.getInt(obj, i8);
                }
                i2 = i5;
                i = i8;
            } else {
                i = i3;
                i2 = i5;
            }
            Object obj2 = obj;
            if (isRequired(iTypeAndOffsetAt) && !isFieldPresent(obj2, i6, i, i2, i9)) {
                return false;
            }
            int iType = type(iTypeAndOffsetAt);
            if (iType == 9 || iType == 17) {
                if (isFieldPresent(obj2, i6, i, i2, i9) && !isInitialized(obj2, iTypeAndOffsetAt, getMessageFieldSchema(i6))) {
                    return false;
                }
            } else if (iType == 27) {
                if (!isListInitialized(obj2, iTypeAndOffsetAt, i6)) {
                    return false;
                }
            } else if (iType == 60 || iType == 68) {
                if (isOneofPresent(obj2, iNumberAt, i6) && !isInitialized(obj2, iTypeAndOffsetAt, getMessageFieldSchema(i6))) {
                    return false;
                }
            } else if (iType != 49) {
                if (iType == 50 && !isMapInitialized(obj2, iTypeAndOffsetAt, i6)) {
                    return false;
                }
            }
            i4++;
            obj = obj2;
            i3 = i;
            i5 = i2;
        }
        return !this.hasExtensions || this.extensionSchema.getExtensions(obj).isInitialized();
    }

    private static boolean isInitialized(Object obj, int i, Schema schema) {
        return schema.isInitialized(UnsafeUtil.getObject(obj, offset(i)));
    }

    private boolean isListInitialized(Object obj, int i, int i2) {
        List list = (List) UnsafeUtil.getObject(obj, offset(i));
        if (list.isEmpty()) {
            return true;
        }
        Schema messageFieldSchema = getMessageFieldSchema(i2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (!messageFieldSchema.isInitialized(list.get(i3))) {
                return false;
            }
        }
        return true;
    }

    private boolean isMapInitialized(Object obj, int i, int i2) {
        Map mapForMapData = this.mapFieldSchema.forMapData(UnsafeUtil.getObject(obj, offset(i)));
        if (mapForMapData.isEmpty()) {
            return true;
        }
        if (this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i2)).valueType.getJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        Schema schemaSchemaFor = null;
        for (Object obj2 : mapForMapData.values()) {
            if (schemaSchemaFor == null) {
                schemaSchemaFor = Protobuf.getInstance().schemaFor((Class) obj2.getClass());
            }
            if (!schemaSchemaFor.isInitialized(obj2)) {
                return false;
            }
        }
        return true;
    }

    private void writeString(int i, Object obj, Writer writer) {
        if (obj instanceof String) {
            writer.writeString(i, (String) obj);
        } else {
            writer.writeBytes(i, (ByteString) obj);
        }
    }

    private void readString(Object obj, int i, Reader reader) {
        if (isEnforceUtf8(i)) {
            UnsafeUtil.putObject(obj, offset(i), reader.readStringRequireUtf8());
        } else if (this.lite) {
            UnsafeUtil.putObject(obj, offset(i), reader.readString());
        } else {
            UnsafeUtil.putObject(obj, offset(i), reader.readBytes());
        }
    }

    private void readStringList(Object obj, int i, Reader reader) {
        if (isEnforceUtf8(i)) {
            reader.readStringListRequireUtf8(this.listFieldSchema.mutableListAt(obj, offset(i)));
        } else {
            reader.readStringList(this.listFieldSchema.mutableListAt(obj, offset(i)));
        }
    }

    private void readMessageList(Object obj, int i, Reader reader, Schema schema, ExtensionRegistryLite extensionRegistryLite) {
        reader.readMessageList(this.listFieldSchema.mutableListAt(obj, offset(i)), schema, extensionRegistryLite);
    }

    private void readGroupList(Object obj, long j, Reader reader, Schema schema, ExtensionRegistryLite extensionRegistryLite) {
        reader.readGroupList(this.listFieldSchema.mutableListAt(obj, j), schema, extensionRegistryLite);
    }

    private int numberAt(int i) {
        return this.buffer[i];
    }

    private int typeAndOffsetAt(int i) {
        return this.buffer[i + 1];
    }

    private int presenceMaskAndOffsetAt(int i) {
        return this.buffer[i + 2];
    }

    private static boolean isMutable(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof GeneratedMessageLite) {
            return ((GeneratedMessageLite) obj).isMutable();
        }
        return true;
    }

    private static void checkMutable(Object obj) {
        if (isMutable(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + obj);
    }

    private static double doubleAt(Object obj, long j) {
        return UnsafeUtil.getDouble(obj, j);
    }

    private static float floatAt(Object obj, long j) {
        return UnsafeUtil.getFloat(obj, j);
    }

    private static int intAt(Object obj, long j) {
        return UnsafeUtil.getInt(obj, j);
    }

    private static long longAt(Object obj, long j) {
        return UnsafeUtil.getLong(obj, j);
    }

    private static boolean booleanAt(Object obj, long j) {
        return UnsafeUtil.getBoolean(obj, j);
    }

    private static double oneofDoubleAt(Object obj, long j) {
        return ((Double) UnsafeUtil.getObject(obj, j)).doubleValue();
    }

    private static float oneofFloatAt(Object obj, long j) {
        return ((Float) UnsafeUtil.getObject(obj, j)).floatValue();
    }

    private static int oneofIntAt(Object obj, long j) {
        return ((Integer) UnsafeUtil.getObject(obj, j)).intValue();
    }

    private static long oneofLongAt(Object obj, long j) {
        return ((Long) UnsafeUtil.getObject(obj, j)).longValue();
    }

    private static boolean oneofBooleanAt(Object obj, long j) {
        return ((Boolean) UnsafeUtil.getObject(obj, j)).booleanValue();
    }

    private boolean arePresentForEquals(Object obj, Object obj2, int i) {
        return isFieldPresent(obj, i) == isFieldPresent(obj2, i);
    }

    private boolean isFieldPresent(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return isFieldPresent(obj, i);
        }
        return (i3 & i4) != 0;
    }

    private boolean isFieldPresent(Object obj, int i) {
        boolean zEquals;
        int iPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i);
        long j = 1048575 & iPresenceMaskAndOffsetAt;
        if (j != 1048575) {
            return (UnsafeUtil.getInt(obj, j) & (1 << (iPresenceMaskAndOffsetAt >>> 20))) != 0;
        }
        int iTypeAndOffsetAt = typeAndOffsetAt(i);
        long jOffset = offset(iTypeAndOffsetAt);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                return Double.doubleToRawLongBits(UnsafeUtil.getDouble(obj, jOffset)) != 0;
            case 1:
                return Float.floatToRawIntBits(UnsafeUtil.getFloat(obj, jOffset)) != 0;
            case 2:
                return UnsafeUtil.getLong(obj, jOffset) != 0;
            case 3:
                return UnsafeUtil.getLong(obj, jOffset) != 0;
            case 4:
                return UnsafeUtil.getInt(obj, jOffset) != 0;
            case 5:
                return UnsafeUtil.getLong(obj, jOffset) != 0;
            case 6:
                return UnsafeUtil.getInt(obj, jOffset) != 0;
            case 7:
                return UnsafeUtil.getBoolean(obj, jOffset);
            case 8:
                Object object = UnsafeUtil.getObject(obj, jOffset);
                if (object instanceof String) {
                    zEquals = ((String) object).isEmpty();
                } else if (object instanceof ByteString) {
                    zEquals = ByteString.EMPTY.equals(object);
                } else {
                    throw new IllegalArgumentException();
                }
                break;
            case 9:
                return UnsafeUtil.getObject(obj, jOffset) != null;
            case 10:
                zEquals = ByteString.EMPTY.equals(UnsafeUtil.getObject(obj, jOffset));
                break;
            case 11:
                return UnsafeUtil.getInt(obj, jOffset) != 0;
            case 12:
                return UnsafeUtil.getInt(obj, jOffset) != 0;
            case 13:
                return UnsafeUtil.getInt(obj, jOffset) != 0;
            case 14:
                return UnsafeUtil.getLong(obj, jOffset) != 0;
            case 15:
                return UnsafeUtil.getInt(obj, jOffset) != 0;
            case 16:
                return UnsafeUtil.getLong(obj, jOffset) != 0;
            case 17:
                return UnsafeUtil.getObject(obj, jOffset) != null;
            default:
                throw new IllegalArgumentException();
        }
        return !zEquals;
    }

    private void setFieldPresent(Object obj, int i) {
        int iPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i);
        long j = 1048575 & iPresenceMaskAndOffsetAt;
        if (j == 1048575) {
            return;
        }
        UnsafeUtil.putInt(obj, j, (1 << (iPresenceMaskAndOffsetAt >>> 20)) | UnsafeUtil.getInt(obj, j));
    }

    private boolean isOneofPresent(Object obj, int i, int i2) {
        return UnsafeUtil.getInt(obj, (long) (presenceMaskAndOffsetAt(i2) & 1048575)) == i;
    }

    private boolean isOneofCaseEqual(Object obj, Object obj2, int i) {
        long jPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i) & 1048575;
        return UnsafeUtil.getInt(obj, jPresenceMaskAndOffsetAt) == UnsafeUtil.getInt(obj2, jPresenceMaskAndOffsetAt);
    }

    private void setOneofPresent(Object obj, int i, int i2) {
        UnsafeUtil.putInt(obj, presenceMaskAndOffsetAt(i2) & 1048575, i);
    }

    private int positionForFieldNumber(int i) {
        if (i < this.minFieldNumber || i > this.maxFieldNumber) {
            return -1;
        }
        return slowPositionForFieldNumber(i, 0);
    }

    private int slowPositionForFieldNumber(int i, int i2) {
        int length = (this.buffer.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int iNumberAt = numberAt(i4);
            if (i == iNumberAt) {
                return i4;
            }
            if (i < iNumberAt) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }
}
