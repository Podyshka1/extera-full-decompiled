package org.telegram.p029ui.Stories.recorder;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.BlurringShader;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.ItemOptions;
import org.telegram.p029ui.Components.Scroller;
import org.telegram.p029ui.Components.Text;
import org.telegram.p029ui.Stories.recorder.TimelineView;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes3.dex */
public class TimelineView extends View {
    private Runnable askExactSeek;
    private StaticLayout audioAuthor;
    private float audioAuthorLeft;
    private final TextPaint audioAuthorPaint;
    private float audioAuthorWidth;
    private final BlurringShader.StoryBlurDrawer audioBlur;
    private final RectF audioBounds;
    private final Path audioClipPath;
    private final Paint audioDotPaint;
    private long audioDuration;
    private final Drawable audioIcon;
    private float audioLeft;
    private long audioOffset;
    private String audioPath;
    private float audioRight;
    private boolean audioSelected;
    private final AnimatedFloat audioSelectedT;
    private final AnimatedFloat audioT;
    private StaticLayout audioTitle;
    private float audioTitleLeft;
    private final TextPaint audioTitlePaint;
    private float audioTitleWidth;
    private float audioVolume;
    private final BlurringShader.StoryBlurDrawer audioWaveformBlur;
    private final BlurringShader.StoryBlurDrawer backgroundBlur;
    private final BlurringShader.BlurManager blurManager;
    private final Path collageClipPath;
    private final Paint collageFramePaint;
    private Track collageMain;
    private int collageSelected;
    private final ArrayList collageTracks;
    private final ArrayList collageWaveforms;
    private final TextPaint countTextPaint;
    private long coverEnd;
    private long coverStart;
    private TimelineDelegate delegate;
    private float dragSpeed;
    private boolean dragged;
    private boolean draggingProgress;
    private final LinearGradient ellipsizeGradient;
    private final Matrix ellipsizeMatrix;
    private final Paint ellipsizePaint;

    /* JADX INFO: renamed from: h */
    private int f2235h;
    private boolean hadDragChange;
    private boolean hasAudio;
    private boolean hasRound;
    private boolean isCover;
    private int lastHeight;
    private long lastTime;
    private float lastX;
    private final AnimatedFloat loopProgress;
    private long loopProgressFrom;
    private int maxCount;
    private Runnable onHeightChange;
    private final Runnable onLongPress;
    private Runnable onTimelineClick;
    public boolean open;
    private final AnimatedFloat openT;

    /* JADX INFO: renamed from: ph */
    private int f2236ph;
    private int pressCollageIndex;
    private int pressHandle;
    private int pressHandleCollageIndex;
    private long pressTime;
    private int pressType;
    private final View previewContainer;
    private long progress;
    private final Paint progressShadowPaint;
    private final Paint progressWhitePaint;

    /* JADX INFO: renamed from: px */
    private int f2237px;

    /* JADX INFO: renamed from: py */
    private int f2238py;
    private final Paint regionCutPaint;
    private final Paint regionHandlePaint;
    private final Paint regionPaint;
    private boolean resetWaveform;
    private final Theme.ResourcesProvider resourcesProvider;
    private final RectF roundBounds;
    private final Path roundClipPath;
    private long roundDuration;
    private float roundLeft;
    private long roundOffset;
    private String roundPath;
    private float roundRight;
    private boolean roundSelected;
    private final AnimatedFloat roundSelectedT;
    private final AnimatedFloat roundT;
    private VideoThumbsLoader roundThumbs;
    private float roundVolume;
    private long scroll;
    private final Scroller scroller;
    private boolean scrolling;
    private int scrollingCollage;
    private boolean scrollingVideo;
    private final Path selectedCollageClipPath;
    private final Path selectedVideoClipPath;
    final float[] selectedVideoRadii;

    /* JADX INFO: renamed from: sw */
    private int f2239sw;
    private final RectF timelineBounds;
    private final Path timelineClipPath;
    private final Drawable timelineIcon;
    private final Text timelineText;
    private final AnimatedFloat timelineWaveformLoaded;
    private final AnimatedFloat timelineWaveformMax;
    private final WaveformPath timelineWaveformPath;
    private VelocityTracker velocityTracker;
    private final RectF videoBounds;
    private final Path videoClipPath;
    private final Paint videoFramePaint;
    private Track videoTrack;

    /* JADX INFO: renamed from: w */
    private int f2240w;
    private int wasScrollX;
    private AudioWaveformLoader waveform;
    private boolean waveformIsLoaded;
    private final AnimatedFloat waveformMax;
    private final Paint waveformPaint;
    private final WaveformPath waveformPath;

    public static int heightDp() {
        return 388;
    }

    public long getMaxScrollDuration() {
        if (this.collageTracks.isEmpty()) {
            return Math.max(120000L, (long) (maxSelectDuration() * 1.5f));
        }
        return 70000L;
    }

    /* JADX INFO: loaded from: classes7.dex */
    public interface TimelineDelegate {
        void onAudioLeftChange(float f);

        void onAudioOffsetChange(long j);

        void onAudioRemove();

        void onAudioRightChange(float f);

        void onAudioVolumeChange(float f);

        void onProgressChange(long j, boolean z);

        void onProgressDragChange(boolean z);

        void onRoundLeftChange(float f);

        void onRoundOffsetChange(long j);

        void onRoundRemove();

        void onRoundRightChange(float f);

        void onRoundSelectChange(boolean z);

        void onRoundVolumeChange(float f);

        void onVideoLeftChange(int i, float f);

        void onVideoLeftChange(boolean z, float f);

        void onVideoOffsetChange(int i, long j);

        void onVideoRightChange(int i, float f);

        void onVideoRightChange(boolean z, float f);

        void onVideoSelected(int i);

        void onVideoVolumeChange(float f);

        void onVideoVolumeChange(int i, float f);

        /* JADX INFO: renamed from: org.telegram.ui.Stories.recorder.TimelineView$TimelineDelegate$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$onProgressDragChange(TimelineDelegate timelineDelegate, boolean z) {
            }

            public static void $default$onProgressChange(TimelineDelegate timelineDelegate, long j, boolean z) {
            }

            public static void $default$onVideoRightChange(TimelineDelegate timelineDelegate, boolean z, float f) {
            }

            public static void $default$onVideoVolumeChange(TimelineDelegate timelineDelegate, float f) {
            }

            public static void $default$onVideoLeftChange(TimelineDelegate timelineDelegate, int i, float f) {
            }

            public static void $default$onVideoRightChange(TimelineDelegate timelineDelegate, int i, float f) {
            }

            public static void $default$onVideoVolumeChange(TimelineDelegate timelineDelegate, int i, float f) {
            }

            public static void $default$onVideoOffsetChange(TimelineDelegate timelineDelegate, int i, long j) {
            }

            public static void $default$onVideoSelected(TimelineDelegate timelineDelegate, int i) {
            }

            public static void $default$onAudioOffsetChange(TimelineDelegate timelineDelegate, long j) {
            }

            public static void $default$onAudioLeftChange(TimelineDelegate timelineDelegate, float f) {
            }

            public static void $default$onAudioRightChange(TimelineDelegate timelineDelegate, float f) {
            }

            public static void $default$onAudioVolumeChange(TimelineDelegate timelineDelegate, float f) {
            }

            public static void $default$onAudioRemove(TimelineDelegate timelineDelegate) {
            }

            public static void $default$onRoundOffsetChange(TimelineDelegate timelineDelegate, long j) {
            }

            public static void $default$onRoundLeftChange(TimelineDelegate timelineDelegate, float f) {
            }

            public static void $default$onRoundRightChange(TimelineDelegate timelineDelegate, float f) {
            }

            public static void $default$onRoundVolumeChange(TimelineDelegate timelineDelegate, float f) {
            }

            public static void $default$onRoundRemove(TimelineDelegate timelineDelegate) {
            }

            public static void $default$onRoundSelectChange(TimelineDelegate timelineDelegate, boolean z) {
            }
        }
    }

    public void setOnTimelineClick(Runnable runnable) {
        this.onTimelineClick = runnable;
    }

    public void setOnHeightChange(Runnable runnable) {
        this.onHeightChange = runnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes7.dex */
    class Track {
        final RectF bounds;
        long duration;
        int index;
        boolean isRound;
        float left;
        long offset;
        String path;
        float right;
        private final AnimatedFloat selectedT;
        VideoThumbsLoader thumbs;
        float volume;

        private Track() {
            this.bounds = new RectF();
            this.selectedT = new AnimatedFloat(TimelineView.this, 360L, CubicBezierInterpolator.EASE_OUT_QUINT);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setupThumbs(boolean z) {
            if (TimelineView.this.getMeasuredWidth() > 0) {
                VideoThumbsLoader videoThumbsLoader = this.thumbs;
                if (videoThumbsLoader == null || z) {
                    if (videoThumbsLoader != null) {
                        videoThumbsLoader.destroy();
                        this.thumbs = null;
                    }
                    TimelineView timelineView = TimelineView.this;
                    boolean z2 = this.isRound;
                    String str = this.path;
                    int i = (timelineView.f2240w - TimelineView.this.f2237px) - TimelineView.this.f2237px;
                    int iM1124dp = AndroidUtilities.m1124dp(38.0f);
                    long j = this.duration;
                    this.thumbs = timelineView.new VideoThumbsLoader(z2, str, i, iM1124dp, j > 2 ? Long.valueOf(j) : null, TimelineView.this.getMaxScrollDuration(), TimelineView.this.coverStart, TimelineView.this.coverEnd, new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$Track$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$setupThumbs$0();
                        }
                    });
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setupThumbs$0() {
            VideoThumbsLoader videoThumbsLoader = this.thumbs;
            if (videoThumbsLoader == null || videoThumbsLoader.getDuration() <= 0) {
                return;
            }
            this.duration = this.thumbs.getDuration();
            TimelineView.this.sortCollage();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setupWaveform(boolean z) {
            int i = this.index;
            if (i < 0 || i >= TimelineView.this.collageWaveforms.size()) {
                return;
            }
            AudioWaveformLoader audioWaveformLoader = (AudioWaveformLoader) TimelineView.this.collageWaveforms.get(this.index);
            if (TimelineView.this.getMeasuredWidth() > 0) {
                if (audioWaveformLoader == null || z) {
                    if (audioWaveformLoader != null) {
                        audioWaveformLoader.destroy();
                    }
                    TimelineView timelineView = TimelineView.this;
                    TimelineView.this.collageWaveforms.set(this.index, timelineView.new AudioWaveformLoader(this.path, (timelineView.getMeasuredWidth() - TimelineView.this.getPaddingLeft()) - TimelineView.this.getPaddingRight()));
                }
            }
        }
    }

    public void setMaxCount(int i) {
        this.maxCount = i;
    }

    public int getMaxCount() {
        return this.maxCount;
    }

    private long maxSelectDuration() {
        return ((long) this.maxCount) * 59000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getBaseDuration() {
        Track track = this.videoTrack;
        if (track != null) {
            return Math.max(1L, track.duration);
        }
        Track track2 = this.collageMain;
        if (track2 != null) {
            return Math.max(1L, track2.duration);
        }
        if (this.hasRound) {
            return Math.max(1L, this.roundDuration);
        }
        return Math.max(1L, this.audioDuration);
    }

    public void setOpen(boolean z, boolean z2) {
        if (this.open == z && z2) {
            return;
        }
        this.open = z;
        if (!z2) {
            this.openT.set(z, true);
        }
        invalidate();
    }

    public void setCover() {
        this.isCover = true;
    }

    public TimelineView(Context context, final ViewGroup viewGroup, final View view, final Theme.ResourcesProvider resourcesProvider, final BlurringShader.BlurManager blurManager) {
        super(context);
        this.collageSelected = 0;
        this.collageWaveforms = new ArrayList();
        this.collageTracks = new ArrayList();
        this.collageFramePaint = new Paint(3);
        this.collageClipPath = new Path();
        this.selectedCollageClipPath = new Path();
        this.maxCount = 1;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.roundT = new AnimatedFloat(this, 0L, 360L, cubicBezierInterpolator);
        this.roundSelectedT = new AnimatedFloat(this, 360L, cubicBezierInterpolator);
        this.audioT = new AnimatedFloat(this, 0L, 360L, cubicBezierInterpolator);
        this.audioSelectedT = new AnimatedFloat(this, 360L, cubicBezierInterpolator);
        this.waveformMax = new AnimatedFloat(this, 0L, 360L, cubicBezierInterpolator);
        this.timelineWaveformLoaded = new AnimatedFloat(this, 0L, 600L, cubicBezierInterpolator);
        this.timelineWaveformMax = new AnimatedFloat(this, 0L, 360L, cubicBezierInterpolator);
        this.openT = new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator);
        this.open = true;
        this.timelineBounds = new RectF();
        this.timelineClipPath = new Path();
        this.timelineWaveformPath = new WaveformPath();
        this.videoBounds = new RectF();
        this.videoFramePaint = new Paint(3);
        this.videoClipPath = new Path();
        this.selectedVideoClipPath = new Path();
        this.roundBounds = new RectF();
        this.roundClipPath = new Path();
        Paint paint = new Paint(1);
        this.regionPaint = paint;
        Paint paint2 = new Paint(1);
        this.regionCutPaint = paint2;
        Paint paint3 = new Paint(1);
        this.regionHandlePaint = paint3;
        Paint paint4 = new Paint(1);
        this.progressShadowPaint = paint4;
        Paint paint5 = new Paint(1);
        this.progressWhitePaint = paint5;
        TextPaint textPaint = new TextPaint(1);
        this.countTextPaint = textPaint;
        this.audioBounds = new RectF();
        this.audioClipPath = new Path();
        Paint paint6 = new Paint(1);
        this.waveformPaint = paint6;
        this.waveformPath = new WaveformPath();
        Paint paint7 = new Paint(1);
        this.audioDotPaint = paint7;
        TextPaint textPaint2 = new TextPaint(1);
        this.audioAuthorPaint = textPaint2;
        TextPaint textPaint3 = new TextPaint(1);
        this.audioTitlePaint = textPaint3;
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, 16.0f, 0.0f, new int[]{16777215, -1}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
        this.ellipsizeGradient = linearGradient;
        this.ellipsizeMatrix = new Matrix();
        Paint paint8 = new Paint(1);
        this.ellipsizePaint = paint8;
        this.scroller = new Scroller(getContext());
        this.coverStart = -1L;
        this.coverEnd = -1L;
        this.loopProgress = new AnimatedFloat(0.0f, this, 0L, 340L, cubicBezierInterpolator);
        this.loopProgressFrom = -1L;
        this.pressHandle = -1;
        this.pressHandleCollageIndex = -1;
        this.pressType = -1;
        this.pressCollageIndex = -1;
        this.dragSpeed = 1.0f;
        this.scrollingVideo = true;
        this.scrollingCollage = -1;
        this.scrolling = false;
        this.selectedVideoRadii = new float[8];
        this.previewContainer = view;
        this.resourcesProvider = resourcesProvider;
        paint7.setColor(Integer.MAX_VALUE);
        textPaint2.setTextSize(AndroidUtilities.m1124dp(12.0f));
        textPaint2.setTypeface(AndroidUtilities.bold());
        textPaint2.setColor(-1);
        textPaint3.setTextSize(AndroidUtilities.m1124dp(12.0f));
        textPaint3.setColor(-1);
        paint6.setColor(1090519039);
        paint8.setShader(linearGradient);
        paint8.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        paint.setColor(-1);
        paint.setShadowLayer(AndroidUtilities.m1124dp(1.0f), 0.0f, AndroidUtilities.m1124dp(1.0f), 436207616);
        textPaint.setTextSize(AndroidUtilities.m1124dp(12.0f));
        textPaint.setColor(-1);
        textPaint.setShadowLayer(AndroidUtilities.m1124dp(2.0f), 0.0f, AndroidUtilities.m1124dp(2.0f), TLObject.FLAG_30);
        textPaint.setTypeface(AndroidUtilities.bold());
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        paint3.setColor(-16777216);
        paint5.setColor(-1);
        paint4.setColor(637534208);
        this.timelineText = new Text(LocaleController.getString(C2888R.string.StoryTimeline), 12.0f, AndroidUtilities.bold());
        Drawable drawableMutate = getContext().getResources().getDrawable(C2888R.drawable.timeline).mutate();
        this.timelineIcon = drawableMutate;
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, mode));
        Drawable drawableMutate2 = getContext().getResources().getDrawable(C2888R.drawable.filled_widget_music).mutate();
        this.audioIcon = drawableMutate2;
        drawableMutate2.setColorFilter(new PorterDuffColorFilter(-1, mode));
        this.blurManager = blurManager;
        this.backgroundBlur = new BlurringShader.StoryBlurDrawer(blurManager, this, 0);
        this.audioBlur = new BlurringShader.StoryBlurDrawer(blurManager, this, 3);
        this.audioWaveformBlur = new BlurringShader.StoryBlurDrawer(blurManager, this, 4);
        this.onLongPress = new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$6(viewGroup, resourcesProvider, blurManager, view);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(ViewGroup viewGroup, Theme.ResourcesProvider resourcesProvider, BlurringShader.BlurManager blurManager, View view) {
        int i;
        int i2 = this.pressType;
        try {
            if (i2 == 2 && this.hasAudio) {
                SliderView onValueChange = new SliderView(getContext(), 0).setMinMax(0.0f, 1.5f).setValue(this.audioVolume).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda4
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$new$0((Float) obj);
                    }
                });
                long jMin = Math.min(getBaseDuration(), getMaxScrollDuration());
                int i3 = this.f2240w;
                int i4 = this.f2237px;
                int i5 = this.f2236ph;
                ItemOptions.makeOptions(viewGroup, resourcesProvider, this).addView(onValueChange).addSpaceGap().add(C2888R.drawable.msg_delete, LocaleController.getString(C2888R.string.StoryAudioRemove), new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$1();
                    }
                }).setGravity(5).forceTop(true).translate((-(this.f2240w - Math.min((i3 - i4) - i5, (i4 + i5) + ((((this.audioOffset - this.scroll) + (AndroidUtilities.lerp(this.audioRight, 1.0f, this.audioSelectedT.get()) * this.audioDuration)) / jMin) * this.f2239sw)))) + AndroidUtilities.m1124dp(18.0f), this.audioBounds.top).show().setBlurBackground(blurManager, -view.getX(), -view.getY());
                performHapticFeedback(0, 1);
            } else if (i2 == 1 && this.hasRound) {
                SliderView onValueChange2 = new SliderView(getContext(), 0).setMinMax(0.0f, 1.5f).setValue(this.roundVolume).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda6
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$new$2((Float) obj);
                    }
                });
                long jMin2 = Math.min(getBaseDuration(), getMaxScrollDuration());
                int i6 = this.f2240w;
                int i7 = this.f2237px;
                int i8 = this.f2236ph;
                ItemOptions.makeOptions(viewGroup, resourcesProvider, this).addView(onValueChange2).addSpaceGap().add(C2888R.drawable.msg_delete, LocaleController.getString(C2888R.string.StoryRoundRemove), new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$3();
                    }
                }).setGravity(5).forceTop(true).translate((-(this.f2240w - Math.min((i6 - i7) - i8, (i7 + i8) + ((((this.roundOffset - this.scroll) + (AndroidUtilities.lerp(this.roundRight, 1.0f, this.roundSelectedT.get()) * this.roundDuration)) / jMin2) * this.f2239sw)))) + AndroidUtilities.m1124dp(18.0f), this.roundBounds.top).show().setBlurBackground(blurManager, -view.getX(), -view.getY());
                performHapticFeedback(0, 1);
            } else if (i2 == 0 && this.videoTrack != null) {
                ItemOptions.makeOptions(viewGroup, resourcesProvider, this).addView(new SliderView(getContext(), 0).setMinMax(0.0f, 1.5f).setValue(this.videoTrack.volume).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda8
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$new$4((Float) obj);
                    }
                })).setGravity(5).forceTop(true).translate(AndroidUtilities.m1124dp(18.0f), this.videoBounds.top).show().setBlurBackground(blurManager, -view.getX(), -view.getY());
                performHapticFeedback(0, 1);
            } else {
                if (i2 != 3 || (i = this.pressCollageIndex) < 0 || i >= this.collageTracks.size()) {
                    return;
                }
                final Track track = (Track) this.collageTracks.get(this.pressCollageIndex);
                ItemOptions.makeOptions(viewGroup, resourcesProvider, this).addView(new SliderView(getContext(), 0).setMinMax(0.0f, 1.5f).setValue(track.volume).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda9
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$new$5(track, (Float) obj);
                    }
                })).setGravity(5).forceTop(true).translate(AndroidUtilities.m1124dp(18.0f), track.bounds.top).show().setBlurBackground(blurManager, -view.getX(), -view.getY());
                performHapticFeedback(0, 1);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Float f) {
        this.audioVolume = f.floatValue();
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onAudioVolumeChange(f.floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onAudioRemove();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(Float f) {
        this.roundVolume = f.floatValue();
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onRoundVolumeChange(f.floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3() {
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onRoundRemove();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(Float f) {
        this.videoTrack.volume = f.floatValue();
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onVideoVolumeChange(f.floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(Track track, Float f) {
        track.volume = f.floatValue();
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onVideoVolumeChange(track.index, f.floatValue());
        }
    }

    public void setDelegate(TimelineDelegate timelineDelegate) {
        this.delegate = timelineDelegate;
    }

    public void setCoverVideo(long j, long j2) {
        this.coverStart = j;
        this.coverEnd = j2;
        Track track = this.videoTrack;
        if (track != null) {
            track.setupThumbs(true);
        }
    }

    public void setVideo(boolean z, String str, long j, float f) {
        Track track = this.videoTrack;
        if (TextUtils.equals(track == null ? null : track.path, str)) {
            return;
        }
        Track track2 = this.videoTrack;
        if (track2 != null) {
            VideoThumbsLoader videoThumbsLoader = track2.thumbs;
            if (videoThumbsLoader != null) {
                videoThumbsLoader.destroy();
                this.videoTrack.thumbs = null;
            }
            this.videoTrack = null;
        }
        if (str != null) {
            this.scroll = 0L;
            Track track3 = new Track();
            this.videoTrack = track3;
            track3.isRound = z;
            track3.path = str;
            track3.duration = j;
            track3.volume = f;
            track3.setupThumbs(false);
        } else {
            this.videoTrack = null;
            this.scroll = 0L;
        }
        if (!this.hasRound) {
            this.roundSelected = false;
        }
        this.progress = 0L;
        invalidate();
    }

    public void setCollage(ArrayList<StoryEntry> arrayList) {
        VideoThumbsLoader videoThumbsLoader;
        for (int i = 0; i < this.collageTracks.size(); i++) {
            Track track = (Track) this.collageTracks.get(i);
            if (track != null && (videoThumbsLoader = track.thumbs) != null) {
                videoThumbsLoader.destroy();
            }
        }
        this.collageTracks.clear();
        for (int i2 = 0; i2 < this.collageWaveforms.size(); i2++) {
            AudioWaveformLoader audioWaveformLoader = (AudioWaveformLoader) this.collageWaveforms.get(i2);
            if (audioWaveformLoader != null) {
                audioWaveformLoader.destroy();
            }
        }
        this.collageWaveforms.clear();
        this.timelineWaveformMax.set(1.0f, true);
        if (arrayList != null) {
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                this.collageWaveforms.add(null);
                StoryEntry storyEntry = arrayList.get(i3);
                if (storyEntry.isVideo) {
                    Track track2 = new Track();
                    track2.index = i3;
                    track2.isRound = false;
                    track2.path = storyEntry.file.getAbsolutePath();
                    track2.duration = storyEntry.duration;
                    track2.offset = storyEntry.videoOffset;
                    track2.volume = storyEntry.videoVolume;
                    track2.left = storyEntry.videoLeft;
                    track2.right = storyEntry.videoRight;
                    track2.setupThumbs(false);
                    track2.setupWaveform(false);
                    this.collageTracks.add(track2);
                }
            }
        }
        sortCollage();
        this.collageSelected = 0;
    }

    public static /* synthetic */ int $r8$lambda$CcgHyMQkOAL1CJP_zrgPRlX6yxQ(Track track, Track track2) {
        return (int) (track2.duration - track.duration);
    }

    public void sortCollage() {
        Collections.sort(this.collageTracks, new Comparator() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return TimelineView.$r8$lambda$CcgHyMQkOAL1CJP_zrgPRlX6yxQ((TimelineView.Track) obj, (TimelineView.Track) obj2);
            }
        });
        Track track = this.collageTracks.isEmpty() ? null : (Track) this.collageTracks.get(0);
        this.collageMain = track;
        if (track != null) {
            long j = track.offset;
        }
    }

    public void setRoundNull(boolean z) {
        setRound(null, 0L, 0L, 0.0f, 0.0f, 0.0f, z);
    }

    public void setRound(String str, long j, long j2, float f, float f2, float f3, boolean z) {
        if (TextUtils.equals(this.roundPath, str)) {
            return;
        }
        VideoThumbsLoader videoThumbsLoader = this.roundThumbs;
        if (videoThumbsLoader != null) {
            videoThumbsLoader.destroy();
            this.roundThumbs = null;
        }
        long j3 = this.roundDuration;
        if (str != null) {
            this.roundPath = str;
            this.roundDuration = j;
            this.roundOffset = j2 - ((long) (j * f));
            this.roundLeft = f;
            this.roundRight = f2;
            this.roundVolume = f3;
            setupRoundThumbs();
            if (this.videoTrack == null) {
                this.audioSelected = false;
                this.roundSelected = true;
            }
        } else {
            this.roundPath = null;
            this.roundDuration = 1L;
            this.roundSelected = false;
        }
        this.hasRound = this.roundPath != null;
        if (j3 != j && this.videoTrack == null && this.waveform != null) {
            this.resetWaveform = true;
            setupAudioWaveform();
        }
        if (this.hasAudio && this.hasRound && this.videoTrack == null) {
            this.audioLeft = 0.0f;
            this.audioRight = Utilities.clamp(j / this.audioDuration, 1.0f, 0.0f);
        }
        if (!z) {
            this.roundSelectedT.set(this.roundSelected, true);
            this.audioSelectedT.set(this.audioSelected, true);
            this.roundT.set(this.hasRound, true);
        }
        invalidate();
    }

    public void selectRound(boolean z) {
        if (z && this.hasRound) {
            this.roundSelected = true;
            this.audioSelected = false;
        } else {
            this.roundSelected = false;
            this.audioSelected = this.hasAudio && this.videoTrack == null;
        }
        invalidate();
    }

    private void setupRoundThumbs() {
        Track track;
        if (getMeasuredWidth() <= 0 || this.roundThumbs != null || ((track = this.videoTrack) != null && track.duration < 1)) {
            return;
        }
        String str = this.roundPath;
        int i = this.f2240w;
        int i2 = this.f2237px;
        int i3 = (i - i2) - i2;
        int iM1124dp = AndroidUtilities.m1124dp(38.0f);
        long j = this.roundDuration;
        Long lValueOf = j > 2 ? Long.valueOf(j) : null;
        Track track2 = this.videoTrack;
        this.roundThumbs = new VideoThumbsLoader(false, str, i3, iM1124dp, lValueOf, track2 != null ? track2.duration : getMaxScrollDuration(), -1L, -1L, new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setupRoundThumbs$8();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupRoundThumbs$8() {
        VideoThumbsLoader videoThumbsLoader = this.roundThumbs;
        if (videoThumbsLoader == null || videoThumbsLoader.getDuration() <= 0) {
            return;
        }
        this.roundDuration = this.roundThumbs.getDuration();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setProgress(long j) {
        Track track = this.videoTrack;
        if (track != null) {
            if (j < this.progress) {
                float f = j;
                long j2 = track.duration;
                if (f > (j2 * track.left) + 240.0f || r4 + 240 < j2 * track.right) {
                    if (this.hasAudio && !this.hasRound && track == null) {
                        if (j < this.progress) {
                            float f2 = j;
                            long j3 = this.audioDuration;
                            if (f2 > (j3 * this.audioLeft) + 240.0f || r4 + 240 < j3 * this.audioRight) {
                            }
                        }
                    } else if (this.hasRound && track == null) {
                        if (j < this.progress) {
                            float f3 = j;
                            long j4 = this.roundDuration;
                            if (f3 <= (j4 * this.audioLeft) + 240.0f && r4 + 240 >= j4 * this.audioRight) {
                                this.loopProgressFrom = -1L;
                                this.loopProgress.set(1.0f, true);
                            }
                        }
                    }
                }
            }
        }
        this.progress = j;
        invalidate();
    }

    public void setVideoLeft(float f) {
        Track track = this.videoTrack;
        if (track == null) {
            return;
        }
        track.left = f;
        invalidate();
    }

    public void setVideoRight(float f) {
        Track track = this.videoTrack;
        if (track == null) {
            return;
        }
        track.right = f;
        invalidate();
    }

    public void normalizeScrollByVideo() {
        long jMin = Math.min(getBaseDuration(), getMaxScrollDuration());
        Track track = this.videoTrack;
        float f = (track.right + track.left) / 2.0f;
        long j = track.duration;
        this.scroll = Utilities.clamp((long) ((f * j) - (jMin / 2.0f)), j - jMin, 0L);
        invalidate();
    }

    public void setAudio(String str, String str2, String str3, long j, long j2, float f, float f2, float f3, boolean z) {
        String str4;
        String str5;
        if (!TextUtils.equals(this.audioPath, str)) {
            AudioWaveformLoader audioWaveformLoader = this.waveform;
            if (audioWaveformLoader != null) {
                audioWaveformLoader.destroy();
                this.waveform = null;
                this.waveformIsLoaded = false;
            }
            this.audioPath = str;
            setupAudioWaveform();
        }
        this.audioPath = str;
        boolean zIsEmpty = TextUtils.isEmpty(str);
        this.hasAudio = !zIsEmpty;
        if (zIsEmpty) {
            this.audioSelected = false;
            str4 = null;
            str5 = null;
        } else {
            str4 = str2;
            str5 = str3;
        }
        if (TextUtils.isEmpty(str4)) {
            str4 = null;
        }
        if (TextUtils.isEmpty(str5)) {
            str5 = null;
        }
        if (this.hasAudio) {
            this.audioDuration = j;
            this.audioOffset = j2 - ((long) (j * f));
            this.audioLeft = f;
            this.audioRight = f2;
            this.audioVolume = f3;
            if (str4 != null) {
                StaticLayout staticLayout = new StaticLayout(str4, this.audioAuthorPaint, 99999, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                this.audioAuthor = staticLayout;
                this.audioAuthorWidth = staticLayout.getLineCount() > 0 ? this.audioAuthor.getLineWidth(0) : 0.0f;
                this.audioAuthorLeft = this.audioAuthor.getLineCount() > 0 ? this.audioAuthor.getLineLeft(0) : 0.0f;
            } else {
                this.audioAuthorWidth = 0.0f;
                this.audioAuthor = null;
            }
            if (str5 != null) {
                StaticLayout staticLayout2 = new StaticLayout(str5, this.audioTitlePaint, 99999, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                this.audioTitle = staticLayout2;
                this.audioTitleWidth = staticLayout2.getLineCount() > 0 ? this.audioTitle.getLineWidth(0) : 0.0f;
                this.audioTitleLeft = this.audioTitle.getLineCount() > 0 ? this.audioTitle.getLineLeft(0) : 0.0f;
            } else {
                this.audioTitleWidth = 0.0f;
                this.audioTitle = null;
            }
        }
        if (!z) {
            this.audioT.set(this.hasAudio, true);
        }
        invalidate();
    }

    private void setupAudioWaveform() {
        if (getMeasuredWidth() > 0) {
            if (this.waveform == null || this.resetWaveform) {
                this.waveform = new AudioWaveformLoader(this.audioPath, (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
                this.waveformIsLoaded = false;
                this.waveformMax.set(1.0f, true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x013d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int detectHandle(MotionEvent motionEvent) {
        boolean z;
        int i;
        int i2;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        long jMin = Math.min(getBaseDuration(), getMaxScrollDuration());
        float fClamp = Utilities.clamp(this.progress, getBaseDuration(), 0L);
        Track track = this.collageMain;
        float f = jMin;
        float f2 = this.f2237px + this.f2236ph + (this.f2239sw * (((fClamp + (track != null ? track.offset + (track.left * track.duration) : this.videoTrack == null ? this.audioOffset : 0L)) - this.scroll) / f));
        if (!this.isCover && x >= f2 - AndroidUtilities.m1124dp(12.0f) && x <= f2 + AndroidUtilities.m1124dp(12.0f)) {
            return 0;
        }
        boolean z2 = this.videoTrack != null && y > (((float) (this.f2235h - this.f2238py)) - getVideoHeight()) - ((float) AndroidUtilities.m1124dp(2.0f));
        boolean z3 = !this.collageTracks.isEmpty() && y > ((((((float) (this.f2235h - this.f2238py)) - getVideoHeight()) - ((float) AndroidUtilities.m1124dp(4.0f))) - getCollageHeight()) - ((float) AndroidUtilities.m1124dp(4.0f))) - ((float) AndroidUtilities.m1124dp(2.0f)) && y < (((float) (this.f2235h - this.f2238py)) - getVideoHeight()) - ((float) AndroidUtilities.m1124dp(2.0f));
        if (this.hasRound) {
            if (y > (((((((this.f2235h - this.f2238py) - getVideoHeight()) - AndroidUtilities.m1124dp(4.0f)) - getCollageHeight()) - AndroidUtilities.m1124dp(this.collageTracks.isEmpty() ? 0.0f : 4.0f)) - getRoundHeight()) - AndroidUtilities.m1124dp(4.0f)) - AndroidUtilities.m1124dp(2.0f)) {
                z = y < (((((float) (this.f2235h - this.f2238py)) - getVideoHeight()) - ((float) AndroidUtilities.m1124dp(2.0f))) - getCollageHeight()) - ((float) AndroidUtilities.m1124dp(this.collageTracks.isEmpty() ? 0.0f : 4.0f));
            }
        }
        if (z3) {
            for (int i3 = 0; i3 < this.collageTracks.size(); i3++) {
                Track track2 = (Track) this.collageTracks.get(i3);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(track2.bounds);
                rectF.inset(-AndroidUtilities.m1124dp(2.0f), -AndroidUtilities.m1124dp(2.0f));
                if (rectF.contains(x, y)) {
                    int i4 = this.f2237px;
                    int i5 = this.f2236ph;
                    long j = track2.offset;
                    int i6 = this.f2239sw;
                    float f3 = i4 + i5 + ((j / f) * i6);
                    float f4 = track2.left;
                    long j2 = track2.duration;
                    float f5 = i4 + i5 + (((j + (f4 * j2)) / f) * i6);
                    float f6 = i4 + i5 + (((j + (track2.right * j2)) / f) * i6);
                    float f7 = i4 + i5 + (((j + j2) / f) * i6);
                    this.pressHandleCollageIndex = i3;
                    if (x >= f5 - AndroidUtilities.m1124dp(15.0f) && x <= AndroidUtilities.m1124dp(5.0f) + f5) {
                        return 13;
                    }
                    if (x >= f6 - AndroidUtilities.m1124dp(5.0f) && x <= AndroidUtilities.m1124dp(15.0f) + f6) {
                        return 14;
                    }
                    if (x < f5 || x > f6 || (track2.left <= 0.01f && track2.right >= 0.99f)) {
                        return (x < f3 || x > f7) ? -1 : 16;
                    }
                    return 15;
                }
            }
            i = 1;
            i2 = -1;
        } else {
            i = 1;
            i2 = -1;
            if (z2) {
                int i7 = this.f2237px;
                int i8 = this.f2236ph;
                Track track3 = this.videoTrack;
                float f8 = track3.left;
                long j3 = track3.duration;
                long j4 = this.scroll;
                int i9 = this.f2239sw;
                float f9 = i7 + i8 + ((((f8 * j3) - j4) / f) * i9);
                float f10 = i7 + i8 + ((((track3.right * j3) - j4) / f) * i9);
                if (this.isCover) {
                    return (getBaseDuration() < getMaxScrollDuration() || (x >= f9 - ((float) AndroidUtilities.m1124dp(15.0f)) && x <= f10 + ((float) AndroidUtilities.m1124dp(15.0f)))) ? 4 : 1;
                }
                if (x >= f9 - AndroidUtilities.m1124dp(15.0f) && x <= AndroidUtilities.m1124dp(5.0f) + f9) {
                    return 2;
                }
                if (x >= f10 - AndroidUtilities.m1124dp(5.0f) && x <= AndroidUtilities.m1124dp(15.0f) + f10) {
                    return 3;
                }
                if (x >= f9 && x <= f10) {
                    Track track4 = this.videoTrack;
                    if (track4.left > 0.01f || track4.right < 0.99f) {
                        return 4;
                    }
                }
            } else if (z) {
                int i10 = this.f2237px;
                int i11 = this.f2236ph;
                long j5 = this.roundOffset;
                float f11 = this.roundLeft;
                long j6 = this.roundDuration;
                long j7 = this.scroll;
                float f12 = ((j5 + (f11 * j6)) - j7) / f;
                int i12 = this.f2239sw;
                float f13 = i10 + i11 + (f12 * i12);
                float f14 = i10 + i11 + ((((j5 + (this.roundRight * j6)) - j7) / f) * i12);
                if (this.roundSelected || this.videoTrack == null) {
                    if (x >= f13 - AndroidUtilities.m1124dp(15.0f) && x <= AndroidUtilities.m1124dp(5.0f) + f13) {
                        return 10;
                    }
                    if (x >= f14 - AndroidUtilities.m1124dp(5.0f) && x <= AndroidUtilities.m1124dp(15.0f) + f14) {
                        return 11;
                    }
                    if (x >= f13 && x <= f14) {
                        return this.videoTrack == null ? 12 : 9;
                    }
                    int i13 = this.f2237px;
                    int i14 = this.f2236ph;
                    long j8 = this.roundOffset;
                    long j9 = this.scroll;
                    int i15 = this.f2239sw;
                    f13 = i13 + i14 + (((j8 - j9) / f) * i15);
                    f14 = i13 + i14 + ((((j8 + this.roundDuration) - j9) / f) * i15);
                }
                if (x >= f13 && x <= f14) {
                    return 9;
                }
            } else if (this.hasAudio) {
                int i16 = this.f2237px;
                int i17 = this.f2236ph;
                long j10 = this.audioOffset;
                float f15 = this.audioLeft;
                long j11 = this.audioDuration;
                long j12 = this.scroll;
                float f16 = ((j10 + (f15 * j11)) - j12) / f;
                int i18 = this.f2239sw;
                float f17 = i16 + i17 + (f16 * i18);
                float f18 = i16 + i17 + ((((j10 + (this.audioRight * j11)) - j12) / f) * i18);
                if (this.audioSelected || (this.videoTrack == null && !this.hasRound)) {
                    if (x >= f17 - AndroidUtilities.m1124dp(15.0f) && x <= AndroidUtilities.m1124dp(5.0f) + f17) {
                        return 6;
                    }
                    if (x >= f18 - AndroidUtilities.m1124dp(5.0f) && x <= AndroidUtilities.m1124dp(15.0f) + f18) {
                        return 7;
                    }
                    if (x >= f17 && x <= f18) {
                        return this.videoTrack == null ? 8 : 5;
                    }
                    int i19 = this.f2237px;
                    int i20 = this.f2236ph;
                    long j13 = this.audioOffset;
                    long j14 = this.scroll;
                    int i21 = this.f2239sw;
                    f17 = i19 + i20 + (((j13 - j14) / f) * i21);
                    f18 = i19 + i20 + ((((j13 + this.audioDuration) - j14) / f) * i21);
                }
                if (x >= f17 && x <= f18) {
                    return 5;
                }
            }
        }
        Track track5 = this.videoTrack;
        return (track5 == null || track5.duration <= getMaxScrollDuration() || !z2) ? i2 : i;
    }

    public boolean onBackPressed() {
        boolean z = false;
        if (this.audioSelected) {
            this.audioSelected = false;
            z = true;
            if (this.hasRound && this.videoTrack == null) {
                this.roundSelected = true;
                TimelineDelegate timelineDelegate = this.delegate;
                if (timelineDelegate != null) {
                    timelineDelegate.onRoundSelectChange(true);
                }
            }
        }
        return z;
    }

    public boolean isDragging() {
        return this.dragged;
    }

    private boolean setProgressAt(float f, boolean z) {
        if (this.videoTrack == null && !this.hasAudio && this.collageTracks.isEmpty()) {
            return false;
        }
        long jMin = Math.min(getBaseDuration(), getMaxScrollDuration());
        float f2 = ((f - this.f2237px) - this.f2236ph) / this.f2239sw;
        Track track = this.collageMain;
        long j = track != null ? (long) (track.offset + (track.left * track.duration)) : 0L;
        float f3 = f2 * jMin;
        if (track == null) {
            j = this.videoTrack == null ? this.audioOffset : 0L;
        }
        final long jClamp = (long) Utilities.clamp((f3 - j) + this.scroll, getBaseDuration(), 0.0f);
        Track track2 = this.videoTrack;
        if (track2 != null) {
            float f4 = jClamp;
            long j2 = track2.duration;
            if (f4 / j2 < track2.left || f4 / j2 > track2.right) {
                return false;
            }
        }
        Track track3 = this.collageMain;
        if (track3 != null && (jClamp < 0 || jClamp >= ((long) ((track3.right - track3.left) * track3.duration)))) {
            return false;
        }
        if (this.hasAudio && track2 == null && this.collageTracks.isEmpty()) {
            float f5 = jClamp;
            long j3 = this.audioDuration;
            if (f5 / j3 < this.audioLeft || f5 / j3 > this.audioRight) {
                return false;
            }
        }
        this.progress = jClamp;
        invalidate();
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onProgressChange(jClamp, z);
        }
        Runnable runnable = this.askExactSeek;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.askExactSeek = null;
        }
        if (!z) {
            return true;
        }
        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setProgressAt$9(jClamp);
            }
        };
        this.askExactSeek = runnable2;
        AndroidUtilities.runOnUIThread(runnable2, 150L);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setProgressAt$9(long j) {
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onProgressChange(j, false);
        }
    }

    private float getVideoHeight() {
        if (this.videoTrack == null) {
            return 0.0f;
        }
        return AndroidUtilities.lerp(AndroidUtilities.m1124dp(28.0f), AndroidUtilities.m1124dp(38.0f), r0.selectedT.get());
    }

    private float getCollageHeight() {
        if (this.collageTracks.isEmpty()) {
            return 0.0f;
        }
        float fLerp = 0.0f;
        for (int i = 0; i < this.collageTracks.size(); i++) {
            if (fLerp > 0.0f) {
                fLerp += AndroidUtilities.m1124dp(4.0f);
            }
            fLerp += AndroidUtilities.lerp(AndroidUtilities.m1124dp(28.0f), AndroidUtilities.m1124dp(38.0f), ((Track) this.collageTracks.get(i)).selectedT.get());
        }
        return fLerp;
    }

    private float getAudioHeight() {
        return AndroidUtilities.lerp(AndroidUtilities.m1124dp(28.0f), AndroidUtilities.m1124dp(38.0f), this.audioSelectedT.set(this.audioSelected));
    }

    private float getRoundHeight() {
        if (!this.hasRound) {
            return 0.0f;
        }
        return AndroidUtilities.lerp(AndroidUtilities.m1124dp(28.0f), AndroidUtilities.m1124dp(38.0f), this.roundSelectedT.set(this.roundSelected));
    }

    /* JADX WARN: Removed duplicated region for block: B:220:0x04f2  */
    /* JADX WARN: Removed duplicated region for block: B:460:0x0ae7  */
    /* JADX WARN: Removed duplicated region for block: B:565:0x0dae  */
    /* JADX WARN: Removed duplicated region for block: B:568:0x0db7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:574:0x0dd2  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01bb  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        Runnable runnable;
        VelocityTracker velocityTracker;
        TimelineDelegate timelineDelegate;
        VelocityTracker velocityTracker2;
        long j;
        boolean z2;
        long j2;
        VelocityTracker velocityTracker3;
        long j3;
        long j4;
        VelocityTracker velocityTracker4;
        boolean z3;
        VelocityTracker velocityTracker5;
        Runnable runnable2;
        VelocityTracker velocityTracker6;
        float fMin;
        float fMax;
        float fMax2;
        float fMin2;
        float fMax3;
        float fMax4;
        boolean z4;
        TimelineDelegate timelineDelegate2;
        int i;
        boolean z5;
        float fMax5;
        int i2;
        float fMax6;
        float f;
        float f2;
        int i3;
        float f3;
        float f4;
        if (this.videoTrack == null && this.collageTracks.isEmpty() && !this.hasAudio && !this.hasRound) {
            return false;
        }
        float timelineHeight = this.f2235h - getTimelineHeight();
        if (motionEvent.getAction() == 0 && motionEvent.getY() < timelineHeight) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (motionEvent.getAction() == 0) {
            Runnable runnable3 = this.askExactSeek;
            if (runnable3 != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable3);
                this.askExactSeek = null;
            }
            this.scroller.abortAnimation();
            this.pressHandleCollageIndex = -1;
            this.pressHandle = detectHandle(motionEvent);
            this.pressType = -1;
            this.pressCollageIndex = -1;
            int roundHeight = this.f2235h - this.f2238py;
            if (!this.open && this.timelineBounds.contains(motionEvent.getX(), motionEvent.getY())) {
                this.pressType = 10;
                this.pressHandle = -1;
            }
            float f5 = 4.0f;
            float f6 = 2.0f;
            if (this.pressType == -1 && this.videoTrack != null) {
                float f7 = roundHeight;
                if (motionEvent.getY() < f7 && motionEvent.getY() > (f7 - getVideoHeight()) - AndroidUtilities.m1124dp(2.0f)) {
                    this.pressType = 0;
                }
                roundHeight = (int) (f7 - (getVideoHeight() + AndroidUtilities.m1124dp(4.0f)));
            }
            if (this.pressType == -1 && !this.collageTracks.isEmpty()) {
                int i4 = 0;
                while (i4 < this.collageTracks.size()) {
                    f = f5;
                    float fLerp = AndroidUtilities.lerp(AndroidUtilities.m1124dp(28.0f), AndroidUtilities.m1124dp(38.0f), ((Track) this.collageTracks.get(i4)).selectedT.get());
                    float f8 = roundHeight;
                    if (motionEvent.getY() < f8) {
                        f2 = f6;
                        if (motionEvent.getY() > (f8 - fLerp) - AndroidUtilities.m1124dp(f2)) {
                            this.pressType = 3;
                            this.pressCollageIndex = i4;
                            break;
                        }
                    } else {
                        f2 = f6;
                    }
                    roundHeight = (int) (f8 - (fLerp + AndroidUtilities.m1124dp(f)));
                    i4++;
                    f5 = f;
                    f6 = f2;
                }
                f = f5;
                f2 = f6;
                if (this.pressType == -1) {
                    f4 = roundHeight;
                    if (motionEvent.getY() < f4) {
                        this.pressType = 1;
                    }
                    roundHeight = (int) (f4 - (getRoundHeight() + AndroidUtilities.m1124dp(f)));
                }
                if (this.pressType == -1) {
                    f3 = roundHeight;
                    if (motionEvent.getY() < f3) {
                        this.pressType = 2;
                    }
                    getAudioHeight();
                    AndroidUtilities.m1124dp(f);
                }
                this.pressTime = System.currentTimeMillis();
                i3 = this.pressHandle;
                if (i3 != 0) {
                    this.draggingProgress = i3 != 0 || i3 == -1 || i3 == 1;
                    this.hadDragChange = false;
                    if (i3 != 1) {
                        this.velocityTracker = VelocityTracker.obtain();
                        this.dragSpeed = 1.0f;
                        this.dragged = false;
                        this.lastX = motionEvent.getX();
                        if (!this.isCover) {
                        }
                    }
                }
            } else {
                f = f5;
                f2 = f6;
                if (this.pressType == -1 && this.hasRound) {
                    f4 = roundHeight;
                    if (motionEvent.getY() < f4 && motionEvent.getY() > (f4 - getRoundHeight()) - AndroidUtilities.m1124dp(f2)) {
                        this.pressType = 1;
                    }
                    roundHeight = (int) (f4 - (getRoundHeight() + AndroidUtilities.m1124dp(f)));
                }
                if (this.pressType == -1 && this.hasAudio) {
                    f3 = roundHeight;
                    if (motionEvent.getY() < f3 && motionEvent.getY() > (f3 - getAudioHeight()) - AndroidUtilities.m1124dp(f2)) {
                        this.pressType = 2;
                    }
                    getAudioHeight();
                    AndroidUtilities.m1124dp(f);
                }
                this.pressTime = System.currentTimeMillis();
                i3 = this.pressHandle;
                this.draggingProgress = i3 != 0 || i3 == -1 || i3 == 1;
                this.hadDragChange = false;
                if (i3 != 1 || i3 == 5 || i3 == 8) {
                    this.velocityTracker = VelocityTracker.obtain();
                } else {
                    VelocityTracker velocityTracker7 = this.velocityTracker;
                    if (velocityTracker7 != null) {
                        velocityTracker7.recycle();
                        this.velocityTracker = null;
                    }
                }
                this.dragSpeed = 1.0f;
                this.dragged = false;
                this.lastX = motionEvent.getX();
                if (!this.isCover) {
                    AndroidUtilities.cancelRunOnUIThread(this.onLongPress);
                    AndroidUtilities.runOnUIThread(this.onLongPress, ViewConfiguration.getLongPressTimeout());
                }
            }
        } else if (motionEvent.getAction() == 2) {
            float x = motionEvent.getX() - this.lastX;
            if (this.open && (this.dragged || Math.abs(x) > AndroidUtilities.touchSlop)) {
                long jMin = Math.min(getBaseDuration(), getMaxScrollDuration());
                Track track = this.videoTrack;
                if (track != null && this.pressHandle == 1) {
                    this.scroll = (long) Utilities.clamp(this.scroll - ((x / this.f2239sw) * jMin), track.duration - jMin, 0.0f);
                    invalidate();
                    if (!this.dragged) {
                        this.dragSpeed = 1.0f;
                    }
                    this.dragged = true;
                    this.draggingProgress = false;
                } else if (track != null && ((i2 = this.pressHandle) == 2 || i2 == 3 || i2 == 4)) {
                    long j5 = track.duration;
                    float f9 = (x / this.f2239sw) * (jMin / j5);
                    if (i2 == 2) {
                        track.left = Utilities.clamp(track.left + f9, track.right - (1000.0f / j5), 0.0f);
                        TimelineDelegate timelineDelegate3 = this.delegate;
                        if (timelineDelegate3 != null) {
                            timelineDelegate3.onVideoLeftChange(false, this.videoTrack.left);
                        }
                        Track track2 = this.videoTrack;
                        float f10 = track2.right - track2.left;
                        float fMaxSelectDuration = maxSelectDuration();
                        Track track3 = this.videoTrack;
                        if (f10 > fMaxSelectDuration / track3.duration) {
                            track3.right = Math.min(1.0f, track3.left + (maxSelectDuration() / this.videoTrack.duration));
                            TimelineDelegate timelineDelegate4 = this.delegate;
                            if (timelineDelegate4 != null) {
                                timelineDelegate4.onVideoRightChange(false, this.videoTrack.right);
                            }
                        }
                    } else if (i2 == 3) {
                        track.right = Utilities.clamp(track.right + f9, 1.0f, track.left + (1000.0f / j5));
                        TimelineDelegate timelineDelegate5 = this.delegate;
                        if (timelineDelegate5 != null) {
                            timelineDelegate5.onVideoRightChange(false, this.videoTrack.right);
                        }
                        Track track4 = this.videoTrack;
                        float f11 = track4.right - track4.left;
                        float fMaxSelectDuration2 = maxSelectDuration();
                        Track track5 = this.videoTrack;
                        if (f11 > fMaxSelectDuration2 / track5.duration) {
                            track5.left = Math.max(0.0f, track5.right - (maxSelectDuration() / this.videoTrack.duration));
                            TimelineDelegate timelineDelegate6 = this.delegate;
                            if (timelineDelegate6 != null) {
                                timelineDelegate6.onVideoLeftChange(false, this.videoTrack.left);
                            }
                        }
                    } else if (i2 == 4) {
                        if (f9 > 0.0f) {
                            fMax6 = Math.min(1.0f - track.right, f9);
                        } else {
                            fMax6 = Math.max(-track.left, f9);
                        }
                        Track track6 = this.videoTrack;
                        float f12 = track6.left + fMax6;
                        track6.left = f12;
                        track6.right += fMax6;
                        TimelineDelegate timelineDelegate7 = this.delegate;
                        if (timelineDelegate7 != null) {
                            timelineDelegate7.onVideoLeftChange(false, f12);
                            this.delegate.onVideoRightChange(false, this.videoTrack.right);
                        }
                    }
                    long j6 = this.progress;
                    Track track7 = this.videoTrack;
                    long j7 = track7.duration;
                    float f13 = j6 / j7;
                    float f14 = track7.left;
                    if (f13 < f14 || j6 / j7 > track7.right) {
                        long j8 = (long) (f14 * j7);
                        this.progress = j8;
                        TimelineDelegate timelineDelegate8 = this.delegate;
                        if (timelineDelegate8 != null) {
                            timelineDelegate8.onProgressChange(j8, false);
                        }
                    }
                    invalidate();
                    if (!this.dragged) {
                        this.dragSpeed = 1.0f;
                    }
                    this.dragged = true;
                    this.draggingProgress = false;
                } else {
                    int i5 = this.pressHandle;
                    if (i5 == 6 || i5 == 7 || i5 == 8) {
                        float f15 = (x / this.f2239sw) * (jMin / this.audioDuration);
                        if (i5 == 6) {
                            float fMinAudioSelect = this.audioRight - (minAudioSelect() / this.audioDuration);
                            float fMax7 = Math.max(0L, this.scroll - this.audioOffset);
                            long j9 = this.audioDuration;
                            float f16 = fMax7 / j9;
                            Track track8 = this.videoTrack;
                            if (track8 != null) {
                                fMax2 = Math.max(f16, (((track8.left * track8.duration) + this.scroll) - this.audioOffset) / j9);
                            } else {
                                Track track9 = this.collageMain;
                                if (track9 != null) {
                                    fMax2 = Math.max(f16, (((track9.left * track9.duration) + this.scroll) - this.audioOffset) / j9);
                                } else if (this.hasRound) {
                                    fMax2 = Math.max(f16, (((this.roundLeft * this.roundDuration) + this.scroll) - this.audioOffset) / j9);
                                } else {
                                    fMax2 = Math.max(f16, this.audioRight - (maxSelectDuration() / this.audioDuration));
                                    if (!this.hadDragChange && f15 < 0.0f && this.audioLeft <= this.audioRight - (maxSelectDuration() / this.audioDuration)) {
                                        this.pressHandle = 8;
                                    }
                                }
                            }
                            float f17 = this.audioLeft;
                            float fClamp = Utilities.clamp(f17 + f15, fMinAudioSelect, fMax2);
                            this.audioLeft = fClamp;
                            if (Math.abs(f17 - fClamp) > 0.01f) {
                                this.hadDragChange = true;
                            }
                            TimelineDelegate timelineDelegate9 = this.delegate;
                            if (timelineDelegate9 != null) {
                                timelineDelegate9.onAudioOffsetChange(this.audioOffset + ((long) (this.audioLeft * this.audioDuration)));
                            }
                            TimelineDelegate timelineDelegate10 = this.delegate;
                            if (timelineDelegate10 != null) {
                                timelineDelegate10.onAudioLeftChange(this.audioLeft);
                            }
                        } else if (i5 == 7) {
                            float fMin3 = Math.min(1.0f, Math.max(0L, (this.scroll - this.audioOffset) + jMin) / this.audioDuration);
                            float f18 = this.audioLeft;
                            float fMinAudioSelect2 = minAudioSelect();
                            long j10 = this.audioDuration;
                            float f19 = f18 + (fMinAudioSelect2 / j10);
                            Track track10 = this.videoTrack;
                            if (track10 != null) {
                                fMin = Math.min(fMin3, (((track10.right * track10.duration) + this.scroll) - this.audioOffset) / j10);
                            } else {
                                Track track11 = this.collageMain;
                                if (track11 != null) {
                                    fMin = Math.min(fMin3, (((track11.right * track11.duration) + this.scroll) - this.audioOffset) / j10);
                                } else if (this.hasRound) {
                                    fMin = Math.min(fMin3, (((this.roundRight * this.roundDuration) + this.scroll) - this.audioOffset) / j10);
                                } else {
                                    fMin = Math.min(fMin3, this.audioLeft + (maxSelectDuration() / this.audioDuration));
                                    if (!this.hadDragChange && f15 > 0.0f && this.audioRight >= this.audioLeft + (maxSelectDuration() / this.audioDuration)) {
                                        this.pressHandle = 8;
                                    }
                                }
                            }
                            float f20 = this.audioRight;
                            float fClamp2 = Utilities.clamp(f20 + f15, fMin, f19);
                            this.audioRight = fClamp2;
                            if (Math.abs(f20 - fClamp2) > 0.01f) {
                                this.hadDragChange = true;
                            }
                            TimelineDelegate timelineDelegate11 = this.delegate;
                            if (timelineDelegate11 != null) {
                                timelineDelegate11.onAudioRightChange(this.audioRight);
                            }
                        }
                        if (this.pressHandle == 8) {
                            float fMax8 = Math.max(0L, this.scroll - this.audioOffset) / this.audioDuration;
                            float fMin4 = Math.min(1.0f, Math.max(0L, (this.scroll - this.audioOffset) + jMin) / this.audioDuration);
                            if (f15 > 0.0f) {
                                fMax = Math.min(Math.max(0.0f, fMin4 - this.audioRight), f15);
                            } else {
                                fMax = Math.max(Math.min(0.0f, fMax8 - this.audioLeft), f15);
                            }
                            float f21 = this.audioLeft + fMax;
                            this.audioLeft = f21;
                            this.audioRight += fMax;
                            TimelineDelegate timelineDelegate12 = this.delegate;
                            if (timelineDelegate12 != null) {
                                timelineDelegate12.onAudioLeftChange(f21);
                                this.delegate.onAudioOffsetChange(this.audioOffset + ((long) (this.audioLeft * this.audioDuration)));
                                this.delegate.onAudioRightChange(this.audioRight);
                            }
                            TimelineDelegate timelineDelegate13 = this.delegate;
                            if (timelineDelegate13 != null) {
                                timelineDelegate13.onProgressDragChange(true);
                            }
                        }
                        if (this.videoTrack == null && !this.hasRound) {
                            this.progress = (long) (this.audioLeft * this.audioDuration);
                            TimelineDelegate timelineDelegate14 = this.delegate;
                            if (timelineDelegate14 != null) {
                                timelineDelegate14.onProgressDragChange(true);
                                this.delegate.onProgressChange(this.progress, false);
                            }
                        }
                        invalidate();
                        if (!this.dragged) {
                            this.dragSpeed = 1.0f;
                        }
                        this.dragged = true;
                        this.draggingProgress = false;
                    } else if (i5 == 10 || i5 == 11 || i5 == 12) {
                        float f22 = (x / this.f2239sw) * (jMin / this.roundDuration);
                        if (i5 == 10) {
                            float fMinAudioSelect3 = this.roundRight - (minAudioSelect() / this.roundDuration);
                            float fMax9 = Math.max(0L, this.scroll - this.roundOffset);
                            long j11 = this.roundDuration;
                            float f23 = fMax9 / j11;
                            Track track12 = this.videoTrack;
                            if (track12 != null) {
                                fMax4 = Math.max(f23, (((track12.left * track12.duration) + this.scroll) - this.roundOffset) / j11);
                            } else {
                                Track track13 = this.collageMain;
                                if (track13 != null) {
                                    fMax4 = Math.max(f23, (((track13.left * track13.duration) + this.scroll) - this.roundOffset) / j11);
                                } else {
                                    fMax4 = Math.max(f23, this.roundRight - (maxSelectDuration() / this.roundDuration));
                                    if (!this.hadDragChange && f22 < 0.0f && this.roundLeft <= this.roundRight - (maxSelectDuration() / this.roundDuration)) {
                                        this.pressHandle = 8;
                                    }
                                }
                            }
                            float f24 = this.roundLeft;
                            float fClamp3 = Utilities.clamp(f24 + f22, fMinAudioSelect3, fMax4);
                            this.roundLeft = fClamp3;
                            if (Math.abs(f24 - fClamp3) > 0.01f) {
                                this.hadDragChange = true;
                            }
                            TimelineDelegate timelineDelegate15 = this.delegate;
                            if (timelineDelegate15 != null) {
                                timelineDelegate15.onRoundOffsetChange(this.roundOffset + ((long) (this.roundLeft * this.roundDuration)));
                            }
                            TimelineDelegate timelineDelegate16 = this.delegate;
                            if (timelineDelegate16 != null) {
                                timelineDelegate16.onRoundLeftChange(this.roundLeft);
                            }
                        } else if (i5 == 11) {
                            float fMin5 = Math.min(1.0f, Math.max(0L, (this.scroll - this.roundOffset) + jMin) / this.roundDuration);
                            float f25 = this.roundLeft;
                            float fMinAudioSelect4 = minAudioSelect();
                            long j12 = this.roundDuration;
                            float f26 = f25 + (fMinAudioSelect4 / j12);
                            Track track14 = this.videoTrack;
                            if (track14 != null) {
                                fMin5 = Math.min(fMin5, (((track14.right * track14.duration) + this.scroll) - this.roundOffset) / j12);
                            }
                            Track track15 = this.collageMain;
                            if (track15 != null) {
                                fMin2 = Math.min(fMin5, (((track15.right * track15.duration) + this.scroll) - this.roundOffset) / this.roundDuration);
                            } else {
                                fMin2 = Math.min(fMin5, this.roundLeft + (maxSelectDuration() / this.roundDuration));
                                if (!this.hadDragChange && f22 > 0.0f && this.roundRight >= this.roundLeft + (maxSelectDuration() / this.roundDuration)) {
                                    this.pressHandle = 8;
                                }
                            }
                            float f27 = this.roundRight;
                            float fClamp4 = Utilities.clamp(f27 + f22, fMin2, f26);
                            this.roundRight = fClamp4;
                            if (Math.abs(f27 - fClamp4) > 0.01f) {
                                this.hadDragChange = true;
                            }
                            TimelineDelegate timelineDelegate17 = this.delegate;
                            if (timelineDelegate17 != null) {
                                timelineDelegate17.onRoundRightChange(this.roundRight);
                            }
                        }
                        if (this.pressHandle == 12) {
                            float fMax10 = Math.max(0L, this.scroll - this.roundOffset) / this.roundDuration;
                            float fMin6 = Math.min(1.0f, Math.max(0L, (this.scroll - this.roundOffset) + jMin) / this.roundDuration);
                            if (f22 > 0.0f) {
                                fMax3 = Math.min(fMin6 - this.roundRight, f22);
                            } else {
                                fMax3 = Math.max(fMax10 - this.roundLeft, f22);
                            }
                            float f28 = this.roundLeft + fMax3;
                            this.roundLeft = f28;
                            this.roundRight += fMax3;
                            TimelineDelegate timelineDelegate18 = this.delegate;
                            if (timelineDelegate18 != null) {
                                timelineDelegate18.onRoundLeftChange(f28);
                                this.delegate.onRoundOffsetChange(this.roundOffset + ((long) (this.roundLeft * this.roundDuration)));
                                this.delegate.onRoundRightChange(this.roundRight);
                            }
                            TimelineDelegate timelineDelegate19 = this.delegate;
                            if (timelineDelegate19 != null) {
                                timelineDelegate19.onProgressDragChange(true);
                            }
                        }
                        if (this.videoTrack == null) {
                            this.progress = (long) (this.roundLeft * this.roundDuration);
                            TimelineDelegate timelineDelegate20 = this.delegate;
                            if (timelineDelegate20 != null) {
                                timelineDelegate20.onProgressDragChange(true);
                                this.delegate.onProgressChange(this.progress, false);
                            }
                        }
                        invalidate();
                        if (!this.dragged) {
                            this.dragSpeed = 1.0f;
                        }
                        this.dragged = true;
                        this.draggingProgress = false;
                    } else {
                        int i6 = this.pressHandleCollageIndex;
                        if (i6 >= 0 && i6 < this.collageTracks.size() && ((i = this.pressHandle) == 13 || i == 14 || i == 15)) {
                            Track track16 = (Track) this.collageTracks.get(this.pressHandleCollageIndex);
                            float f29 = (x / this.f2239sw) * (jMin / track16.duration);
                            int i7 = this.pressHandle;
                            if (i7 == 13) {
                                float fMinAudioSelect5 = track16.right - (minAudioSelect() / track16.duration);
                                float fMax11 = Math.max(0L, this.scroll - track16.offset) / track16.duration;
                                if (track16 == this.collageMain) {
                                    fMax11 = Math.max(fMax11, track16.right - (maxSelectDuration() / track16.duration));
                                    if (!this.hadDragChange && f29 < 0.0f && track16.left <= track16.right - (maxSelectDuration() / track16.duration)) {
                                        this.pressHandle = 15;
                                    }
                                }
                                float f30 = track16.left;
                                float fClamp5 = Utilities.clamp(f30 + f29, fMinAudioSelect5, fMax11);
                                track16.left = fClamp5;
                                if (Math.abs(f30 - fClamp5) > 0.01f) {
                                    this.hadDragChange = true;
                                }
                                TimelineDelegate timelineDelegate21 = this.delegate;
                                if (timelineDelegate21 != null) {
                                    timelineDelegate21.onVideoOffsetChange(track16.index, track16.offset);
                                }
                                TimelineDelegate timelineDelegate22 = this.delegate;
                                if (timelineDelegate22 != null) {
                                    timelineDelegate22.onVideoLeftChange(track16.index, track16.left);
                                }
                            } else if (i7 == 14) {
                                float fMin7 = Math.min(1.0f, Math.max(0L, (this.scroll - track16.offset) + jMin) / track16.duration);
                                float fMinAudioSelect6 = track16.left + (minAudioSelect() / track16.duration);
                                if (track16 == this.collageMain) {
                                    fMin7 = Math.min(fMin7, track16.left + (maxSelectDuration() / track16.duration));
                                    if (!this.hadDragChange && f29 > 0.0f && track16.right >= track16.left + (maxSelectDuration() / track16.duration)) {
                                        this.pressHandle = 15;
                                    }
                                }
                                float f31 = track16.right;
                                float fClamp6 = Utilities.clamp(f31 + f29, fMin7, fMinAudioSelect6);
                                track16.right = fClamp6;
                                if (Math.abs(f31 - fClamp6) > 0.01f) {
                                    this.hadDragChange = true;
                                }
                                TimelineDelegate timelineDelegate23 = this.delegate;
                                if (timelineDelegate23 != null) {
                                    timelineDelegate23.onVideoRightChange(track16.index, track16.right);
                                }
                            }
                            if (this.pressHandle == 15) {
                                float fMax12 = Math.max(0L, this.scroll - track16.offset) / track16.duration;
                                float fMin8 = Math.min(1.0f, Math.max(0L, (this.scroll - track16.offset) + jMin) / track16.duration);
                                if (f29 > 0.0f) {
                                    fMax5 = Math.min(fMin8 - track16.right, f29);
                                } else {
                                    fMax5 = Math.max(fMax12 - track16.left, f29);
                                }
                                float f32 = track16.left + fMax5;
                                track16.left = f32;
                                track16.right += fMax5;
                                TimelineDelegate timelineDelegate24 = this.delegate;
                                if (timelineDelegate24 != null) {
                                    timelineDelegate24.onVideoLeftChange(track16.index, f32);
                                    this.delegate.onVideoOffsetChange(track16.index, track16.offset);
                                    this.delegate.onVideoRightChange(track16.index, track16.right);
                                }
                                TimelineDelegate timelineDelegate25 = this.delegate;
                                if (timelineDelegate25 != null) {
                                    z5 = true;
                                    timelineDelegate25.onProgressDragChange(true);
                                } else {
                                    z5 = true;
                                }
                                invalidate();
                                if (!this.dragged) {
                                    this.dragSpeed = 1.0f;
                                }
                                this.dragged = z5;
                                this.draggingProgress = false;
                            }
                        } else {
                            int i8 = this.pressHandle;
                            if (i8 == 5) {
                                moveAudioOffset((x / this.f2239sw) * jMin);
                                if (!this.dragged) {
                                    this.dragSpeed = 1.0f;
                                }
                                this.dragged = true;
                                this.draggingProgress = false;
                            } else if (i8 == 9) {
                                moveRoundOffset((x / this.f2239sw) * jMin);
                                if (!this.dragged) {
                                    this.dragSpeed = 1.0f;
                                }
                                this.dragged = true;
                                this.draggingProgress = false;
                            } else {
                                int i9 = this.pressHandleCollageIndex;
                                if (i9 >= 0 && i9 < this.collageTracks.size() && this.pressHandle == 16) {
                                    moveCollageOffset((Track) this.collageTracks.get(this.pressHandleCollageIndex), (x / this.f2239sw) * jMin);
                                    if (!this.dragged) {
                                        this.dragSpeed = 1.0f;
                                    }
                                    this.dragged = true;
                                    this.draggingProgress = false;
                                } else if (this.draggingProgress) {
                                    setProgressAt(motionEvent.getX(), jCurrentTimeMillis - this.lastTime < 350);
                                    if (this.dragged || (timelineDelegate2 = this.delegate) == null) {
                                        z4 = true;
                                    } else {
                                        z4 = true;
                                        timelineDelegate2.onProgressDragChange(true);
                                    }
                                    if (!this.dragged) {
                                        this.dragSpeed = 1.0f;
                                    }
                                    this.dragged = z4;
                                }
                            }
                        }
                    }
                }
                this.lastX = motionEvent.getX();
            }
            if (this.dragged) {
                AndroidUtilities.cancelRunOnUIThread(this.onLongPress);
            }
            int i10 = this.pressHandle;
            if ((i10 == 1 || i10 == 5 || i10 == 8) && (velocityTracker6 = this.velocityTracker) != null) {
                velocityTracker6.addMovement(motionEvent);
            }
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            AndroidUtilities.cancelRunOnUIThread(this.onLongPress);
            this.scroller.abortAnimation();
            if (motionEvent.getAction() != 1) {
                z = true;
                runnable = this.askExactSeek;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                    this.askExactSeek = null;
                }
                if (this.dragged && z && (timelineDelegate = this.delegate) != null) {
                    timelineDelegate.onProgressDragChange(false);
                }
                this.dragSpeed = 1.0f;
                this.dragged = false;
                this.draggingProgress = false;
                this.pressTime = -1L;
                this.pressHandle = -1;
                velocityTracker = this.velocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.velocityTracker = null;
                }
            } else {
                if ((System.currentTimeMillis() - this.pressTime <= ViewConfiguration.getTapTimeout() && !this.dragged) || !this.open) {
                    if (!this.open) {
                        if (this.pressType == 10 && (runnable2 = this.onTimelineClick) != null) {
                            runnable2.run();
                        }
                    } else if (this.isCover && this.videoTrack != null) {
                        long jClamp = (long) Utilities.clamp(((((motionEvent.getX() - this.f2237px) - this.f2236ph) / this.f2239sw) * Math.min(getBaseDuration(), getMaxScrollDuration())) + this.scroll, getBaseDuration(), 0.0f);
                        Track track17 = this.videoTrack;
                        float f33 = track17.right - track17.left;
                        track17.left = (jClamp / getBaseDuration()) * (1.0f - f33);
                        Track track18 = this.videoTrack;
                        float f34 = track18.left;
                        track18.right = f33 + f34;
                        TimelineDelegate timelineDelegate26 = this.delegate;
                        if (timelineDelegate26 != null) {
                            timelineDelegate26.onVideoLeftChange(true, f34);
                            this.delegate.onVideoRightChange(true, this.videoTrack.right);
                        }
                        invalidate();
                    } else {
                        int i11 = this.pressType;
                        if (i11 == 3) {
                            int i12 = (this.audioSelected || this.roundSelected) ? -1 : this.collageSelected;
                            int i13 = this.pressCollageIndex;
                            if (i12 != i13) {
                                this.audioSelected = false;
                                this.roundSelected = false;
                                this.collageSelected = i13;
                                if (this.delegate != null && i13 >= 0 && i13 < this.collageTracks.size()) {
                                    this.delegate.onVideoSelected(((Track) this.collageTracks.get(this.pressCollageIndex)).index);
                                }
                                invalidate();
                            }
                        } else if (i11 == 2 && !this.audioSelected) {
                            this.audioSelected = true;
                            this.roundSelected = false;
                            TimelineDelegate timelineDelegate27 = this.delegate;
                            if (timelineDelegate27 != null) {
                                timelineDelegate27.onRoundSelectChange(false);
                            }
                            invalidate();
                        } else if (i11 == 1 && !this.roundSelected) {
                            this.audioSelected = false;
                            this.roundSelected = true;
                            TimelineDelegate timelineDelegate28 = this.delegate;
                            if (timelineDelegate28 != null) {
                                timelineDelegate28.onRoundSelectChange(true);
                            }
                            invalidate();
                        } else if (i11 != 2 && this.audioSelected) {
                            this.audioSelected = false;
                            this.roundSelected = false;
                            TimelineDelegate timelineDelegate29 = this.delegate;
                            if (timelineDelegate29 != null) {
                                timelineDelegate29.onRoundSelectChange(false);
                            }
                            invalidate();
                        } else if (i11 != 1 && this.roundSelected) {
                            this.audioSelected = false;
                            this.roundSelected = false;
                            TimelineDelegate timelineDelegate30 = this.delegate;
                            if (timelineDelegate30 != null) {
                                timelineDelegate30.onRoundSelectChange(false);
                            }
                            invalidate();
                        } else {
                            long j13 = this.progress;
                            if (setProgressAt(motionEvent.getX(), false) && Math.abs(this.progress - j13) > 400) {
                                this.loopProgressFrom = j13;
                                this.loopProgress.set(1.0f, true);
                                invalidate();
                            }
                        }
                    }
                } else {
                    int i14 = this.pressHandle;
                    int i15 = MediaDataController.MAX_STYLE_RUNS_COUNT;
                    if (i14 == 16 && (velocityTracker5 = this.velocityTracker) != null) {
                        velocityTracker5.computeCurrentVelocity(MediaDataController.MAX_STYLE_RUNS_COUNT);
                        int xVelocity = (int) this.velocityTracker.getXVelocity();
                        this.scrollingVideo = true;
                        if (this.videoTrack != null && Math.abs(xVelocity) > AndroidUtilities.m1124dp(100.0f)) {
                            long jMin2 = Math.min(this.videoTrack.duration, getMaxScrollDuration());
                            int i16 = this.f2237px;
                            float f35 = jMin2;
                            int i17 = this.f2239sw;
                            int i18 = (int) (i16 + ((this.scroll / f35) * i17));
                            this.scrolling = true;
                            Scroller scroller = this.scroller;
                            this.wasScrollX = i18;
                            scroller.fling(i18, 0, -xVelocity, 0, i16, (int) (i16 + (((this.videoTrack.duration - jMin2) / f35) * i17)), 0, 0);
                            z3 = false;
                        }
                        z3 = true;
                    } else if (i14 == 1 && (velocityTracker4 = this.velocityTracker) != null) {
                        velocityTracker4.computeCurrentVelocity(MediaDataController.MAX_STYLE_RUNS_COUNT);
                        int xVelocity2 = (int) this.velocityTracker.getXVelocity();
                        this.scrollingVideo = true;
                        if (this.videoTrack != null && Math.abs(xVelocity2) > AndroidUtilities.m1124dp(100.0f)) {
                            long jMin3 = Math.min(this.videoTrack.duration, getMaxScrollDuration());
                            int i19 = this.f2237px;
                            float f36 = jMin3;
                            int i20 = this.f2239sw;
                            int i21 = (int) (i19 + ((this.scroll / f36) * i20));
                            this.scrolling = true;
                            Scroller scroller2 = this.scroller;
                            this.wasScrollX = i21;
                            scroller2.fling(i21, 0, -xVelocity2, 0, i19, (int) (i19 + (((this.videoTrack.duration - jMin3) / f36) * i20)), 0, 0);
                            z3 = false;
                        }
                        z3 = true;
                    } else if ((i14 == 5 || (i14 == 8 && !this.dragged)) && this.audioSelected && (velocityTracker2 = this.velocityTracker) != null) {
                        if (this.videoTrack == null) {
                            i15 = 1500;
                        }
                        velocityTracker2.computeCurrentVelocity(i15);
                        int xVelocity3 = (int) this.velocityTracker.getXVelocity();
                        this.scrollingVideo = false;
                        if (Math.abs(xVelocity3) > AndroidUtilities.m1124dp(100.0f)) {
                            float fMin9 = Math.min(getBaseDuration(), getMaxScrollDuration());
                            int i22 = (int) (this.f2237px + this.f2236ph + ((this.audioOffset / fMin9) * this.f2239sw));
                            Track track19 = this.videoTrack;
                            if (track19 != null) {
                                float f37 = track19.right;
                                long j14 = track19.duration;
                                j2 = (long) ((f37 * j14) - 0);
                                j = (long) ((track19.left * j14) - this.audioDuration);
                            } else if (this.hasRound) {
                                float f38 = this.roundRight;
                                long j15 = this.roundDuration;
                                j2 = (long) ((f38 * j15) - 0);
                                j = (long) ((this.roundLeft * j15) - this.audioDuration);
                            } else {
                                j = -(this.audioDuration - Math.min(getBaseDuration(), getMaxScrollDuration()));
                                z2 = true;
                                j2 = 0;
                                this.scrolling = z2;
                                Scroller scroller3 = this.scroller;
                                this.wasScrollX = i22;
                                int i23 = this.f2237px;
                                int i24 = this.f2236ph;
                                int i25 = this.f2239sw;
                                scroller3.fling(i22, 0, xVelocity3, 0, (int) (i23 + i24 + ((j / fMin9) * i25)), (int) (i23 + i24 + ((j2 / fMin9) * i25)), 0, 0);
                                z3 = false;
                            }
                            z2 = true;
                            this.scrolling = z2;
                            Scroller scroller32 = this.scroller;
                            this.wasScrollX = i22;
                            int i232 = this.f2237px;
                            int i242 = this.f2236ph;
                            int i252 = this.f2239sw;
                            scroller32.fling(i22, 0, xVelocity3, 0, (int) (i232 + i242 + ((j / fMin9) * i252)), (int) (i232 + i242 + ((j2 / fMin9) * i252)), 0, 0);
                            z3 = false;
                        }
                        z3 = true;
                    } else if ((i14 == 9 || (i14 == 12 && !this.dragged)) && this.roundSelected && (velocityTracker3 = this.velocityTracker) != null) {
                        if (this.videoTrack == null) {
                            i15 = 1500;
                        }
                        velocityTracker3.computeCurrentVelocity(i15);
                        int xVelocity4 = (int) this.velocityTracker.getXVelocity();
                        this.scrollingVideo = false;
                        if (Math.abs(xVelocity4) > AndroidUtilities.m1124dp(100.0f)) {
                            float fMin10 = Math.min(getBaseDuration(), getMaxScrollDuration());
                            int i26 = (int) (this.f2237px + this.f2236ph + ((this.roundOffset / fMin10) * this.f2239sw));
                            Track track20 = this.videoTrack;
                            if (track20 != null) {
                                float f39 = track20.right;
                                long j16 = track20.duration;
                                j3 = (long) ((f39 * j16) - 0);
                                j4 = (long) ((track20.left * j16) - this.roundDuration);
                            } else {
                                j3 = 0;
                                j4 = -(this.roundDuration - Math.min(getBaseDuration(), getMaxScrollDuration()));
                            }
                            this.scrolling = true;
                            Scroller scroller4 = this.scroller;
                            this.wasScrollX = i26;
                            int i27 = this.f2237px;
                            int i28 = this.f2236ph;
                            int i29 = this.f2239sw;
                            scroller4.fling(i26, 0, xVelocity4, 0, (int) (i27 + i28 + ((j4 / fMin10) * i29)), (int) (i27 + i28 + ((j3 / fMin10) * i29)), 0, 0);
                            z = false;
                        }
                        runnable = this.askExactSeek;
                        if (runnable != null) {
                        }
                        if (this.dragged) {
                            timelineDelegate.onProgressDragChange(false);
                        }
                        this.dragSpeed = 1.0f;
                        this.dragged = false;
                        this.draggingProgress = false;
                        this.pressTime = -1L;
                        this.pressHandle = -1;
                        velocityTracker = this.velocityTracker;
                        if (velocityTracker != null) {
                        }
                    }
                    z = z3;
                    runnable = this.askExactSeek;
                    if (runnable != null) {
                    }
                    if (this.dragged) {
                    }
                    this.dragSpeed = 1.0f;
                    this.dragged = false;
                    this.draggingProgress = false;
                    this.pressTime = -1L;
                    this.pressHandle = -1;
                    velocityTracker = this.velocityTracker;
                    if (velocityTracker != null) {
                    }
                }
                z = true;
                runnable = this.askExactSeek;
                if (runnable != null) {
                }
                if (this.dragged) {
                }
                this.dragSpeed = 1.0f;
                this.dragged = false;
                this.draggingProgress = false;
                this.pressTime = -1L;
                this.pressHandle = -1;
                velocityTracker = this.velocityTracker;
                if (velocityTracker != null) {
                }
            }
        }
        this.lastTime = System.currentTimeMillis();
        return true;
    }

    private long minAudioSelect() {
        return (long) Math.max(1000.0f, Math.min(getBaseDuration(), 59000L) * 0.15f);
    }

    private void moveAudioOffset(float f) {
        float f2;
        long j;
        float f3;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        TimelineDelegate timelineDelegate;
        long jClamp;
        Track track = this.videoTrack;
        if (track == null && !this.hasRound) {
            long j7 = this.audioOffset;
            long jClamp2 = Utilities.clamp(j7 + ((long) f), 0L, -(this.audioDuration - Math.min(getBaseDuration(), getMaxScrollDuration())));
            this.audioOffset = jClamp2;
            float f4 = jClamp2 - j7;
            this.audioLeft = Utilities.clamp(this.audioLeft - (f4 / this.audioDuration), 1.0f, 0.0f);
            this.audioRight = Utilities.clamp(this.audioRight - (f4 / this.audioDuration), 1.0f, 0.0f);
            TimelineDelegate timelineDelegate2 = this.delegate;
            if (timelineDelegate2 != null) {
                timelineDelegate2.onAudioLeftChange(this.audioLeft);
                this.delegate.onAudioRightChange(this.audioRight);
            }
        } else if (this.audioSelected) {
            if (track != null) {
                f2 = track.left;
                j = track.duration;
            } else {
                f2 = this.roundLeft;
                j = this.roundDuration;
            }
            float f5 = f2 * j;
            if (track != null) {
                f3 = track.right;
                j2 = track.duration;
            } else {
                f3 = this.roundRight;
                j2 = this.roundDuration;
            }
            float f6 = f3 * j2;
            float f7 = track != null ? (track.right - track.left) * track.duration : this.roundDuration * (this.roundRight - this.roundLeft);
            float f8 = this.audioRight;
            long j8 = this.audioDuration;
            long j9 = (long) (f6 - (j8 * f8));
            float f9 = this.audioLeft;
            long j10 = (long) (f5 - (j8 * f9));
            float fMin = Math.min(f8 - f9, f7 / j8);
            long j11 = this.audioOffset;
            long j12 = (long) f;
            if (j11 + j12 > j9) {
                float fClamp = Utilities.clamp(((f6 - j11) - j12) / this.audioDuration, 1.0f, fMin);
                this.audioRight = fClamp;
                float fClamp2 = Utilities.clamp(fClamp - fMin, 1.0f, 0.0f);
                this.audioLeft = fClamp2;
                float f10 = this.audioRight;
                long j13 = this.audioDuration;
                long j14 = (long) (f6 - (f10 * j13));
                long j15 = (long) (f5 - (fClamp2 * j13));
                if (j14 < j15) {
                    j6 = j15;
                    j5 = j14;
                } else {
                    j5 = j15;
                    j6 = j14;
                }
                this.audioOffset = Utilities.clamp(this.audioOffset + j12, j6, j5);
                TimelineDelegate timelineDelegate3 = this.delegate;
                if (timelineDelegate3 != null) {
                    timelineDelegate3.onAudioLeftChange(this.audioLeft);
                    this.delegate.onAudioRightChange(this.audioRight);
                }
            } else if (j11 + j12 < j10) {
                float fClamp3 = Utilities.clamp(((f5 - j11) - j12) / this.audioDuration, 1.0f - fMin, 0.0f);
                this.audioLeft = fClamp3;
                float fClamp4 = Utilities.clamp(fClamp3 + fMin, 1.0f, 0.0f);
                this.audioRight = fClamp4;
                long j16 = this.audioDuration;
                long j17 = (long) (f6 - (fClamp4 * j16));
                long j18 = (long) (f5 - (this.audioLeft * j16));
                if (j17 < j18) {
                    j4 = j17;
                    j3 = j18;
                } else {
                    j3 = j17;
                    j4 = j18;
                }
                this.audioOffset = Utilities.clamp(this.audioOffset + j12, j3, j4);
                TimelineDelegate timelineDelegate4 = this.delegate;
                if (timelineDelegate4 != null) {
                    timelineDelegate4.onAudioLeftChange(this.audioLeft);
                    this.delegate.onAudioRightChange(this.audioRight);
                }
            } else {
                this.audioOffset = j11 + j12;
            }
        } else {
            long j19 = this.audioOffset + ((long) f);
            float baseDuration = getBaseDuration();
            long j20 = this.audioDuration;
            this.audioOffset = Utilities.clamp(j19, (long) (baseDuration - (j20 * this.audioRight)), (long) ((-this.audioLeft) * j20));
        }
        invalidate();
        TimelineDelegate timelineDelegate5 = this.delegate;
        if (timelineDelegate5 != null) {
            timelineDelegate5.onAudioOffsetChange(this.audioOffset + ((long) (this.audioLeft * this.audioDuration)));
        }
        boolean z = this.dragged;
        if (!z && (timelineDelegate = this.delegate) != null) {
            timelineDelegate.onProgressDragChange(true);
            Track track2 = this.videoTrack;
            if (track2 != null) {
                long j21 = this.audioOffset + ((long) (this.audioLeft * this.audioDuration));
                float f11 = track2.right;
                long j22 = track2.duration;
                jClamp = Utilities.clamp(j21, (long) (f11 * j22), (long) (track2.left * j22));
            } else if (this.hasRound) {
                long j23 = this.audioOffset + ((long) (this.audioLeft * this.audioDuration));
                float f12 = this.roundRight;
                long j24 = this.roundDuration;
                jClamp = Utilities.clamp(j23, (long) (f12 * j24), (long) (this.roundLeft * j24));
            } else {
                float f13 = this.audioLeft;
                long j25 = this.audioDuration;
                jClamp = Utilities.clamp((long) (f13 * j25), j25, 0L);
            }
            if (this.videoTrack != null && Math.abs(this.progress - jClamp) > 400) {
                this.loopProgressFrom = this.progress;
                this.loopProgress.set(1.0f, true);
            }
            TimelineDelegate timelineDelegate6 = this.delegate;
            this.progress = jClamp;
            timelineDelegate6.onProgressChange(jClamp, false);
            return;
        }
        if (z || this.scrolling) {
            Track track3 = this.videoTrack;
            if (track3 != null) {
                long j26 = this.audioOffset + ((long) (this.audioLeft * this.audioDuration));
                float f14 = track3.right;
                long j27 = track3.duration;
                this.progress = Utilities.clamp(j26, (long) (f14 * j27), (long) (track3.left * j27));
            } else if (this.hasRound && track3 != null) {
                long j28 = this.audioOffset + ((long) (this.audioLeft * this.audioDuration));
                float f15 = this.roundRight;
                long j29 = track3.duration;
                this.progress = Utilities.clamp(j28, (long) (f15 * j29), (long) (this.roundLeft * j29));
            } else {
                float f16 = this.audioLeft;
                long j30 = this.audioDuration;
                this.progress = Utilities.clamp((long) (f16 * j30), j30, 0L);
            }
            TimelineDelegate timelineDelegate7 = this.delegate;
            if (timelineDelegate7 != null) {
                timelineDelegate7.onProgressChange(this.progress, false);
            }
        }
    }

    private void moveRoundOffset(float f) {
        long j;
        long j2;
        long j3;
        long j4;
        TimelineDelegate timelineDelegate;
        long jClamp;
        Track track = this.videoTrack;
        if (track == null) {
            long j5 = this.roundOffset;
            long jClamp2 = Utilities.clamp(j5 + ((long) f), 0L, -(this.roundDuration - Math.min(getBaseDuration(), getMaxScrollDuration())));
            this.roundOffset = jClamp2;
            float f2 = jClamp2 - j5;
            this.roundLeft = Utilities.clamp(this.roundLeft - (f2 / this.roundDuration), 1.0f, 0.0f);
            this.roundRight = Utilities.clamp(this.roundRight - (f2 / this.roundDuration), 1.0f, 0.0f);
            TimelineDelegate timelineDelegate2 = this.delegate;
            if (timelineDelegate2 != null) {
                timelineDelegate2.onRoundLeftChange(this.roundLeft);
                this.delegate.onRoundRightChange(this.roundRight);
            }
        } else if (this.roundSelected) {
            float f3 = track.right;
            long j6 = track.duration;
            float f4 = this.roundRight;
            long j7 = this.roundDuration;
            long j8 = (long) ((j6 * f3) - (j7 * f4));
            float f5 = track.left;
            float f6 = this.roundLeft;
            long j9 = (long) ((j6 * f5) - (j7 * f6));
            float fMin = Math.min(f4 - f6, ((f3 - f5) * j6) / j7);
            long j10 = this.roundOffset;
            long j11 = (long) f;
            if (j10 + j11 > j8) {
                float fClamp = Utilities.clamp((((this.videoTrack.right * r1.duration) - j10) - j11) / this.roundDuration, 1.0f, fMin);
                this.roundRight = fClamp;
                float fClamp2 = Utilities.clamp(fClamp - fMin, 1.0f, 0.0f);
                this.roundLeft = fClamp2;
                Track track2 = this.videoTrack;
                float f7 = track2.right;
                long j12 = track2.duration;
                float f8 = this.roundRight;
                long j13 = this.roundDuration;
                long j14 = (long) ((f7 * j12) - (f8 * j13));
                long j15 = (long) ((track2.left * j12) - (fClamp2 * j13));
                if (j14 < j15) {
                    j4 = j15;
                    j3 = j14;
                } else {
                    j3 = j15;
                    j4 = j14;
                }
                this.roundOffset = Utilities.clamp(this.roundOffset + j11, j4, j3);
                TimelineDelegate timelineDelegate3 = this.delegate;
                if (timelineDelegate3 != null) {
                    timelineDelegate3.onRoundLeftChange(this.roundLeft);
                    this.delegate.onRoundRightChange(this.roundRight);
                }
            } else if (j10 + j11 < j9) {
                float fClamp3 = Utilities.clamp((((this.videoTrack.left * r1.duration) - j10) - j11) / this.roundDuration, 1.0f - fMin, 0.0f);
                this.roundLeft = fClamp3;
                float fClamp4 = Utilities.clamp(fClamp3 + fMin, 1.0f, 0.0f);
                this.roundRight = fClamp4;
                Track track3 = this.videoTrack;
                float f9 = track3.right;
                long j16 = track3.duration;
                long j17 = this.roundDuration;
                long j18 = (long) ((f9 * j16) - (fClamp4 * j17));
                long j19 = (long) ((track3.left * j16) - (this.roundLeft * j17));
                if (j18 < j19) {
                    j2 = j19;
                    j = j18;
                } else {
                    j = j19;
                    j2 = j18;
                }
                this.roundOffset = Utilities.clamp(this.roundOffset + j11, j2, j);
                TimelineDelegate timelineDelegate4 = this.delegate;
                if (timelineDelegate4 != null) {
                    timelineDelegate4.onRoundLeftChange(this.roundLeft);
                    this.delegate.onRoundRightChange(this.roundRight);
                }
            } else {
                this.roundOffset = j10 + j11;
            }
        } else {
            long j20 = this.roundOffset + ((long) f);
            float baseDuration = getBaseDuration();
            long j21 = this.roundDuration;
            this.roundOffset = Utilities.clamp(j20, (long) (baseDuration - (j21 * this.roundRight)), (long) ((-this.roundLeft) * j21));
        }
        invalidate();
        TimelineDelegate timelineDelegate5 = this.delegate;
        if (timelineDelegate5 != null) {
            timelineDelegate5.onRoundOffsetChange(this.roundOffset + ((long) (this.roundLeft * this.roundDuration)));
        }
        boolean z = this.dragged;
        if (!z && (timelineDelegate = this.delegate) != null) {
            timelineDelegate.onProgressDragChange(true);
            Track track4 = this.videoTrack;
            if (track4 != null) {
                long j22 = this.roundOffset + ((long) (this.roundLeft * this.roundDuration));
                float f10 = track4.right;
                long j23 = track4.duration;
                jClamp = Utilities.clamp(j22, (long) (f10 * j23), (long) (track4.left * j23));
            } else {
                float f11 = this.roundLeft;
                long j24 = this.roundDuration;
                jClamp = Utilities.clamp((long) (f11 * j24), j24, 0L);
            }
            if (this.videoTrack != null && Math.abs(this.progress - jClamp) > 400) {
                this.loopProgressFrom = this.progress;
                this.loopProgress.set(1.0f, true);
            }
            TimelineDelegate timelineDelegate6 = this.delegate;
            this.progress = jClamp;
            timelineDelegate6.onProgressChange(jClamp, false);
            return;
        }
        if (z || this.scrolling) {
            Track track5 = this.videoTrack;
            if (track5 != null) {
                long j25 = this.roundOffset + ((long) (this.roundLeft * this.roundDuration));
                float f12 = track5.right;
                long j26 = track5.duration;
                this.progress = Utilities.clamp(j25, (long) (f12 * j26), (long) (track5.left * j26));
            } else {
                float f13 = this.roundLeft;
                long j27 = this.roundDuration;
                this.progress = Utilities.clamp((long) (f13 * j27), j27, 0L);
            }
            TimelineDelegate timelineDelegate7 = this.delegate;
            if (timelineDelegate7 != null) {
                timelineDelegate7.onProgressChange(this.progress, false);
            }
        }
    }

    private void moveCollageOffset(Track track, float f) {
        TimelineDelegate timelineDelegate;
        long jClamp;
        long j;
        long j2;
        long j3;
        long j4;
        if (track == null) {
            return;
        }
        Track track2 = this.collageMain;
        if (track2 != track && track2 != null) {
            if (this.collageSelected == this.collageTracks.indexOf(track)) {
                Track track3 = this.collageMain;
                long j5 = track3.duration;
                float f2 = track.right;
                long j6 = track.duration;
                long j7 = (long) ((j5 * 1.0f) - (j6 * f2));
                float f3 = track.left;
                long j8 = (long) ((j5 * 0.0f) - (j6 * f3));
                float fMin = Math.min(f2 - f3, ((track3.right - track3.left) * j5) / j6);
                long j9 = track.offset;
                long j10 = (long) f;
                if (j9 + j10 > j7) {
                    float fClamp = Utilities.clamp((((this.collageMain.right * r2.duration) - j9) - j10) / track.duration, 1.0f, fMin);
                    track.right = fClamp;
                    float fClamp2 = Utilities.clamp(fClamp - fMin, 1.0f, 0.0f);
                    track.left = fClamp2;
                    Track track4 = this.collageMain;
                    float f4 = track4.right;
                    long j11 = track4.duration;
                    float f5 = track.right;
                    long j12 = track.duration;
                    long j13 = (long) ((f4 * j11) - (f5 * j12));
                    long j14 = (long) ((track4.left * j11) - (fClamp2 * j12));
                    if (j13 < j14) {
                        j4 = j14;
                        j3 = j13;
                    } else {
                        j3 = j14;
                        j4 = j13;
                    }
                    track.offset = Utilities.clamp(track.offset + j10, j4, j3);
                    TimelineDelegate timelineDelegate2 = this.delegate;
                    if (timelineDelegate2 != null) {
                        timelineDelegate2.onVideoLeftChange(track.index, track.left);
                        this.delegate.onVideoRightChange(track.index, track.right);
                    }
                } else if (j9 + j10 < j8) {
                    float fClamp3 = Utilities.clamp((((this.collageMain.left * r2.duration) - j9) - j10) / track.duration, 1.0f - fMin, 0.0f);
                    track.left = fClamp3;
                    float fClamp4 = Utilities.clamp(fClamp3 + fMin, 1.0f, 0.0f);
                    track.right = fClamp4;
                    Track track5 = this.collageMain;
                    float f6 = track5.right;
                    long j15 = track5.duration;
                    long j16 = track.duration;
                    long j17 = (long) ((f6 * j15) - (fClamp4 * j16));
                    long j18 = (long) ((track5.left * j15) - (track.left * j16));
                    if (j17 < j18) {
                        j2 = j18;
                        j = j17;
                    } else {
                        j = j18;
                        j2 = j17;
                    }
                    track.offset = Utilities.clamp(track.offset + j10, j2, j);
                    TimelineDelegate timelineDelegate3 = this.delegate;
                    if (timelineDelegate3 != null) {
                        timelineDelegate3.onVideoLeftChange(track.index, track.left);
                        this.delegate.onVideoRightChange(track.index, track.right);
                    }
                } else {
                    track.offset = j9 + j10;
                }
            } else {
                long j19 = track.offset + ((long) f);
                float baseDuration = getBaseDuration();
                long j20 = track.duration;
                track.offset = Utilities.clamp(j19, (long) (baseDuration - (j20 * track.right)), (long) ((-track.left) * j20));
            }
        }
        invalidate();
        TimelineDelegate timelineDelegate4 = this.delegate;
        if (timelineDelegate4 != null) {
            timelineDelegate4.onVideoOffsetChange(track.index, track.offset);
        }
        boolean z = this.dragged;
        if (!z && (timelineDelegate = this.delegate) != null) {
            timelineDelegate.onProgressDragChange(true);
            Track track6 = this.collageMain;
            if (track6 != track && track6 != null) {
                long j21 = track.offset + ((long) (track.left * track.duration));
                float f7 = track6.right;
                long j22 = track6.duration;
                jClamp = Utilities.clamp(j21, (long) (f7 * j22), (long) (track6.left * j22));
            } else {
                float f8 = track.left;
                long j23 = track.duration;
                jClamp = Utilities.clamp((long) (f8 * j23), j23, 0L);
            }
            Track track7 = this.collageMain;
            if (track7 != track && track7 != null && Math.abs(this.progress - jClamp) > 400) {
                this.loopProgressFrom = this.progress;
                this.loopProgress.set(1.0f, true);
            }
            TimelineDelegate timelineDelegate5 = this.delegate;
            this.progress = jClamp;
            timelineDelegate5.onProgressChange(jClamp, false);
            return;
        }
        if (z || this.scrolling) {
            Track track8 = this.collageMain;
            if (track8 != track && track8 != null) {
                long j24 = track.offset + ((long) (track.left * track.duration));
                float f9 = track8.right;
                long j25 = track8.duration;
                this.progress = Utilities.clamp(j24, (long) (f9 * j25), (long) (track8.left * j25));
            } else {
                float f10 = track.left;
                long j26 = track.duration;
                this.progress = Utilities.clamp((long) (f10 * j26), j26, 0L);
            }
            TimelineDelegate timelineDelegate6 = this.delegate;
            if (timelineDelegate6 != null) {
                timelineDelegate6.onProgressChange(this.progress, false);
            }
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.scroller.computeScrollOffset()) {
            int currX = this.scroller.getCurrX();
            long jMin = Math.min(getBaseDuration(), getMaxScrollDuration());
            if (this.scrollingVideo) {
                this.scroll = (long) Math.max(0.0f, (((currX - this.f2237px) - this.f2236ph) / this.f2239sw) * jMin);
            } else {
                if (!this.audioSelected) {
                    this.scroller.abortAnimation();
                    return;
                }
                int i = this.f2237px;
                int i2 = this.f2236ph;
                int i3 = this.f2239sw;
                float f = jMin;
                moveAudioOffset(((((currX - i) - i2) / i3) * f) - ((((this.wasScrollX - i) - i2) / i3) * f));
            }
            invalidate();
            this.wasScrollX = currX;
            return;
        }
        if (this.scrolling) {
            this.scrolling = false;
            TimelineDelegate timelineDelegate = this.delegate;
            if (timelineDelegate != null) {
                timelineDelegate.onProgressDragChange(false);
            }
        }
    }

    static class WaveformPath extends Path {
        private float lastAudioHeight;
        private float lastAudioSelected;
        private float lastBottom;
        private float lastLeft;
        private float lastMaxBar;
        private float lastRight;
        private long lastScrollDuration;
        private float lastStart;
        private ArrayList lastWaveformCounts;
        private ArrayList lastWaveformLoaded;

        /* JADX INFO: renamed from: ph */
        private final int f2241ph = AndroidUtilities.m1124dp(10.0f);
        private final float[] waveformRadii;

        WaveformPath() {
            this.waveformRadii = new float[]{fM1124dp, fM1124dp, fM1124dp, fM1124dp, 0.0f, 0.0f, 0.0f, 0.0f};
            float fM1124dp = AndroidUtilities.m1124dp(2.0f);
        }

        private boolean eqCount(ArrayList arrayList, ArrayList arrayList2) {
            if (arrayList == null && arrayList2 == null) {
                return true;
            }
            if (arrayList == null || arrayList2 == null || arrayList.size() != arrayList2.size()) {
                return false;
            }
            for (int i = 0; i < arrayList.size(); i++) {
                if (((Integer) arrayList.get(i)).intValue() != (arrayList2.get(i) == null ? 0 : ((AudioWaveformLoader) arrayList2.get(i)).getCount())) {
                    return false;
                }
            }
            return true;
        }

        private boolean eqLoadedCounts(ArrayList arrayList, ArrayList arrayList2) {
            if (arrayList == null && arrayList2 == null) {
                return true;
            }
            if (arrayList == null || arrayList2 == null || arrayList.size() != arrayList2.size()) {
                return false;
            }
            for (int i = 0; i < arrayList.size(); i++) {
                if (((Float) arrayList.get(i)).floatValue() != (arrayList2.get(i) == null ? 0.0f : ((AudioWaveformLoader) arrayList2.get(i)).animatedLoaded.set(((AudioWaveformLoader) arrayList2.get(i)).getLoadedCount()))) {
                    return false;
                }
            }
            return true;
        }

        public static int getMaxBar(ArrayList arrayList) {
            if (arrayList == null) {
                return 0;
            }
            int maxBar = 0;
            for (int i = 0; i < arrayList.size(); i++) {
                if (arrayList.get(i) != null) {
                    maxBar += ((AudioWaveformLoader) arrayList.get(i)).getMaxBar();
                }
            }
            return maxBar;
        }

        public void check(float f, float f2, float f3, float f4, long j, float f5, float f6, float f7, AudioWaveformLoader audioWaveformLoader) {
            ArrayList arrayList;
            if (audioWaveformLoader == null) {
                rewind();
                return;
            }
            float f8 = audioWaveformLoader.animatedLoaded.set(audioWaveformLoader.getLoadedCount());
            if (this.lastScrollDuration == j && Math.abs(this.lastAudioHeight - f5) <= 1.0f && Math.abs(this.lastMaxBar - f6) <= 0.01f && Math.abs(this.lastAudioSelected - f4) <= 0.1f && Math.abs(this.lastBottom - f7) <= 1.0f && Math.abs(this.lastStart - f) <= 1.0f && Math.abs(this.lastLeft - f2) <= 1.0f && Math.abs(this.lastRight - f3) <= 1.0f && (arrayList = this.lastWaveformCounts) != null && arrayList.size() == 1) {
                ArrayList arrayList2 = this.lastWaveformLoaded;
                if (Math.abs(((arrayList2 == null || arrayList2.isEmpty()) ? 0.0f : ((Float) this.lastWaveformLoaded.get(0)).floatValue()) - f8) <= 0.01f) {
                    return;
                }
            }
            ArrayList arrayList3 = this.lastWaveformCounts;
            if (arrayList3 == null) {
                this.lastWaveformCounts = new ArrayList();
            } else {
                arrayList3.clear();
            }
            this.lastWaveformCounts.add(Integer.valueOf(audioWaveformLoader.getCount()));
            ArrayList arrayList4 = this.lastWaveformLoaded;
            if (arrayList4 == null) {
                this.lastWaveformLoaded = new ArrayList();
            } else {
                arrayList4.clear();
            }
            this.lastWaveformLoaded.add(Float.valueOf(f8));
            this.lastStart = f;
            this.lastLeft = f2;
            this.lastRight = f3;
            this.lastAudioSelected = f4;
            this.lastMaxBar = f6;
            this.lastAudioHeight = f5;
            this.lastBottom = f7;
            layout(f, f2, f3, f4, f6, f5, f7, audioWaveformLoader.animatedLoaded.set(audioWaveformLoader.getLoadedCount()), audioWaveformLoader);
        }

        public void check(float f, float f2, float f3, float f4, float f5, float f6, float f7, ArrayList arrayList) {
            if (arrayList == null || arrayList.isEmpty()) {
                rewind();
                return;
            }
            if (Math.abs(this.lastAudioHeight - f5) > 1.0f || Math.abs(this.lastMaxBar - f6) > 0.01f || Math.abs(this.lastAudioSelected - f4) > 0.1f || Math.abs(this.lastBottom - f7) > 1.0f || Math.abs(this.lastStart - f) > 1.0f || Math.abs(this.lastLeft - f2) > 1.0f || Math.abs(this.lastRight - f3) > 1.0f || eqCount(this.lastWaveformCounts, arrayList) || eqLoadedCounts(this.lastWaveformLoaded, arrayList)) {
                ArrayList arrayList2 = this.lastWaveformCounts;
                if (arrayList2 == null) {
                    this.lastWaveformCounts = new ArrayList();
                } else {
                    arrayList2.clear();
                }
                for (int i = 0; i < arrayList.size(); i++) {
                    this.lastWaveformCounts.add(Integer.valueOf(arrayList.get(i) == null ? 0 : ((AudioWaveformLoader) arrayList.get(i)).getCount()));
                }
                ArrayList arrayList3 = this.lastWaveformLoaded;
                if (arrayList3 == null) {
                    this.lastWaveformLoaded = new ArrayList();
                } else {
                    arrayList3.clear();
                }
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    this.lastWaveformLoaded.add(Float.valueOf(arrayList.get(i2) == null ? 0.0f : ((AudioWaveformLoader) arrayList.get(i2)).animatedLoaded.set(((AudioWaveformLoader) arrayList.get(i2)).getLoadedCount())));
                }
                this.lastStart = f;
                this.lastLeft = f2;
                this.lastRight = f3;
                this.lastAudioSelected = f4;
                this.lastMaxBar = f6;
                this.lastAudioHeight = f5;
                this.lastBottom = f7;
                layout(f, f2, f3, f4, f6, f5, f7, this.lastWaveformLoaded, arrayList);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:41:0x00f0 A[PHI: r12
  0x00f0: PHI (r12v11 float) = (r12v10 float), (r12v9 float) binds: [B:39:0x00ed, B:37:0x00e8] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void layout(float f, float f2, float f3, float f4, float f5, float f6, float f7, ArrayList arrayList, ArrayList arrayList2) {
            rewind();
            float fRound = Math.round(AndroidUtilities.dpf2(3.3333f));
            int iMax = 0;
            for (int i = 0; i < arrayList2.size(); i++) {
                if (arrayList2.get(i) != null) {
                    iMax = Math.max(iMax, ((AudioWaveformLoader) arrayList2.get(i)).getCount());
                }
            }
            int iMax2 = Math.max(0, (int) (((f2 - this.f2241ph) - f) / fRound));
            int iMin = Math.min(iMax - 1, (int) Math.ceil(((f3 + this.f2241ph) - f) / fRound));
            while (iMax2 <= iMin) {
                float f8 = iMax2;
                float fM1124dp = f + (f8 * fRound) + AndroidUtilities.m1124dp(2.0f);
                int i2 = 0;
                for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                    short bar = (arrayList2.get(i3) == null || iMax2 >= ((AudioWaveformLoader) arrayList2.get(i3)).getCount()) ? (short) 0 : ((AudioWaveformLoader) arrayList2.get(i3)).getBar(iMax2);
                    if (f8 < ((Float) arrayList.get(i3)).floatValue() && iMax2 + 1 > ((Float) arrayList.get(i3)).floatValue()) {
                        bar = (short) (bar * (((Float) arrayList.get(i3)).floatValue() - f8));
                    } else if (f8 > ((Float) arrayList.get(i3)).floatValue()) {
                        bar = 0;
                    }
                    i2 += bar;
                }
                float f9 = f5 <= 0.0f ? 0.0f : (i2 / f5) * f6 * 0.6f;
                if (fM1124dp < f2 || fM1124dp > f3) {
                    f9 *= f4;
                    if (f9 > 0.0f) {
                        float fMax = Math.max(f9, AndroidUtilities.lerp(AndroidUtilities.dpf2(0.66f), AndroidUtilities.dpf2(1.5f), f4));
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(fM1124dp, AndroidUtilities.lerp(f7 - fMax, f7 - ((f6 + fMax) / 2.0f), f4), AndroidUtilities.dpf2(1.66f) + fM1124dp, AndroidUtilities.lerp(f7, f7 - ((f6 - fMax) / 2.0f), f4));
                        addRoundRect(rectF, this.waveformRadii, Path.Direction.CW);
                    }
                }
                iMax2++;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x007c A[PHI: r9
  0x007c: PHI (r9v9 float) = (r9v8 float), (r9v7 float) binds: [B:21:0x0079, B:19:0x0074] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void layout(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, AudioWaveformLoader audioWaveformLoader) {
            rewind();
            float fRound = Math.round(AndroidUtilities.dpf2(3.3333f));
            int count = audioWaveformLoader.getCount();
            int iMin = Math.min(count - 1, (int) Math.ceil(((this.f2241ph + f3) - f) / fRound));
            for (int iMax = Math.max(0, (int) (((f2 - this.f2241ph) - f) / fRound)); iMax <= iMin; iMax++) {
                float f9 = iMax;
                float fM1124dp = (f9 * fRound) + f + AndroidUtilities.m1124dp(2.0f);
                float bar = f5 <= 0.0f ? 0.0f : (audioWaveformLoader.getBar(iMax) / f5) * f6 * 0.6f;
                if (f9 < f8 && iMax + 1 > f8) {
                    bar *= f8 - f9;
                } else if (f9 > f8) {
                    bar = 0.0f;
                }
                if (fM1124dp < f2 || fM1124dp > f3) {
                    bar *= f4;
                    if (bar > 0.0f) {
                        float fMax = Math.max(bar, AndroidUtilities.lerp(AndroidUtilities.dpf2(0.66f), AndroidUtilities.dpf2(1.5f), f4));
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(fM1124dp, AndroidUtilities.lerp(f7 - fMax, f7 - ((f6 + fMax) / 2.0f), f4), AndroidUtilities.dpf2(1.66f) + fM1124dp, AndroidUtilities.lerp(f7, f7 - ((f6 - fMax) / 2.0f), f4));
                        addRoundRect(rectF, this.waveformRadii, Path.Direction.CW);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0680  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x06a7 A[LOOP:4: B:157:0x06a7->B:162:0x06e7, LOOP_START, PHI: r5 r7
  0x06a7: PHI (r5v137 float) = (r5v136 float), (r5v138 float) binds: [B:156:0x06a5, B:162:0x06e7] A[DONT_GENERATE, DONT_INLINE]
  0x06a7: PHI (r7v121 int) = (r7v120 int), (r7v122 int) binds: [B:156:0x06a5, B:162:0x06e7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x06ed  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0974  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0986  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x09a3 A[LOOP:6: B:240:0x09a3->B:246:0x09e8, LOOP_START, PHI: r2 r3 r6
  0x09a3: PHI (r2v196 android.graphics.Paint) = (r2v193 android.graphics.Paint), (r2v197 android.graphics.Paint) binds: [B:239:0x09a1, B:246:0x09e8] A[DONT_GENERATE, DONT_INLINE]
  0x09a3: PHI (r3v177 float) = (r3v176 float), (r3v178 float) binds: [B:239:0x09a1, B:246:0x09e8] A[DONT_GENERATE, DONT_INLINE]
  0x09a3: PHI (r6v102 int) = (r6v101 int), (r6v103 int) binds: [B:239:0x09a1, B:246:0x09e8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x09f2  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x0cd4  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x0eba  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x0f2c  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0f3c  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x0fb6  */
    /* JADX WARN: Removed duplicated region for block: B:395:0x1016  */
    /* JADX WARN: Removed duplicated region for block: B:398:0x101e  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x111e  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x1121  */
    /* JADX WARN: Removed duplicated region for block: B:413:0x1152  */
    /* JADX WARN: Removed duplicated region for block: B:429:0x118f  */
    /* JADX WARN: Removed duplicated region for block: B:432:0x119f  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void dispatchDraw(Canvas canvas) {
        float f;
        int i;
        long j;
        int i2;
        float fMax;
        float f2;
        Track track;
        Track track2;
        int i3;
        float f3;
        float fMax2;
        float f4;
        int i4;
        Canvas canvas2;
        boolean z;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        double d;
        float f20;
        float fMax3;
        float f21;
        float f22;
        float fLerp;
        Track track3;
        Canvas canvas3;
        TimelineView timelineView;
        float f23;
        float f24;
        float f25;
        float f26;
        float f27;
        float f28;
        long j2;
        float fLerp2;
        float f29;
        float f30;
        float f31;
        float fDpf2;
        BlurringShader.BlurManager blurManager;
        float f32;
        long j3;
        float f33;
        float fLerp3;
        float fLerp4;
        float f34;
        int i5;
        float f35;
        int i6;
        int i7;
        Paint paint;
        Paint paint2;
        int i8;
        float fLerp5;
        float f36;
        float f37;
        float f38;
        Paint paint3;
        long j4;
        float f39;
        float f40;
        int i9;
        VideoThumbsLoader videoThumbsLoader;
        float f41;
        int i10;
        float f42;
        float f43;
        float f44;
        float f45;
        int i11;
        int i12;
        BlurringShader.BlurManager blurManager2;
        TimelineView timelineView2 = this;
        Paint paint4 = timelineView2.backgroundBlur.getPaint(1.0f);
        float f46 = timelineView2.openT.set(timelineView2.open);
        long jMin = Math.min(timelineView2.getBaseDuration(), timelineView2.getMaxScrollDuration());
        if (f46 < 1.0f) {
            f = 1.0f;
            timelineView2.timelineBounds.set(timelineView2.f2237px, (timelineView2.f2235h - timelineView2.f2238py) - AndroidUtilities.m1124dp(28.0f), timelineView2.f2240w - timelineView2.f2237px, timelineView2.f2235h - timelineView2.f2238py);
            timelineView2.timelineClipPath.rewind();
            timelineView2.timelineClipPath.addRoundRect(timelineView2.timelineBounds, AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), Path.Direction.CW);
            canvas.saveLayerAlpha(timelineView2.timelineBounds, (int) ((1.0f - f46) * 255.0f), 31);
            canvas.clipPath(timelineView2.timelineClipPath);
            if (timelineView2.blurManager.hasRenderNode()) {
                timelineView2.backgroundBlur.drawRect(canvas);
                canvas.drawColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
            } else if (paint4 == null) {
                canvas.drawColor(TLObject.FLAG_30);
            } else {
                canvas.drawRect(timelineView2.timelineBounds, paint4);
                canvas.drawColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
            }
            if (!timelineView2.collageWaveforms.isEmpty() && (blurManager2 = timelineView2.blurManager) != null && blurManager2.hasRenderNode()) {
                float f47 = timelineView2.timelineWaveformMax.set(WaveformPath.getMaxBar(timelineView2.collageWaveforms));
                WaveformPath waveformPath = timelineView2.timelineWaveformPath;
                RectF rectF = timelineView2.timelineBounds;
                waveformPath.check(timelineView2.f2237px + timelineView2.f2236ph + (((timelineView2.audioOffset - timelineView2.scroll) / jMin) * timelineView2.f2239sw), rectF.left, rectF.right, 0.0f, AndroidUtilities.m1124dp(28.0f), f47, timelineView2.timelineBounds.bottom, timelineView2.collageWaveforms);
                canvas.saveLayerAlpha(timelineView2.timelineBounds, 102, 31);
                canvas.clipPath(timelineView2.timelineWaveformPath);
                timelineView2.audioWaveformBlur.drawRect(canvas);
                canvas.restore();
            } else if (!timelineView2.collageWaveforms.isEmpty()) {
                Paint paint5 = timelineView2.audioWaveformBlur.getPaint(0.4f);
                if (paint5 == null) {
                    paint5 = timelineView2.waveformPaint;
                    paint5.setAlpha(64);
                }
                float f48 = timelineView2.timelineWaveformMax.set(WaveformPath.getMaxBar(timelineView2.collageWaveforms));
                WaveformPath waveformPath2 = timelineView2.timelineWaveformPath;
                RectF rectF2 = timelineView2.timelineBounds;
                waveformPath2.check(timelineView2.f2237px + timelineView2.f2236ph + (((timelineView2.audioOffset - timelineView2.scroll) / jMin) * timelineView2.f2239sw), rectF2.left, rectF2.right, 0.0f, AndroidUtilities.m1124dp(28.0f), f48, timelineView2.timelineBounds.bottom, timelineView2.collageWaveforms);
                canvas.drawPath(timelineView2.timelineWaveformPath, paint5);
            }
            float currentWidth = ((timelineView2.timelineText.getCurrentWidth() + AndroidUtilities.m1124dp(3.66f)) + timelineView2.timelineIcon.getIntrinsicWidth()) / 2.0f;
            int iCenterX = (int) (timelineView2.timelineBounds.centerX() - currentWidth);
            int iCenterY = (int) timelineView2.timelineBounds.centerY();
            Drawable drawable = timelineView2.timelineIcon;
            drawable.setBounds(iCenterX, iCenterY - (drawable.getIntrinsicHeight() / 2), timelineView2.timelineIcon.getIntrinsicWidth() + iCenterX, (timelineView2.timelineIcon.getIntrinsicHeight() / 2) + iCenterY);
            timelineView2.timelineIcon.setAlpha(191);
            timelineView2.timelineIcon.draw(canvas);
            timelineView2.timelineText.draw(canvas, (timelineView2.timelineBounds.centerX() - currentWidth) + timelineView2.timelineIcon.getIntrinsicWidth() + AndroidUtilities.m1124dp(3.66f), iCenterY, -1, 0.75f);
            canvas.restore();
        } else {
            f = 1.0f;
        }
        if (f46 > 0.0f) {
            if (f46 < 1.0f) {
                i4 = 1;
                f4 = 0.0f;
                canvas2 = canvas;
                canvas2.saveLayerAlpha(0.0f, 0.0f, timelineView2.getWidth(), timelineView2.getHeight(), (int) (f46 * 255.0f), 31);
                z = true;
            } else {
                f4 = 0.0f;
                i4 = 1;
                canvas2 = canvas;
                z = false;
            }
            Track track4 = timelineView2.videoTrack;
            float f49 = track4 != null ? f : f4;
            if (track4 != null) {
                f5 = track4.selectedT.set((timelineView2.audioSelected || timelineView2.roundSelected) ? 0 : i4);
            } else {
                f5 = f4;
            }
            float f50 = timelineView2.f2235h - timelineView2.f2238py;
            float fM1124dp = AndroidUtilities.m1124dp(4.0f);
            float f51 = f5;
            float f52 = f49;
            if (timelineView2.videoTrack != null) {
                canvas2.save();
                float videoHeight = timelineView2.getVideoHeight();
                Track track5 = timelineView2.videoTrack;
                i = i4;
                float f53 = track5.left;
                long j5 = track5.duration;
                f7 = f4;
                float f54 = (j5 * f53 * f51) + f7;
                float f55 = (track5.right * j5 * f51) + f7;
                float f56 = j5 <= 0 ? f7 : (timelineView2.f2237px + timelineView2.f2236ph) - ((timelineView2.scroll / jMin) * timelineView2.f2239sw);
                int i13 = timelineView2.f2236ph;
                float f57 = f56 - i13;
                if (j5 <= 0) {
                    f6 = fM1124dp;
                    f8 = videoHeight;
                    f42 = f7;
                } else {
                    f6 = fM1124dp;
                    f8 = videoHeight;
                    f42 = (((j5 - timelineView2.scroll) / jMin) * timelineView2.f2239sw) + timelineView2.f2237px + i13;
                }
                timelineView2.videoBounds.set(f57, f50 - f8, f42 + i13, f50);
                float f58 = f50 - (f8 + (f6 * f52));
                RectF rectF3 = timelineView2.videoBounds;
                float f59 = (rectF3.top * f51) + f7;
                float f60 = (rectF3.bottom * f51) + f7;
                timelineView2.videoClipPath.rewind();
                f9 = f60;
                timelineView2.videoClipPath.addRoundRect(timelineView2.videoBounds, AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), Path.Direction.CW);
                canvas2.clipPath(timelineView2.videoClipPath);
                VideoThumbsLoader videoThumbsLoader2 = timelineView2.videoTrack.thumbs;
                if (videoThumbsLoader2 != null) {
                    int frameWidth = videoThumbsLoader2.getFrameWidth();
                    float f61 = frameWidth;
                    f43 = f58;
                    int iMax = (int) Math.max(0.0d, Math.floor((f57 - timelineView2.f2237px) / f61));
                    f44 = f59;
                    int iMin = (int) Math.min(timelineView2.videoTrack.thumbs.count, Math.ceil(((r5 - f57) - timelineView2.f2237px) / f61) + 1.0d);
                    int i14 = (int) timelineView2.videoBounds.top;
                    int i15 = timelineView2.videoTrack.thumbs.frames.size() >= iMin ? i : 0;
                    int i16 = (frameWidth == 0 || i15 == 0 || timelineView2.videoTrack.isRound) ? 0 : i;
                    if (i16 != 0) {
                        while (true) {
                            if (iMax >= Math.min(timelineView2.videoTrack.thumbs.frames.size(), iMin)) {
                                break;
                            }
                            if (((VideoThumbsLoader.BitmapFrame) timelineView2.videoTrack.thumbs.frames.get(iMax)).bitmap == null) {
                                i16 = 0;
                                break;
                            }
                            iMax++;
                        }
                    }
                    if (i16 == 0) {
                        if (timelineView2.blurManager.hasRenderNode()) {
                            timelineView2.backgroundBlur.drawRect(canvas2);
                            canvas2.drawColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
                        } else if (paint4 == null) {
                            canvas2.drawColor(TLObject.FLAG_30);
                        } else {
                            canvas2.drawRect(timelineView2.videoBounds, paint4);
                            canvas2.drawColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
                        }
                    }
                    if (frameWidth != 0) {
                        float f62 = f57;
                        int i17 = iMax;
                        while (i17 < Math.min(timelineView2.videoTrack.thumbs.frames.size(), iMin)) {
                            VideoThumbsLoader.BitmapFrame bitmapFrame = (VideoThumbsLoader.BitmapFrame) timelineView2.videoTrack.thumbs.frames.get(i17);
                            if (bitmapFrame.bitmap != null) {
                                i12 = i17;
                                timelineView2.videoFramePaint.setAlpha((int) (bitmapFrame.getAlpha() * 255.0f));
                                canvas2.drawBitmap(bitmapFrame.bitmap, f62, i14 - ((int) ((r2.getHeight() - f8) / 2.0f)), timelineView2.videoFramePaint);
                            } else {
                                i12 = i17;
                            }
                            f62 += f61;
                            i17 = i12 + 1;
                        }
                    }
                    if (i15 == 0) {
                        timelineView2.videoTrack.thumbs.load();
                    }
                } else {
                    f43 = f58;
                    f44 = f59;
                }
                timelineView2.selectedVideoClipPath.rewind();
                if (timelineView2.isCover) {
                    f11 = f54;
                    f10 = f55;
                    f12 = f44;
                } else {
                    RectF rectF4 = AndroidUtilities.rectTmp;
                    int i18 = timelineView2.f2237px;
                    int i19 = timelineView2.f2236ph;
                    float f63 = i18 + i19;
                    Track track6 = timelineView2.videoTrack;
                    float f64 = track6.left;
                    long j6 = track6.duration;
                    float f65 = j6 * f64;
                    long j7 = timelineView2.scroll;
                    float f66 = f65 - j7;
                    float f67 = jMin;
                    float f68 = f66 / f67;
                    int i20 = timelineView2.f2239sw;
                    f11 = f54;
                    float f69 = f63 + (f68 * i20);
                    if (f64 <= f7) {
                        f45 = f69;
                        i11 = i19;
                    } else {
                        f45 = f69;
                        i11 = 0;
                    }
                    float f70 = f45 - i11;
                    f10 = f55;
                    int i21 = timelineView2.f2235h;
                    int i22 = timelineView2.f2238py;
                    float f71 = (i21 - i22) - f8;
                    f12 = f44;
                    float f72 = track6.right;
                    rectF4.set(f70, f71, i18 + i19 + ((((j6 * f72) - j7) / f67) * i20) + (f72 >= f ? i19 : 0), i21 - i22);
                    timelineView2.selectedVideoClipPath.addRoundRect(rectF4, timelineView2.selectedVideoRadii, Path.Direction.CW);
                    canvas2.clipPath(timelineView2.selectedVideoClipPath, Region.Op.DIFFERENCE);
                    canvas2.drawColor(1342177280);
                }
                canvas2.restore();
                f50 = f43;
            } else {
                f6 = fM1124dp;
                i = i4;
                f7 = f4;
                f8 = f7;
                f9 = f8;
                f10 = f9;
                f11 = f10;
                f12 = f11;
            }
            if (timelineView2.collageTracks.isEmpty()) {
                f13 = 0.0f;
            } else {
                timelineView2.getCollageHeight();
                int i23 = 0;
                while (i23 < timelineView2.collageTracks.size()) {
                    Track track7 = (Track) timelineView2.collageTracks.get(i23);
                    float f73 = track7.selectedT.set((timelineView2.audioSelected || timelineView2.roundSelected || timelineView2.collageSelected != i23) ? 0 : i);
                    if (track7 != timelineView2.collageMain) {
                        float f74 = jMin;
                        float fLerp6 = timelineView2.f2237px + timelineView2.f2236ph + ((((track7.offset - timelineView2.scroll) + (AndroidUtilities.lerp(track7.left, f7, f73) * track7.duration)) / f74) * timelineView2.f2239sw);
                        fLerp5 = timelineView2.f2237px + timelineView2.f2236ph + ((((track7.offset - timelineView2.scroll) + (AndroidUtilities.lerp(track7.right, f, f73) * track7.duration)) / f74) * timelineView2.f2239sw);
                        i8 = i23;
                        f36 = fLerp6;
                    } else {
                        float f75 = timelineView2.f2237px + timelineView2.f2236ph;
                        long j8 = track7.offset;
                        long j9 = timelineView2.scroll;
                        float f76 = jMin;
                        i8 = i23;
                        int i24 = timelineView2.f2239sw;
                        float f77 = (i24 * ((j8 - j9) / f76)) + f75;
                        fLerp5 = r6 + r7 + ((((j8 - j9) + track7.duration) / f76) * i24);
                        f36 = f77;
                    }
                    canvas2.save();
                    float fLerp7 = AndroidUtilities.lerp(AndroidUtilities.m1124dp(28.0f), AndroidUtilities.m1124dp(38.0f), f73);
                    RectF rectF5 = track7.bounds;
                    int i25 = timelineView2.f2236ph;
                    rectF5.set(f36 - i25, f50 - fLerp7, fLerp5 + i25, f50);
                    RectF rectF6 = track7.bounds;
                    f12 += rectF6.top * f73;
                    f9 += rectF6.bottom * f73;
                    long j10 = track7.offset;
                    float f78 = track7.left;
                    long j11 = track7.duration;
                    f11 += (j10 + (f78 * j11)) * f73;
                    f10 += (j10 + (track7.right * j11)) * f73;
                    timelineView2.collageClipPath.rewind();
                    timelineView2.collageClipPath.addRoundRect(track7.bounds, AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), Path.Direction.CW);
                    canvas2.clipPath(timelineView2.collageClipPath);
                    VideoThumbsLoader videoThumbsLoader3 = track7.thumbs;
                    if (videoThumbsLoader3 != null) {
                        long j12 = track7.duration;
                        if (j12 <= 0) {
                            videoThumbsLoader = videoThumbsLoader3;
                            f37 = f50;
                            f41 = 0.0f;
                        } else {
                            videoThumbsLoader = videoThumbsLoader3;
                            f37 = f50;
                            f41 = (((track7.offset - timelineView2.scroll) / jMin) * timelineView2.f2239sw) + timelineView2.f2237px + timelineView2.f2236ph;
                        }
                        int i26 = timelineView2.f2236ph;
                        float f79 = f41 - i26;
                        float f80 = (j12 <= 0 ? 0.0f : ((((track7.offset + j12) - timelineView2.scroll) / jMin) * timelineView2.f2239sw) + timelineView2.f2237px + i26) + i26;
                        int frameWidth2 = videoThumbsLoader.getFrameWidth();
                        float f81 = frameWidth2;
                        float f82 = f79;
                        int iMax2 = (int) Math.max(0.0d, Math.floor((f79 - ((timelineView2.f2237px + timelineView2.f2236ph) + (((track7.offset - timelineView2.scroll) / jMin) * timelineView2.f2239sw))) / f81));
                        int iMin2 = (int) Math.min(track7.thumbs.count, Math.ceil((f80 - f82) / f81) + 1.0d);
                        int i27 = (int) track7.bounds.top;
                        int i28 = track7.thumbs.frames.size() >= iMin2 ? i : 0;
                        if (i28 != 0) {
                            for (int i29 = iMax2; i29 < Math.min(track7.thumbs.frames.size(), iMin2); i29++) {
                                if (((VideoThumbsLoader.BitmapFrame) track7.thumbs.frames.get(i29)).bitmap == null) {
                                    i10 = 0;
                                    break;
                                }
                            }
                            i10 = i28;
                            if (i10 == 0) {
                                if (timelineView2.blurManager.hasRenderNode()) {
                                    timelineView2.backgroundBlur.drawRect(canvas2);
                                    canvas2.drawColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
                                } else if (paint4 == null) {
                                    canvas2.drawColor(TLObject.FLAG_30);
                                } else {
                                    canvas2.drawRect(track7.bounds, paint4);
                                    canvas2.drawColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
                                }
                            }
                            if (frameWidth2 != 0) {
                                while (iMax2 < Math.min(track7.thumbs.frames.size(), iMin2)) {
                                    VideoThumbsLoader.BitmapFrame bitmapFrame2 = (VideoThumbsLoader.BitmapFrame) track7.thumbs.frames.get(iMax2);
                                    if (bitmapFrame2.bitmap != null) {
                                        timelineView2.collageFramePaint.setAlpha((int) (bitmapFrame2.getAlpha() * 255.0f));
                                        canvas2.drawBitmap(bitmapFrame2.bitmap, f82, i27 - ((int) ((r4.getHeight() - fLerp7) / 2.0f)), timelineView2.collageFramePaint);
                                    }
                                    f82 += f81;
                                    iMax2++;
                                }
                            }
                            if (i28 == 0) {
                                track7.thumbs.load();
                            }
                        } else {
                            i10 = i28;
                            if (i10 == 0) {
                            }
                            if (frameWidth2 != 0) {
                            }
                            if (i28 == 0) {
                            }
                        }
                    } else {
                        f37 = f50;
                    }
                    timelineView2.selectedCollageClipPath.rewind();
                    if (timelineView2.isCover) {
                        f38 = f37;
                        paint3 = paint4;
                        j4 = jMin;
                        f39 = f6;
                    } else {
                        RectF rectF7 = AndroidUtilities.rectTmp;
                        int i30 = timelineView2.f2237px;
                        int i31 = timelineView2.f2236ph;
                        float f83 = i30 + i31;
                        float f84 = track7.left;
                        long j13 = track7.duration;
                        long j14 = timelineView2.scroll;
                        long j15 = track7.offset;
                        f38 = f37;
                        float f85 = jMin;
                        float f86 = (((j13 * f84) - j14) + j15) / f85;
                        int i32 = timelineView2.f2239sw;
                        float f87 = f83 + (i32 * f86);
                        if (f84 <= 0.0f) {
                            f40 = f87;
                            i9 = i31;
                        } else {
                            f40 = f87;
                            i9 = 0;
                        }
                        float f88 = f40 - i9;
                        f39 = f6;
                        RectF rectF8 = track7.bounds;
                        paint3 = paint4;
                        float f89 = rectF8.top;
                        j4 = jMin;
                        float f90 = track7.right;
                        rectF7.set(f88, f89, i30 + i31 + (((((j13 * f90) - j14) + j15) / f85) * i32) + (f90 >= 1.0f ? i31 : 0), rectF8.bottom);
                        timelineView2.selectedCollageClipPath.addRoundRect(rectF7, timelineView2.selectedVideoRadii, Path.Direction.CW);
                        canvas2.clipPath(timelineView2.selectedCollageClipPath, Region.Op.DIFFERENCE);
                        canvas2.drawColor(1342177280);
                    }
                    canvas2.restore();
                    f50 = f38 - (fLerp7 + (f39 * 1.0f));
                    i23 = i8 + 1;
                    f6 = f39;
                    paint4 = paint3;
                    jMin = j4;
                    f = 1.0f;
                    f7 = 0.0f;
                }
                f13 = 1.0f;
            }
            Paint paint6 = paint4;
            long j16 = jMin;
            float f91 = f6;
            float f92 = timelineView2.roundT.set(timelineView2.hasRound);
            float f93 = timelineView2.roundSelectedT.set((timelineView2.hasRound && timelineView2.roundSelected) ? i : 0);
            float roundHeight = timelineView2.getRoundHeight() * f92;
            float f94 = ((timelineView2.videoTrack == null && !timelineView2.hasAudio && timelineView2.collageTracks.isEmpty()) ? 1.0f : f93) * f92;
            if (f92 > 0.0f) {
                long j17 = timelineView2.roundOffset;
                float f95 = timelineView2.roundLeft;
                long j18 = timelineView2.roundDuration;
                f11 += (j17 + (j18 * f95)) * f94;
                f10 += (j17 + (timelineView2.roundRight * j18)) * f94;
                if (timelineView2.videoTrack != null) {
                    j3 = j16;
                    float f96 = j3;
                    fLerp4 = timelineView2.f2237px + timelineView2.f2236ph + ((((j17 - timelineView2.scroll) + (AndroidUtilities.lerp(f95, 0.0f, f93) * timelineView2.roundDuration)) / f96) * timelineView2.f2239sw);
                    f32 = f94;
                    fLerp3 = timelineView2.f2237px + timelineView2.f2236ph + ((((timelineView2.roundOffset - timelineView2.scroll) + (AndroidUtilities.lerp(timelineView2.roundRight, 1.0f, f93) * timelineView2.roundDuration)) / f96) * timelineView2.f2239sw);
                    f14 = f93;
                    f33 = roundHeight;
                } else {
                    f32 = f94;
                    j3 = j16;
                    int i33 = timelineView2.f2237px;
                    int i34 = timelineView2.f2236ph;
                    f14 = f93;
                    f33 = roundHeight;
                    long j19 = timelineView2.scroll;
                    float f97 = j3;
                    float f98 = (j17 - j19) / f97;
                    int i35 = timelineView2.f2239sw;
                    fLerp3 = ((((j17 - j19) + j18) / f97) * i35) + i33 + i34;
                    fLerp4 = (i35 * f98) + i33 + i34;
                }
                RectF rectF9 = timelineView2.roundBounds;
                int i36 = timelineView2.f2236ph;
                rectF9.set(fLerp4 - i36, f50 - f33, fLerp3 + i36, f50);
                float f99 = f50 - (f33 + (f91 * f92));
                RectF rectF10 = timelineView2.roundBounds;
                f12 += rectF10.top * f32;
                f9 += rectF10.bottom * f32;
                timelineView2.roundClipPath.rewind();
                timelineView2.roundClipPath.addRoundRect(timelineView2.roundBounds, AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), Path.Direction.CW);
                canvas2.save();
                canvas2.clipPath(timelineView2.roundClipPath);
                VideoThumbsLoader videoThumbsLoader4 = timelineView2.roundThumbs;
                if (videoThumbsLoader4 != null) {
                    long j20 = timelineView2.roundDuration;
                    float f100 = j20 <= 0 ? 0.0f : timelineView2.f2237px + timelineView2.f2236ph + (((timelineView2.roundOffset - timelineView2.scroll) / j3) * timelineView2.f2239sw);
                    int i37 = timelineView2.f2236ph;
                    float f101 = f100 - i37;
                    float f102 = (j20 <= 0 ? 0.0f : ((((timelineView2.roundOffset + j20) - timelineView2.scroll) / j3) * timelineView2.f2239sw) + timelineView2.f2237px + i37) + i37;
                    int frameWidth3 = videoThumbsLoader4.getFrameWidth();
                    if (timelineView2.videoTrack != null) {
                        f35 = timelineView2.f2237px + timelineView2.f2236ph + (((timelineView2.roundOffset - timelineView2.scroll) / j3) * timelineView2.f2239sw);
                    } else {
                        f35 = timelineView2.f2237px;
                    }
                    float f103 = frameWidth3;
                    int iMax3 = (int) Math.max(0.0d, Math.floor((f101 - f35) / f103));
                    int iMin3 = (int) Math.min(timelineView2.roundThumbs.count, Math.ceil((f102 - f101) / f103) + 1.0d);
                    int i38 = (int) timelineView2.roundBounds.top;
                    int i39 = timelineView2.roundThumbs.frames.size() >= iMin3 ? i : 0;
                    if (i39 != 0) {
                        for (int i40 = iMax3; i40 < Math.min(timelineView2.roundThumbs.frames.size(), iMin3); i40++) {
                            if (((VideoThumbsLoader.BitmapFrame) timelineView2.roundThumbs.frames.get(i40)).bitmap == null) {
                                i6 = 0;
                                break;
                            }
                        }
                        i6 = i39;
                        if (i6 != 0) {
                            i7 = frameWidth3;
                            paint = paint6;
                            if (i7 != 0) {
                                while (iMax3 < Math.min(timelineView2.roundThumbs.frames.size(), iMin3)) {
                                    VideoThumbsLoader.BitmapFrame bitmapFrame3 = (VideoThumbsLoader.BitmapFrame) timelineView2.roundThumbs.frames.get(iMax3);
                                    if (bitmapFrame3.bitmap != null) {
                                        paint2 = paint;
                                        timelineView2.videoFramePaint.setAlpha((int) (bitmapFrame3.getAlpha() * 255.0f));
                                        canvas2.drawBitmap(bitmapFrame3.bitmap, f101, i38 - ((int) ((r2.getHeight() - f33) / 2.0f)), timelineView2.videoFramePaint);
                                    } else {
                                        paint2 = paint;
                                    }
                                    f101 += f103;
                                    iMax3++;
                                    paint = paint2;
                                }
                            }
                            paint6 = paint;
                            if (i39 == 0) {
                                timelineView2.roundThumbs.load();
                            }
                        } else {
                            if (timelineView2.blurManager.hasRenderNode()) {
                                timelineView2.backgroundBlur.drawRect(canvas2);
                                canvas2.drawColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
                            } else if (paint6 == null) {
                                canvas2.drawColor(TLObject.FLAG_30);
                            } else {
                                i7 = frameWidth3;
                                paint = paint6;
                                canvas2.drawRect(timelineView2.roundBounds, paint);
                                canvas2.drawColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
                                if (i7 != 0) {
                                }
                                paint6 = paint;
                                if (i39 == 0) {
                                }
                            }
                            i7 = frameWidth3;
                            paint = paint6;
                            if (i7 != 0) {
                            }
                            paint6 = paint;
                            if (i39 == 0) {
                            }
                        }
                    } else {
                        i6 = i39;
                        if (i6 != 0) {
                        }
                    }
                }
                timelineView2.selectedVideoClipPath.rewind();
                RectF rectF11 = AndroidUtilities.rectTmp;
                int i41 = timelineView2.f2237px;
                int i42 = timelineView2.f2236ph;
                float f104 = i41 + i42;
                float f105 = timelineView2.roundLeft;
                long j21 = timelineView2.roundDuration;
                long j22 = timelineView2.scroll;
                long j23 = timelineView2.roundOffset;
                float f106 = j3;
                float f107 = (((j21 * f105) - j22) + j23) / f106;
                int i43 = timelineView2.f2239sw;
                float f108 = f104 + (f107 * i43);
                if (f105 <= 0.0f) {
                    f34 = f108;
                    i5 = i42;
                } else {
                    f34 = f108;
                    i5 = 0;
                }
                float f109 = 1.0f - f14;
                float f110 = (f34 - i5) - (i42 * f109);
                f15 = f13;
                RectF rectF12 = timelineView2.roundBounds;
                f16 = f92;
                float f111 = rectF12.top;
                j16 = j3;
                float f112 = timelineView2.roundRight;
                rectF11.set(f110, f111, i41 + i42 + (((((j21 * f112) - j22) + j23) / f106) * i43) + (f112 >= 1.0f ? i42 : 0) + (i42 * f109), rectF12.bottom);
                timelineView2.selectedVideoClipPath.addRoundRect(rectF11, timelineView2.selectedVideoRadii, Path.Direction.CW);
                canvas2.clipPath(timelineView2.selectedVideoClipPath, Region.Op.DIFFERENCE);
                canvas2.drawColor(1342177280);
                canvas2.restore();
                f50 = f99;
            } else {
                f14 = f93;
                f15 = f13;
                f16 = f92;
            }
            float f113 = timelineView2.audioT.set(timelineView2.hasAudio);
            float f114 = timelineView2.audioSelectedT.set((timelineView2.hasAudio && timelineView2.audioSelected) ? i : 0);
            float audioHeight = timelineView2.getAudioHeight() * f113;
            float f115 = ((timelineView2.videoTrack == null && !timelineView2.hasRound && timelineView2.collageTracks.isEmpty()) ? 1.0f : f114) * f113;
            if (f113 > 0.0f) {
                long j24 = timelineView2.audioOffset;
                float f116 = timelineView2.audioLeft;
                long j25 = timelineView2.audioDuration;
                f11 += (j24 + (f116 * j25)) * f115;
                f10 += (j24 + (timelineView2.audioRight * j25)) * f115;
                Paint paint7 = timelineView2.audioBlur.getPaint(f113);
                canvas2.save();
                if (timelineView2.videoTrack != null || timelineView2.hasRound || !timelineView2.collageTracks.isEmpty()) {
                    f27 = audioHeight;
                    f28 = f115;
                    j2 = j16;
                    float f117 = j2;
                    float fLerp8 = timelineView2.f2237px + timelineView2.f2236ph + ((((timelineView2.audioOffset - timelineView2.scroll) + (AndroidUtilities.lerp(timelineView2.audioLeft, 0.0f, f114) * timelineView2.audioDuration)) / f117) * timelineView2.f2239sw);
                    fLerp2 = timelineView2.f2237px + timelineView2.f2236ph + ((((timelineView2.audioOffset - timelineView2.scroll) + (AndroidUtilities.lerp(timelineView2.audioRight, 1.0f, f114) * timelineView2.audioDuration)) / f117) * timelineView2.f2239sw);
                    f29 = fLerp8;
                } else {
                    float f118 = timelineView2.f2237px + timelineView2.f2236ph;
                    long j26 = timelineView2.audioOffset;
                    long j27 = timelineView2.scroll;
                    f27 = audioHeight;
                    f28 = f115;
                    j2 = j16;
                    float f119 = j2;
                    float f120 = (j26 - j27) / f119;
                    int i44 = timelineView2.f2239sw;
                    fLerp2 = r6 + r7 + ((((j26 - j27) + timelineView2.audioDuration) / f119) * i44);
                    f29 = f118 + (f120 * i44);
                }
                float f121 = fLerp2;
                RectF rectF13 = timelineView2.audioBounds;
                int i45 = timelineView2.f2236ph;
                rectF13.set(f29 - i45, f50 - f27, i45 + f121, f50);
                RectF rectF14 = timelineView2.audioBounds;
                f12 += rectF14.top * f28;
                f9 += rectF14.bottom * f28;
                timelineView2.audioClipPath.rewind();
                timelineView2.audioClipPath.addRoundRect(timelineView2.audioBounds, AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), Path.Direction.CW);
                canvas2.clipPath(timelineView2.audioClipPath);
                BlurringShader.BlurManager blurManager3 = timelineView2.blurManager;
                if (blurManager3 != null && blurManager3.hasRenderNode()) {
                    timelineView2.backgroundBlur.drawRect(canvas2);
                    canvas2.drawColor(Theme.multAlpha(AndroidUtilities.DARK_STATUS_BAR_OVERLAY, f113));
                } else if (paint7 == null) {
                    canvas2.drawColor(Theme.multAlpha(TLObject.FLAG_30, f113));
                } else {
                    canvas2.drawRect(timelineView2.audioBounds, paint7);
                    canvas2.drawColor(Theme.multAlpha(AndroidUtilities.DARK_STATUS_BAR_OVERLAY, f113));
                }
                if (timelineView2.waveform != null && (blurManager = timelineView2.blurManager) != null && blurManager.hasRenderNode()) {
                    float f122 = timelineView2.waveformMax.set(timelineView2.waveform.getMaxBar(), !timelineView2.waveformIsLoaded);
                    timelineView2.waveformIsLoaded = timelineView2.waveform.getLoadedCount() > 0 ? i : 0;
                    float f123 = f27;
                    d = 0.0d;
                    long j28 = j2;
                    timelineView2.waveformPath.check(timelineView2.f2237px + timelineView2.f2236ph + (((timelineView2.audioOffset - timelineView2.scroll) / j2) * timelineView2.f2239sw), f29, f121, f114, j28, f123, f122, timelineView2.audioBounds.bottom, timelineView2.waveform);
                    f30 = f114;
                    j = j28;
                    canvas2.saveLayerAlpha(timelineView2.audioBounds, 102, 31);
                    canvas2.clipPath(timelineView2.waveformPath);
                    timelineView2.audioWaveformBlur.drawRect(canvas2);
                    canvas2.restore();
                } else {
                    f30 = f114;
                    d = 0.0d;
                    long j29 = j2;
                    float f124 = f27;
                    j = j29;
                    if (timelineView2.waveform != null && paint7 != null) {
                        Paint paint8 = timelineView2.audioWaveformBlur.getPaint(f113 * 0.4f);
                        if (paint8 == null) {
                            paint8 = timelineView2.waveformPaint;
                            paint8.setAlpha((int) (64.0f * f113));
                        }
                        float f125 = timelineView2.waveformMax.set(timelineView2.waveform.getMaxBar(), !timelineView2.waveformIsLoaded);
                        timelineView2.waveformIsLoaded = timelineView2.waveform.getLoadedCount() > 0 ? i : 0;
                        timelineView2.waveformPath.check(timelineView2.f2237px + timelineView2.f2236ph + (((timelineView2.audioOffset - timelineView2.scroll) / j) * timelineView2.f2239sw), f29, f121, f30, j, f124, f125, timelineView2.audioBounds.bottom, timelineView2.waveform);
                        f31 = f30;
                        j = j;
                        canvas2.drawPath(timelineView2.waveformPath, paint8);
                    }
                    if (f31 >= 1.0f) {
                        int i46 = timelineView2.f2237px;
                        float f126 = i46 + timelineView2.f2236ph;
                        long j30 = timelineView2.audioOffset;
                        long j31 = timelineView2.scroll;
                        float f127 = f31;
                        float f128 = timelineView2.audioLeft;
                        long j32 = timelineView2.audioDuration;
                        float f129 = (j30 - j31) + (f128 * j32);
                        float f130 = j;
                        int i47 = timelineView2.f2239sw;
                        float f131 = f126 + ((f129 / f130) * i47);
                        float f132 = i46 + r3 + ((((j30 - j31) + (timelineView2.audioRight * j32)) / f130) * i47);
                        float fMax4 = (Math.max(i46, f131) + Math.min(timelineView2.f2240w - timelineView2.f2237px, f132)) / 2.0f;
                        float fCenterY = timelineView2.audioBounds.centerY();
                        float fMax5 = Math.max(0.0f, (Math.min(timelineView2.f2240w - timelineView2.f2237px, f132) - Math.max(timelineView2.f2237px, f131)) - AndroidUtilities.m1124dp(24.0f));
                        float fDpf22 = AndroidUtilities.dpf2(13.0f) + ((timelineView2.audioAuthor == null && timelineView2.audioTitle == null) ? 0.0f : AndroidUtilities.dpf2(3.11f) + timelineView2.audioAuthorWidth + AndroidUtilities.dpf2(9.66f) + timelineView2.audioTitleWidth);
                        int i48 = fDpf22 < fMax5 ? i : 0;
                        float fMin = fMax4 - (Math.min(fDpf22, fMax5) / 2.0f);
                        timelineView2.audioIcon.setBounds((int) fMin, (int) (fCenterY - (AndroidUtilities.m1124dp(13.0f) / 2.0f)), (int) (AndroidUtilities.m1124dp(13.0f) + fMin), (int) ((AndroidUtilities.m1124dp(13.0f) / 2.0f) + fCenterY));
                        float f133 = 1.0f - f127;
                        float f134 = f133 * 255.0f;
                        timelineView2.audioIcon.setAlpha((int) f134);
                        timelineView2.audioIcon.draw(canvas2);
                        float fDpf23 = fMin + AndroidUtilities.dpf2(16.11f);
                        int i49 = i48;
                        f17 = f127;
                        f18 = f52;
                        f19 = f51;
                        canvas2.saveLayerAlpha(0.0f, 0.0f, timelineView2.f2240w, timelineView2.f2235h, 255, 31);
                        float fMin2 = Math.min(f132, timelineView2.f2240w) - AndroidUtilities.m1124dp(12.0f);
                        canvas2.clipRect(fDpf23, 0.0f, fMin2, timelineView2.f2235h);
                        if (timelineView2.audioAuthor != null) {
                            canvas2.save();
                            canvas2.translate(fDpf23 - timelineView2.audioAuthorLeft, fCenterY - (timelineView2.audioAuthor.getHeight() / 2.0f));
                            timelineView2.audioAuthorPaint.setAlpha((int) (f134 * f113));
                            timelineView2.audioAuthor.draw(canvas2);
                            canvas2.restore();
                            fDpf2 = timelineView2.audioAuthorWidth + fDpf23;
                        } else {
                            fDpf2 = fDpf23;
                        }
                        if (timelineView2.audioAuthor != null && timelineView2.audioTitle != null) {
                            float fDpf24 = fDpf2 + AndroidUtilities.dpf2(3.66f);
                            int alpha = timelineView2.audioDotPaint.getAlpha();
                            timelineView2.audioDotPaint.setAlpha((int) (alpha * f133));
                            canvas2.drawCircle(AndroidUtilities.m1124dp(1.0f) + fDpf24, fCenterY, AndroidUtilities.m1124dp(1.0f), timelineView2.audioDotPaint);
                            timelineView2.audioDotPaint.setAlpha(alpha);
                            fDpf2 = fDpf24 + AndroidUtilities.dpf2(2.0f) + AndroidUtilities.dpf2(4.0f);
                        }
                        if (timelineView2.audioTitle != null) {
                            canvas2.save();
                            canvas2.translate(fDpf2 - timelineView2.audioTitleLeft, fCenterY - (timelineView2.audioTitle.getHeight() / 2.0f));
                            timelineView2.audioTitlePaint.setAlpha((int) (f134 * f113));
                            timelineView2.audioTitle.draw(canvas2);
                            canvas2.restore();
                        }
                        if (i49 == 0) {
                            timelineView2.ellipsizeMatrix.reset();
                            timelineView2.ellipsizeMatrix.postScale(AndroidUtilities.dpf2(8.0f) / 16.0f, 1.0f);
                            timelineView2.ellipsizeMatrix.postTranslate(fMin2 - AndroidUtilities.m1124dp(8.0f), 0.0f);
                            timelineView2.ellipsizeGradient.setLocalMatrix(timelineView2.ellipsizeMatrix);
                            RectF rectF15 = timelineView2.audioBounds;
                            canvas2.drawRect(fMin2 - AndroidUtilities.m1124dp(8.0f), rectF15.top, fMin2, rectF15.bottom, timelineView2.ellipsizePaint);
                        }
                        canvas.restore();
                    } else {
                        f17 = f31;
                        f18 = f52;
                        f19 = f51;
                    }
                    canvas.restore();
                }
                f31 = f30;
                if (f31 >= 1.0f) {
                }
                canvas.restore();
            } else {
                f17 = f114;
                f18 = f52;
                f19 = f51;
                j = j16;
                d = 0.0d;
            }
            float f135 = f9;
            float f136 = f12;
            int i50 = timelineView2.f2237px;
            int i51 = timelineView2.f2236ph;
            long j33 = timelineView2.scroll;
            float f137 = j;
            int i52 = timelineView2.f2239sw;
            float f138 = i50 + i51 + (((f11 - j33) / f137) * i52);
            float f139 = i50 + i51 + (((f10 - j33) / f137) * i52);
            if (!timelineView2.collageTracks.isEmpty()) {
                f21 = f136;
                fMax3 = f15;
            } else if (timelineView2.hasAudio && timelineView2.videoTrack == null) {
                f21 = f136;
                fMax3 = f113;
            } else {
                f20 = f16;
                fMax3 = Math.max(f18, f20);
                f21 = f136;
                if (f113 <= d || f20 > d || f18 > d || f15 > d) {
                    if (timelineView2.videoTrack == null || timelineView2.hasRound || !timelineView2.collageTracks.isEmpty()) {
                        f22 = f17;
                        fLerp = 1.0f;
                    } else {
                        f22 = f17;
                        fLerp = AndroidUtilities.lerp(0.6f, 1.0f, f22) * f113;
                    }
                    Paint paint9 = paint6;
                    timelineView2.drawRegion(canvas, paint9, f21, f135, f138, f139, fLerp * fMax3);
                    track3 = timelineView2.videoTrack;
                    if (track3 == null && ((timelineView2.hasAudio || timelineView2.hasRound) && (f22 > 0.0f || f14 > 0.0f))) {
                        float f140 = (r3 - r4) - f8;
                        float f141 = timelineView2.f2235h - timelineView2.f2238py;
                        int i53 = timelineView2.f2236ph;
                        int i54 = timelineView2.f2237px;
                        float f142 = track3.left;
                        long j34 = track3.duration;
                        long j35 = timelineView2.scroll;
                        int i55 = timelineView2.f2239sw;
                        float f143 = i53 + i54 + ((((f142 * j34) - j35) / f137) * i55);
                        float f144 = i53 + i54 + ((((track3.right * j34) - j35) / f137) * i55);
                        timelineView2 = this;
                        canvas3 = canvas;
                        timelineView2.drawRegion(canvas3, paint9, f140, f141, f143, f144, 0.8f);
                    } else if (timelineView2.collageMain != null || timelineView2.collageTracks.size() <= i) {
                        canvas3 = canvas;
                    } else {
                        Track track8 = timelineView2.collageMain;
                        RectF rectF16 = track8.bounds;
                        float f145 = rectF16.top;
                        float f146 = rectF16.bottom;
                        int i56 = timelineView2.f2236ph;
                        int i57 = timelineView2.f2237px;
                        long j36 = track8.offset;
                        float f147 = track8.left;
                        long j37 = track8.duration;
                        long j38 = timelineView2.scroll;
                        int i58 = timelineView2.f2239sw;
                        float f148 = i56 + i57 + ((((j36 + (j37 * f147)) - j38) / f137) * i58);
                        float f149 = i56 + i57 + ((((j36 + (track8.right * j37)) - j38) / f137) * i58);
                        timelineView2 = this;
                        canvas3 = canvas;
                        timelineView2.drawRegion(canvas3, paint9, f145, f146, f148, f149, 0.8f);
                    }
                    timelineView = timelineView2;
                    if (timelineView.maxCount <= 1) {
                        Track track9 = timelineView.videoTrack;
                        if (track9 != null) {
                            long j39 = track9.duration;
                            float f150 = track9.right;
                            float f151 = track9.left;
                            long j40 = (long) (j39 * (f150 - f151));
                            if (j40 > 68999) {
                                float f152 = timelineView.f2237px + timelineView.f2236ph;
                                long j41 = timelineView.scroll;
                                float f153 = ((j39 * f151) - j41) / f137;
                                int i59 = timelineView.f2239sw;
                                float f154 = f152 + (i59 * f153);
                                float f155 = r4 + r11 + ((((j39 * f150) - j41) / f137) * i59);
                                canvas3.save();
                                int i60 = timelineView.f2235h;
                                int i61 = timelineView.f2238py;
                                canvas3.clipRect(f154, (i60 - i61) - f8, f155, i60 - i61);
                                timelineView.regionPaint.setAlpha((int) (AndroidUtilities.lerp(0.8f, 1.0f, f19) * 255.0f));
                                i = 1;
                                long j42 = 59000;
                                int iMin4 = (int) Math.min(timelineView.maxCount - 1, j40 / 59000);
                                int i62 = 1;
                                while (i62 <= iMin4) {
                                    if (Math.min(j42, j40 - (((long) i62) * j42)) < 1000) {
                                        break;
                                    }
                                    float f156 = timelineView.f2237px + timelineView.f2236ph;
                                    Track track10 = timelineView.videoTrack;
                                    float f157 = f156 + ((((((long) (track10.duration * track10.left)) + r2) - timelineView.scroll) / f137) * timelineView.f2239sw);
                                    Canvas canvas4 = canvas3;
                                    canvas4.drawRect(f157, (timelineView.f2235h - timelineView.f2238py) - f8, AndroidUtilities.m1124dp(1.0f) + f157, timelineView.f2235h - timelineView.f2238py, timelineView.regionPaint);
                                    canvas3 = canvas4;
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("#");
                                    i62++;
                                    sb.append(i62);
                                    canvas3.drawText(sb.toString(), f157 + AndroidUtilities.m1124dp(2.0f), ((timelineView.f2235h - timelineView.f2238py) - f8) + AndroidUtilities.m1124dp(14.0f), timelineView.countTextPaint);
                                    j42 = 59000;
                                }
                                canvas3.restore();
                            } else {
                                i = 1;
                            }
                        }
                    } else {
                        i = 1;
                    }
                    f23 = timelineView.loopProgress.set(0.0f);
                    float contentHeight = ((timelineView.f2235h - timelineView.getContentHeight()) + timelineView.f2238py) - AndroidUtilities.dpf2(2.3f);
                    float fDpf25 = AndroidUtilities.dpf2(4.3f) + (timelineView.f2235h - timelineView.f2238py);
                    if (f23 <= 0.0f) {
                        long j43 = timelineView.loopProgressFrom;
                        if (j43 == -1) {
                            Track track11 = timelineView.videoTrack;
                            if (track11 != null) {
                                f26 = track11.duration * track11.right;
                            } else {
                                Track track12 = timelineView.collageMain;
                                if (track12 != null) {
                                    f26 = track12.duration * (track12.right - track12.left);
                                } else {
                                    if (timelineView.hasRound) {
                                        f24 = timelineView.roundDuration;
                                        f25 = timelineView.roundRight;
                                    } else {
                                        f24 = timelineView.audioDuration;
                                        f25 = timelineView.audioRight;
                                    }
                                    j43 = (long) (f24 * f25);
                                }
                            }
                            j43 = (long) f26;
                        }
                        timelineView2 = this;
                        timelineView2.drawProgress(canvas3, contentHeight, fDpf25, j43, f23 * fMax3);
                    } else {
                        timelineView2 = timelineView;
                    }
                    timelineView2.drawProgress(canvas, contentHeight, fDpf25, timelineView2.progress, (1.0f - f23) * fMax3);
                }
                if (z) {
                    canvas.restore();
                }
            }
            f20 = f16;
            if (f113 <= d) {
                if (timelineView2.videoTrack == null) {
                    f22 = f17;
                    fLerp = 1.0f;
                    Paint paint92 = paint6;
                    timelineView2.drawRegion(canvas, paint92, f21, f135, f138, f139, fLerp * fMax3);
                    track3 = timelineView2.videoTrack;
                    if (track3 == null) {
                        if (timelineView2.collageMain != null) {
                            canvas3 = canvas;
                            timelineView = timelineView2;
                            if (timelineView.maxCount <= 1) {
                            }
                            f23 = timelineView.loopProgress.set(0.0f);
                            float contentHeight2 = ((timelineView.f2235h - timelineView.getContentHeight()) + timelineView.f2238py) - AndroidUtilities.dpf2(2.3f);
                            float fDpf252 = AndroidUtilities.dpf2(4.3f) + (timelineView.f2235h - timelineView.f2238py);
                            if (f23 <= 0.0f) {
                            }
                            timelineView2.drawProgress(canvas, contentHeight2, fDpf252, timelineView2.progress, (1.0f - f23) * fMax3);
                            if (z) {
                            }
                        }
                    }
                }
            }
        } else {
            i = 1;
            j = jMin;
        }
        if (timelineView2.dragged) {
            float f158 = 1.0f / (1000.0f / AndroidUtilities.screenRefreshRate);
            float f159 = timelineView2.dragSpeed;
            long jM1124dp = (long) ((AndroidUtilities.m1124dp(32.0f) / timelineView2.f2239sw) * j * f158 * f159);
            if (timelineView2.isCover) {
                timelineView2.dragSpeed = f159 + (f158 * 0.25f);
            }
            int i63 = timelineView2.pressHandle;
            if (i63 == 4 && (track2 = timelineView2.videoTrack) != null) {
                float f160 = track2.left;
                long j44 = timelineView2.scroll;
                long j45 = track2.duration;
                if (f160 < j44 / j45) {
                    i3 = -1;
                } else if (track2.right > (j44 + j) / j45) {
                    i3 = i;
                } else {
                    timelineView2.dragSpeed = 1.0f;
                    i3 = 0;
                }
                long j46 = ((long) i3) * jM1124dp;
                timelineView2.scroll = Utilities.clamp(j44 + j46, j45 - j, 0L);
                timelineView2.progress += j46;
                Track track13 = timelineView2.videoTrack;
                float f161 = (r3 - j44) / track13.duration;
                if (f161 > 0.0f) {
                    f3 = 1.0f;
                    fMax2 = Math.min(1.0f - track13.right, f161);
                } else {
                    f3 = 1.0f;
                    fMax2 = Math.max(0.0f - track13.left, f161);
                }
                Track track14 = timelineView2.videoTrack;
                track14.left = Utilities.clamp(track14.left + fMax2, f3, 0.0f);
                Track track15 = timelineView2.videoTrack;
                track15.right = Utilities.clamp(track15.right + fMax2, f3, 0.0f);
                TimelineDelegate timelineDelegate = timelineView2.delegate;
                if (timelineDelegate != null) {
                    timelineDelegate.onVideoLeftChange(false, timelineView2.videoTrack.left);
                    timelineView2.delegate.onVideoRightChange(false, timelineView2.videoTrack.right);
                }
                timelineView2.invalidate();
            } else if (i63 == 8) {
                float f162 = timelineView2.audioLeft;
                long j47 = timelineView2.audioOffset;
                float f163 = (-j47) + 100;
                long j48 = timelineView2.audioDuration;
                if (f162 < f163 / j48) {
                    i2 = -1;
                } else if (timelineView2.audioRight >= (((-j47) + j) - 100) / j48) {
                    i2 = i;
                } else {
                    timelineView2.dragSpeed = 1.0f;
                    i2 = 0;
                }
                if (i2 != 0) {
                    if (timelineView2.audioSelected && (track = timelineView2.videoTrack) != null) {
                        long j49 = j47 - (((long) i2) * jM1124dp);
                        float f164 = track.right;
                        long j50 = track.duration;
                        timelineView2.audioOffset = Utilities.clamp(j49, (long) ((f164 * j50) - (f162 * j48)), (long) ((track.left * j50) - (timelineView2.audioRight * j48)));
                    } else if (timelineView2.roundSelected && timelineView2.hasRound) {
                        long j51 = j47 - (((long) i2) * jM1124dp);
                        float f165 = timelineView2.roundRight;
                        long j52 = timelineView2.roundDuration;
                        timelineView2.audioOffset = Utilities.clamp(j51, (long) ((f165 * j52) - (f162 * j48)), (long) ((timelineView2.roundLeft * j52) - (timelineView2.audioRight * j48)));
                    } else {
                        timelineView2.audioOffset = Utilities.clamp(j47 - (((long) i2) * jM1124dp), 0L, -(j48 - Math.min(timelineView2.getBaseDuration(), timelineView2.getMaxScrollDuration())));
                    }
                    float f166 = (-(timelineView2.audioOffset - j47)) / timelineView2.audioDuration;
                    if (f166 > 0.0f) {
                        fMax = Math.min(1.0f - timelineView2.audioRight, f166);
                    } else {
                        fMax = Math.max(0.0f - timelineView2.audioLeft, f166);
                    }
                    if (timelineView2.videoTrack == null) {
                        float f167 = timelineView2.progress;
                        long j53 = timelineView2.audioDuration;
                        f2 = 0.0f;
                        timelineView2.progress = (long) Utilities.clamp(f167 + (j53 * fMax), j53, 0.0f);
                    } else {
                        f2 = 0.0f;
                    }
                    timelineView2.audioLeft = Utilities.clamp(timelineView2.audioLeft + fMax, 1.0f, f2);
                    timelineView2.audioRight = Utilities.clamp(timelineView2.audioRight + fMax, 1.0f, f2);
                    TimelineDelegate timelineDelegate2 = timelineView2.delegate;
                    if (timelineDelegate2 != null) {
                        timelineDelegate2.onAudioLeftChange(timelineView2.audioLeft);
                        timelineView2.delegate.onAudioRightChange(timelineView2.audioRight);
                        timelineView2.delegate.onProgressChange(timelineView2.progress, false);
                    }
                    timelineView2.invalidate();
                } else {
                    timelineView2.dragSpeed = 1.0f;
                }
            } else {
                timelineView2.dragSpeed = 1.0f;
            }
        } else {
            timelineView2.dragSpeed = 1.0f;
        }
        int contentHeight3 = timelineView2.getContentHeight();
        if (timelineView2.lastHeight != contentHeight3) {
            timelineView2.lastHeight = contentHeight3;
            Runnable runnable = timelineView2.onHeightChange;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    private void drawRegion(Canvas canvas, Paint paint, float f, float f2, float f3, float f4, float f5) {
        if (f5 <= 0.0f) {
            return;
        }
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(f3 - AndroidUtilities.m1124dp(10.0f), f, f4 + AndroidUtilities.m1124dp(10.0f), f2);
        canvas.saveLayerAlpha(0.0f, 0.0f, this.f2240w, this.f2235h, 255, 31);
        int i = (int) (255.0f * f5);
        this.regionPaint.setAlpha(i);
        canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(6.0f), this.regionPaint);
        rectF.inset(AndroidUtilities.m1124dp(this.isCover ? 2.5f : 10.0f), AndroidUtilities.m1124dp(2.0f));
        if (this.isCover) {
            canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(3.0f), AndroidUtilities.m1124dp(3.0f), this.regionCutPaint);
        } else {
            canvas.drawRect(rectF, this.regionCutPaint);
        }
        float fM1124dp = AndroidUtilities.m1124dp(2.0f);
        float fM1124dp2 = AndroidUtilities.m1124dp(10.0f);
        Paint paint2 = paint != null ? paint : this.regionHandlePaint;
        this.regionHandlePaint.setAlpha(255);
        paint2.setAlpha(i);
        float f6 = f + f2;
        float f7 = (f6 - fM1124dp2) / 2.0f;
        float f8 = (f6 + fM1124dp2) / 2.0f;
        rectF.set(f3 - ((AndroidUtilities.m1124dp(this.isCover ? 2.0f : 10.0f) - fM1124dp) / 2.0f), f7, f3 - ((AndroidUtilities.m1124dp(this.isCover ? 2.0f : 10.0f) + fM1124dp) / 2.0f), f8);
        if (!this.isCover) {
            canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(1.0f), paint2);
            if (paint != null && !this.isCover) {
                this.regionHandlePaint.setAlpha((int) (f5 * 48.0f));
                canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(1.0f), this.regionHandlePaint);
            }
        }
        rectF.set(f4 + ((AndroidUtilities.m1124dp(this.isCover ? 2.5f : 10.0f) - fM1124dp) / 2.0f), f7, f4 + ((AndroidUtilities.m1124dp(this.isCover ? 2.5f : 10.0f) + fM1124dp) / 2.0f), f8);
        if (!this.isCover) {
            canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(1.0f), paint2);
            if (paint != null) {
                this.regionHandlePaint.setAlpha((int) (f5 * 48.0f));
                canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(1.0f), this.regionHandlePaint);
            }
        }
        canvas.restore();
    }

    private void drawProgress(Canvas canvas, float f, float f2, long j, float f3) {
        float f4;
        if (this.isCover) {
            return;
        }
        long jMin = Math.min(getBaseDuration(), getMaxScrollDuration());
        float fClamp = Utilities.clamp(j, getBaseDuration(), 0L);
        Track track = this.collageMain;
        if (track != null) {
            f4 = track.offset + (track.left * track.duration);
        } else {
            f4 = this.videoTrack == null ? this.audioOffset : 0L;
        }
        float f5 = this.f2237px + this.f2236ph + (this.f2239sw * (((fClamp + f4) - this.scroll) / jMin));
        float f6 = (((f2 - f) / 2.0f) / 2.0f) * (1.0f - f3);
        float f7 = f + f6;
        float f8 = f2 - f6;
        this.progressShadowPaint.setAlpha((int) (38.0f * f3));
        this.progressWhitePaint.setAlpha((int) (f3 * 255.0f));
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(f5 - AndroidUtilities.dpf2(1.5f), f7, AndroidUtilities.dpf2(1.5f) + f5, f8);
        rectF.inset(-AndroidUtilities.dpf2(0.66f), -AndroidUtilities.dpf2(0.66f));
        canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(6.0f), this.progressShadowPaint);
        rectF.set(f5 - AndroidUtilities.dpf2(1.5f), f7, f5 + AndroidUtilities.dpf2(1.5f), f8);
        canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(6.0f), this.progressWhitePaint);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        this.audioAuthorPaint.setTextSize(AndroidUtilities.m1124dp(12.0f));
        this.audioTitlePaint.setTextSize(AndroidUtilities.m1124dp(12.0f));
        int iM1124dp = AndroidUtilities.m1124dp(12.0f);
        this.f2237px = iM1124dp;
        int iM1124dp2 = AndroidUtilities.m1124dp(5.0f);
        this.f2238py = iM1124dp2;
        setPadding(iM1124dp, iM1124dp2, AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(5.0f));
        int size = View.MeasureSpec.getSize(i);
        this.f2240w = size;
        int iM1124dp3 = AndroidUtilities.m1124dp(heightDp());
        this.f2235h = iM1124dp3;
        setMeasuredDimension(size, iM1124dp3);
        int iM1124dp4 = AndroidUtilities.m1124dp(10.0f);
        this.f2236ph = iM1124dp4;
        this.f2239sw = (this.f2240w - (iM1124dp4 * 2)) - (this.f2237px * 2);
        Track track = this.videoTrack;
        if (track != null && track.path != null && track.thumbs == null) {
            track.setupThumbs(false);
        }
        if (!this.collageTracks.isEmpty()) {
            ArrayList arrayList = this.collageTracks;
            int size2 = arrayList.size();
            int i3 = 0;
            while (i3 < size2) {
                Object obj = arrayList.get(i3);
                i3++;
                Track track2 = (Track) obj;
                if (track2.path != null && track2.thumbs == null) {
                    track2.setupThumbs(false);
                    track2.setupWaveform(false);
                }
            }
        }
        if (this.audioPath == null || this.waveform != null) {
            return;
        }
        setupAudioWaveform();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes7.dex */
    class VideoThumbsLoader {
        private Path clipPath;
        private int count;
        private boolean destroyed;
        private long duration;
        private volatile int frameHeight;
        private volatile long frameIterator;
        private volatile int frameWidth;
        private final boolean isRound;
        private long nextFrame;
        private final ArrayList frames = new ArrayList();
        private boolean loading = false;
        private final Paint bitmapPaint = new Paint(3);
        private MediaMetadataRetriever metadataRetriever = new MediaMetadataRetriever();

        public VideoThumbsLoader(boolean z, final String str, final int i, final int i2, final Long l, final long j, final long j2, final long j3, final Runnable runnable) {
            this.isRound = z;
            Utilities.themeQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0(str, l, j2, j3, i2, j, i, runnable);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(String str, Long l, long j, long j2, int i, long j3, int i2, Runnable runnable) {
            Exception exc;
            int i3;
            int i4;
            long maxScrollDuration = TimelineView.this.getMaxScrollDuration();
            try {
                this.metadataRetriever.setDataSource(str);
                String strExtractMetadata = this.metadataRetriever.extractMetadata(9);
                if (strExtractMetadata != null) {
                    maxScrollDuration = Long.parseLong(strExtractMetadata);
                    this.duration = maxScrollDuration;
                }
                String strExtractMetadata2 = this.metadataRetriever.extractMetadata(18);
                i4 = strExtractMetadata2 != null ? Integer.parseInt(strExtractMetadata2) : 0;
                try {
                    String strExtractMetadata3 = this.metadataRetriever.extractMetadata(19);
                    i = strExtractMetadata3 != null ? Integer.parseInt(strExtractMetadata3) : 0;
                    String strExtractMetadata4 = this.metadataRetriever.extractMetadata(24);
                    if (strExtractMetadata4 != null) {
                        int i5 = Integer.parseInt(strExtractMetadata4);
                        if (i5 == 90 || i5 == 270) {
                            int i6 = i;
                            i = i4;
                            i4 = i6;
                        }
                    }
                } catch (Exception e) {
                    int i7 = i;
                    i = i4;
                    exc = e;
                    i3 = i7;
                    this.metadataRetriever = null;
                    FileLog.m1136e(exc);
                    i4 = i;
                    i = i3;
                }
            } catch (Exception e2) {
                exc = e2;
                i3 = 0;
            }
            if (l != null) {
                maxScrollDuration = l.longValue();
                this.duration = maxScrollDuration;
            }
            if (j != -1 && j2 != -1) {
                maxScrollDuration = j2 - j;
            }
            float fClamp = Utilities.clamp((i4 == 0 || i == 0) ? 1.0f : i4 / i, 1.3333334f, 0.5625f);
            this.frameHeight = Math.max(1, i);
            this.frameWidth = Math.max(1, (int) Math.ceil(i * fClamp));
            int iCeil = (int) Math.ceil(((Math.max(maxScrollDuration, j3) / j3) * i2) / this.frameWidth);
            this.count = iCeil;
            this.frameIterator = (long) (maxScrollDuration / iCeil);
            this.nextFrame = -this.frameIterator;
            if (j != -1) {
                this.nextFrame = j - this.frameIterator;
            }
            load();
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
            }
        }

        public int getFrameWidth() {
            return this.frameWidth;
        }

        public long getDuration() {
            return this.duration;
        }

        public void load() {
            if (this.loading || this.metadataRetriever == null || this.frames.size() >= this.count) {
                return;
            }
            this.loading = true;
            this.nextFrame += this.frameIterator;
            Utilities.themeQueue.cancelRunnable(new TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0(this));
            Utilities.themeQueue.postRunnable(new TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0(this));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void retrieveFrame() {
            MediaMetadataRetriever mediaMetadataRetriever = this.metadataRetriever;
            if (mediaMetadataRetriever == null) {
                return;
            }
            final Bitmap frameAtTime = null;
            try {
                frameAtTime = mediaMetadataRetriever.getFrameAtTime(this.nextFrame * 1000, 2);
                if (frameAtTime != null) {
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.frameWidth, this.frameHeight, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    float fMax = Math.max(this.frameWidth / frameAtTime.getWidth(), this.frameHeight / frameAtTime.getHeight());
                    Rect rect = new Rect(0, 0, frameAtTime.getWidth(), frameAtTime.getHeight());
                    Rect rect2 = new Rect((int) ((bitmapCreateBitmap.getWidth() - (frameAtTime.getWidth() * fMax)) / 2.0f), (int) ((bitmapCreateBitmap.getHeight() - (frameAtTime.getHeight() * fMax)) / 2.0f), (int) ((bitmapCreateBitmap.getWidth() + (frameAtTime.getWidth() * fMax)) / 2.0f), (int) ((bitmapCreateBitmap.getHeight() + (frameAtTime.getHeight() * fMax)) / 2.0f));
                    if (this.isRound) {
                        if (this.clipPath == null) {
                            this.clipPath = new Path();
                        }
                        this.clipPath.rewind();
                        this.clipPath.addCircle(this.frameWidth / 2.0f, this.frameHeight / 2.0f, Math.min(this.frameWidth, this.frameHeight) / 2.0f, Path.Direction.CW);
                        canvas.clipPath(this.clipPath);
                    }
                    canvas.drawBitmap(frameAtTime, rect, rect2, this.bitmapPaint);
                    frameAtTime.recycle();
                    frameAtTime = bitmapCreateBitmap;
                }
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$retrieveFrame$1(frameAtTime);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: receiveFrame, reason: merged with bridge method [inline-methods] */
        public void lambda$retrieveFrame$1(Bitmap bitmap) {
            if (!this.loading || this.destroyed) {
                return;
            }
            this.frames.add(new BitmapFrame(bitmap));
            this.loading = false;
            TimelineView.this.invalidate();
        }

        public void destroy() {
            this.destroyed = true;
            Utilities.themeQueue.cancelRunnable(new TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0(this));
            ArrayList arrayList = this.frames;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                Bitmap bitmap = ((BitmapFrame) obj).bitmap;
                if (bitmap != null) {
                    bitmap.recycle();
                }
            }
            this.frames.clear();
            MediaMetadataRetriever mediaMetadataRetriever = this.metadataRetriever;
            if (mediaMetadataRetriever != null) {
                try {
                    mediaMetadataRetriever.release();
                } catch (Exception e) {
                    this.metadataRetriever = null;
                    FileLog.m1136e(e);
                }
            }
        }

        public class BitmapFrame {
            private final AnimatedFloat alpha;
            public Bitmap bitmap;

            public BitmapFrame(Bitmap bitmap) {
                this.alpha = new AnimatedFloat(0.0f, TimelineView.this, 0L, 240L, CubicBezierInterpolator.EASE_OUT_QUINT);
                this.bitmap = bitmap;
            }

            public float getAlpha() {
                return this.alpha.set(1.0f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes7.dex */
    class AudioWaveformLoader {
        private final AnimatedFloat animatedLoaded;
        private final int count;
        private final short[] data;
        private long duration;
        private final MediaExtractor extractor;
        private MediaFormat inputFormat;
        private short max;
        private FfmpegAudioWaveformLoader waveformLoader;
        private int loaded = 0;
        private final Object lock = new Object();
        private boolean stop = false;

        public AudioWaveformLoader(String str, int i) {
            this.animatedLoaded = new AnimatedFloat(TimelineView.this, 0L, 600L, CubicBezierInterpolator.EASE_OUT_QUINT);
            int i2 = 0;
            MediaExtractor mediaExtractor = new MediaExtractor();
            this.extractor = mediaExtractor;
            String string = null;
            try {
                mediaExtractor.setDataSource(str);
                int trackCount = mediaExtractor.getTrackCount();
                while (true) {
                    if (i2 < trackCount) {
                        MediaFormat trackFormat = this.extractor.getTrackFormat(i2);
                        string = trackFormat.getString("mime");
                        if (string != null && string.startsWith("audio/")) {
                            this.extractor.selectTrack(i2);
                            this.inputFormat = trackFormat;
                            break;
                        }
                        i2++;
                    } else {
                        break;
                    }
                }
                MediaFormat mediaFormat = this.inputFormat;
                if (mediaFormat != null) {
                    this.duration = mediaFormat.getLong("durationUs") / 1000000;
                }
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
            int iMin = Math.min(Math.round((((this.duration * 1000) / Math.min(TimelineView.this.videoTrack != null ? TimelineView.this.videoTrack.duration : !TimelineView.this.collageTracks.isEmpty() ? TimelineView.this.getBaseDuration() : TimelineView.this.hasRound ? TimelineView.this.roundDuration : this.duration * 1000, TimelineView.this.getMaxScrollDuration())) * i) / Math.round(AndroidUtilities.dpf2(3.3333f))), 4000);
            this.count = iMin;
            this.data = new short[iMin];
            if (this.duration <= 0 || this.inputFormat == null) {
                return;
            }
            if ("audio/mpeg".equals(string) || "audio/mp3".equals(string) || "audio/mp4a".equals(string) || MediaController.AUDIO_MIME_TYPE.equals(string)) {
                this.waveformLoader = new FfmpegAudioWaveformLoader(str, iMin, new Utilities.Callback2() { // from class: org.telegram.ui.Stories.recorder.TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$run$0((short[]) obj, ((Integer) obj2).intValue());
                    }
                });
            } else {
                Utilities.phoneBookQueue.postRunnable(new TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda1(this));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void run() {
            MediaCodec.BufferInfo bufferInfo;
            boolean z;
            long j;
            short s;
            try {
                int iRound = Math.round(((this.duration * ((long) this.inputFormat.getInteger("sample-rate"))) / this.count) / 5.0f);
                MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType(this.inputFormat.getString("mime"));
                if (mediaCodecCreateDecoderByType == null) {
                    return;
                }
                mediaCodecCreateDecoderByType.configure(this.inputFormat, (Surface) null, (MediaCrypto) null, 0);
                mediaCodecCreateDecoderByType.start();
                mediaCodecCreateDecoderByType.getInputBuffers();
                mediaCodecCreateDecoderByType.getOutputBuffers();
                final short[] sArr = new short[32];
                boolean z2 = false;
                int i = 0;
                int i2 = 0;
                int i3 = 0;
                short s2 = 0;
                int iDequeueOutputBuffer = -1;
                while (true) {
                    MediaCodec.BufferInfo bufferInfo2 = new MediaCodec.BufferInfo();
                    int iDequeueInputBuffer = mediaCodecCreateDecoderByType.dequeueInputBuffer(2500L);
                    if (iDequeueInputBuffer >= 0) {
                        int sampleData = this.extractor.readSampleData(mediaCodecCreateDecoderByType.getInputBuffer(iDequeueInputBuffer), 0);
                        if (sampleData < 0) {
                            j = 2500;
                            mediaCodecCreateDecoderByType.queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 4);
                            bufferInfo = bufferInfo2;
                            z = true;
                        } else {
                            z = z2;
                            j = 2500;
                            bufferInfo = bufferInfo2;
                            mediaCodecCreateDecoderByType.queueInputBuffer(iDequeueInputBuffer, 0, sampleData, this.extractor.getSampleTime(), 0);
                            this.extractor.advance();
                        }
                    } else {
                        bufferInfo = bufferInfo2;
                        z = z2;
                        j = 2500;
                    }
                    if (iDequeueOutputBuffer >= 0) {
                        mediaCodecCreateDecoderByType.getOutputBuffer(iDequeueOutputBuffer).position(0);
                    }
                    MediaCodec.BufferInfo bufferInfo3 = bufferInfo;
                    iDequeueOutputBuffer = mediaCodecCreateDecoderByType.dequeueOutputBuffer(bufferInfo3, j);
                    while (iDequeueOutputBuffer != -1 && !z) {
                        if (iDequeueOutputBuffer >= 0) {
                            ByteBuffer outputBuffer = mediaCodecCreateDecoderByType.getOutputBuffer(iDequeueOutputBuffer);
                            if (outputBuffer != null && bufferInfo3.size > 0) {
                                int i4 = i3;
                                while (outputBuffer.remaining() > 0) {
                                    short s3 = (short) ((outputBuffer.get() & 255) | ((outputBuffer.get() & 255) << 8));
                                    if (i4 >= iRound) {
                                        sArr[i - i2] = s2;
                                        i++;
                                        final int i5 = i - i2;
                                        if (i5 >= sArr.length || i >= this.count) {
                                            short[] sArr2 = new short[sArr.length];
                                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda2
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    this.f$0.lambda$run$0(sArr, i5);
                                                }
                                            });
                                            sArr = sArr2;
                                            i2 = i;
                                        }
                                        if (i >= this.data.length) {
                                            i3 = 0;
                                            s2 = 0;
                                            break;
                                        } else {
                                            i4 = 0;
                                            s = 0;
                                        }
                                    } else {
                                        s = s2;
                                    }
                                    s2 = s < s3 ? s3 : s;
                                    i4++;
                                    if (outputBuffer.remaining() < 8) {
                                        break;
                                    } else {
                                        outputBuffer.position(outputBuffer.position() + 8);
                                    }
                                }
                                i3 = i4;
                            }
                            mediaCodecCreateDecoderByType.releaseOutputBuffer(iDequeueOutputBuffer, false);
                            if ((bufferInfo3.flags & 4) != 0) {
                                z2 = true;
                                break;
                            }
                        } else if (iDequeueOutputBuffer == -3) {
                            mediaCodecCreateDecoderByType.getOutputBuffers();
                        }
                        iDequeueOutputBuffer = mediaCodecCreateDecoderByType.dequeueOutputBuffer(bufferInfo3, j);
                    }
                    z2 = z;
                    synchronized (this.lock) {
                        try {
                            if (this.stop) {
                                break;
                            } else if (z2 || i >= this.count) {
                                break;
                            }
                        } finally {
                        }
                    }
                }
                mediaCodecCreateDecoderByType.stop();
                mediaCodecCreateDecoderByType.release();
                this.extractor.release();
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: receiveData, reason: merged with bridge method [inline-methods] */
        public void lambda$run$0(short[] sArr, int i) {
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = this.loaded;
                int i4 = i3 + i2;
                short[] sArr2 = this.data;
                if (i4 >= sArr2.length) {
                    break;
                }
                sArr2[i3 + i2] = sArr[i2];
                short s = this.max;
                short s2 = sArr[i2];
                if (s < s2) {
                    this.max = s2;
                }
            }
            this.loaded += i;
            TimelineView.this.invalidate();
        }

        public void destroy() {
            FfmpegAudioWaveformLoader ffmpegAudioWaveformLoader = this.waveformLoader;
            if (ffmpegAudioWaveformLoader != null) {
                ffmpegAudioWaveformLoader.destroy();
            }
            Utilities.phoneBookQueue.cancelRunnable(new TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda1(this));
            synchronized (this.lock) {
                this.stop = true;
            }
        }

        public short getMaxBar() {
            return this.max;
        }

        public short getBar(int i) {
            return this.data[i];
        }

        public int getLoadedCount() {
            return this.loaded;
        }

        public int getCount() {
            return this.count;
        }
    }

    public int getTimelineHeight() {
        return AndroidUtilities.lerp(this.f2238py + AndroidUtilities.m1124dp(28.0f) + this.f2238py, getContentHeight(), this.openT.get());
    }

    public int getContentHeight() {
        return (int) (this.f2238py + (this.videoTrack != null ? getVideoHeight() + AndroidUtilities.m1124dp(4.0f) : 0.0f) + (this.collageTracks.isEmpty() ? 0.0f : getCollageHeight() + AndroidUtilities.m1124dp(4.0f)) + (this.hasRound ? getRoundHeight() + AndroidUtilities.m1124dp(4.0f) : 0.0f) + (this.hasAudio ? AndroidUtilities.m1124dp(4.0f) + getAudioHeight() : 0.0f) + this.f2238py);
    }
}
