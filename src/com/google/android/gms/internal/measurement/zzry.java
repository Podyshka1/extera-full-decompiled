package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.SystemClock;
import java.io.File;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzry {
    public static File zza(Context context) {
        File filesDir = context.getFilesDir();
        if (filesDir != null) {
            return filesDir;
        }
        SystemClock.sleep(100L);
        File filesDir2 = context.getFilesDir();
        if (filesDir2 != null) {
            return filesDir2;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("getFilesDir returned null twice.");
        return null;
    }
}
