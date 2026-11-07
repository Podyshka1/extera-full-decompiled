package org.telegram.ui.Stories.recorder;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.provider.MediaStore;
import android.text.SpannableString;
import android.text.TextUtils;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FileRefController;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.video.MediaCodecVideoConvertor;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedFileNative;
import org.telegram.ui.Components.PhotoFilterView;
import org.telegram.ui.Components.RLottieNative;
import org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet;

/* JADX INFO: loaded from: classes7.dex */
public class StoryEntry {
    public HashSet<Integer> albums;
    public boolean allowScreenshots;
    public String audioAuthor;
    public TLRPC.InputDocument audioDocument;
    public long audioDuration;
    public float audioLeft;
    public long audioOffset;
    public String audioPath;
    public String audioTitle;
    public Drawable backgroundDrawable;
    public File backgroundFile;
    public String backgroundWallpaperEmoticon;
    public Bitmap blurredVideoThumb;
    public long botId;
    public CharSequence caption;
    public CollageLayout collage;
    public ArrayList<StoryEntry> collageContent;
    public Bitmap coverBitmap;
    public boolean coverSet;
    public MediaController.CropState crop;
    public long draftDate;
    public long draftId;
    public File draftThumbFile;
    public long duration;
    public long editDocumentId;
    public long editExpireDate;
    public long editPhotoId;
    public List<TLRPC.InputDocument> editStickers;
    public int editStoryId;
    public long editStoryPeerId;
    public boolean editedCaption;
    public boolean editedMedia;
    public ArrayList<TL_stories.MediaArea> editedMediaAreas;
    public boolean editedPrivacy;
    public TLRPC.InputMedia editingBotPreview;
    public TLRPC.Document editingCoverDocument;
    public TLRPC.TL_error error;
    public File file;
    public boolean fileDeletable;
    public File filterFile;
    public MediaController.SavedFilterState filterState;
    private boolean fromCamera;
    public int gradientBottomColor;
    public int gradientTopColor;
    public HDRInfo hdrInfo;
    public int height;
    public int invert;
    public boolean isDraft;
    public boolean isEdit;
    public boolean isEditSaved;
    public boolean isEditingCover;
    public boolean isError;
    public boolean isRepost;
    public boolean isRepostMessage;
    public boolean isShare;
    public boolean isVideo;
    public float left;
    public ArrayList<VideoEditedInfo.MediaEntity> mediaEntities;
    public File messageFile;
    public ArrayList<MessageObject> messageObjects;
    public File messageVideoMaskFile;
    public boolean muted;
    public int orientation;
    public File paintBlurFile;
    public File paintEntitiesFile;
    public File paintFile;
    public TLRPC.InputPeer peer;
    public StoryPrivacyBottomSheet.StoryPrivacy privacy;
    public String repostCaption;
    public TLRPC.MessageMedia repostMedia;
    public TLRPC.Peer repostPeer;
    public CharSequence repostPeerName;
    public int repostStoryId;
    public File round;
    public long roundDuration;
    public float roundLeft;
    public long roundOffset;
    public String roundThumb;
    public int scheduleDate;
    public ArrayList<Long> shareUserIds;
    public boolean silent;
    public List<TLRPC.InputDocument> stickers;
    public Bitmap thumbBitmap;
    public String thumbPath;
    public Bitmap thumbPathBitmap;
    public Utilities.Callback<Utilities.Callback<TLRPC.Document>> updateDocumentRef;
    public File uploadThumbFile;
    public long videoOffset;
    public int width;
    public final int currentAccount = UserConfig.selectedAccount;
    public double fileDuration = -1.0d;
    public float audioRight = 1.0f;
    public float audioVolume = 1.0f;
    public float videoVolume = 1.0f;
    public boolean videoLoop = false;
    public float videoLeft = 0.0f;
    public float videoRight = 1.0f;
    public float right = 1.0f;
    public long cover = -1;
    public int resultWidth = 720;
    public int resultHeight = 1280;
    public final Matrix matrix = new Matrix();
    public float roundRight = 1.0f;
    public float roundVolume = 1.0f;
    public boolean isDark = Theme.isCurrentThemeDark();
    public long backgroundWallpaperPeerId = Long.MIN_VALUE;
    public boolean captionEntitiesAllowed = true;
    public final ArrayList<TLRPC.InputPrivacyRule> privacyRules = new ArrayList<>();
    public boolean pinned = true;
    public int period = 86400;
    public String botLang = _UrlKt.FRAGMENT_ENCODE_SET;
    public long averageDuration = 5000;
    private int checkStickersReqId = 0;

    public interface DecodeBitmap {
        Bitmap decode(BitmapFactory.Options options);
    }

    public boolean wouldBeVideo() {
        return wouldBeVideo(this.mediaEntities);
    }

    public boolean wouldBeVideo(ArrayList<VideoEditedInfo.MediaEntity> arrayList) {
        ArrayList<VideoEditedInfo.EmojiEntity> arrayList2;
        MessageObject messageObject;
        TLRPC.Message message;
        if (this.isVideo || this.audioPath != null || this.round != null) {
            return true;
        }
        ArrayList<MessageObject> arrayList3 = this.messageObjects;
        if (arrayList3 != null && arrayList3.size() == 1 && (messageObject = this.messageObjects.get(0)) != null && (message = messageObject.messageOwner) != null && (message.action instanceof TLRPC.TL_messageActionStarGiftUnique)) {
            return true;
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            for (int i = 0; i < arrayList.size(); i++) {
                VideoEditedInfo.MediaEntity mediaEntity = arrayList.get(i);
                byte b2 = mediaEntity.type;
                if (b2 == 0) {
                    if (isAnimated(mediaEntity.document, mediaEntity.text)) {
                        return true;
                    }
                } else if (b2 == 1 && (arrayList2 = mediaEntity.entities) != null && !arrayList2.isEmpty()) {
                    for (int i2 = 0; i2 < mediaEntity.entities.size(); i2++) {
                        VideoEditedInfo.EmojiEntity emojiEntity = mediaEntity.entities.get(i2);
                        if (isAnimated(emojiEntity.document, emojiEntity.documentAbsolutePath)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static boolean isAnimated(TLRPC.Document document, String str) {
        if (document != null) {
            return "video/webm".equals(document.mime_type) || "video/mp4".equals(document.mime_type) || (MessageObject.isAnimatedStickerDocument(document, true) && RLottieNative.getFramesCount(str, null) > 1);
        }
        return false;
    }

    public static void drawBackgroundDrawable(Canvas canvas, Drawable drawable, int i, int i2) {
        if (drawable == null) {
            return;
        }
        Rect rect = new Rect(drawable.getBounds());
        Drawable.Callback callback = drawable.getCallback();
        drawable.setCallback(null);
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            float width = bitmapDrawable.getBitmap().getWidth();
            float height = bitmapDrawable.getBitmap().getHeight();
            float fMax = Math.max(i / width, i2 / height);
            drawable.setBounds(0, 0, (int) (width * fMax), (int) (height * fMax));
            drawable.draw(canvas);
        } else {
            drawable.setBounds(0, 0, i, i2);
            drawable.draw(canvas);
        }
        drawable.setBounds(rect);
        drawable.setCallback(callback);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Bitmap buildBitmap(float f, Bitmap bitmap) {
        float f2;
        float f3;
        boolean z;
        boolean z2;
        int i;
        char c2;
        int i2;
        Object obj;
        int i3;
        int i4;
        Matrix matrix = new Matrix();
        Paint paint = new Paint(7);
        int i5 = (int) (this.resultWidth * f);
        int i6 = (int) (this.resultHeight * f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i5, i6, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        char c3 = 2;
        Object obj2 = null;
        boolean z3 = true;
        if (this.backgroundFile != null) {
            try {
                Bitmap scaledBitmap = getScaledBitmap(new DecodeBitmap() { // from class: org.telegram.ui.Stories.recorder.StoryEntry$$ExternalSyntheticLambda4
                    @Override // org.telegram.ui.Stories.recorder.StoryEntry.DecodeBitmap
                    public final Bitmap decode(BitmapFactory.Options options) {
                        return this.f$0.lambda$buildBitmap$0(options);
                    }
                }, i5, i6, false, true);
                canvas.save();
                float width = this.resultWidth / scaledBitmap.getWidth();
                canvas.scale(width, width);
                matrix.postScale(f, f);
                canvas.drawBitmap(scaledBitmap, 0.0f, 0.0f, paint);
                canvas.restore();
                scaledBitmap.recycle();
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        } else {
            String str = this.backgroundWallpaperEmoticon;
            if (str != null) {
                Drawable backgroundDrawableFromTheme = this.backgroundDrawable;
                if (backgroundDrawableFromTheme == null) {
                    backgroundDrawableFromTheme = PreviewView.getBackgroundDrawableFromTheme(this.currentAccount, str, this.isDark);
                }
                drawBackgroundDrawable(canvas, backgroundDrawableFromTheme, canvas.getWidth(), canvas.getHeight());
            } else {
                long j = this.backgroundWallpaperPeerId;
                if (j != Long.MIN_VALUE) {
                    Drawable backgroundDrawable = this.backgroundDrawable;
                    if (backgroundDrawable == null) {
                        backgroundDrawable = PreviewView.getBackgroundDrawable((Drawable) null, this.currentAccount, j, this.isDark);
                    }
                    drawBackgroundDrawable(canvas, backgroundDrawable, canvas.getWidth(), canvas.getHeight());
                    f2 = 0.0f;
                } else {
                    Paint paint2 = new Paint(1);
                    paint2.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, canvas.getHeight(), new int[]{this.gradientTopColor, this.gradientBottomColor}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP));
                    f2 = 0.0f;
                    canvas.drawRect(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), paint2);
                }
                matrix.set(this.matrix);
                if (bitmap == null) {
                    float width2 = this.width / bitmap.getWidth();
                    matrix.preScale(width2, width2);
                    matrix.postScale(f, f);
                    canvas.drawBitmap(bitmap, matrix, paint);
                } else {
                    if (isCollage()) {
                        int i7 = 0;
                        while (i7 < this.collageContent.size()) {
                            StoryEntry storyEntry = this.collageContent.get(i7);
                            final File file = storyEntry.filterFile;
                            if (file == null) {
                                file = storyEntry.file;
                            }
                            if (file != null) {
                                try {
                                    Bitmap scaledBitmap2 = getScaledBitmap(new DecodeBitmap() { // from class: org.telegram.ui.Stories.recorder.StoryEntry$$ExternalSyntheticLambda5
                                        @Override // org.telegram.ui.Stories.recorder.StoryEntry.DecodeBitmap
                                        public final Bitmap decode(BitmapFactory.Options options) {
                                            return BitmapFactory.decodeFile(file.getPath(), options);
                                        }
                                    }, i5, i6, z3, z3);
                                    canvas.save();
                                    RectF rectF = new RectF();
                                    int width3 = scaledBitmap2.getWidth();
                                    int height = scaledBitmap2.getHeight();
                                    c2 = c3;
                                    try {
                                        if ((((Integer) AndroidUtilities.getImageOrientation(file).first).intValue() / 90) % 2 == z3) {
                                            width3 = scaledBitmap2.getHeight();
                                            height = scaledBitmap2.getWidth();
                                        }
                                        i3 = width3;
                                        i4 = height;
                                        try {
                                            i = i7;
                                            try {
                                                this.collage.parts.get(i7).bounds(rectF, i5, i6);
                                                canvas.translate(rectF.centerX(), rectF.centerY());
                                                i2 = i5;
                                            } catch (Exception e2) {
                                                e = e2;
                                                i2 = i5;
                                            }
                                        } catch (Exception e3) {
                                            e = e3;
                                            i = i7;
                                            i2 = i5;
                                            obj = null;
                                        }
                                    } catch (Exception e4) {
                                        e = e4;
                                        i = i7;
                                        i2 = i5;
                                        obj = obj2;
                                        FileLog.m1040e(e);
                                        obj2 = obj;
                                        c3 = c2;
                                        i5 = i2;
                                        z3 = true;
                                        i7 = i + 1;
                                    }
                                    try {
                                        canvas.clipRect((-rectF.width()) / 2.0f, (-rectF.height()) / 2.0f, rectF.width() / 2.0f, rectF.height() / 2.0f);
                                        float fMax = Math.max(rectF.width() / i3, rectF.height() / i4);
                                        canvas.scale(fMax, fMax);
                                        canvas.rotate(((Integer) r14.first).intValue());
                                        canvas.translate((-scaledBitmap2.getWidth()) / 2.0f, (-scaledBitmap2.getHeight()) / 2.0f);
                                        obj = null;
                                        f2 = 0.0f;
                                        try {
                                            canvas.drawBitmap(scaledBitmap2, 0.0f, 0.0f, (Paint) null);
                                            canvas.restore();
                                        } catch (Exception e5) {
                                            e = e5;
                                            FileLog.m1040e(e);
                                        }
                                    } catch (Exception e6) {
                                        e = e6;
                                        obj = null;
                                        f2 = 0.0f;
                                        FileLog.m1040e(e);
                                        obj2 = obj;
                                        c3 = c2;
                                        i5 = i2;
                                        z3 = true;
                                        i7 = i + 1;
                                    }
                                } catch (Exception e7) {
                                    e = e7;
                                    i = i7;
                                    c2 = c3;
                                }
                            } else {
                                i = i7;
                                c2 = c3;
                                i2 = i5;
                                obj = obj2;
                            }
                            obj2 = obj;
                            c3 = c2;
                            i5 = i2;
                            z3 = true;
                            i7 = i + 1;
                        }
                        f3 = f2;
                        z2 = z3;
                        z = false;
                    } else {
                        final File file2 = this.filterFile;
                        if (file2 == null) {
                            file2 = this.file;
                        }
                        if (file2 != null) {
                            try {
                                f3 = f2;
                                i5 = i5;
                                z = false;
                                z2 = true;
                            } catch (Exception e8) {
                                e = e8;
                                f3 = f2;
                                i5 = i5;
                                z = false;
                                z2 = true;
                            }
                            try {
                                Bitmap scaledBitmap3 = getScaledBitmap(new DecodeBitmap() { // from class: org.telegram.ui.Stories.recorder.StoryEntry$$ExternalSyntheticLambda6
                                    @Override // org.telegram.ui.Stories.recorder.StoryEntry.DecodeBitmap
                                    public final Bitmap decode(BitmapFactory.Options options) {
                                        return BitmapFactory.decodeFile(file2.getPath(), options);
                                    }
                                }, i5, i6, this.orientation, true, true);
                                float width4 = this.width / scaledBitmap3.getWidth();
                                matrix.preScale(width4, width4);
                                matrix.postScale(f, f);
                                canvas.drawBitmap(scaledBitmap3, matrix, paint);
                                scaledBitmap3.recycle();
                            } catch (Exception e9) {
                                e = e9;
                                FileLog.m1040e(e);
                            }
                        } else {
                            f3 = f2;
                            i5 = i5;
                            z = false;
                            z2 = true;
                        }
                    }
                    if (this.paintFile != null) {
                        try {
                            Bitmap scaledBitmap4 = getScaledBitmap(new DecodeBitmap() { // from class: org.telegram.ui.Stories.recorder.StoryEntry$$ExternalSyntheticLambda7
                                @Override // org.telegram.ui.Stories.recorder.StoryEntry.DecodeBitmap
                                public final Bitmap decode(BitmapFactory.Options options) {
                                    return this.f$0.lambda$buildBitmap$3(options);
                                }
                            }, i5, i6, z, z2);
                            canvas.save();
                            float width5 = this.resultWidth / scaledBitmap4.getWidth();
                            canvas.scale(width5, width5);
                            matrix.postScale(f, f);
                            canvas.drawBitmap(scaledBitmap4, f3, f3, paint);
                            canvas.restore();
                            scaledBitmap4.recycle();
                        } catch (Exception e10) {
                            FileLog.m1040e(e10);
                        }
                    }
                    if (this.messageFile != null) {
                        try {
                            Bitmap scaledBitmap5 = getScaledBitmap(new DecodeBitmap() { // from class: org.telegram.ui.Stories.recorder.StoryEntry$$ExternalSyntheticLambda8
                                @Override // org.telegram.ui.Stories.recorder.StoryEntry.DecodeBitmap
                                public final Bitmap decode(BitmapFactory.Options options) {
                                    return this.f$0.lambda$buildBitmap$4(options);
                                }
                            }, i5, i6, z, z2);
                            canvas.save();
                            float width6 = this.resultWidth / scaledBitmap5.getWidth();
                            canvas.scale(width6, width6);
                            matrix.postScale(f, f);
                            canvas.drawBitmap(scaledBitmap5, f3, f3, paint);
                            canvas.restore();
                            scaledBitmap5.recycle();
                        } catch (Exception e11) {
                            FileLog.m1040e(e11);
                        }
                    }
                    if (this.paintEntitiesFile != null) {
                        try {
                            Bitmap scaledBitmap6 = getScaledBitmap(new DecodeBitmap() { // from class: org.telegram.ui.Stories.recorder.StoryEntry$$ExternalSyntheticLambda9
                                @Override // org.telegram.ui.Stories.recorder.StoryEntry.DecodeBitmap
                                public final Bitmap decode(BitmapFactory.Options options) {
                                    return this.f$0.lambda$buildBitmap$5(options);
                                }
                            }, i5, i6, z, z2);
                            canvas.save();
                            float width7 = this.resultWidth / scaledBitmap6.getWidth();
                            canvas.scale(width7, width7);
                            matrix.postScale(f, f);
                            canvas.drawBitmap(scaledBitmap6, f3, f3, paint);
                            canvas.restore();
                            scaledBitmap6.recycle();
                        } catch (Exception e12) {
                            FileLog.m1040e(e12);
                        }
                    }
                }
                return bitmapCreateBitmap;
            }
        }
        f2 = 0.0f;
        matrix.set(this.matrix);
        if (bitmap == null) {
        }
        return bitmapCreateBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap lambda$buildBitmap$0(BitmapFactory.Options options) {
        return BitmapFactory.decodeFile(this.backgroundFile.getPath(), options);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap lambda$buildBitmap$3(BitmapFactory.Options options) {
        return BitmapFactory.decodeFile(this.paintFile.getPath(), options);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap lambda$buildBitmap$4(BitmapFactory.Options options) {
        return BitmapFactory.decodeFile(this.messageFile.getPath(), options);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap lambda$buildBitmap$5(BitmapFactory.Options options) {
        return BitmapFactory.decodeFile(this.paintEntitiesFile.getPath(), options);
    }

    public void buildPhoto(File file) {
        Bitmap bitmapBuildBitmap = buildBitmap(1.0f, null);
        Bitmap bitmap = this.thumbBitmap;
        if (bitmap != null) {
            bitmap.recycle();
            this.thumbBitmap = null;
        }
        this.thumbBitmap = Bitmap.createScaledBitmap(bitmapBuildBitmap, 40, 22, true);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmapBuildBitmap.compress(Bitmap.CompressFormat.JPEG, 95, fileOutputStream);
            fileOutputStream.close();
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
        bitmapBuildBitmap.recycle();
    }

    public static Bitmap getScaledBitmap(DecodeBitmap decodeBitmap, int i, int i2, boolean z, boolean z2) {
        return getScaledBitmap(decodeBitmap, i, i2, 0, z, z2);
    }

    public static Bitmap getScaledBitmap(DecodeBitmap decodeBitmap, int i, int i2, int i3, boolean z, boolean z2) {
        int i4;
        int i5;
        if (i3 == 90 || i3 == 270) {
            i4 = i;
            i5 = i2;
        } else {
            i5 = i;
            i4 = i2;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        decodeBitmap.decode(options);
        options.inJustDecodeBounds = false;
        options.inScaled = false;
        Runtime runtime = Runtime.getRuntime();
        long jMaxMemory = runtime.maxMemory() - (runtime.totalMemory() - runtime.freeMemory());
        int i6 = options.outWidth;
        int i7 = options.outHeight;
        boolean z3 = ((double) ((((long) (i6 * i7)) * 4) + (((long) (i5 * i4)) * 4))) * 1.1d <= ((double) jMaxMemory);
        if (i6 <= i5 && i7 <= i4) {
            return decodeBitmap.decode(options);
        }
        if (z2 && z3 && SharedConfig.getDevicePerformanceClass() >= 1) {
            Bitmap bitmapDecode = decodeBitmap.decode(options);
            float fMax = Math.max(i5 / bitmapDecode.getWidth(), i4 / bitmapDecode.getHeight());
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) (bitmapDecode.getWidth() * fMax), (int) (bitmapDecode.getHeight() * fMax), Bitmap.Config.ARGB_8888);
            Utilities.libyuvARGBSaleBitmap(bitmapDecode, bitmapCreateBitmap, Utilities.libyuv_ScaleFilter.Box);
            Utilities.clamp(Math.round(1.0f / fMax), 8, 0);
            return bitmapCreateBitmap;
        }
        options.inScaled = true;
        int i8 = options.outWidth;
        float f = i5 / i8;
        int i9 = options.outHeight;
        if (f > i4 / i9) {
            options.inDensity = i8;
            options.inTargetDensity = i5;
        } else {
            options.inDensity = i9;
            options.inTargetDensity = i4;
        }
        return decodeBitmap.decode(options);
    }

    public File getOriginalFile() {
        File file = this.filterFile;
        return file != null ? file : this.file;
    }

    private String ext(File file) {
        String path;
        int iLastIndexOf;
        if (file != null && (iLastIndexOf = (path = file.getPath()).lastIndexOf(46)) > 0) {
            return path.substring(iLastIndexOf + 1);
        }
        return null;
    }

    public void updateFilter(PhotoFilterView photoFilterView, final Runnable runnable) {
        clearFilter();
        MediaController.SavedFilterState savedFilterState = photoFilterView.getSavedFilterState();
        this.filterState = savedFilterState;
        if (this.isVideo) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        if (savedFilterState.isEmpty()) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        Bitmap bitmap = photoFilterView.getBitmap();
        if (bitmap == null) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        Matrix matrix = new Matrix();
        int i = this.invert;
        final boolean z = true;
        matrix.postScale(i == 1 ? -1.0f : 1.0f, i == 2 ? -1.0f : 1.0f, this.width / 2.0f, this.height / 2.0f);
        matrix.postRotate(-this.orientation);
        final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        this.matrix.preScale(this.width / bitmapCreateBitmap.getWidth(), this.height / bitmapCreateBitmap.getHeight());
        this.width = bitmapCreateBitmap.getWidth();
        this.height = bitmapCreateBitmap.getHeight();
        bitmap.recycle();
        File file = this.filterFile;
        if (file != null && file.exists()) {
            this.filterFile.delete();
        }
        String strExt = ext(this.file);
        if (!"png".equals(strExt) && !"webp".equals(strExt)) {
            z = false;
        }
        this.filterFile = makeCacheFile(this.currentAccount, z ? "webp" : "jpg");
        if (runnable == null) {
            try {
                bitmapCreateBitmap.compress(z ? Bitmap.CompressFormat.WEBP : Bitmap.CompressFormat.JPEG, 90, new FileOutputStream(this.filterFile));
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
            bitmapCreateBitmap.recycle();
            return;
        }
        Utilities.themeQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryEntry$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateFilter$6(bitmapCreateBitmap, z, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateFilter$6(Bitmap bitmap, boolean z, Runnable runnable) {
        try {
            bitmap.compress(z ? Bitmap.CompressFormat.WEBP : Bitmap.CompressFormat.JPEG, 90, new FileOutputStream(this.filterFile));
        } catch (Exception e) {
            FileLog.m1040e(e);
            if (z) {
                try {
                    bitmap.compress(Bitmap.CompressFormat.PNG, 90, new FileOutputStream(this.filterFile));
                } catch (Exception e2) {
                    FileLog.m1040e(e2);
                }
            }
        }
        bitmap.recycle();
        AndroidUtilities.runOnUIThread(runnable);
    }

    public void clearFilter() {
        File file = this.filterFile;
        if (file != null) {
            file.delete();
            this.filterFile = null;
        }
    }

    public void clearPaint() {
        File file = this.paintFile;
        if (file != null) {
            file.delete();
            this.paintFile = null;
        }
        File file2 = this.backgroundFile;
        if (file2 != null) {
            file2.delete();
            this.backgroundFile = null;
        }
        File file3 = this.messageFile;
        if (file3 != null) {
            file3.delete();
            this.messageFile = null;
        }
        File file4 = this.messageVideoMaskFile;
        if (file4 != null) {
            file4.delete();
            this.messageVideoMaskFile = null;
        }
        File file5 = this.paintEntitiesFile;
        if (file5 != null) {
            file5.delete();
            this.paintEntitiesFile = null;
        }
    }

    public void destroy(boolean z) {
        if (this.blurredVideoThumb != null) {
            this.blurredVideoThumb = null;
        }
        File file = this.uploadThumbFile;
        if (file != null) {
            file.delete();
            this.uploadThumbFile = null;
        }
        if (!z) {
            clearPaint();
            clearFilter();
            File file2 = this.file;
            if (file2 != null) {
                if (this.fileDeletable && (!this.isEdit || this.editedMedia)) {
                    file2.delete();
                }
                this.file = null;
            }
            if (this.thumbPath != null) {
                if (this.fileDeletable) {
                    new File(this.thumbPath).delete();
                }
                this.thumbPath = null;
            }
            ArrayList<VideoEditedInfo.MediaEntity> arrayList = this.mediaEntities;
            if (arrayList != null) {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    VideoEditedInfo.MediaEntity mediaEntity = arrayList.get(i);
                    i++;
                    VideoEditedInfo.MediaEntity mediaEntity2 = mediaEntity;
                    if (mediaEntity2.type == 2 && !TextUtils.isEmpty(mediaEntity2.segmentedPath)) {
                        try {
                            new File(mediaEntity2.segmentedPath).delete();
                        } catch (Exception e) {
                            FileLog.m1040e(e);
                        }
                        mediaEntity2.segmentedPath = _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                }
            }
            File file3 = this.round;
            if (file3 != null && (!this.isEdit || this.editedMedia)) {
                file3.delete();
                this.round = null;
            }
            if (this.roundThumb != null && (!this.isEdit || this.editedMedia)) {
                try {
                    new File(this.roundThumb).delete();
                } catch (Exception unused) {
                }
                this.roundThumb = null;
            }
        }
        this.thumbPathBitmap = null;
        if (this.collageContent != null) {
            for (int i2 = 0; i2 < this.collageContent.size(); i2++) {
                this.collageContent.get(i2).destroy(z);
            }
        }
        cancelCheckStickers();
    }

    public static StoryEntry repostStoryItem(File file, TL_stories.StoryItem storyItem) {
        StoryEntry storyEntry = new StoryEntry();
        storyEntry.isRepost = true;
        storyEntry.repostMedia = storyItem.media;
        storyEntry.repostPeer = MessagesController.getInstance(storyEntry.currentAccount).getPeer(storyItem.dialogId);
        storyEntry.repostStoryId = storyItem.id;
        storyEntry.repostCaption = storyItem.caption;
        storyEntry.file = file;
        storyEntry.fileDeletable = false;
        storyEntry.width = 720;
        storyEntry.height = 1280;
        TLRPC.MessageMedia messageMedia = storyItem.media;
        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
            storyEntry.isVideo = false;
            if (file != null) {
                storyEntry.decodeBounds(file.getAbsolutePath());
            }
        } else if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
            storyEntry.isVideo = true;
            TLRPC.Document document = messageMedia.document;
            if (document != null && document.attributes != null) {
                int i = 0;
                while (true) {
                    if (i >= storyItem.media.document.attributes.size()) {
                        break;
                    }
                    TLRPC.DocumentAttribute documentAttribute = storyItem.media.document.attributes.get(i);
                    if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                        storyEntry.width = documentAttribute.f1017w;
                        storyEntry.height = documentAttribute.f1016h;
                        storyEntry.fileDuration = documentAttribute.duration;
                        break;
                    }
                    i++;
                }
            }
            TLRPC.Document document2 = storyItem.media.document;
            if (document2 != null) {
                String str = storyItem.firstFramePath;
                if (str != null) {
                    storyEntry.thumbPath = str;
                } else if (document2.thumbs != null) {
                    for (int i2 = 0; i2 < storyItem.media.document.thumbs.size(); i2++) {
                        TLRPC.PhotoSize photoSize = storyItem.media.document.thumbs.get(i2);
                        if (photoSize instanceof TLRPC.TL_photoStrippedSize) {
                            storyEntry.thumbPathBitmap = ImageLoader.getStrippedPhotoBitmap(photoSize.bytes, null);
                        } else {
                            File pathToAttach = FileLoader.getInstance(storyEntry.currentAccount).getPathToAttach(photoSize, true);
                            if (pathToAttach != null && pathToAttach.exists()) {
                                storyEntry.thumbPath = pathToAttach.getAbsolutePath();
                            }
                        }
                    }
                }
            }
        }
        storyEntry.setupMatrix();
        storyEntry.checkStickers(storyItem);
        return storyEntry;
    }

    public static boolean canRepostMessage(MessageObject messageObject) {
        TLRPC.Message message;
        int i;
        TLRPC.Peer peer;
        if (messageObject != null && !messageObject.isSponsored() && (((message = messageObject.messageOwner) == null || !message.noforwards) && (i = messageObject.type) != 17 && i != 12)) {
            long dialogId = messageObject.getDialogId();
            TLRPC.Chat chat = MessagesController.getInstance(messageObject.currentAccount).getChat(Long.valueOf(-dialogId));
            if (chat != null && chat.noforwards) {
                return false;
            }
            if (dialogId < 0 && ChatObject.isChannelAndNotMegaGroup(chat)) {
                return true;
            }
            TLRPC.MessageFwdHeader messageFwdHeader = messageObject.messageOwner.fwd_from;
            if (messageFwdHeader != null && (peer = messageFwdHeader.from_id) != null && (messageFwdHeader.flags & 4) != 0) {
                long peerDialogId = DialogObject.getPeerDialogId(peer);
                TLRPC.Chat chat2 = MessagesController.getInstance(messageObject.currentAccount).getChat(Long.valueOf(-peerDialogId));
                if (peerDialogId < 0 && ((chat2 == null || !chat2.noforwards) && ChatObject.isChannelAndNotMegaGroup(chat2) && ChatObject.isPublic(chat2))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static Boolean useForwardForRepost(MessageObject messageObject) {
        TLRPC.Message message;
        TLRPC.Peer peer;
        if (messageObject == null || (message = messageObject.messageOwner) == null) {
            return null;
        }
        TLRPC.Chat chat = MessagesController.getInstance(messageObject.currentAccount).getChat(Long.valueOf(-DialogObject.getPeerDialogId(message.peer_id)));
        if ((chat != null && chat.noforwards) || !ChatObject.isChannelAndNotMegaGroup(chat)) {
            TLRPC.MessageFwdHeader messageFwdHeader = messageObject.messageOwner.fwd_from;
            if (messageFwdHeader != null && (peer = messageFwdHeader.from_id) != null && (messageFwdHeader.flags & 4) != 0) {
                long peerDialogId = DialogObject.getPeerDialogId(peer);
                TLRPC.Chat chat2 = MessagesController.getInstance(messageObject.currentAccount).getChat(Long.valueOf(-peerDialogId));
                if (peerDialogId < 0 && ((chat2 == null || !chat2.noforwards) && ChatObject.isChannelAndNotMegaGroup(chat2))) {
                    return Boolean.TRUE;
                }
            }
            return null;
        }
        return Boolean.FALSE;
    }

    public static long getRepostDialogId(MessageObject messageObject) {
        Boolean boolUseForwardForRepost = useForwardForRepost(messageObject);
        if (boolUseForwardForRepost == null) {
            return 0L;
        }
        if (boolUseForwardForRepost.booleanValue()) {
            return DialogObject.getPeerDialogId(messageObject.messageOwner.fwd_from.from_id);
        }
        return messageObject.getDialogId();
    }

    public static int getRepostMessageId(MessageObject messageObject) {
        Boolean boolUseForwardForRepost = useForwardForRepost(messageObject);
        if (boolUseForwardForRepost == null) {
            return 0;
        }
        if (boolUseForwardForRepost.booleanValue()) {
            return messageObject.messageOwner.fwd_from.channel_post;
        }
        return messageObject.getId();
    }

    public static StoryEntry repostMessage(ArrayList<MessageObject> arrayList) {
        MessageObject messageObject;
        int i;
        StoryEntry storyEntry = new StoryEntry();
        storyEntry.isRepostMessage = true;
        storyEntry.messageObjects = arrayList;
        storyEntry.resultWidth = 1080;
        storyEntry.resultHeight = 1920;
        storyEntry.backgroundWallpaperPeerId = getRepostDialogId(arrayList.get(0));
        VideoEditedInfo.MediaEntity mediaEntity = new VideoEditedInfo.MediaEntity();
        mediaEntity.type = (byte) 6;
        mediaEntity.f986x = 0.5f;
        mediaEntity.f987y = 0.5f;
        ArrayList<VideoEditedInfo.MediaEntity> arrayList2 = new ArrayList<>();
        storyEntry.mediaEntities = arrayList2;
        arrayList2.add(mediaEntity);
        if (arrayList.size() == 1 && (messageObject = arrayList.get(0)) != null && ((i = messageObject.type) == 8 || i == 3 || i == 5)) {
            TLRPC.Message message = messageObject.messageOwner;
            if (message != null && message.attachPath != null) {
                storyEntry.file = new File(messageObject.messageOwner.attachPath);
            }
            File file = storyEntry.file;
            if (file == null || !file.exists()) {
                storyEntry.file = FileLoader.getInstance(storyEntry.currentAccount).getPathToMessage(messageObject.messageOwner);
            }
            File file2 = storyEntry.file;
            if (file2 != null && file2.exists()) {
                storyEntry.isVideo = true;
                storyEntry.fileDeletable = false;
                long duration = (long) (messageObject.getDuration() * 1000.0d);
                storyEntry.duration = duration;
                storyEntry.left = 0.0f;
                storyEntry.right = Math.min(1.0f, 59500.0f / duration);
                return storyEntry;
            }
            storyEntry.file = null;
        }
        return storyEntry;
    }

    public static StoryEntry fromStoryItem(File file, TL_stories.StoryItem storyItem) {
        StoryEntry storyEntry = new StoryEntry();
        storyEntry.isEdit = true;
        storyEntry.editStoryId = storyItem.id;
        storyEntry.file = file;
        int i = 0;
        storyEntry.fileDeletable = false;
        storyEntry.width = 720;
        storyEntry.height = 1280;
        TLRPC.MessageMedia messageMedia = storyItem.media;
        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
            storyEntry.isVideo = false;
            if (file != null) {
                storyEntry.decodeBounds(file.getAbsolutePath());
            }
        } else if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
            storyEntry.isVideo = true;
            TLRPC.Document document = messageMedia.document;
            if (document != null && document.attributes != null) {
                int i2 = 0;
                while (true) {
                    if (i2 >= storyItem.media.document.attributes.size()) {
                        break;
                    }
                    TLRPC.DocumentAttribute documentAttribute = storyItem.media.document.attributes.get(i2);
                    if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                        storyEntry.width = documentAttribute.f1017w;
                        storyEntry.height = documentAttribute.f1016h;
                        storyEntry.fileDuration = documentAttribute.duration;
                        break;
                    }
                    i2++;
                }
            }
            TLRPC.Document document2 = storyItem.media.document;
            if (document2 != null) {
                String str = storyItem.firstFramePath;
                if (str != null) {
                    storyEntry.thumbPath = str;
                } else if (document2.thumbs != null) {
                    while (true) {
                        if (i >= storyItem.media.document.thumbs.size()) {
                            break;
                        }
                        TLRPC.PhotoSize photoSize = storyItem.media.document.thumbs.get(i);
                        if (photoSize instanceof TLRPC.TL_photoStrippedSize) {
                            storyEntry.thumbPathBitmap = ImageLoader.getStrippedPhotoBitmap(photoSize.bytes, null);
                            break;
                        }
                        File pathToAttach = FileLoader.getInstance(storyEntry.currentAccount).getPathToAttach(photoSize, true);
                        if (pathToAttach != null && pathToAttach.exists()) {
                            storyEntry.thumbPath = pathToAttach.getAbsolutePath();
                            break;
                        }
                        i++;
                    }
                }
            }
        }
        storyEntry.privacyRules.clear();
        storyEntry.privacyRules.addAll(StoryPrivacyBottomSheet.StoryPrivacy.toInput(storyEntry.currentAccount, storyItem.privacy));
        storyEntry.period = storyItem.expire_date - storyItem.date;
        try {
            CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(new SpannableString(storyItem.caption), Theme.chat_msgTextPaint.getFontMetricsInt(), true);
            MessageObject.addEntitiesToText(charSequenceReplaceEmoji, storyItem.entities, true, false, true, false);
            storyEntry.caption = MessageObject.replaceAnimatedEmoji(charSequenceReplaceEmoji, storyItem.entities, Theme.chat_msgTextPaint.getFontMetricsInt());
        } catch (Exception unused) {
        }
        storyEntry.setupMatrix();
        storyEntry.checkStickers(storyItem);
        storyEntry.editedMediaAreas = storyItem.media_areas;
        storyEntry.peer = MessagesController.getInstance(storyEntry.currentAccount).getInputPeer(storyItem.dialogId);
        return storyEntry;
    }

    public static StoryEntry fromPhotoEntry(MediaController.PhotoEntry photoEntry) {
        int i;
        StoryEntry storyEntry = new StoryEntry();
        storyEntry.file = new File(photoEntry.path);
        storyEntry.orientation = photoEntry.orientation;
        storyEntry.invert = photoEntry.invert;
        storyEntry.isVideo = !photoEntry.isLivePhoto() && photoEntry.isVideo;
        storyEntry.thumbPath = photoEntry.thumbPath;
        long j = ((long) photoEntry.duration) * 1000;
        storyEntry.duration = j;
        storyEntry.left = 0.0f;
        storyEntry.right = Math.min(1.0f, 59000.0f / j);
        if (storyEntry.isVideo && storyEntry.thumbPath == null) {
            storyEntry.thumbPath = "vthumb://" + photoEntry.imageId;
        }
        storyEntry.gradientTopColor = photoEntry.gradientTopColor;
        storyEntry.gradientBottomColor = photoEntry.gradientBottomColor;
        storyEntry.decodeBounds(storyEntry.file.getAbsolutePath());
        int i2 = photoEntry.width;
        if (i2 > 0 && (i = photoEntry.height) > 0) {
            storyEntry.width = i2;
            storyEntry.height = i;
        }
        storyEntry.setupMatrix();
        return storyEntry;
    }

    public void setupMultipleStoriesSelector() {
        if (!this.isVideo || isCollage() || this.isEdit || this.isRepost || this.duration <= 69000 || !UserConfig.getInstance(this.currentAccount).isPremium()) {
            return;
        }
        long j = this.duration;
        long jMin = j - 59000 > NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS ? Math.min(59000L, j - 59000) + 59000 : 59000L;
        long j2 = this.duration;
        if (j2 - jMin > NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS) {
            jMin += Math.min(59000L, j2 - jMin);
        }
        this.right = Math.min(1.0f, jMin / this.duration);
    }

    public boolean isCollage() {
        return (this.collage == null || this.collageContent == null) ? false : true;
    }

    public boolean hasVideo() {
        if (!isCollage()) {
            return false;
        }
        for (int i = 0; i < this.collageContent.size(); i++) {
            if (this.collageContent.get(i).isVideo) {
                return true;
            }
        }
        return false;
    }

    public static StoryEntry asCollage(CollageLayout collageLayout, ArrayList<StoryEntry> arrayList) {
        StoryEntry storyEntry = new StoryEntry();
        storyEntry.collage = collageLayout;
        storyEntry.collageContent = arrayList;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            StoryEntry storyEntry2 = arrayList.get(i);
            i++;
            StoryEntry storyEntry3 = storyEntry2;
            if (storyEntry3.isVideo) {
                storyEntry.isVideo = true;
                storyEntry3.videoLeft = 0.0f;
                storyEntry3.videoRight = Math.min(1.0f, 59000.0f / storyEntry3.duration);
            }
        }
        if (storyEntry.isVideo) {
            storyEntry.width = 720;
            storyEntry.height = 1280;
            storyEntry.resultWidth = 720;
            storyEntry.resultHeight = 1280;
        } else {
            storyEntry.width = 1080;
            storyEntry.height = 1920;
            storyEntry.resultWidth = 1080;
            storyEntry.resultHeight = 1920;
        }
        storyEntry.setupMatrix();
        return storyEntry;
    }

    public static StoryEntry fromPhotoShoot(File file, int i) {
        StoryEntry storyEntry = new StoryEntry();
        storyEntry.file = file;
        storyEntry.fileDeletable = true;
        storyEntry.orientation = i;
        storyEntry.invert = 0;
        storyEntry.isVideo = false;
        if (file != null) {
            storyEntry.decodeBounds(file.getAbsolutePath());
        }
        storyEntry.setupMatrix();
        return storyEntry;
    }

    public static StoryEntry fromMedia(ArrayList<SendMessagesHelper.SendingMediaInfo> arrayList) {
        ArrayList<MediaController.PhotoEntry> arrayListCreateEntriesFromMedia = ChatActivity.createEntriesFromMedia(arrayList, false, null);
        if (arrayListCreateEntriesFromMedia.isEmpty()) {
            return null;
        }
        return fromPhotoEntry(arrayListCreateEntriesFromMedia.get(0));
    }

    public void decodeBounds(String str) {
        if (str != null) {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(str, options);
                this.width = options.outWidth;
                this.height = options.outHeight;
            } catch (Exception unused) {
            }
        }
        if (this.isVideo) {
            return;
        }
        if (((int) Math.max(this.width, (this.height / 16.0f) * 9.0f)) <= 900) {
            this.resultWidth = 720;
            this.resultHeight = 1280;
        } else {
            this.resultWidth = 1080;
            this.resultHeight = 1920;
        }
    }

    public void setupMatrix() {
        setupMatrix(this.matrix, 0);
    }

    public void setupMatrix(Matrix matrix, int i) {
        matrix.reset();
        int i2 = this.width;
        int i3 = this.height;
        int i4 = this.orientation + i;
        int i5 = this.invert;
        matrix.postScale(i5 == 1 ? -1.0f : 1.0f, i5 == 2 ? -1.0f : 1.0f, i2 / 2.0f, i3 / 2.0f);
        if (i4 != 0) {
            matrix.postTranslate((-i2) / 2.0f, (-i3) / 2.0f);
            matrix.postRotate(i4);
            if (i4 == 90 || i4 == 270) {
                i3 = i2;
                i2 = i3;
            }
            matrix.postTranslate(i2 / 2.0f, i3 / 2.0f);
        }
        float f = i2;
        float fMax = this.resultWidth / f;
        if (this.botId != 0) {
            fMax = Math.min(fMax, this.resultHeight / i3);
        } else {
            float f2 = i3;
            if (f2 / f > 1.29f) {
                fMax = Math.max(fMax, this.resultHeight / f2);
            }
        }
        matrix.postScale(fMax, fMax);
        matrix.postTranslate((this.resultWidth - (f * fMax)) / 2.0f, (this.resultHeight - (i3 * fMax)) / 2.0f);
    }

    public void setupGradient(final Runnable runnable) {
        final Bitmap bitmapDecodeFile;
        if (this.isVideo && this.gradientTopColor == 0 && this.gradientBottomColor == 0) {
            if (this.thumbPath != null) {
                try {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    if (this.thumbPath.startsWith("vthumb://")) {
                        long j = Integer.parseInt(this.thumbPath.substring(9));
                        options.inJustDecodeBounds = true;
                        MediaStore.Video.Thumbnails.getThumbnail(ApplicationLoader.applicationContext.getContentResolver(), j, 1, options);
                        options.inSampleSize = calculateInSampleSize(options, 240, 240);
                        options.inJustDecodeBounds = false;
                        options.inPreferredConfig = Bitmap.Config.RGB_565;
                        options.inDither = true;
                        bitmapDecodeFile = MediaStore.Video.Thumbnails.getThumbnail(ApplicationLoader.applicationContext.getContentResolver(), j, 1, options);
                    } else {
                        options.inJustDecodeBounds = true;
                        BitmapFactory.decodeFile(this.thumbPath);
                        options.inSampleSize = calculateInSampleSize(options, 240, 240);
                        options.inJustDecodeBounds = false;
                        options.inPreferredConfig = Bitmap.Config.RGB_565;
                        options.inDither = true;
                        bitmapDecodeFile = BitmapFactory.decodeFile(this.thumbPath);
                    }
                } catch (Exception unused) {
                    bitmapDecodeFile = null;
                }
                if (bitmapDecodeFile != null) {
                    DominantColors.getColors(true, bitmapDecodeFile, true, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryEntry$$ExternalSyntheticLambda1
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$setupGradient$7(bitmapDecodeFile, runnable, (int[]) obj);
                        }
                    });
                    return;
                }
                return;
            }
            Bitmap bitmap = this.thumbPathBitmap;
            if (bitmap != null) {
                DominantColors.getColors(true, bitmap, true, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryEntry$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$setupGradient$8(runnable, (int[]) obj);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupGradient$7(Bitmap bitmap, Runnable runnable, int[] iArr) {
        this.gradientTopColor = iArr[0];
        this.gradientBottomColor = iArr[1];
        bitmap.recycle();
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupGradient$8(Runnable runnable, int[] iArr) {
        this.gradientTopColor = iArr[0];
        this.gradientBottomColor = iArr[1];
        if (runnable != null) {
            runnable.run();
        }
    }

    public static StoryEntry fromVideoShoot(File file, String str, long j) {
        StoryEntry storyEntry = new StoryEntry();
        storyEntry.fromCamera = true;
        storyEntry.file = file;
        storyEntry.fileDeletable = true;
        storyEntry.orientation = 0;
        storyEntry.invert = 0;
        storyEntry.isVideo = true;
        storyEntry.duration = j;
        storyEntry.thumbPath = str;
        storyEntry.left = 0.0f;
        storyEntry.right = Math.min(1.0f, 59500.0f / j);
        return storyEntry;
    }

    public static int calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        double dMin = (options.outHeight > i2 || options.outWidth > i) ? Math.min((int) Math.ceil(r0 / i2), (int) Math.ceil(r6 / i)) : 1;
        return Math.max(1, (int) Math.pow(dMin, Math.floor(Math.log(dMin) / Math.log(2.0d))));
    }

    public static void setupScale(BitmapFactory.Options options, int i, int i2) {
        Runtime runtime = Runtime.getRuntime();
        long jMaxMemory = runtime.maxMemory() - (runtime.totalMemory() - runtime.freeMemory());
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        if (((long) (i3 * i4)) * 8 > jMaxMemory || Math.max(i3, i4) > 4200 || SharedConfig.getDevicePerformanceClass() <= 0) {
            options.inScaled = true;
            options.inDensity = options.outWidth;
            options.inTargetDensity = i;
        }
    }

    public int getTotalCount() {
        if (this.isVideo && !isCollage() && !this.isEdit) {
            long j = this.duration;
            if (j > 0 && !this.isRepost) {
                if (((long) ((this.right - this.left) * j)) < 68999) {
                    return 1;
                }
                return (int) Math.ceil(r2 / 59000.0f);
            }
        }
        return 1;
    }

    public ArrayList<StoryEntry> cutIntoEntries() {
        if (this.isVideo && !isCollage() && !this.isEdit) {
            long j = this.duration;
            if (j > 0 && !this.isRepost) {
                long j2 = (long) ((this.right - this.left) * j);
                if (j2 < 68999) {
                    return null;
                }
                ArrayList<StoryEntry> arrayList = new ArrayList<>();
                this.right = this.left + (59000.0f / this.duration);
                arrayList.add(this);
                long j3 = 59000;
                while (j3 < j2) {
                    if (Math.min(59000L, j2 - j3) < 1000) {
                        break;
                    }
                    StoryEntry storyEntryCopy = copy(true);
                    float f = this.left;
                    long j4 = this.duration;
                    storyEntryCopy.left = f + (j3 / j4);
                    storyEntryCopy.right = this.left + ((r8 + j3) / j4);
                    storyEntryCopy.caption = _UrlKt.FRAGMENT_ENCODE_SET;
                    j3 += 59000;
                    arrayList.add(storyEntryCopy);
                }
                return arrayList;
            }
        }
        return null;
    }

    public void getVideoEditedInfo(final Utilities.Callback<VideoEditedInfo> callback) {
        int i;
        if (!wouldBeVideo()) {
            callback.run(null);
            return;
        }
        if (!this.isVideo && ((i = this.resultWidth) > 720 || this.resultHeight > 1280)) {
            float f = 720.0f / i;
            this.matrix.postScale(f, f, 0.0f, 0.0f);
            this.resultWidth = 720;
            this.resultHeight = 1280;
        }
        File file = this.file;
        final String absolutePath = file == null ? null : file.getAbsolutePath();
        final int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, Math.max(1, isCollage() ? this.collageContent.size() : 0), 11);
        iArr[0] = new int[11];
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryEntry$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getVideoEditedInfo$9(absolutePath, iArr, callback);
            }
        };
        if (isCollage()) {
            final String[] strArr = new String[this.collageContent.size()];
            for (int i2 = 0; i2 < this.collageContent.size(); i2++) {
                strArr[i2] = this.collageContent.get(i2).file == null ? null : this.collageContent.get(i2).file.getAbsolutePath();
                iArr[i2] = new int[11];
            }
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryEntry$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    StoryEntry.$r8$lambda$H6dmbGYF3l9IaDiz6ctKYYobTL8(strArr, iArr, runnable);
                }
            });
            return;
        }
        if (this.file == null) {
            runnable.run();
        } else {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryEntry$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    StoryEntry.$r8$lambda$EUeGHoSOs8zXahaxowCLuq3i09o(absolutePath, iArr, runnable);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getVideoEditedInfo$9(String str, int[][] iArr, Utilities.Callback callback) {
        float f;
        long j;
        long j2;
        long j3;
        long j4;
        ArrayList<VideoEditedInfo.MediaEntity> arrayList;
        VideoEditedInfo videoEditedInfo = new VideoEditedInfo();
        videoEditedInfo.isStory = true;
        videoEditedInfo.fromCamera = this.fromCamera;
        videoEditedInfo.originalWidth = this.width;
        videoEditedInfo.originalHeight = this.height;
        videoEditedInfo.resultWidth = this.resultWidth;
        videoEditedInfo.resultHeight = this.resultHeight;
        File file = this.paintFile;
        videoEditedInfo.paintPath = file == null ? null : file.getPath();
        File file2 = this.messageFile;
        videoEditedInfo.messagePath = file2 == null ? null : file2.getPath();
        File file3 = this.messageVideoMaskFile;
        videoEditedInfo.messageVideoMaskPath = file3 == null ? null : file3.getPath();
        File file4 = this.backgroundFile;
        videoEditedInfo.backgroundPath = file4 == null ? null : file4.getPath();
        int iExtractRealEncoderBitrate = MediaController.extractRealEncoderBitrate(videoEditedInfo.resultWidth, videoEditedInfo.resultHeight, videoEditedInfo.bitrate, true);
        int i = 0;
        if (this.isVideo && str != null && !isCollage()) {
            videoEditedInfo.originalPath = str;
            videoEditedInfo.isPhoto = false;
            videoEditedInfo.framerate = Math.min(59, iArr[0][7]);
            int videoBitrate = MediaController.getVideoBitrate(str);
            if (videoBitrate == -1) {
                videoBitrate = iArr[0][3];
            }
            videoEditedInfo.originalBitrate = videoBitrate;
            if (videoBitrate < 1000000 && (arrayList = this.mediaEntities) != null && !arrayList.isEmpty()) {
                videoEditedInfo.bitrate = 2000000;
                videoEditedInfo.originalBitrate = -1;
            } else {
                int i2 = videoEditedInfo.originalBitrate;
                if (i2 < 500000) {
                    videoEditedInfo.bitrate = 2500000;
                    videoEditedInfo.originalBitrate = -1;
                } else {
                    videoEditedInfo.bitrate = Utilities.clamp(i2, MediaController.VIDEO_BITRATE_360, 500000);
                }
            }
            FileLog.m1037d("story bitrate, original = " + videoEditedInfo.originalBitrate + " => " + videoEditedInfo.bitrate);
            int i3 = iArr[0][4];
            long j5 = (long) i3;
            this.duration = j5;
            videoEditedInfo.originalDuration = j5 * 1000;
            long j6 = ((long) (this.left * j5)) * 1000;
            videoEditedInfo.startTime = j6;
            long j7 = ((long) (this.right * j5)) * 1000;
            videoEditedInfo.endTime = j7;
            videoEditedInfo.estimatedDuration = j7 - j6;
            videoEditedInfo.volume = this.videoVolume;
            videoEditedInfo.muted = this.muted;
            videoEditedInfo.estimatedSize = (long) (r1[5] + (((i3 / 1000.0f) * iExtractRealEncoderBitrate) / 8.0f));
            videoEditedInfo.estimatedSize = Math.max(this.file.length(), videoEditedInfo.estimatedSize);
            videoEditedInfo.filterState = this.filterState;
            File file5 = this.paintBlurFile;
            videoEditedInfo.blurPath = file5 == null ? null : file5.getPath();
            j = 0;
        } else {
            float f2 = 1000.0f;
            File file6 = this.filterFile;
            if (file6 != null) {
                videoEditedInfo.originalPath = file6.getAbsolutePath();
            } else {
                videoEditedInfo.originalPath = str;
            }
            videoEditedInfo.isPhoto = true;
            videoEditedInfo.collage = this.collage;
            if (isCollage()) {
                boolean z = false;
                for (int i4 = 0; i4 < this.collageContent.size(); i4++) {
                    StoryEntry storyEntry = this.collageContent.get(i4);
                    if (storyEntry.isVideo) {
                        storyEntry.width = Math.max(storyEntry.width, iArr[i4][1]);
                        storyEntry.height = Math.max(storyEntry.height, iArr[i4][2]);
                        storyEntry.duration = Math.max(storyEntry.duration, iArr[i4][4]);
                        z = true;
                    }
                }
                ArrayList<VideoEditedInfo.Part> parts = VideoEditedInfo.Part.toParts(this);
                videoEditedInfo.collageParts = parts;
                if (!z) {
                    long j8 = this.averageDuration;
                    this.duration = j8;
                    videoEditedInfo.originalDuration = j8;
                    videoEditedInfo.estimatedDuration = j8;
                    f = 1000.0f;
                } else {
                    int size = parts.size();
                    int i5 = 0;
                    VideoEditedInfo.Part part = null;
                    long j9 = 0;
                    while (i5 < size) {
                        VideoEditedInfo.Part part2 = parts.get(i5);
                        int i6 = i5 + 1;
                        VideoEditedInfo.Part part3 = part2;
                        float f3 = f2;
                        if (part3.isVideo) {
                            long j10 = part3.duration;
                            if (j10 > j9) {
                                j9 = j10;
                                part = part3;
                            }
                        }
                        i5 = i6;
                        f2 = f3;
                    }
                    f = f2;
                    if (part != null) {
                        long j11 = part.duration;
                        float f4 = part.right;
                        float f5 = part.left;
                        long j12 = (long) (j11 * (f4 - f5));
                        this.duration = j12;
                        videoEditedInfo.originalDuration = j12;
                        videoEditedInfo.estimatedDuration = j12;
                        long j13 = -(part.offset + ((long) (f5 * j11)));
                        part.offset = j13;
                        ArrayList<VideoEditedInfo.Part> arrayList2 = videoEditedInfo.collageParts;
                        int size2 = arrayList2.size();
                        int i7 = 0;
                        while (i7 < size2) {
                            VideoEditedInfo.Part part4 = arrayList2.get(i7);
                            i7++;
                            VideoEditedInfo.Part part5 = part4;
                            if (!part5.isVideo || part5 == part) {
                                j2 = j13;
                            } else {
                                j2 = j13;
                                part5.offset += j2;
                            }
                            j13 = j2;
                        }
                        j = j13;
                    }
                    videoEditedInfo.startTime = -1L;
                    videoEditedInfo.endTime = -1L;
                    videoEditedInfo.muted = true;
                    videoEditedInfo.originalBitrate = -1;
                    videoEditedInfo.volume = 1.0f;
                    videoEditedInfo.bitrate = -1;
                    videoEditedInfo.framerate = 30;
                    videoEditedInfo.estimatedSize = (long) (((this.duration / f) * iExtractRealEncoderBitrate) / 8.0f);
                    videoEditedInfo.filterState = null;
                }
            } else {
                f = 1000.0f;
                if (this.round != null) {
                    long j14 = (long) ((this.roundRight - this.roundLeft) * this.roundDuration);
                    this.duration = j14;
                    videoEditedInfo.originalDuration = j14;
                    videoEditedInfo.estimatedDuration = j14;
                } else if (this.audioPath != null) {
                    long j15 = (long) ((this.audioRight - this.audioLeft) * this.audioDuration);
                    this.duration = j15;
                    videoEditedInfo.originalDuration = j15;
                    videoEditedInfo.estimatedDuration = j15;
                } else {
                    long j16 = this.averageDuration;
                    this.duration = j16;
                    videoEditedInfo.originalDuration = j16;
                    videoEditedInfo.estimatedDuration = j16;
                }
            }
            j = 0;
            videoEditedInfo.startTime = -1L;
            videoEditedInfo.endTime = -1L;
            videoEditedInfo.muted = true;
            videoEditedInfo.originalBitrate = -1;
            videoEditedInfo.volume = 1.0f;
            videoEditedInfo.bitrate = -1;
            videoEditedInfo.framerate = 30;
            videoEditedInfo.estimatedSize = (long) (((this.duration / f) * iExtractRealEncoderBitrate) / 8.0f);
            videoEditedInfo.filterState = null;
        }
        videoEditedInfo.account = this.currentAccount;
        videoEditedInfo.wallpaperPeerId = this.backgroundWallpaperPeerId;
        videoEditedInfo.isDark = this.isDark;
        videoEditedInfo.avatarStartTime = -1L;
        MediaController.CropState cropState = this.crop;
        if (cropState != null) {
            videoEditedInfo.cropState = cropState.clone();
        } else {
            videoEditedInfo.cropState = new MediaController.CropState();
        }
        videoEditedInfo.cropState.useMatrix = new Matrix();
        videoEditedInfo.cropState.useMatrix.set(this.matrix);
        videoEditedInfo.mediaEntities = this.mediaEntities;
        videoEditedInfo.gradientTopColor = Integer.valueOf(this.gradientTopColor);
        videoEditedInfo.gradientBottomColor = Integer.valueOf(this.gradientBottomColor);
        videoEditedInfo.forceFragmenting = true;
        videoEditedInfo.hdrInfo = this.hdrInfo;
        videoEditedInfo.mixedSoundInfos.clear();
        if (isCollage() && !this.muted) {
            ArrayList<VideoEditedInfo.Part> arrayList3 = videoEditedInfo.collageParts;
            int size3 = arrayList3.size();
            while (i < size3) {
                VideoEditedInfo.Part part6 = arrayList3.get(i);
                i++;
                VideoEditedInfo.Part part7 = part6;
                if (part7.isVideo && part7.volume > 0.0f && !part7.muted) {
                    MediaCodecVideoConvertor.MixedSoundInfo mixedSoundInfo = new MediaCodecVideoConvertor.MixedSoundInfo(part7.path);
                    mixedSoundInfo.volume = part7.volume;
                    float f6 = part7.left;
                    long j17 = part7.duration;
                    mixedSoundInfo.audioOffset = ((long) (j17 * f6)) * 1000;
                    mixedSoundInfo.startTime = part7.offset * 1000;
                    mixedSoundInfo.duration = ((long) ((part7.right - f6) * j17)) * 1000;
                    videoEditedInfo.mixedSoundInfos.add(mixedSoundInfo);
                }
            }
        }
        File file7 = this.round;
        if (file7 != null) {
            MediaCodecVideoConvertor.MixedSoundInfo mixedSoundInfo2 = new MediaCodecVideoConvertor.MixedSoundInfo(file7.getAbsolutePath());
            mixedSoundInfo2.volume = this.roundVolume;
            float f7 = this.roundLeft;
            long j18 = this.roundDuration;
            long j19 = ((long) (j18 * f7)) * 1000;
            mixedSoundInfo2.audioOffset = j19;
            if (this.isVideo) {
                mixedSoundInfo2.startTime = ((long) (this.roundOffset - (this.left * this.duration))) * 1000;
                j4 = 0;
            } else {
                j4 = 0;
                mixedSoundInfo2.startTime = 0L;
            }
            long j20 = mixedSoundInfo2.startTime + j;
            mixedSoundInfo2.startTime = j20;
            if (j20 < j4) {
                mixedSoundInfo2.audioOffset = j19 - j20;
                mixedSoundInfo2.startTime = j4;
            }
            mixedSoundInfo2.duration = ((long) ((this.roundRight - f7) * j18)) * 1000;
            videoEditedInfo.mixedSoundInfos.add(mixedSoundInfo2);
        }
        String str2 = this.audioPath;
        if (str2 != null) {
            MediaCodecVideoConvertor.MixedSoundInfo mixedSoundInfo3 = new MediaCodecVideoConvertor.MixedSoundInfo(str2);
            mixedSoundInfo3.volume = this.audioVolume;
            float f8 = this.audioLeft;
            long j21 = this.audioDuration;
            long j22 = ((long) (j21 * f8)) * 1000;
            mixedSoundInfo3.audioOffset = j22;
            if (this.isVideo) {
                mixedSoundInfo3.startTime = ((long) (this.audioOffset - (this.left * this.duration))) * 1000;
                j3 = 0;
            } else {
                j3 = 0;
                mixedSoundInfo3.startTime = 0L;
            }
            long j23 = mixedSoundInfo3.startTime + j;
            mixedSoundInfo3.startTime = j23;
            if (j23 < j3) {
                mixedSoundInfo3.audioOffset = j22 - j23;
                mixedSoundInfo3.startTime = j3;
            }
            mixedSoundInfo3.duration = ((long) ((this.audioRight - f8) * j21)) * 1000;
            videoEditedInfo.mixedSoundInfos.add(mixedSoundInfo3);
        }
        callback.run(videoEditedInfo);
    }

    public static /* synthetic */ void $r8$lambda$H6dmbGYF3l9IaDiz6ctKYYobTL8(String[] strArr, int[][] iArr, Runnable runnable) {
        for (int i = 0; i < strArr.length; i++) {
            String str = strArr[i];
            if (str != null) {
                AnimatedFileNative.getVideoInfo(str, iArr[i], 0L);
            }
        }
        AndroidUtilities.runOnUIThread(runnable);
    }

    public static /* synthetic */ void $r8$lambda$EUeGHoSOs8zXahaxowCLuq3i09o(String str, int[][] iArr, Runnable runnable) {
        AnimatedFileNative.getVideoInfo(str, iArr[0], 0L);
        AndroidUtilities.runOnUIThread(runnable);
    }

    public static File makeCacheFile(int i, boolean z) {
        return makeCacheFile(i, z ? "mp4" : "jpg");
    }

    public static File makeCacheFile(int i, String str) {
        TLObject tLObject;
        TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated = new TLRPC.TL_fileLocationToBeDeprecated();
        tL_fileLocationToBeDeprecated.volume_id = -2147483648L;
        tL_fileLocationToBeDeprecated.dc_id = Integer.MIN_VALUE;
        tL_fileLocationToBeDeprecated.local_id = SharedConfig.getLastLocalId();
        tL_fileLocationToBeDeprecated.file_reference = new byte[0];
        if ("mp4".equals(str) || "webm".equals(str)) {
            TLRPC.TL_videoSize_layer127 tL_videoSize_layer127 = new TLRPC.TL_videoSize_layer127();
            tL_videoSize_layer127.location = tL_fileLocationToBeDeprecated;
            tLObject = tL_videoSize_layer127;
        } else {
            TLRPC.TL_photoSize_layer127 tL_photoSize_layer127 = new TLRPC.TL_photoSize_layer127();
            tL_photoSize_layer127.location = tL_fileLocationToBeDeprecated;
            tLObject = tL_photoSize_layer127;
        }
        return FileLoader.getInstance(i).getPathToAttach(tLObject, str, true);
    }

    public static class HDRInfo {
        public int colorRange;
        public int colorStandard;
        public int colorTransfer;
        public float maxlum;
        public float minlum;

        public int getHDRType() {
            if (this.colorStandard != 6) {
                return 0;
            }
            int i = this.colorTransfer;
            if (i == 7) {
                return 1;
            }
            return i == 6 ? 2 : 0;
        }
    }

    public void detectHDR(final Utilities.Callback<HDRInfo> callback) {
        if (callback == null) {
            return;
        }
        HDRInfo hDRInfo = this.hdrInfo;
        if (hDRInfo != null) {
            callback.run(hDRInfo);
        } else {
            if (!this.isVideo) {
                HDRInfo hDRInfo2 = new HDRInfo();
                this.hdrInfo = hDRInfo2;
                callback.run(hDRInfo2);
                return;
            }
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryEntry$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$detectHDR$13(callback);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$detectHDR$13(final Utilities.Callback callback) {
        Runnable runnable;
        try {
            try {
                HDRInfo hDRInfo = this.hdrInfo;
                if (hDRInfo == null) {
                    hDRInfo = new HDRInfo();
                    this.hdrInfo = hDRInfo;
                    hDRInfo.maxlum = 1000.0f;
                    hDRInfo.minlum = 0.001f;
                }
                MediaExtractor mediaExtractor = new MediaExtractor();
                mediaExtractor.setDataSource(this.file.getAbsolutePath());
                int iFindTrack = MediaController.findTrack(mediaExtractor, false);
                mediaExtractor.selectTrack(iFindTrack);
                MediaFormat trackFormat = mediaExtractor.getTrackFormat(iFindTrack);
                if (trackFormat.containsKey("color-transfer")) {
                    hDRInfo.colorTransfer = trackFormat.getInteger("color-transfer");
                }
                if (trackFormat.containsKey("color-standard")) {
                    hDRInfo.colorStandard = trackFormat.getInteger("color-standard");
                }
                if (trackFormat.containsKey("color-range")) {
                    hDRInfo.colorRange = trackFormat.getInteger("color-range");
                }
                this.hdrInfo = this.hdrInfo;
                runnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryEntry$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$detectHDR$12(callback);
                    }
                };
            } catch (Exception e) {
                FileLog.m1040e(e);
                this.hdrInfo = this.hdrInfo;
                runnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryEntry$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$detectHDR$12(callback);
                    }
                };
            }
            AndroidUtilities.runOnUIThread(runnable);
        } catch (Throwable th) {
            this.hdrInfo = this.hdrInfo;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryEntry$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$detectHDR$12(callback);
                }
            });
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$detectHDR$12(Utilities.Callback callback) {
        callback.run(this.hdrInfo);
    }

    public void checkStickers(final TL_stories.StoryItem storyItem) {
        if (storyItem == null || storyItem.media == null) {
            return;
        }
        final TLRPC.TL_messages_getAttachedStickers tL_messages_getAttachedStickers = new TLRPC.TL_messages_getAttachedStickers();
        TLRPC.MessageMedia messageMedia = storyItem.media;
        TLRPC.Photo photo = messageMedia.photo;
        if (photo != null) {
            if (!photo.has_stickers) {
                return;
            }
            TLRPC.TL_inputStickeredMediaPhoto tL_inputStickeredMediaPhoto = new TLRPC.TL_inputStickeredMediaPhoto();
            TLRPC.TL_inputPhoto tL_inputPhoto = new TLRPC.TL_inputPhoto();
            tL_inputStickeredMediaPhoto.id = tL_inputPhoto;
            tL_inputPhoto.id = photo.id;
            tL_inputPhoto.access_hash = photo.access_hash;
            byte[] bArr = photo.file_reference;
            tL_inputPhoto.file_reference = bArr;
            if (bArr == null) {
                tL_inputPhoto.file_reference = new byte[0];
            }
            tL_messages_getAttachedStickers.media = tL_inputStickeredMediaPhoto;
        } else {
            TLRPC.Document document = messageMedia.document;
            if (document == null || !MessageObject.isDocumentHasAttachedStickers(document)) {
                return;
            }
            TLRPC.TL_inputStickeredMediaDocument tL_inputStickeredMediaDocument = new TLRPC.TL_inputStickeredMediaDocument();
            TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
            tL_inputStickeredMediaDocument.id = tL_inputDocument;
            tL_inputDocument.id = document.id;
            tL_inputDocument.access_hash = document.access_hash;
            byte[] bArr2 = document.file_reference;
            tL_inputDocument.file_reference = bArr2;
            if (bArr2 == null) {
                tL_inputDocument.file_reference = new byte[0];
            }
            tL_messages_getAttachedStickers.media = tL_inputStickeredMediaDocument;
        }
        final RequestDelegate requestDelegate = new RequestDelegate() { // from class: org.telegram.ui.Stories.recorder.StoryEntry$$ExternalSyntheticLambda14
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$checkStickers$15(tLObject, tL_error);
            }
        };
        this.checkStickersReqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getAttachedStickers, new RequestDelegate() { // from class: org.telegram.ui.Stories.recorder.StoryEntry$$ExternalSyntheticLambda15
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$checkStickers$16(storyItem, tL_messages_getAttachedStickers, requestDelegate, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkStickers$15(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryEntry$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkStickers$14(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkStickers$14(TLObject tLObject) {
        this.checkStickersReqId = 0;
        if (tLObject instanceof Vector) {
            this.editStickers = new ArrayList();
            Vector vector = (Vector) tLObject;
            for (int i = 0; i < vector.objects.size(); i++) {
                TLRPC.StickerSetCovered stickerSetCovered = (TLRPC.StickerSetCovered) vector.objects.get(i);
                TLRPC.Document document = stickerSetCovered.cover;
                if (document == null && !stickerSetCovered.covers.isEmpty()) {
                    document = stickerSetCovered.covers.get(0);
                }
                if (document == null && (stickerSetCovered instanceof TLRPC.TL_stickerSetFullCovered)) {
                    TLRPC.TL_stickerSetFullCovered tL_stickerSetFullCovered = (TLRPC.TL_stickerSetFullCovered) stickerSetCovered;
                    if (!tL_stickerSetFullCovered.documents.isEmpty()) {
                        document = tL_stickerSetFullCovered.documents.get(0);
                    }
                }
                if (document != null) {
                    TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
                    tL_inputDocument.id = document.id;
                    tL_inputDocument.access_hash = document.access_hash;
                    tL_inputDocument.file_reference = document.file_reference;
                    this.editStickers.add(tL_inputDocument);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkStickers$16(TL_stories.StoryItem storyItem, TLRPC.TL_messages_getAttachedStickers tL_messages_getAttachedStickers, RequestDelegate requestDelegate, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error != null && FileRefController.isFileRefError(tL_error.text) && storyItem != null) {
            FileRefController.getInstance(this.currentAccount).requestReference(storyItem, tL_messages_getAttachedStickers, requestDelegate);
        } else {
            requestDelegate.run(tLObject, tL_error);
        }
    }

    public void cancelCheckStickers() {
        if (this.checkStickersReqId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.checkStickersReqId, true);
        }
    }

    public StoryEntry copy() {
        return copy(false);
    }

    public StoryEntry copy(boolean z) {
        StoryEntry storyEntry = new StoryEntry();
        storyEntry.draftId = this.draftId;
        storyEntry.isDraft = this.isDraft;
        storyEntry.draftDate = this.draftDate;
        storyEntry.editStoryPeerId = this.editStoryPeerId;
        storyEntry.editStoryId = this.editStoryId;
        storyEntry.isEdit = this.isEdit;
        storyEntry.isEditSaved = this.isEditSaved;
        storyEntry.fileDuration = this.fileDuration;
        storyEntry.editedMedia = this.editedMedia;
        storyEntry.editedCaption = this.editedCaption;
        storyEntry.editedPrivacy = this.editedPrivacy;
        storyEntry.editedMediaAreas = this.editedMediaAreas;
        storyEntry.isError = this.isError;
        storyEntry.error = this.error;
        storyEntry.audioPath = this.audioPath;
        storyEntry.audioDocument = this.audioDocument;
        storyEntry.audioAuthor = this.audioAuthor;
        storyEntry.audioTitle = this.audioTitle;
        storyEntry.audioDuration = this.audioDuration;
        storyEntry.audioOffset = this.audioOffset;
        storyEntry.audioLeft = this.audioLeft;
        storyEntry.audioRight = this.audioRight;
        storyEntry.audioVolume = this.audioVolume;
        storyEntry.editDocumentId = this.editDocumentId;
        storyEntry.editPhotoId = this.editPhotoId;
        storyEntry.editExpireDate = this.editExpireDate;
        storyEntry.isVideo = this.isVideo;
        storyEntry.file = this.file;
        storyEntry.fileDeletable = this.fileDeletable;
        if (this.fileDeletable) {
            File fileMakeCacheFile = makeCacheFile(this.currentAccount, ext(this.file));
            storyEntry.file = fileMakeCacheFile;
            AndroidUtilities.copyFileSafe(this.file, fileMakeCacheFile);
        }
        storyEntry.thumbPath = this.thumbPath;
        storyEntry.muted = this.muted;
        storyEntry.left = this.left;
        storyEntry.right = this.right;
        storyEntry.duration = this.duration;
        storyEntry.width = this.width;
        storyEntry.height = this.height;
        storyEntry.resultWidth = this.resultWidth;
        storyEntry.resultHeight = this.resultHeight;
        storyEntry.peer = this.peer;
        storyEntry.invert = this.invert;
        storyEntry.matrix.set(this.matrix);
        storyEntry.gradientTopColor = this.gradientTopColor;
        storyEntry.gradientBottomColor = this.gradientBottomColor;
        storyEntry.caption = this.caption;
        storyEntry.captionEntitiesAllowed = this.captionEntitiesAllowed;
        storyEntry.privacy = this.privacy;
        storyEntry.privacyRules.clear();
        storyEntry.privacyRules.addAll(this.privacyRules);
        storyEntry.pinned = this.pinned;
        storyEntry.allowScreenshots = this.allowScreenshots;
        storyEntry.period = this.period;
        storyEntry.shareUserIds = this.shareUserIds;
        storyEntry.silent = this.silent;
        storyEntry.scheduleDate = this.scheduleDate;
        storyEntry.blurredVideoThumb = this.blurredVideoThumb;
        storyEntry.uploadThumbFile = this.uploadThumbFile;
        storyEntry.albums = this.albums;
        File file = this.uploadThumbFile;
        if (file != null && file.exists()) {
            File fileMakeCacheFile2 = makeCacheFile(this.currentAccount, ext(this.uploadThumbFile));
            storyEntry.uploadThumbFile = fileMakeCacheFile2;
            AndroidUtilities.copyFileSafe(this.uploadThumbFile, fileMakeCacheFile2);
        }
        storyEntry.draftThumbFile = this.draftThumbFile;
        File file2 = this.draftThumbFile;
        if (file2 != null && file2.exists()) {
            File fileMakeCacheFile3 = makeCacheFile(this.currentAccount, ext(this.draftThumbFile));
            storyEntry.draftThumbFile = fileMakeCacheFile3;
            AndroidUtilities.copyFileSafe(this.draftThumbFile, fileMakeCacheFile3);
        }
        storyEntry.paintFile = this.paintFile;
        File file3 = this.paintFile;
        if (file3 != null && file3.exists()) {
            File fileMakeCacheFile4 = makeCacheFile(this.currentAccount, ext(this.paintFile));
            storyEntry.paintFile = fileMakeCacheFile4;
            AndroidUtilities.copyFileSafe(this.paintFile, fileMakeCacheFile4);
        }
        storyEntry.messageFile = this.messageFile;
        File file4 = this.messageFile;
        if (file4 != null && file4.exists()) {
            File fileMakeCacheFile5 = makeCacheFile(this.currentAccount, ext(this.messageFile));
            storyEntry.messageFile = fileMakeCacheFile5;
            AndroidUtilities.copyFileSafe(this.messageFile, fileMakeCacheFile5);
        }
        storyEntry.backgroundFile = this.backgroundFile;
        File file5 = this.backgroundFile;
        if (file5 != null && file5.exists()) {
            File fileMakeCacheFile6 = makeCacheFile(this.currentAccount, ext(this.backgroundFile));
            storyEntry.backgroundFile = fileMakeCacheFile6;
            AndroidUtilities.copyFileSafe(this.backgroundFile, fileMakeCacheFile6);
        }
        storyEntry.paintBlurFile = this.paintBlurFile;
        File file6 = this.paintBlurFile;
        if (file6 != null && file6.exists()) {
            File fileMakeCacheFile7 = makeCacheFile(this.currentAccount, ext(this.paintBlurFile));
            storyEntry.paintBlurFile = fileMakeCacheFile7;
            AndroidUtilities.copyFileSafe(this.paintBlurFile, fileMakeCacheFile7);
        }
        storyEntry.paintEntitiesFile = this.paintEntitiesFile;
        File file7 = this.paintEntitiesFile;
        if (file7 != null && file7.exists()) {
            File fileMakeCacheFile8 = makeCacheFile(this.currentAccount, ext(this.paintEntitiesFile));
            storyEntry.paintEntitiesFile = fileMakeCacheFile8;
            AndroidUtilities.copyFileSafe(this.paintEntitiesFile, fileMakeCacheFile8);
        }
        storyEntry.averageDuration = this.averageDuration;
        storyEntry.mediaEntities = new ArrayList<>();
        if (this.mediaEntities != null) {
            for (int i = 0; i < this.mediaEntities.size(); i++) {
                storyEntry.mediaEntities.add(this.mediaEntities.get(i).copy());
            }
        }
        storyEntry.stickers = this.stickers;
        storyEntry.editStickers = this.editStickers;
        storyEntry.filterFile = this.filterFile;
        File file8 = this.filterFile;
        if (file8 != null && file8.exists()) {
            File fileMakeCacheFile9 = makeCacheFile(this.currentAccount, ext(this.filterFile));
            storyEntry.filterFile = fileMakeCacheFile9;
            AndroidUtilities.copyFileSafe(this.filterFile, fileMakeCacheFile9);
        }
        storyEntry.filterState = this.filterState;
        storyEntry.thumbBitmap = this.thumbBitmap;
        storyEntry.fromCamera = this.fromCamera;
        storyEntry.thumbPathBitmap = this.thumbPathBitmap;
        storyEntry.isRepost = this.isRepost;
        storyEntry.isShare = this.isShare;
        storyEntry.round = this.round;
        storyEntry.roundLeft = this.roundLeft;
        storyEntry.roundRight = this.roundRight;
        storyEntry.roundDuration = this.roundDuration;
        storyEntry.roundThumb = this.roundThumb;
        storyEntry.roundOffset = this.roundOffset;
        storyEntry.roundVolume = this.roundVolume;
        storyEntry.isEditingCover = this.isEditingCover;
        storyEntry.botId = this.botId;
        storyEntry.botLang = this.botLang;
        storyEntry.editingBotPreview = this.editingBotPreview;
        storyEntry.cover = this.cover;
        storyEntry.collageContent = this.collageContent;
        storyEntry.collage = this.collage;
        storyEntry.videoLoop = this.videoLoop;
        storyEntry.videoOffset = this.videoOffset;
        storyEntry.videoVolume = this.videoVolume;
        return storyEntry;
    }

    public static long getCoverTime(TL_stories.StoryItem storyItem) {
        TLRPC.MessageMedia messageMedia;
        TLRPC.Document document;
        TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo;
        if (storyItem == null || (messageMedia = storyItem.media) == null || (document = messageMedia.document) == null) {
            return 0L;
        }
        int i = 0;
        while (true) {
            if (i >= document.attributes.size()) {
                tL_documentAttributeVideo = null;
                break;
            }
            if (document.attributes.get(i) instanceof TLRPC.TL_documentAttributeVideo) {
                tL_documentAttributeVideo = (TLRPC.TL_documentAttributeVideo) document.attributes.get(i);
                break;
            }
            i++;
        }
        if (tL_documentAttributeVideo == null) {
            return 0L;
        }
        return (long) (tL_documentAttributeVideo.video_start_ts * 1000.0d);
    }
}
