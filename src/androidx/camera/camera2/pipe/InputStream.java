package androidx.camera.camera2.pipe;

import androidx.camera.camera2.pipe.CameraStream;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface InputStream {
    /* JADX INFO: renamed from: getFormat-8FPWQzE, reason: not valid java name */
    int mo1650getFormat8FPWQzE();

    /* JADX INFO: renamed from: getId-m1bwn9M, reason: not valid java name */
    int mo1651getIdm1bwn9M();

    int getMaxImages();

    public static final class Config {
        private final int maxImages;
        private final CameraStream.Config stream;
        private int streamFormat;

        public /* synthetic */ Config(CameraStream.Config config, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(config, i, i2);
        }

        private Config(CameraStream.Config stream, int i, int i2) {
            Intrinsics.checkNotNullParameter(stream, "stream");
            this.stream = stream;
            this.maxImages = i;
            this.streamFormat = i2;
        }

        public final CameraStream.Config getStream() {
            return this.stream;
        }

        public final int getMaxImages() {
            return this.maxImages;
        }

        /* JADX INFO: renamed from: getStreamFormat-8FPWQzE, reason: not valid java name */
        public final int m1652getStreamFormat8FPWQzE() {
            return this.streamFormat;
        }
    }
}
