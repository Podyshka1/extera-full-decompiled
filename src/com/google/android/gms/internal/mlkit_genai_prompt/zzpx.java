package com.google.android.gms.internal.mlkit_genai_prompt;

import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzpx implements ObjectEncoderContext {
    private static final Charset zza = Charset.forName("UTF-8");
    private static final FieldDescriptor zzg;
    private static final FieldDescriptor zzh;
    private static final ObjectEncoder zzi;
    private OutputStream zzb;
    private final Map zzc;
    private final Map zzd;
    private final ObjectEncoder zze;
    private final zzqb zzf = new zzqb(this);

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder(PluginsConstants.Settings.KEY);
        zzpr zzprVar = new zzpr();
        zzprVar.zza(1);
        zzg = builder.withProperty(zzprVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder("value");
        zzpr zzprVar2 = new zzpr();
        zzprVar2.zza(2);
        zzh = builder2.withProperty(zzprVar2.zzb()).build();
        zzi = zzpw.zza;
    }

    public zzpx(OutputStream outputStream, Map map, Map map2, ObjectEncoder objectEncoder) {
        this.zzb = outputStream;
        this.zzc = map;
        this.zzd = map2;
        this.zze = objectEncoder;
    }

    public static /* synthetic */ void zzg(Map.Entry entry, ObjectEncoderContext objectEncoderContext) {
        objectEncoderContext.add(zzg, entry.getKey());
        objectEncoderContext.add(zzh, entry.getValue());
    }

    private final zzpx zzh(ObjectEncoder objectEncoder, FieldDescriptor fieldDescriptor, Object obj, boolean z) throws IOException {
        long jZzi = zzi(objectEncoder, obj);
        if (z && jZzi == 0) {
            return this;
        }
        zzn((zzl(fieldDescriptor) << 3) | 2);
        zzo(jZzi);
        objectEncoder.encode(obj, this);
        return this;
    }

    private final long zzi(ObjectEncoder objectEncoder, Object obj) throws IOException {
        zzps zzpsVar = new zzps();
        try {
            OutputStream outputStream = this.zzb;
            this.zzb = zzpsVar;
            try {
                objectEncoder.encode(obj, this);
                this.zzb = outputStream;
                long jZza = zzpsVar.zza();
                zzpsVar.close();
                return jZza;
            } catch (Throwable th) {
                this.zzb = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                zzpsVar.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private final zzpx zzj(ValueEncoder valueEncoder, FieldDescriptor fieldDescriptor, Object obj, boolean z) {
        zzqb zzqbVar = this.zzf;
        zzqbVar.zza(fieldDescriptor, z);
        valueEncoder.encode(obj, zzqbVar);
        return this;
    }

    private static ByteBuffer zzk(int i) {
        return ByteBuffer.allocate(i).order(ByteOrder.LITTLE_ENDIAN);
    }

    private static int zzl(FieldDescriptor fieldDescriptor) {
        zzpv zzpvVar = (zzpv) fieldDescriptor.getProperty(zzpv.class);
        if (zzpvVar != null) {
            return zzpvVar.zza();
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    private static zzpv zzm(FieldDescriptor fieldDescriptor) {
        zzpv zzpvVar = (zzpv) fieldDescriptor.getProperty(zzpv.class);
        if (zzpvVar != null) {
            return zzpvVar;
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    private final void zzn(int i) throws IOException {
        while (true) {
            long j = i & (-128);
            int i2 = i & 127;
            OutputStream outputStream = this.zzb;
            if (j == 0) {
                outputStream.write(i2);
                return;
            } else {
                outputStream.write(i2 | 128);
                i >>>= 7;
            }
        }
    }

    private final void zzo(long j) throws IOException {
        while (true) {
            long j2 = (-128) & j;
            int i = ((int) j) & 127;
            OutputStream outputStream = this.zzb;
            if (j2 == 0) {
                outputStream.write(i);
                return;
            } else {
                outputStream.write(i | 128);
                j >>>= 7;
            }
        }
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext add(FieldDescriptor fieldDescriptor, double d) throws IOException {
        zzb(fieldDescriptor, d, true);
        return this;
    }

    public final ObjectEncoderContext zza(FieldDescriptor fieldDescriptor, Object obj, boolean z) {
        if (obj != null) {
            if (obj instanceof CharSequence) {
                CharSequence charSequence = (CharSequence) obj;
                if (!z || charSequence.length() != 0) {
                    zzn((zzl(fieldDescriptor) << 3) | 2);
                    byte[] bytes = charSequence.toString().getBytes(zza);
                    zzn(bytes.length);
                    this.zzb.write(bytes);
                    return this;
                }
            } else if (obj instanceof Collection) {
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    zza(fieldDescriptor, it.next(), false);
                }
            } else if (obj instanceof Map) {
                Iterator it2 = ((Map) obj).entrySet().iterator();
                while (it2.hasNext()) {
                    zzh(zzi, fieldDescriptor, (Map.Entry) it2.next(), false);
                }
            } else {
                if (obj instanceof Double) {
                    zzb(fieldDescriptor, ((Double) obj).doubleValue(), z);
                    return this;
                }
                if (obj instanceof Float) {
                    zzc(fieldDescriptor, ((Float) obj).floatValue(), z);
                    return this;
                }
                if (obj instanceof Number) {
                    zze(fieldDescriptor, ((Number) obj).longValue(), z);
                    return this;
                }
                if (obj instanceof Boolean) {
                    zzd(fieldDescriptor, ((Boolean) obj).booleanValue() ? 1 : 0, z);
                    return this;
                }
                if (!(obj instanceof byte[])) {
                    ObjectEncoder objectEncoder = (ObjectEncoder) this.zzc.get(obj.getClass());
                    if (objectEncoder != null) {
                        zzh(objectEncoder, fieldDescriptor, obj, z);
                        return this;
                    }
                    ValueEncoder valueEncoder = (ValueEncoder) this.zzd.get(obj.getClass());
                    if (valueEncoder != null) {
                        zzj(valueEncoder, fieldDescriptor, obj, z);
                        return this;
                    }
                    if (obj instanceof zzpt) {
                        zzd(fieldDescriptor, ((zzpt) obj).zza(), true);
                        return this;
                    }
                    if (obj instanceof Enum) {
                        zzd(fieldDescriptor, ((Enum) obj).ordinal(), true);
                        return this;
                    }
                    zzh(this.zze, fieldDescriptor, obj, z);
                    return this;
                }
                byte[] bArr = (byte[]) obj;
                if (!z || bArr.length != 0) {
                    zzn((zzl(fieldDescriptor) << 3) | 2);
                    zzn(bArr.length);
                    this.zzb.write(bArr);
                    return this;
                }
            }
        }
        return this;
    }

    public final ObjectEncoderContext zzb(FieldDescriptor fieldDescriptor, double d, boolean z) throws IOException {
        if (z && d == 0.0d) {
            return this;
        }
        zzn((zzl(fieldDescriptor) << 3) | 1);
        this.zzb.write(zzk(8).putDouble(d).array());
        return this;
    }

    public final ObjectEncoderContext zzc(FieldDescriptor fieldDescriptor, float f, boolean z) throws IOException {
        if (z && f == 0.0f) {
            return this;
        }
        zzn((zzl(fieldDescriptor) << 3) | 5);
        this.zzb.write(zzk(4).putFloat(f).array());
        return this;
    }

    public final zzpx zzd(FieldDescriptor fieldDescriptor, int i, boolean z) {
        if (!z || i != 0) {
            zzpv zzpvVarZzm = zzm(fieldDescriptor);
            int iOrdinal = zzpvVarZzm.zzb().ordinal();
            if (iOrdinal == 0) {
                zzn(zzpvVarZzm.zza() << 3);
                zzn(i);
                return this;
            }
            if (iOrdinal == 1) {
                zzn(zzpvVarZzm.zza() << 3);
                zzn((i + i) ^ (i >> 31));
                return this;
            }
            if (iOrdinal == 2) {
                zzn((zzpvVarZzm.zza() << 3) | 5);
                this.zzb.write(zzk(4).putInt(i).array());
                return this;
            }
        }
        return this;
    }

    public final zzpx zze(FieldDescriptor fieldDescriptor, long j, boolean z) throws IOException {
        if (!z || j != 0) {
            zzpv zzpvVarZzm = zzm(fieldDescriptor);
            int iOrdinal = zzpvVarZzm.zzb().ordinal();
            if (iOrdinal == 0) {
                zzn(zzpvVarZzm.zza() << 3);
                zzo(j);
                return this;
            }
            if (iOrdinal == 1) {
                zzn(zzpvVarZzm.zza() << 3);
                zzo((j >> 63) ^ (j + j));
                return this;
            }
            if (iOrdinal == 2) {
                zzn((zzpvVarZzm.zza() << 3) | 1);
                this.zzb.write(zzk(8).putLong(j).array());
                return this;
            }
        }
        return this;
    }

    public final zzpx zzf(Object obj) {
        if (obj == null) {
            return this;
        }
        ObjectEncoder objectEncoder = (ObjectEncoder) this.zzc.get(obj.getClass());
        if (objectEncoder == null) {
            throw new EncodingException("No encoder for ".concat(String.valueOf(obj.getClass())));
        }
        objectEncoder.encode(obj, this);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final /* synthetic */ ObjectEncoderContext add(FieldDescriptor fieldDescriptor, int i) {
        zzd(fieldDescriptor, i, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final /* synthetic */ ObjectEncoderContext add(FieldDescriptor fieldDescriptor, long j) throws IOException {
        zze(fieldDescriptor, j, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext add(FieldDescriptor fieldDescriptor, Object obj) {
        zza(fieldDescriptor, obj, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final /* synthetic */ ObjectEncoderContext add(FieldDescriptor fieldDescriptor, boolean z) {
        zzd(fieldDescriptor, z ? 1 : 0, true);
        return this;
    }
}
