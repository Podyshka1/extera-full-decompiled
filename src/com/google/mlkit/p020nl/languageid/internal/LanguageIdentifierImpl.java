package com.google.mlkit.p020nl.languageid.internal;

import android.os.SystemClock;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.OnLifecycleEvent;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_language_id_common.zzhm;
import com.google.android.gms.internal.mlkit_language_id_common.zzhs;
import com.google.android.gms.internal.mlkit_language_id_common.zzhu;
import com.google.android.gms.internal.mlkit_language_id_common.zzhw;
import com.google.android.gms.internal.mlkit_language_id_common.zzhx;
import com.google.android.gms.internal.mlkit_language_id_common.zzhy;
import com.google.android.gms.internal.mlkit_language_id_common.zzhz;
import com.google.android.gms.internal.mlkit_language_id_common.zziu;
import com.google.android.gms.internal.mlkit_language_id_common.zziv;
import com.google.android.gms.internal.mlkit_language_id_common.zziy;
import com.google.android.gms.internal.mlkit_language_id_common.zzja;
import com.google.android.gms.internal.mlkit_language_id_common.zzjd;
import com.google.android.gms.internal.mlkit_language_id_common.zzla;
import com.google.android.gms.internal.mlkit_language_id_common.zzli;
import com.google.android.gms.internal.mlkit_language_id_common.zzlk;
import com.google.android.gms.internal.mlkit_language_id_common.zzll;
import com.google.android.gms.internal.mlkit_language_id_common.zzlt;
import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.Task;
import com.google.mlkit.common.sdkinternal.ExecutorSelector;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.google.mlkit.p020nl.languageid.LanguageIdentificationOptions;
import com.google.mlkit.p020nl.languageid.LanguageIdentifier;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class LanguageIdentifierImpl implements LanguageIdentifier {
    private final LanguageIdentificationOptions zza;
    private final zzli zzb;
    private final zzlk zzc;
    private final Executor zzd;
    private final AtomicReference zze;
    private final CancellationTokenSource zzf = new CancellationTokenSource();
    private final zzhw zzg;

    public static final class Factory {
        private final zzli zza;
        private final zzg zzb;
        private final ExecutorSelector zzc;

        public Factory(zzg zzgVar, ExecutorSelector executorSelector) {
            this.zzb = zzgVar;
            this.zzc = executorSelector;
            this.zza = zzlt.zzb(true != zzgVar.zzf() ? "play-services-mlkit-language-id" : "language-id");
        }

        public LanguageIdentifier create(LanguageIdentificationOptions languageIdentificationOptions) {
            this.zzb.zze(languageIdentificationOptions);
            return LanguageIdentifierImpl.zza(languageIdentificationOptions, this.zzb, this.zza, this.zzc);
        }
    }

    private LanguageIdentifierImpl(LanguageIdentificationOptions languageIdentificationOptions, zzg zzgVar, zzli zzliVar, Executor executor) {
        this.zza = languageIdentificationOptions;
        this.zzb = zzliVar;
        this.zzd = executor;
        this.zze = new AtomicReference(zzgVar);
        this.zzg = zzgVar.zzf() ? zzhw.TYPE_THICK : zzhw.TYPE_THIN;
        this.zzc = zzlk.zza(MlKitContext.getInstance().getApplicationContext());
    }

    public static LanguageIdentifier zza(LanguageIdentificationOptions languageIdentificationOptions, zzg zzgVar, zzli zzliVar, ExecutorSelector executorSelector) {
        LanguageIdentifierImpl languageIdentifierImpl = new LanguageIdentifierImpl(languageIdentificationOptions, zzgVar, zzliVar, executorSelector.getExecutorToUse(languageIdentificationOptions.getExecutor()));
        zzli zzliVar2 = languageIdentifierImpl.zzb;
        zzhz zzhzVar = new zzhz();
        zzhzVar.zzc(languageIdentifierImpl.zzg);
        zziu zziuVar = new zziu();
        zziuVar.zzf(zzf(languageIdentifierImpl.zza.getConfidenceThreshold()));
        zzhzVar.zze(zziuVar.zzi());
        zzliVar2.zzc(zzll.zzg(zzhzVar, 1), zzhy.ON_DEVICE_LANGUAGE_IDENTIFICATION_CREATE);
        ((zzg) languageIdentifierImpl.zze.get()).pin();
        return languageIdentifierImpl;
    }

    private final void zze(long j, boolean z, zzjd zzjdVar, zzja zzjaVar, zzhx zzhxVar) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j;
        this.zzb.zze(new zzf(this, jElapsedRealtime, z, zzhxVar, zzjdVar, zzjaVar), zzhy.ON_DEVICE_LANGUAGE_IDENTIFICATION_DETECT);
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.zzc.zzc(this.zzg == zzhw.TYPE_THICK ? 24603 : 24602, zzhxVar.zza(), jCurrentTimeMillis - jElapsedRealtime, jCurrentTimeMillis);
    }

    private static final zzhu zzf(Float f) {
        zzhs zzhsVar = new zzhs();
        zzhsVar.zza(Float.valueOf(f == null ? -1.0f : f.floatValue()));
        return zzhsVar.zzb();
    }

    @Override // com.google.mlkit.p020nl.languageid.LanguageIdentifier, java.io.Closeable, java.lang.AutoCloseable
    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void close() {
        zzg zzgVar = (zzg) this.zze.getAndSet(null);
        if (zzgVar == null) {
            return;
        }
        this.zzf.cancel();
        zzgVar.unpin(this.zzd);
        zzli zzliVar = this.zzb;
        zzhz zzhzVar = new zzhz();
        zzhzVar.zzc(this.zzg);
        zziu zziuVar = new zziu();
        zziuVar.zzf(zzf(this.zza.getConfidenceThreshold()));
        zzhzVar.zze(zziuVar.zzi());
        zzliVar.zzc(zzll.zzg(zzhzVar, 1), zzhy.ON_DEVICE_LANGUAGE_IDENTIFICATION_CLOSE);
    }

    @Override // com.google.android.gms.common.api.OptionalModuleApi
    public final Feature[] getOptionalFeatures() {
        return this.zzg == zzhw.TYPE_THICK ? OptionalModuleUtils.EMPTY_FEATURES : new Feature[]{OptionalModuleUtils.FEATURE_LANGID};
    }

    @Override // com.google.mlkit.p020nl.languageid.LanguageIdentifier
    public final Task identifyLanguage(final String str) {
        Preconditions.checkNotNull(str, "Text can not be null");
        final zzg zzgVar = (zzg) this.zze.get();
        Preconditions.checkState(zzgVar != null, "LanguageIdentification has been closed");
        final boolean zIsLoaded = true ^ zzgVar.isLoaded();
        return zzgVar.callAfterLoad(this.zzd, new Callable() { // from class: com.google.mlkit.nl.languageid.internal.zze
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzc(zzgVar, str, zIsLoaded);
            }
        }, this.zzf.getToken());
    }

    final /* synthetic */ zzla zzb(long j, boolean z, zzhx zzhxVar, zzjd zzjdVar, zzja zzjaVar) {
        zziu zziuVar = new zziu();
        zziuVar.zzf(zzf(this.zza.getConfidenceThreshold()));
        zzhm zzhmVar = new zzhm();
        zzhmVar.zza(Long.valueOf(j));
        zzhmVar.zzc(Boolean.valueOf(z));
        zzhmVar.zzb(zzhxVar);
        zziuVar.zze(zzhmVar.zzd());
        if (zzjaVar != null) {
            zziuVar.zzc(zzjaVar);
        }
        zzhz zzhzVar = new zzhz();
        zzhzVar.zzc(this.zzg);
        zzhzVar.zze(zziuVar.zzi());
        return zzll.zzf(zzhzVar);
    }

    final /* synthetic */ String zzc(zzg zzgVar, String str, boolean z) {
        boolean z2;
        RuntimeException runtimeException;
        float fFloatValue;
        zzja zzjaVarZzc;
        Float confidenceThreshold = this.zza.getConfidenceThreshold();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            String strSubstring = str.substring(0, Math.min(str.length(), 200));
            if (confidenceThreshold != null) {
                try {
                    fFloatValue = confidenceThreshold.floatValue();
                } catch (RuntimeException e) {
                    runtimeException = e;
                    z2 = z;
                    zze(jElapsedRealtime, z2, null, null, zzhx.UNKNOWN_ERROR);
                    throw runtimeException;
                }
            } else {
                fFloatValue = 0.5f;
            }
            String strZzc = zzgVar.zzc(strSubstring, fFloatValue);
            if (strZzc == null) {
                zzjaVarZzc = null;
            } else {
                zziy zziyVar = new zziy();
                zziv zzivVar = new zziv();
                zzivVar.zzb(strZzc);
                zziyVar.zzb(zzivVar.zzc());
                zzjaVarZzc = zziyVar.zzc();
            }
            z2 = z;
            try {
                zze(jElapsedRealtime, z2, null, zzjaVarZzc, zzhx.NO_ERROR);
                return strZzc;
            } catch (RuntimeException e2) {
                e = e2;
                runtimeException = e;
                zze(jElapsedRealtime, z2, null, null, zzhx.UNKNOWN_ERROR);
                throw runtimeException;
            }
        } catch (RuntimeException e3) {
            e = e3;
            z2 = z;
        }
    }
}
