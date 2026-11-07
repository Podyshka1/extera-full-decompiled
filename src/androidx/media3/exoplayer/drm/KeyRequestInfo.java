package androidx.media3.exoplayer.drm;

import androidx.media3.common.DrmInitData;
import androidx.media3.exoplayer.source.LoadEventInfo;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.List;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: loaded from: classes4.dex */
public final class KeyRequestInfo {
    public final ImmutableList<LoadEventInfo> loadInfos;
    public final ImmutableList<DrmInitData.SchemeData> schemeDatas;

    public static final class Builder {
        private final ImmutableList.Builder<LoadEventInfo> loadEventInfos = ImmutableList.builder();
        private ImmutableList<DrmInitData.SchemeData> schemeDatas;

        public Builder setSchemeDatas(List<DrmInitData.SchemeData> list) {
            this.schemeDatas = ImmutableList.copyOf((Collection) list);
            return this;
        }

        public Builder addLoadInfo(LoadEventInfo loadEventInfo) {
            this.loadEventInfos.add(loadEventInfo);
            return this;
        }

        @SideEffectFree
        public KeyRequestInfo build() {
            return new KeyRequestInfo(this);
        }
    }

    private KeyRequestInfo(Builder builder) {
        this.loadInfos = builder.loadEventInfos.build();
        this.schemeDatas = builder.schemeDatas;
    }
}
