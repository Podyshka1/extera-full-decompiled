package com.google.mlkit.genai.prompt;

import com.google.android.gms.cast.internal.zzar$$ExternalSyntheticBUOutline1;
import com.google.mlkit.genai.prompt.Content;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u0000 ,2\u00020\u0001:\u0002-,R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u000bR\u0017\u0010\u000e\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\u000f\u0010\u000bR\u0017\u0010\u0010\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u0010\u0010\t\u001a\u0004\b\u0011\u0010\u000bR\u001d\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0019\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0019\u0010#\u001a\u0004\u0018\u00010\"8\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0017\u0010(\u001a\u00020'8\u0006¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+¨\u0006."}, d2 = {"Lcom/google/mlkit/genai/prompt/GenerateContentRequest;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "temperature", "F", "getTemperature", "()F", _UrlKt.FRAGMENT_ENCODE_SET, "seed", "I", "getSeed", "()I", "topK", "getTopK", "candidateCount", "getCandidateCount", "maxOutputTokens", "getMaxOutputTokens", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/google/mlkit/genai/prompt/Content;", "contents", "Ljava/util/List;", "getContents", "()Ljava/util/List;", "Lcom/google/mlkit/genai/prompt/PromptPrefix;", "promptPrefix", "Lcom/google/mlkit/genai/prompt/PromptPrefix;", "getPromptPrefix", "()Lcom/google/mlkit/genai/prompt/PromptPrefix;", _UrlKt.FRAGMENT_ENCODE_SET, "cachedContextName", "Ljava/lang/String;", "getCachedContextName", "()Ljava/lang/String;", "Lcom/google/mlkit/genai/prompt/SystemInstruction;", "systemInstruction", "Lcom/google/mlkit/genai/prompt/SystemInstruction;", "getSystemInstruction", "()Lcom/google/mlkit/genai/prompt/SystemInstruction;", _UrlKt.FRAGMENT_ENCODE_SET, "enableThinking", "Z", "getEnableThinking", "()Z", "Companion", "Builder", "java.com.google.android.libraries.mlkit.granules.genai.prompt_mlkit_genai_prompt"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
public final class GenerateContentRequest {
    private final float zza;
    private final int zzb;
    private final int zzc;
    private final int zzd;
    private final int zze;
    private final List zzf;
    private final PromptPrefix zzg;
    private final String zzh;
    private final SystemInstruction zzi;
    private final boolean zzj;

    @Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\b\u0016\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\tB\u0019\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\fB\u0019\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\u000fB!\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013R$\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R$\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR$\u0010!\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R$\u0010'\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\"\u001a\u0004\b(\u0010$\"\u0004\b)\u0010&R$\u0010*\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\"\u001a\u0004\b+\u0010$\"\u0004\b,\u0010&R$\u0010-\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010\"\u001a\u0004\b.\u0010$\"\u0004\b/\u0010&R$\u00101\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R$\u00108\u001a\u0004\u0018\u0001078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\"\u0010?\u001a\u00020>8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010D¨\u0006E"}, d2 = {"Lcom/google/mlkit/genai/prompt/GenerateContentRequest$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/google/mlkit/genai/prompt/Content;", "contents", "<init>", "(Ljava/util/List;)V", "Lcom/google/mlkit/genai/prompt/TextPart;", "text", "(Lcom/google/mlkit/genai/prompt/TextPart;)V", "Lcom/google/mlkit/genai/prompt/ImagePart;", "image", "(Lcom/google/mlkit/genai/prompt/ImagePart;Lcom/google/mlkit/genai/prompt/TextPart;)V", "Lcom/google/mlkit/genai/prompt/SystemInstruction;", "systemInstruction", "(Lcom/google/mlkit/genai/prompt/SystemInstruction;Lcom/google/mlkit/genai/prompt/TextPart;)V", "(Lcom/google/mlkit/genai/prompt/SystemInstruction;Lcom/google/mlkit/genai/prompt/ImagePart;Lcom/google/mlkit/genai/prompt/TextPart;)V", "Lcom/google/mlkit/genai/prompt/GenerateContentRequest;", "build", "()Lcom/google/mlkit/genai/prompt/GenerateContentRequest;", "Lcom/google/mlkit/genai/prompt/SystemInstruction;", "getSystemInstruction", "()Lcom/google/mlkit/genai/prompt/SystemInstruction;", "setSystemInstruction", "(Lcom/google/mlkit/genai/prompt/SystemInstruction;)V", _UrlKt.FRAGMENT_ENCODE_SET, "temperature", "Ljava/lang/Float;", "getTemperature", "()Ljava/lang/Float;", "setTemperature", "(Ljava/lang/Float;)V", _UrlKt.FRAGMENT_ENCODE_SET, "seed", "Ljava/lang/Integer;", "getSeed", "()Ljava/lang/Integer;", "setSeed", "(Ljava/lang/Integer;)V", "topK", "getTopK", "setTopK", "candidateCount", "getCandidateCount", "setCandidateCount", "maxOutputTokens", "getMaxOutputTokens", "setMaxOutputTokens", "Lcom/google/mlkit/genai/prompt/PromptPrefix;", "promptPrefix", "Lcom/google/mlkit/genai/prompt/PromptPrefix;", "getPromptPrefix", "()Lcom/google/mlkit/genai/prompt/PromptPrefix;", "setPromptPrefix", "(Lcom/google/mlkit/genai/prompt/PromptPrefix;)V", _UrlKt.FRAGMENT_ENCODE_SET, "cachedContextName", "Ljava/lang/String;", "getCachedContextName", "()Ljava/lang/String;", "setCachedContextName", "(Ljava/lang/String;)V", _UrlKt.FRAGMENT_ENCODE_SET, "enableThinking", "Z", "getEnableThinking", "()Z", "setEnableThinking", "(Z)V", "java.com.google.android.libraries.mlkit.granules.genai.prompt_mlkit_genai_prompt"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Builder {
        private final List zza;
        private SystemInstruction zzb;
        private Float zzc;
        private Integer zzd;
        private Integer zze;
        private Integer zzf;
        private Integer zzg;
        private PromptPrefix zzh;
        private String zzi;
        private boolean zzj;

        public Builder(List<Content> list) {
            this.zza = list;
        }

        public final GenerateContentRequest build() {
            int iIntValue;
            int iIntValue2;
            int iIntValue3;
            List list = this.zza;
            List list2 = list;
            if (list2 == null || list2.isEmpty()) {
                f$$ExternalSyntheticBUOutline1.m212m("contents cannot be empty");
                return null;
            }
            Float f = this.zzc;
            float fFloatValue = 0.0f;
            if (f != null) {
                float fFloatValue2 = f.floatValue();
                if (fFloatValue2 < 0.0f || fFloatValue2 > 1.0f) {
                    f$$ExternalSyntheticBUOutline1.m212m("temperature must be between 0 and 1");
                    return null;
                }
                fFloatValue = f.floatValue();
            }
            Integer num = this.zzd;
            boolean z = false;
            if (num == null) {
                iIntValue = 0;
            } else {
                if (num.intValue() < 0) {
                    f$$ExternalSyntheticBUOutline1.m212m("seed must be non-negative");
                    return null;
                }
                iIntValue = num.intValue();
            }
            Integer num2 = this.zze;
            if (num2 == null) {
                iIntValue2 = 3;
            } else {
                if (num2.intValue() <= 0) {
                    f$$ExternalSyntheticBUOutline1.m212m("topK must be positive");
                    return null;
                }
                iIntValue2 = num2.intValue();
            }
            Integer num3 = this.zzf;
            if (num3 != null) {
                int iIntValue4 = num3.intValue();
                if (iIntValue4 <= 0 || iIntValue4 > 8) {
                    f$$ExternalSyntheticBUOutline1.m212m("candidateCount must be between 1 and 8");
                    return null;
                }
                iIntValue3 = num3.intValue();
            } else {
                iIntValue3 = 1;
            }
            Integer num4 = this.zzg;
            int iIntValue5 = 4096;
            if (num4 != null) {
                int iIntValue6 = num4.intValue();
                if (iIntValue6 <= 0 || iIntValue6 > 4096) {
                    zzar$$ExternalSyntheticBUOutline1.m297m(String.valueOf(iIntValue6).length() + 52, "maxOutputTokens must be between 1 and 4096, but was ", iIntValue6);
                    return null;
                }
                iIntValue5 = num4.intValue();
            }
            if (list != null) {
                List list3 = list;
                if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                    Iterator it = list3.iterator();
                    loop0: while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        List<Part> parts = ((Content) it.next()).getParts();
                        if (!(parts instanceof Collection) || !parts.isEmpty()) {
                            Iterator<T> it2 = parts.iterator();
                            while (it2.hasNext()) {
                                if (((Part) it2.next()) instanceof ImagePart) {
                                    z = true;
                                    break loop0;
                                }
                            }
                        }
                    }
                }
            }
            PromptPrefix promptPrefix = this.zzh;
            if (promptPrefix != null && z) {
                f$$ExternalSyntheticBUOutline1.m212m("promptPrefix is not supported for image input");
                return null;
            }
            if (promptPrefix != null && this.zzi != null) {
                f$$ExternalSyntheticBUOutline1.m212m("promptPrefix and cacheContextName cannot be set at the same time");
                return null;
            }
            String str = this.zzi;
            if (str != null && z) {
                f$$ExternalSyntheticBUOutline1.m212m("cacheContextName is not supported for image input");
                return null;
            }
            return new GenerateContentRequest(fFloatValue, iIntValue, iIntValue2, iIntValue3, iIntValue5, list, promptPrefix, str, this.zzb, this.zzj, null);
        }

        public final void setCachedContextName(String str) {
            this.zzi = str;
        }

        public final void setCandidateCount(Integer num) {
            this.zzf = num;
        }

        public final void setEnableThinking(boolean z) {
            this.zzj = z;
        }

        public final void setMaxOutputTokens(Integer num) {
            this.zzg = num;
        }

        public final void setPromptPrefix(PromptPrefix promptPrefix) {
            this.zzh = promptPrefix;
        }

        public final void setSeed(Integer num) {
            this.zzd = num;
        }

        public final void setSystemInstruction(SystemInstruction systemInstruction) {
            this.zzb = systemInstruction;
        }

        public final void setTemperature(Float f) {
            this.zzc = f;
        }

        public final void setTopK(Integer num) {
            this.zze = num;
        }

        public Builder(ImagePart imagePart, TextPart textPart) {
            Content.Builder builder = Content.INSTANCE.builder();
            builder.addPart(imagePart);
            builder.addPart(textPart);
            this.zza = CollectionsKt.listOf(builder.build());
        }

        public Builder(SystemInstruction systemInstruction, ImagePart imagePart, TextPart textPart) {
            this.zzb = systemInstruction;
            Content.Builder builder = Content.INSTANCE.builder();
            builder.addPart(imagePart);
            builder.addPart(textPart);
            this.zza = CollectionsKt.listOf(builder.build());
        }

        public Builder(SystemInstruction systemInstruction, TextPart textPart) {
            this.zzb = systemInstruction;
            Content.Builder builder = Content.INSTANCE.builder();
            builder.addPart(textPart);
            this.zza = CollectionsKt.listOf(builder.build());
        }

        public Builder(TextPart textPart) {
            Content.Builder builder = Content.INSTANCE.builder();
            builder.addPart(textPart);
            this.zza = CollectionsKt.listOf(builder.build());
        }
    }

    public /* synthetic */ GenerateContentRequest(float f, int i, int i2, int i3, int i4, List list, PromptPrefix promptPrefix, String str, SystemInstruction systemInstruction, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this.zza = f;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = i4;
        this.zzf = list;
        this.zzg = promptPrefix;
        this.zzh = str;
        this.zzi = systemInstruction;
        this.zzj = z;
    }

    /* JADX INFO: renamed from: getCachedContextName, reason: from getter */
    public final String getZzh() {
        return this.zzh;
    }

    /* JADX INFO: renamed from: getCandidateCount, reason: from getter */
    public final int getZzd() {
        return this.zzd;
    }

    public final List<Content> getContents() {
        return this.zzf;
    }

    /* JADX INFO: renamed from: getEnableThinking, reason: from getter */
    public final boolean getZzj() {
        return this.zzj;
    }

    /* JADX INFO: renamed from: getMaxOutputTokens, reason: from getter */
    public final int getZze() {
        return this.zze;
    }

    /* JADX INFO: renamed from: getPromptPrefix, reason: from getter */
    public final PromptPrefix getZzg() {
        return this.zzg;
    }

    /* JADX INFO: renamed from: getSeed, reason: from getter */
    public final int getZzb() {
        return this.zzb;
    }

    /* JADX INFO: renamed from: getSystemInstruction, reason: from getter */
    public final SystemInstruction getZzi() {
        return this.zzi;
    }

    /* JADX INFO: renamed from: getTemperature, reason: from getter */
    public final float getZza() {
        return this.zza;
    }

    /* JADX INFO: renamed from: getTopK, reason: from getter */
    public final int getZzc() {
        return this.zzc;
    }

    public final Builder zza(ImagePart imagePart, TextPart textPart) {
        Builder builder = new Builder((List<Content>) this.zzf);
        builder.setTemperature(Float.valueOf(this.zza));
        builder.setSeed(Integer.valueOf(this.zzb));
        builder.setTopK(Integer.valueOf(this.zzc));
        builder.setCandidateCount(Integer.valueOf(this.zzd));
        builder.setMaxOutputTokens(Integer.valueOf(this.zze));
        builder.setPromptPrefix(this.zzg);
        builder.setCachedContextName(this.zzh);
        builder.setSystemInstruction(this.zzi);
        builder.setEnableThinking(this.zzj);
        return builder;
    }
}
