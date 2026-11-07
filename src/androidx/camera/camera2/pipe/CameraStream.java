package androidx.camera.camera2.pipe;

import androidx.camera.camera2.pipe.OutputStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0010B\u001f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\u000e\u001a\u00020\u000fH\u0016R\u0013\u0010\u0002\u001a\u00020\u0003¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Landroidx/camera/camera2/pipe/CameraStream;", _UrlKt.FRAGMENT_ENCODE_SET, "id", "Landroidx/camera/camera2/pipe/StreamId;", "outputs", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/OutputStream;", "<init>", "(ILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getId-ptHMqGs", "()I", "I", "getOutputs", "()Ljava/util/List;", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "Config", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class CameraStream {
    private final int id;
    private final List<OutputStream> outputs;

    public /* synthetic */ CameraStream(int i, List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private CameraStream(int i, List<? extends OutputStream> list) {
        this.id = i;
        this.outputs = list;
    }

    /* JADX INFO: renamed from: getId-ptHMqGs, reason: not valid java name and from getter */
    public final int getId() {
        return this.id;
    }

    public final List<OutputStream> getOutputs() {
        return this.outputs;
    }

    public String toString() {
        return StreamId.m1477toStringimpl(this.id);
    }

    @kotlin.Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B#\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bR\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Landroidx/camera/camera2/pipe/CameraStream$Config;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/OutputStream$Config;", "outputs", "Landroidx/camera/camera2/pipe/ImageSourceConfig;", "imageSourceConfig", "<init>", "(Ljava/util/List;Landroidx/camera/camera2/pipe/ImageSourceConfig;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Ljava/util/List;", "getOutputs", "()Ljava/util/List;", "Landroidx/camera/camera2/pipe/ImageSourceConfig;", "getImageSourceConfig", "()Landroidx/camera/camera2/pipe/ImageSourceConfig;", "Companion", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nStreams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Streams.kt\nandroidx/camera/camera2/pipe/CameraStream$Config\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,539:1\n1740#2,3:540\n*S KotlinDebug\n*F\n+ 1 Streams.kt\nandroidx/camera/camera2/pipe/CameraStream$Config\n*L\n82#1:540,3\n*E\n"})
    public static final class Config {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final List<OutputStream.Config> outputs;

        public final ImageSourceConfig getImageSourceConfig() {
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Config(List<? extends OutputStream.Config> list, ImageSourceConfig imageSourceConfig) {
            this.outputs = list;
            OutputStream.Config config = (OutputStream.Config) CollectionsKt.first((List) list);
            List<? extends OutputStream.Config> list2 = list;
            if ((list2 instanceof Collection) && list2.isEmpty()) {
                return;
            }
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                if (!StreamFormat.m1463equalsimpl0(((OutputStream.Config) it.next()).getFormat(), config.getFormat())) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("All outputs must have the same format!");
                    throw null;
                }
            }
        }

        public final List<OutputStream.Config> getOutputs() {
            return this.outputs;
        }

        public String toString() {
            return "CameraStream.Config(outputs=" + this.outputs + ", imageSourceConfig=null)";
        }

        @kotlin.Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/camera/camera2/pipe/CameraStream$Config$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/camera2/pipe/OutputStream$Config;", "output", "Landroidx/camera/camera2/pipe/ImageSourceConfig;", "imageSourceConfig", "Landroidx/camera/camera2/pipe/CameraStream$Config;", "create", "(Landroidx/camera/camera2/pipe/OutputStream$Config;Landroidx/camera/camera2/pipe/ImageSourceConfig;)Landroidx/camera/camera2/pipe/CameraStream$Config;", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
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
                return new Config(CollectionsKt.listOf(output), imageSourceConfig);
            }
        }
    }
}
