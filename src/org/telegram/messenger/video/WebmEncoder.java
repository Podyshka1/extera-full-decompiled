package org.telegram.messenger.video;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.video.MediaCodecVideoConvertor;
import org.telegram.p029ui.Components.AnimatedEmojiSpan;
import org.telegram.p029ui.Components.AnimatedFileDrawable;
import org.telegram.p029ui.Components.Paint.PaintTypeface;
import org.telegram.p029ui.Components.Paint.Views.EditTextOutline;
import org.telegram.p029ui.Components.RLottieDrawable;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes5.dex */
public class WebmEncoder {
    private static native long createEncoder(String str, int i, int i2, int i3, long j);

    public static native void stop(long j);

    private static native boolean writeFrame(long j, ByteBuffer byteBuffer, int i, int i2);

    /* JADX WARN: Removed duplicated region for block: B:45:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0143  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean convert(MediaCodecVideoConvertor.ConvertVideoParams convertVideoParams, int i) throws Throwable {
        boolean z;
        boolean z2;
        long length;
        MediaController.VideoConvertorListener videoConvertorListener;
        ByteBuffer byteBufferAllocateDirect;
        Canvas canvas;
        FrameDrawer frameDrawer;
        int iCeil;
        int i2;
        int i3;
        Bitmap bitmap;
        MediaController.VideoConvertorListener videoConvertorListener2;
        int i4 = convertVideoParams.resultWidth;
        int i5 = convertVideoParams.resultHeight;
        long jCreateEncoder = createEncoder(convertVideoParams.cacheFile.getAbsolutePath(), i4, i5, convertVideoParams.framerate, convertVideoParams.bitrate);
        boolean z3 = true;
        if (jCreateEncoder == 0) {
            return true;
        }
        Bitmap bitmapCreateBitmap = null;
        try {
            try {
                bitmapCreateBitmap = Bitmap.createBitmap(i4, i5, Bitmap.Config.ARGB_8888);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
            z = z3;
        }
        try {
            try {
                byteBufferAllocateDirect = ByteBuffer.allocateDirect(bitmapCreateBitmap.getByteCount());
                canvas = new Canvas(bitmapCreateBitmap);
                frameDrawer = new FrameDrawer(convertVideoParams);
                iCeil = (int) Math.ceil(((double) convertVideoParams.framerate) * (convertVideoParams.duration / 1000.0d));
                i2 = 0;
            } catch (Exception e2) {
                e = e2;
                z = z3;
            }
            while (i2 < iCeil) {
                frameDrawer.draw(canvas, i2);
                bitmapCreateBitmap.copyPixelsToBuffer(byteBufferAllocateDirect);
                byteBufferAllocateDirect.flip();
                if (!writeFrame(jCreateEncoder, byteBufferAllocateDirect, i4, i5)) {
                    FileLog.m1133d("webm writeFile error at " + i2 + "/" + iCeil);
                    stop(jCreateEncoder);
                    bitmapCreateBitmap.recycle();
                    return z3;
                }
                MediaController.VideoConvertorListener videoConvertorListener3 = convertVideoParams.callback;
                if (videoConvertorListener3 != null) {
                    z = z3;
                    try {
                        bitmap = bitmapCreateBitmap;
                        try {
                            i3 = i4;
                            videoConvertorListener3.didWriteData(Math.min(261120L, convertVideoParams.cacheFile.length()), i2 / iCeil);
                        } catch (Exception e3) {
                            e = e3;
                            bitmapCreateBitmap = bitmap;
                        } catch (Throwable th2) {
                            th = th2;
                            bitmapCreateBitmap = bitmap;
                            stop(jCreateEncoder);
                            if (bitmapCreateBitmap != null) {
                                bitmapCreateBitmap.recycle();
                            }
                            throw th;
                        }
                    } catch (Exception e4) {
                        e = e4;
                        FileLog.m1136e(e);
                        stop(jCreateEncoder);
                        if (bitmapCreateBitmap != null) {
                        }
                        z2 = z;
                        length = convertVideoParams.cacheFile.length();
                        if (i > 0) {
                        }
                        videoConvertorListener = convertVideoParams.callback;
                        if (videoConvertorListener != null) {
                        }
                        FileLog.m1133d("webm encoded to " + convertVideoParams.cacheFile + " with size=" + length + " triesLeft=" + i);
                        return z2;
                    }
                } else {
                    z = z3;
                    i3 = i4;
                    bitmap = bitmapCreateBitmap;
                }
                if (i2 % 3 == 0 && (videoConvertorListener2 = convertVideoParams.callback) != null) {
                    videoConvertorListener2.checkConversionCanceled();
                }
                i2++;
                z3 = z;
                bitmapCreateBitmap = bitmap;
                i4 = i3;
                FileLog.m1136e(e);
                stop(jCreateEncoder);
                if (bitmapCreateBitmap != null) {
                    bitmapCreateBitmap.recycle();
                }
                z2 = z;
                length = convertVideoParams.cacheFile.length();
                if (i > 0 || length <= 261120) {
                    videoConvertorListener = convertVideoParams.callback;
                    if (videoConvertorListener != null) {
                        videoConvertorListener.didWriteData(length, 1.0f);
                    }
                    FileLog.m1133d("webm encoded to " + convertVideoParams.cacheFile + " with size=" + length + " triesLeft=" + i);
                    return z2;
                }
                int i6 = convertVideoParams.bitrate;
                convertVideoParams.bitrate = (int) (i6 * (261120.0f / length) * 0.9f);
                convertVideoParams.cacheFile.delete();
                FileLog.m1133d("webm encoded too much, got " + length + ", old bitrate = " + i6 + " new bitrate = " + convertVideoParams.bitrate);
                return convert(convertVideoParams, i - 1);
            }
            stop(jCreateEncoder);
            bitmapCreateBitmap.recycle();
            z2 = false;
            length = convertVideoParams.cacheFile.length();
            if (i > 0) {
            }
            videoConvertorListener = convertVideoParams.callback;
            if (videoConvertorListener != null) {
            }
            FileLog.m1133d("webm encoded to " + convertVideoParams.cacheFile + " with size=" + length + " triesLeft=" + i);
            return z2;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static class FrameDrawer {

        /* JADX INFO: renamed from: H */
        private final int f1648H;

        /* JADX INFO: renamed from: W */
        private final int f1649W;
        private final Paint bitmapPaint;
        private final Paint clearPaint;
        private final Path clipPath;
        private final int fps;
        private final ArrayList<VideoEditedInfo.MediaEntity> mediaEntities;
        Path path;
        private final Bitmap photo;
        Paint textColorPaint;
        Paint xRefPaint;

        public FrameDrawer(MediaCodecVideoConvertor.ConvertVideoParams convertVideoParams) {
            ArrayList<VideoEditedInfo.MediaEntity> arrayList = new ArrayList<>();
            this.mediaEntities = arrayList;
            this.clearPaint = new Paint(1);
            this.bitmapPaint = new Paint(5);
            int i = convertVideoParams.resultWidth;
            this.f1649W = i;
            int i2 = convertVideoParams.resultHeight;
            this.f1648H = i2;
            this.fps = convertVideoParams.framerate;
            Path path = new Path();
            this.clipPath = path;
            path.addRoundRect(new RectF(0.0f, 0.0f, i, i2), i * 0.125f, i2 * 0.125f, Path.Direction.CW);
            this.photo = BitmapFactory.decodeFile(convertVideoParams.videoPath);
            arrayList.addAll(convertVideoParams.mediaEntities);
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                VideoEditedInfo.MediaEntity mediaEntity = this.mediaEntities.get(i3);
                byte b = mediaEntity.type;
                if (b == 0 || b == 2 || b == 5) {
                    initStickerEntity(mediaEntity);
                } else if (b == 1) {
                    initTextEntity(mediaEntity);
                }
            }
            this.clearPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        }

        public void draw(Canvas canvas, int i) {
            canvas.drawPaint(this.clearPaint);
            canvas.save();
            canvas.clipPath(this.clipPath);
            Bitmap bitmap = this.photo;
            if (bitmap != null) {
                canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            }
            long j = ((long) i) * (1000000000 / ((long) this.fps));
            int size = this.mediaEntities.size();
            for (int i2 = 0; i2 < size; i2++) {
                VideoEditedInfo.MediaEntity mediaEntity = this.mediaEntities.get(i2);
                drawEntity(canvas, mediaEntity, mediaEntity.color, j);
            }
            canvas.restore();
        }

        private void drawEntity(Canvas canvas, VideoEditedInfo.MediaEntity mediaEntity, int i, long j) {
            VideoEditedInfo.MediaEntity mediaEntity2;
            Canvas canvas2;
            long j2;
            int i2;
            int i3;
            long j3 = mediaEntity.ptr;
            int i4 = 0;
            if (j3 != 0) {
                Bitmap bitmap = mediaEntity.bitmap;
                if (bitmap == null || (i2 = mediaEntity.f1622W) <= 0 || (i3 = mediaEntity.f1621H) <= 0) {
                    return;
                }
                RLottieDrawable.getFrame(j3, (int) mediaEntity.currentFrame, bitmap, i2, i3, bitmap.getRowBytes(), true);
                Bitmap bitmap2 = mediaEntity.bitmap;
                if ((mediaEntity.subType & 8) == 0) {
                    i = 0;
                }
                applyRoundRadius(mediaEntity, bitmap2, i);
                canvas.drawBitmap(mediaEntity.bitmap, mediaEntity.matrix, this.bitmapPaint);
                float f = mediaEntity.currentFrame + mediaEntity.framesPerDraw;
                mediaEntity.currentFrame = f;
                if (f >= mediaEntity.metadata[0]) {
                    mediaEntity.currentFrame = 0.0f;
                    return;
                }
                return;
            }
            if (mediaEntity.animatedFileDrawable != null) {
                float f2 = mediaEntity.currentFrame;
                int i5 = (int) f2;
                float f3 = f2 + mediaEntity.framesPerDraw;
                mediaEntity.currentFrame = f3;
                for (int i6 = (int) f3; i5 != i6; i6--) {
                    mediaEntity.animatedFileDrawable.getNextFrame(true);
                }
                Bitmap backgroundBitmap = mediaEntity.animatedFileDrawable.getBackgroundBitmap();
                if (backgroundBitmap != null) {
                    canvas.drawBitmap(backgroundBitmap, mediaEntity.matrix, this.bitmapPaint);
                    return;
                }
                return;
            }
            canvas.drawBitmap(mediaEntity.bitmap, mediaEntity.matrix, this.bitmapPaint);
            ArrayList<VideoEditedInfo.EmojiEntity> arrayList = mediaEntity.entities;
            if (arrayList == null || arrayList.isEmpty()) {
                return;
            }
            while (i4 < mediaEntity.entities.size()) {
                VideoEditedInfo.EmojiEntity emojiEntity = mediaEntity.entities.get(i4);
                if (emojiEntity == null || (mediaEntity2 = emojiEntity.entity) == null) {
                    canvas2 = canvas;
                    j2 = j;
                } else {
                    canvas2 = canvas;
                    j2 = j;
                    drawEntity(canvas2, mediaEntity2, mediaEntity.color, j2);
                }
                i4++;
                canvas = canvas2;
                j = j2;
            }
        }

        private void initTextEntity(final VideoEditedInfo.MediaEntity mediaEntity) {
            int i;
            Emoji.EmojiSpan[] emojiSpanArr;
            Typeface typeface;
            final EditTextOutline editTextOutline = new EditTextOutline(ApplicationLoader.applicationContext);
            editTextOutline.getPaint().setAntiAlias(true);
            editTextOutline.drawAnimatedEmojiDrawables = false;
            editTextOutline.setBackgroundColor(0);
            editTextOutline.setPadding(AndroidUtilities.m1124dp(7.0f), AndroidUtilities.m1124dp(7.0f), AndroidUtilities.m1124dp(7.0f), AndroidUtilities.m1124dp(7.0f));
            PaintTypeface paintTypeface = mediaEntity.textTypeface;
            if (paintTypeface != null && (typeface = paintTypeface.getTypeface()) != null) {
                editTextOutline.setTypeface(typeface);
            }
            editTextOutline.setTextSize(0, mediaEntity.fontSize);
            SpannableString spannableString = new SpannableString(mediaEntity.text);
            ArrayList<VideoEditedInfo.EmojiEntity> arrayList = mediaEntity.entities;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                int i3 = i2 + 1;
                final VideoEditedInfo.EmojiEntity emojiEntity = arrayList.get(i2);
                if (emojiEntity.documentAbsolutePath != null) {
                    VideoEditedInfo.MediaEntity mediaEntity2 = new VideoEditedInfo.MediaEntity();
                    emojiEntity.entity = mediaEntity2;
                    mediaEntity2.text = emojiEntity.documentAbsolutePath;
                    mediaEntity2.subType = emojiEntity.subType;
                    AnimatedEmojiSpan animatedEmojiSpan = new AnimatedEmojiSpan(0L, 1.0f, editTextOutline.getPaint().getFontMetricsInt()) { // from class: org.telegram.messenger.video.WebmEncoder.FrameDrawer.1
                        @Override // org.telegram.p029ui.Components.AnimatedEmojiSpan, android.text.style.ReplacementSpan
                        public void draw(Canvas canvas, CharSequence charSequence, int i4, int i5, float f, int i6, int i7, int i8, Paint paint) {
                            super.draw(canvas, charSequence, i4, i5, f, i6, i7, i8, paint);
                            VideoEditedInfo.MediaEntity mediaEntity3 = mediaEntity;
                            float paddingLeft = mediaEntity.f1623x + ((((editTextOutline.getPaddingLeft() + f) + (this.measuredSize / 2.0f)) / mediaEntity3.viewWidth) * mediaEntity3.width);
                            float f2 = mediaEntity3.f1624y;
                            float paddingTop = editTextOutline.getPaddingTop() + i6 + ((i8 - i6) / 2.0f);
                            VideoEditedInfo.MediaEntity mediaEntity4 = mediaEntity;
                            float f3 = mediaEntity4.height;
                            float fSin = f2 + ((paddingTop / mediaEntity4.viewHeight) * f3);
                            if (mediaEntity4.rotation != 0.0f) {
                                float f4 = mediaEntity4.f1623x + (mediaEntity4.width / 2.0f);
                                float f5 = mediaEntity4.f1624y + (f3 / 2.0f);
                                float f6 = FrameDrawer.this.f1649W / FrameDrawer.this.f1648H;
                                double d = paddingLeft - f4;
                                double d2 = (fSin - f5) / f6;
                                float fCos = f4 + ((float) ((Math.cos(-mediaEntity.rotation) * d) - (Math.sin(-mediaEntity.rotation) * d2)));
                                fSin = (((float) ((d * Math.sin(-mediaEntity.rotation)) + (d2 * Math.cos(-mediaEntity.rotation)))) * f6) + f5;
                                paddingLeft = fCos;
                            }
                            VideoEditedInfo.MediaEntity mediaEntity5 = emojiEntity.entity;
                            int i9 = this.measuredSize;
                            VideoEditedInfo.MediaEntity mediaEntity6 = mediaEntity;
                            float f7 = (i9 / mediaEntity6.viewWidth) * mediaEntity6.width;
                            mediaEntity5.width = f7;
                            float f8 = (i9 / mediaEntity6.viewHeight) * mediaEntity6.height;
                            mediaEntity5.height = f8;
                            mediaEntity5.f1623x = paddingLeft - (f7 / 2.0f);
                            mediaEntity5.f1624y = fSin - (f8 / 2.0f);
                            mediaEntity5.rotation = mediaEntity6.rotation;
                            if (mediaEntity5.bitmap == null) {
                                FrameDrawer.this.initStickerEntity(mediaEntity5);
                            }
                        }
                    };
                    int i4 = emojiEntity.offset;
                    spannableString.setSpan(animatedEmojiSpan, i4, emojiEntity.length + i4, 33);
                }
                i2 = i3;
            }
            CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(spannableString, editTextOutline.getPaint().getFontMetricsInt(), false);
            if ((charSequenceReplaceEmoji instanceof Spanned) && (emojiSpanArr = (Emoji.EmojiSpan[]) ((Spanned) charSequenceReplaceEmoji).getSpans(0, charSequenceReplaceEmoji.length(), Emoji.EmojiSpan.class)) != null) {
                for (Emoji.EmojiSpan emojiSpan : emojiSpanArr) {
                    emojiSpan.scale = 0.85f;
                }
            }
            editTextOutline.setText(charSequenceReplaceEmoji);
            editTextOutline.setTextColor(mediaEntity.color);
            int i5 = mediaEntity.textAlign;
            editTextOutline.setGravity(i5 != 1 ? i5 != 2 ? 19 : 21 : 17);
            int i6 = mediaEntity.textAlign;
            if (i6 != 1) {
                i = (i6 == 2 ? !LocaleController.isRTL : LocaleController.isRTL) ? 3 : 2;
            } else {
                i = 4;
            }
            editTextOutline.setTextAlignment(i);
            editTextOutline.setHorizontallyScrolling(false);
            editTextOutline.setImeOptions(268435456);
            editTextOutline.setFocusableInTouchMode(true);
            editTextOutline.setInputType(editTextOutline.getInputType() | 16384);
            setBreakStrategy(editTextOutline);
            byte b = mediaEntity.subType;
            if (b == 0) {
                editTextOutline.setFrameColor(mediaEntity.color);
                editTextOutline.setTextColor(AndroidUtilities.computePerceivedBrightness(mediaEntity.color) >= 0.721f ? -16777216 : -1);
            } else if (b == 1) {
                editTextOutline.setFrameColor(AndroidUtilities.computePerceivedBrightness(mediaEntity.color) >= 0.25f ? -1728053248 : -1711276033);
                editTextOutline.setTextColor(mediaEntity.color);
            } else if (b == 2) {
                editTextOutline.setFrameColor(AndroidUtilities.computePerceivedBrightness(mediaEntity.color) >= 0.25f ? -16777216 : -1);
                editTextOutline.setTextColor(mediaEntity.color);
            } else if (b == 3) {
                editTextOutline.setFrameColor(0);
                editTextOutline.setTextColor(mediaEntity.color);
            }
            editTextOutline.measure(View.MeasureSpec.makeMeasureSpec(mediaEntity.viewWidth, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(mediaEntity.viewHeight, TLObject.FLAG_30));
            editTextOutline.layout(0, 0, mediaEntity.viewWidth, mediaEntity.viewHeight);
            mediaEntity.bitmap = Bitmap.createBitmap(mediaEntity.viewWidth, mediaEntity.viewHeight, Bitmap.Config.ARGB_8888);
            editTextOutline.draw(new Canvas(mediaEntity.bitmap));
            setupMatrix(mediaEntity);
        }

        public void setBreakStrategy(EditTextOutline editTextOutline) {
            editTextOutline.setBreakStrategy(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void initStickerEntity(VideoEditedInfo.MediaEntity mediaEntity) {
            int i;
            int i2 = (int) (mediaEntity.width * this.f1649W);
            mediaEntity.f1622W = i2;
            int i3 = (int) (mediaEntity.height * this.f1648H);
            mediaEntity.f1621H = i3;
            if (i2 > 512) {
                mediaEntity.f1621H = (int) ((i3 / i2) * 512.0f);
                mediaEntity.f1622W = 512;
            }
            int i4 = mediaEntity.f1621H;
            if (i4 > 512) {
                mediaEntity.f1622W = (int) ((mediaEntity.f1622W / i4) * 512.0f);
                mediaEntity.f1621H = 512;
            }
            byte b = mediaEntity.subType;
            if ((b & 1) != 0) {
                int i5 = mediaEntity.f1622W;
                if (i5 <= 0 || (i = mediaEntity.f1621H) <= 0) {
                    return;
                }
                mediaEntity.bitmap = Bitmap.createBitmap(i5, i, Bitmap.Config.ARGB_8888);
                int[] iArr = new int[3];
                mediaEntity.metadata = iArr;
                mediaEntity.ptr = RLottieDrawable.create(mediaEntity.text, null, mediaEntity.f1622W, mediaEntity.f1621H, iArr, false, null, false, 0);
                mediaEntity.framesPerDraw = mediaEntity.metadata[1] / this.fps;
            } else if ((b & 4) != 0) {
                mediaEntity.looped = false;
                mediaEntity.animatedFileDrawable = new AnimatedFileDrawable(new File(mediaEntity.text), true, 0L, 0, null, null, null, 0L, UserConfig.selectedAccount, true, 512, 512, null);
                mediaEntity.framesPerDraw = r6.getFps() / this.fps;
                mediaEntity.currentFrame = 1.0f;
                mediaEntity.animatedFileDrawable.getNextFrame(true);
                if (mediaEntity.type == 5) {
                    mediaEntity.firstSeek = true;
                }
            } else {
                String str = mediaEntity.text;
                if (!TextUtils.isEmpty(mediaEntity.segmentedPath) && (mediaEntity.subType & 16) != 0) {
                    str = mediaEntity.segmentedPath;
                }
                BitmapFactory.Options options = new BitmapFactory.Options();
                if (mediaEntity.type == 2) {
                    options.inMutable = true;
                }
                Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
                mediaEntity.bitmap = bitmapDecodeFile;
                if (mediaEntity.type == 2 && bitmapDecodeFile != null) {
                    mediaEntity.roundRadius = AndroidUtilities.m1124dp(12.0f) / Math.min(mediaEntity.viewWidth, mediaEntity.viewHeight);
                    Pair<Integer, Integer> imageOrientation = AndroidUtilities.getImageOrientation(mediaEntity.text);
                    mediaEntity.rotation = (float) (((double) mediaEntity.rotation) - Math.toRadians(((Integer) imageOrientation.first).intValue()));
                    if ((((Integer) imageOrientation.first).intValue() / 90) % 2 == 1) {
                        float f = mediaEntity.f1623x;
                        float f2 = mediaEntity.width;
                        float f3 = f + (f2 / 2.0f);
                        float f4 = mediaEntity.f1624y;
                        float f5 = mediaEntity.height;
                        float f6 = f4 + (f5 / 2.0f);
                        int i6 = this.f1649W;
                        int i7 = this.f1648H;
                        float f7 = (f2 * i6) / i7;
                        float f8 = (f5 * i7) / i6;
                        mediaEntity.width = f8;
                        mediaEntity.height = f7;
                        mediaEntity.f1623x = f3 - (f8 / 2.0f);
                        mediaEntity.f1624y = f6 - (f7 / 2.0f);
                    }
                    applyRoundRadius(mediaEntity, mediaEntity.bitmap, 0);
                } else if (bitmapDecodeFile != null) {
                    float width = bitmapDecodeFile.getWidth() / mediaEntity.bitmap.getHeight();
                    if (width > 1.0f) {
                        float f9 = mediaEntity.height;
                        float f10 = f9 / width;
                        mediaEntity.f1624y += (f9 - f10) / 2.0f;
                        mediaEntity.height = f10;
                    } else if (width < 1.0f) {
                        float f11 = mediaEntity.width;
                        float f12 = width * f11;
                        mediaEntity.f1623x += (f11 - f12) / 2.0f;
                        mediaEntity.width = f12;
                    }
                }
            }
            setupMatrix(mediaEntity);
        }

        private void setupMatrix(VideoEditedInfo.MediaEntity mediaEntity) {
            AnimatedFileDrawable animatedFileDrawable;
            mediaEntity.matrix = new Matrix();
            Bitmap backgroundBitmap = mediaEntity.bitmap;
            if (backgroundBitmap == null && (animatedFileDrawable = mediaEntity.animatedFileDrawable) != null) {
                backgroundBitmap = animatedFileDrawable.getBackgroundBitmap();
            }
            if (backgroundBitmap != null) {
                mediaEntity.matrix.postScale(1.0f / backgroundBitmap.getWidth(), 1.0f / backgroundBitmap.getHeight());
            }
            if (mediaEntity.type != 1 && (mediaEntity.subType & 2) != 0) {
                mediaEntity.matrix.postScale(-1.0f, 1.0f, 0.5f, 0.5f);
            }
            mediaEntity.matrix.postScale(mediaEntity.width * this.f1649W, mediaEntity.height * this.f1648H);
            mediaEntity.matrix.postTranslate(mediaEntity.f1623x * this.f1649W, mediaEntity.f1624y * this.f1648H);
            mediaEntity.matrix.postRotate((float) ((((double) (-mediaEntity.rotation)) / 3.141592653589793d) * 180.0d), (mediaEntity.f1623x + (mediaEntity.width / 2.0f)) * this.f1649W, (mediaEntity.f1624y + (mediaEntity.height / 2.0f)) * this.f1648H);
        }

        private void applyRoundRadius(VideoEditedInfo.MediaEntity mediaEntity, Bitmap bitmap, int i) {
            if (bitmap == null || mediaEntity == null) {
                return;
            }
            if (mediaEntity.roundRadius == 0.0f && i == 0) {
                return;
            }
            if (mediaEntity.roundRadiusCanvas == null) {
                mediaEntity.roundRadiusCanvas = new Canvas(bitmap);
            }
            if (mediaEntity.roundRadius != 0.0f) {
                if (this.path == null) {
                    this.path = new Path();
                }
                if (this.xRefPaint == null) {
                    Paint paint = new Paint(1);
                    this.xRefPaint = paint;
                    paint.setColor(-16777216);
                    this.xRefPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
                }
                float fMin = Math.min(bitmap.getWidth(), bitmap.getHeight()) * mediaEntity.roundRadius;
                this.path.rewind();
                this.path.addRoundRect(new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight()), fMin, fMin, Path.Direction.CCW);
                this.path.toggleInverseFillType();
                mediaEntity.roundRadiusCanvas.drawPath(this.path, this.xRefPaint);
            }
            if (i != 0) {
                if (this.textColorPaint == null) {
                    Paint paint2 = new Paint(1);
                    this.textColorPaint = paint2;
                    paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                }
                this.textColorPaint.setColor(i);
                mediaEntity.roundRadiusCanvas.drawRect(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight(), this.textColorPaint);
            }
        }
    }
}
