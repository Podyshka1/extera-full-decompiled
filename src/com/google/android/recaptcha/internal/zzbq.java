package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.zip.GZIPInputStream;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.TextStreamsKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbq {
    private final zzh zza;
    private final zzbg zzb;

    public zzbq(zzh zzhVar, zzbg zzbgVar) {
        this.zza = zzhVar;
        this.zzb = zzbgVar;
    }

    public final zzoe zza(String str, byte[] bArr, zzbd zzbdVar) throws RecaptchaException, IOException, zzp {
        zzbb zzbbVarZza = zzbdVar.zza(zzne.VALIDATE_INPUT);
        zzbg zzbgVar = this.zzb;
        zzbgVar.zze.put(zzbbVarZza, new zzbf(zzbbVarZza, zzbgVar.zza, new zzac()));
        try {
            URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
            Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestProperty("Accept", "application/x-protobuffer");
            try {
                httpURLConnection.connect();
                httpURLConnection.getOutputStream().write(bArr);
                if (httpURLConnection.getResponseCode() == 200) {
                    try {
                        zzoe zzoeVarZzi = zzoe.zzi(httpURLConnection.getInputStream());
                        this.zzb.zza(zzbbVarZza);
                        return zzoeVarZzi;
                    } catch (Exception unused) {
                        throw new zzp(zzn.zzc, zzl.zzR, null);
                    }
                }
                if (httpURLConnection.getResponseCode() != 400) {
                    throw zzbr.zza(httpURLConnection.getResponseCode());
                }
                zzoz zzozVarZzg = zzoz.zzg(httpURLConnection.getErrorStream());
                zzo zzoVar = zzp.zza;
                throw zzo.zza(zzozVarZzg.zzi());
            } catch (Exception e) {
                if (e instanceof zzp) {
                    throw ((zzp) e);
                }
                throw new zzp(zzn.zze, zzl.zzQ, null);
            }
        } catch (zzp e2) {
            this.zzb.zzb(zzbbVarZza, e2, null);
            throw e2.zzc();
        }
    }

    public final String zzb(zzoe zzoeVar, zzbd zzbdVar) throws Exception {
        String text;
        try {
            String strZzk = zzoeVar.zzk();
            String strZzH = zzoeVar.zzH();
            if (this.zza.zzd(strZzH)) {
                zzbb zzbbVarZza = zzbdVar.zza(zzne.LOAD_CACHE_JS);
                zzbg zzbgVar = this.zzb;
                zzbgVar.zze.put(zzbbVarZza, new zzbf(zzbbVarZza, zzbgVar.zza, new zzac()));
                try {
                    text = this.zza.zza(strZzH);
                    if (text != null) {
                        this.zzb.zza(zzbbVarZza);
                    }
                } catch (Exception unused) {
                    this.zzb.zzb(zzbbVarZza, new zzp(zzn.zzn, zzl.zzad, null), null);
                }
                this.zzb.zzb(zzbbVarZza, new zzp(zzn.zzn, zzl.zzae, null), null);
                text = null;
            } else {
                text = null;
            }
            if (text == null) {
                this.zza.zzb();
                zzbb zzbbVarZza2 = zzbdVar.zza(zzne.DOWNLOAD_JS);
                try {
                    zzbg zzbgVar2 = this.zzb;
                    zzbgVar2.zze.put(zzbbVarZza2, new zzbf(zzbbVarZza2, zzbgVar2.zza, new zzac()));
                    try {
                        try {
                            URLConnection uRLConnectionOpenConnection = new URL(strZzk).openConnection();
                            Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
                            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                            httpURLConnection.setRequestMethod("GET");
                            httpURLConnection.setDoInput(true);
                            httpURLConnection.setRequestProperty("Accept", "application/x-protobuffer");
                            httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
                            httpURLConnection.connect();
                            if (httpURLConnection.getResponseCode() != 200) {
                                throw new zzp(zzn.zze, new zzl(httpURLConnection.getResponseCode()), null);
                            }
                            try {
                                text = TextStreamsKt.readText(Intrinsics.areEqual("gzip", httpURLConnection.getContentEncoding()) ? new InputStreamReader(new GZIPInputStream(httpURLConnection.getInputStream())) : new InputStreamReader(httpURLConnection.getInputStream()));
                                this.zzb.zza(zzbbVarZza2);
                                zzbb zzbbVarZza3 = zzbdVar.zza(zzne.SAVE_CACHE_JS);
                                try {
                                    zzbg zzbgVar3 = this.zzb;
                                    zzbgVar3.zze.put(zzbbVarZza3, new zzbf(zzbbVarZza3, zzbgVar3.zza, new zzac()));
                                    this.zza.zzc(strZzH, text);
                                    this.zzb.zza(zzbbVarZza3);
                                } catch (Exception unused2) {
                                    this.zzb.zzb(zzbbVarZza3, new zzp(zzn.zzn, zzl.zzaf, null), null);
                                }
                            } catch (Exception unused3) {
                                throw new zzp(zzn.zze, zzl.zzab, null);
                            }
                        } catch (Exception unused4) {
                            throw new zzp(zzn.zze, zzl.zzaa, null);
                        }
                    } catch (Exception unused5) {
                        throw new zzp(zzn.zzc, zzl.zzZ, null);
                    }
                } catch (zzp e) {
                    this.zzb.zzb(zzbbVarZza2, e, null);
                    throw e;
                }
            }
            return StringsKt.replace$default(zzoeVar.zzj(), "JAVASCRIPT_TAG", text, false, 4, (Object) null);
        } catch (Exception e2) {
            if (e2 instanceof zzp) {
                throw e2;
            }
            throw new zzp(zzn.zzc, zzl.zzX, null);
        }
    }
}
