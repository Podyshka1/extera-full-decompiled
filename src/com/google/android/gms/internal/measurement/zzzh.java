package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Formattable;
import java.util.Formatter;
import java.util.Locale;
import okhttp3.internal.ws.WebSocketProtocol;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzzh {
    static final Locale zza = Locale.ROOT;

    public static String zza(Object obj) {
        if (obj == null) {
            return "null";
        }
        try {
            if (obj.getClass().isArray()) {
                return obj instanceof int[] ? Arrays.toString((int[]) obj) : obj instanceof long[] ? Arrays.toString((long[]) obj) : obj instanceof byte[] ? Arrays.toString((byte[]) obj) : obj instanceof char[] ? Arrays.toString((char[]) obj) : obj instanceof short[] ? Arrays.toString((short[]) obj) : obj instanceof float[] ? Arrays.toString((float[]) obj) : obj instanceof double[] ? Arrays.toString((double[]) obj) : obj instanceof boolean[] ? Arrays.toString((boolean[]) obj) : Arrays.toString((Object[]) obj);
            }
            String string = obj.toString();
            return string != null ? string : zzf(obj, "toString() returned null");
        } catch (RuntimeException e) {
            return zze(obj, e);
        }
    }

    public static void zzb(Formattable formattable, StringBuilder sb, zzza zzzaVar) {
        int iZzj = zzzaVar.zzj();
        int i = iZzj & 162;
        if (i != 0) {
            i = ((iZzj & 32) != 0 ? 1 : 0) | ((iZzj & 128) != 0 ? 2 : 0) | ((iZzj & 2) != 0 ? 4 : 0);
        }
        int length = sb.length();
        Formatter formatter = new Formatter(sb, zza);
        try {
            formattable.formatTo(formatter, i, zzzaVar.zzf(), zzzaVar.zzg());
        } catch (RuntimeException e) {
            sb.setLength(length);
            try {
                formatter.out().append(zze(formattable, e));
            } catch (IOException unused) {
            }
        }
    }

    public static void zzc(StringBuilder sb, Number number, zzza zzzaVar) {
        boolean zZzk = zzzaVar.zzk();
        long jLongValue = number.longValue();
        if (number instanceof Long) {
            zzd(sb, jLongValue, zZzk);
            return;
        }
        if (number instanceof Integer) {
            zzd(sb, jLongValue & 4294967295L, zZzk);
            return;
        }
        if (number instanceof Byte) {
            zzd(sb, jLongValue & 255, zZzk);
            return;
        }
        if (number instanceof Short) {
            zzd(sb, jLongValue & WebSocketProtocol.PAYLOAD_SHORT_MAX, zZzk);
            return;
        }
        if (!(number instanceof BigInteger)) {
            Segment$$ExternalSyntheticBUOutline1.m925m("unsupported number type: ".concat(String.valueOf(number.getClass())));
            return;
        }
        String string = ((BigInteger) number).toString(16);
        if (zZzk) {
            string = string.toUpperCase(zza);
        }
        sb.append(string);
    }

    private static void zzd(StringBuilder sb, long j, boolean z) {
        if (j == 0) {
            sb.append(MVEL.VERSION_SUB);
            return;
        }
        String str = true != z ? "0123456789abcdef" : "0123456789ABCDEF";
        for (int iNumberOfLeadingZeros = (63 - Long.numberOfLeadingZeros(j)) & (-4); iNumberOfLeadingZeros >= 0; iNumberOfLeadingZeros -= 4) {
            sb.append(str.charAt((int) ((j >>> iNumberOfLeadingZeros) & 15)));
        }
    }

    private static String zze(Object obj, RuntimeException runtimeException) {
        String simpleName;
        try {
            simpleName = runtimeException.toString();
        } catch (RuntimeException e) {
            simpleName = e.getClass().getSimpleName();
        }
        return zzf(obj, simpleName);
    }

    private static String zzf(Object obj, String str) {
        String name = obj.getClass().getName();
        int iIdentityHashCode = System.identityHashCode(obj);
        int length = name.length();
        StringBuilder sb = new StringBuilder(length + 2 + String.valueOf(iIdentityHashCode).length() + 2 + String.valueOf(str).length() + 1);
        sb.append("{");
        sb.append(name);
        sb.append("@");
        sb.append(iIdentityHashCode);
        sb.append(": ");
        sb.append(str);
        sb.append("}");
        return sb.toString();
    }
}
