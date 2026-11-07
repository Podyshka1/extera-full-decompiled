package com.exteragram.messenger.plugins.analyzer;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0002\u001a\u00020\u0003*\u00020\u0004H\u0000\u001a\f\u0010\u0005\u001a\u00020\u0003*\u00020\u0004H\u0000\u001a\f\u0010\u0005\u001a\u00020\u0003*\u00020\u0006H\u0000\u001a\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0006\u0010\b\u001a\u00020\tH\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"HEX", _UrlKt.FRAGMENT_ENCODE_SET, "toHex", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "sha256Hex", "Ljava/io/File;", "analyzerBuildId", "context", "Landroid/content/Context;", "TMessagesProj"}, m910k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAnalyzerHashes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalyzerHashes.kt\ncom/exteragram/messenger/plugins/analyzer/AnalyzerHashesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"})
public final class AnalyzerHashesKt {
    private static final char[] HEX = "0123456789abcdef".toCharArray();

    public static final String toHex(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            byte b2 = bArr[i];
            int i2 = b2 & UByte.MAX_VALUE;
            int i3 = i * 2;
            char[] cArr2 = HEX;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    public static final String sha256Hex(byte[] bArr) {
        return toHex(MessageDigest.getInstance("SHA-256").digest(bArr));
    }

    public static final String sha256Hex(File file) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            byte[] bArr = new byte[65536];
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i >= 0) {
                    messageDigest.update(bArr, 0, i);
                } else {
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(fileInputStream, null);
                    return toHex(messageDigest.digest());
                }
            }
        } finally {
        }
    }

    public static final String analyzerBuildId(Context context) {
        try {
            InputStream inputStreamOpen = context.getAssets().open("plugin_analyzer/build_id");
            try {
                byte[] bytes = ByteStreamsKt.readBytes(inputStreamOpen);
                CloseableKt.closeFinally(inputStreamOpen, null);
                String string = StringsKt.trim((CharSequence) new String(bytes, Charsets.UTF_8)).toString();
                if (string.length() == 0) {
                    return null;
                }
                return string;
            } finally {
            }
        } catch (IOException unused) {
            return null;
        }
    }
}
