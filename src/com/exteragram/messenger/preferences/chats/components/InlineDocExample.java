package com.exteragram.messenger.preferences.chats.components;

import com.exteragram.messenger.plugins.PluginsConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0010\u001a\u0004\b\u0011\u0010\bR\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0010\u001a\u0004\b\u0012\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/exteragram/messenger/preferences/chats/components/InlineDocExample;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.TYPE_INPUT, "result", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getInput", "getResult", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class InlineDocExample {
    private final String input;
    private final String result;

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InlineDocExample)) {
            return false;
        }
        InlineDocExample inlineDocExample = (InlineDocExample) other;
        return Intrinsics.areEqual(this.input, inlineDocExample.input) && Intrinsics.areEqual(this.result, inlineDocExample.result);
    }

    public int hashCode() {
        int iHashCode = this.input.hashCode() * 31;
        String str = this.result;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "InlineDocExample(input=" + this.input + ", result=" + this.result + ")";
    }

    public InlineDocExample(String str, String str2) {
        this.input = str;
        this.result = str2;
    }

    public final String getInput() {
        return this.input;
    }

    public final String getResult() {
        return this.result;
    }
}
