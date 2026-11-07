package com.google.mlkit.genai.prompt;

import com.google.android.gms.internal.mlkit_genai_prompt.zzaah;
import com.google.android.gms.internal.mlkit_genai_prompt.zzaak;
import com.google.android.gms.internal.mlkit_genai_prompt.zzaam;
import com.google.android.gms.internal.mlkit_genai_prompt.zzwf;
import com.google.android.gms.internal.mlkit_genai_prompt.zzwl;
import com.google.android.gms.internal.mlkit_genai_prompt.zzye;
import com.google.android.gms.internal.mlkit_genai_prompt.zzyj;
import com.google.android.gms.internal.mlkit_genai_prompt.zzyt;
import com.google.android.gms.internal.mlkit_genai_prompt.zzzy;
import java.util.concurrent.ExecutorService;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/google/mlkit/genai/prompt/Generation;", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/google/mlkit/genai/prompt/GenerationConfig;", "options", "Lcom/google/mlkit/genai/prompt/GenerativeModel;", "getClient", "(Lcom/google/mlkit/genai/prompt/GenerationConfig;)Lcom/google/mlkit/genai/prompt/GenerativeModel;", "java.com.google.android.libraries.mlkit.granules.genai.prompt_mlkit_genai_prompt"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
public final class Generation {
    public static final Generation INSTANCE = new Generation();

    private Generation() {
    }

    public final GenerativeModel getClient(GenerationConfig options) {
        int iZzb = zzyt.zzb(options, zzye.zza);
        ExecutorService zza = options.getZza();
        zzaam zzaamVar = zzaam.zza;
        zzaah zzaahVar = new zzaah(iZzb, zza, new zzyj(options, zzaamVar));
        zzwl zzwlVar = new zzwl(zzyt.zzb(options, zzye.zzb), options.getZza(), new zzwf());
        int iZzb2 = zzyt.zzb(options, zzye.zzc);
        ExecutorService zza2 = options.getZza();
        zzaam zzaamVar2 = zzaam.zzb;
        return new zzzy(options, zzaahVar, zzwlVar, new zzaak(iZzb2, zza2, new zzyj(options, zzaamVar2)), new zzaah(zzyt.zzb(options, zzye.zzd), options.getZza(), new zzyj(options, zzaamVar)), new zzaak(zzyt.zzb(options, zzye.zze), options.getZza(), new zzyj(options, zzaamVar2)));
    }
}
