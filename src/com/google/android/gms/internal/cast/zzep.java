package com.google.android.gms.internal.cast;

import android.hardware.display.DisplayManager;
import android.os.RemoteException;
import android.view.Display;
import android.view.Surface;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.Status;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzep extends zzeo {
    final /* synthetic */ zzer zza;
    private final zzew zzb;

    public zzep(zzer zzerVar, zzew zzewVar) {
        Objects.requireNonNull(zzerVar);
        this.zza = zzerVar;
        this.zzb = zzewVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.cast.zzeo, com.google.android.gms.internal.cast.zzey
    public final void zzb(int i, int i2, Surface surface, ApiMetadata apiMetadata) {
        zzet.zzb.m311d("onConnected", new Object[0]);
        zzew zzewVar = this.zzb;
        DisplayManager displayManager = (DisplayManager) zzewVar.getContext().getSystemService("display");
        if (displayManager == null) {
            zzet.zzb.m313e("Unable to get the display manager", new Object[0]);
            this.zza.setResult(new zzes(Status.RESULT_INTERNAL_ERROR));
            return;
        }
        zzer zzerVar = this.zza;
        zzet zzetVar = zzerVar.zzc;
        zzetVar.zza();
        zzetVar.zze(displayManager.createVirtualDisplay("private_display", i, i2, ((i < i2 ? i : i2) * 320) / 1080, surface, 2));
        if (zzetVar.zzd() == null) {
            zzet.zzb.m313e("Unable to create virtual display", new Object[0]);
            zzerVar.setResult(new zzes(Status.RESULT_INTERNAL_ERROR));
        } else if (zzetVar.zzd().getDisplay() == null) {
            zzet.zzb.m313e("Virtual display does not have a display", new Object[0]);
            zzerVar.setResult(new zzes(Status.RESULT_INTERNAL_ERROR));
        } else {
            try {
                ((zzez) zzewVar.getService()).zzh(this, zzetVar.zzd().getDisplay().getDisplayId(), zzff.zza(zzewVar.getContext()));
            } catch (RemoteException | IllegalStateException unused) {
                zzet.zzb.m313e("Unable to provision the route's new virtual Display", new Object[0]);
                this.zza.setResult(new zzes(Status.RESULT_INTERNAL_ERROR));
            }
        }
    }

    @Override // com.google.android.gms.internal.cast.zzeo, com.google.android.gms.internal.cast.zzey
    public final void zzc(ApiMetadata apiMetadata) {
        zzet.zzb.m311d("onConnectedWithDisplay", new Object[0]);
        zzer zzerVar = this.zza;
        zzet zzetVar = zzerVar.zzc;
        if (zzetVar.zzd() == null) {
            zzet.zzb.m313e("There is no virtual display", new Object[0]);
            zzerVar.setResult(new zzes(Status.RESULT_INTERNAL_ERROR));
            return;
        }
        Display display = zzetVar.zzd().getDisplay();
        if (display != null) {
            zzerVar.setResult(new zzes(display));
            return;
        }
        zzet.zzb.m313e("Virtual display no longer has a display", new Object[0]);
        zzerVar.setResult(new zzes(Status.RESULT_INTERNAL_ERROR));
    }

    @Override // com.google.android.gms.internal.cast.zzey
    public final void zzd(int i, ApiMetadata apiMetadata) {
        int i2 = zzet.$r8$clinit;
        zzet.zzb.m311d("onError: %d", Integer.valueOf(i));
        zzer zzerVar = this.zza;
        zzerVar.zzc.zza();
        zzerVar.setResult(new zzes(Status.RESULT_INTERNAL_ERROR));
    }
}
