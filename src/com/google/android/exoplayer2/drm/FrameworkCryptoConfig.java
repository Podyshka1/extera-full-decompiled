package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.decoder.CryptoConfig;
import com.google.android.exoplayer2.util.Util;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public final class FrameworkCryptoConfig implements CryptoConfig {
    public static final boolean WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC;
    public final boolean forceAllowInsecureDecoderComponents;
    public final byte[] sessionId;
    public final UUID uuid;

    /* JADX WARN: Removed duplicated region for block: B:9:0x001e  */
    static {
        boolean z;
        if ("Amazon".equals(Util.MANUFACTURER)) {
            String str = Util.MODEL;
            z = "AFTM".equals(str) || "AFTB".equals(str);
        }
        WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC = z;
    }

    public FrameworkCryptoConfig(UUID uuid, byte[] bArr, boolean z) {
        this.uuid = uuid;
        this.sessionId = bArr;
        this.forceAllowInsecureDecoderComponents = z;
    }
}
