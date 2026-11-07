package com.google.android.recaptcha.internal;

import android.app.Application;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.play.core.integrity.IntegrityManagerFactory;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import java.util.concurrent.Executors;
import okhttp3.internal.url._UrlKt;
import org.chromium.net.CronetEngine;
import org.chromium.net.impl.JavaCronetProvider;

/* JADX INFO: loaded from: classes5.dex */
public final class zzik {
    public static final zzik zza = new zzik();

    private zzik() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ zzko zza(zzik zzikVar, final Application application, zzii zziiVar, int i, Object obj) {
        zzih zzihVar = zzih.zza;
        zzhu zzhuVar = new zzhu();
        zzna zznaVar = new zzna(new zznd(true), zzb(application), Executors.newCachedThreadPool(zzhv.zza("rC", null)));
        zzms zzmsVar = new zzms(zznaVar);
        zzmi zzmiVar = new zzmi(zznaVar);
        zzmo zzmoVar = new zzmo(zznaVar);
        zzhq zzhqVar = new zzhq(zzihVar.zzb());
        zzlz zzlzVar = new zzlz(new zzmm(zzhqVar, zznaVar));
        zzmq zzmqVar = new zzmq(zzihVar.zza(), zznaVar);
        zzlx zzlxVar = new zzlx(application, zzlzVar, zzhuVar, new zzlq(application, null, 2, 0 == true ? 1 : 0));
        zzhh zzhhVar = new zzhh(application);
        zzlj zzljVar = new zzlj(zzlxVar, new zzli(application, zzhhVar), new zzhd(null, 1, null));
        zzht zzhtVar = new zzht();
        zznn zznnVar = new zznn(new zzno(application));
        zzns zznsVar = new zzns(application, new zzop(application));
        zzgy zzgyVar = new zzgy(zzmqVar, zznsVar, zzhuVar);
        StandardIntegrityManager standardIntegrityManagerCreateStandard = IntegrityManagerFactory.createStandard(application);
        zzgp zzgpVar = new zzgp(new zzg());
        zznk zznkVar = new zznk("recck");
        final zzhr zzhrVar = new zzhr(application, GoogleApiAvailabilityLight.getInstance());
        zzon zzonVar = new zzon(new zzni(zznsVar, zznkVar), new zzng(zznnVar, zznkVar), new zznm(zznsVar, zznkVar));
        zzif zzifVar = new zzif(application, zzgpVar, zzhrVar, zzonVar, true);
        return new zzko(application, zzhuVar, new zzlh(application, zzihVar, zzgyVar, zzhuVar, standardIntegrityManagerCreateStandard, zzgpVar, zzonVar, zzhrVar, new zzdv(new zzmk(zzhqVar, zznaVar), zzhhVar, zzhuVar), new zzip() { // from class: com.google.android.recaptcha.internal.zzij
            @Override // com.google.android.recaptcha.internal.zzip
            public final /* synthetic */ zzcl zza() {
                return new zzdy(application, zzhrVar, null);
            }
        }, zzhqVar, zzmoVar), new zzhl(), zzljVar, zzhtVar, zzgyVar, zzonVar, new zzlf(zzmiVar, zzhqVar, zzonVar, zzhuVar, zzhhVar), new zzkw(application, zzhqVar, zzmsVar, zzhhVar, zzhuVar), zzifVar, new zzid(_UrlKt.FRAGMENT_ENCODE_SET), zzhqVar);
    }

    private static final CronetEngine zzb(Application application) {
        try {
            return new CronetEngine.Builder(application).build();
        } catch (IllegalStateException unused) {
            return new JavaCronetProvider(application).createBuilder().build();
        } catch (UnsatisfiedLinkError unused2) {
            return new JavaCronetProvider(application).createBuilder().build();
        }
    }
}
