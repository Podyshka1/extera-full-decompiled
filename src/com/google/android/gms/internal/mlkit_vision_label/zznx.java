package com.google.android.gms.internal.mlkit_vision_label;

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
public final class zznx implements zzno {
    private Provider zza;
    private final Provider zzb;
    private final zznh zzc;

    public zznx(Context context, zznh zznhVar) {
        this.zzc = zznhVar;
        CCTDestination cCTDestination = CCTDestination.INSTANCE;
        TransportRuntime.initialize(context);
        final TransportFactory transportFactoryNewFactory = TransportRuntime.getInstance().newFactory(cCTDestination);
        if (cCTDestination.getSupportedEncodings().contains(Encoding.m295of("json"))) {
            this.zza = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_vision_label.zznu
                @Override // com.google.firebase.inject.Provider
                public final Object get() {
                    return transportFactoryNewFactory.getTransport("FIREBASE_ML_SDK", byte[].class, Encoding.m295of("json"), new Transformer() { // from class: com.google.android.gms.internal.mlkit_vision_label.zznw
                        @Override // com.google.android.datatransport.Transformer
                        public final Object apply(Object obj) {
                            return (byte[]) obj;
                        }
                    });
                }
            });
        }
        this.zzb = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_vision_label.zznv
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                return transportFactoryNewFactory.getTransport("FIREBASE_ML_SDK", byte[].class, Encoding.m295of("proto"), new Transformer() { // from class: com.google.android.gms.internal.mlkit_vision_label.zznt
                    @Override // com.google.android.datatransport.Transformer
                    public final Object apply(Object obj) {
                        return (byte[]) obj;
                    }
                });
            }
        });
    }

    static Event zzb(zznh zznhVar, zznf zznfVar) {
        int iZza = zznhVar.zza();
        return zznfVar.zza() != 0 ? Event.ofData(zznfVar.zze(iZza, false)) : Event.ofTelemetry(zznfVar.zze(iZza, false));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zzno
    public final void zza(zznf zznfVar) {
        if (this.zzc.zza() != 0) {
            ((Transport) this.zzb.get()).send(zzb(this.zzc, zznfVar));
            return;
        }
        Provider provider = this.zza;
        if (provider != null) {
            ((Transport) provider.get()).send(zzb(this.zzc, zznfVar));
        }
    }
}
