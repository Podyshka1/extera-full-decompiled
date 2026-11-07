package com.google.android.recaptcha.internal;

import android.app.Application;
import android.content.ContentResolver;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzei {
    public static final zzeo zza(Application application, zzhu zzhuVar, ContentResolver contentResolver, StandardIntegrityManager standardIntegrityManager, zzgp zzgpVar, zzhr zzhrVar, boolean z) {
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        listCreateListBuilder.add(new zzez());
        listCreateListBuilder.add(new zzeh());
        listCreateListBuilder.add(new zzea(application.getContentResolver()));
        listCreateListBuilder.add(new zzee());
        listCreateListBuilder.add(new zzec(application, zzgpVar, zzhrVar));
        if (z) {
            listCreateListBuilder.add(new zzfd(zzhuVar, standardIntegrityManager, zzhrVar, new zzfp(zzhuVar, standardIntegrityManager, 28800000L)));
        }
        return new zzeo(CollectionsKt.build(listCreateListBuilder));
    }
}
