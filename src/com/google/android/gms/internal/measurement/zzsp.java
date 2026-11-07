package com.google.android.gms.internal.measurement;

import com.google.common.base.Joiner;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzsp {
    private static final Pattern zza = Pattern.compile("(\\w+).*");

    public static String zza(String str) {
        Matcher matcher = zza.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        f$$ExternalSyntheticBUOutline1.m212m("Invalid fragment spec: ".concat(String.valueOf(str)));
        return null;
    }

    public static String zzb(List list) {
        if (list.isEmpty()) {
            return null;
        }
        return "transform=".concat(String.valueOf(Joiner.on("+").join(list)));
    }
}
