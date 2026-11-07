package com.google.android.gms.internal.mlkit_genai_prompt;

import android.graphics.Bitmap;
import com.google.mlkit.genai.common.GenAiException;
import com.google.mlkit.genai.common.StreamingCallback;
import com.google.mlkit.genai.prompt.Candidate;
import com.google.mlkit.genai.prompt.Content;
import com.google.mlkit.genai.prompt.CountTokensResponse;
import com.google.mlkit.genai.prompt.GenerateContentRequest;
import com.google.mlkit.genai.prompt.GenerateContentResponse;
import com.google.mlkit.genai.prompt.ImagePart;
import com.google.mlkit.genai.prompt.Part;
import com.google.mlkit.genai.prompt.PromptPrefix;
import com.google.mlkit.genai.prompt.SystemInstruction;
import com.google.mlkit.genai.prompt.TextPart;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.KClass;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzys {
    public static final zzys zza = new zzys();

    private zzys() {
    }

    public static final zzib zzb(KClass kClass) {
        return zzyh.zza.zza(kClass).zzl();
    }

    public static final String zzc(String str, zzib zzibVar) {
        String string = zzibVar.zzv().toString();
        if (string.length() == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 146 + String.valueOf(string).length() + 1);
        sb.append(str);
        sb.append("\nContext:\nDo NOT generate unsafe content.\nIf contents are safe, you MUST output ONLY in the following JSON schema without any spaces or newlines:\n");
        sb.append(string);
        sb.append("\n");
        return sb.toString();
    }

    public static final GenerateContentResponse zzd(zzic zzicVar) {
        List listEmptyList;
        List listSortedWith = CollectionsKt.sortedWith(zzicVar.zza(), new zzyr());
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listSortedWith) {
            if (hashSet.add(((zzhv) obj).zza())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj2 = arrayList.get(i);
            i++;
            zzhv zzhvVar = (zzhv) obj2;
            arrayList2.add(Candidate.Companion.zza(zzhvVar.zza(), Integer.valueOf(zzf(zzhvVar.zzc()))));
        }
        zzml<zzhv> zzmlVarZzd = zzicVar.zzd();
        if (zzmlVarZzd != null) {
            listEmptyList = new ArrayList(CollectionsKt.collectionSizeOrDefault(zzmlVarZzd, 10));
            for (zzhv zzhvVar2 : zzmlVarZzd) {
                listEmptyList.add(Candidate.Companion.zza(zzhvVar2.zza(), Integer.valueOf(zzf(zzhvVar2.zzc()))));
            }
        } else {
            listEmptyList = CollectionsKt.emptyList();
        }
        return GenerateContentResponse.Companion.zzb(arrayList2, listEmptyList);
    }

    public static final zzhy zze(zzaan zzaanVar, final StreamingCallback streamingCallback, zzhu zzhuVar) throws GenAiException {
        String textString;
        String textString2;
        boolean z;
        boolean z2;
        GenerateContentRequest generateContentRequestZza = zzaanVar.zza();
        ArrayList arrayList = new ArrayList();
        PromptPrefix zzg = generateContentRequestZza.getZzg();
        if (zzg == null || (textString = zzg.getTextString()) == null) {
            textString = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        KClass kClassZzb = zzaanVar.zzb();
        zzib zzibVarZzb = kClassZzb != null ? zzb(kClassZzb) : null;
        SystemInstruction zzi = generateContentRequestZza.getZzi();
        if (zzi == null || (textString2 = zzi.getTextString()) == null) {
            textString2 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (textString2.length() > 0) {
            arrayList.add(zzhs.zzj(2, textString2));
        }
        Iterator<Content> it = generateContentRequestZza.getContents().iterator();
        boolean z3 = false;
        int length = 0;
        while (it.hasNext()) {
            for (Part part : it.next().getParts()) {
                if (part instanceof TextPart) {
                    length += ((TextPart) part).getTextString().length();
                }
            }
        }
        List<Content> contents = generateContentRequestZza.getContents();
        if ((contents instanceof Collection) && contents.isEmpty()) {
            z = false;
        } else {
            Iterator<T> it2 = contents.iterator();
            loop6: while (it2.hasNext()) {
                List<Part> parts = ((Content) it2.next()).getParts();
                if (!(parts instanceof Collection) || !parts.isEmpty()) {
                    Iterator<T> it3 = parts.iterator();
                    while (it3.hasNext()) {
                        if (((Part) it3.next()) instanceof TextPart) {
                            z = true;
                            break loop6;
                        }
                    }
                }
            }
            z = false;
        }
        if (textString.length() + length + textString2.length() > 32000) {
            throw new GenAiException("Input text length exceeds the limit. Please check the countTokens API.", (Throwable) null, 12);
        }
        Iterator<Content> it4 = generateContentRequestZza.getContents().iterator();
        TextPart textPart = null;
        while (it4.hasNext()) {
            for (Part part2 : it4.next().getParts()) {
                if (part2 instanceof TextPart) {
                    textPart = (TextPart) part2;
                }
            }
        }
        if (!z && textString.length() > 0 && zzhuVar == null) {
            arrayList.add(zzhs.zzj(0, textString));
        }
        Iterator<Content> it5 = generateContentRequestZza.getContents().iterator();
        boolean z4 = true;
        while (it5.hasNext()) {
            for (Part part3 : it5.next().getParts()) {
                if (part3 instanceof TextPart) {
                    String textString3 = ((TextPart) part3).getTextString();
                    z4 = z4;
                    z4 = z4;
                    if (z4 && zzhuVar == null) {
                        textString3 = textString.concat(String.valueOf(textString3));
                        z4 = z3 ? 1 : 0;
                    }
                    if (part3 == textPart && zzibVarZzb != null && zzaanVar.zzc()) {
                        textString3 = zzc(textString3, zzibVarZzb);
                    }
                    arrayList.add(zzhs.zzj(z3 ? 1 : 0, textString3));
                } else {
                    if (part3 instanceof ImagePart) {
                        ImagePart imagePart = (ImagePart) part3;
                        Bitmap bitmap = imagePart.getBitmap();
                        Bitmap.Config config = imagePart.getBitmap().getConfig();
                        if (config == null) {
                            config = Bitmap.Config.ARGB_8888;
                        }
                        Bitmap bitmapCopy = bitmap.copy(config, z3);
                        int width = bitmapCopy.getWidth();
                        int height = bitmapCopy.getHeight();
                        int iMin = Math.min(width, height);
                        if (iMin > 768) {
                            float f = iMin;
                            float f2 = width;
                            float f3 = 768.0f / f;
                            z2 = false;
                            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCopy, (int) (f2 * f3), (int) (height * f3), false);
                            if (bitmapCreateScaledBitmap != bitmapCopy) {
                                bitmapCopy.recycle();
                            }
                            bitmapCopy = bitmapCreateScaledBitmap;
                        } else {
                            z2 = false;
                        }
                        arrayList.add(zzhs.zzi(z2 ? 1 : 0, bitmapCopy));
                    } else {
                        z2 = z3 ? 1 : 0;
                    }
                    z3 = z2;
                }
            }
        }
        boolean z5 = z3;
        if (textPart == null) {
            if (zzibVarZzb == null) {
                zzibVarZzb = null;
            } else if (zzaanVar.zzc()) {
                arrayList.add(zzhs.zzj(z5 ? 1 : 0, zzc(_UrlKt.FRAGMENT_ENCODE_SET, zzibVarZzb)));
            }
        }
        zzik zzikVar = streamingCallback != null ? new zzik() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzyk
            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzik
            public final /* synthetic */ void zza(int i, String str) {
                StreamingCallback streamingCallback2 = streamingCallback;
                if (i == 1) {
                    streamingCallback2.onNewThought(str);
                } else {
                    streamingCallback2.onNewText(str);
                }
            }
        } : null;
        zzhx zzhxVarZzx = zzhy.zzx();
        if (zzibVarZzb != null) {
            zzhxVarZzx.zzr(zzibVarZzb);
        }
        zzhxVarZzx.zza(CollectionsKt.toList(arrayList));
        zzhxVarZzx.zzb(generateContentRequestZza.getZza());
        zzhxVarZzx.zzc(generateContentRequestZza.getZzc());
        zzhxVarZzx.zze(CollectionsKt.emptyList());
        zzhxVarZzx.zzf(1);
        zzhxVarZzx.zzg(generateContentRequestZza.getZze());
        zzhxVarZzx.zzk(2);
        zzhxVarZzx.zzl(2);
        zzhxVarZzx.zzh(generateContentRequestZza.getZzd());
        zzhxVarZzx.zzn(generateContentRequestZza.getZzb());
        zzhxVarZzx.zzs(generateContentRequestZza.getZzj());
        if (zzikVar != null) {
            zzhxVarZzx.zzi(zzikVar);
        }
        if (zzhuVar != null) {
            zzhxVarZzx.zzq(zzhuVar);
        }
        return zzhxVarZzx.zzu();
    }

    private static final int zzf(int i) {
        if (i != 0) {
            return i != 1 ? -100 : 1;
        }
        return 0;
    }

    public final CountTokensResponse zza(zzdz zzdzVar) {
        return new CountTokensResponse(zzdzVar.zza());
    }
}
