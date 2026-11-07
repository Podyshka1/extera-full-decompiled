package com.google.android.gms.cast.framework;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes4.dex */
public interface zzal extends IInterface {
    void zze(Bundle bundle);

    void zzf(int i);

    void zzg(ConnectionResult connectionResult);

    void zzh(ApplicationMetadata applicationMetadata, String str, String str2, boolean z);

    void zzi(int i);

    void zzj(boolean z, int i);
}
