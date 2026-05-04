package com.google.mlkit.p020nl.languageid.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.mlkit.common.sdkinternal.ModelResource;
import com.google.mlkit.p020nl.languageid.IdentifiedLanguage;
import com.google.mlkit.p020nl.languageid.LanguageIdentificationOptions;
import java.util.Iterator;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.TranslateController;

/* JADX INFO: loaded from: classes.dex */
public final class zzg extends ModelResource {
    private LanguageIdentifierDelegate zza;
    private LanguageIdentificationOptions zzb;
    private final Context zzc;
    private final LanguageIdentifierCreatorDelegate zzd;
    private final boolean zze;

    public zzg(Context context, LanguageIdentifierCreatorDelegate languageIdentifierCreatorDelegate) {
        this.zzc = context;
        this.zzd = languageIdentifierCreatorDelegate;
        this.zze = languageIdentifierCreatorDelegate.getPriority() == 100;
    }

    @Override // com.google.mlkit.common.sdkinternal.ModelResource
    public final void load() {
        this.taskQueue.checkIsRunningOnCurrentThread();
        if (this.zza == null) {
            LanguageIdentifierDelegate languageIdentifierDelegateCreate = this.zzd.create(this.zzc, this.zzb);
            this.zza = languageIdentifierDelegateCreate;
            languageIdentifierDelegateCreate.init();
        }
    }

    @Override // com.google.mlkit.common.sdkinternal.ModelResource
    public final void release() {
        this.taskQueue.checkIsRunningOnCurrentThread();
        LanguageIdentifierDelegate languageIdentifierDelegate = this.zza;
        if (languageIdentifierDelegate != null) {
            languageIdentifierDelegate.release();
            this.zza = null;
        }
    }

    public final String zzc(String str, float f) {
        String languageTag;
        if (this.zza == null) {
            load();
        }
        if (str.isEmpty()) {
            return TranslateController.UNKNOWN_LANGUAGE;
        }
        Iterator it = ((LanguageIdentifierDelegate) Preconditions.checkNotNull(this.zza)).identifyPossibleLanguages(str, f).iterator();
        while (true) {
            if (!it.hasNext()) {
                languageTag = _UrlKt.FRAGMENT_ENCODE_SET;
                break;
            }
            IdentifiedLanguage identifiedLanguage = (IdentifiedLanguage) it.next();
            if (!"unknown".equals(identifiedLanguage.getLanguageTag())) {
                languageTag = identifiedLanguage.getLanguageTag();
                break;
            }
        }
        return languageTag.isEmpty() ? TranslateController.UNKNOWN_LANGUAGE : "iw".equals(languageTag) ? "he" : languageTag;
    }

    final void zze(LanguageIdentificationOptions languageIdentificationOptions) {
        this.zzb = languageIdentificationOptions;
    }

    public final boolean zzf() {
        return this.zze;
    }
}
