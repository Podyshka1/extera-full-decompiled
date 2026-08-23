package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.decoder.CryptoConfig;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public interface ExoMediaDrm {

    public interface OnEventListener {
        void onEvent(ExoMediaDrm exoMediaDrm, byte[] bArr, int i, int i2, byte[] bArr2);
    }

    public interface Provider {
        ExoMediaDrm acquireExoMediaDrm(UUID uuid);
    }

    void closeSession(byte[] bArr);

    CryptoConfig createCryptoConfig(byte[] bArr);

    int getCryptoType();

    KeyRequest getKeyRequest(byte[] bArr, List<DrmInitData.SchemeData> list, int i, HashMap<String, String> map);

    ProvisionRequest getProvisionRequest();

    byte[] openSession();

    byte[] provideKeyResponse(byte[] bArr, byte[] bArr2);

    void provideProvisionResponse(byte[] bArr);

    Map<String, String> queryKeyStatus(byte[] bArr);

    void release();

    boolean requiresSecureDecoder(byte[] bArr, String str);

    void restoreKeys(byte[] bArr, byte[] bArr2);

    void setOnEventListener(OnEventListener onEventListener);

    default void setPlayerIdForSession(byte[] bArr, PlayerId playerId) {
    }

    public static final class KeyRequest {
        private final byte[] data;
        private final String licenseServerUrl;
        private final int requestType;

        public KeyRequest(byte[] bArr, String str, int i) {
            this.data = bArr;
            this.licenseServerUrl = str;
            this.requestType = i;
        }

        public byte[] getData() {
            return this.data;
        }

        public String getLicenseServerUrl() {
            return this.licenseServerUrl;
        }
    }

    public static final class ProvisionRequest {
        private final byte[] data;
        private final String defaultUrl;

        public ProvisionRequest(byte[] bArr, String str) {
            this.data = bArr;
            this.defaultUrl = str;
        }

        public byte[] getData() {
            return this.data;
        }

        public String getDefaultUrl() {
            return this.defaultUrl;
        }
    }
}
