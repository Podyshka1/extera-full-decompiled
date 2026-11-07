package com.google.mlkit.genai.prompt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0010\u001a\u0004\b\u0011\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/google/mlkit/genai/prompt/TextPart;", "Lcom/google/mlkit/genai/prompt/Part;", _UrlKt.FRAGMENT_ENCODE_SET, "textString", "<init>", "(Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getTextString", "java.com.google.android.libraries.mlkit.granules.genai.prompt_mlkit_genai_prompt"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TextPart extends Part {

    /* JADX INFO: renamed from: zza, reason: from toString */
    private final String textString;

    public TextPart(String str) {
        super(null);
        this.textString = str;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof TextPart) && Intrinsics.areEqual(this.textString, ((TextPart) other).textString);
    }

    public final String getTextString() {
        return this.textString;
    }

    public int hashCode() {
        return this.textString.hashCode();
    }

    public String toString() {
        String str = this.textString;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21);
        sb.append("TextPart(textString=");
        sb.append(str);
        sb.append(")");
        return sb.toString();
    }
}
