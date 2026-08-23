package com.google.android.gms.internal.mlkit_language_id_common;

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

/* JADX INFO: loaded from: classes.dex */
public final class zzlq implements zzlh {
    private Provider zza;
    private final Provider zzb;
    private final zzlc zzc;

    public zzlq(Context context, zzlc zzlcVar) {
        this.zzc = zzlcVar;
        CCTDestination cCTDestination = CCTDestination.INSTANCE;
        TransportRuntime.initialize(context);
        final TransportFactory transportFactoryNewFactory = TransportRuntime.getInstance().newFactory(cCTDestination);
        if (cCTDestination.getSupportedEncodings().contains(Encoding.m295of("json"))) {
            this.zza = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_language_id_common.zzln
                @Override // com.google.firebase.inject.Provider
                public final Object get() {
                    return transportFactoryNewFactory.getTransport("FIREBASE_ML_SDK", byte[].class, Encoding.m295of("json"), new Transformer() { // from class: com.google.android.gms.internal.mlkit_language_id_common.zzlp
                        @Override // com.google.android.datatransport.Transformer
                        public final Object apply(Object obj) {
                            return (byte[]) obj;
                        }
                    });
                }
            });
        }
        this.zzb = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_language_id_common.zzlo
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                return transportFactoryNewFactory.getTransport("FIREBASE_ML_SDK", byte[].class, Encoding.m295of("proto"), new Transformer() { // from class: com.google.android.gms.internal.mlkit_language_id_common.zzlm
                    @Override // com.google.android.datatransport.Transformer
                    public final Object apply(Object obj) {
                        return (byte[]) obj;
                    }
                });
            }
        });
    }

    static Event zzb(zzlc zzlcVar, zzla zzlaVar) {
        int iZza = zzlcVar.zza();
        return zzlaVar.zza() != 0 ? Event.ofData(zzlaVar.zze(iZza, false)) : Event.ofTelemetry(zzlaVar.zze(iZza, false));
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzlh
    public final void zza(zzla zzlaVar) {
        if (this.zzc.zza() != 0) {
            ((Transport) this.zzb.get()).send(zzb(this.zzc, zzlaVar));
            return;
        }
        Provider provider = this.zza;
        if (provider != null) {
            ((Transport) provider.get()).send(zzb(this.zzc, zzlaVar));
        }
    }
}
