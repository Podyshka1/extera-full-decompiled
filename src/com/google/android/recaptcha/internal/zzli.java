package com.google.android.recaptcha.internal;

import android.app.Application;
import java.util.Locale;
import java.util.MissingResourceException;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzli {
    private final Application zza;
    private final zzhh zzb;
    private zzaiw zzc;

    public zzli(Application application, zzhh zzhhVar) {
        this.zza = application;
        this.zzb = zzhhVar;
    }

    private static final String zzb() {
        try {
            return Locale.getDefault().getISO3Country();
        } catch (MissingResourceException unused) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }

    private static final String zzc() {
        try {
            return Locale.getDefault().getISO3Language();
        } catch (MissingResourceException unused) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }

    /* JADX WARN: Path cross not found for [B:6:0x001f, B:10:0x0040], limit reached: 33 */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0071 A[Catch: NameNotFoundException -> 0x00bc, TRY_LEAVE, TryCatch #1 {NameNotFoundException -> 0x00bc, blocks: (B:15:0x006d, B:17:0x0071, B:21:0x0095, B:22:0x00aa), top: B:31:0x006d }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008e  */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:27:0x0039
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1182)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final com.google.android.recaptcha.internal.zzajr zza(java.lang.String r11) {
        /*
            Method dump skipped, instruction units count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzli.zza(java.lang.String):com.google.android.recaptcha.internal.zzajr");
    }
}
