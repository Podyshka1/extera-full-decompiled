package com.exteragram.messenger.plugins.analyzer;

import android.security.keystore.KeyGenParameterSpec;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.cast.MediaTrack;
import java.io.File;
import java.nio.charset.Charset;
import java.security.Key;
import java.security.KeyStore;
import java.security.MessageDigest;
import java.util.Iterator;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequencesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fJ\u001e\u0010\u0012\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000fJ\u0006\u0010\u0014\u001a\u00020\rJ\u0018\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0002J\"\u0010\u0016\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000fH\u0002J\n\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\u0019"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/AnalyzerCache;", _UrlKt.FRAGMENT_ENCODE_SET, "root", "Ljava/io/File;", "<init>", "(Ljava/io/File;)V", PluginsConstants.Settings.KEY, "Ljavax/crypto/SecretKey;", "getKey", "()Ljavax/crypto/SecretKey;", "key$delegate", "Lkotlin/Lazy;", "prune", _UrlKt.FRAGMENT_ENCODE_SET, "buildId", _UrlKt.FRAGMENT_ENCODE_SET, "get", "sha256", "put", "json", "expire", "file", MediaTrack.ROLE_SIGN, "loadKey", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAnalyzerCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalyzerCache.kt\ncom/exteragram/messenger/plugins/analyzer/AnalyzerCache\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,106:1\n14048#2,2:107\n1342#3,2:109\n1#4:111\n*S KotlinDebug\n*F\n+ 1 AnalyzerCache.kt\ncom/exteragram/messenger/plugins/analyzer/AnalyzerCache\n*L\n28#1:107,2\n70#1:109,2\n*E\n"})
public final class AnalyzerCache {
    private static final String EXT = ".json";
    private static final String KEYSTORE = "AndroidKeyStore";
    private static final String KEY_ALIAS = "plugin_analyzer_cache";
    private static final long MAX_AGE_MS = 259200000;

    /* JADX INFO: renamed from: key$delegate, reason: from kotlin metadata */
    private final Lazy key = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.plugins.analyzer.AnalyzerCache$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return this.f$0.loadKey();
        }
    });
    private final File root;

    public AnalyzerCache(File file) {
        this.root = file;
    }

    private final SecretKey getKey() {
        return (SecretKey) this.key.getValue();
    }

    public final void prune(String buildId) {
        File[] fileArrListFiles = this.root.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                if (!Intrinsics.areEqual(file.getName(), buildId)) {
                    FilesKt.deleteRecursively(file);
                }
            }
        }
    }

    public final String get(String buildId, String sha256) {
        String strSubstring;
        String strSign;
        File file = file(buildId, sha256);
        if (file.isFile() && file.lastModified() >= System.currentTimeMillis() - MAX_AGE_MS) {
            try {
                String text$default = FilesKt.readText$default(file, null, 1, null);
                int iIndexOf$default = StringsKt.indexOf$default((CharSequence) text$default, '\n', 0, false, 6, (Object) null);
                if (iIndexOf$default <= 0 || (strSign = sign(buildId, sha256, (strSubstring = text$default.substring(iIndexOf$default + 1)))) == null) {
                    return null;
                }
                Charset charset = Charsets.UTF_8;
                if (MessageDigest.isEqual(strSign.getBytes(charset), text$default.substring(0, iIndexOf$default).getBytes(charset))) {
                    return strSubstring;
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public final void put(String buildId, String sha256, String json) {
        String strSign = sign(buildId, sha256, json);
        if (strSign == null) {
            return;
        }
        try {
            File file = file(buildId, sha256);
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            File file2 = new File(file.getParentFile(), file.getName() + ".tmp");
            FilesKt.writeText$default(file2, strSign + "\n" + json, null, 2, null);
            if (file2.renameTo(file)) {
                return;
            }
            file2.delete();
        } catch (Exception unused) {
        }
    }

    public final void expire() {
        final long jCurrentTimeMillis = System.currentTimeMillis() - MAX_AGE_MS;
        Iterator it = SequencesKt.filter(FilesKt.walkTopDown(this.root), new Function1() { // from class: com.exteragram.messenger.plugins.analyzer.AnalyzerCache$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(AnalyzerCache.m3051$r8$lambda$kArAy7w8clOVlzlXGLP4wAxshw(jCurrentTimeMillis, (File) obj));
            }
        }).iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$kArAy7w8clOVlzlXGLP4wAxs-hw, reason: not valid java name */
    public static boolean m3051$r8$lambda$kArAy7w8clOVlzlXGLP4wAxshw(long j, File file) {
        return file.isFile() && file.lastModified() < j;
    }

    private final File file(String buildId, String sha256) {
        return new File(new File(this.root, buildId), sha256 + EXT);
    }

    private final String sign(String buildId, String sha256, String json) {
        SecretKey key = getKey();
        if (key == null) {
            return null;
        }
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(key);
            String str = buildId + "\n" + sha256 + "\n";
            Charset charset = Charsets.UTF_8;
            mac.update(str.getBytes(charset));
            return AnalyzerHashesKt.toHex(mac.doFinal(json.getBytes(charset)));
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SecretKey loadKey() {
        try {
            KeyStore keyStore = KeyStore.getInstance(KEYSTORE);
            keyStore.load(null);
            Key key = keyStore.getKey(KEY_ALIAS, null);
            SecretKey secretKey = key instanceof SecretKey ? (SecretKey) key : null;
            if (secretKey != null) {
                return secretKey;
            }
            KeyGenerator keyGenerator = KeyGenerator.getInstance("HmacSHA256", KEYSTORE);
            keyGenerator.init(new KeyGenParameterSpec.Builder(KEY_ALIAS, 4).build());
            return keyGenerator.generateKey();
        } catch (Exception unused) {
            return null;
        }
    }
}
