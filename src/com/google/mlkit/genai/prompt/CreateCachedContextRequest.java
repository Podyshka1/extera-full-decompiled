package com.google.mlkit.genai.prompt;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0001\fR\u0014\u0010\u0002\u001a\u00020\u0003X\u0086\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0004\u001a\u00020\u0005X\u0086\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/google/mlkit/genai/prompt/CreateCachedContextRequest;", _UrlKt.FRAGMENT_ENCODE_SET, "name", _UrlKt.FRAGMENT_ENCODE_SET, "promptPrefix", "Lcom/google/mlkit/genai/prompt/PromptPrefix;", "<init>", "(Ljava/lang/String;Lcom/google/mlkit/genai/prompt/PromptPrefix;)V", "getName", "()Ljava/lang/String;", "getPromptPrefix", "()Lcom/google/mlkit/genai/prompt/PromptPrefix;", "Builder", "java.com.google.android.libraries.mlkit.granules.genai.prompt_mlkit_genai_prompt"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
public final class CreateCachedContextRequest {
    private final String zza;
    private final PromptPrefix zzb;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\b\u001a\u00020\t¨\u0006\n"}, d2 = {"Lcom/google/mlkit/genai/prompt/CreateCachedContextRequest$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, "name", _UrlKt.FRAGMENT_ENCODE_SET, "promptPrefix", "Lcom/google/mlkit/genai/prompt/PromptPrefix;", "<init>", "(Ljava/lang/String;Lcom/google/mlkit/genai/prompt/PromptPrefix;)V", "build", "Lcom/google/mlkit/genai/prompt/CreateCachedContextRequest;", "java.com.google.android.libraries.mlkit.granules.genai.prompt_mlkit_genai_prompt"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Builder {
        private final String zza;
        private final PromptPrefix zzb;

        public Builder(String str, PromptPrefix promptPrefix) {
            this.zza = str;
            this.zzb = promptPrefix;
        }

        public final CreateCachedContextRequest build() {
            return new CreateCachedContextRequest(this.zza, this.zzb, null);
        }
    }

    public /* synthetic */ CreateCachedContextRequest(String str, PromptPrefix promptPrefix, DefaultConstructorMarker defaultConstructorMarker) {
        this.zza = str;
        this.zzb = promptPrefix;
    }

    /* JADX INFO: renamed from: getName, reason: from getter */
    public final String getZza() {
        return this.zza;
    }

    /* JADX INFO: renamed from: getPromptPrefix, reason: from getter */
    public final PromptPrefix getZzb() {
        return this.zzb;
    }
}
