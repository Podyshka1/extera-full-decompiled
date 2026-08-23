package androidx.camera.core.impl;

import android.util.Range;
import androidx.camera.core.impl.Config;
import com.android.dx.dex.code.CstInsn$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class CaptureConfig {
    final List<CameraCaptureCallback> mCameraCaptureCallbacks;
    private final CameraCaptureResult mCameraCaptureResult;
    final Config mImplementationOptions;
    final boolean mPostviewEnabled;
    final List<DeferrableSurface> mSurfaces;
    private final TagBundle mTagBundle;
    final int mTemplateType;
    private final boolean mUseRepeatingSurface;
    public static final Config.Option<Integer> OPTION_ROTATION = Config.Option.create("camerax.core.captureConfig.rotation", Integer.TYPE);
    public static final Config.Option<Integer> OPTION_JPEG_QUALITY = Config.Option.create("camerax.core.captureConfig.jpegQuality", Integer.class);
    private static final Config.Option<Range<Integer>> OPTION_RESOLVED_FRAME_RATE = Config.Option.create("camerax.core.captureConfig.resolvedFrameRate", Range.class);

    public interface OptionUnpacker {
        void unpack(UseCaseConfig<?> useCaseConfig, Builder builder);
    }

    public CaptureConfig(List<DeferrableSurface> list, Config config, int i, boolean z, List<CameraCaptureCallback> list2, boolean z2, TagBundle tagBundle, CameraCaptureResult cameraCaptureResult) {
        this.mSurfaces = list;
        this.mImplementationOptions = config;
        this.mTemplateType = i;
        this.mCameraCaptureCallbacks = Collections.unmodifiableList(list2);
        this.mUseRepeatingSurface = z2;
        this.mTagBundle = tagBundle;
        this.mCameraCaptureResult = cameraCaptureResult;
        this.mPostviewEnabled = z;
    }

    public static CaptureConfig defaultEmptyCaptureConfig() {
        return new Builder().build();
    }

    public List<DeferrableSurface> getSurfaces() {
        return Collections.unmodifiableList(this.mSurfaces);
    }

    public Config getImplementationOptions() {
        return this.mImplementationOptions;
    }

    public int getTemplateType() {
        return this.mTemplateType;
    }

    public Range<Integer> getExpectedFrameRateRange() {
        Range<Integer> range = (Range) this.mImplementationOptions.retrieveOption(OPTION_RESOLVED_FRAME_RATE, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED);
        Objects.requireNonNull(range);
        return range;
    }

    public int getPreviewStabilizationMode() {
        Integer num = (Integer) this.mImplementationOptions.retrieveOption(UseCaseConfig.OPTION_PREVIEW_STABILIZATION_MODE, 0);
        Objects.requireNonNull(num);
        return num.intValue();
    }

    public int getVideoStabilizationMode() {
        Integer num = (Integer) this.mImplementationOptions.retrieveOption(UseCaseConfig.OPTION_VIDEO_STABILIZATION_MODE, 0);
        Objects.requireNonNull(num);
        return num.intValue();
    }

    public boolean isUseRepeatingSurface() {
        return this.mUseRepeatingSurface;
    }

    public List<CameraCaptureCallback> getCameraCaptureCallbacks() {
        return this.mCameraCaptureCallbacks;
    }

    public TagBundle getTagBundle() {
        return this.mTagBundle;
    }

    public static final class Builder {
        private CameraCaptureResult mCameraCaptureResult;
        private final Set<DeferrableSurface> mSurfaces = new HashSet();
        private MutableConfig mImplementationOptions = MutableOptionsBundle.create();
        private int mTemplateType = -1;
        private boolean mPostviewEnabled = false;
        private List<CameraCaptureCallback> mCameraCaptureCallbacks = new ArrayList();
        private boolean mUseRepeatingSurface = false;
        private MutableTagBundle mMutableTagBundle = MutableTagBundle.create();

        public static Builder createFrom(UseCaseConfig<?> useCaseConfig) {
            OptionUnpacker captureOptionUnpacker = useCaseConfig.getCaptureOptionUnpacker(null);
            if (captureOptionUnpacker == null) {
                CstInsn$$ExternalSyntheticBUOutline0.m188m("Implementation is missing option unpacker for ", useCaseConfig.getTargetName(useCaseConfig.toString()));
                return null;
            }
            Builder builder = new Builder();
            captureOptionUnpacker.unpack(useCaseConfig, builder);
            return builder;
        }

        public int getTemplateType() {
            return this.mTemplateType;
        }

        public Range<Integer> getExpectedFrameRateRange() {
            return (Range) this.mImplementationOptions.retrieveOption(CaptureConfig.OPTION_RESOLVED_FRAME_RATE, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED);
        }

        public void setTemplateType(int i) {
            this.mTemplateType = i;
        }

        public void setExpectedFrameRateRange(Range<Integer> range) {
            addImplementationOption(CaptureConfig.OPTION_RESOLVED_FRAME_RATE, range);
        }

        public void setPreviewStabilization(int i) {
            if (i != 0) {
                addImplementationOption(UseCaseConfig.OPTION_PREVIEW_STABILIZATION_MODE, Integer.valueOf(i));
            }
        }

        public void setVideoStabilization(int i) {
            if (i != 0) {
                addImplementationOption(UseCaseConfig.OPTION_VIDEO_STABILIZATION_MODE, Integer.valueOf(i));
            }
        }

        public void addCameraCaptureCallback(CameraCaptureCallback cameraCaptureCallback) {
            if (this.mCameraCaptureCallbacks.contains(cameraCaptureCallback)) {
                return;
            }
            this.mCameraCaptureCallbacks.add(cameraCaptureCallback);
        }

        public void addAllCameraCaptureCallbacks(Collection<CameraCaptureCallback> collection) {
            Iterator<CameraCaptureCallback> it = collection.iterator();
            while (it.hasNext()) {
                addCameraCaptureCallback(it.next());
            }
        }

        public void addSurface(DeferrableSurface deferrableSurface) {
            this.mSurfaces.add(deferrableSurface);
        }

        public Set<DeferrableSurface> getSurfaces() {
            return this.mSurfaces;
        }

        public void setImplementationOptions(Config config) {
            this.mImplementationOptions = MutableOptionsBundle.from(config);
        }

        public void addImplementationOptions(Config config) {
            for (Config.Option<?> option : config.listOptions()) {
                this.mImplementationOptions.retrieveOption(option, null);
                this.mImplementationOptions.insertOption(option, config.getOptionPriority(option), config.retrieveOption(option));
            }
        }

        public <T> void addImplementationOption(Config.Option<T> option, T t) {
            this.mImplementationOptions.insertOption(option, t);
        }

        public void setUseRepeatingSurface(boolean z) {
            this.mUseRepeatingSurface = z;
        }

        public void addAllTags(TagBundle tagBundle) {
            this.mMutableTagBundle.addTagBundle(tagBundle);
        }

        public CaptureConfig build() {
            return new CaptureConfig(new ArrayList(this.mSurfaces), OptionsBundle.from(this.mImplementationOptions), this.mTemplateType, this.mPostviewEnabled, new ArrayList(this.mCameraCaptureCallbacks), this.mUseRepeatingSurface, TagBundle.from(this.mMutableTagBundle), this.mCameraCaptureResult);
        }
    }
}
