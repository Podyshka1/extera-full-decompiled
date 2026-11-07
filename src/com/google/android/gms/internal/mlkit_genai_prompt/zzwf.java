package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.mlkit.genai.prompt.CreateCachedContextRequest;
import com.google.mlkit.genai.prompt.PromptPrefix;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class zzwf implements zzaty {
    private final zzaro zza;
    private final zzavc zzb;

    public zzwf() {
        zzarm zzarmVar = new zzarm();
        zzarmVar.zza(zzarn.GENERATION_MODE_REGENERATIVE);
        this.zza = zzarmVar.zzb();
        this.zzb = zzavk.zza("genai-prompt");
    }

    private static final int zze(CreateCachedContextRequest createCachedContextRequest) {
        String textString;
        PromptPrefix zzb = createCachedContextRequest.getZzb();
        if (zzb == null || (textString = zzb.getTextString()) == null) {
            return 0;
        }
        return textString.length();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaty
    public final void zza() throws Throwable {
        zzanv zzanvVar = new zzanv();
        zzarg zzargVar = new zzarg();
        zzargVar.zza(this.zza);
        zzanvVar.zzd(zzargVar.zzb());
        this.zzb.zza(zzavd.zze(zzanvVar), zzanu.SAPI_PROMPT_CACHE_CREATION_CREATE);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaty
    public final void zzb(int i, int i2) throws Throwable {
        zzanv zzanvVar = new zzanv();
        zzari zzariVar = new zzari();
        zzariVar.zza(this.zza);
        zzars zzarsVar = new zzars();
        zzarsVar.zza(Integer.valueOf(i));
        zzarsVar.zzb(zzaty.zzk(i2));
        zzariVar.zzc(zzarsVar.zzh());
        zzanvVar.zzc(zzariVar.zzd());
        this.zzb.zza(zzavd.zze(zzanvVar), zzanu.SAPI_PROMPT_CACHE_CREATION_INFERENCE);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaty
    public final void zzc() throws Throwable {
        zzanv zzanvVar = new zzanv();
        zzarc zzarcVar = new zzarc();
        zzarcVar.zza(this.zza);
        zzanvVar.zze(zzarcVar.zzb());
        this.zzb.zza(zzavd.zze(zzanvVar), zzanu.SAPI_PROMPT_CACHE_CREATION_CLOSE);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaty
    public final /* bridge */ /* synthetic */ void zzd(zzars zzarsVar, Object obj, Object obj2) throws Throwable {
        String textString;
        CreateCachedContextRequest createCachedContextRequest = (CreateCachedContextRequest) obj;
        ((Boolean) obj2).getClass();
        ArrayList arrayList = new ArrayList();
        zzaqz zzaqzVar = new zzaqz();
        zzaqzVar.zza(zzara.MODALITY_TYPE_TEXT);
        zzaqzVar.zzb(Long.valueOf(zze(createCachedContextRequest)));
        PromptPrefix zzb = createCachedContextRequest.getZzb();
        int length = (zzb == null || (textString = zzb.getTextString()) == null) ? 0 : textString.length();
        zzasg zzasgVar = new zzasg();
        Integer numValueOf = Integer.valueOf(length);
        zzasgVar.zza(numValueOf);
        zzasgVar.zzb(numValueOf);
        zzaqzVar.zzc(zzasgVar.zzc());
        arrayList.add(zzaqzVar.zzd());
        zzavc zzavcVar = this.zzb;
        zzanv zzanvVar = new zzanv();
        zzari zzariVar = new zzari();
        zzariVar.zza(this.zza);
        zzark zzarkVar = new zzark();
        zzarkVar.zzf(zzml.zzq(arrayList));
        zzariVar.zzb(zzarkVar.zzg());
        zzarsVar.zzd(Integer.valueOf(zze(createCachedContextRequest)));
        zzarsVar.zze(0);
        zzariVar.zzc(zzarsVar.zzh());
        zzanvVar.zzc(zzariVar.zzd());
        zzavcVar.zza(zzavd.zze(zzanvVar), zzanu.SAPI_PROMPT_CACHE_CREATION_INFERENCE);
    }
}
