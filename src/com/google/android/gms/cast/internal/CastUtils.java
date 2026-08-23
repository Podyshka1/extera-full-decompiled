package com.google.android.gms.cast.internal;

import android.os.SystemClock;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mvel2.asm.signature.SignatureVisitor;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class CastUtils {
    public static final /* synthetic */ int zza = 0;
    private static final Pattern zzb = Pattern.compile("urn:x-cast:[-A-Za-z0-9_]+(\\.[-A-Za-z0-9_]+)*");
    private static final Random zzc = new Random(SystemClock.elapsedRealtime());

    private CastUtils() {
    }

    public static JSONObject jsonStringToJsonObject(String str) {
        if (str == null) {
            return null;
        }
        try {
            return new JSONObject(str);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static double millisecToSec(long j) {
        return j / 1000.0d;
    }

    public static String optStringOrNull(JSONObject jSONObject, String str) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return null;
        }
        return jSONObject.optString(str);
    }

    public static long secToMillisec(double d) {
        return (long) (d * 1000.0d);
    }

    public static long secToMillisec(long j) {
        return j * 1000;
    }

    public static void throwIfInvalidNamespace(String str) {
        if (TextUtils.isEmpty(str)) {
            f$$ExternalSyntheticBUOutline1.m178m("Namespace cannot be null or empty");
            return;
        }
        if (str.length() > 128) {
            f$$ExternalSyntheticBUOutline1.m178m("Invalid namespace length");
        } else if (!str.startsWith("urn:x-cast:")) {
            f$$ExternalSyntheticBUOutline1.m178m("Namespace must begin with the prefix \"urn:x-cast:\"");
        } else {
            if (str.length() != 11) {
                return;
            }
            f$$ExternalSyntheticBUOutline1.m178m("Namespace must begin with the prefix \"urn:x-cast:\" and have non-empty suffix");
        }
    }

    public static long[] toLongArray(Collection<Long> collection) {
        long[] jArr = new long[collection.size()];
        Iterator<Long> it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            jArr[i] = it.next().longValue();
            i++;
        }
        return jArr;
    }

    public static long[] toLongArraySafely(JSONArray jSONArray) {
        try {
            return zzg(jSONArray);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static boolean zza(Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return true;
        }
        return (obj == null || obj2 == null || !obj.equals(obj2)) ? false : true;
    }

    public static long zzb() {
        return zzc.nextLong();
    }

    public static String zzc(String str) {
        if (zzb.matcher(str).matches()) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt < 'A' || cCharAt > 'Z') && ((cCharAt < 'a' || cCharAt > 'z') && !((cCharAt >= '0' && cCharAt <= '9') || cCharAt == '_' || cCharAt == '-' || cCharAt == '.' || cCharAt == ':'))) {
                sb.append(String.format("%%%04x", Integer.valueOf(cCharAt)));
            } else {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    public static String zzd(Locale locale) {
        StringBuilder sb = new StringBuilder(20);
        sb.append(locale.getLanguage());
        String country = locale.getCountry();
        if (!TextUtils.isEmpty(country)) {
            sb.append(SignatureVisitor.SUPER);
            sb.append(country);
        }
        String variant = locale.getVariant();
        if (!TextUtils.isEmpty(variant)) {
            sb.append(SignatureVisitor.SUPER);
            sb.append(variant);
        }
        return sb.toString();
    }

    public static int[] zze(Collection collection) {
        int[] iArr = new int[collection.size()];
        Iterator it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = ((Integer) it.next()).intValue();
            i++;
        }
        return iArr;
    }

    public static List zzf(int[] iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            arrayList.add(Integer.valueOf(i));
        }
        return arrayList;
    }

    public static long[] zzg(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        long[] jArr = new long[jSONArray.length()];
        for (int i = 0; i < jSONArray.length(); i++) {
            jArr[i] = jSONArray.getLong(i);
        }
        return jArr;
    }
}
