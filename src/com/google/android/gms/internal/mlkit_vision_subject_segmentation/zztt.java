package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import android.content.Context;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.TransportFactory;
import com.google.android.datatransport.cct.CCTDestination;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.firebase.components.Lazy;
import com.google.firebase.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class zztt implements zztb {
    private Provider zza;
    private final Provider zzb;
    private final zztd zzc;

    public zztt(Context context, zztd zztdVar) {
        this.zzc = zztdVar;
        CCTDestination cCTDestination = CCTDestination.INSTANCE;
        TransportRuntime.initialize(context);
        final TransportFactory transportFactoryNewFactory = TransportRuntime.getInstance().newFactory(cCTDestination);
        if (cCTDestination.getSupportedEncodings().contains(Encoding.m295of("json"))) {
            this.zza = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_vision_subject_segmentation.zztq
                @Override // com.google.firebase.inject.Provider
                public final Object get() {
                    return transportFactoryNewFactory.getTransport("FIREBASE_ML_SDK", byte[].class, Encoding.m295of("json"), new Transformer() { // from class: com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzts
                        @Override // com.google.android.datatransport.Transformer
                        public final Object apply(Object obj) {
                            return (byte[]) obj;
                        }
                    });
                }
            });
        }
        this.zzb = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_vision_subject_segmentation.zztr
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                return transportFactoryNewFactory.getTransport("FIREBASE_ML_SDK", byte[].class, Encoding.m295of("proto"), new Transformer() { // from class: com.google.android.gms.internal.mlkit_vision_subject_segmentation.zztp
                    @Override // com.google.android.datatransport.Transformer
                    public final Object apply(Object obj) {
                        return (byte[]) obj;
                    }
                });
            }
        });
    }

    static Event zzb(zztd zztdVar, zzta zztaVar) {
        int iZza = zztdVar.zza();
        return zztaVar.zza() != 0 ? Event.ofData(zztaVar.zze(iZza, false)) : Event.ofTelemetry(zztaVar.zze(iZza, false));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_subject_segmentation.zztb
    public final void zza(zzta zztaVar) {
        if (this.zzc.zza() != 0) {
            ((Transport) this.zzb.get()).send(zzb(this.zzc, zztaVar));
            return;
        }
        Provider provider = this.zza;
        if (provider != null) {
            ((Transport) provider.get()).send(zzb(this.zzc, zztaVar));
        }
    }
}
