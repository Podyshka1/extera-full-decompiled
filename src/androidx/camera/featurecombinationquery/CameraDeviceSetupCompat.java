package androidx.camera.featurecombinationquery;

import android.hardware.camera2.params.SessionConfiguration;

/* JADX INFO: loaded from: classes4.dex */
public interface CameraDeviceSetupCompat {
    SupportQueryResult isSessionConfigurationSupported(SessionConfiguration sessionConfiguration);

    public static final class SupportQueryResult {
        private final int mSource;
        private final int mSupported;
        private final long mTimestampMillis;

        public SupportQueryResult(int i, int i2, long j) {
            this.mSupported = i;
            this.mSource = i2;
            this.mTimestampMillis = j;
        }

        public int getSupported() {
            return this.mSupported;
        }
    }
}
