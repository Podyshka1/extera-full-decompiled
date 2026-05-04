package com.google.mlkit.p020nl.languageid;

import com.google.android.gms.common.internal.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class LanguageIdentificationOptions {
    public static final LanguageIdentificationOptions zza = new Builder().build();
    private final Float zzb;
    private final Executor zzc;

    public static class Builder {
        private Float zza;
        private Executor zzb;

        public LanguageIdentificationOptions build() {
            return new LanguageIdentificationOptions(this.zza, this.zzb, null);
        }
    }

    /* synthetic */ LanguageIdentificationOptions(Float f, Executor executor, zza zzaVar) {
        this.zzb = f;
        this.zzc = executor;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LanguageIdentificationOptions)) {
            return false;
        }
        LanguageIdentificationOptions languageIdentificationOptions = (LanguageIdentificationOptions) obj;
        return Objects.equal(languageIdentificationOptions.zzb, this.zzb) && Objects.equal(languageIdentificationOptions.zzc, this.zzc);
    }

    public Float getConfidenceThreshold() {
        return this.zzb;
    }

    public Executor getExecutor() {
        return this.zzc;
    }

    public int hashCode() {
        return Objects.hashCode(this.zzb, this.zzc);
    }
}
