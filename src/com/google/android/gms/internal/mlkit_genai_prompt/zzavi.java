package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.TransportFactory;
import com.google.android.datatransport.cct.CCTDestination;
import com.google.android.datatransport.runtime.TransportRuntime;

/* JADX INFO: loaded from: classes5.dex */
public final class zzavi implements zzauv {
    private zzqc zza;
    private final zzqc zzb;
    private final zzaux zzc;

    public zzavi(Context context, zzaux zzauxVar) {
        this.zzc = zzauxVar;
        CCTDestination cCTDestination = CCTDestination.INSTANCE;
        TransportRuntime.initialize(context);
        final TransportFactory transportFactoryNewFactory = TransportRuntime.getInstance().newFactory(cCTDestination);
        if (cCTDestination.getSupportedEncodings().contains(Encoding.of("json"))) {
            this.zza = new zzpp(new zzqc() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzave
                @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzqc
                public final /* synthetic */ Object zza() {
                    return transportFactoryNewFactory.getTransport("FIREBASE_ML_SDK", byte[].class, Encoding.of("json"), zzavg.zza);
                }
            });
        }
        this.zzb = new zzpp(new zzqc() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzavh
            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzqc
            public final /* synthetic */ Object zza() {
                return transportFactoryNewFactory.getTransport("FIREBASE_ML_SDK", byte[].class, Encoding.of("proto"), zzavf.zza);
            }
        });
    }

    public static Event zzb(zzaux zzauxVar, zzauu zzauuVar) {
        return Event.ofTelemetry(zzauuVar.zza(zzauxVar.zzc(), false));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzauv
    public final void zza(zzauu zzauuVar) {
        zzaux zzauxVar = this.zzc;
        if (zzauxVar.zzc() != 0) {
            ((Transport) this.zzb.zza()).send(zzb(zzauxVar, zzauuVar));
            return;
        }
        zzqc zzqcVar = this.zza;
        if (zzqcVar != null) {
            ((Transport) zzqcVar.zza()).send(zzb(zzauxVar, zzauuVar));
        }
    }
}
