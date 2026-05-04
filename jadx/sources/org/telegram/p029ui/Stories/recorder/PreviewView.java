package org.telegram.p029ui.Stories.recorder;

import android.content.ContentUris;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Size;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.zxing.common.detector.MathUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.ChatThemeController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.wallpaper.WallpaperBitmapHolder;
import org.telegram.p029ui.ActionBar.EmojiThemes;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.theme.ThemeKey;
import org.telegram.p029ui.ChatBackgroundDrawable;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.BlurringShader;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.MotionBackgroundDrawable;
import org.telegram.p029ui.Components.Paint.Views.RoundView;
import org.telegram.p029ui.Components.PhotoFilterView;
import org.telegram.p029ui.Components.VideoEditTextureView;
import org.telegram.p029ui.Components.VideoPlayer;
import org.telegram.p029ui.Stories.recorder.StoryEntry;
import org.telegram.p029ui.Stories.recorder.TimelineView;
import org.telegram.tgnet.ResultCallback;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public abstract class PreviewView extends FrameLayout {
    private boolean allowCropping;
    private boolean allowRotation;
    private boolean allowWithSingleTouch;
    private float angle;
    private VideoPlayer audioPlayer;
    private Bitmap bitmap;
    private final Rect bitmapDst;
    private final Paint bitmapPaint;
    private final Rect bitmapSrc;
    private final BlurringShader.BlurManager blurManager;
    private CollageLayoutView2 collage;
    private CropEditor cropEditorDrawing;

    /* JADX INFO: renamed from: cx */
    private float f2211cx;

    /* JADX INFO: renamed from: cy */
    private float f2212cy;
    private boolean doNotSpanRotation;
    private boolean draw;
    public boolean drawForThemeToggle;
    private StoryEntry entry;
    public TextureView filterTextureView;
    private Matrix finalMatrix;
    private long finalSeekPosition;
    private int gradientBottom;
    private final Paint gradientPaint;
    private int gradientTop;

    /* JADX INFO: renamed from: h */
    private float f2213h;
    public Runnable invalidateBlur;
    private final Matrix invertMatrix;
    public boolean isMuted;
    private long lastPos;
    private final PointF lastTouch;
    private float lastTouchDistance;
    private double lastTouchRotation;
    private Drawable lastWallpaperDrawable;
    private final Matrix matrix;
    private boolean moving;
    private boolean multitouch;
    private Runnable onErrorListener;
    private Runnable onTap;
    private final HashSet pauseLinks;
    private PhotoFilterView photoFilterView;
    private float rotationDiff;
    private VideoPlayer roundPlayer;
    private int roundPlayerHeight;
    private int roundPlayerWidth;
    private RoundView roundView;
    private long seekedLastTime;
    private Runnable slowerSeek;
    private boolean slowerSeekScheduled;
    private final Paint snapPaint;
    private boolean snappedRotation;
    private boolean snappedToCenterAndScaled;
    private long tapTime;
    private VideoEditTextureView textureView;
    private final TextureViewHolder textureViewHolder;
    private final AnimatedFloat thumbAlpha;
    private Bitmap thumbBitmap;
    private TimelineView timelineView;
    private final PointF touch;
    private Matrix touchMatrix;
    private final Matrix transformBackMatrix;
    private final Matrix transformMatrix;
    private final Runnable updateAudioProgressRunnable;
    private final Runnable updateProgressRunnable;
    private final Runnable updateRoundProgressRunnable;
    private final float[] vertices;
    private int videoHeight;
    private VideoPlayer videoPlayer;
    private int videoWidth;

    /* JADX INFO: renamed from: w */
    private float f2214w;
    private Drawable wallpaperDrawable;
    private AnimatedFloat wallpaperDrawableCrossfade;

    public abstract boolean additionalTouchEvent(MotionEvent motionEvent);

    protected abstract void invalidateTextureViewHolder();

    public abstract void onAudioChanged();

    public abstract void onEntityDraggedBottom(boolean z);

    public abstract void onEntityDraggedTop(boolean z);

    public abstract void onRoundRemove();

    public abstract void onRoundSelectChange(boolean z);

    public PreviewView(Context context, BlurringShader.BlurManager blurManager, TextureViewHolder textureViewHolder) {
        super(context);
        this.bitmapSrc = new Rect();
        this.bitmapDst = new Rect();
        Paint paint = new Paint(1);
        this.snapPaint = paint;
        this.slowerSeek = new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.updateProgressRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$10();
            }
        };
        this.updateAudioProgressRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$11();
            }
        };
        this.updateRoundProgressRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$12();
            }
        };
        this.wallpaperDrawableCrossfade = new AnimatedFloat(this, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.bitmapPaint = new Paint(7);
        this.gradientPaint = new Paint(1);
        this.matrix = new Matrix();
        this.vertices = new float[2];
        this.draw = true;
        this.thumbAlpha = new AnimatedFloat(this, 0L, 320L, CubicBezierInterpolator.EASE_OUT);
        this.drawForThemeToggle = false;
        this.invertMatrix = new Matrix();
        this.transformMatrix = new Matrix();
        this.transformBackMatrix = new Matrix();
        this.allowCropping = true;
        this.lastTouch = new PointF();
        this.touch = new PointF();
        this.touchMatrix = new Matrix();
        this.finalMatrix = new Matrix();
        this.pauseLinks = new HashSet();
        this.blurManager = blurManager;
        this.textureViewHolder = textureViewHolder;
        paint.setStrokeWidth(AndroidUtilities.m1124dp(1.0f));
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(-1);
        paint.setShadowLayer(AndroidUtilities.m1124dp(3.0f), 0.0f, AndroidUtilities.m1124dp(1.0f), TLObject.FLAG_30);
    }

    public long getDuration() {
        StoryEntry storyEntry = this.entry;
        if (storyEntry != null) {
            double d = storyEntry.fileDuration;
            if (d >= 0.0d) {
                return (long) (d * 1000.0d);
            }
        }
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null || videoPlayer.getDuration() == -9223372036854775807L) {
            return 1L;
        }
        return this.videoPlayer.getDuration();
    }

    public void set(StoryEntry storyEntry) {
        set(storyEntry, null, 0L);
    }

    public void set(StoryEntry storyEntry, Runnable runnable, long j) {
        this.entry = storyEntry;
        if (storyEntry == null) {
            setupVideoPlayer(null, runnable, j);
            setupImage(null);
            setupCollage(null);
            setupWallpaper(null, false);
            this.gradientPaint.setShader(null);
            setupAudio((StoryEntry) null, false);
            setupRound(null, null, false);
            return;
        }
        if (storyEntry.isCollage()) {
            setupImage(null);
            setupVideoPlayer(null, runnable, j);
            setupCollage(storyEntry);
        } else if (storyEntry.isVideo) {
            setupImage(storyEntry);
            setupCollage(null);
            setupVideoPlayer(storyEntry, runnable, j);
            if (storyEntry.gradientTopColor != 0 || storyEntry.gradientBottomColor != 0) {
                setupGradient();
            } else {
                storyEntry.setupGradient(new PreviewView$$ExternalSyntheticLambda1(this));
            }
        } else {
            setupCollage(null);
            setupVideoPlayer(null, runnable, 0L);
            setupImage(storyEntry);
            setupGradient();
        }
        applyMatrix();
        setupWallpaper(storyEntry, false);
        setupAudio(storyEntry, false);
        setupRound(storyEntry, null, false);
    }

    public void setCollageView(CollageLayoutView2 collageLayoutView2) {
        this.collage = collageLayoutView2;
    }

    public boolean isCollage() {
        StoryEntry storyEntry;
        return (this.collage == null || (storyEntry = this.entry) == null || !storyEntry.isCollage()) ? false : true;
    }

    public void preset(StoryEntry storyEntry) {
        this.entry = storyEntry;
        if (storyEntry == null) {
            setupImage(null);
            setupWallpaper(null, false);
            this.gradientPaint.setShader(null);
            setupAudio((StoryEntry) null, false);
            setupRound(null, null, false);
            return;
        }
        if (storyEntry.isVideo) {
            setupImage(storyEntry);
            if (storyEntry.gradientTopColor != 0 || storyEntry.gradientBottomColor != 0) {
                setupGradient();
            } else {
                storyEntry.setupGradient(new PreviewView$$ExternalSyntheticLambda1(this));
            }
        } else {
            setupImage(storyEntry);
            setupGradient();
        }
        applyMatrix();
        setupWallpaper(storyEntry, false);
        setupAudio(storyEntry, false);
        setupRound(storyEntry, null, false);
    }

    public void setupAudio(StoryEntry storyEntry, boolean z) {
        VideoPlayer videoPlayer = this.audioPlayer;
        if (videoPlayer != null) {
            videoPlayer.pause();
            this.audioPlayer.releasePlayer(true);
            this.audioPlayer = null;
        }
        if (storyEntry == null) {
            return;
        }
        TimelineView timelineView = this.timelineView;
        if (timelineView != null) {
            timelineView.setAudio(storyEntry.audioPath, storyEntry.audioAuthor, storyEntry.audioTitle, storyEntry.audioDuration, storyEntry.audioOffset, storyEntry.audioLeft, storyEntry.audioRight, storyEntry.audioVolume, z);
        }
        if (storyEntry.audioPath != null) {
            VideoPlayer videoPlayer2 = new VideoPlayer();
            this.audioPlayer = videoPlayer2;
            videoPlayer2.allowMultipleInstances = true;
            videoPlayer2.setDelegate(new VideoPlayer.VideoPlayerDelegate() { // from class: org.telegram.ui.Stories.recorder.PreviewView.1
                @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onError(VideoPlayer videoPlayer3, Exception exc) {
                }

                @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onRenderedFirstFrame() {
                }

                @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                public /* synthetic */ void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
                    VideoPlayer.VideoPlayerDelegate.CC.$default$onRenderedFirstFrame(this, eventTime);
                }

                @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                public /* synthetic */ void onSeekFinished(AnalyticsListener.EventTime eventTime) {
                    VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekFinished(this, eventTime);
                }

                @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                public /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
                    VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekStarted(this, eventTime);
                }

                @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
                    return false;
                }

                @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onVideoSizeChanged(int i, int i2, int i3, float f) {
                }

                @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onStateChanged(boolean z2, int i) {
                    AndroidUtilities.cancelRunOnUIThread(PreviewView.this.updateAudioProgressRunnable);
                    if (PreviewView.this.audioPlayer == null || !PreviewView.this.audioPlayer.isPlaying()) {
                        return;
                    }
                    AndroidUtilities.runOnUIThread(PreviewView.this.updateAudioProgressRunnable);
                }

                @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
                    PreviewView.this.invalidateTextureViewHolder();
                }
            });
            this.audioPlayer.preparePlayer(Uri.fromFile(new File(storyEntry.audioPath)), "other");
            checkVolumes();
            if (this.videoPlayer != null && getDuration() > 0) {
                long duration = (long) (storyEntry.left * getDuration());
                this.videoPlayer.seekTo(duration);
                this.timelineView.setProgress(duration);
            }
            updateAudioPlayer(true);
        }
        onAudioChanged();
    }

    public void setupAudio(MessageObject messageObject, boolean z) {
        long duration;
        StoryEntry storyEntry = this.entry;
        if (storyEntry != null) {
            storyEntry.editedMedia = true;
            if (messageObject == null || messageObject.messageOwner == null) {
                storyEntry.audioPath = null;
                storyEntry.audioAuthor = null;
                storyEntry.audioTitle = null;
                storyEntry.audioOffset = 0L;
                storyEntry.audioDuration = 0L;
                storyEntry.audioLeft = 0.0f;
                storyEntry.audioRight = 1.0f;
            } else {
                TLRPC.Document document = messageObject.getDocument();
                int i = 0;
                if (!TextUtils.isEmpty(messageObject.messageOwner.attachPath)) {
                    this.entry.audioPath = messageObject.messageOwner.attachPath;
                } else {
                    File pathToAttach = FileLoader.getInstance(messageObject.currentAccount).getPathToAttach(document, null, false, true);
                    if (pathToAttach == null || !pathToAttach.exists()) {
                        pathToAttach = FileLoader.getInstance(messageObject.currentAccount).getPathToAttach(document, null, true, true);
                        if (pathToAttach == null || !pathToAttach.exists()) {
                            StoryEntry storyEntry2 = this.entry;
                            storyEntry2.audioPath = null;
                            storyEntry2.audioAuthor = null;
                            storyEntry2.audioTitle = null;
                            storyEntry2.audioOffset = 0L;
                            storyEntry2.audioDuration = 0L;
                            storyEntry2.audioLeft = 0.0f;
                            storyEntry2.audioRight = 1.0f;
                            return;
                        }
                        this.entry.audioPath = pathToAttach.getAbsolutePath();
                    }
                    this.entry.audioPath = pathToAttach.getAbsolutePath();
                }
                StoryEntry storyEntry3 = this.entry;
                storyEntry3.audioAuthor = null;
                storyEntry3.audioTitle = null;
                if (document != null) {
                    ArrayList<TLRPC.DocumentAttribute> arrayList = document.attributes;
                    int size = arrayList.size();
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        TLRPC.DocumentAttribute documentAttribute = arrayList.get(i);
                        i++;
                        TLRPC.DocumentAttribute documentAttribute2 = documentAttribute;
                        if (documentAttribute2 instanceof TLRPC.TL_documentAttributeAudio) {
                            this.entry.audioAuthor = documentAttribute2.performer;
                            if (!TextUtils.isEmpty(documentAttribute2.title)) {
                                this.entry.audioTitle = documentAttribute2.title;
                            }
                            this.entry.audioDuration = (long) (documentAttribute2.duration * 1000.0d);
                        } else if (documentAttribute2 instanceof TLRPC.TL_documentAttributeFilename) {
                            this.entry.audioTitle = documentAttribute2.file_name;
                        }
                    }
                }
                StoryEntry storyEntry4 = this.entry;
                storyEntry4.audioOffset = 0L;
                if (storyEntry4.isVideo) {
                    storyEntry4.audioOffset = (long) (storyEntry4.left * getDuration());
                }
                this.entry.audioLeft = 0.0f;
                if (isCollage() && this.collage.hasVideo()) {
                    duration = this.collage.getDuration();
                } else {
                    StoryEntry storyEntry5 = this.entry;
                    if (storyEntry5.isVideo) {
                        duration = getDuration();
                    } else {
                        duration = storyEntry5.audioDuration;
                    }
                }
                TimelineView timelineView = this.timelineView;
                int maxCount = timelineView != null ? timelineView.getMaxCount() : 1;
                StoryEntry storyEntry6 = this.entry;
                storyEntry6.audioRight = storyEntry6.audioDuration != 0 ? Math.min(1.0f, Math.min(duration, ((long) maxCount) * 59000) / this.entry.audioDuration) : 1.0f;
            }
        }
        setupAudio(this.entry, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        seekTo(this.finalSeekPosition);
        this.slowerSeekScheduled = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void seekTo(long j) {
        seekTo(j, false);
    }

    public void seekTo(long j, boolean z) {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.seekTo(j, z);
        } else if (isCollage()) {
            this.collage.seekTo(j, z);
        } else {
            VideoPlayer videoPlayer2 = this.roundPlayer;
            if (videoPlayer2 != null) {
                videoPlayer2.seekTo(j, z);
            } else {
                VideoPlayer videoPlayer3 = this.audioPlayer;
                if (videoPlayer3 != null) {
                    videoPlayer3.seekTo(j, z);
                }
            }
        }
        updateAudioPlayer(true);
        updateRoundPlayer(true);
        if (z) {
            if (!this.slowerSeekScheduled || Math.abs(this.finalSeekPosition - j) > 450) {
                this.slowerSeekScheduled = true;
                AndroidUtilities.cancelRunOnUIThread(this.slowerSeek);
                AndroidUtilities.runOnUIThread(this.slowerSeek, 60L);
            }
            this.finalSeekPosition = j;
        }
    }

    public long getCurrentPosition() {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            return videoPlayer.getCurrentPosition();
        }
        VideoPlayer videoPlayer2 = this.roundPlayer;
        if (videoPlayer2 != null) {
            return videoPlayer2.getCurrentPosition();
        }
        VideoPlayer videoPlayer3 = this.audioPlayer;
        if (videoPlayer3 != null) {
            return videoPlayer3.getCurrentPosition();
        }
        return 0L;
    }

    public void getCoverBitmap(final Utilities.Callback callback, View... viewArr) {
        VideoEditTextureView videoEditTextureView;
        final int iM1124dp = (int) (AndroidUtilities.m1124dp(26.0f) * AndroidUtilities.density);
        final int iM1124dp2 = (int) (AndroidUtilities.m1124dp(30.33f) * AndroidUtilities.density);
        final int iM1124dp3 = (int) (AndroidUtilities.m1124dp(4.0f) * AndroidUtilities.density);
        final Bitmap[] bitmapArr = new Bitmap[viewArr.length];
        for (int i = 0; i < viewArr.length; i++) {
            View view = viewArr[i];
            if (view != null && view.getWidth() >= 0 && viewArr[i].getHeight() > 0) {
                View view2 = viewArr[i];
                if (view2 == this && (videoEditTextureView = this.textureView) != null) {
                    bitmapArr[i] = videoEditTextureView.getBitmap();
                } else if (view2 instanceof TextureView) {
                    bitmapArr[i] = ((TextureView) view2).getBitmap();
                } else if ((view2 instanceof ViewGroup) && ((ViewGroup) view2).getChildCount() > 0) {
                    bitmapArr[i] = Bitmap.createBitmap(iM1124dp, iM1124dp2, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmapArr[i]);
                    canvas.save();
                    float fMax = Math.max(iM1124dp / viewArr[i].getWidth(), iM1124dp2 / viewArr[i].getHeight());
                    canvas.scale(fMax, fMax);
                    viewArr[i].draw(canvas);
                    canvas.restore();
                }
            }
        }
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                PreviewView.$r8$lambda$xW4_UpPPqR_o185V2LHvtWoY7CI(iM1124dp, iM1124dp2, iM1124dp3, bitmapArr, callback);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$xW4_UpPPqR_o185V2LHvtWoY7CI(int i, int i2, int i3, Bitmap[] bitmapArr, final Utilities.Callback callback) {
        final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Path path = new Path();
        RectF rectF = new RectF();
        rectF.set(0.0f, 0.0f, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
        float f = i3;
        path.addRoundRect(rectF, f, f, Path.Direction.CW);
        canvas.clipPath(path);
        for (int i4 = 0; i4 < bitmapArr.length; i4++) {
            if (bitmapArr[i4] != null) {
                canvas.save();
                canvas.translate(bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                float fMax = Math.max(bitmapCreateBitmap.getWidth() / bitmapArr[i4].getWidth(), bitmapCreateBitmap.getHeight() / bitmapArr[i4].getHeight());
                canvas.scale(fMax, fMax);
                canvas.translate((-bitmapArr[i4].getWidth()) / 2.0f, (-bitmapArr[i4].getHeight()) / 2.0f);
                canvas.drawBitmap(bitmapArr[i4], 0.0f, 0.0f, (Paint) null);
                canvas.restore();
                AndroidUtilities.recycleBitmap(bitmapArr[i4]);
            }
        }
        Utilities.stackBlurBitmap(bitmapCreateBitmap, 1);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                callback.run(bitmapCreateBitmap);
            }
        });
    }

    public void seek(long j) {
        seekTo(j);
        TimelineView timelineView = this.timelineView;
        if (timelineView != null) {
            timelineView.setProgress(0L);
        }
    }

    public void setVideoTimelineView(TimelineView timelineView) {
        this.timelineView = timelineView;
        if (timelineView != null) {
            timelineView.setDelegate(new TimelineView.TimelineDelegate() { // from class: org.telegram.ui.Stories.recorder.PreviewView.2
                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onProgressDragChange(boolean z) {
                    if (PreviewView.this.isCollage()) {
                        PreviewView.this.collage.forceNotRestorePosition();
                    }
                    PreviewView.this.updatePauseReason(-4, z);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onProgressChange(long j, boolean z) {
                    if (!z) {
                        PreviewView.this.seekTo(j);
                        return;
                    }
                    if (PreviewView.this.videoPlayer != null) {
                        PreviewView.this.videoPlayer.seekTo(j, true);
                    } else if (PreviewView.this.isCollage()) {
                        PreviewView.this.collage.seekTo(j, true);
                    } else if (PreviewView.this.audioPlayer != null) {
                        PreviewView.this.audioPlayer.seekTo(j, false);
                    }
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onVideoVolumeChange(float f) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.videoVolume = f;
                    PreviewView.this.checkVolumes();
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onVideoLeftChange(boolean z, float f) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.left = f;
                    PreviewView.this.entry.editedMedia = true;
                    if (PreviewView.this.videoPlayer == null || PreviewView.this.videoPlayer.getDuration() == -9223372036854775807L) {
                        return;
                    }
                    PreviewView.this.seekTo((long) (f * r5.videoPlayer.getDuration()));
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onVideoRightChange(boolean z, float f) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.right = f;
                    PreviewView.this.entry.editedMedia = true;
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onAudioLeftChange(float f) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.audioLeft = f;
                    PreviewView.this.entry.editedMedia = true;
                    PreviewView.this.updateAudioPlayer(true);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onAudioRightChange(float f) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.audioRight = f;
                    PreviewView.this.entry.editedMedia = true;
                    PreviewView.this.updateAudioPlayer(true);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onAudioOffsetChange(long j) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.audioOffset = j;
                    PreviewView.this.entry.editedMedia = true;
                    PreviewView.this.updateAudioPlayer(true);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onAudioRemove() {
                    PreviewView.this.setupAudio((MessageObject) null, true);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onAudioVolumeChange(float f) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.audioVolume = f;
                    PreviewView.this.entry.editedMedia = true;
                    PreviewView.this.checkVolumes();
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onRoundLeftChange(float f) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.roundLeft = f;
                    PreviewView.this.entry.editedMedia = true;
                    PreviewView.this.updateRoundPlayer(true);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onRoundRightChange(float f) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.roundRight = f;
                    PreviewView.this.entry.editedMedia = true;
                    PreviewView.this.updateRoundPlayer(true);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onRoundOffsetChange(long j) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.roundOffset = j;
                    PreviewView.this.entry.editedMedia = true;
                    PreviewView.this.updateRoundPlayer(true);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onRoundRemove() {
                    PreviewView.this.setupRound(null, null, true);
                    PreviewView.this.onRoundRemove();
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onRoundVolumeChange(float f) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.roundVolume = f;
                    PreviewView.this.entry.editedMedia = true;
                    PreviewView.this.checkVolumes();
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onRoundSelectChange(boolean z) {
                    PreviewView.this.onRoundSelectChange(z);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onVideoVolumeChange(int i, float f) {
                    if (PreviewView.this.entry == null || PreviewView.this.entry.collageContent == null || i < 0 || i >= PreviewView.this.entry.collageContent.size()) {
                        return;
                    }
                    ((StoryEntry) PreviewView.this.entry.collageContent.get(i)).videoVolume = f;
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onVideoLeftChange(int i, float f) {
                    if (PreviewView.this.entry == null || PreviewView.this.entry.collageContent == null || i < 0 || i >= PreviewView.this.entry.collageContent.size()) {
                        return;
                    }
                    ((StoryEntry) PreviewView.this.entry.collageContent.get(i)).videoLeft = f;
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onVideoRightChange(int i, float f) {
                    if (PreviewView.this.entry == null || PreviewView.this.entry.collageContent == null || i < 0 || i >= PreviewView.this.entry.collageContent.size()) {
                        return;
                    }
                    ((StoryEntry) PreviewView.this.entry.collageContent.get(i)).videoRight = f;
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onVideoOffsetChange(int i, long j) {
                    if (PreviewView.this.entry == null || PreviewView.this.entry.collageContent == null || i < 0 || i >= PreviewView.this.entry.collageContent.size()) {
                        return;
                    }
                    ((StoryEntry) PreviewView.this.entry.collageContent.get(i)).videoOffset = j;
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onVideoSelected(int i) {
                    if (PreviewView.this.collage != null) {
                        PreviewView.this.collage.highlight(i);
                    }
                }
            });
        }
    }

    private void setupImage(final StoryEntry storyEntry) {
        Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setupImage$5(storyEntry);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$setupImage$5(StoryEntry storyEntry) {
        final StoryEntry storyEntry2;
        long j;
        final long j2;
        String str;
        Uri uriWithAppendedId;
        final Bitmap[] bitmapArr = new Bitmap[1];
        final boolean[] zArr = {true};
        if (storyEntry == null) {
            storyEntry2 = storyEntry;
        } else {
            int measuredWidth = getMeasuredWidth() <= 0 ? AndroidUtilities.displaySize.x : getMeasuredWidth();
            int i = (int) ((measuredWidth * 16) / 9.0f);
            if (storyEntry.isVideo) {
                Bitmap bitmap = storyEntry.blurredVideoThumb;
                if (bitmap != null) {
                    bitmapArr[0] = bitmap;
                }
                if (bitmapArr[0] == null && (str = storyEntry.thumbPath) != null && str.startsWith("vthumb://")) {
                    j = Long.parseLong(storyEntry.thumbPath.substring(9));
                    if (bitmapArr[0] == null && Build.VERSION.SDK_INT >= 29) {
                        try {
                            if (storyEntry.isVideo) {
                                uriWithAppendedId = ContentUris.withAppendedId(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, j);
                            } else {
                                uriWithAppendedId = ContentUris.withAppendedId(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, j);
                            }
                            bitmapArr[0] = getContext().getContentResolver().loadThumbnail(uriWithAppendedId, new Size(measuredWidth, i), null);
                        } catch (Exception unused) {
                        }
                    }
                }
                j2 = j;
                if (j2 >= 0) {
                }
                if (bitmapArr[0] != null) {
                }
            } else {
                j = -1;
                j2 = j;
                if (j2 >= 0 && storyEntry.isVideo && storyEntry.thumbPath == null) {
                    invalidate();
                    return;
                }
                if (bitmapArr[0] != null) {
                    File originalFile = storyEntry.getOriginalFile();
                    if (originalFile == null) {
                        return;
                    }
                    final String path = originalFile.getPath();
                    storyEntry2 = storyEntry;
                    bitmapArr[0] = StoryEntry.getScaledBitmap(new StoryEntry.DecodeBitmap() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda12
                        @Override // org.telegram.ui.Stories.recorder.StoryEntry.DecodeBitmap
                        public final Bitmap decode(BitmapFactory.Options options) {
                            return this.f$0.lambda$setupImage$3(storyEntry2, j2, path, options);
                        }
                    }, measuredWidth, i, false, false);
                    zArr[0] = false;
                }
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setupImage$4(bitmapArr, storyEntry2, zArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap lambda$setupImage$3(StoryEntry storyEntry, long j, String str, BitmapFactory.Options options) {
        if (storyEntry.isVideo) {
            String str2 = storyEntry.thumbPath;
            if (str2 != null) {
                return BitmapFactory.decodeFile(str2, options);
            }
            try {
                return MediaStore.Video.Thumbnails.getThumbnail(getContext().getContentResolver(), j, 1, options);
            } catch (Throwable unused) {
                invalidate();
                return null;
            }
        }
        return BitmapFactory.decodeFile(str, options);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupImage$4(Bitmap[] bitmapArr, StoryEntry storyEntry, boolean[] zArr) {
        BlurringShader.BlurManager blurManager;
        Bitmap bitmap = this.bitmap;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.bitmap.recycle();
        }
        Bitmap bitmap2 = bitmapArr[0];
        this.bitmap = bitmap2;
        if (storyEntry != null && !storyEntry.isDraft && storyEntry.isVideo && bitmap2 != null) {
            storyEntry.width = bitmap2.getWidth();
            storyEntry.height = this.bitmap.getHeight();
            storyEntry.setupMatrix();
        }
        if (zArr[0] && storyEntry != null && (blurManager = this.blurManager) != null && this.bitmap != null) {
            blurManager.resetBitmap();
            this.blurManager.setFallbackBlur(storyEntry.buildBitmap(0.2f, this.bitmap), 0);
            Runnable runnable = this.invalidateBlur;
            if (runnable != null) {
                runnable.run();
            }
        }
        setupGradient();
        invalidate();
    }

    private void setupCollage(StoryEntry storyEntry) {
        TimelineView timelineView = this.timelineView;
        if (timelineView != null) {
            timelineView.setCollage(storyEntry != null ? storyEntry.collageContent : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupGradient() {
        if (this.entry == null) {
            return;
        }
        final int measuredHeight = getMeasuredHeight() > 0 ? getMeasuredHeight() : AndroidUtilities.displaySize.y;
        StoryEntry storyEntry = this.entry;
        if (storyEntry.gradientTopColor == 0 || storyEntry.gradientBottomColor == 0) {
            Bitmap bitmap = this.bitmap;
            if (bitmap != null) {
                DominantColors.getColors(true, bitmap, true, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda9
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$setupGradient$6(measuredHeight, (int[]) obj);
                    }
                });
            } else {
                Bitmap bitmap2 = this.thumbBitmap;
                if (bitmap2 != null) {
                    DominantColors.getColors(true, bitmap2, true, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda10
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$setupGradient$7(measuredHeight, (int[]) obj);
                        }
                    });
                } else {
                    this.gradientPaint.setShader(null);
                }
            }
        } else {
            Paint paint = this.gradientPaint;
            float f = measuredHeight;
            StoryEntry storyEntry2 = this.entry;
            int i = storyEntry2.gradientTopColor;
            this.gradientTop = i;
            int i2 = storyEntry2.gradientBottomColor;
            this.gradientBottom = i2;
            paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, f, new int[]{i, i2}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP));
            VideoEditTextureView videoEditTextureView = this.textureView;
            if (videoEditTextureView != null) {
                videoEditTextureView.updateUiBlurGradient(this.gradientTop, this.gradientBottom);
            }
            PhotoFilterView photoFilterView = this.photoFilterView;
            if (photoFilterView != null) {
                photoFilterView.updateUiBlurGradient(this.gradientTop, this.gradientBottom);
            }
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupGradient$6(int i, int[] iArr) {
        StoryEntry storyEntry = this.entry;
        int i2 = iArr[0];
        this.gradientTop = i2;
        storyEntry.gradientTopColor = i2;
        int i3 = iArr[1];
        this.gradientBottom = i3;
        storyEntry.gradientBottomColor = i3;
        this.gradientPaint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, i, iArr, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP));
        invalidate();
        VideoEditTextureView videoEditTextureView = this.textureView;
        if (videoEditTextureView != null) {
            videoEditTextureView.updateUiBlurGradient(this.gradientTop, this.gradientBottom);
        }
        PhotoFilterView photoFilterView = this.photoFilterView;
        if (photoFilterView != null) {
            photoFilterView.updateUiBlurGradient(this.gradientTop, this.gradientBottom);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupGradient$7(int i, int[] iArr) {
        StoryEntry storyEntry = this.entry;
        int i2 = iArr[0];
        this.gradientTop = i2;
        storyEntry.gradientTopColor = i2;
        int i3 = iArr[1];
        this.gradientBottom = i3;
        storyEntry.gradientBottomColor = i3;
        this.gradientPaint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, i, iArr, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP));
        invalidate();
        VideoEditTextureView videoEditTextureView = this.textureView;
        if (videoEditTextureView != null) {
            videoEditTextureView.updateUiBlurGradient(this.gradientTop, this.gradientBottom);
        }
        PhotoFilterView photoFilterView = this.photoFilterView;
        if (photoFilterView != null) {
            photoFilterView.updateUiBlurGradient(this.gradientTop, this.gradientBottom);
        }
    }

    public void setupVideoPlayer(StoryEntry storyEntry, Runnable runnable, long j) {
        ArrayList arrayList;
        if (storyEntry == null || storyEntry.isCollage()) {
            VideoPlayer videoPlayer = this.videoPlayer;
            if (videoPlayer != null) {
                videoPlayer.pause();
                this.videoPlayer.releasePlayer(true);
                this.videoPlayer = null;
            }
            TextureViewHolder textureViewHolder = this.textureViewHolder;
            if (textureViewHolder != null && textureViewHolder.active) {
                textureViewHolder.setTextureView(null);
            } else {
                VideoEditTextureView videoEditTextureView = this.textureView;
                if (videoEditTextureView != null) {
                    videoEditTextureView.clearAnimation();
                    this.textureView.animate().alpha(0.0f).withEndAction(new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda7
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$setupVideoPlayer$8();
                        }
                    }).start();
                }
            }
            TimelineView timelineView = this.timelineView;
            if (timelineView != null) {
                timelineView.setVideo(false, null, 1L, 0.0f);
            }
            AndroidUtilities.cancelRunOnUIThread(this.updateProgressRunnable);
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
                return;
            }
            return;
        }
        VideoPlayer videoPlayer2 = this.videoPlayer;
        if (videoPlayer2 != null) {
            videoPlayer2.releasePlayer(true);
            this.videoPlayer = null;
        }
        VideoPlayer videoPlayer3 = new VideoPlayer();
        this.videoPlayer = videoPlayer3;
        videoPlayer3.allowMultipleInstances = true;
        videoPlayer3.setDelegate(new C71133(storyEntry, new Runnable[]{runnable}));
        VideoEditTextureView videoEditTextureView2 = this.textureView;
        if (videoEditTextureView2 != null) {
            videoEditTextureView2.clearAnimation();
            this.textureView.release();
            removeView(this.textureView);
            this.textureView = null;
        }
        this.textureView = new VideoEditTextureView(getContext(), this.videoPlayer);
        this.blurManager.resetBitmap();
        this.textureView.updateUiBlurManager(storyEntry.isRepostMessage ? null : this.blurManager);
        this.textureView.setOpaque(false);
        applyMatrix();
        TextureViewHolder textureViewHolder2 = this.textureViewHolder;
        if (textureViewHolder2 != null && textureViewHolder2.active) {
            textureViewHolder2.setTextureView(this.textureView);
        } else {
            this.textureView.setAlpha(runnable != null ? 1.0f : 0.0f);
            addView(this.textureView, LayoutHelper.createFrame(-2, -2, 51));
        }
        storyEntry.detectHDR(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$setupVideoPlayer$9((StoryEntry.HDRInfo) obj);
            }
        });
        this.videoPlayer.preparePlayer(Uri.fromFile(storyEntry.getOriginalFile()), "other");
        this.videoPlayer.setPlayWhenReady(this.pauseLinks.isEmpty());
        this.videoPlayer.setLooping(true);
        if (storyEntry.isEditSaved) {
            j = (long) ((storyEntry.left * storyEntry.duration) + j);
        }
        if (j > 0) {
            this.videoPlayer.seekTo(j);
        }
        checkVolumes();
        updateAudioPlayer(true);
        this.timelineView.setVideo(storyEntry.isRepostMessage && (arrayList = storyEntry.messageObjects) != null && arrayList.size() == 1 && ((MessageObject) storyEntry.messageObjects.get(0)).type == 5, storyEntry.getOriginalFile().getAbsolutePath(), getDuration(), storyEntry.videoVolume);
        this.timelineView.setVideoLeft(storyEntry.left);
        this.timelineView.setVideoRight(storyEntry.right);
        TimelineView timelineView2 = this.timelineView;
        if (timelineView2 == null || j <= 0) {
            return;
        }
        timelineView2.setProgress(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupVideoPlayer$8() {
        VideoEditTextureView videoEditTextureView = this.textureView;
        if (videoEditTextureView != null) {
            videoEditTextureView.release();
            removeView(this.textureView);
            this.textureView = null;
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Stories.recorder.PreviewView$3 */
    class C71133 implements VideoPlayer.VideoPlayerDelegate {
        final /* synthetic */ StoryEntry val$entry;
        final /* synthetic */ Runnable[] val$whenReadyFinal;

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* synthetic */ void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onRenderedFirstFrame(this, eventTime);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* synthetic */ void onSeekFinished(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekFinished(this, eventTime);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekStarted(this, eventTime);
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
            return false;
        }

        C71133(StoryEntry storyEntry, Runnable[] runnableArr) {
            this.val$entry = storyEntry;
            this.val$whenReadyFinal = runnableArr;
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onStateChanged(boolean z, int i) {
            if (PreviewView.this.videoPlayer == null) {
                return;
            }
            if (PreviewView.this.videoPlayer != null && PreviewView.this.videoPlayer.isPlaying()) {
                AndroidUtilities.runOnUIThread(PreviewView.this.updateProgressRunnable);
            } else {
                AndroidUtilities.cancelRunOnUIThread(PreviewView.this.updateProgressRunnable);
            }
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onError(VideoPlayer videoPlayer, Exception exc) {
            if (PreviewView.this.onErrorListener != null) {
                PreviewView.this.onErrorListener.run();
            }
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onVideoSizeChanged(int i, int i2, int i3, float f) {
            StoryEntry storyEntry = this.val$entry;
            if (storyEntry != null) {
                storyEntry.hdrInfo = PreviewView.this.videoPlayer.getHDRStaticInfo(this.val$entry.hdrInfo);
                if (PreviewView.this.textureView != null) {
                    PreviewView.this.textureView.setHDRInfo(this.val$entry.hdrInfo);
                }
            }
            PreviewView.this.videoWidth = (int) (i * f);
            PreviewView.this.videoHeight = (int) (i2 * f);
            StoryEntry storyEntry2 = this.val$entry;
            if (storyEntry2 != null && (storyEntry2.width != PreviewView.this.videoWidth || this.val$entry.height != PreviewView.this.videoHeight)) {
                this.val$entry.width = PreviewView.this.videoWidth;
                this.val$entry.height = PreviewView.this.videoHeight;
                this.val$entry.setupMatrix();
            }
            PreviewView.this.applyMatrix();
            if (PreviewView.this.textureView != null) {
                PreviewView.this.textureView.setVideoSize(PreviewView.this.videoWidth, PreviewView.this.videoHeight);
            }
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onRenderedFirstFrame() {
            if (PreviewView.this.textureViewHolder != null && PreviewView.this.textureViewHolder.active) {
                PreviewView.this.textureViewHolder.activateTextureView(PreviewView.this.videoWidth, PreviewView.this.videoHeight);
            }
            Runnable runnable = this.val$whenReadyFinal[0];
            if (runnable != null) {
                PreviewView.this.post(runnable);
                this.val$whenReadyFinal[0] = null;
                if (PreviewView.this.bitmap != null) {
                    PreviewView.this.bitmap.recycle();
                    if (this.val$entry.blurredVideoThumb == PreviewView.this.bitmap) {
                        this.val$entry.blurredVideoThumb = null;
                    }
                    PreviewView.this.bitmap = null;
                    PreviewView.this.invalidate();
                    return;
                }
                return;
            }
            if (PreviewView.this.textureView != null) {
                if (PreviewView.this.textureViewHolder == null || !PreviewView.this.textureViewHolder.active) {
                    ViewPropertyAnimator duration = PreviewView.this.textureView.animate().alpha(1.0f).setDuration(180L);
                    final StoryEntry storyEntry = this.val$entry;
                    duration.withEndAction(new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$3$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onRenderedFirstFrame$0(storyEntry);
                        }
                    }).start();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRenderedFirstFrame$0(StoryEntry storyEntry) {
            if (PreviewView.this.bitmap != null) {
                PreviewView.this.bitmap.recycle();
                if (storyEntry.blurredVideoThumb == PreviewView.this.bitmap) {
                    storyEntry.blurredVideoThumb = null;
                }
                PreviewView.this.bitmap = null;
                PreviewView.this.invalidate();
            }
        }

        @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            PreviewView.this.invalidateTextureViewHolder();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupVideoPlayer$9(StoryEntry.HDRInfo hDRInfo) {
        VideoEditTextureView videoEditTextureView = this.textureView;
        if (videoEditTextureView != null) {
            videoEditTextureView.setHDRInfo(hDRInfo);
        }
    }

    public static class TextureViewHolder {
        public boolean active;
        private TextureView textureView;
        public boolean textureViewActive;
        public int videoHeight;
        public int videoWidth;
        private Utilities.Callback2 whenTextureViewActive;
        private Utilities.Callback whenTextureViewReceived;

        public void setTextureView(TextureView textureView) {
            TextureView textureView2 = this.textureView;
            if (textureView2 == textureView) {
                return;
            }
            if (textureView2 != null) {
                ViewParent parent = textureView2.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(this.textureView);
                }
                this.textureView = null;
            }
            this.textureViewActive = false;
            this.textureView = textureView;
            Utilities.Callback callback = this.whenTextureViewReceived;
            if (callback != null) {
                callback.run(textureView);
            }
        }

        public void activateTextureView(int i, int i2) {
            this.textureViewActive = true;
            this.videoWidth = i;
            this.videoHeight = i2;
            Utilities.Callback2 callback2 = this.whenTextureViewActive;
            if (callback2 != null) {
                callback2.run(Integer.valueOf(i), Integer.valueOf(this.videoHeight));
            }
        }

        public void takeTextureView(Utilities.Callback callback, Utilities.Callback2 callback2) {
            Utilities.Callback2 callback22;
            this.whenTextureViewReceived = callback;
            this.whenTextureViewActive = callback2;
            TextureView textureView = this.textureView;
            if (textureView != null && callback != null) {
                callback.run(textureView);
            }
            if (!this.textureViewActive || (callback22 = this.whenTextureViewActive) == null) {
                return;
            }
            callback22.run(Integer.valueOf(this.videoWidth), Integer.valueOf(this.videoHeight));
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        StoryEntry storyEntry;
        StoryEntry storyEntry2;
        VideoEditTextureView videoEditTextureView = this.textureView;
        if (view == videoEditTextureView && (storyEntry2 = this.entry) != null && storyEntry2.isRepostMessage) {
            return false;
        }
        if ((view == videoEditTextureView || view == this.filterTextureView) && (storyEntry = this.entry) != null && storyEntry.crop != null) {
            canvas.save();
            canvas.scale(getWidth() / this.entry.resultWidth, getHeight() / this.entry.resultHeight);
            canvas.concat(this.entry.matrix);
            if (this.entry.crop != null) {
                canvas.translate(r0.width / 2.0f, r0.height / 2.0f);
                canvas.rotate(-this.entry.orientation);
                StoryEntry storyEntry3 = this.entry;
                int i = storyEntry3.width;
                int i2 = storyEntry3.height;
                int i3 = storyEntry3.orientation;
                MediaController.CropState cropState = storyEntry3.crop;
                if (((i3 + cropState.transformRotation) / 90) % 2 == 1) {
                    i2 = i;
                    i = i2;
                }
                float f = cropState.cropPw;
                float f2 = cropState.cropPh;
                canvas.clipRect(((-i) * f) / 2.0f, ((-i2) * f2) / 2.0f, (i * f) / 2.0f, (i2 * f2) / 2.0f);
                canvas.rotate(this.entry.orientation);
                StoryEntry storyEntry4 = this.entry;
                canvas.translate((-storyEntry4.width) / 2.0f, (-storyEntry4.height) / 2.0f);
            }
            canvas.concat(this.invertMatrix);
            canvas.scale(1.0f / (getWidth() / this.entry.resultWidth), 1.0f / (getHeight() / this.entry.resultHeight));
            boolean zDrawChild = super.drawChild(canvas, view, j);
            canvas.restore();
            return zDrawChild;
        }
        return super.drawChild(canvas, view, j);
    }

    public void setupRound(StoryEntry storyEntry, RoundView roundView, boolean z) {
        if (storyEntry == null || storyEntry.round == null) {
            VideoPlayer videoPlayer = this.roundPlayer;
            if (videoPlayer != null) {
                videoPlayer.pause();
                this.roundPlayer.releasePlayer(true);
                this.roundPlayer = null;
            }
            TimelineView timelineView = this.timelineView;
            if (timelineView != null) {
                timelineView.setRoundNull(z);
            }
            this.roundView = null;
            AndroidUtilities.cancelRunOnUIThread(this.updateProgressRunnable);
            return;
        }
        VideoPlayer videoPlayer2 = this.roundPlayer;
        if (videoPlayer2 != null) {
            videoPlayer2.releasePlayer(true);
            this.roundPlayer = null;
        }
        VideoPlayer videoPlayer3 = new VideoPlayer();
        this.roundPlayer = videoPlayer3;
        videoPlayer3.allowMultipleInstances = true;
        videoPlayer3.setDelegate(new VideoPlayer.VideoPlayerDelegate() { // from class: org.telegram.ui.Stories.recorder.PreviewView.4
            @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
            public void onError(VideoPlayer videoPlayer4, Exception exc) {
            }

            @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
            public void onRenderedFirstFrame() {
            }

            @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
            public /* synthetic */ void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
                VideoPlayer.VideoPlayerDelegate.CC.$default$onRenderedFirstFrame(this, eventTime);
            }

            @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
            public /* synthetic */ void onSeekFinished(AnalyticsListener.EventTime eventTime) {
                VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekFinished(this, eventTime);
            }

            @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
            public /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
                VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekStarted(this, eventTime);
            }

            @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
            public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
                return false;
            }

            @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }

            @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
            public void onStateChanged(boolean z2, int i) {
                if (PreviewView.this.roundPlayer == null) {
                    return;
                }
                if (PreviewView.this.roundPlayer != null && PreviewView.this.roundPlayer.isPlaying()) {
                    AndroidUtilities.runOnUIThread(PreviewView.this.updateRoundProgressRunnable);
                } else {
                    AndroidUtilities.cancelRunOnUIThread(PreviewView.this.updateRoundProgressRunnable);
                }
            }

            @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
            public void onVideoSizeChanged(int i, int i2, int i3, float f) {
                PreviewView.this.roundPlayerWidth = i;
                PreviewView.this.roundPlayerHeight = i2;
                if (PreviewView.this.roundView != null) {
                    PreviewView.this.roundView.resizeTextureView(i, i2);
                }
            }
        });
        this.roundPlayer.preparePlayer(Uri.fromFile(storyEntry.round), "other");
        checkVolumes();
        attachRoundView(roundView);
        this.timelineView.setRound(storyEntry.round.getAbsolutePath(), storyEntry.roundDuration, storyEntry.roundOffset, storyEntry.roundLeft, storyEntry.roundRight, storyEntry.roundVolume, z);
        updateRoundPlayer(true);
    }

    public void attachRoundView(RoundView roundView) {
        VideoPlayer videoPlayer;
        this.roundView = roundView;
        if (roundView == null || (videoPlayer = this.roundPlayer) == null) {
            return;
        }
        videoPlayer.setTextureView(roundView.textureView);
    }

    public long release() {
        long currentPosition;
        VideoPlayer videoPlayer = this.audioPlayer;
        if (videoPlayer != null) {
            videoPlayer.pause();
            this.audioPlayer.releasePlayer(true);
            this.audioPlayer = null;
        }
        VideoPlayer videoPlayer2 = this.roundPlayer;
        if (videoPlayer2 != null) {
            currentPosition = videoPlayer2.getCurrentPosition();
            this.roundPlayer.pause();
            this.roundPlayer.releasePlayer(true);
            this.roundPlayer = null;
        } else {
            currentPosition = 0;
        }
        VideoPlayer videoPlayer3 = this.videoPlayer;
        if (videoPlayer3 == null) {
            return currentPosition;
        }
        long currentPosition2 = videoPlayer3.getCurrentPosition();
        this.videoPlayer.pause();
        this.videoPlayer.releasePlayer(true);
        this.videoPlayer = null;
        return currentPosition2;
    }

    public void setFilterTextureView(TextureView textureView, PhotoFilterView photoFilterView) {
        TextureView textureView2 = this.filterTextureView;
        if (textureView2 != null) {
            removeView(textureView2);
            this.filterTextureView = null;
        }
        this.photoFilterView = photoFilterView;
        this.filterTextureView = textureView;
        if (photoFilterView != null) {
            photoFilterView.updateUiBlurGradient(this.gradientTop, this.gradientBottom);
        }
        TextureView textureView3 = this.filterTextureView;
        if (textureView3 != null) {
            addView(textureView3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$new$10() {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null || this.timelineView == null) {
            return;
        }
        long currentPosition = videoPlayer.getCurrentPosition();
        if (getDuration() > 1) {
            float duration = currentPosition / getDuration();
            if (!this.timelineView.isDragging()) {
                StoryEntry storyEntry = this.entry;
                if ((duration < storyEntry.left || duration > storyEntry.right) && System.currentTimeMillis() - this.seekedLastTime > 500) {
                    this.seekedLastTime = System.currentTimeMillis();
                    VideoPlayer videoPlayer2 = this.videoPlayer;
                    long duration2 = (long) (this.entry.left * getDuration());
                    videoPlayer2.seekTo(duration2);
                    updateAudioPlayer(true);
                    updateRoundPlayer(true);
                    currentPosition = duration2;
                } else {
                    updateAudioPlayer(currentPosition < this.lastPos);
                    updateRoundPlayer(currentPosition < this.lastPos);
                }
                this.timelineView.setProgress(this.videoPlayer.getCurrentPosition());
            }
        } else {
            this.timelineView.setProgress(this.videoPlayer.getCurrentPosition());
        }
        if (this.videoPlayer.isPlaying()) {
            AndroidUtilities.cancelRunOnUIThread(this.updateProgressRunnable);
            AndroidUtilities.runOnUIThread(this.updateProgressRunnable, (long) (1000.0f / AndroidUtilities.screenRefreshRate));
        }
        this.lastPos = currentPosition;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11() {
        if (this.audioPlayer == null || this.videoPlayer != null || this.roundPlayer != null || this.timelineView == null || isCollage()) {
            return;
        }
        long currentPosition = this.audioPlayer.getCurrentPosition();
        StoryEntry storyEntry = this.entry;
        if (storyEntry != null) {
            float f = currentPosition;
            float f2 = storyEntry.audioLeft;
            long j = storyEntry.audioDuration;
            if ((f < f2 * j || f > storyEntry.audioRight * j) && System.currentTimeMillis() - this.seekedLastTime > 500) {
                this.seekedLastTime = System.currentTimeMillis();
                VideoPlayer videoPlayer = this.audioPlayer;
                long j2 = (long) (this.entry.audioLeft * r1.audioDuration);
                videoPlayer.seekTo(j2);
                currentPosition = j2;
            }
        }
        this.timelineView.setProgress(currentPosition);
        if (this.audioPlayer.isPlaying()) {
            AndroidUtilities.cancelRunOnUIThread(this.updateAudioProgressRunnable);
            AndroidUtilities.runOnUIThread(this.updateAudioProgressRunnable, (long) (1000.0f / AndroidUtilities.screenRefreshRate));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$12() {
        if (this.roundPlayer == null || this.videoPlayer != null || isCollage() || this.timelineView == null) {
            return;
        }
        long currentPosition = this.roundPlayer.getCurrentPosition();
        StoryEntry storyEntry = this.entry;
        if (storyEntry != null) {
            float f = currentPosition;
            float f2 = storyEntry.roundLeft;
            long j = storyEntry.roundDuration;
            if ((f < f2 * j || f > storyEntry.roundRight * j) && System.currentTimeMillis() - this.seekedLastTime > 500) {
                this.seekedLastTime = System.currentTimeMillis();
                VideoPlayer videoPlayer = this.roundPlayer;
                long j2 = (long) (this.entry.roundLeft * r1.roundDuration);
                videoPlayer.seekTo(j2);
                updateAudioPlayer(true);
                currentPosition = j2;
            }
        }
        this.timelineView.setProgress(currentPosition);
        if (this.roundPlayer.isPlaying()) {
            AndroidUtilities.cancelRunOnUIThread(this.updateRoundProgressRunnable);
            AndroidUtilities.runOnUIThread(this.updateRoundProgressRunnable, (long) (1000.0f / AndroidUtilities.screenRefreshRate));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateAudioPlayer(boolean z) {
        long currentPosition;
        boolean zIsPlaying;
        boolean z2;
        if (this.audioPlayer == null || this.entry == null) {
            return;
        }
        if (this.videoPlayer == null && this.roundPlayer == null && !isCollage()) {
            this.audioPlayer.setPlayWhenReady(this.pauseLinks.isEmpty());
            this.audioPlayer.setLooping(true);
            long currentPosition2 = this.audioPlayer.getCurrentPosition();
            if (!z || this.audioPlayer.getDuration() == -9223372036854775807L) {
                return;
            }
            float duration = currentPosition2 / this.audioPlayer.getDuration();
            StoryEntry storyEntry = this.entry;
            if ((duration < storyEntry.audioLeft || duration > storyEntry.audioRight) && System.currentTimeMillis() - this.seekedLastTime > 500) {
                this.seekedLastTime = System.currentTimeMillis();
                this.audioPlayer.seekTo(-this.entry.audioOffset);
                return;
            }
            return;
        }
        if (isCollage()) {
            currentPosition = this.collage.getPositionWithOffset();
            zIsPlaying = this.collage.isPlaying();
        } else {
            VideoPlayer videoPlayer = this.videoPlayer;
            if (videoPlayer == null) {
                videoPlayer = this.roundPlayer;
            }
            currentPosition = videoPlayer.getCurrentPosition();
            zIsPlaying = videoPlayer.isPlaying();
        }
        StoryEntry storyEntry2 = this.entry;
        float f = storyEntry2.audioRight;
        float f2 = storyEntry2.audioLeft;
        long j = storyEntry2.audioDuration;
        long j2 = (long) ((f - f2) * j);
        if (zIsPlaying) {
            long j3 = storyEntry2.audioOffset;
            z2 = currentPosition >= j3 && currentPosition <= j3 + j2;
        }
        long j4 = currentPosition - (storyEntry2.audioOffset - ((long) (f2 * j)));
        if (this.audioPlayer.isPlaying() != z2) {
            this.audioPlayer.setPlayWhenReady(z2);
            this.audioPlayer.seekTo(j4);
        } else if (z) {
            if (Math.abs(this.audioPlayer.getCurrentPosition() - j4) > (isCollage() ? 300 : 120)) {
                this.audioPlayer.seekTo(j4);
            }
        }
    }

    public void updateRoundPlayer(boolean z) {
        long currentPosition;
        boolean zIsPlaying;
        if (this.roundPlayer == null || this.entry == null) {
            return;
        }
        boolean z2 = false;
        if (this.videoPlayer == null && !isCollage()) {
            this.roundPlayer.setPlayWhenReady(this.pauseLinks.isEmpty());
            this.roundPlayer.setLooping(true);
            RoundView roundView = this.roundView;
            if (roundView != null) {
                roundView.setShown(true, false);
            }
            long currentPosition2 = this.roundPlayer.getCurrentPosition();
            if (!z || this.roundPlayer.getDuration() == -9223372036854775807L) {
                return;
            }
            float duration = currentPosition2 / this.roundPlayer.getDuration();
            StoryEntry storyEntry = this.entry;
            if ((duration < storyEntry.roundLeft || duration > storyEntry.roundRight) && System.currentTimeMillis() - this.seekedLastTime > 500) {
                this.seekedLastTime = System.currentTimeMillis();
                this.roundPlayer.seekTo(-this.entry.roundOffset);
                return;
            }
            return;
        }
        if (isCollage()) {
            currentPosition = this.collage.getPositionWithOffset();
            zIsPlaying = this.collage.isPlaying();
        } else {
            currentPosition = this.videoPlayer.getCurrentPosition();
            zIsPlaying = this.videoPlayer.isPlaying();
        }
        StoryEntry storyEntry2 = this.entry;
        float f = storyEntry2.roundRight;
        float f2 = storyEntry2.roundLeft;
        long j = storyEntry2.roundDuration;
        long j2 = (long) ((f - f2) * j);
        long j3 = storyEntry2.roundOffset;
        boolean z3 = currentPosition >= j3 && currentPosition <= j2 + j3;
        if (zIsPlaying && z3) {
            z2 = true;
        }
        long j4 = (currentPosition - j3) + ((long) (f2 * j));
        RoundView roundView2 = this.roundView;
        if (roundView2 != null) {
            roundView2.setShown(z3, true);
        }
        if (this.roundPlayer.isPlaying() != z2) {
            this.roundPlayer.setPlayWhenReady(z2);
            this.roundPlayer.seekTo(j4);
        } else if (z) {
            if (Math.abs(this.roundPlayer.getCurrentPosition() - j4) > (isCollage() ? 300 : 120)) {
                this.roundPlayer.seekTo(j4);
            }
        }
    }

    public void whenError(Runnable runnable) {
        this.onErrorListener = runnable;
    }

    public void mute(boolean z) {
        this.isMuted = z;
        checkVolumes();
    }

    public void checkVolumes() {
        float f;
        StoryEntry storyEntry;
        VideoPlayer videoPlayer = this.videoPlayer;
        float f2 = 0.0f;
        if (videoPlayer != null) {
            videoPlayer.setVolume((this.isMuted || ((storyEntry = this.entry) != null && storyEntry.muted)) ? 0.0f : storyEntry != null ? storyEntry.videoVolume : 1.0f);
        }
        VideoPlayer videoPlayer2 = this.roundPlayer;
        if (videoPlayer2 != null) {
            if (this.isMuted) {
                f = 0.0f;
            } else {
                StoryEntry storyEntry2 = this.entry;
                f = storyEntry2 != null ? storyEntry2.roundVolume : 1.0f;
            }
            videoPlayer2.setVolume(f);
        }
        VideoPlayer videoPlayer3 = this.audioPlayer;
        if (videoPlayer3 != null) {
            if (!this.isMuted) {
                StoryEntry storyEntry3 = this.entry;
                f2 = storyEntry3 != null ? storyEntry3.audioVolume : 1.0f;
            }
            videoPlayer3.setVolume(f2);
        }
        CollageLayoutView2 collageLayoutView2 = this.collage;
        if (collageLayoutView2 != null) {
            collageLayoutView2.setMuted(this.isMuted);
        }
    }

    private void extractPointsData(Matrix matrix) {
        if (this.entry == null) {
            return;
        }
        float[] fArr = this.vertices;
        fArr[0] = r0.width / 2.0f;
        fArr[1] = r0.height / 2.0f;
        matrix.mapPoints(fArr);
        float[] fArr2 = this.vertices;
        this.f2211cx = fArr2[0];
        this.f2212cy = fArr2[1];
        StoryEntry storyEntry = this.entry;
        fArr2[0] = storyEntry.width;
        fArr2[1] = storyEntry.height / 2.0f;
        matrix.mapPoints(fArr2);
        float[] fArr3 = this.vertices;
        this.angle = (float) Math.toDegrees(Math.atan2(fArr3[1] - this.f2212cy, fArr3[0] - this.f2211cx));
        float f = this.f2211cx;
        float f2 = this.f2212cy;
        float[] fArr4 = this.vertices;
        this.f2214w = MathUtils.distance(f, f2, fArr4[0], fArr4[1]) * 2.0f;
        float[] fArr5 = this.vertices;
        StoryEntry storyEntry2 = this.entry;
        fArr5[0] = storyEntry2.width / 2.0f;
        fArr5[1] = storyEntry2.height;
        matrix.mapPoints(fArr5);
        float f3 = this.f2211cx;
        float f4 = this.f2212cy;
        float[] fArr6 = this.vertices;
        this.f2213h = MathUtils.distance(f3, f4, fArr6[0], fArr6[1]) * 2.0f;
    }

    public void setDraw(boolean z) {
        this.draw = z;
        invalidate();
    }

    public void drawBackground(Canvas canvas) {
        if (this.wallpaperDrawable != null) {
            if (this.drawForThemeToggle) {
                Path path = new Path();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(0.0f, 0.0f, getWidth(), getHeight());
                path.addRoundRect(rectF, AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f), Path.Direction.CW);
                canvas.save();
                canvas.clipPath(path);
            }
            Drawable drawable = this.wallpaperDrawable;
            float f = ((drawable instanceof MotionBackgroundDrawable) && ((MotionBackgroundDrawable) drawable).getPatternBitmap() == null) ? 0.0f : this.wallpaperDrawableCrossfade.set(1.0f);
            Drawable drawable2 = this.lastWallpaperDrawable;
            if (drawable2 != null && f < 1.0f) {
                drawable2.setAlpha((int) ((1.0f - f) * 255.0f));
                StoryEntry.drawBackgroundDrawable(canvas, this.lastWallpaperDrawable, getWidth(), getHeight());
            }
            this.wallpaperDrawable.setAlpha((int) (f * 255.0f));
            StoryEntry.drawBackgroundDrawable(canvas, this.wallpaperDrawable, getWidth(), getHeight());
            if (this.drawForThemeToggle) {
                canvas.restore();
                return;
            }
            return;
        }
        canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.gradientPaint);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        drawBackground(canvas);
        CropEditor cropEditor = this.cropEditorDrawing;
        if (cropEditor != null) {
            cropEditor.contentView.drawImage(canvas, true);
        } else if (this.draw && this.entry != null && !isCollage()) {
            float f = this.thumbAlpha.set(this.bitmap == null);
            if (this.thumbBitmap != null && f > 0.0f) {
                canvas.save();
                canvas.scale(getWidth() / this.entry.resultWidth, getHeight() / this.entry.resultHeight);
                canvas.concat(this.entry.matrix);
                if (this.entry.crop != null) {
                    canvas.translate(r7.width / 2.0f, r7.height / 2.0f);
                    canvas.rotate(-this.entry.orientation);
                    StoryEntry storyEntry = this.entry;
                    int i = storyEntry.width;
                    int i2 = storyEntry.height;
                    int i3 = storyEntry.orientation;
                    MediaController.CropState cropState = storyEntry.crop;
                    if (((i3 + cropState.transformRotation) / 90) % 2 == 1) {
                        i2 = i;
                        i = i2;
                    }
                    float f2 = cropState.cropPw;
                    float f3 = cropState.cropPh;
                    float f4 = i;
                    float f5 = i2;
                    canvas.clipRect(((-i) * f2) / 2.0f, ((-i2) * f3) / 2.0f, (f2 * f4) / 2.0f, (f3 * f5) / 2.0f);
                    float f6 = this.entry.crop.cropScale;
                    canvas.scale(f6, f6);
                    MediaController.CropState cropState2 = this.entry.crop;
                    canvas.translate(cropState2.cropPx * f4, cropState2.cropPy * f5);
                    canvas.rotate(this.entry.crop.cropRotate + r7.transformRotation);
                    if (this.entry.crop.mirrored) {
                        canvas.scale(-1.0f, 1.0f);
                    }
                    canvas.rotate(this.entry.orientation);
                    StoryEntry storyEntry2 = this.entry;
                    canvas.translate((-storyEntry2.width) / 2.0f, (-storyEntry2.height) / 2.0f);
                }
                canvas.scale(this.entry.width / this.thumbBitmap.getWidth(), this.entry.height / this.thumbBitmap.getHeight());
                this.bitmapPaint.setAlpha(255);
                canvas.drawBitmap(this.thumbBitmap, 0.0f, 0.0f, this.bitmapPaint);
                canvas.restore();
            }
            if (this.bitmap != null) {
                canvas.save();
                canvas.scale(getWidth() / this.entry.resultWidth, getHeight() / this.entry.resultHeight);
                canvas.concat(this.entry.matrix);
                if (this.entry.crop != null) {
                    canvas.translate(r2.width / 2.0f, r2.height / 2.0f);
                    canvas.rotate(-this.entry.orientation);
                    StoryEntry storyEntry3 = this.entry;
                    int i4 = storyEntry3.width;
                    int i5 = storyEntry3.height;
                    int i6 = storyEntry3.orientation;
                    MediaController.CropState cropState3 = storyEntry3.crop;
                    if (((i6 + cropState3.transformRotation) / 90) % 2 == 1) {
                        i5 = i4;
                        i4 = i5;
                    }
                    float f7 = cropState3.cropPw;
                    float f8 = cropState3.cropPh;
                    float f9 = i4;
                    float f10 = i5;
                    canvas.clipRect(((-i4) * f7) / 2.0f, ((-i5) * f8) / 2.0f, (f7 * f9) / 2.0f, (f8 * f10) / 2.0f);
                    float f11 = this.entry.crop.cropScale;
                    canvas.scale(f11, f11);
                    MediaController.CropState cropState4 = this.entry.crop;
                    canvas.translate(cropState4.cropPx * f9, cropState4.cropPy * f10);
                    canvas.rotate(this.entry.crop.cropRotate + r1.transformRotation);
                    if (this.entry.crop.mirrored) {
                        canvas.scale(-1.0f, 1.0f);
                    }
                    canvas.rotate(this.entry.orientation);
                    StoryEntry storyEntry4 = this.entry;
                    canvas.translate((-storyEntry4.width) / 2.0f, (-storyEntry4.height) / 2.0f);
                }
                this.bitmapPaint.setAlpha((int) ((1.0f - f) * 255.0f));
                this.bitmapSrc.set(0, 0, this.bitmap.getWidth(), this.bitmap.getHeight());
                Rect rect = this.bitmapDst;
                StoryEntry storyEntry5 = this.entry;
                rect.set(0, 0, storyEntry5.width, storyEntry5.height);
                canvas.drawBitmap(this.bitmap, this.bitmapSrc, this.bitmapDst, this.bitmapPaint);
                canvas.restore();
            }
        }
        super.dispatchDraw(canvas);
    }

    public int getContentWidth() {
        StoryEntry storyEntry = this.entry;
        if (storyEntry == null) {
            return 1;
        }
        return storyEntry.width;
    }

    public int getContentHeight() {
        StoryEntry storyEntry = this.entry;
        if (storyEntry == null) {
            return 1;
        }
        return storyEntry.height;
    }

    public void drawContent(Canvas canvas) {
        if (this.textureView != null) {
            canvas.save();
            canvas.scale(getContentWidth() / getWidth(), getContentHeight() / getHeight());
            canvas.concat(this.transformBackMatrix);
            this.textureView.draw(canvas);
            canvas.restore();
            return;
        }
        if (this.bitmap == null || this.entry == null) {
            return;
        }
        this.matrix.reset();
        this.matrix.preScale(this.entry.width / this.bitmap.getWidth(), this.entry.height / this.bitmap.getHeight());
        this.bitmapPaint.setAlpha(255);
        canvas.drawBitmap(this.bitmap, this.matrix, this.bitmapPaint);
    }

    public VideoEditTextureView getTextureView() {
        return this.textureView;
    }

    public Pair<Integer, Integer> getPaintSize() {
        if (this.entry == null) {
            return new Pair<>(1080, 1920);
        }
        return new Pair<>(Integer.valueOf(this.entry.resultWidth), Integer.valueOf(this.entry.resultHeight));
    }

    public Bitmap getPhotoBitmap() {
        return this.bitmap;
    }

    public int getOrientation() {
        StoryEntry storyEntry = this.entry;
        if (storyEntry == null) {
            return 0;
        }
        return storyEntry.orientation;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 8) {
            set(null);
        }
    }

    public void applyMatrix() {
        StoryEntry storyEntry = this.entry;
        if (storyEntry == null || storyEntry.isRepostMessage) {
            return;
        }
        if (this.textureView != null) {
            this.matrix.set(storyEntry.matrix);
            Matrix matrix = this.matrix;
            float width = 1.0f / getWidth();
            int i = this.entry.width;
            if (i < 0) {
                i = this.videoWidth;
            }
            float f = width * i;
            float height = 1.0f / getHeight();
            int i2 = this.entry.height;
            if (i2 < 0) {
                i2 = this.videoHeight;
            }
            matrix.preScale(f, height * i2);
            this.matrix.postScale(getWidth() / this.entry.resultWidth, getHeight() / this.entry.resultHeight);
            this.transformBackMatrix.reset();
            this.transformMatrix.invert(this.transformBackMatrix);
            this.textureView.setTransform(this.matrix);
            this.textureView.invalidate();
        }
        invalidate();
    }

    public void setAllowCropping(boolean z) {
        this.allowCropping = z;
    }

    private boolean touchEvent(MotionEvent motionEvent) {
        double dAtan2;
        float fDistance;
        float f;
        if (!this.allowCropping) {
            return false;
        }
        boolean z = motionEvent.getPointerCount() > 1;
        if (z) {
            this.touch.x = (motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f;
            this.touch.y = (motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f;
            fDistance = MathUtils.distance(motionEvent.getX(0), motionEvent.getY(0), motionEvent.getX(1), motionEvent.getY(1));
            dAtan2 = Math.atan2(motionEvent.getY(1) - motionEvent.getY(0), motionEvent.getX(1) - motionEvent.getX(0));
        } else {
            this.touch.x = motionEvent.getX(0);
            this.touch.y = motionEvent.getY(0);
            dAtan2 = 0.0d;
            fDistance = 0.0f;
        }
        if (this.multitouch != z) {
            PointF pointF = this.lastTouch;
            PointF pointF2 = this.touch;
            pointF.x = pointF2.x;
            pointF.y = pointF2.y;
            this.lastTouchDistance = fDistance;
            this.lastTouchRotation = dAtan2;
            this.multitouch = z;
        }
        if (this.entry == null) {
            return false;
        }
        float width = r2.resultWidth / getWidth();
        if (motionEvent.getActionMasked() == 0) {
            this.rotationDiff = 0.0f;
            this.snappedRotation = false;
            this.snappedToCenterAndScaled = false;
            this.doNotSpanRotation = false;
            invalidate();
            this.moving = true;
            this.touchMatrix.set(this.entry.matrix);
        }
        if (motionEvent.getActionMasked() == 2 && this.moving && this.entry != null) {
            PointF pointF3 = this.touch;
            float f2 = pointF3.x * width;
            float f3 = pointF3.y * width;
            PointF pointF4 = this.lastTouch;
            float f4 = pointF4.x * width;
            float f5 = pointF4.y * width;
            if (motionEvent.getPointerCount() > 1) {
                float f6 = this.lastTouchDistance;
                if (f6 != 0.0f) {
                    float f7 = fDistance / f6;
                    this.touchMatrix.postScale(f7, f7, f2, f3);
                }
                float degrees = (float) Math.toDegrees(dAtan2 - this.lastTouchRotation);
                float f8 = this.rotationDiff + degrees;
                this.rotationDiff = f8;
                if (this.allowRotation) {
                    f = 90.0f;
                } else {
                    boolean z2 = Math.abs(f8) > 20.0f;
                    this.allowRotation = z2;
                    if (z2) {
                        f = 90.0f;
                    } else {
                        extractPointsData(this.touchMatrix);
                        f = 90.0f;
                        this.allowRotation = (((float) Math.round(this.angle / 90.0f)) * 90.0f) - this.angle > 20.0f;
                    }
                    if (!this.snappedRotation) {
                        AndroidUtilities.vibrateCursor(this);
                        this.snappedRotation = true;
                    }
                }
                if (this.allowRotation) {
                    this.touchMatrix.postRotate(degrees, f2, f3);
                }
                this.allowWithSingleTouch = true;
            } else {
                f = 90.0f;
            }
            if (motionEvent.getPointerCount() > 1 || this.allowWithSingleTouch) {
                this.touchMatrix.postTranslate(f2 - f4, f3 - f5);
            }
            this.finalMatrix.set(this.touchMatrix);
            this.matrix.set(this.touchMatrix);
            extractPointsData(this.matrix);
            float fRound = (Math.round(this.angle / f) * f) - this.angle;
            if (this.allowRotation && !this.doNotSpanRotation) {
                if (Math.abs(fRound) < 3.5f) {
                    this.finalMatrix.postRotate(fRound, this.f2211cx, this.f2212cy);
                    if (!this.snappedRotation) {
                        AndroidUtilities.vibrateCursor(this);
                        this.snappedRotation = true;
                    }
                } else {
                    this.snappedRotation = false;
                }
            }
            this.entry.matrix.set(this.finalMatrix);
            this.entry.editedMedia = true;
            applyMatrix();
            invalidate();
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            if (motionEvent.getPointerCount() <= 1) {
                this.allowWithSingleTouch = false;
                onEntityDraggedTop(false);
                onEntityDraggedBottom(false);
            }
            this.moving = false;
            this.allowRotation = false;
            this.rotationDiff = 0.0f;
            this.snappedToCenterAndScaled = false;
            this.snappedRotation = false;
            invalidate();
        }
        PointF pointF5 = this.lastTouch;
        PointF pointF6 = this.touch;
        pointF5.x = pointF6.x;
        pointF5.y = pointF6.y;
        this.lastTouchDistance = fDistance;
        this.lastTouchRotation = dAtan2;
        return true;
    }

    private boolean tapTouchEvent(MotionEvent motionEvent) {
        Runnable runnable;
        if (motionEvent.getAction() == 0) {
            this.tapTime = System.currentTimeMillis();
            return true;
        }
        if (motionEvent.getAction() == 1) {
            if (System.currentTimeMillis() - this.tapTime <= ViewConfiguration.getTapTimeout() && (runnable = this.onTap) != null) {
                runnable.run();
            }
            this.tapTime = 0L;
            return true;
        }
        if (motionEvent.getAction() != 3) {
            return false;
        }
        this.tapTime = 0L;
        return false;
    }

    public void setOnTapListener(Runnable runnable) {
        this.onTap = runnable;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.allowCropping) {
            touchEvent(motionEvent);
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z = additionalTouchEvent(motionEvent) || touchEvent(motionEvent);
        tapTouchEvent(motionEvent);
        if (z) {
            if (motionEvent.getPointerCount() <= 1) {
                super.dispatchTouchEvent(motionEvent);
            }
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void updatePauseReason(int i, boolean z) {
        if (z) {
            this.pauseLinks.add(Integer.valueOf(i));
        } else {
            this.pauseLinks.remove(Integer.valueOf(i));
        }
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.setPlayWhenReady(this.pauseLinks.isEmpty());
        }
        CollageLayoutView2 collageLayoutView2 = this.collage;
        if (collageLayoutView2 != null) {
            collageLayoutView2.setPlaying(this.pauseLinks.isEmpty());
        }
        updateAudioPlayer(true);
        updateRoundPlayer(true);
    }

    public boolean isPlaying() {
        return !this.pauseLinks.contains(-9982);
    }

    public void play(boolean z) {
        updatePauseReason(-9982, !z);
    }

    public static Drawable getBackgroundDrawable(Drawable drawable, int i, long j, boolean z) {
        TLRPC.WallPaper wallPaper = null;
        if (j == Long.MIN_VALUE) {
            return null;
        }
        if (j >= 0) {
            TLRPC.UserFull userFull = MessagesController.getInstance(i).getUserFull(j);
            if (userFull != null) {
                wallPaper = userFull.wallpaper;
            }
        } else {
            TLRPC.ChatFull chatFull = MessagesController.getInstance(i).getChatFull(-j);
            if (chatFull != null) {
                wallPaper = chatFull.wallpaper;
            }
        }
        return getBackgroundDrawable(drawable, i, wallPaper, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00f5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Drawable getBackgroundDrawable(Drawable drawable, int i, TLRPC.WallPaper wallPaper, boolean z) {
        Theme.ThemeInfo theme;
        String str;
        SparseIntArray themeFileValues;
        int[] defaultColors;
        Theme.ThemeAccent accent;
        if (wallPaper != null && TextUtils.isEmpty(ChatThemeController.getWallpaperEmoticon(wallPaper))) {
            return ChatBackgroundDrawable.getOrCreate(drawable, wallPaper, z);
        }
        EmojiThemes theme2 = (wallPaper == null || wallPaper.settings == null) ? null : ChatThemeController.getInstance(i).getTheme(ThemeKey.ofEmoticon(wallPaper.settings.emoticon));
        if (theme2 != null) {
            return getBackgroundDrawableFromTheme(i, theme2, 0, z);
        }
        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("themeconfig", 0);
        String str2 = "Blue";
        String string = sharedPreferences.getString("lastDayTheme", "Blue");
        if (Theme.getTheme(string) == null || Theme.getTheme(string).isDark()) {
            string = "Blue";
        }
        String str3 = "Dark Blue";
        String string2 = sharedPreferences.getString("lastDarkTheme", "Dark Blue");
        if (Theme.getTheme(string2) == null || !Theme.getTheme(string2).isDark()) {
            string2 = "Dark Blue";
        }
        Theme.ThemeInfo activeTheme = Theme.getActiveTheme();
        if (string.equals(string2)) {
            if (activeTheme.isDark() || string.equals("Dark Blue") || string.equals("Night")) {
                str3 = string2;
            }
            if (!z) {
                theme = Theme.getTheme(str3);
            } else {
                theme = Theme.getTheme(str2);
            }
            SparseIntArray sparseIntArray = new SparseIntArray();
            String[] strArr = new String[1];
            str = theme.assetName;
            if (str == null) {
                themeFileValues = Theme.getThemeFileValues(null, str, strArr);
            } else {
                themeFileValues = Theme.getThemeFileValues(new File(theme.pathToFile), null, strArr);
            }
            defaultColors = Theme.getDefaultColors();
            if (defaultColors != null) {
                for (int i2 = 0; i2 < defaultColors.length; i2++) {
                    sparseIntArray.put(i2, defaultColors[i2]);
                }
            }
            accent = theme.getAccent(false);
            if (accent == null) {
                accent.fillAccentColors(themeFileValues, sparseIntArray);
            } else if (themeFileValues != null) {
                for (int i3 = 0; i3 < themeFileValues.size(); i3++) {
                    sparseIntArray.put(themeFileValues.keyAt(i3), themeFileValues.valueAt(i3));
                }
            }
            Theme.BackgroundDrawableSettings backgroundDrawableSettingsCreateBackgroundDrawable = Theme.createBackgroundDrawable(theme, sparseIntArray, strArr[0], 0, true);
            Drawable drawable2 = backgroundDrawableSettingsCreateBackgroundDrawable.themedWallpaper;
            return drawable2 == null ? drawable2 : backgroundDrawableSettingsCreateBackgroundDrawable.wallpaper;
        }
        str3 = string2;
        str2 = string;
        if (!z) {
        }
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        String[] strArr2 = new String[1];
        str = theme.assetName;
        if (str == null) {
        }
        defaultColors = Theme.getDefaultColors();
        if (defaultColors != null) {
        }
        accent = theme.getAccent(false);
        if (accent == null) {
        }
        Theme.BackgroundDrawableSettings backgroundDrawableSettingsCreateBackgroundDrawable2 = Theme.createBackgroundDrawable(theme, sparseIntArray2, strArr2[0], 0, true);
        Drawable drawable22 = backgroundDrawableSettingsCreateBackgroundDrawable2.themedWallpaper;
        if (drawable22 == null) {
        }
    }

    public void setupWallpaper(StoryEntry storyEntry, boolean z) {
        Drawable drawable = this.wallpaperDrawable;
        this.lastWallpaperDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        if (storyEntry == null) {
            this.wallpaperDrawable = null;
            return;
        }
        long j = storyEntry.backgroundWallpaperPeerId;
        String str = storyEntry.backgroundWallpaperEmoticon;
        if (str != null) {
            Drawable backgroundDrawableFromTheme = getBackgroundDrawableFromTheme(storyEntry.currentAccount, str, storyEntry.isDark);
            storyEntry.backgroundDrawable = backgroundDrawableFromTheme;
            this.wallpaperDrawable = backgroundDrawableFromTheme;
        } else if (j != Long.MIN_VALUE) {
            Drawable backgroundDrawable = getBackgroundDrawable(this.wallpaperDrawable, storyEntry.currentAccount, j, storyEntry.isDark);
            storyEntry.backgroundDrawable = backgroundDrawable;
            this.wallpaperDrawable = backgroundDrawable;
        } else {
            this.wallpaperDrawable = null;
            return;
        }
        if (this.lastWallpaperDrawable != this.wallpaperDrawable) {
            if (z) {
                this.wallpaperDrawableCrossfade.set(0.0f, true);
            } else {
                this.lastWallpaperDrawable = null;
            }
        }
        Drawable drawable2 = this.wallpaperDrawable;
        if (drawable2 != null) {
            drawable2.setCallback(this);
        }
        BlurringShader.BlurManager blurManager = this.blurManager;
        if (blurManager != null) {
            Drawable drawable3 = this.wallpaperDrawable;
            if (drawable3 != null) {
                if (drawable3 instanceof BitmapDrawable) {
                    blurManager.setFallbackBlur(((BitmapDrawable) drawable3).getBitmap(), 0);
                } else {
                    int intrinsicWidth = drawable3.getIntrinsicWidth();
                    int intrinsicHeight = this.wallpaperDrawable.getIntrinsicHeight();
                    if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                        intrinsicWidth = 1080;
                        intrinsicHeight = 1920;
                    }
                    float f = intrinsicWidth;
                    float f2 = intrinsicHeight;
                    float fMax = Math.max(100.0f / f, 100.0f / f2);
                    if (fMax > 1.0f) {
                        intrinsicWidth = (int) (f * fMax);
                        intrinsicHeight = (int) (f2 * fMax);
                    }
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
                    this.wallpaperDrawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
                    this.wallpaperDrawable.draw(new Canvas(bitmapCreateBitmap));
                    this.blurManager.setFallbackBlur(bitmapCreateBitmap, 0, true);
                }
            } else {
                blurManager.setFallbackBlur(null, 0);
            }
        }
        invalidate();
    }

    public static Drawable getBackgroundDrawableFromTheme(int i, String str, boolean z) {
        return getBackgroundDrawableFromTheme(i, str, z, false);
    }

    public static Drawable getBackgroundDrawableFromTheme(int i, String str, boolean z, boolean z2) {
        EmojiThemes theme = ChatThemeController.getInstance(i).getTheme(ThemeKey.ofEmoticon(str));
        if (theme == null) {
            return Theme.getCachedWallpaper();
        }
        return getBackgroundDrawableFromTheme(i, theme, 0, z, z2);
    }

    public static Drawable getBackgroundDrawableFromTheme(int i, EmojiThemes emojiThemes, int i2, boolean z) {
        return getBackgroundDrawableFromTheme(i, emojiThemes, i2, z, false);
    }

    public static Drawable getBackgroundDrawableFromTheme(int i, final EmojiThemes emojiThemes, int i2, final boolean z, boolean z2) {
        if (emojiThemes.isAnyStub()) {
            Drawable drawable = Theme.createBackgroundDrawable(EmojiThemes.getDefaultThemeInfo(z), emojiThemes.getPreviewColors(i, z ? 1 : 0), emojiThemes.getWallpaperLink(z ? 1 : 0), i2, false).wallpaper;
            return new ColorDrawable(-16777216);
        }
        SparseIntArray previewColors = emojiThemes.getPreviewColors(i, z ? 1 : 0);
        int i3 = Theme.key_chat_wallpaper;
        int i4 = previewColors.get(i3, Theme.getColor(i3));
        int i5 = Theme.key_chat_wallpaper_gradient_to1;
        int i6 = previewColors.get(i5, Theme.getColor(i5));
        int i7 = Theme.key_chat_wallpaper_gradient_to2;
        int i8 = previewColors.get(i7, Theme.getColor(i7));
        int i9 = Theme.key_chat_wallpaper_gradient_to3;
        int i10 = previewColors.get(i9, Theme.getColor(i9));
        final MotionBackgroundDrawable motionBackgroundDrawable = new MotionBackgroundDrawable();
        motionBackgroundDrawable.isPreview = z2;
        motionBackgroundDrawable.setPatternBitmap(emojiThemes.getWallpaper(z ? 1 : 0).settings.intensity);
        motionBackgroundDrawable.setColors(i4, i6, i8, i10, 0, true);
        motionBackgroundDrawable.setPhase(i2);
        final int patternColor = motionBackgroundDrawable.getPatternColor();
        emojiThemes.loadWallpaper(z ? 1 : 0, new ResultCallback() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.ResultCallback
            public final void onComplete(Object obj) {
                PreviewView.m19427$r8$lambda$YvX6qPvkc_kWlwMcyzkaJt4bas(emojiThemes, z, z, motionBackgroundDrawable, patternColor, (Pair) obj);
            }

            @Override // org.telegram.tgnet.ResultCallback
            public /* synthetic */ void onError(TLRPC.TL_error tL_error) {
                ResultCallback.CC.$default$onError(this, tL_error);
            }
        });
        return motionBackgroundDrawable;
    }

    /* JADX INFO: renamed from: $r8$lambda$YvX6qPvkc_kWlwMcyzka-Jt4bas, reason: not valid java name */
    public static /* synthetic */ void m19427$r8$lambda$YvX6qPvkc_kWlwMcyzkaJt4bas(EmojiThemes emojiThemes, boolean z, boolean z2, MotionBackgroundDrawable motionBackgroundDrawable, int i, Pair pair) {
        if (pair == null) {
            return;
        }
        long jLongValue = ((Long) pair.first).longValue();
        Bitmap bitmap = ((WallpaperBitmapHolder) pair.second).bitmap;
        if (jLongValue != emojiThemes.getThemeId(z ? 1 : 0) || bitmap == null) {
            return;
        }
        motionBackgroundDrawable.setPatternBitmap(emojiThemes.getWallpaper(z2 ? 1 : 0).settings.intensity, bitmap);
        motionBackgroundDrawable.setPatternColorFilter(i);
        motionBackgroundDrawable.setPatternAlpha(1.0f);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return this.wallpaperDrawable == drawable || super.verifyDrawable(drawable);
    }

    public void setCropEditorDrawing(CropEditor cropEditor) {
        if (this.cropEditorDrawing != cropEditor) {
            this.cropEditorDrawing = cropEditor;
            invalidate();
        }
    }
}
