package com.google.android.gms.location;

import com.google.android.gms.common.internal.Preconditions;
import okio.Segment$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzae {
    public static int zza(int i) {
        boolean z = true;
        if (i != 100 && i != 102 && i != 104) {
            if (i == 105) {
                i = 105;
            } else {
                z = false;
            }
        }
        Preconditions.checkArgument(z, "priority %d must be a Priority.PRIORITY_* constant", Integer.valueOf(i));
        return i;
    }

    public static String zzb(int i) {
        if (i == 100) {
            return "HIGH_ACCURACY";
        }
        if (i == 102) {
            return "BALANCED_POWER_ACCURACY";
        }
        if (i == 104) {
            return "LOW_POWER";
        }
        if (i == 105) {
            return "PASSIVE";
        }
        Segment$$ExternalSyntheticBUOutline0.m847m();
        return null;
    }
}
