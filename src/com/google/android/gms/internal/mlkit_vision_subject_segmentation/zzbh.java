package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzbh {
    @CheckForNull
    public static Object zza(Map map, @CheckForNull Object obj) {
        map.getClass();
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    public static boolean zzb(Map map, @CheckForNull Object obj) {
        map.getClass();
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }
}
