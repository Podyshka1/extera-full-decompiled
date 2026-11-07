package com.exteragram.messenger.plugins.analyzer;

import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0006\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0087 J\u0019\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0087 ¨\u0006\u000b"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/AnalyzerNative;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "analyze", _UrlKt.FRAGMENT_ENCODE_SET, "data", "name", "diff", "old", "new", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class AnalyzerNative {
    public static final AnalyzerNative INSTANCE = new AnalyzerNative();

    @JvmStatic
    public static final native byte[] analyze(byte[] data, byte[] name);

    @JvmStatic
    public static final native byte[] diff(byte[] old, byte[] bArr);

    private AnalyzerNative() {
    }
}
