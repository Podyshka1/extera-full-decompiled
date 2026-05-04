package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* JADX INFO: loaded from: classes.dex */
final class zzg implements DynamiteModule.VersionPolicy {
    zzg() {
    }

    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final DynamiteModule.VersionPolicy.SelectionResult selectModule(Context context, String str, DynamiteModule.VersionPolicy.IVersions iVersions) {
        DynamiteModule.VersionPolicy.SelectionResult selectionResult = new DynamiteModule.VersionPolicy.SelectionResult();
        int iZza = iVersions.zza(context, str);
        selectionResult.localVersion = iZza;
        if (iZza != 0) {
            selectionResult.selection = -1;
            return selectionResult;
        }
        int iZzb = iVersions.zzb(context, str, true);
        selectionResult.remoteVersion = iZzb;
        if (iZzb != 0) {
            selectionResult.selection = 1;
        }
        return selectionResult;
    }
}
