package org.telegram.ui.Stories.recorder;

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
import kotlin.UByte;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.BlurringShader;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.Scroller;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Stories.recorder.TimelineView;

/* JADX INFO: loaded from: classes7.dex */
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
    private final ArrayList<Track> collageTracks;
    private final ArrayList<AudioWaveformLoader> collageWaveforms;
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
    private int f1240h;
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
    private int ph;
    private int pressCollageIndex;
    private int pressHandle;
    private int pressHandleCollageIndex;
    private long pressTime;
    private int pressType;
    private final View previewContainer;
    private long progress;
    private final Paint progressShadowPaint;
    private final Paint progressWhitePaint;
    private int px;
    private int py;
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
    private int sw;
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
    private int f1241w;
    private int wasScrollX;
    private AudioWaveformLoader waveform;
    private boolean waveformIsLoaded;
    private final AnimatedFloat waveformMax;
    private final Paint waveformPaint;
    private final WaveformPath waveformPath;

    public interface TimelineDelegate {
        default void onAudioLeftChange(float f) {
        }

        default void onAudioOffsetChange(long j) {
        }

        default void onAudioRemove() {
        }

        default void onAudioRightChange(float f) {
        }

        default void onAudioVolumeChange(float f) {
        }

        default void onProgressChange(long j, boolean z) {
        }

        default void onProgressDragChange(boolean z) {
        }

        default void onRoundLeftChange(float f) {
        }

        default void onRoundOffsetChange(long j) {
        }

        default void onRoundRemove() {
        }

        default void onRoundRightChange(float f) {
        }

        default void onRoundSelectChange(boolean z) {
        }

        default void onRoundVolumeChange(float f) {
        }

        default void onVideoLeftChange(int i, float f) {
        }

        void onVideoLeftChange(boolean z, float f);

        default void onVideoOffsetChange(int i, long j) {
        }

        default void onVideoRightChange(int i, float f) {
        }

        default void onVideoRightChange(boolean z, float f) {
        }

        default void onVideoSelected(int i) {
        }

        default void onVideoVolumeChange(float f) {
        }

        default void onVideoVolumeChange(int i, float f) {
        }
    }

    public static int heightDp() {
        return 388;
    }

    public long getMaxScrollDuration() {
        if (this.collageTracks.isEmpty()) {
            return Math.max(120000L, (long) (maxSelectDuration() * 1.5f));
        }
        return 70000L;
    }

    public void setOnTimelineClick(Runnable runnable) {
        this.onTimelineClick = runnable;
    }

    public void setOnHeightChange(Runnable runnable) {
        this.onHeightChange = runnable;
    }

    public class Track {
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
                    int i = (timelineView.f1241w - TimelineView.this.px) - TimelineView.this.px;
                    int iDp = AndroidUtilities.dp(38.0f);
                    long j = this.duration;
                    this.thumbs = timelineView.new VideoThumbsLoader(z2, str, i, iDp, j > 2 ? Long.valueOf(j) : null, TimelineView.this.getMaxScrollDuration(), TimelineView.this.coverStart, TimelineView.this.coverEnd, new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$Track$$ExternalSyntheticLambda0
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
        this.collageWaveforms = new ArrayList<>();
        this.collageTracks = new ArrayList<>();
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
        textPaint2.setTextSize(AndroidUtilities.dp(12.0f));
        textPaint2.setTypeface(AndroidUtilities.bold());
        textPaint2.setColor(-1);
        textPaint3.setTextSize(AndroidUtilities.dp(12.0f));
        textPaint3.setColor(-1);
        paint6.setColor(1090519039);
        paint8.setShader(linearGradient);
        paint8.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        paint.setColor(-1);
        paint.setShadowLayer(AndroidUtilities.dp(1.0f), 0.0f, AndroidUtilities.dp(1.0f), 436207616);
        textPaint.setTextSize(AndroidUtilities.dp(12.0f));
        textPaint.setColor(-1);
        textPaint.setShadowLayer(AndroidUtilities.dp(2.0f), 0.0f, AndroidUtilities.dp(2.0f), TLObject.FLAG_30);
        textPaint.setTypeface(AndroidUtilities.bold());
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        paint3.setColor(-16777216);
        paint5.setColor(-1);
        paint4.setColor(637534208);
        this.timelineText = new Text(LocaleController.getString(C2665R.string.StoryTimeline), 12.0f, AndroidUtilities.bold());
        Drawable drawableMutate = getContext().getResources().getDrawable(C2665R.drawable.timeline).mutate();
        this.timelineIcon = drawableMutate;
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, mode));
        Drawable drawableMutate2 = getContext().getResources().getDrawable(C2665R.drawable.filled_widget_music).mutate();
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
                int i3 = this.f1241w;
                int i4 = this.px;
                int i5 = this.ph;
                ItemOptions.makeOptions(viewGroup, resourcesProvider, this).addView(onValueChange).addSpaceGap().add(C2665R.drawable.msg_delete, LocaleController.getString(C2665R.string.StoryAudioRemove), new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$1();
                    }
                }).setGravity(5).forceTop(true).translate((-(this.f1241w - Math.min((i3 - i4) - i5, (i4 + i5) + ((((this.audioOffset - this.scroll) + (AndroidUtilities.lerp(this.audioRight, 1.0f, this.audioSelectedT.get()) * this.audioDuration)) / jMin) * this.sw)))) + AndroidUtilities.dp(18.0f), this.audioBounds.top).show().setBlurBackground(blurManager, -view.getX(), -view.getY());
                performHapticFeedback(0, 1);
            } else if (i2 == 1 && this.hasRound) {
                SliderView onValueChange2 = new SliderView(getContext(), 0).setMinMax(0.0f, 1.5f).setValue(this.roundVolume).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda6
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$new$2((Float) obj);
                    }
                });
                long jMin2 = Math.min(getBaseDuration(), getMaxScrollDuration());
                int i6 = this.f1241w;
                int i7 = this.px;
                int i8 = this.ph;
                ItemOptions.makeOptions(viewGroup, resourcesProvider, this).addView(onValueChange2).addSpaceGap().add(C2665R.drawable.msg_delete, LocaleController.getString(C2665R.string.StoryRoundRemove), new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$3();
                    }
                }).setGravity(5).forceTop(true).translate((-(this.f1241w - Math.min((i6 - i7) - i8, (i7 + i8) + ((((this.roundOffset - this.scroll) + (AndroidUtilities.lerp(this.roundRight, 1.0f, this.roundSelectedT.get()) * this.roundDuration)) / jMin2) * this.sw)))) + AndroidUtilities.dp(18.0f), this.roundBounds.top).show().setBlurBackground(blurManager, -view.getX(), -view.getY());
                performHapticFeedback(0, 1);
            } else if (i2 == 0 && this.videoTrack != null) {
                ItemOptions.makeOptions(viewGroup, resourcesProvider, this).addView(new SliderView(getContext(), 0).setMinMax(0.0f, 1.5f).setValue(this.videoTrack.volume).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda8
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$new$4((Float) obj);
                    }
                })).setGravity(5).forceTop(true).translate(AndroidUtilities.dp(18.0f), this.videoBounds.top).show().setBlurBackground(blurManager, -view.getX(), -view.getY());
                performHapticFeedback(0, 1);
            } else {
                if (i2 != 3 || (i = this.pressCollageIndex) < 0 || i >= this.collageTracks.size()) {
                    return;
                }
                final Track track = this.collageTracks.get(this.pressCollageIndex);
                ItemOptions.makeOptions(viewGroup, resourcesProvider, this).addView(new SliderView(getContext(), 0).setMinMax(0.0f, 1.5f).setValue(track.volume).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda9
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$new$5(track, (Float) obj);
                    }
                })).setGravity(5).forceTop(true).translate(AndroidUtilities.dp(18.0f), track.bounds.top).show().setBlurBackground(blurManager, -view.getX(), -view.getY());
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
        ArrayList<Track> arrayList2;
        ArrayList<AudioWaveformLoader> arrayList3;
        VideoThumbsLoader videoThumbsLoader;
        int i = 0;
        while (true) {
            int size = this.collageTracks.size();
            arrayList2 = this.collageTracks;
            if (i >= size) {
                break;
            }
            Track track = arrayList2.get(i);
            if (track != null && (videoThumbsLoader = track.thumbs) != null) {
                videoThumbsLoader.destroy();
            }
            i++;
        }
        arrayList2.clear();
        int i2 = 0;
        while (true) {
            int size2 = this.collageWaveforms.size();
            arrayList3 = this.collageWaveforms;
            if (i2 >= size2) {
                break;
            }
            AudioWaveformLoader audioWaveformLoader = arrayList3.get(i2);
            if (audioWaveformLoader != null) {
                audioWaveformLoader.destroy();
            }
            i2++;
        }
        arrayList3.clear();
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
        Track track = this.collageTracks.isEmpty() ? null : this.collageTracks.get(0);
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
        if (getMeasuredWidth() <= 0 || this.roundThumbs != null) {
            return;
        }
        Track track = this.videoTrack;
        if (track == null || track.duration >= 1) {
            String str = this.roundPath;
            int i = this.f1241w;
            int i2 = this.px;
            int i3 = (i - i2) - i2;
            int iDp = AndroidUtilities.dp(38.0f);
            long j = this.roundDuration;
            Long lValueOf = j > 2 ? Long.valueOf(j) : null;
            Track track2 = this.videoTrack;
            this.roundThumbs = new VideoThumbsLoader(false, str, i3, iDp, lValueOf, track2 != null ? track2.duration : getMaxScrollDuration(), -1L, -1L, new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setupRoundThumbs$8();
                }
            });
        }
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
        float f2 = this.px + this.ph + (this.sw * (((fClamp + (track != null ? track.offset + (track.left * track.duration) : this.videoTrack == null ? this.audioOffset : 0L)) - this.scroll) / f));
        if (!this.isCover && x >= f2 - AndroidUtilities.dp(12.0f) && x <= f2 + AndroidUtilities.dp(12.0f)) {
            return 0;
        }
        boolean z2 = this.videoTrack != null && y > (((float) (this.f1240h - this.py)) - getVideoHeight()) - ((float) AndroidUtilities.dp(2.0f));
        boolean z3 = !this.collageTracks.isEmpty() && y > ((((((float) (this.f1240h - this.py)) - getVideoHeight()) - ((float) AndroidUtilities.dp(4.0f))) - getCollageHeight()) - ((float) AndroidUtilities.dp(4.0f))) - ((float) AndroidUtilities.dp(2.0f)) && y < (((float) (this.f1240h - this.py)) - getVideoHeight()) - ((float) AndroidUtilities.dp(2.0f));
        if (this.hasRound) {
            if (y > (((((((this.f1240h - this.py) - getVideoHeight()) - AndroidUtilities.dp(4.0f)) - getCollageHeight()) - AndroidUtilities.dp(this.collageTracks.isEmpty() ? 0.0f : 4.0f)) - getRoundHeight()) - AndroidUtilities.dp(4.0f)) - AndroidUtilities.dp(2.0f)) {
                z = y < (((((float) (this.f1240h - this.py)) - getVideoHeight()) - ((float) AndroidUtilities.dp(2.0f))) - getCollageHeight()) - ((float) AndroidUtilities.dp(this.collageTracks.isEmpty() ? 0.0f : 4.0f));
            }
        }
        if (z3) {
            for (int i3 = 0; i3 < this.collageTracks.size(); i3++) {
                Track track2 = this.collageTracks.get(i3);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(track2.bounds);
                rectF.inset(-AndroidUtilities.dp(2.0f), -AndroidUtilities.dp(2.0f));
                if (rectF.contains(x, y)) {
                    int i4 = this.px;
                    int i5 = this.ph;
                    long j = track2.offset;
                    int i6 = this.sw;
                    float f3 = i4 + i5 + ((j / f) * i6);
                    float f4 = track2.left;
                    long j2 = track2.duration;
                    float f5 = i4 + i5 + (((j + (f4 * j2)) / f) * i6);
                    float f6 = i4 + i5 + (((j + (track2.right * j2)) / f) * i6);
                    float f7 = i4 + i5 + (((j + j2) / f) * i6);
                    this.pressHandleCollageIndex = i3;
                    if (x >= f5 - AndroidUtilities.dp(15.0f) && x <= AndroidUtilities.dp(5.0f) + f5) {
                        return 13;
                    }
                    if (x >= f6 - AndroidUtilities.dp(5.0f) && x <= AndroidUtilities.dp(15.0f) + f6) {
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
                int i7 = this.px;
                int i8 = this.ph;
                Track track3 = this.videoTrack;
                float f8 = track3.left;
                long j3 = track3.duration;
                long j4 = this.scroll;
                int i9 = this.sw;
                float f9 = i7 + i8 + ((((f8 * j3) - j4) / f) * i9);
                float f10 = i7 + i8 + ((((track3.right * j3) - j4) / f) * i9);
                if (this.isCover) {
                    return (getBaseDuration() < getMaxScrollDuration() || (x >= f9 - ((float) AndroidUtilities.dp(15.0f)) && x <= f10 + ((float) AndroidUtilities.dp(15.0f)))) ? 4 : 1;
                }
                if (x >= f9 - AndroidUtilities.dp(15.0f) && x <= AndroidUtilities.dp(5.0f) + f9) {
                    return 2;
                }
                if (x >= f10 - AndroidUtilities.dp(5.0f) && x <= AndroidUtilities.dp(15.0f) + f10) {
                    return 3;
                }
                if (x >= f9 && x <= f10) {
                    Track track4 = this.videoTrack;
                    if (track4.left > 0.01f || track4.right < 0.99f) {
                        return 4;
                    }
                }
            } else if (z) {
                int i10 = this.px;
                int i11 = this.ph;
                long j5 = this.roundOffset;
                float f11 = this.roundLeft;
                long j6 = this.roundDuration;
                long j7 = this.scroll;
                float f12 = ((j5 + (f11 * j6)) - j7) / f;
                int i12 = this.sw;
                float f13 = i10 + i11 + (f12 * i12);
                float f14 = i10 + i11 + ((((j5 + (this.roundRight * j6)) - j7) / f) * i12);
                if (this.roundSelected || this.videoTrack == null) {
                    if (x >= f13 - AndroidUtilities.dp(15.0f) && x <= AndroidUtilities.dp(5.0f) + f13) {
                        return 10;
                    }
                    if (x >= f14 - AndroidUtilities.dp(5.0f) && x <= AndroidUtilities.dp(15.0f) + f14) {
                        return 11;
                    }
                    if (x >= f13 && x <= f14) {
                        return this.videoTrack == null ? 12 : 9;
                    }
                    int i13 = this.px;
                    int i14 = this.ph;
                    long j8 = this.roundOffset;
                    long j9 = this.scroll;
                    int i15 = this.sw;
                    f13 = i13 + i14 + (((j8 - j9) / f) * i15);
                    f14 = i13 + i14 + ((((j8 + this.roundDuration) - j9) / f) * i15);
                }
                if (x >= f13 && x <= f14) {
                    return 9;
                }
            } else if (this.hasAudio) {
                int i16 = this.px;
                int i17 = this.ph;
                long j10 = this.audioOffset;
                float f15 = this.audioLeft;
                long j11 = this.audioDuration;
                long j12 = this.scroll;
                float f16 = ((j10 + (f15 * j11)) - j12) / f;
                int i18 = this.sw;
                float f17 = i16 + i17 + (f16 * i18);
                float f18 = i16 + i17 + ((((j10 + (this.audioRight * j11)) - j12) / f) * i18);
                if (this.audioSelected || (this.videoTrack == null && !this.hasRound)) {
                    if (x >= f17 - AndroidUtilities.dp(15.0f) && x <= AndroidUtilities.dp(5.0f) + f17) {
                        return 6;
                    }
                    if (x >= f18 - AndroidUtilities.dp(5.0f) && x <= AndroidUtilities.dp(15.0f) + f18) {
                        return 7;
                    }
                    if (x >= f17 && x <= f18) {
                        return this.videoTrack == null ? 8 : 5;
                    }
                    int i19 = this.px;
                    int i20 = this.ph;
                    long j13 = this.audioOffset;
                    long j14 = this.scroll;
                    int i21 = this.sw;
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
        float f2 = ((f - this.px) - this.ph) / this.sw;
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
        return AndroidUtilities.lerp(AndroidUtilities.dp(28.0f), AndroidUtilities.dp(38.0f), r2.selectedT.get());
    }

    private float getCollageHeight() {
        if (this.collageTracks.isEmpty()) {
            return 0.0f;
        }
        float fLerp = 0.0f;
        for (int i = 0; i < this.collageTracks.size(); i++) {
            if (fLerp > 0.0f) {
                fLerp += AndroidUtilities.dp(4.0f);
            }
            fLerp += AndroidUtilities.lerp(AndroidUtilities.dp(28.0f), AndroidUtilities.dp(38.0f), this.collageTracks.get(i).selectedT.get());
        }
        return fLerp;
    }

    private float getAudioHeight() {
        return AndroidUtilities.lerp(AndroidUtilities.dp(28.0f), AndroidUtilities.dp(38.0f), this.audioSelectedT.set(this.audioSelected));
    }

    private float getRoundHeight() {
        if (!this.hasRound) {
            return 0.0f;
        }
        return AndroidUtilities.lerp(AndroidUtilities.dp(28.0f), AndroidUtilities.dp(38.0f), this.roundSelectedT.set(this.roundSelected));
    }

    /* JADX WARN: Removed duplicated region for block: B:219:0x04f9  */
    /* JADX WARN: Removed duplicated region for block: B:457:0x0aee  */
    /* JADX WARN: Removed duplicated region for block: B:564:0x0d8c  */
    /* JADX WARN: Removed duplicated region for block: B:567:0x0d96 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:573:0x0db2  */
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
        long j3;
        long j4;
        float f;
        VelocityTracker velocityTracker3;
        long j5;
        long j6;
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
        float f2;
        boolean z5;
        float fMax5;
        int i2;
        float fMax6;
        float f3;
        float f4;
        int i3;
        float f5;
        float f6;
        if (this.videoTrack == null && this.collageTracks.isEmpty() && !this.hasAudio && !this.hasRound) {
            return false;
        }
        float timelineHeight = this.f1240h - getTimelineHeight();
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
            int roundHeight = this.f1240h - this.py;
            if (!this.open && this.timelineBounds.contains(motionEvent.getX(), motionEvent.getY())) {
                this.pressType = 10;
                this.pressHandle = -1;
            }
            float f7 = 4.0f;
            float f8 = 2.0f;
            if (this.pressType == -1 && this.videoTrack != null) {
                float f9 = roundHeight;
                if (motionEvent.getY() < f9 && motionEvent.getY() > (f9 - getVideoHeight()) - AndroidUtilities.dp(2.0f)) {
                    this.pressType = 0;
                }
                roundHeight = (int) (f9 - (getVideoHeight() + AndroidUtilities.dp(4.0f)));
            }
            if (this.pressType == -1 && !this.collageTracks.isEmpty()) {
                int i4 = 0;
                while (i4 < this.collageTracks.size()) {
                    f3 = f7;
                    float fLerp = AndroidUtilities.lerp(AndroidUtilities.dp(28.0f), AndroidUtilities.dp(38.0f), this.collageTracks.get(i4).selectedT.get());
                    float f10 = roundHeight;
                    if (motionEvent.getY() < f10) {
                        f4 = f8;
                        if (motionEvent.getY() > (f10 - fLerp) - AndroidUtilities.dp(f4)) {
                            this.pressType = 3;
                            this.pressCollageIndex = i4;
                            break;
                        }
                    } else {
                        f4 = f8;
                    }
                    roundHeight = (int) (f10 - (fLerp + AndroidUtilities.dp(f3)));
                    i4++;
                    f7 = f3;
                    f8 = f4;
                }
                f3 = f7;
                f4 = f8;
                if (this.pressType == -1) {
                    f6 = roundHeight;
                    if (motionEvent.getY() < f6) {
                        this.pressType = 1;
                    }
                    roundHeight = (int) (f6 - (getRoundHeight() + AndroidUtilities.dp(f3)));
                }
                if (this.pressType == -1) {
                    f5 = roundHeight;
                    if (motionEvent.getY() < f5) {
                        this.pressType = 2;
                    }
                    getAudioHeight();
                    AndroidUtilities.dp(f3);
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
                f3 = f7;
                f4 = f8;
                if (this.pressType == -1 && this.hasRound) {
                    f6 = roundHeight;
                    if (motionEvent.getY() < f6 && motionEvent.getY() > (f6 - getRoundHeight()) - AndroidUtilities.dp(f4)) {
                        this.pressType = 1;
                    }
                    roundHeight = (int) (f6 - (getRoundHeight() + AndroidUtilities.dp(f3)));
                }
                if (this.pressType == -1 && this.hasAudio) {
                    f5 = roundHeight;
                    if (motionEvent.getY() < f5 && motionEvent.getY() > (f5 - getAudioHeight()) - AndroidUtilities.dp(f4)) {
                        this.pressType = 2;
                    }
                    getAudioHeight();
                    AndroidUtilities.dp(f3);
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
                    this.scroll = (long) Utilities.clamp(this.scroll - ((x / this.sw) * jMin), track.duration - jMin, 0.0f);
                    invalidate();
                    if (!this.dragged) {
                        this.dragSpeed = 1.0f;
                    }
                    this.dragged = true;
                    this.draggingProgress = false;
                } else if (track != null && ((i2 = this.pressHandle) == 2 || i2 == 3 || i2 == 4)) {
                    float f11 = jMin;
                    long j7 = track.duration;
                    float f12 = (x / this.sw) * (f11 / j7);
                    if (i2 == 2) {
                        track.left = Utilities.clamp(track.left + f12, track.right - (1000.0f / j7), 0.0f);
                        TimelineDelegate timelineDelegate3 = this.delegate;
                        if (timelineDelegate3 != null) {
                            timelineDelegate3.onVideoLeftChange(false, this.videoTrack.left);
                        }
                        Track track2 = this.videoTrack;
                        float f13 = track2.right - track2.left;
                        float fMaxSelectDuration = maxSelectDuration();
                        Track track3 = this.videoTrack;
                        if (f13 > fMaxSelectDuration / track3.duration) {
                            track3.right = Math.min(1.0f, track3.left + (maxSelectDuration() / this.videoTrack.duration));
                            TimelineDelegate timelineDelegate4 = this.delegate;
                            if (timelineDelegate4 != null) {
                                timelineDelegate4.onVideoRightChange(false, this.videoTrack.right);
                            }
                        }
                    } else if (i2 == 3) {
                        track.right = Utilities.clamp(track.right + f12, 1.0f, track.left + (1000.0f / j7));
                        TimelineDelegate timelineDelegate5 = this.delegate;
                        if (timelineDelegate5 != null) {
                            timelineDelegate5.onVideoRightChange(false, this.videoTrack.right);
                        }
                        Track track4 = this.videoTrack;
                        float f14 = track4.right - track4.left;
                        float fMaxSelectDuration2 = maxSelectDuration();
                        Track track5 = this.videoTrack;
                        if (f14 > fMaxSelectDuration2 / track5.duration) {
                            track5.left = Math.max(0.0f, track5.right - (maxSelectDuration() / this.videoTrack.duration));
                            TimelineDelegate timelineDelegate6 = this.delegate;
                            if (timelineDelegate6 != null) {
                                timelineDelegate6.onVideoLeftChange(false, this.videoTrack.left);
                            }
                        }
                    } else if (i2 == 4) {
                        if (f12 > 0.0f) {
                            fMax6 = Math.min(1.0f - track.right, f12);
                        } else {
                            fMax6 = Math.max(-track.left, f12);
                        }
                        Track track6 = this.videoTrack;
                        float f15 = track6.left + fMax6;
                        track6.left = f15;
                        track6.right += fMax6;
                        TimelineDelegate timelineDelegate7 = this.delegate;
                        if (timelineDelegate7 != null) {
                            timelineDelegate7.onVideoLeftChange(false, f15);
                            this.delegate.onVideoRightChange(false, this.videoTrack.right);
                        }
                    }
                    long j8 = this.progress;
                    Track track7 = this.videoTrack;
                    long j9 = track7.duration;
                    float f16 = j8 / j9;
                    float f17 = track7.left;
                    if (f16 < f17 || j8 / j9 > track7.right) {
                        long j10 = (long) (f17 * j9);
                        this.progress = j10;
                        TimelineDelegate timelineDelegate8 = this.delegate;
                        if (timelineDelegate8 != null) {
                            timelineDelegate8.onProgressChange(j10, false);
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
                        float f18 = (x / this.sw) * (jMin / this.audioDuration);
                        if (i5 == 6) {
                            float fMinAudioSelect = this.audioRight - (minAudioSelect() / this.audioDuration);
                            float fMax7 = Math.max(0L, this.scroll - this.audioOffset);
                            long j11 = this.audioDuration;
                            float f19 = fMax7 / j11;
                            Track track8 = this.videoTrack;
                            if (track8 != null) {
                                fMax2 = Math.max(f19, (((track8.left * track8.duration) + this.scroll) - this.audioOffset) / j11);
                            } else {
                                Track track9 = this.collageMain;
                                if (track9 != null) {
                                    fMax2 = Math.max(f19, (((track9.left * track9.duration) + this.scroll) - this.audioOffset) / j11);
                                } else if (this.hasRound) {
                                    fMax2 = Math.max(f19, (((this.roundLeft * this.roundDuration) + this.scroll) - this.audioOffset) / j11);
                                } else {
                                    fMax2 = Math.max(f19, this.audioRight - (maxSelectDuration() / this.audioDuration));
                                    if (!this.hadDragChange && f18 < 0.0f && this.audioLeft <= this.audioRight - (maxSelectDuration() / this.audioDuration)) {
                                        this.pressHandle = 8;
                                    }
                                }
                            }
                            float f20 = this.audioLeft;
                            float fClamp = Utilities.clamp(f20 + f18, fMinAudioSelect, fMax2);
                            this.audioLeft = fClamp;
                            if (Math.abs(f20 - fClamp) > 0.01f) {
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
                            float f21 = this.audioLeft;
                            float fMinAudioSelect2 = minAudioSelect();
                            long j12 = this.audioDuration;
                            float f22 = f21 + (fMinAudioSelect2 / j12);
                            Track track10 = this.videoTrack;
                            if (track10 != null) {
                                fMin = Math.min(fMin3, (((track10.right * track10.duration) + this.scroll) - this.audioOffset) / j12);
                            } else {
                                Track track11 = this.collageMain;
                                if (track11 != null) {
                                    fMin = Math.min(fMin3, (((track11.right * track11.duration) + this.scroll) - this.audioOffset) / j12);
                                } else if (this.hasRound) {
                                    fMin = Math.min(fMin3, (((this.roundRight * this.roundDuration) + this.scroll) - this.audioOffset) / j12);
                                } else {
                                    fMin = Math.min(fMin3, this.audioLeft + (maxSelectDuration() / this.audioDuration));
                                    if (!this.hadDragChange && f18 > 0.0f && this.audioRight >= this.audioLeft + (maxSelectDuration() / this.audioDuration)) {
                                        this.pressHandle = 8;
                                    }
                                }
                            }
                            float f23 = this.audioRight;
                            float fClamp2 = Utilities.clamp(f23 + f18, fMin, f22);
                            this.audioRight = fClamp2;
                            if (Math.abs(f23 - fClamp2) > 0.01f) {
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
                            if (f18 > 0.0f) {
                                fMax = Math.min(Math.max(0.0f, fMin4 - this.audioRight), f18);
                            } else {
                                fMax = Math.max(Math.min(0.0f, fMax8 - this.audioLeft), f18);
                            }
                            float f24 = this.audioLeft + fMax;
                            this.audioLeft = f24;
                            this.audioRight += fMax;
                            TimelineDelegate timelineDelegate12 = this.delegate;
                            if (timelineDelegate12 != null) {
                                timelineDelegate12.onAudioLeftChange(f24);
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
                        float f25 = (x / this.sw) * (jMin / this.roundDuration);
                        if (i5 == 10) {
                            float fMinAudioSelect3 = this.roundRight - (minAudioSelect() / this.roundDuration);
                            float fMax9 = Math.max(0L, this.scroll - this.roundOffset);
                            long j13 = this.roundDuration;
                            float f26 = fMax9 / j13;
                            Track track12 = this.videoTrack;
                            if (track12 != null) {
                                fMax4 = Math.max(f26, (((track12.left * track12.duration) + this.scroll) - this.roundOffset) / j13);
                            } else {
                                Track track13 = this.collageMain;
                                if (track13 != null) {
                                    fMax4 = Math.max(f26, (((track13.left * track13.duration) + this.scroll) - this.roundOffset) / j13);
                                } else {
                                    fMax4 = Math.max(f26, this.roundRight - (maxSelectDuration() / this.roundDuration));
                                    if (!this.hadDragChange && f25 < 0.0f && this.roundLeft <= this.roundRight - (maxSelectDuration() / this.roundDuration)) {
                                        this.pressHandle = 8;
                                    }
                                }
                            }
                            float f27 = this.roundLeft;
                            float fClamp3 = Utilities.clamp(f27 + f25, fMinAudioSelect3, fMax4);
                            this.roundLeft = fClamp3;
                            if (Math.abs(f27 - fClamp3) > 0.01f) {
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
                            float f28 = this.roundLeft;
                            float fMinAudioSelect4 = minAudioSelect();
                            long j14 = this.roundDuration;
                            float f29 = f28 + (fMinAudioSelect4 / j14);
                            Track track14 = this.videoTrack;
                            if (track14 != null) {
                                fMin5 = Math.min(fMin5, (((track14.right * track14.duration) + this.scroll) - this.roundOffset) / j14);
                            }
                            Track track15 = this.collageMain;
                            if (track15 != null) {
                                fMin2 = Math.min(fMin5, (((track15.right * track15.duration) + this.scroll) - this.roundOffset) / this.roundDuration);
                            } else {
                                fMin2 = Math.min(fMin5, this.roundLeft + (maxSelectDuration() / this.roundDuration));
                                if (!this.hadDragChange && f25 > 0.0f && this.roundRight >= this.roundLeft + (maxSelectDuration() / this.roundDuration)) {
                                    this.pressHandle = 8;
                                }
                            }
                            float f30 = this.roundRight;
                            float fClamp4 = Utilities.clamp(f30 + f25, fMin2, f29);
                            this.roundRight = fClamp4;
                            if (Math.abs(f30 - fClamp4) > 0.01f) {
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
                            if (f25 > 0.0f) {
                                fMax3 = Math.min(fMin6 - this.roundRight, f25);
                            } else {
                                fMax3 = Math.max(fMax10 - this.roundLeft, f25);
                            }
                            float f31 = this.roundLeft + fMax3;
                            this.roundLeft = f31;
                            this.roundRight += fMax3;
                            TimelineDelegate timelineDelegate18 = this.delegate;
                            if (timelineDelegate18 != null) {
                                timelineDelegate18.onRoundLeftChange(f31);
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
                            Track track16 = this.collageTracks.get(this.pressHandleCollageIndex);
                            float f32 = (x / this.sw) * (jMin / track16.duration);
                            int i7 = this.pressHandle;
                            if (i7 == 13) {
                                float fMinAudioSelect5 = track16.right - (minAudioSelect() / track16.duration);
                                float fMax11 = Math.max(0L, this.scroll - track16.offset) / track16.duration;
                                if (track16 == this.collageMain) {
                                    f2 = 0.0f;
                                    fMax11 = Math.max(fMax11, track16.right - (maxSelectDuration() / track16.duration));
                                    if (!this.hadDragChange && f32 < 0.0f && track16.left <= track16.right - (maxSelectDuration() / track16.duration)) {
                                        this.pressHandle = 15;
                                    }
                                } else {
                                    f2 = 0.0f;
                                }
                                float f33 = track16.left;
                                float fClamp5 = Utilities.clamp(f33 + f32, fMinAudioSelect5, fMax11);
                                track16.left = fClamp5;
                                if (Math.abs(f33 - fClamp5) > 0.01f) {
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
                            } else {
                                f2 = 0.0f;
                                if (i7 == 14) {
                                    float fMin7 = Math.min(1.0f, Math.max(0L, (this.scroll - track16.offset) + jMin) / track16.duration);
                                    float fMinAudioSelect6 = track16.left + (minAudioSelect() / track16.duration);
                                    if (track16 == this.collageMain) {
                                        fMin7 = Math.min(fMin7, track16.left + (maxSelectDuration() / track16.duration));
                                        if (!this.hadDragChange && f32 > 0.0f && track16.right >= track16.left + (maxSelectDuration() / track16.duration)) {
                                            this.pressHandle = 15;
                                        }
                                    }
                                    float f34 = track16.right;
                                    float fClamp6 = Utilities.clamp(f34 + f32, fMin7, fMinAudioSelect6);
                                    track16.right = fClamp6;
                                    if (Math.abs(f34 - fClamp6) > 0.01f) {
                                        this.hadDragChange = true;
                                    }
                                    TimelineDelegate timelineDelegate23 = this.delegate;
                                    if (timelineDelegate23 != null) {
                                        timelineDelegate23.onVideoRightChange(track16.index, track16.right);
                                    }
                                }
                            }
                            if (this.pressHandle == 15) {
                                float fMax12 = Math.max(0L, this.scroll - track16.offset) / track16.duration;
                                float fMin8 = Math.min(1.0f, Math.max(0L, (this.scroll - track16.offset) + jMin) / track16.duration);
                                if (f32 > f2) {
                                    fMax5 = Math.min(fMin8 - track16.right, f32);
                                } else {
                                    fMax5 = Math.max(fMax12 - track16.left, f32);
                                }
                                float f35 = track16.left + fMax5;
                                track16.left = f35;
                                track16.right += fMax5;
                                TimelineDelegate timelineDelegate24 = this.delegate;
                                if (timelineDelegate24 != null) {
                                    timelineDelegate24.onVideoLeftChange(track16.index, f35);
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
                                moveAudioOffset((x / this.sw) * jMin);
                                if (!this.dragged) {
                                    this.dragSpeed = 1.0f;
                                }
                                this.dragged = true;
                                this.draggingProgress = false;
                            } else if (i8 == 9) {
                                moveRoundOffset((x / this.sw) * jMin);
                                if (!this.dragged) {
                                    this.dragSpeed = 1.0f;
                                }
                                this.dragged = true;
                                this.draggingProgress = false;
                            } else {
                                int i9 = this.pressHandleCollageIndex;
                                if (i9 >= 0 && i9 < this.collageTracks.size() && this.pressHandle == 16) {
                                    moveCollageOffset(this.collageTracks.get(this.pressHandleCollageIndex), (x / this.sw) * jMin);
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
                        long jClamp = (long) Utilities.clamp(((((motionEvent.getX() - this.px) - this.ph) / this.sw) * Math.min(getBaseDuration(), getMaxScrollDuration())) + this.scroll, getBaseDuration(), 0.0f);
                        Track track17 = this.videoTrack;
                        float f36 = track17.right - track17.left;
                        track17.left = (jClamp / getBaseDuration()) * (1.0f - f36);
                        Track track18 = this.videoTrack;
                        float f37 = track18.left;
                        track18.right = f36 + f37;
                        TimelineDelegate timelineDelegate26 = this.delegate;
                        if (timelineDelegate26 != null) {
                            timelineDelegate26.onVideoLeftChange(true, f37);
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
                                    this.delegate.onVideoSelected(this.collageTracks.get(this.pressCollageIndex).index);
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
                            long j15 = this.progress;
                            if (setProgressAt(motionEvent.getX(), false) && Math.abs(this.progress - j15) > 400) {
                                this.loopProgressFrom = j15;
                                this.loopProgress.set(1.0f, true);
                                invalidate();
                            }
                        }
                    }
                } else {
                    int i14 = this.pressHandle;
                    if (i14 == 16 && (velocityTracker5 = this.velocityTracker) != null) {
                        velocityTracker5.computeCurrentVelocity(1000);
                        int xVelocity = (int) this.velocityTracker.getXVelocity();
                        this.scrollingVideo = true;
                        if (this.videoTrack != null && Math.abs(xVelocity) > AndroidUtilities.dp(100.0f)) {
                            long jMin2 = Math.min(this.videoTrack.duration, getMaxScrollDuration());
                            int i15 = this.px;
                            float f38 = jMin2;
                            int i16 = this.sw;
                            int i17 = (int) (i15 + ((this.scroll / f38) * i16));
                            this.scrolling = true;
                            Scroller scroller = this.scroller;
                            this.wasScrollX = i17;
                            scroller.fling(i17, 0, -xVelocity, 0, i15, (int) (i15 + (((this.videoTrack.duration - jMin2) / f38) * i16)), 0, 0);
                            z3 = false;
                        }
                        z3 = true;
                    } else if (i14 == 1 && (velocityTracker4 = this.velocityTracker) != null) {
                        velocityTracker4.computeCurrentVelocity(1000);
                        int xVelocity2 = (int) this.velocityTracker.getXVelocity();
                        this.scrollingVideo = true;
                        if (this.videoTrack != null && Math.abs(xVelocity2) > AndroidUtilities.dp(100.0f)) {
                            long jMin3 = Math.min(this.videoTrack.duration, getMaxScrollDuration());
                            int i18 = this.px;
                            float f39 = jMin3;
                            int i19 = this.sw;
                            int i20 = (int) (i18 + ((this.scroll / f39) * i19));
                            this.scrolling = true;
                            Scroller scroller2 = this.scroller;
                            this.wasScrollX = i20;
                            scroller2.fling(i20, 0, -xVelocity2, 0, i18, (int) (i18 + (((this.videoTrack.duration - jMin3) / f39) * i19)), 0, 0);
                            z3 = false;
                        }
                        z3 = true;
                    } else if ((i14 == 5 || (i14 == 8 && !this.dragged)) && this.audioSelected && (velocityTracker2 = this.velocityTracker) != null) {
                        velocityTracker2.computeCurrentVelocity(this.videoTrack == null ? 1500 : 1000);
                        int xVelocity3 = (int) this.velocityTracker.getXVelocity();
                        this.scrollingVideo = false;
                        if (Math.abs(xVelocity3) > AndroidUtilities.dp(100.0f)) {
                            float fMin9 = Math.min(getBaseDuration(), getMaxScrollDuration());
                            int i21 = (int) (this.px + this.ph + ((this.audioOffset / fMin9) * this.sw));
                            Track track19 = this.videoTrack;
                            if (track19 != null) {
                                float f40 = track19.right;
                                j3 = track19.duration;
                                j4 = this.audioDuration;
                                j2 = (long) ((f40 * j3) - 0);
                                f = track19.left;
                            } else if (this.hasRound) {
                                float f41 = this.roundRight;
                                j3 = this.roundDuration;
                                j4 = this.audioDuration;
                                j2 = (long) ((f41 * j3) - 0);
                                f = this.roundLeft;
                            } else {
                                j = -(this.audioDuration - Math.min(getBaseDuration(), getMaxScrollDuration()));
                                z2 = true;
                                j2 = 0;
                                this.scrolling = z2;
                                Scroller scroller3 = this.scroller;
                                this.wasScrollX = i21;
                                int i22 = this.px;
                                int i23 = this.ph;
                                int i24 = this.sw;
                                scroller3.fling(i21, 0, xVelocity3, 0, (int) (i22 + i23 + ((j / fMin9) * i24)), (int) (i22 + i23 + ((j2 / fMin9) * i24)), 0, 0);
                                z3 = false;
                            }
                            j = (long) ((f * j3) - j4);
                            z2 = true;
                            this.scrolling = z2;
                            Scroller scroller32 = this.scroller;
                            this.wasScrollX = i21;
                            int i222 = this.px;
                            int i232 = this.ph;
                            int i242 = this.sw;
                            scroller32.fling(i21, 0, xVelocity3, 0, (int) (i222 + i232 + ((j / fMin9) * i242)), (int) (i222 + i232 + ((j2 / fMin9) * i242)), 0, 0);
                            z3 = false;
                        }
                        z3 = true;
                    } else if ((i14 == 9 || (i14 == 12 && !this.dragged)) && this.roundSelected && (velocityTracker3 = this.velocityTracker) != null) {
                        velocityTracker3.computeCurrentVelocity(this.videoTrack == null ? 1500 : 1000);
                        int xVelocity4 = (int) this.velocityTracker.getXVelocity();
                        this.scrollingVideo = false;
                        if (Math.abs(xVelocity4) > AndroidUtilities.dp(100.0f)) {
                            float fMin10 = Math.min(getBaseDuration(), getMaxScrollDuration());
                            int i25 = (int) (this.px + this.ph + ((this.roundOffset / fMin10) * this.sw));
                            Track track20 = this.videoTrack;
                            if (track20 != null) {
                                float f42 = track20.right;
                                long j16 = track20.duration;
                                j6 = (long) ((f42 * j16) - 0);
                                j5 = (long) ((track20.left * j16) - this.roundDuration);
                            } else {
                                j5 = -(this.roundDuration - Math.min(getBaseDuration(), getMaxScrollDuration()));
                                j6 = 0;
                            }
                            this.scrolling = true;
                            Scroller scroller4 = this.scroller;
                            this.wasScrollX = i25;
                            int i26 = this.px;
                            int i27 = this.ph;
                            int i28 = this.sw;
                            scroller4.fling(i25, 0, xVelocity4, 0, (int) (i26 + i27 + ((j5 / fMin10) * i28)), (int) (i26 + i27 + ((j6 / fMin10) * i28)), 0, 0);
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
                this.scroll = (long) Math.max(0.0f, (((currX - this.px) - this.ph) / this.sw) * jMin);
            } else {
                if (!this.audioSelected) {
                    this.scroller.abortAnimation();
                    return;
                }
                int i = this.px;
                int i2 = this.ph;
                int i3 = this.sw;
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

    public static class WaveformPath extends Path {
        private float lastAudioHeight;
        private float lastAudioSelected;
        private float lastBottom;
        private float lastLeft;
        private float lastMaxBar;
        private float lastRight;
        private long lastScrollDuration;
        private float lastStart;
        private ArrayList<Integer> lastWaveformCounts;
        private ArrayList<Float> lastWaveformLoaded;
        private final int ph = AndroidUtilities.dp(10.0f);
        private final float[] waveformRadii;

        public WaveformPath() {
            this.waveformRadii = new float[]{fDp, fDp, fDp, fDp, 0.0f, 0.0f, 0.0f, 0.0f};
            float fDp = AndroidUtilities.dp(2.0f);
        }

        private boolean eqCount(ArrayList<Integer> arrayList, ArrayList<AudioWaveformLoader> arrayList2) {
            if (arrayList == null && arrayList2 == null) {
                return true;
            }
            if (arrayList == null || arrayList2 == null || arrayList.size() != arrayList2.size()) {
                return false;
            }
            for (int i = 0; i < arrayList.size(); i++) {
                if (arrayList.get(i).intValue() != (arrayList2.get(i) == null ? 0 : arrayList2.get(i).getCount())) {
                    return false;
                }
            }
            return true;
        }

        private boolean eqLoadedCounts(ArrayList<Float> arrayList, ArrayList<AudioWaveformLoader> arrayList2) {
            if (arrayList == null && arrayList2 == null) {
                return true;
            }
            if (arrayList == null || arrayList2 == null || arrayList.size() != arrayList2.size()) {
                return false;
            }
            for (int i = 0; i < arrayList.size(); i++) {
                if (arrayList.get(i).floatValue() != (arrayList2.get(i) == null ? 0.0f : arrayList2.get(i).animatedLoaded.set(arrayList2.get(i).getLoadedCount()))) {
                    return false;
                }
            }
            return true;
        }

        public static int getMaxBar(ArrayList<AudioWaveformLoader> arrayList) {
            if (arrayList == null) {
                return 0;
            }
            int maxBar = 0;
            for (int i = 0; i < arrayList.size(); i++) {
                if (arrayList.get(i) != null) {
                    maxBar += arrayList.get(i).getMaxBar();
                }
            }
            return maxBar;
        }

        public void check(float f, float f2, float f3, float f4, long j, float f5, float f6, float f7, AudioWaveformLoader audioWaveformLoader) {
            ArrayList<Integer> arrayList;
            if (audioWaveformLoader == null) {
                rewind();
                return;
            }
            float f8 = audioWaveformLoader.animatedLoaded.set(audioWaveformLoader.getLoadedCount());
            if (this.lastScrollDuration == j && Math.abs(this.lastAudioHeight - f5) <= 1.0f && Math.abs(this.lastMaxBar - f6) <= 0.01f && Math.abs(this.lastAudioSelected - f4) <= 0.1f && Math.abs(this.lastBottom - f7) <= 1.0f && Math.abs(this.lastStart - f) <= 1.0f && Math.abs(this.lastLeft - f2) <= 1.0f && Math.abs(this.lastRight - f3) <= 1.0f && (arrayList = this.lastWaveformCounts) != null && arrayList.size() == 1) {
                ArrayList<Float> arrayList2 = this.lastWaveformLoaded;
                if (Math.abs(((arrayList2 == null || arrayList2.isEmpty()) ? 0.0f : this.lastWaveformLoaded.get(0).floatValue()) - f8) <= 0.01f) {
                    return;
                }
            }
            ArrayList<Integer> arrayList3 = this.lastWaveformCounts;
            if (arrayList3 == null) {
                this.lastWaveformCounts = new ArrayList<>();
            } else {
                arrayList3.clear();
            }
            this.lastWaveformCounts.add(Integer.valueOf(audioWaveformLoader.getCount()));
            ArrayList<Float> arrayList4 = this.lastWaveformLoaded;
            if (arrayList4 == null) {
                this.lastWaveformLoaded = new ArrayList<>();
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

        public void check(float f, float f2, float f3, float f4, float f5, float f6, float f7, ArrayList<AudioWaveformLoader> arrayList) {
            if (arrayList == null || arrayList.isEmpty()) {
                rewind();
                return;
            }
            if (Math.abs(this.lastAudioHeight - f5) > 1.0f || Math.abs(this.lastMaxBar - f6) > 0.01f || Math.abs(this.lastAudioSelected - f4) > 0.1f || Math.abs(this.lastBottom - f7) > 1.0f || Math.abs(this.lastStart - f) > 1.0f || Math.abs(this.lastLeft - f2) > 1.0f || Math.abs(this.lastRight - f3) > 1.0f || eqCount(this.lastWaveformCounts, arrayList) || eqLoadedCounts(this.lastWaveformLoaded, arrayList)) {
                ArrayList<Integer> arrayList2 = this.lastWaveformCounts;
                if (arrayList2 == null) {
                    this.lastWaveformCounts = new ArrayList<>();
                } else {
                    arrayList2.clear();
                }
                for (int i = 0; i < arrayList.size(); i++) {
                    this.lastWaveformCounts.add(Integer.valueOf(arrayList.get(i) == null ? 0 : arrayList.get(i).getCount()));
                }
                ArrayList<Float> arrayList3 = this.lastWaveformLoaded;
                if (arrayList3 == null) {
                    this.lastWaveformLoaded = new ArrayList<>();
                } else {
                    arrayList3.clear();
                }
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    this.lastWaveformLoaded.add(Float.valueOf(arrayList.get(i2) == null ? 0.0f : arrayList.get(i2).animatedLoaded.set(arrayList.get(i2).getLoadedCount())));
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
        private void layout(float f, float f2, float f3, float f4, float f5, float f6, float f7, ArrayList<Float> arrayList, ArrayList<AudioWaveformLoader> arrayList2) {
            rewind();
            float fRound = Math.round(AndroidUtilities.dpf2(3.3333f));
            int iMax = 0;
            for (int i = 0; i < arrayList2.size(); i++) {
                if (arrayList2.get(i) != null) {
                    iMax = Math.max(iMax, arrayList2.get(i).getCount());
                }
            }
            int iMax2 = Math.max(0, (int) (((f2 - this.ph) - f) / fRound));
            int iMin = Math.min(iMax - 1, (int) Math.ceil(((f3 + this.ph) - f) / fRound));
            while (iMax2 <= iMin) {
                float f8 = iMax2;
                float fDp = f + (f8 * fRound) + AndroidUtilities.dp(2.0f);
                int i2 = 0;
                for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                    short bar = (arrayList2.get(i3) == null || iMax2 >= arrayList2.get(i3).getCount()) ? (short) 0 : arrayList2.get(i3).getBar(iMax2);
                    if (f8 < arrayList.get(i3).floatValue() && iMax2 + 1 > arrayList.get(i3).floatValue()) {
                        bar = (short) (bar * (arrayList.get(i3).floatValue() - f8));
                    } else if (f8 > arrayList.get(i3).floatValue()) {
                        bar = 0;
                    }
                    i2 += bar;
                }
                float f9 = f5 <= 0.0f ? 0.0f : (i2 / f5) * f6 * 0.6f;
                if (fDp < f2 || fDp > f3) {
                    f9 *= f4;
                    if (f9 > 0.0f) {
                        float fMax = Math.max(f9, AndroidUtilities.lerp(AndroidUtilities.dpf2(0.66f), AndroidUtilities.dpf2(1.5f), f4));
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(fDp, AndroidUtilities.lerp(f7 - fMax, f7 - ((f6 + fMax) / 2.0f), f4), AndroidUtilities.dpf2(1.66f) + fDp, AndroidUtilities.lerp(f7, f7 - ((f6 - fMax) / 2.0f), f4));
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
            int iMin = Math.min(count - 1, (int) Math.ceil(((this.ph + f3) - f) / fRound));
            for (int iMax = Math.max(0, (int) (((f2 - this.ph) - f) / fRound)); iMax <= iMin; iMax++) {
                float f9 = iMax;
                float fDp = (f9 * fRound) + f + AndroidUtilities.dp(2.0f);
                float bar = f5 <= 0.0f ? 0.0f : (audioWaveformLoader.getBar(iMax) / f5) * f6 * 0.6f;
                if (f9 < f8 && iMax + 1 > f8) {
                    bar *= f8 - f9;
                } else if (f9 > f8) {
                    bar = 0.0f;
                }
                if (fDp < f2 || fDp > f3) {
                    bar *= f4;
                    if (bar > 0.0f) {
                        float fMax = Math.max(bar, AndroidUtilities.lerp(AndroidUtilities.dpf2(0.66f), AndroidUtilities.dpf2(1.5f), f4));
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(fDp, AndroidUtilities.lerp(f7 - fMax, f7 - ((f6 + fMax) / 2.0f), f4), AndroidUtilities.dpf2(1.66f) + fDp, AndroidUtilities.lerp(f7, f7 - ((f6 - fMax) / 2.0f), f4));
                        addRoundRect(rectF, this.waveformRadii, Path.Direction.CW);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:149:0x067e  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x06a5 A[LOOP:4: B:157:0x06a5->B:162:0x06e5, LOOP_START, PHI: r5 r7
  0x06a5: PHI (r5v134 float) = (r5v133 float), (r5v135 float) binds: [B:156:0x06a3, B:162:0x06e5] A[DONT_GENERATE, DONT_INLINE]
  0x06a5: PHI (r7v112 int) = (r7v111 int), (r7v113 int) binds: [B:156:0x06a3, B:162:0x06e5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x06eb  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x096f  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0981  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x099e A[LOOP:6: B:240:0x099e->B:246:0x09e3, LOOP_START, PHI: r2 r3 r6
  0x099e: PHI (r2v202 android.graphics.Paint) = (r2v199 android.graphics.Paint), (r2v203 android.graphics.Paint) binds: [B:239:0x099c, B:246:0x09e3] A[DONT_GENERATE, DONT_INLINE]
  0x099e: PHI (r3v181 float) = (r3v180 float), (r3v182 float) binds: [B:239:0x099c, B:246:0x09e3] A[DONT_GENERATE, DONT_INLINE]
  0x099e: PHI (r6v90 int) = (r6v89 int), (r6v91 int) binds: [B:239:0x099c, B:246:0x09e3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x09ed  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0f19  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0f35  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x0f9e  */
    /* JADX WARN: Removed duplicated region for block: B:393:0x0ffa  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x1002  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x10fb  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x10fe  */
    /* JADX WARN: Removed duplicated region for block: B:411:0x112f  */
    /* JADX WARN: Removed duplicated region for block: B:427:0x116c  */
    /* JADX WARN: Removed duplicated region for block: B:430:0x117c  */
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
    public void dispatchDraw(Canvas canvas) {
        float f;
        int i;
        long j;
        float fMax;
        float f2;
        Track track;
        Track track2;
        float f3;
        float fMax2;
        float f4;
        int i2;
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
        double d;
        float f19;
        float fMax3;
        float f20;
        Track track3;
        Canvas canvas3;
        TimelineView timelineView;
        float f21;
        float f22;
        float f23;
        float f24;
        float f25;
        float f26;
        long j2;
        float fLerp;
        float f27;
        long j3;
        BlurringShader.BlurManager blurManager;
        float f28;
        long j4;
        float f29;
        float f30;
        float fLerp2;
        float f31;
        int i3;
        int i4;
        int i5;
        Paint paint;
        Paint paint2;
        int i6;
        float fLerp3;
        float f32;
        float f33;
        float f34;
        Paint paint3;
        long j5;
        float f35;
        float f36;
        int i7;
        VideoThumbsLoader videoThumbsLoader;
        float f37;
        int i8;
        float f38;
        float f39;
        float f40;
        float f41;
        int i9;
        int i10;
        BlurringShader.BlurManager blurManager2;
        TimelineView timelineView2 = this;
        Paint paint4 = timelineView2.backgroundBlur.getPaint(1.0f);
        float f42 = timelineView2.openT.set(timelineView2.open);
        long jMin = Math.min(timelineView2.getBaseDuration(), timelineView2.getMaxScrollDuration());
        if (f42 < 1.0f) {
            f = 1.0f;
            timelineView2.timelineBounds.set(timelineView2.px, (timelineView2.f1240h - timelineView2.py) - AndroidUtilities.dp(28.0f), timelineView2.f1241w - timelineView2.px, timelineView2.f1240h - timelineView2.py);
            timelineView2.timelineClipPath.rewind();
            timelineView2.timelineClipPath.addRoundRect(timelineView2.timelineBounds, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), Path.Direction.CW);
            canvas.saveLayerAlpha(timelineView2.timelineBounds, (int) ((1.0f - f42) * 255.0f), 31);
            canvas.clipPath(timelineView2.timelineClipPath);
            if (timelineView2.blurManager.hasRenderNode()) {
                timelineView2.backgroundBlur.drawRect(canvas);
                canvas.drawColor(855638016);
            } else if (paint4 == null) {
                canvas.drawColor(TLObject.FLAG_30);
            } else {
                canvas.drawRect(timelineView2.timelineBounds, paint4);
                canvas.drawColor(855638016);
            }
            if (!timelineView2.collageWaveforms.isEmpty() && (blurManager2 = timelineView2.blurManager) != null && blurManager2.hasRenderNode()) {
                float f43 = timelineView2.timelineWaveformMax.set(WaveformPath.getMaxBar(timelineView2.collageWaveforms));
                WaveformPath waveformPath = timelineView2.timelineWaveformPath;
                RectF rectF = timelineView2.timelineBounds;
                waveformPath.check(timelineView2.px + timelineView2.ph + (((timelineView2.audioOffset - timelineView2.scroll) / jMin) * timelineView2.sw), rectF.left, rectF.right, 0.0f, AndroidUtilities.dp(28.0f), f43, timelineView2.timelineBounds.bottom, timelineView2.collageWaveforms);
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
                float f44 = timelineView2.timelineWaveformMax.set(WaveformPath.getMaxBar(timelineView2.collageWaveforms));
                WaveformPath waveformPath2 = timelineView2.timelineWaveformPath;
                RectF rectF2 = timelineView2.timelineBounds;
                waveformPath2.check(timelineView2.px + timelineView2.ph + (((timelineView2.audioOffset - timelineView2.scroll) / jMin) * timelineView2.sw), rectF2.left, rectF2.right, 0.0f, AndroidUtilities.dp(28.0f), f44, timelineView2.timelineBounds.bottom, timelineView2.collageWaveforms);
                canvas.drawPath(timelineView2.timelineWaveformPath, paint5);
            }
            float currentWidth = ((timelineView2.timelineText.getCurrentWidth() + AndroidUtilities.dp(3.66f)) + timelineView2.timelineIcon.getIntrinsicWidth()) / 2.0f;
            int iCenterX = (int) (timelineView2.timelineBounds.centerX() - currentWidth);
            int iCenterY = (int) timelineView2.timelineBounds.centerY();
            Drawable drawable = timelineView2.timelineIcon;
            drawable.setBounds(iCenterX, iCenterY - (drawable.getIntrinsicHeight() / 2), timelineView2.timelineIcon.getIntrinsicWidth() + iCenterX, (timelineView2.timelineIcon.getIntrinsicHeight() / 2) + iCenterY);
            timelineView2.timelineIcon.setAlpha(191);
            timelineView2.timelineIcon.draw(canvas);
            timelineView2.timelineText.draw(canvas, (timelineView2.timelineBounds.centerX() - currentWidth) + timelineView2.timelineIcon.getIntrinsicWidth() + AndroidUtilities.dp(3.66f), iCenterY, -1, 0.75f);
            canvas.restore();
        } else {
            f = 1.0f;
        }
        if (f42 > 0.0f) {
            if (f42 < 1.0f) {
                i2 = 1;
                f4 = 0.0f;
                canvas2 = canvas;
                canvas2.saveLayerAlpha(0.0f, 0.0f, timelineView2.getWidth(), timelineView2.getHeight(), (int) (f42 * 255.0f), 31);
                z = true;
            } else {
                f4 = 0.0f;
                i2 = 1;
                canvas2 = canvas;
                z = false;
            }
            Track track4 = timelineView2.videoTrack;
            float f45 = track4 != null ? f : f4;
            if (track4 != null) {
                f5 = track4.selectedT.set((timelineView2.audioSelected || timelineView2.roundSelected) ? 0 : i2);
            } else {
                f5 = f4;
            }
            float f46 = timelineView2.f1240h - timelineView2.py;
            float fDp = AndroidUtilities.dp(4.0f);
            float f47 = f5;
            float f48 = f45;
            if (timelineView2.videoTrack != null) {
                canvas2.save();
                float videoHeight = timelineView2.getVideoHeight();
                Track track5 = timelineView2.videoTrack;
                i = i2;
                float f49 = track5.left;
                long j6 = track5.duration;
                f7 = f4;
                float f50 = (j6 * f49 * f47) + f7;
                float f51 = (track5.right * j6 * f47) + f7;
                float f52 = j6 <= 0 ? f7 : (timelineView2.px + timelineView2.ph) - ((timelineView2.scroll / jMin) * timelineView2.sw);
                int i11 = timelineView2.ph;
                float f53 = f52 - i11;
                if (j6 <= 0) {
                    f6 = fDp;
                    f8 = videoHeight;
                    f38 = f7;
                } else {
                    f6 = fDp;
                    f8 = videoHeight;
                    f38 = (((j6 - timelineView2.scroll) / jMin) * timelineView2.sw) + timelineView2.px + i11;
                }
                timelineView2.videoBounds.set(f53, f46 - f8, f38 + i11, f46);
                float f54 = f46 - (f8 + (f6 * f48));
                RectF rectF3 = timelineView2.videoBounds;
                float f55 = (rectF3.top * f47) + f7;
                float f56 = (rectF3.bottom * f47) + f7;
                timelineView2.videoClipPath.rewind();
                f9 = f56;
                timelineView2.videoClipPath.addRoundRect(timelineView2.videoBounds, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), Path.Direction.CW);
                canvas2.clipPath(timelineView2.videoClipPath);
                VideoThumbsLoader videoThumbsLoader2 = timelineView2.videoTrack.thumbs;
                if (videoThumbsLoader2 != null) {
                    int frameWidth = videoThumbsLoader2.getFrameWidth();
                    float f57 = frameWidth;
                    f39 = f54;
                    int iMax = (int) Math.max(0.0d, Math.floor((f53 - timelineView2.px) / f57));
                    f40 = f55;
                    int iMin = (int) Math.min(timelineView2.videoTrack.thumbs.count, Math.ceil(((r5 - f53) - timelineView2.px) / f57) + 1.0d);
                    int i12 = (int) timelineView2.videoBounds.top;
                    int i13 = timelineView2.videoTrack.thumbs.frames.size() >= iMin ? i : 0;
                    int i14 = (frameWidth == 0 || i13 == 0 || timelineView2.videoTrack.isRound) ? 0 : i;
                    if (i14 != 0) {
                        while (true) {
                            if (iMax >= Math.min(timelineView2.videoTrack.thumbs.frames.size(), iMin)) {
                                break;
                            }
                            if (((VideoThumbsLoader.BitmapFrame) timelineView2.videoTrack.thumbs.frames.get(iMax)).bitmap == null) {
                                i14 = 0;
                                break;
                            }
                            iMax++;
                        }
                    }
                    if (i14 == 0) {
                        if (timelineView2.blurManager.hasRenderNode()) {
                            timelineView2.backgroundBlur.drawRect(canvas2);
                            canvas2.drawColor(855638016);
                        } else if (paint4 == null) {
                            canvas2.drawColor(TLObject.FLAG_30);
                        } else {
                            canvas2.drawRect(timelineView2.videoBounds, paint4);
                            canvas2.drawColor(855638016);
                        }
                    }
                    if (frameWidth != 0) {
                        float f58 = f53;
                        int i15 = iMax;
                        while (i15 < Math.min(timelineView2.videoTrack.thumbs.frames.size(), iMin)) {
                            VideoThumbsLoader.BitmapFrame bitmapFrame = (VideoThumbsLoader.BitmapFrame) timelineView2.videoTrack.thumbs.frames.get(i15);
                            if (bitmapFrame.bitmap != null) {
                                i10 = i15;
                                timelineView2.videoFramePaint.setAlpha((int) (bitmapFrame.getAlpha() * 255.0f));
                                canvas2.drawBitmap(bitmapFrame.bitmap, f58, i12 - ((int) ((r2.getHeight() - f8) / 2.0f)), timelineView2.videoFramePaint);
                            } else {
                                i10 = i15;
                            }
                            f58 += f57;
                            i15 = i10 + 1;
                        }
                    }
                    if (i13 == 0) {
                        timelineView2.videoTrack.thumbs.load();
                    }
                } else {
                    f39 = f54;
                    f40 = f55;
                }
                timelineView2.selectedVideoClipPath.rewind();
                if (timelineView2.isCover) {
                    f11 = f50;
                    f10 = f51;
                    f12 = f40;
                } else {
                    RectF rectF4 = AndroidUtilities.rectTmp;
                    int i16 = timelineView2.px;
                    int i17 = timelineView2.ph;
                    float f59 = i16 + i17;
                    Track track6 = timelineView2.videoTrack;
                    float f60 = track6.left;
                    long j7 = track6.duration;
                    float f61 = j7 * f60;
                    long j8 = timelineView2.scroll;
                    float f62 = f61 - j8;
                    float f63 = jMin;
                    float f64 = f62 / f63;
                    int i18 = timelineView2.sw;
                    f11 = f50;
                    float f65 = f59 + (f64 * i18);
                    if (f60 <= f7) {
                        f41 = f65;
                        i9 = i17;
                    } else {
                        f41 = f65;
                        i9 = 0;
                    }
                    float f66 = f41 - i9;
                    f10 = f51;
                    int i19 = timelineView2.f1240h;
                    int i20 = timelineView2.py;
                    float f67 = (i19 - i20) - f8;
                    f12 = f40;
                    float f68 = track6.right;
                    rectF4.set(f66, f67, i16 + i17 + ((((j7 * f68) - j8) / f63) * i18) + (f68 >= f ? i17 : 0), i19 - i20);
                    timelineView2.selectedVideoClipPath.addRoundRect(rectF4, timelineView2.selectedVideoRadii, Path.Direction.CW);
                    canvas2.clipPath(timelineView2.selectedVideoClipPath, Region.Op.DIFFERENCE);
                    canvas2.drawColor(1342177280);
                }
                canvas2.restore();
                f46 = f39;
            } else {
                f6 = fDp;
                i = i2;
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
                int i21 = 0;
                while (i21 < timelineView2.collageTracks.size()) {
                    Track track7 = timelineView2.collageTracks.get(i21);
                    float f69 = track7.selectedT.set((timelineView2.audioSelected || timelineView2.roundSelected || timelineView2.collageSelected != i21) ? 0 : i);
                    Track track8 = timelineView2.collageMain;
                    int i22 = timelineView2.px;
                    if (track7 != track8) {
                        float f70 = jMin;
                        float fLerp4 = i22 + timelineView2.ph + ((((track7.offset - timelineView2.scroll) + (AndroidUtilities.lerp(track7.left, f7, f69) * track7.duration)) / f70) * timelineView2.sw);
                        fLerp3 = timelineView2.px + timelineView2.ph + ((((track7.offset - timelineView2.scroll) + (AndroidUtilities.lerp(track7.right, f, f69) * track7.duration)) / f70) * timelineView2.sw);
                        i6 = i21;
                        f32 = fLerp4;
                    } else {
                        float f71 = i22 + timelineView2.ph;
                        long j9 = track7.offset;
                        long j10 = timelineView2.scroll;
                        float f72 = jMin;
                        i6 = i21;
                        int i23 = timelineView2.sw;
                        float f73 = (i23 * ((j9 - j10) / f72)) + f71;
                        fLerp3 = i22 + r6 + ((((j9 - j10) + track7.duration) / f72) * i23);
                        f32 = f73;
                    }
                    canvas2.save();
                    float fLerp5 = AndroidUtilities.lerp(AndroidUtilities.dp(28.0f), AndroidUtilities.dp(38.0f), f69);
                    RectF rectF5 = track7.bounds;
                    int i24 = timelineView2.ph;
                    rectF5.set(f32 - i24, f46 - fLerp5, fLerp3 + i24, f46);
                    RectF rectF6 = track7.bounds;
                    f12 += rectF6.top * f69;
                    f9 += rectF6.bottom * f69;
                    long j11 = track7.offset;
                    float f74 = track7.left;
                    long j12 = track7.duration;
                    f11 += (j11 + (f74 * j12)) * f69;
                    f10 += (j11 + (track7.right * j12)) * f69;
                    timelineView2.collageClipPath.rewind();
                    timelineView2.collageClipPath.addRoundRect(track7.bounds, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), Path.Direction.CW);
                    canvas2.clipPath(timelineView2.collageClipPath);
                    VideoThumbsLoader videoThumbsLoader3 = track7.thumbs;
                    if (videoThumbsLoader3 != null) {
                        long j13 = track7.duration;
                        if (j13 <= 0) {
                            videoThumbsLoader = videoThumbsLoader3;
                            f33 = f46;
                            f37 = 0.0f;
                        } else {
                            videoThumbsLoader = videoThumbsLoader3;
                            f33 = f46;
                            f37 = (((track7.offset - timelineView2.scroll) / jMin) * timelineView2.sw) + timelineView2.px + timelineView2.ph;
                        }
                        int i25 = timelineView2.ph;
                        float f75 = f37 - i25;
                        float f76 = (j13 <= 0 ? 0.0f : ((((track7.offset + j13) - timelineView2.scroll) / jMin) * timelineView2.sw) + timelineView2.px + i25) + i25;
                        int frameWidth2 = videoThumbsLoader.getFrameWidth();
                        float f77 = frameWidth2;
                        float f78 = f75;
                        int iMax2 = (int) Math.max(0.0d, Math.floor((f75 - ((timelineView2.px + timelineView2.ph) + (((track7.offset - timelineView2.scroll) / jMin) * timelineView2.sw))) / f77));
                        int iMin2 = (int) Math.min(track7.thumbs.count, Math.ceil((f76 - f78) / f77) + 1.0d);
                        int i26 = (int) track7.bounds.top;
                        int i27 = track7.thumbs.frames.size() >= iMin2 ? i : 0;
                        if (i27 != 0) {
                            for (int i28 = iMax2; i28 < Math.min(track7.thumbs.frames.size(), iMin2); i28++) {
                                if (((VideoThumbsLoader.BitmapFrame) track7.thumbs.frames.get(i28)).bitmap == null) {
                                    i8 = 0;
                                    break;
                                }
                            }
                            i8 = i27;
                            if (i8 == 0) {
                                if (timelineView2.blurManager.hasRenderNode()) {
                                    timelineView2.backgroundBlur.drawRect(canvas2);
                                    canvas2.drawColor(855638016);
                                } else if (paint4 == null) {
                                    canvas2.drawColor(TLObject.FLAG_30);
                                } else {
                                    canvas2.drawRect(track7.bounds, paint4);
                                    canvas2.drawColor(855638016);
                                }
                            }
                            if (frameWidth2 != 0) {
                                while (iMax2 < Math.min(track7.thumbs.frames.size(), iMin2)) {
                                    VideoThumbsLoader.BitmapFrame bitmapFrame2 = (VideoThumbsLoader.BitmapFrame) track7.thumbs.frames.get(iMax2);
                                    if (bitmapFrame2.bitmap != null) {
                                        timelineView2.collageFramePaint.setAlpha((int) (bitmapFrame2.getAlpha() * 255.0f));
                                        canvas2.drawBitmap(bitmapFrame2.bitmap, f78, i26 - ((int) ((r4.getHeight() - fLerp5) / 2.0f)), timelineView2.collageFramePaint);
                                    }
                                    f78 += f77;
                                    iMax2++;
                                }
                            }
                            if (i27 == 0) {
                                track7.thumbs.load();
                            }
                        } else {
                            i8 = i27;
                            if (i8 == 0) {
                            }
                            if (frameWidth2 != 0) {
                            }
                            if (i27 == 0) {
                            }
                        }
                    } else {
                        f33 = f46;
                    }
                    timelineView2.selectedCollageClipPath.rewind();
                    if (timelineView2.isCover) {
                        f34 = f33;
                        paint3 = paint4;
                        j5 = jMin;
                        f35 = f6;
                    } else {
                        RectF rectF7 = AndroidUtilities.rectTmp;
                        int i29 = timelineView2.px;
                        int i30 = timelineView2.ph;
                        float f79 = i29 + i30;
                        float f80 = track7.left;
                        long j14 = track7.duration;
                        long j15 = timelineView2.scroll;
                        long j16 = track7.offset;
                        f34 = f33;
                        float f81 = jMin;
                        float f82 = (((j14 * f80) - j15) + j16) / f81;
                        int i31 = timelineView2.sw;
                        float f83 = f79 + (i31 * f82);
                        if (f80 <= 0.0f) {
                            f36 = f83;
                            i7 = i30;
                        } else {
                            f36 = f83;
                            i7 = 0;
                        }
                        float f84 = f36 - i7;
                        f35 = f6;
                        RectF rectF8 = track7.bounds;
                        paint3 = paint4;
                        float f85 = rectF8.top;
                        j5 = jMin;
                        float f86 = track7.right;
                        rectF7.set(f84, f85, i29 + i30 + (((((j14 * f86) - j15) + j16) / f81) * i31) + (f86 >= 1.0f ? i30 : 0), rectF8.bottom);
                        timelineView2.selectedCollageClipPath.addRoundRect(rectF7, timelineView2.selectedVideoRadii, Path.Direction.CW);
                        canvas2.clipPath(timelineView2.selectedCollageClipPath, Region.Op.DIFFERENCE);
                        canvas2.drawColor(1342177280);
                    }
                    canvas2.restore();
                    f46 = f34 - (fLerp5 + (f35 * 1.0f));
                    i21 = i6 + 1;
                    f6 = f35;
                    paint4 = paint3;
                    jMin = j5;
                    f = 1.0f;
                    f7 = 0.0f;
                }
                f13 = 1.0f;
            }
            Paint paint6 = paint4;
            long j17 = jMin;
            float f87 = f6;
            float f88 = timelineView2.roundT.set(timelineView2.hasRound);
            float f89 = timelineView2.roundSelectedT.set((timelineView2.hasRound && timelineView2.roundSelected) ? i : 0);
            float roundHeight = timelineView2.getRoundHeight() * f88;
            float f90 = ((timelineView2.videoTrack == null && !timelineView2.hasAudio && timelineView2.collageTracks.isEmpty()) ? 1.0f : f89) * f88;
            if (f88 > 0.0f) {
                long j18 = timelineView2.roundOffset;
                float f91 = timelineView2.roundLeft;
                long j19 = timelineView2.roundDuration;
                f11 += (j18 + (j19 * f91)) * f90;
                f10 += (j18 + (timelineView2.roundRight * j19)) * f90;
                Track track9 = timelineView2.videoTrack;
                int i32 = timelineView2.px;
                if (track9 != null) {
                    float f92 = j17;
                    float fLerp6 = i32 + timelineView2.ph + ((((j18 - timelineView2.scroll) + (AndroidUtilities.lerp(f91, 0.0f, f89) * timelineView2.roundDuration)) / f92) * timelineView2.sw);
                    f28 = f90;
                    fLerp2 = timelineView2.px + timelineView2.ph + ((((timelineView2.roundOffset - timelineView2.scroll) + (AndroidUtilities.lerp(timelineView2.roundRight, 1.0f, f89) * timelineView2.roundDuration)) / f92) * timelineView2.sw);
                    f14 = f89;
                    f29 = roundHeight;
                    f30 = fLerp6;
                    j4 = j17;
                } else {
                    f28 = f90;
                    j4 = j17;
                    int i33 = timelineView2.ph;
                    f14 = f89;
                    f29 = roundHeight;
                    long j20 = timelineView2.scroll;
                    float f93 = j4;
                    float f94 = (j18 - j20) / f93;
                    int i34 = timelineView2.sw;
                    f30 = i32 + i33 + (i34 * f94);
                    fLerp2 = ((((j18 - j20) + j19) / f93) * i34) + i32 + i33;
                }
                RectF rectF9 = timelineView2.roundBounds;
                int i35 = timelineView2.ph;
                rectF9.set(f30 - i35, f46 - f29, fLerp2 + i35, f46);
                float f95 = f46 - (f29 + (f87 * f88));
                RectF rectF10 = timelineView2.roundBounds;
                f12 += rectF10.top * f28;
                f9 += rectF10.bottom * f28;
                timelineView2.roundClipPath.rewind();
                timelineView2.roundClipPath.addRoundRect(timelineView2.roundBounds, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), Path.Direction.CW);
                canvas2.save();
                canvas2.clipPath(timelineView2.roundClipPath);
                VideoThumbsLoader videoThumbsLoader4 = timelineView2.roundThumbs;
                if (videoThumbsLoader4 != null) {
                    long j21 = timelineView2.roundDuration;
                    float f96 = j21 <= 0 ? 0.0f : timelineView2.px + timelineView2.ph + (((timelineView2.roundOffset - timelineView2.scroll) / j4) * timelineView2.sw);
                    int i36 = timelineView2.ph;
                    float f97 = f96 - i36;
                    float f98 = (j21 <= 0 ? 0.0f : ((((timelineView2.roundOffset + j21) - timelineView2.scroll) / j4) * timelineView2.sw) + timelineView2.px + i36) + i36;
                    int frameWidth3 = videoThumbsLoader4.getFrameWidth();
                    float f99 = timelineView2.videoTrack != null ? r7 + timelineView2.ph + (((timelineView2.roundOffset - timelineView2.scroll) / j4) * timelineView2.sw) : timelineView2.px;
                    float f100 = frameWidth3;
                    int iMax3 = (int) Math.max(0.0d, Math.floor((f97 - f99) / f100));
                    int iMin3 = (int) Math.min(timelineView2.roundThumbs.count, Math.ceil((f98 - f97) / f100) + 1.0d);
                    int i37 = (int) timelineView2.roundBounds.top;
                    int i38 = timelineView2.roundThumbs.frames.size() >= iMin3 ? i : 0;
                    if (i38 != 0) {
                        for (int i39 = iMax3; i39 < Math.min(timelineView2.roundThumbs.frames.size(), iMin3); i39++) {
                            if (((VideoThumbsLoader.BitmapFrame) timelineView2.roundThumbs.frames.get(i39)).bitmap == null) {
                                i4 = 0;
                                break;
                            }
                        }
                        i4 = i38;
                        if (i4 != 0) {
                            i5 = frameWidth3;
                            paint = paint6;
                            if (i5 != 0) {
                                while (iMax3 < Math.min(timelineView2.roundThumbs.frames.size(), iMin3)) {
                                    VideoThumbsLoader.BitmapFrame bitmapFrame3 = (VideoThumbsLoader.BitmapFrame) timelineView2.roundThumbs.frames.get(iMax3);
                                    if (bitmapFrame3.bitmap != null) {
                                        paint2 = paint;
                                        timelineView2.videoFramePaint.setAlpha((int) (bitmapFrame3.getAlpha() * 255.0f));
                                        canvas2.drawBitmap(bitmapFrame3.bitmap, f97, i37 - ((int) ((r2.getHeight() - f29) / 2.0f)), timelineView2.videoFramePaint);
                                    } else {
                                        paint2 = paint;
                                    }
                                    f97 += f100;
                                    iMax3++;
                                    paint = paint2;
                                }
                            }
                            paint6 = paint;
                            if (i38 == 0) {
                                timelineView2.roundThumbs.load();
                            }
                        } else {
                            if (timelineView2.blurManager.hasRenderNode()) {
                                timelineView2.backgroundBlur.drawRect(canvas2);
                                canvas2.drawColor(855638016);
                            } else if (paint6 == null) {
                                canvas2.drawColor(TLObject.FLAG_30);
                            } else {
                                i5 = frameWidth3;
                                paint = paint6;
                                canvas2.drawRect(timelineView2.roundBounds, paint);
                                canvas2.drawColor(855638016);
                                if (i5 != 0) {
                                }
                                paint6 = paint;
                                if (i38 == 0) {
                                }
                            }
                            i5 = frameWidth3;
                            paint = paint6;
                            if (i5 != 0) {
                            }
                            paint6 = paint;
                            if (i38 == 0) {
                            }
                        }
                    } else {
                        i4 = i38;
                        if (i4 != 0) {
                        }
                    }
                }
                timelineView2.selectedVideoClipPath.rewind();
                RectF rectF11 = AndroidUtilities.rectTmp;
                int i40 = timelineView2.px;
                int i41 = timelineView2.ph;
                float f101 = i40 + i41;
                float f102 = timelineView2.roundLeft;
                long j22 = timelineView2.roundDuration;
                long j23 = timelineView2.scroll;
                long j24 = timelineView2.roundOffset;
                float f103 = j4;
                float f104 = (((j22 * f102) - j23) + j24) / f103;
                int i42 = timelineView2.sw;
                float f105 = f101 + (f104 * i42);
                if (f102 <= 0.0f) {
                    f31 = f105;
                    i3 = i41;
                } else {
                    f31 = f105;
                    i3 = 0;
                }
                float f106 = 1.0f - f14;
                float f107 = (f31 - i3) - (i41 * f106);
                f15 = f13;
                RectF rectF12 = timelineView2.roundBounds;
                f16 = f88;
                float f108 = rectF12.top;
                j17 = j4;
                float f109 = timelineView2.roundRight;
                rectF11.set(f107, f108, i40 + i41 + (((((j22 * f109) - j23) + j24) / f103) * i42) + (f109 >= 1.0f ? i41 : 0) + (i41 * f106), rectF12.bottom);
                timelineView2.selectedVideoClipPath.addRoundRect(rectF11, timelineView2.selectedVideoRadii, Path.Direction.CW);
                canvas2.clipPath(timelineView2.selectedVideoClipPath, Region.Op.DIFFERENCE);
                canvas2.drawColor(1342177280);
                canvas2.restore();
                f46 = f95;
            } else {
                f14 = f89;
                f15 = f13;
                f16 = f88;
            }
            float f110 = timelineView2.audioT.set(timelineView2.hasAudio);
            float f111 = timelineView2.audioSelectedT.set((timelineView2.hasAudio && timelineView2.audioSelected) ? i : 0);
            float audioHeight = timelineView2.getAudioHeight() * f110;
            float f112 = ((timelineView2.videoTrack == null && !timelineView2.hasRound && timelineView2.collageTracks.isEmpty()) ? 1.0f : f111) * f110;
            if (f110 > 0.0f) {
                long j25 = timelineView2.audioOffset;
                float f113 = timelineView2.audioLeft;
                long j26 = timelineView2.audioDuration;
                f11 += (j25 + (f113 * j26)) * f112;
                f10 += (j25 + (timelineView2.audioRight * j26)) * f112;
                Paint paint7 = timelineView2.audioBlur.getPaint(f110);
                canvas2.save();
                if (timelineView2.videoTrack != null || timelineView2.hasRound || !timelineView2.collageTracks.isEmpty()) {
                    f25 = audioHeight;
                    f26 = f112;
                    j2 = j17;
                    float f114 = j2;
                    float fLerp7 = timelineView2.px + timelineView2.ph + ((((timelineView2.audioOffset - timelineView2.scroll) + (AndroidUtilities.lerp(timelineView2.audioLeft, 0.0f, f111) * timelineView2.audioDuration)) / f114) * timelineView2.sw);
                    fLerp = timelineView2.px + timelineView2.ph + ((((timelineView2.audioOffset - timelineView2.scroll) + (AndroidUtilities.lerp(timelineView2.audioRight, 1.0f, f111) * timelineView2.audioDuration)) / f114) * timelineView2.sw);
                    f27 = fLerp7;
                } else {
                    float f115 = timelineView2.px + timelineView2.ph;
                    long j27 = timelineView2.audioOffset;
                    long j28 = timelineView2.scroll;
                    f25 = audioHeight;
                    f26 = f112;
                    j2 = j17;
                    float f116 = j2;
                    float f117 = (j27 - j28) / f116;
                    int i43 = timelineView2.sw;
                    fLerp = r6 + r7 + ((((j27 - j28) + timelineView2.audioDuration) / f116) * i43);
                    f27 = f115 + (f117 * i43);
                }
                float f118 = fLerp;
                RectF rectF13 = timelineView2.audioBounds;
                int i44 = timelineView2.ph;
                rectF13.set(f27 - i44, f46 - f25, i44 + f118, f46);
                RectF rectF14 = timelineView2.audioBounds;
                f12 += rectF14.top * f26;
                f9 += rectF14.bottom * f26;
                timelineView2.audioClipPath.rewind();
                timelineView2.audioClipPath.addRoundRect(timelineView2.audioBounds, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), Path.Direction.CW);
                canvas2.clipPath(timelineView2.audioClipPath);
                BlurringShader.BlurManager blurManager3 = timelineView2.blurManager;
                if (blurManager3 != null && blurManager3.hasRenderNode()) {
                    timelineView2.backgroundBlur.drawRect(canvas2);
                    canvas2.drawColor(Theme.multAlpha(855638016, f110));
                } else if (paint7 == null) {
                    canvas2.drawColor(Theme.multAlpha(TLObject.FLAG_30, f110));
                } else {
                    canvas2.drawRect(timelineView2.audioBounds, paint7);
                    canvas2.drawColor(Theme.multAlpha(855638016, f110));
                }
                if (timelineView2.waveform != null && (blurManager = timelineView2.blurManager) != null && blurManager.hasRenderNode()) {
                    float f119 = timelineView2.waveformMax.set(timelineView2.waveform.getMaxBar(), !timelineView2.waveformIsLoaded);
                    timelineView2.waveformIsLoaded = timelineView2.waveform.getLoadedCount() > 0 ? i : 0;
                    float f120 = f25;
                    d = 0.0d;
                    long j29 = j2;
                    timelineView2.waveformPath.check(timelineView2.px + timelineView2.ph + (((timelineView2.audioOffset - timelineView2.scroll) / j2) * timelineView2.sw), f27, f118, f111, j29, f120, f119, timelineView2.audioBounds.bottom, timelineView2.waveform);
                    j3 = j29;
                    canvas2.saveLayerAlpha(timelineView2.audioBounds, 102, 31);
                    canvas2.clipPath(timelineView2.waveformPath);
                    timelineView2.audioWaveformBlur.drawRect(canvas2);
                    canvas2.restore();
                } else {
                    j3 = j2;
                    d = 0.0d;
                    if (timelineView2.waveform != null && paint7 != null) {
                        Paint paint8 = timelineView2.audioWaveformBlur.getPaint(f110 * 0.4f);
                        if (paint8 == null) {
                            paint8 = timelineView2.waveformPaint;
                            paint8.setAlpha((int) (64.0f * f110));
                        }
                        float f121 = timelineView2.waveformMax.set(timelineView2.waveform.getMaxBar(), !timelineView2.waveformIsLoaded);
                        timelineView2.waveformIsLoaded = timelineView2.waveform.getLoadedCount() > 0 ? i : 0;
                        timelineView2.waveformPath.check(timelineView2.px + timelineView2.ph + (((timelineView2.audioOffset - timelineView2.scroll) / j3) * timelineView2.sw), f27, f118, f111, j3, f25, f121, timelineView2.audioBounds.bottom, timelineView2.waveform);
                        j3 = j3;
                        canvas2.drawPath(timelineView2.waveformPath, paint8);
                    }
                }
                if (f111 < 1.0f) {
                    int i45 = timelineView2.px;
                    int i46 = timelineView2.ph;
                    long j30 = j3;
                    float f122 = timelineView2.audioOffset - timelineView2.scroll;
                    float f123 = timelineView2.audioLeft;
                    long j31 = timelineView2.audioDuration;
                    float f124 = j30;
                    int i47 = timelineView2.sw;
                    float f125 = i45 + i46 + (((f122 + (f123 * j31)) / f124) * i47);
                    float f126 = i45 + i46 + ((((r5 - r12) + (timelineView2.audioRight * j31)) / f124) * i47);
                    float fMax4 = (Math.max(i45, f125) + Math.min(timelineView2.f1241w - timelineView2.px, f126)) / 2.0f;
                    float fCenterY = timelineView2.audioBounds.centerY();
                    float fMax5 = Math.max(0.0f, (Math.min(timelineView2.f1241w - timelineView2.px, f126) - Math.max(timelineView2.px, f125)) - AndroidUtilities.dp(24.0f));
                    float fDpf2 = AndroidUtilities.dpf2(13.0f) + ((timelineView2.audioAuthor == null && timelineView2.audioTitle == null) ? 0.0f : AndroidUtilities.dpf2(3.11f) + timelineView2.audioAuthorWidth + AndroidUtilities.dpf2(9.66f) + timelineView2.audioTitleWidth);
                    int i48 = fDpf2 < fMax5 ? i : 0;
                    float fMin = fMax4 - (Math.min(fDpf2, fMax5) / 2.0f);
                    timelineView2.audioIcon.setBounds((int) fMin, (int) (fCenterY - (AndroidUtilities.dp(13.0f) / 2.0f)), (int) (AndroidUtilities.dp(13.0f) + fMin), (int) ((AndroidUtilities.dp(13.0f) / 2.0f) + fCenterY));
                    float f127 = 1.0f - f111;
                    float f128 = f127 * 255.0f;
                    timelineView2.audioIcon.setAlpha((int) f128);
                    timelineView2.audioIcon.draw(canvas2);
                    float fDpf22 = fMin + AndroidUtilities.dpf2(16.11f);
                    int i49 = i48;
                    f17 = f48;
                    f18 = f47;
                    j = j30;
                    canvas2.saveLayerAlpha(0.0f, 0.0f, timelineView2.f1241w, timelineView2.f1240h, 255, 31);
                    float fMin2 = Math.min(f126, timelineView2.f1241w) - AndroidUtilities.dp(12.0f);
                    canvas2.clipRect(fDpf22, 0.0f, fMin2, timelineView2.f1240h);
                    if (timelineView2.audioAuthor != null) {
                        canvas2.save();
                        canvas2.translate(fDpf22 - timelineView2.audioAuthorLeft, fCenterY - (timelineView2.audioAuthor.getHeight() / 2.0f));
                        timelineView2.audioAuthorPaint.setAlpha((int) (f128 * f110));
                        timelineView2.audioAuthor.draw(canvas2);
                        canvas2.restore();
                        fDpf22 += timelineView2.audioAuthorWidth;
                    }
                    if (timelineView2.audioAuthor != null && timelineView2.audioTitle != null) {
                        float fDpf23 = fDpf22 + AndroidUtilities.dpf2(3.66f);
                        int alpha = timelineView2.audioDotPaint.getAlpha();
                        timelineView2.audioDotPaint.setAlpha((int) (alpha * f127));
                        canvas2.drawCircle(AndroidUtilities.dp(1.0f) + fDpf23, fCenterY, AndroidUtilities.dp(1.0f), timelineView2.audioDotPaint);
                        timelineView2.audioDotPaint.setAlpha(alpha);
                        fDpf22 = fDpf23 + AndroidUtilities.dpf2(2.0f) + AndroidUtilities.dpf2(4.0f);
                    }
                    if (timelineView2.audioTitle != null) {
                        canvas2.save();
                        canvas2.translate(fDpf22 - timelineView2.audioTitleLeft, fCenterY - (timelineView2.audioTitle.getHeight() / 2.0f));
                        timelineView2.audioTitlePaint.setAlpha((int) (f128 * f110));
                        timelineView2.audioTitle.draw(canvas2);
                        canvas2.restore();
                    }
                    if (i49 == 0) {
                        timelineView2.ellipsizeMatrix.reset();
                        timelineView2.ellipsizeMatrix.postScale(AndroidUtilities.dpf2(8.0f) / 16.0f, 1.0f);
                        timelineView2.ellipsizeMatrix.postTranslate(fMin2 - AndroidUtilities.dp(8.0f), 0.0f);
                        timelineView2.ellipsizeGradient.setLocalMatrix(timelineView2.ellipsizeMatrix);
                        RectF rectF15 = timelineView2.audioBounds;
                        canvas2.drawRect(fMin2 - AndroidUtilities.dp(8.0f), rectF15.top, fMin2, rectF15.bottom, timelineView2.ellipsizePaint);
                    }
                    canvas.restore();
                } else {
                    j = j3;
                    f17 = f48;
                    f18 = f47;
                }
                canvas.restore();
            } else {
                f17 = f48;
                f18 = f47;
                j = j17;
                d = 0.0d;
            }
            float f129 = f9;
            float f130 = f12;
            int i50 = timelineView2.px;
            int i51 = timelineView2.ph;
            long j32 = timelineView2.scroll;
            float f131 = j;
            int i52 = timelineView2.sw;
            float f132 = i50 + i51 + (((f11 - j32) / f131) * i52);
            float f133 = i50 + i51 + (((f10 - j32) / f131) * i52);
            if (!timelineView2.collageTracks.isEmpty()) {
                f20 = f130;
                fMax3 = f15;
            } else if (timelineView2.hasAudio && timelineView2.videoTrack == null) {
                f20 = f130;
                fMax3 = f110;
            } else {
                f19 = f16;
                fMax3 = Math.max(f17, f19);
                f20 = f130;
                if (f110 <= d || f19 > d || f17 > d || f15 > d) {
                    Paint paint9 = paint6;
                    timelineView2.drawRegion(canvas, paint9, f20, f129, f132, f133, ((timelineView2.videoTrack == null || timelineView2.hasRound || !timelineView2.collageTracks.isEmpty()) ? 1.0f : AndroidUtilities.lerp(0.6f, 1.0f, f111) * f110) * fMax3);
                    track3 = timelineView2.videoTrack;
                    if (track3 == null && ((timelineView2.hasAudio || timelineView2.hasRound) && (f111 > 0.0f || f14 > 0.0f))) {
                        float f134 = (r3 - r4) - f8;
                        float f135 = timelineView2.f1240h - timelineView2.py;
                        int i53 = timelineView2.ph;
                        int i54 = timelineView2.px;
                        float f136 = track3.left;
                        long j33 = track3.duration;
                        long j34 = timelineView2.scroll;
                        int i55 = timelineView2.sw;
                        float f137 = i53 + i54 + ((((f136 * j33) - j34) / f131) * i55);
                        float f138 = i53 + i54 + ((((track3.right * j33) - j34) / f131) * i55);
                        timelineView2 = this;
                        canvas3 = canvas;
                        timelineView2.drawRegion(canvas3, paint9, f134, f135, f137, f138, 0.8f);
                    } else if (timelineView2.collageMain != null || timelineView2.collageTracks.size() <= i) {
                        canvas3 = canvas;
                    } else {
                        Track track10 = timelineView2.collageMain;
                        RectF rectF16 = track10.bounds;
                        float f139 = rectF16.top;
                        float f140 = rectF16.bottom;
                        int i56 = timelineView2.ph;
                        int i57 = timelineView2.px;
                        long j35 = track10.offset;
                        float f141 = track10.left;
                        long j36 = track10.duration;
                        long j37 = timelineView2.scroll;
                        int i58 = timelineView2.sw;
                        float f142 = i56 + i57 + ((((j35 + (f141 * j36)) - j37) / f131) * i58);
                        float f143 = i56 + i57 + ((((j35 + (track10.right * j36)) - j37) / f131) * i58);
                        timelineView2 = this;
                        canvas3 = canvas;
                        timelineView2.drawRegion(canvas3, paint9, f139, f140, f142, f143, 0.8f);
                    }
                    timelineView = timelineView2;
                    if (timelineView.maxCount <= 1) {
                        Track track11 = timelineView.videoTrack;
                        if (track11 != null) {
                            long j38 = track11.duration;
                            float f144 = track11.right;
                            float f145 = track11.left;
                            long j39 = (long) (j38 * (f144 - f145));
                            if (j39 > 68999) {
                                float f146 = timelineView.px + timelineView.ph;
                                long j40 = timelineView.scroll;
                                float f147 = ((f145 * j38) - j40) / f131;
                                int i59 = timelineView.sw;
                                float f148 = f146 + (i59 * f147);
                                float f149 = r4 + r13 + ((((j38 * f144) - j40) / f131) * i59);
                                canvas3.save();
                                int i60 = timelineView.f1240h;
                                int i61 = timelineView.py;
                                canvas3.clipRect(f148, (i60 - i61) - f8, f149, i60 - i61);
                                timelineView.regionPaint.setAlpha((int) (AndroidUtilities.lerp(0.8f, 1.0f, f18) * 255.0f));
                                i = 1;
                                long j41 = 59000;
                                int iMin4 = (int) Math.min(timelineView.maxCount - 1, j39 / 59000);
                                int i62 = 1;
                                while (i62 <= iMin4) {
                                    if (Math.min(j41, j39 - (((long) i62) * j41)) < 1000) {
                                        break;
                                    }
                                    float f150 = timelineView.px + timelineView.ph;
                                    Track track12 = timelineView.videoTrack;
                                    float f151 = f150 + ((((((long) (track12.duration * track12.left)) + r2) - timelineView.scroll) / f131) * timelineView.sw);
                                    Canvas canvas4 = canvas3;
                                    canvas4.drawRect(f151, (timelineView.f1240h - timelineView.py) - f8, AndroidUtilities.dp(1.0f) + f151, timelineView.f1240h - timelineView.py, timelineView.regionPaint);
                                    canvas3 = canvas4;
                                    StringBuilder sb = new StringBuilder("#");
                                    i62++;
                                    sb.append(i62);
                                    canvas3.drawText(sb.toString(), f151 + AndroidUtilities.dp(2.0f), ((timelineView.f1240h - timelineView.py) - f8) + AndroidUtilities.dp(14.0f), timelineView.countTextPaint);
                                    j41 = 59000;
                                }
                                canvas3.restore();
                            } else {
                                i = 1;
                            }
                        }
                    } else {
                        i = 1;
                    }
                    f21 = timelineView.loopProgress.set(0.0f);
                    float contentHeight = ((timelineView.f1240h - timelineView.getContentHeight()) + timelineView.py) - AndroidUtilities.dpf2(2.3f);
                    float fDpf24 = AndroidUtilities.dpf2(4.3f) + (timelineView.f1240h - timelineView.py);
                    if (f21 <= 0.0f) {
                        long j42 = timelineView.loopProgressFrom;
                        if (j42 == -1) {
                            Track track13 = timelineView.videoTrack;
                            if (track13 != null) {
                                f24 = track13.duration * track13.right;
                            } else {
                                Track track14 = timelineView.collageMain;
                                if (track14 != null) {
                                    f24 = track14.duration * (track14.right - track14.left);
                                } else {
                                    if (timelineView.hasRound) {
                                        f22 = timelineView.roundDuration;
                                        f23 = timelineView.roundRight;
                                    } else {
                                        f22 = timelineView.audioDuration;
                                        f23 = timelineView.audioRight;
                                    }
                                    j42 = (long) (f22 * f23);
                                }
                            }
                            j42 = (long) f24;
                        }
                        timelineView2 = this;
                        timelineView2.drawProgress(canvas3, contentHeight, fDpf24, j42, f21 * fMax3);
                    } else {
                        timelineView2 = timelineView;
                    }
                    timelineView2.drawProgress(canvas, contentHeight, fDpf24, timelineView2.progress, (1.0f - f21) * fMax3);
                }
                if (z) {
                    canvas.restore();
                }
            }
            f19 = f16;
            if (f110 <= d) {
                if (timelineView2.videoTrack == null) {
                    Paint paint92 = paint6;
                    timelineView2.drawRegion(canvas, paint92, f20, f129, f132, f133, ((timelineView2.videoTrack == null || timelineView2.hasRound || !timelineView2.collageTracks.isEmpty()) ? 1.0f : AndroidUtilities.lerp(0.6f, 1.0f, f111) * f110) * fMax3);
                    track3 = timelineView2.videoTrack;
                    if (track3 == null) {
                        if (timelineView2.collageMain != null) {
                            canvas3 = canvas;
                            timelineView = timelineView2;
                            if (timelineView.maxCount <= 1) {
                            }
                            f21 = timelineView.loopProgress.set(0.0f);
                            float contentHeight2 = ((timelineView.f1240h - timelineView.getContentHeight()) + timelineView.py) - AndroidUtilities.dpf2(2.3f);
                            float fDpf242 = AndroidUtilities.dpf2(4.3f) + (timelineView.f1240h - timelineView.py);
                            if (f21 <= 0.0f) {
                            }
                            timelineView2.drawProgress(canvas, contentHeight2, fDpf242, timelineView2.progress, (1.0f - f21) * fMax3);
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
            float f152 = 1.0f / (1000.0f / AndroidUtilities.screenRefreshRate);
            float f153 = timelineView2.dragSpeed;
            long jDp = (long) ((AndroidUtilities.dp(32.0f) / timelineView2.sw) * j * f152 * f153);
            if (timelineView2.isCover) {
                timelineView2.dragSpeed = f153 + (f152 * 0.25f);
            }
            int i63 = timelineView2.pressHandle;
            int i64 = -1;
            if (i63 == 4 && (track2 = timelineView2.videoTrack) != null) {
                float f154 = track2.left;
                long j43 = timelineView2.scroll;
                long j44 = track2.duration;
                if (f154 >= j43 / j44) {
                    if (track2.right > (j43 + j) / j44) {
                        i64 = i;
                    } else {
                        timelineView2.dragSpeed = 1.0f;
                        i64 = 0;
                    }
                }
                long j45 = ((long) i64) * jDp;
                timelineView2.scroll = Utilities.clamp(j43 + j45, j44 - j, 0L);
                timelineView2.progress += j45;
                Track track15 = timelineView2.videoTrack;
                float f155 = (r3 - j43) / track15.duration;
                if (f155 > 0.0f) {
                    f3 = 1.0f;
                    fMax2 = Math.min(1.0f - track15.right, f155);
                } else {
                    f3 = 1.0f;
                    fMax2 = Math.max(0.0f - track15.left, f155);
                }
                Track track16 = timelineView2.videoTrack;
                track16.left = Utilities.clamp(track16.left + fMax2, f3, 0.0f);
                Track track17 = timelineView2.videoTrack;
                track17.right = Utilities.clamp(track17.right + fMax2, f3, 0.0f);
                TimelineDelegate timelineDelegate = timelineView2.delegate;
                if (timelineDelegate != null) {
                    timelineDelegate.onVideoLeftChange(false, timelineView2.videoTrack.left);
                    timelineView2.delegate.onVideoRightChange(false, timelineView2.videoTrack.right);
                }
                timelineView2.invalidate();
            } else if (i63 == 8) {
                float f156 = timelineView2.audioLeft;
                long j46 = timelineView2.audioOffset;
                float f157 = (-j46) + 100;
                long j47 = timelineView2.audioDuration;
                if (f156 >= f157 / j47) {
                    if (timelineView2.audioRight >= (((-j46) + j) - 100) / j47) {
                        i64 = i;
                    } else {
                        timelineView2.dragSpeed = 1.0f;
                        i64 = 0;
                    }
                }
                if (i64 != 0) {
                    if (timelineView2.audioSelected && (track = timelineView2.videoTrack) != null) {
                        long j48 = j46 - (((long) i64) * jDp);
                        float f158 = track.right;
                        long j49 = track.duration;
                        timelineView2.audioOffset = Utilities.clamp(j48, (long) ((f158 * j49) - (f156 * j47)), (long) ((track.left * j49) - (timelineView2.audioRight * j47)));
                    } else if (timelineView2.roundSelected && timelineView2.hasRound) {
                        long j50 = j46 - (((long) i64) * jDp);
                        float f159 = timelineView2.roundRight;
                        long j51 = timelineView2.roundDuration;
                        timelineView2.audioOffset = Utilities.clamp(j50, (long) ((f159 * j51) - (f156 * j47)), (long) ((timelineView2.roundLeft * j51) - (timelineView2.audioRight * j47)));
                    } else {
                        timelineView2.audioOffset = Utilities.clamp(j46 - (((long) i64) * jDp), 0L, -(j47 - Math.min(timelineView2.getBaseDuration(), timelineView2.getMaxScrollDuration())));
                    }
                    float f160 = (-(timelineView2.audioOffset - j46)) / timelineView2.audioDuration;
                    if (f160 > 0.0f) {
                        fMax = Math.min(1.0f - timelineView2.audioRight, f160);
                    } else {
                        fMax = Math.max(0.0f - timelineView2.audioLeft, f160);
                    }
                    if (timelineView2.videoTrack == null) {
                        float f161 = timelineView2.progress;
                        long j52 = timelineView2.audioDuration;
                        f2 = 0.0f;
                        timelineView2.progress = (long) Utilities.clamp(f161 + (j52 * fMax), j52, 0.0f);
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
        rectF.set(f3 - AndroidUtilities.dp(10.0f), f, f4 + AndroidUtilities.dp(10.0f), f2);
        canvas.saveLayerAlpha(0.0f, 0.0f, this.f1241w, this.f1240h, 255, 31);
        int i = (int) (255.0f * f5);
        this.regionPaint.setAlpha(i);
        canvas.drawRoundRect(rectF, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), this.regionPaint);
        rectF.inset(AndroidUtilities.dp(this.isCover ? 2.5f : 10.0f), AndroidUtilities.dp(2.0f));
        if (this.isCover) {
            canvas.drawRoundRect(rectF, AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f), this.regionCutPaint);
        } else {
            canvas.drawRect(rectF, this.regionCutPaint);
        }
        float fDp = AndroidUtilities.dp(2.0f);
        float fDp2 = AndroidUtilities.dp(10.0f);
        Paint paint2 = paint != null ? paint : this.regionHandlePaint;
        this.regionHandlePaint.setAlpha(255);
        paint2.setAlpha(i);
        float f6 = f + f2;
        float f7 = (f6 - fDp2) / 2.0f;
        float f8 = (f6 + fDp2) / 2.0f;
        rectF.set(f3 - ((AndroidUtilities.dp(this.isCover ? 2.0f : 10.0f) - fDp) / 2.0f), f7, f3 - ((AndroidUtilities.dp(this.isCover ? 2.0f : 10.0f) + fDp) / 2.0f), f8);
        if (!this.isCover) {
            canvas.drawRoundRect(rectF, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), paint2);
            if (paint != null && !this.isCover) {
                this.regionHandlePaint.setAlpha((int) (f5 * 48.0f));
                canvas.drawRoundRect(rectF, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), this.regionHandlePaint);
            }
        }
        rectF.set(f4 + ((AndroidUtilities.dp(this.isCover ? 2.5f : 10.0f) - fDp) / 2.0f), f7, f4 + ((AndroidUtilities.dp(this.isCover ? 2.5f : 10.0f) + fDp) / 2.0f), f8);
        if (!this.isCover) {
            canvas.drawRoundRect(rectF, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), paint2);
            if (paint != null) {
                this.regionHandlePaint.setAlpha((int) (f5 * 48.0f));
                canvas.drawRoundRect(rectF, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), this.regionHandlePaint);
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
        float f5 = this.px + this.ph + (this.sw * (((fClamp + f4) - this.scroll) / jMin));
        float f6 = (((f2 - f) / 2.0f) / 2.0f) * (1.0f - f3);
        float f7 = f + f6;
        float f8 = f2 - f6;
        this.progressShadowPaint.setAlpha((int) (38.0f * f3));
        this.progressWhitePaint.setAlpha((int) (f3 * 255.0f));
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(f5 - AndroidUtilities.dpf2(1.5f), f7, AndroidUtilities.dpf2(1.5f) + f5, f8);
        rectF.inset(-AndroidUtilities.dpf2(0.66f), -AndroidUtilities.dpf2(0.66f));
        canvas.drawRoundRect(rectF, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), this.progressShadowPaint);
        rectF.set(f5 - AndroidUtilities.dpf2(1.5f), f7, f5 + AndroidUtilities.dpf2(1.5f), f8);
        canvas.drawRoundRect(rectF, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), this.progressWhitePaint);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        this.audioAuthorPaint.setTextSize(AndroidUtilities.dp(12.0f));
        this.audioTitlePaint.setTextSize(AndroidUtilities.dp(12.0f));
        int iDp = AndroidUtilities.dp(12.0f);
        this.px = iDp;
        int iDp2 = AndroidUtilities.dp(5.0f);
        this.py = iDp2;
        setPadding(iDp, iDp2, AndroidUtilities.dp(12.0f), AndroidUtilities.dp(5.0f));
        int size = View.MeasureSpec.getSize(i);
        this.f1241w = size;
        int iDp3 = AndroidUtilities.dp(heightDp());
        this.f1240h = iDp3;
        setMeasuredDimension(size, iDp3);
        int iDp4 = AndroidUtilities.dp(10.0f);
        this.ph = iDp4;
        this.sw = (this.f1241w - (iDp4 * 2)) - (this.px * 2);
        Track track = this.videoTrack;
        if (track != null && track.path != null && track.thumbs == null) {
            track.setupThumbs(false);
        }
        if (!this.collageTracks.isEmpty()) {
            ArrayList<Track> arrayList = this.collageTracks;
            int size2 = arrayList.size();
            int i3 = 0;
            while (i3 < size2) {
                Track track2 = arrayList.get(i3);
                i3++;
                Track track3 = track2;
                if (track3.path != null && track3.thumbs == null) {
                    track3.setupThumbs(false);
                    track3.setupWaveform(false);
                }
            }
        }
        if (this.audioPath == null || this.waveform != null) {
            return;
        }
        setupAudioWaveform();
    }

    public class VideoThumbsLoader {
        private Path clipPath;
        private int count;
        private boolean destroyed;
        private long duration;
        private volatile int frameHeight;
        private volatile long frameIterator;
        private volatile int frameWidth;
        private final boolean isRound;
        private long nextFrame;
        private final ArrayList<BitmapFrame> frames = new ArrayList<>();
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
                    FileLog.m992e(exc);
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
                FileLog.m992e(e);
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
            ArrayList<BitmapFrame> arrayList = this.frames;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                BitmapFrame bitmapFrame = arrayList.get(i);
                i++;
                Bitmap bitmap = bitmapFrame.bitmap;
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
                    FileLog.m992e(e);
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

    public class AudioWaveformLoader {
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
                FileLog.m992e(e);
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
                                    short s3 = (short) ((outputBuffer.get() & UByte.MAX_VALUE) | ((outputBuffer.get() & UByte.MAX_VALUE) << 8));
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
                FileLog.m992e(e);
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
        return AndroidUtilities.lerp(this.py + AndroidUtilities.dp(28.0f) + this.py, getContentHeight(), this.openT.get());
    }

    public int getContentHeight() {
        return (int) (this.py + (this.videoTrack != null ? getVideoHeight() + AndroidUtilities.dp(4.0f) : 0.0f) + (this.collageTracks.isEmpty() ? 0.0f : getCollageHeight() + AndroidUtilities.dp(4.0f)) + (this.hasRound ? getRoundHeight() + AndroidUtilities.dp(4.0f) : 0.0f) + (this.hasAudio ? AndroidUtilities.dp(4.0f) + getAudioHeight() : 0.0f) + this.py);
    }
}
