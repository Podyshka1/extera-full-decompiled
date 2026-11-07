package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.mlkit.genai.prompt.Candidate;
import com.google.mlkit.genai.prompt.Content;
import com.google.mlkit.genai.prompt.GenerateContentRequest;
import com.google.mlkit.genai.prompt.GenerateContentResponse;
import com.google.mlkit.genai.prompt.GenerationConfig;
import com.google.mlkit.genai.prompt.ImagePart;
import com.google.mlkit.genai.prompt.Part;
import com.google.mlkit.genai.prompt.PromptPrefix;
import com.google.mlkit.genai.prompt.TextPart;
import j$.time.Duration;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes4.dex */
public final class zzyj implements zzaty {
    private final zzaam zza;
    private final zzaro zzb;
    private final zzavc zzc;

    public zzyj(GenerationConfig generationConfig, zzaam zzaamVar) {
        this.zza = zzaamVar;
        zzarm zzarmVar = new zzarm();
        zzarmVar.zza(zzarn.GENERATION_MODE_REGENERATIVE);
        this.zzb = zzarmVar.zzb();
        this.zzc = zzavk.zza("genai-prompt");
    }

    private final int zzl(GenerateContentRequest generateContentRequest) {
        String textString;
        PromptPrefix zzg = generateContentRequest.getZzg();
        int length = (zzg == null || (textString = zzg.getTextString()) == null) ? 0 : textString.length();
        Iterator<Content> it = generateContentRequest.getContents().iterator();
        int length2 = 0;
        while (it.hasNext()) {
            for (Part part : it.next().getParts()) {
                if (part instanceof TextPart) {
                    length2 += ((TextPart) part).getTextString().length();
                }
            }
        }
        zzaam zzaamVar = this.zza;
        zzaam zzaamVar2 = zzaam.zza;
        zzyi zzyiVar = zzyi.zza;
        int iOrdinal = zzaamVar.ordinal();
        if (iOrdinal == 0 || iOrdinal == 1) {
            return length + length2;
        }
        LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
        return 0;
    }

    private static final zzanu zzm(zzaam zzaamVar, zzyi zzyiVar, boolean z) {
        zzaam zzaamVar2 = zzaam.zza;
        zzyi zzyiVar2 = zzyi.zza;
        int iOrdinal = zzaamVar.ordinal();
        if (iOrdinal == 0) {
            int iOrdinal2 = zzyiVar.ordinal();
            if (iOrdinal2 == 0) {
                return zzanu.SAPI_PROMPT_CREATE;
            }
            if (iOrdinal2 == 1) {
                return z ? zzanu.SAPI_PROMPT_STRUCTURED_OUTPUT_INFERENCE : zzanu.SAPI_PROMPT_INFERENCE;
            }
            if (iOrdinal2 == 2) {
                return z ? zzanu.SAPI_PROMPT_STRUCTURED_OUTPUT_COUNT_TOKENS : zzanu.SAPI_PROMPT_COUNT_TOKENS;
            }
            if (iOrdinal2 == 3) {
                return zzanu.SAPI_PROMPT_CLOSE;
            }
            LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
            return null;
        }
        if (iOrdinal != 1) {
            LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
            return null;
        }
        int iOrdinal3 = zzyiVar.ordinal();
        if (iOrdinal3 == 0) {
            return zzanu.SAPI_PROMPT_INFERENCE_WITH_CACHE_CREATE;
        }
        if (iOrdinal3 == 1) {
            return z ? zzanu.SAPI_PROMPT_STRUCTURED_OUTPUT_INFERENCE_WITH_CACHE_INFERENCE : zzanu.SAPI_PROMPT_INFERENCE_WITH_CACHE_INFERENCE;
        }
        if (iOrdinal3 == 2) {
            return z ? zzanu.SAPI_PROMPT_STRUCTURED_OUTPUT_COUNT_TOKENS : zzanu.SAPI_PROMPT_COUNT_TOKENS;
        }
        if (iOrdinal3 == 3) {
            return zzanu.SAPI_PROMPT_INFERENCE_WITH_CACHE_CLOSE;
        }
        LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaty
    public final void zza() throws Throwable {
        zzanv zzanvVar = new zzanv();
        zzarg zzargVar = new zzarg();
        zzargVar.zza(this.zzb);
        zzanvVar.zzd(zzargVar.zzb());
        this.zzc.zza(zzavd.zze(zzanvVar), zzm(this.zza, zzyi.zza, false));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaty
    public final void zzb(int i, int i2) throws Throwable {
        zzh(null, i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaty
    public final void zzc() throws Throwable {
        zzanv zzanvVar = new zzanv();
        zzarc zzarcVar = new zzarc();
        zzarcVar.zza(this.zzb);
        zzanvVar.zze(zzarcVar.zzb());
        this.zzc.zza(zzavd.zze(zzanvVar), zzm(this.zza, zzyi.zzd, false));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaty
    public final /* bridge */ /* synthetic */ void zzd(zzars zzarsVar, Object obj, Object obj2) throws Throwable {
        Integer num;
        String textString;
        zzaan zzaanVar = (zzaan) obj;
        GenerateContentResponse generateContentResponse = (GenerateContentResponse) obj2;
        GenerateContentRequest generateContentRequestZza = zzaanVar.zza();
        ArrayList arrayList = new ArrayList();
        Iterator<Content> it = generateContentRequestZza.getContents().iterator();
        while (it.hasNext()) {
            for (Part part : it.next().getParts()) {
                if (part instanceof ImagePart) {
                    ImagePart imagePart = (ImagePart) part;
                    int height = imagePart.getBitmap().getHeight();
                    int width = imagePart.getBitmap().getWidth();
                    zzaqz zzaqzVar = new zzaqz();
                    zzaqzVar.zza(zzara.MODALITY_TYPE_IMAGE);
                    zzaqzVar.zzb(Long.valueOf(height * width));
                    arrayList.add(zzaqzVar.zzd());
                }
            }
        }
        zzaqz zzaqzVar2 = new zzaqz();
        zzaqzVar2.zza(zzara.MODALITY_TYPE_TEXT);
        zzaqzVar2.zzb(Long.valueOf(zzl(generateContentRequestZza)));
        PromptPrefix zzg = generateContentRequestZza.getZzg();
        int length = (zzg == null || (textString = zzg.getTextString()) == null) ? 0 : textString.length();
        Iterator<Content> it2 = generateContentRequestZza.getContents().iterator();
        int length2 = 0;
        while (it2.hasNext()) {
            for (Part part2 : it2.next().getParts()) {
                if (part2 instanceof TextPart) {
                    length2 += ((TextPart) part2).getTextString().length();
                }
            }
        }
        zzasg zzasgVar = new zzasg();
        zzaam zzaamVar = this.zza;
        zzaam zzaamVar2 = zzaam.zza;
        zzyi zzyiVar = zzyi.zza;
        int iOrdinal = zzaamVar.ordinal();
        if (iOrdinal != 0 && iOrdinal != 1) {
            LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
            return;
        }
        zzasgVar.zza(Integer.valueOf(length2 + length));
        zzasgVar.zzb(Integer.valueOf(length));
        zzaqzVar2.zzc(zzasgVar.zzc());
        arrayList.add(zzaqzVar2.zzd());
        zzavc zzavcVar = this.zzc;
        zzanv zzanvVar = new zzanv();
        zzari zzariVar = new zzari();
        zzariVar.zza(this.zzb);
        zzark zzarkVar = new zzark();
        zzarkVar.zza(Float.valueOf(generateContentRequestZza.getZza()));
        zzarkVar.zzb(Integer.valueOf(generateContentRequestZza.getZzb()));
        zzarkVar.zzc(Integer.valueOf(generateContentRequestZza.getZzc()));
        zzarkVar.zzd(Integer.valueOf(generateContentRequestZza.getZzd()));
        zzarkVar.zze(Integer.valueOf(generateContentRequestZza.getZze()));
        zzarkVar.zzf(zzml.zzq(arrayList));
        zzariVar.zzb(zzarkVar.zzg());
        zzarsVar.zzd(Integer.valueOf(zzl(generateContentRequestZza)));
        Iterator<T> it3 = generateContentResponse.getCandidates().iterator();
        if (it3.hasNext()) {
            String zza = ((Candidate) it3.next()).getZza();
            Integer numValueOf = Integer.valueOf(zza != null ? zza.length() : 0);
            while (it3.hasNext()) {
                String zza2 = ((Candidate) it3.next()).getZza();
                Integer numValueOf2 = Integer.valueOf(zza2 != null ? zza2.length() : 0);
                if (numValueOf.compareTo(numValueOf2) < 0) {
                    numValueOf = numValueOf2;
                }
            }
            num = numValueOf;
        } else {
            num = null;
        }
        zzarsVar.zze(Integer.valueOf(num != null ? num.intValue() : 0));
        zzariVar.zzc(zzarsVar.zzh());
        zzanvVar.zzc(zzariVar.zzd());
        zzavcVar.zza(zzavd.zze(zzanvVar), zzm(zzaamVar, zzyi.zzb, zzaanVar.zzb() != null));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaty
    /* JADX INFO: renamed from: zze, reason: merged with bridge method [inline-methods] */
    public final void zzh(zzaan zzaanVar, int i, int i2) throws Throwable {
        zzanv zzanvVar = new zzanv();
        zzari zzariVar = new zzari();
        zzariVar.zza(this.zzb);
        zzars zzarsVar = new zzars();
        zzarsVar.zza(Integer.valueOf(i));
        zzarsVar.zzb(zzaty.zzk(i2));
        zzariVar.zzc(zzarsVar.zzh());
        zzanvVar.zzc(zzariVar.zzd());
        zzauu zzauuVarZze = zzavd.zze(zzanvVar);
        zzyi zzyiVar = zzyi.zzb;
        KClass kClassZzb = zzaanVar != null ? zzaanVar.zzb() : null;
        this.zzc.zza(zzauuVarZze, zzm(this.zza, zzyiVar, kClassZzb != null));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaty
    /* JADX INFO: renamed from: zzf, reason: merged with bridge method [inline-methods] */
    public final void zzj(zzaan zzaanVar, int i, int i2) throws Throwable {
        zzanv zzanvVar = new zzanv();
        zzare zzareVar = new zzare();
        zzareVar.zza(this.zzb);
        zzars zzarsVar = new zzars();
        zzarsVar.zza(Integer.valueOf(i));
        zzarsVar.zzb(zzaty.zzk(i2));
        zzareVar.zzb(zzarsVar.zzh());
        zzanvVar.zzf(zzareVar.zzd());
        zzauu zzauuVarZze = zzavd.zze(zzanvVar);
        zzyi zzyiVar = zzyi.zzc;
        KClass kClassZzb = zzaanVar != null ? zzaanVar.zzb() : null;
        this.zzc.zza(zzauuVarZze, zzm(this.zza, zzyiVar, kClassZzb != null));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaty
    public final void zzg(int i, int i2) throws Throwable {
        zzj(null, i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaty
    public final /* bridge */ /* synthetic */ void zzi(zzars zzarsVar, Object obj, int i, Duration duration) throws Throwable {
        zzaan zzaanVar = (zzaan) obj;
        if (duration != null) {
            zzarsVar.zzf(Long.valueOf(duration.toMillis()));
        }
        zzavc zzavcVar = this.zzc;
        zzanv zzanvVar = new zzanv();
        zzare zzareVar = new zzare();
        zzareVar.zza(this.zzb);
        zzareVar.zzc(Integer.valueOf(i));
        zzarsVar.zzd(Integer.valueOf(zzl(zzaanVar.zza())));
        zzareVar.zzb(zzarsVar.zzh());
        zzanvVar.zzf(zzareVar.zzd());
        zzavcVar.zza(zzavd.zze(zzanvVar), zzm(this.zza, zzyi.zzc, zzaanVar.zzb() != null));
    }
}
