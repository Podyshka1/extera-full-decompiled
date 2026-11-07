package com.google.mlkit.genai.prompt.java;

import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.mlkit.genai.prompt.CachedContext;
import com.google.mlkit.genai.prompt.CreateCachedContextRequest;
import com.google.mlkit.genai.prompt.GenerativeModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b&\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010J\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0006\u0010\u0007J\u001b\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\b0\u0004H&¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u00042\u0006\u0010\f\u001a\u00020\u000bH&¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/google/mlkit/genai/prompt/java/CachesFutures;", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/google/mlkit/genai/prompt/CreateCachedContextRequest;", PluginsConstants.REQUEST, "Lcom/google/common/util/concurrent/ListenableFuture;", "Lcom/google/mlkit/genai/prompt/CachedContext;", "create", "(Lcom/google/mlkit/genai/prompt/CreateCachedContextRequest;)Lcom/google/common/util/concurrent/ListenableFuture;", _UrlKt.FRAGMENT_ENCODE_SET, "list", "()Lcom/google/common/util/concurrent/ListenableFuture;", _UrlKt.FRAGMENT_ENCODE_SET, "name", _UrlKt.FRAGMENT_ENCODE_SET, "delete", "(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;", "Companion", "java.com.google.android.libraries.mlkit.granules.genai.prompt_mlkit_genai_prompt"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class CachesFutures {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, d2 = {"Lcom/google/mlkit/genai/prompt/java/CachesFutures$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "from", "Lcom/google/mlkit/genai/prompt/java/CachesFutures;", "generativeModel", "Lcom/google/mlkit/genai/prompt/GenerativeModel;", "java.com.google.android.libraries.mlkit.granules.genai.prompt_mlkit_genai_prompt"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        @JvmStatic
        public final CachesFutures from(GenerativeModel generativeModel) {
            return new zzm(generativeModel);
        }
    }

    @JvmStatic
    public static final CachesFutures from(GenerativeModel generativeModel) {
        return INSTANCE.from(generativeModel);
    }

    public abstract ListenableFuture<CachedContext> create(CreateCachedContextRequest request);

    public abstract ListenableFuture<Boolean> delete(String name);

    public abstract ListenableFuture<List<CachedContext>> list();
}
