package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
import com.google.firebase.encoders.proto.Protobuf;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
final class ProtobufDataEncoderContext implements ObjectEncoderContext {
    private final ObjectEncoder fallbackEncoder;
    private final Map objectEncoders;
    private OutputStream output;
    private final ProtobufValueEncoderContext valueEncoderContext = new ProtobufValueEncoderContext(this);
    private final Map valueEncoders;
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private static final FieldDescriptor MAP_KEY_DESC = FieldDescriptor.builder("key").withProperty(AtProtobuf.builder().tag(1).build()).build();
    private static final FieldDescriptor MAP_VALUE_DESC = FieldDescriptor.builder("value").withProperty(AtProtobuf.builder().tag(2).build()).build();
    private static final ObjectEncoder DEFAULT_MAP_ENCODER = new ObjectEncoder() { // from class: com.google.firebase.encoders.proto.ProtobufDataEncoderContext$$ExternalSyntheticLambda0
        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void encode(Object obj, Object obj2) {
            ProtobufDataEncoderContext.m3539$r8$lambda$HMpWU6Ryr444SahjVbEVRqtyxs((Map.Entry) obj, (ObjectEncoderContext) obj2);
        }
    };

    /* JADX INFO: renamed from: $r8$lambda$HMpWU6Ryr444SahjVbEVRqty-xs, reason: not valid java name */
    public static /* synthetic */ void m3539$r8$lambda$HMpWU6Ryr444SahjVbEVRqtyxs(Map.Entry entry, ObjectEncoderContext objectEncoderContext) {
        objectEncoderContext.add(MAP_KEY_DESC, entry.getKey());
        objectEncoderContext.add(MAP_VALUE_DESC, entry.getValue());
    }

    ProtobufDataEncoderContext(OutputStream outputStream, Map map, Map map2, ObjectEncoder objectEncoder) {
        this.output = outputStream;
        this.objectEncoders = map;
        this.valueEncoders = map2;
        this.fallbackEncoder = objectEncoder;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public ObjectEncoderContext add(FieldDescriptor fieldDescriptor, Object obj) {
        return add(fieldDescriptor, obj, true);
    }

    ObjectEncoderContext add(FieldDescriptor fieldDescriptor, Object obj, boolean z) throws IOException {
        if (obj != null) {
            if (obj instanceof CharSequence) {
                CharSequence charSequence = (CharSequence) obj;
                if (!z || charSequence.length() != 0) {
                    writeVarInt32((getTag(fieldDescriptor) << 3) | 2);
                    byte[] bytes = charSequence.toString().getBytes(UTF_8);
                    writeVarInt32(bytes.length);
                    this.output.write(bytes);
                    return this;
                }
            } else if (obj instanceof Collection) {
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    add(fieldDescriptor, it.next(), false);
                }
            } else if (obj instanceof Map) {
                Iterator it2 = ((Map) obj).entrySet().iterator();
                while (it2.hasNext()) {
                    doEncode(DEFAULT_MAP_ENCODER, fieldDescriptor, it2.next(), false);
                }
            } else {
                if (obj instanceof Double) {
                    return add(fieldDescriptor, ((Double) obj).doubleValue(), z);
                }
                if (obj instanceof Float) {
                    return add(fieldDescriptor, ((Float) obj).floatValue(), z);
                }
                if (obj instanceof Number) {
                    return add(fieldDescriptor, ((Number) obj).longValue(), z);
                }
                if (obj instanceof Boolean) {
                    return add(fieldDescriptor, ((Boolean) obj).booleanValue(), z);
                }
                if (obj instanceof byte[]) {
                    byte[] bArr = (byte[]) obj;
                    if (!z || bArr.length != 0) {
                        writeVarInt32((getTag(fieldDescriptor) << 3) | 2);
                        writeVarInt32(bArr.length);
                        this.output.write(bArr);
                        return this;
                    }
                } else {
                    ObjectEncoder objectEncoder = (ObjectEncoder) this.objectEncoders.get(obj.getClass());
                    if (objectEncoder != null) {
                        return doEncode(objectEncoder, fieldDescriptor, obj, z);
                    }
                    ValueEncoder valueEncoder = (ValueEncoder) this.valueEncoders.get(obj.getClass());
                    if (valueEncoder != null) {
                        return doEncode(valueEncoder, fieldDescriptor, obj, z);
                    }
                    if (obj instanceof ProtoEnum) {
                        return add(fieldDescriptor, ((ProtoEnum) obj).getNumber());
                    }
                    if (obj instanceof Enum) {
                        return add(fieldDescriptor, ((Enum) obj).ordinal());
                    }
                    return doEncode(this.fallbackEncoder, fieldDescriptor, obj, z);
                }
            }
        }
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public ObjectEncoderContext add(FieldDescriptor fieldDescriptor, double d) {
        return add(fieldDescriptor, d, true);
    }

    ObjectEncoderContext add(FieldDescriptor fieldDescriptor, double d, boolean z) throws IOException {
        if (z && d == 0.0d) {
            return this;
        }
        writeVarInt32((getTag(fieldDescriptor) << 3) | 1);
        this.output.write(allocateBuffer(8).putDouble(d).array());
        return this;
    }

    ObjectEncoderContext add(FieldDescriptor fieldDescriptor, float f, boolean z) throws IOException {
        if (z && f == 0.0f) {
            return this;
        }
        writeVarInt32((getTag(fieldDescriptor) << 3) | 5);
        this.output.write(allocateBuffer(4).putFloat(f).array());
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public ProtobufDataEncoderContext add(FieldDescriptor fieldDescriptor, int i) {
        return add(fieldDescriptor, i, true);
    }

    /* JADX INFO: renamed from: com.google.firebase.encoders.proto.ProtobufDataEncoderContext$1 */
    static /* synthetic */ class C18771 {

        /* JADX INFO: renamed from: $SwitchMap$com$google$firebase$encoders$proto$Protobuf$IntEncoding */
        static final /* synthetic */ int[] f584x531607dd;

        static {
            int[] iArr = new int[Protobuf.IntEncoding.values().length];
            f584x531607dd = iArr;
            try {
                iArr[Protobuf.IntEncoding.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f584x531607dd[Protobuf.IntEncoding.SIGNED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f584x531607dd[Protobuf.IntEncoding.FIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    ProtobufDataEncoderContext add(FieldDescriptor fieldDescriptor, int i, boolean z) throws IOException {
        if (!z || i != 0) {
            Protobuf protobuf = getProtobuf(fieldDescriptor);
            int i2 = C18771.f584x531607dd[protobuf.intEncoding().ordinal()];
            if (i2 == 1) {
                writeVarInt32(protobuf.tag() << 3);
                writeVarInt32(i);
                return this;
            }
            if (i2 == 2) {
                writeVarInt32(protobuf.tag() << 3);
                writeVarInt32((i << 1) ^ (i >> 31));
                return this;
            }
            if (i2 == 3) {
                writeVarInt32((protobuf.tag() << 3) | 5);
                this.output.write(allocateBuffer(4).putInt(i).array());
                return this;
            }
        }
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public ProtobufDataEncoderContext add(FieldDescriptor fieldDescriptor, long j) {
        return add(fieldDescriptor, j, true);
    }

    ProtobufDataEncoderContext add(FieldDescriptor fieldDescriptor, long j, boolean z) throws IOException {
        if (!z || j != 0) {
            Protobuf protobuf = getProtobuf(fieldDescriptor);
            int i = C18771.f584x531607dd[protobuf.intEncoding().ordinal()];
            if (i == 1) {
                writeVarInt32(protobuf.tag() << 3);
                writeVarInt64(j);
                return this;
            }
            if (i == 2) {
                writeVarInt32(protobuf.tag() << 3);
                writeVarInt64((j >> 63) ^ (j << 1));
                return this;
            }
            if (i == 3) {
                writeVarInt32((protobuf.tag() << 3) | 1);
                this.output.write(allocateBuffer(8).putLong(j).array());
                return this;
            }
        }
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public ProtobufDataEncoderContext add(FieldDescriptor fieldDescriptor, boolean z) {
        return add(fieldDescriptor, z, true);
    }

    ProtobufDataEncoderContext add(FieldDescriptor fieldDescriptor, boolean z, boolean z2) {
        return add(fieldDescriptor, z ? 1 : 0, z2);
    }

    ProtobufDataEncoderContext encode(Object obj) {
        if (obj == null) {
            return this;
        }
        ObjectEncoder objectEncoder = (ObjectEncoder) this.objectEncoders.get(obj.getClass());
        if (objectEncoder != null) {
            objectEncoder.encode(obj, this);
            return this;
        }
        throw new EncodingException("No encoder for " + obj.getClass());
    }

    private ProtobufDataEncoderContext doEncode(ObjectEncoder objectEncoder, FieldDescriptor fieldDescriptor, Object obj, boolean z) throws IOException {
        long jDetermineSize = determineSize(objectEncoder, obj);
        if (z && jDetermineSize == 0) {
            return this;
        }
        writeVarInt32((getTag(fieldDescriptor) << 3) | 2);
        writeVarInt64(jDetermineSize);
        objectEncoder.encode(obj, this);
        return this;
    }

    private long determineSize(ObjectEncoder objectEncoder, Object obj) throws IOException {
        LengthCountingOutputStream lengthCountingOutputStream = new LengthCountingOutputStream();
        try {
            OutputStream outputStream = this.output;
            this.output = lengthCountingOutputStream;
            try {
                objectEncoder.encode(obj, this);
                this.output = outputStream;
                long length = lengthCountingOutputStream.getLength();
                lengthCountingOutputStream.close();
                return length;
            } catch (Throwable th) {
                this.output = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                lengthCountingOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private ProtobufDataEncoderContext doEncode(ValueEncoder valueEncoder, FieldDescriptor fieldDescriptor, Object obj, boolean z) {
        this.valueEncoderContext.resetContext(fieldDescriptor, z);
        valueEncoder.encode(obj, this.valueEncoderContext);
        return this;
    }

    private static ByteBuffer allocateBuffer(int i) {
        return ByteBuffer.allocate(i).order(ByteOrder.LITTLE_ENDIAN);
    }

    private static int getTag(FieldDescriptor fieldDescriptor) {
        Protobuf protobuf = (Protobuf) fieldDescriptor.getProperty(Protobuf.class);
        if (protobuf == null) {
            throw new EncodingException("Field has no @Protobuf config");
        }
        return protobuf.tag();
    }

    private static Protobuf getProtobuf(FieldDescriptor fieldDescriptor) {
        Protobuf protobuf = (Protobuf) fieldDescriptor.getProperty(Protobuf.class);
        if (protobuf != null) {
            return protobuf;
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    private void writeVarInt32(int i) throws IOException {
        while ((i & (-128)) != 0) {
            this.output.write((i & 127) | 128);
            i >>>= 7;
        }
        this.output.write(i & 127);
    }

    private void writeVarInt64(long j) throws IOException {
        while (((-128) & j) != 0) {
            this.output.write((((int) j) & 127) | 128);
            j >>>= 7;
        }
        this.output.write(((int) j) & 127);
    }
}
