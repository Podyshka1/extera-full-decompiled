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
public final class zznd {
    private final List zza = zzc(CollectionsKt.listOf((Object[]) new String[]{"www.recaptcha.net", "www.gstatic.com/recaptcha", "www.gstatic.cn/recaptcha"}));

    private final boolean zzb(String str) {
        List list = this.zza;
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

    private static final List zzc(List list) {
        List<String> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        for (String str : list2) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 9);
            sb.append("https://");
            sb.append(str);
            sb.append("/");
            arrayList.add(sb.toString());
        }
        return arrayList;
    }

    public final boolean zza(String str) {
        Uri uri = Uri.parse(str);
        return !TextUtils.isEmpty(uri.toString()) && Intrinsics.areEqual("https", uri.getScheme()) && !TextUtils.isEmpty(uri.getHost()) && zzb(uri.toString());
    }

    public zznd(boolean z) {
    }
}
