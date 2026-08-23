package com.google.android.recaptcha.internal;

import android.net.Uri;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzfb {
    public static final zzfb zza = new zzfb();
    private static final List zzb = zze(CollectionsKt.listOf((Object[]) new String[]{"www.recaptcha.net", "www.gstatic.com/recaptcha", "www.gstatic.cn/recaptcha"}));

    private zzfb() {
    }

    public static final boolean zza(Uri uri) {
        return zzd(uri) && zzc(uri.toString());
    }

    public static final boolean zzb(Uri uri) {
        return zzd(uri);
    }

    private static final boolean zzc(String str) {
        List list = zzb;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (StringsKt.startsWith$default(str, (String) it.next(), false, 2, (Object) null)) {
                return true;
            }
        }
        return false;
    }

    private static final boolean zzd(Uri uri) {
        return (TextUtils.isEmpty(uri.toString()) || !Intrinsics.areEqual("https", uri.getScheme()) || TextUtils.isEmpty(uri.getHost())) ? false : true;
    }

    private static final List zze(List list) {
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add("https://" + ((String) it.next()) + "/");
        }
        return arrayList;
    }
}
