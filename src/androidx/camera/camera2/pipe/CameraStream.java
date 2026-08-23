package androidx.camera.camera2.pipe;

import androidx.camera.camera2.pipe.OutputStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraStream {

    /* JADX INFO: renamed from: id */
    private final int f9id;
    private final List outputs;

    public /* synthetic */ CameraStream(int i, List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, list);
    }

    private CameraStream(int i, List outputs) {
        Intrinsics.checkNotNullParameter(outputs, "outputs");
        this.f9id = i;
        this.outputs = outputs;
    }

    /* JADX INFO: renamed from: getId-ptHMqGs, reason: not valid java name */
    public final int m1616getIdptHMqGs() {
        return this.f9id;
    }

    public final List getOutputs() {
        return this.outputs;
    }

    public String toString() {
        return StreamId.m1791toStringimpl(this.f9id);
    }

    public static final class Config {
        public static final Companion Companion = new Companion(null);
        private final List outputs;

        public final ImageSourceConfig getImageSourceConfig() {
            return null;
        }

        public Config(List outputs, ImageSourceConfig imageSourceConfig) {
            Intrinsics.checkNotNullParameter(outputs, "outputs");
            this.outputs = outputs;
            OutputStream.Config config = (OutputStream.Config) CollectionsKt.first(outputs);
            List list = outputs;
            if ((list instanceof Collection) && list.isEmpty()) {
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (!StreamFormat.m1775equalsimpl0(((OutputStream.Config) it.next()).m1693getFormat8FPWQzE(), config.m1693getFormat8FPWQzE())) {
                    throw new IllegalStateException("All outputs must have the same format!");
                }
            }
        }

        public final List getOutputs() {
            return this.outputs;
        }

        public String toString() {
            return "CameraStream.Config(outputs=" + this.outputs + ", imageSourceConfig=" + ((Object) null) + ')';
        }

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public static /* synthetic */ Config create$default(Companion companion, OutputStream.Config config, ImageSourceConfig imageSourceConfig, int i, Object obj) {
                if ((i & 2) != 0) {
                    imageSourceConfig = null;
                }
                return companion.create(config, imageSourceConfig);
            }

            public final Config create(OutputStream.Config output, ImageSourceConfig imageSourceConfig) {
                Intrinsics.checkNotNullParameter(output, "output");
                return new Config(CollectionsKt.listOf(output), imageSourceConfig);
            }
        }
    }
}
