package com.google.android.gms.cast.internal.media;

import android.text.TextUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.images.WebImage;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zza {
    private static final Logger zza = new Logger("MetadataUtils");
    private static final String[] zzb;
    private static final String zzc;

    static {
        String[] strArr = {"Z", "+hh", "+hhmm", "+hh:mm"};
        zzb = strArr;
        zzc = "yyyyMMdd'T'HHmmss".concat(String.valueOf(strArr[0]));
    }

    public static Calendar zzb(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            zza.m336d("Input string is empty or null", new Object[0]);
            return null;
        }
        String strZze = zze(str);
        if (TextUtils.isEmpty(strZze)) {
            zza.m336d("Invalid date format", new Object[0]);
            return null;
        }
        String strZzf = zzf(str);
        if (TextUtils.isEmpty(strZzf)) {
            str2 = "yyyyMMdd";
        } else {
            strZze = strZze + "T" + strZzf;
            str2 = strZzf.length() == 6 ? "yyyyMMdd'T'HHmmss" : zzc;
        }
        Calendar calendar = Calendar.getInstance();
        try {
            calendar.setTime(new SimpleDateFormat(str2).parse(strZze));
            return calendar;
        } catch (ParseException e) {
            zza.m339e(e, "Error parsing string", new Object[0]);
            return null;
        }
    }

    public static void zzd(List list, JSONArray jSONArray) {
        try {
            list.clear();
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    list.add(new WebImage(jSONArray.getJSONObject(i)));
                } catch (IllegalArgumentException unused) {
                }
            }
        } catch (JSONException unused2) {
        }
    }

    private static String zze(String str) {
        if (TextUtils.isEmpty(str)) {
            zza.m336d("Input string is empty or null", new Object[0]);
            return null;
        }
        try {
            return str.substring(0, 8);
        } catch (IndexOutOfBoundsException e) {
            zza.m339e(e, "Error extracting the date", new Object[0]);
            return null;
        }
    }

    private static String zzf(String str) {
        if (TextUtils.isEmpty(str)) {
            zza.m336d("string is empty or null", new Object[0]);
            return null;
        }
        int iIndexOf = str.indexOf(84);
        int i = iIndexOf + 1;
        if (iIndexOf != 8) {
            zza.m336d("T delimeter is not found", new Object[0]);
            return null;
        }
        try {
            String strSubstring = str.substring(i);
            if (strSubstring.length() == 6) {
                return strSubstring;
            }
            char cCharAt = strSubstring.charAt(6);
            if (cCharAt != '+' && cCharAt != '-') {
                if (cCharAt == 'Z' && strSubstring.length() == zzb[0].length() + 6) {
                    return String.valueOf(strSubstring.substring(0, strSubstring.length() - 1)).concat("+0000");
                }
                return null;
            }
            int length = strSubstring.length();
            String[] strArr = zzb;
            if (length == strArr[1].length() + 6 || length == strArr[2].length() + 6 || length == strArr[3].length() + 6) {
                return strSubstring.replaceAll("([\\+\\-]\\d\\d):(\\d\\d)", "$1$2");
            }
            return null;
        } catch (IndexOutOfBoundsException e) {
            zza.m339e(e, "Error extracting the time substring: %s", new Object[0]);
            return null;
        }
    }

    public static JSONArray zzc(List list) {
        list.getClass();
        JSONArray jSONArray = new JSONArray();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(((WebImage) it.next()).toJson());
        }
        return jSONArray;
    }
}
