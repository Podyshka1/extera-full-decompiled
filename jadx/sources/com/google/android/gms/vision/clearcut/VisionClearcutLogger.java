package com.google.android.gms.vision.clearcut;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.internal.vision.zzfe;
import com.google.android.gms.internal.vision.zzfi$zzo;
import com.google.android.gms.internal.vision.zzio;
import com.google.android.gms.vision.AbstractC1348L;

/* JADX INFO: loaded from: classes4.dex */
@Keep
public class VisionClearcutLogger {
    private final ClearcutLogger zza;
    private boolean zzb = true;

    public VisionClearcutLogger(@RecentlyNonNull Context context) {
        this.zza = new ClearcutLogger(context, "VISION", null);
    }

    public final void zza(int i, zzfi$zzo zzfi_zzo) {
        byte[] bArrZzh = zzfi_zzo.zzh();
        if (i < 0 || i > 3) {
            AbstractC1348L.m366i("Illegal event code: %d", Integer.valueOf(i));
            return;
        }
        try {
            if (this.zzb) {
                this.zza.newEvent(bArrZzh).setEventCode(i).log();
                return;
            }
            zzfi$zzo.zza zzaVarZza = zzfi$zzo.zza();
            try {
                zzaVarZza.zza(bArrZzh, 0, bArrZzh.length, zzio.zzc());
                AbstractC1348L.m364e("Would have logged:\n%s", zzaVarZza.toString());
            } catch (Exception e) {
                AbstractC1348L.m365e(e, "Parsing error", new Object[0]);
            }
        } catch (Exception e2) {
            zzfe.zza(e2);
            AbstractC1348L.m365e(e2, "Failed to log", new Object[0]);
        }
    }
}
