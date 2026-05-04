package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextPaint;
import android.view.View;
import android.view.ViewGroup;
import j$.util.Comparator;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.function.ToDoubleFunction;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Bitmaps;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Components.VideoPlayer;
import org.telegram.ui.Components.VideoSeekPreviewImage;

/* JADX INFO: loaded from: classes3.dex */
public abstract class VideoSeekPreviewImage extends View implements NotificationCenter.NotificationCenterDelegate {
    private Paint bitmapPaint;
    private RectF bitmapRect;
    private BitmapShader bitmapShader;
    private Bitmap bitmapToDraw;
    private Bitmap bitmapToRecycle;
    private int currentPixel;
    private VideoSeekPreviewImageDelegate delegate;
    private String downloadingStoryBoardMapFilename;
    private TLRPC.Document downloadingStoryboardMapDocument;
    private boolean drawStoryBoard;
    private RectF dstR;
    private long duration;
    private AnimatedFileDrawable fileDrawable;
    private Drawable frameDrawable;
    private String frameTime;
    private boolean isQualities;
    private boolean isYoutube;
    private double lastPosition;
    private int listeningCurrentAccount;
    private Runnable loadRunnable;
    private Matrix matrix;
    private boolean open;
    private Paint paint;
    private float pendingProgress;
    private int pixelWidth;
    private Runnable progressRunnable;
    private boolean ready;
    private int storyBoardFrameHeight;
    private int storyBoardFrameWidth;
    private ArrayList storyBoardMap;
    private long storyBoardMapDocId;
    private long storyBoardPictureDocId;
    private ImageReceiver storyBoardsReceiver;
    private final TextPaint textPaint;
    private int timeWidth;
    private Uri videoUri;
    private PhotoViewerWebView webView;
    private int ytImageHeight;
    private int ytImageWidth;
    private int ytImageX;
    private int ytImageY;
    private final Path ytPath;

    /* JADX INFO: loaded from: classes7.dex */
    public interface VideoSeekPreviewImageDelegate {
        void onReady();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes7.dex */
    static final class StoryBoardFrame {
        public final int left;
        public final double pts;
        public final int top;

        public StoryBoardFrame(double d, int i, int i2) {
            this.pts = d;
            this.left = i;
            this.top = i2;
        }
    }

    public VideoSeekPreviewImage(Context context, VideoSeekPreviewImageDelegate videoSeekPreviewImageDelegate) {
        super(context);
        this.currentPixel = -1;
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        this.dstR = new RectF();
        this.paint = new Paint(2);
        this.bitmapPaint = new Paint(2);
        this.bitmapRect = new RectF();
        this.matrix = new Matrix();
        this.ytPath = new Path();
        this.listeningCurrentAccount = -1;
        setVisibility(4);
        this.frameDrawable = context.getResources().getDrawable(C2484R.drawable.videopreview);
        textPaint.setTextSize(AndroidUtilities.dp(13.0f));
        textPaint.setColor(-1);
        this.delegate = videoSeekPreviewImageDelegate;
        ImageReceiver imageReceiver = new ImageReceiver();
        this.storyBoardsReceiver = imageReceiver;
        imageReceiver.setParentView(this);
        this.storyBoardsReceiver.setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Components.VideoSeekPreviewImage$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public final void didSetImage(ImageReceiver imageReceiver2, boolean z, boolean z2, boolean z3) {
                this.f$0.lambda$new$0(imageReceiver2, z, z2, z3);
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void didSetImageBitmap(int i, String str, Drawable drawable) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$didSetImageBitmap(this, i, str, drawable);
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver2) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        StoryBoardFrame storyBoardFrame;
        int i;
        if (z) {
            if (this.webView == null && this.storyBoardMap == null) {
                return;
            }
            int iDp = AndroidUtilities.dp(150.0f);
            PhotoViewerWebView photoViewerWebView = this.webView;
            if (photoViewerWebView != null) {
                int youtubeStoryboardImageCount = photoViewerWebView.getYoutubeStoryboardImageCount((int) this.lastPosition);
                float bitmapWidth = this.storyBoardsReceiver.getBitmapWidth() / Math.min(youtubeStoryboardImageCount, 5);
                float bitmapHeight = this.storyBoardsReceiver.getBitmapHeight() / ((int) Math.ceil(youtubeStoryboardImageCount / 5.0f));
                int iMin = Math.min(this.webView.getYoutubeStoryboardImageIndex((int) this.lastPosition), youtubeStoryboardImageCount - 1);
                this.ytImageX = (int) ((iMin % 5) * bitmapWidth);
                this.ytImageY = (int) ((iMin / 5) * bitmapHeight);
                this.ytImageWidth = (int) bitmapWidth;
                this.ytImageHeight = (int) bitmapHeight;
            } else {
                int i2 = 0;
                while (true) {
                    if (i2 >= this.storyBoardMap.size()) {
                        storyBoardFrame = null;
                        break;
                    }
                    storyBoardFrame = (StoryBoardFrame) this.storyBoardMap.get(i2);
                    double d = i2 == 0 ? 0.0d : storyBoardFrame.pts;
                    double d2 = i2 == this.storyBoardMap.size() - 1 ? 9.9999999E7d : ((StoryBoardFrame) this.storyBoardMap.get(i2 + 1)).pts;
                    double d3 = this.lastPosition;
                    if (d3 >= d && d3 <= d2) {
                        break;
                    } else {
                        i2++;
                    }
                }
                if (storyBoardFrame == null) {
                    return;
                }
                this.ytImageX = storyBoardFrame.left;
                this.ytImageY = storyBoardFrame.top;
                this.ytImageWidth = this.storyBoardFrameWidth;
                this.ytImageHeight = this.storyBoardFrameHeight;
            }
            this.drawStoryBoard = true;
            float f = this.ytImageWidth / this.ytImageHeight;
            if (f > 1.0f) {
                i = (int) (iDp / f);
            } else {
                int i3 = (int) (iDp * f);
                i = iDp;
                iDp = i3;
            }
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (getVisibility() == 0 && layoutParams.width == iDp && layoutParams.height == i) {
                return;
            }
            layoutParams.width = iDp;
            layoutParams.height = i;
            setVisibility(0);
            requestLayout();
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.storyBoardsReceiver.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.storyBoardsReceiver.onDetachedFromWindow();
    }

    public void setProgressForYouTube(PhotoViewerWebView photoViewerWebView, float f, int i) {
        this.webView = photoViewerWebView;
        this.isYoutube = true;
        if (this.storyBoardMapDocId != 0) {
            this.storyBoardMapDocId = 0L;
            this.downloadingStoryBoardMapFilename = null;
            this.downloadingStoryboardMapDocument = null;
            this.storyBoardMap = null;
            listen(-1);
        }
        if (i != 0) {
            this.pixelWidth = i;
            int i2 = ((int) (i * f)) / 5;
            if (this.currentPixel == i2) {
                return;
            } else {
                this.currentPixel = i2;
            }
        }
        this.frameTime = AndroidUtilities.formatShortDuration((int) (((long) (photoViewerWebView.getVideoDuration() * f)) / 1000));
        this.timeWidth = (int) Math.ceil(this.textPaint.measureText(r10));
        invalidate();
        if (this.progressRunnable != null) {
            Utilities.globalQueue.cancelRunnable(this.progressRunnable);
        }
        double videoDuration = ((double) (f * photoViewerWebView.getVideoDuration())) / 1000.0d;
        this.lastPosition = videoDuration;
        String youtubeStoryboard = photoViewerWebView.getYoutubeStoryboard((int) videoDuration);
        if (youtubeStoryboard != null) {
            this.storyBoardsReceiver.setImage(youtubeStoryboard, null, null, null, 0L);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007b A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setProgress(MessageObject messageObject, final float f, int i) {
        boolean z;
        TLRPC.Document documentFindDocumentById;
        this.webView = null;
        this.isYoutube = false;
        if (this.storyBoardMap != null && (documentFindDocumentById = findDocumentById(messageObject, this.storyBoardPictureDocId)) != null) {
            this.lastPosition = ((double) (this.duration * f)) / 1000.0d;
            this.storyBoardsReceiver.setImage(ImageLocation.getForDocument(documentFindDocumentById), null, null, null, messageObject, 0);
            z = true;
            this.drawStoryBoard = z;
            if (i != 0) {
            }
            final long j = (long) (this.duration * f);
            this.frameTime = AndroidUtilities.formatShortDuration((int) (j / 1000));
            this.timeWidth = (int) Math.ceil(this.textPaint.measureText(r15));
            invalidate();
            if (this.progressRunnable != null) {
            }
            if (z) {
            }
        } else {
            this.storyBoardsReceiver.setImageBitmap((Drawable) null);
            z = false;
            this.drawStoryBoard = z;
            if (i != 0) {
                this.pixelWidth = i;
                int i2 = ((int) (i * f)) / 5;
                if (this.currentPixel == i2) {
                    return;
                } else {
                    this.currentPixel = i2;
                }
            }
            final long j2 = (long) (this.duration * f);
            this.frameTime = AndroidUtilities.formatShortDuration((int) (j2 / 1000));
            this.timeWidth = (int) Math.ceil(this.textPaint.measureText(r15));
            invalidate();
            if (this.progressRunnable != null) {
                Utilities.globalQueue.cancelRunnable(this.progressRunnable);
            }
            if (z) {
                AnimatedFileDrawable animatedFileDrawable = this.fileDrawable;
                if (animatedFileDrawable != null) {
                    animatedFileDrawable.resetStream(false);
                }
                DispatchQueue dispatchQueue = Utilities.globalQueue;
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.VideoSeekPreviewImage$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setProgress$2(f, j2);
                    }
                };
                this.progressRunnable = runnable;
                dispatchQueue.postRunnable(runnable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setProgress$2(float f, long j) {
        int i;
        if (this.fileDrawable == null) {
            this.pendingProgress = f;
            return;
        }
        int iMax = Math.max(200, AndroidUtilities.dp(100.0f));
        final Bitmap frameAtTime = this.fileDrawable.getFrameAtTime(j, false);
        if (frameAtTime != null) {
            int width = frameAtTime.getWidth();
            int height = frameAtTime.getHeight();
            if (width > height) {
                i = (int) (height / (width / iMax));
            } else {
                int i2 = (int) (width / (height / iMax));
                i = iMax;
                iMax = i2;
            }
            try {
                Bitmap bitmapCreateBitmap = Bitmaps.createBitmap(iMax, i, Bitmap.Config.ARGB_8888);
                this.dstR.set(0.0f, 0.0f, iMax, i);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                canvas.drawBitmap(frameAtTime, (android.graphics.Rect) null, this.dstR, this.paint);
                canvas.setBitmap(null);
                frameAtTime = bitmapCreateBitmap;
            } catch (Throwable unused) {
                frameAtTime = null;
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.VideoSeekPreviewImage$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setProgress$1(frameAtTime);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setProgress$1(Bitmap bitmap) {
        int i;
        if (bitmap != null) {
            if (this.bitmapToDraw != null) {
                Bitmap bitmap2 = this.bitmapToRecycle;
                if (bitmap2 != null) {
                    bitmap2.recycle();
                }
                this.bitmapToRecycle = this.bitmapToDraw;
            }
            this.bitmapToDraw = bitmap;
            Bitmap bitmap3 = this.bitmapToDraw;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader = new BitmapShader(bitmap3, tileMode, tileMode);
            this.bitmapShader = bitmapShader;
            bitmapShader.setLocalMatrix(this.matrix);
            this.bitmapPaint.setShader(this.bitmapShader);
            invalidate();
            int iDp = AndroidUtilities.dp(150.0f);
            float width = bitmap.getWidth() / bitmap.getHeight();
            if (width > 1.0f) {
                i = (int) (iDp / width);
            } else {
                iDp = (int) (iDp * width);
                i = iDp;
            }
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (getVisibility() != 0 || layoutParams.width != iDp || layoutParams.height != i) {
                layoutParams.width = iDp;
                layoutParams.height = i;
                setVisibility(0);
                requestLayout();
            }
        }
        this.progressRunnable = null;
    }

    public void open(MessageObject messageObject, VideoPlayer videoPlayer) {
        VideoPlayer.Quality currentQuality;
        if (videoPlayer == null) {
            return;
        }
        if (videoPlayer.getQualitiesCount() > 0) {
            VideoPlayer.VideoUri downloadUri = null;
            for (int i = 0; i < videoPlayer.getQualitiesCount(); i++) {
                ArrayList arrayList = videoPlayer.getQuality(i).uris;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    VideoPlayer.VideoUri videoUri = (VideoPlayer.VideoUri) obj;
                    if (downloadUri == null || ((!downloadUri.isCached() && videoUri.isCached()) || (downloadUri.isCached() == videoUri.isCached() && videoUri.width * videoUri.height < downloadUri.width * downloadUri.height))) {
                        downloadUri = videoUri;
                    }
                }
            }
            if (downloadUri != null && !downloadUri.isCached() && (currentQuality = videoPlayer.getCurrentQuality()) != null) {
                downloadUri = currentQuality.getDownloadUri();
            }
            if (downloadUri != null && !downloadUri.isCached()) {
                close();
                return;
            } else {
                if (downloadUri != null) {
                    downloadUri.isCached();
                }
                open(messageObject, downloadUri);
            }
        } else {
            Uri currentUri = videoPlayer.getCurrentUri();
            if (currentUri != null) {
                "file".equalsIgnoreCase(currentUri.getScheme());
            }
            open(messageObject, currentUri);
        }
        TLRPC.Document documentFindDocumentByMimeType = findDocumentByMimeType(messageObject, "application/x-tgstoryboardmap");
        long j = documentFindDocumentByMimeType == null ? 0L : documentFindDocumentByMimeType.id;
        if (this.storyBoardMapDocId != j) {
            this.storyBoardMapDocId = j;
            this.storyBoardMap = null;
            if (documentFindDocumentByMimeType != null) {
                File pathToAttach = FileLoader.getInstance(messageObject.currentAccount).getPathToAttach(documentFindDocumentByMimeType);
                if (pathToAttach != null && pathToAttach.exists()) {
                    this.downloadingStoryBoardMapFilename = null;
                    this.downloadingStoryboardMapDocument = null;
                    listen(-1);
                    parseStoryBoardMap(pathToAttach);
                    return;
                }
                this.downloadingStoryBoardMapFilename = FileLoader.getAttachFileName(documentFindDocumentByMimeType);
                this.downloadingStoryboardMapDocument = documentFindDocumentByMimeType;
                listen(messageObject.currentAccount);
                FileLoader.getInstance(messageObject.currentAccount).loadFile(documentFindDocumentByMimeType, messageObject, 2, 0);
                return;
            }
            this.downloadingStoryBoardMapFilename = null;
            this.downloadingStoryboardMapDocument = null;
            listen(-1);
            parseStoryBoardMap(null);
        }
    }

    private void listen(int i) {
        int i2 = this.listeningCurrentAccount;
        if (i2 == i) {
            return;
        }
        if (i == -1) {
            NotificationCenter.getInstance(i2).removeObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(this.listeningCurrentAccount).removeObserver(this, NotificationCenter.fileLoadFailed);
        } else {
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.fileLoadFailed);
        }
        this.listeningCurrentAccount = i;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.fileLoaded) {
            if (((String) objArr[0]).equals(this.downloadingStoryBoardMapFilename)) {
                File pathToAttach = FileLoader.getInstance(i2).getPathToAttach(this.downloadingStoryboardMapDocument);
                if (pathToAttach != null && pathToAttach.exists()) {
                    parseStoryBoardMap(pathToAttach);
                }
                this.downloadingStoryBoardMapFilename = null;
                this.downloadingStoryboardMapDocument = null;
                listen(-1);
                return;
            }
            return;
        }
        if (i == NotificationCenter.fileLoadFailed && ((String) objArr[0]).equals(this.downloadingStoryBoardMapFilename)) {
            this.downloadingStoryBoardMapFilename = null;
            this.downloadingStoryboardMapDocument = null;
            listen(-1);
        }
    }

    public void parseStoryBoardMap(File file) {
        if (file == null) {
            this.storyBoardMap = null;
            return;
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
            ArrayList arrayList = new ArrayList();
            long j = 0;
            int i = 0;
            int i2 = 0;
            while (true) {
                String line = randomAccessFile.readLine();
                if (line != null) {
                    if (line.startsWith("file=mtproto:")) {
                        j = Long.parseLong(line.substring(13));
                    } else if (line.startsWith("frame_width=")) {
                        i = Integer.parseInt(line.substring(12));
                    } else if (line.startsWith("frame_height=")) {
                        i2 = Integer.parseInt(line.substring(13));
                    } else {
                        String[] strArrSplit = line.split(",");
                        if (strArrSplit.length == 3) {
                            arrayList.add(new StoryBoardFrame(Double.parseDouble(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2])));
                        }
                    }
                } else {
                    Collections.sort(arrayList, Comparator.CC.comparingDouble(new ToDoubleFunction() { // from class: org.telegram.ui.Components.VideoSeekPreviewImage$$ExternalSyntheticLambda1
                        @Override // java.util.function.ToDoubleFunction
                        public final double applyAsDouble(Object obj) {
                            return ((VideoSeekPreviewImage.StoryBoardFrame) obj).pts;
                        }
                    }));
                    this.storyBoardPictureDocId = j;
                    this.storyBoardFrameWidth = i;
                    this.storyBoardFrameHeight = i2;
                    this.storyBoardMap = arrayList;
                    return;
                }
            }
        } catch (Exception e) {
            FileLog.m955e(e);
            this.storyBoardMap = null;
        }
    }

    public void open(final MessageObject messageObject, final VideoPlayer.VideoUri videoUri) {
        if (videoUri == null || videoUri.uri.equals(this.videoUri)) {
            return;
        }
        if (this.open) {
            close();
        }
        this.isQualities = true;
        this.videoUri = videoUri.uri;
        DispatchQueue dispatchQueue = Utilities.globalQueue;
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.VideoSeekPreviewImage$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$open$5(videoUri, messageObject);
            }
        };
        this.loadRunnable = runnable;
        dispatchQueue.postRunnable(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$open$5(VideoPlayer.VideoUri videoUri, MessageObject messageObject) {
        Object parentObject;
        String absolutePath;
        if (videoUri.isCached()) {
            this.fileDrawable = new AnimatedFileDrawable(new File(videoUri.uri.getPath()), true, 0L, 0, null, null, null, 0L, 0, true, null);
        } else {
            int iIntValue = UserConfig.selectedAccount;
            try {
                iIntValue = Utilities.parseInt((CharSequence) videoUri.uri.getQueryParameter("account")).intValue();
            } catch (Exception e) {
                FileLog.m955e(e);
            }
            int i = iIntValue;
            try {
                parentObject = FileLoader.getInstance(i).getParentObject(Utilities.parseInt((CharSequence) videoUri.uri.getQueryParameter("rid")).intValue());
            } catch (Exception e2) {
                FileLog.m955e(e2);
                parentObject = null;
            }
            Object obj = parentObject;
            TLRPC.Document document = videoUri.document;
            if (FileLoader.getInstance(i).isLoadingFile(FileLoader.getAttachFileName(document))) {
                absolutePath = new File(FileLoader.getDirectory(4), document.dc_id + "_" + document.id + ".temp").getAbsolutePath();
            } else {
                absolutePath = FileLoader.getInstance(i).getPathToAttach(document, false).getAbsolutePath();
            }
            this.fileDrawable = new AnimatedFileDrawable(new File(absolutePath), true, document.size, 1, document, null, obj, 0L, i, true, null);
        }
        this.duration = this.fileDrawable.getDurationMs();
        float f = this.pendingProgress;
        if (f != 0.0f) {
            setProgress(messageObject, f, this.pixelWidth);
            this.pendingProgress = 0.0f;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.VideoSeekPreviewImage$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$open$4();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$open$4() {
        this.open = true;
        this.loadRunnable = null;
        if (this.fileDrawable != null) {
            this.ready = true;
            this.delegate.onReady();
        }
    }

    public void open(final MessageObject messageObject, final Uri uri) {
        if (uri == null || uri.equals(this.videoUri)) {
            return;
        }
        if (this.open) {
            close();
        }
        this.isQualities = false;
        this.videoUri = uri;
        DispatchQueue dispatchQueue = Utilities.globalQueue;
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.VideoSeekPreviewImage$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$open$7(uri, messageObject);
            }
        };
        this.loadRunnable = runnable;
        dispatchQueue.postRunnable(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$open$7(Uri uri, MessageObject messageObject) {
        String absolutePath;
        if ("tg".equals(uri.getScheme())) {
            int iIntValue = Utilities.parseInt((CharSequence) uri.getQueryParameter("account")).intValue();
            Object parentObject = FileLoader.getInstance(iIntValue).getParentObject(Utilities.parseInt((CharSequence) uri.getQueryParameter("rid")).intValue());
            TLRPC.TL_document tL_document = new TLRPC.TL_document();
            tL_document.access_hash = Utilities.parseLong(uri.getQueryParameter("hash")).longValue();
            tL_document.id = Utilities.parseLong(uri.getQueryParameter("id")).longValue();
            tL_document.size = Utilities.parseLong(uri.getQueryParameter("size")).longValue();
            tL_document.dc_id = Utilities.parseInt((CharSequence) uri.getQueryParameter("dc")).intValue();
            tL_document.mime_type = uri.getQueryParameter("mime");
            tL_document.file_reference = Utilities.hexToBytes(uri.getQueryParameter("reference"));
            TLRPC.TL_documentAttributeFilename tL_documentAttributeFilename = new TLRPC.TL_documentAttributeFilename();
            tL_documentAttributeFilename.file_name = uri.getQueryParameter("name");
            tL_document.attributes.add(tL_documentAttributeFilename);
            tL_document.attributes.add(new TLRPC.TL_documentAttributeVideo());
            if (FileLoader.getInstance(iIntValue).isLoadingFile(FileLoader.getAttachFileName(tL_document))) {
                absolutePath = new File(FileLoader.getDirectory(4), tL_document.dc_id + "_" + tL_document.id + ".temp").getAbsolutePath();
            } else {
                absolutePath = FileLoader.getInstance(iIntValue).getPathToAttach(tL_document, false).getAbsolutePath();
            }
            this.fileDrawable = new AnimatedFileDrawable(new File(absolutePath), true, tL_document.size, 1, tL_document, null, parentObject, 0L, iIntValue, true, null);
        } else {
            this.fileDrawable = new AnimatedFileDrawable(new File(uri.getPath()), true, 0L, 0, null, null, null, 0L, 0, true, null);
        }
        this.duration = this.fileDrawable.getDurationMs();
        float f = this.pendingProgress;
        if (f != 0.0f) {
            setProgress(messageObject, f, this.pixelWidth);
            this.pendingProgress = 0.0f;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.VideoSeekPreviewImage$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$open$6();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$open$6() {
        this.open = true;
        this.loadRunnable = null;
        if (this.fileDrawable != null) {
            this.ready = true;
            this.delegate.onReady();
        }
    }

    public static TLRPC.Document findDocumentByMimeType(MessageObject messageObject, String str) {
        TLRPC.MessageMedia media = MessageObject.getMedia(messageObject);
        if (media == null) {
            return null;
        }
        TLRPC.Document document = media.document;
        if (document != null && str.equalsIgnoreCase(document.mime_type)) {
            return media.document;
        }
        ArrayList<TLRPC.Document> arrayList = media.alt_documents;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.Document document2 = arrayList.get(i);
            i++;
            TLRPC.Document document3 = document2;
            if (str.equalsIgnoreCase(document3.mime_type)) {
                return document3;
            }
        }
        return null;
    }

    public static TLRPC.Document findDocumentById(MessageObject messageObject, long j) {
        TLRPC.MessageMedia media = MessageObject.getMedia(messageObject);
        if (media == null) {
            return null;
        }
        TLRPC.Document document = media.document;
        if (document != null && document.id == j) {
            return document;
        }
        ArrayList<TLRPC.Document> arrayList = media.alt_documents;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.Document document2 = arrayList.get(i);
            i++;
            TLRPC.Document document3 = document2;
            if (document3.id == j) {
                return document3;
            }
        }
        return null;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setPivotY(getMeasuredHeight());
    }

    public boolean isReady() {
        return this.ready;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap bitmap = this.bitmapToRecycle;
        if (bitmap != null) {
            bitmap.recycle();
            this.bitmapToRecycle = null;
        }
        if (this.drawStoryBoard) {
            canvas.save();
            this.ytPath.rewind();
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
            this.ytPath.addRoundRect(rectF, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), Path.Direction.CW);
            canvas.clipPath(this.ytPath);
            canvas.scale(getWidth() / this.ytImageWidth, getHeight() / this.ytImageHeight);
            canvas.translate(-this.ytImageX, -this.ytImageY);
            this.storyBoardsReceiver.setImageCoords(0.0f, 0.0f, r0.getBitmapWidth(), this.storyBoardsReceiver.getBitmapHeight());
            this.storyBoardsReceiver.draw(canvas);
            canvas.restore();
            this.frameDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            this.frameDrawable.draw(canvas);
            canvas.drawText(this.frameTime, (getMeasuredWidth() - this.timeWidth) / 2.0f, getMeasuredHeight() - AndroidUtilities.dp(9.0f), this.textPaint);
            return;
        }
        if (this.bitmapToDraw == null || this.bitmapShader == null) {
            return;
        }
        this.matrix.reset();
        float measuredWidth = getMeasuredWidth() / this.bitmapToDraw.getWidth();
        this.matrix.preScale(measuredWidth, measuredWidth);
        this.bitmapRect.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
        canvas.drawRoundRect(this.bitmapRect, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), this.bitmapPaint);
        this.frameDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
        this.frameDrawable.draw(canvas);
        canvas.drawText(this.frameTime, (getMeasuredWidth() - this.timeWidth) / 2.0f, getMeasuredHeight() - AndroidUtilities.dp(9.0f), this.textPaint);
    }

    public void close() {
        if (this.loadRunnable != null) {
            Utilities.globalQueue.cancelRunnable(this.loadRunnable);
            this.loadRunnable = null;
        }
        if (this.progressRunnable != null) {
            Utilities.globalQueue.cancelRunnable(this.progressRunnable);
            this.progressRunnable = null;
        }
        AnimatedFileDrawable animatedFileDrawable = this.fileDrawable;
        if (animatedFileDrawable != null) {
            animatedFileDrawable.resetStream(true);
        }
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.VideoSeekPreviewImage$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$close$8();
            }
        });
        setVisibility(4);
        this.bitmapToDraw = null;
        this.bitmapShader = null;
        invalidate();
        this.currentPixel = -1;
        this.videoUri = null;
        this.ready = false;
        this.open = false;
        if (this.storyBoardMapDocId != 0) {
            this.storyBoardMapDocId = 0L;
            this.downloadingStoryBoardMapFilename = null;
            this.downloadingStoryboardMapDocument = null;
            this.storyBoardMap = null;
            listen(-1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$close$8() {
        this.pendingProgress = 0.0f;
        AnimatedFileDrawable animatedFileDrawable = this.fileDrawable;
        if (animatedFileDrawable != null) {
            animatedFileDrawable.recycle();
            this.fileDrawable = null;
        }
    }
}
