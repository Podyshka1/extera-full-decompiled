package com.google.mlkit.genai.prompt;

import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\r\u0010\u000eR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000f\u001a\u0004\b\u0010\u0010\n¨\u0006\u0012"}, d2 = {"Lcom/google/mlkit/genai/prompt/CountTokensResponse;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "totalTokens", "<init>", "(I)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "I", "getTotalTokens", "Companion", "java.com.google.android.libraries.mlkit.granules.genai.prompt_mlkit_genai_prompt"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CountTokensResponse {

    /* JADX INFO: renamed from: zza, reason: from toString */
    private final int totalTokens;

    public CountTokensResponse(int i) {
        this.totalTokens = i;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof CountTokensResponse) && this.totalTokens == ((CountTokensResponse) other).totalTokens;
    }

    public final int getTotalTokens() {
        return this.totalTokens;
    }

    public int hashCode() {
        return Integer.hashCode(this.totalTokens);
    }

    public String toString() {
        int i = this.totalTokens;
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 33);
        sb.append("CountTokensResponse(totalTokens=");
        sb.append(i);
        sb.append(")");
        return sb.toString();
    }
}
