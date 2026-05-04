package com.exteragram.messenger.nowplaying.p013ui.components;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.camera.camera2.pipe.CameraTimestamp$$ExternalSyntheticBackport0;
import androidx.core.graphics.ColorUtils;
import androidx.palette.graphics.Palette;
import com.exteragram.messenger.api.dto.NowPlayingDTO;
import com.exteragram.messenger.nowplaying.p013ui.components.NowPlayingCardData;
import com.exteragram.messenger.utils.p017ui.UIUtil;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes.dex */
public final class NowPlayingCardData {
    public static final Companion Companion = new Companion(null);
    private final Integer accentColor;
    private final Integer backgroundColor;
    private final Bitmap coverBitmap;
    private final ImageLocation imageLocation;
    private final NowPlayingDTO nowPlayingDTO;
    private long userEmoji;

    /* JADX INFO: loaded from: classes4.dex */
    public interface Callback {
        void onDataLoaded(NowPlayingCardData nowPlayingCardData);
    }

    public static final void create(NowPlayingDTO nowPlayingDTO, TLRPC.Document document, Callback callback) {
        Companion.create(nowPlayingDTO, document, callback);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NowPlayingCardData)) {
            return false;
        }
        NowPlayingCardData nowPlayingCardData = (NowPlayingCardData) obj;
        return Intrinsics.areEqual(this.nowPlayingDTO, nowPlayingCardData.nowPlayingDTO) && Intrinsics.areEqual(this.backgroundColor, nowPlayingCardData.backgroundColor) && Intrinsics.areEqual(this.accentColor, nowPlayingCardData.accentColor) && Intrinsics.areEqual(this.coverBitmap, nowPlayingCardData.coverBitmap) && Intrinsics.areEqual(this.imageLocation, nowPlayingCardData.imageLocation) && this.userEmoji == nowPlayingCardData.userEmoji;
    }

    public int hashCode() {
        int iHashCode = this.nowPlayingDTO.hashCode() * 31;
        Integer num = this.backgroundColor;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.accentColor;
        int iHashCode3 = (iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Bitmap bitmap = this.coverBitmap;
        int iHashCode4 = (iHashCode3 + (bitmap == null ? 0 : bitmap.hashCode())) * 31;
        ImageLocation imageLocation = this.imageLocation;
        return ((iHashCode4 + (imageLocation != null ? imageLocation.hashCode() : 0)) * 31) + CameraTimestamp$$ExternalSyntheticBackport0.m47m(this.userEmoji);
    }

    public String toString() {
        return "NowPlayingCardData(nowPlayingDTO=" + this.nowPlayingDTO + ", backgroundColor=" + this.backgroundColor + ", accentColor=" + this.accentColor + ", coverBitmap=" + this.coverBitmap + ", imageLocation=" + this.imageLocation + ", userEmoji=" + this.userEmoji + ')';
    }

    public NowPlayingCardData(NowPlayingDTO nowPlayingDTO, Integer num, Integer num2, Bitmap bitmap, ImageLocation imageLocation, long j) {
        Intrinsics.checkNotNullParameter(nowPlayingDTO, "nowPlayingDTO");
        this.nowPlayingDTO = nowPlayingDTO;
        this.backgroundColor = num;
        this.accentColor = num2;
        this.coverBitmap = bitmap;
        this.imageLocation = imageLocation;
        this.userEmoji = j;
    }

    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException
        */
    public /* synthetic */ NowPlayingCardData(com.exteragram.messenger.api.dto.NowPlayingDTO r9, java.lang.Integer r10, java.lang.Integer r11, android.graphics.Bitmap r12, org.telegram.messenger.ImageLocation r13, long r14, int r16, kotlin.jvm.internal.DefaultConstructorMarker r17) {
        /*
            r8 = this;
            r0 = r16 & 16
            if (r0 == 0) goto L5
            r13 = 0
        L5:
            r5 = r13
            r13 = r16 & 32
            if (r13 == 0) goto L13
            r0 = -1
            r6 = r0
            r2 = r10
            r3 = r11
            r4 = r12
            r0 = r8
            r1 = r9
            goto L19
        L13:
            r6 = r14
            r0 = r8
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
        L19:
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.exteragram.messenger.nowplaying.p013ui.components.NowPlayingCardData.<init>(com.exteragram.messenger.api.dto.NowPlayingDTO, java.lang.Integer, java.lang.Integer, android.graphics.Bitmap, org.telegram.messenger.ImageLocation, long, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public final NowPlayingDTO getNowPlayingDTO() {
        return this.nowPlayingDTO;
    }

    public final Integer getBackgroundColor() {
        return this.backgroundColor;
    }

    public final Integer getAccentColor() {
        return this.accentColor;
    }

    public final Bitmap getCoverBitmap() {
        return this.coverBitmap;
    }

    public final ImageLocation getImageLocation() {
        return this.imageLocation;
    }

    public final long getUserEmoji() {
        return this.userEmoji;
    }

    public final void setUserEmoji(long j) {
        this.userEmoji = j;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void create(final NowPlayingDTO nowPlayingDTO, TLRPC.Document document, final Callback callback) {
            String coverUrl;
            TLRPC.PhotoSize closestPhotoSizeWithSize;
            Intrinsics.checkNotNullParameter(nowPlayingDTO, "nowPlayingDTO");
            Intrinsics.checkNotNullParameter(callback, "callback");
            final ImageLocation forDocument = (!Intrinsics.areEqual(nowPlayingDTO.getPlatform(), "TELEGRAM") || document == null || (closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, MediaDataController.MAX_STYLE_RUNS_COUNT)) == null) ? null : ImageLocation.getForDocument(closestPhotoSizeWithSize, document);
            if (forDocument == null && (coverUrl = nowPlayingDTO.getCoverUrl()) != null && coverUrl.length() != 0) {
                forDocument = ImageLocation.getForPath(nowPlayingDTO.getCoverUrl());
            }
            if (forDocument == null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.nowplaying.ui.components.NowPlayingCardData$Companion$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        NowPlayingCardData.Companion.create$lambda$0(callback, nowPlayingDTO);
                    }
                });
            } else {
                final ImageReceiver imageReceiver = new ImageReceiver(null);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.nowplaying.ui.components.NowPlayingCardData$Companion$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        NowPlayingCardData.Companion.create$lambda$1(imageReceiver, forDocument, callback, nowPlayingDTO);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void create$lambda$0(Callback callback, NowPlayingDTO nowPlayingDTO) {
            callback.onDataLoaded(new NowPlayingCardData(nowPlayingDTO, null, null, null, null, 0L, 32, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void create$lambda$1(ImageReceiver imageReceiver, final ImageLocation imageLocation, final Callback callback, final NowPlayingDTO nowPlayingDTO) {
            imageReceiver.onAttachedToWindow();
            imageReceiver.setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: com.exteragram.messenger.nowplaying.ui.components.NowPlayingCardData$Companion$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                public final void didSetImage(ImageReceiver imageReceiver2, boolean z, boolean z2, boolean z3) {
                    NowPlayingCardData.Companion.create$lambda$1$0(callback, nowPlayingDTO, imageLocation, imageReceiver2, z, z2, z3);
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
            imageReceiver.setImage(imageLocation, null, null, null, null, 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void create$lambda$1$0(final Callback callback, final NowPlayingDTO nowPlayingDTO, final ImageLocation imageLocation, final ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
            if (!z || z2) {
                return;
            }
            final Bitmap bitmap = imageReceiver.getBitmap();
            Utilities.themeQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.nowplaying.ui.components.NowPlayingCardData$Companion$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    NowPlayingCardData.Companion.create$lambda$1$0$0(bitmap, callback, nowPlayingDTO, imageLocation, imageReceiver);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void create$lambda$1$0$0(final Bitmap bitmap, final Callback callback, final NowPlayingDTO nowPlayingDTO, final ImageLocation imageLocation, final ImageReceiver imageReceiver) {
            Pair pairExtractColors = NowPlayingCardData.Companion.extractColors(bitmap);
            final Integer num = (Integer) pairExtractColors.component1();
            final Integer num2 = (Integer) pairExtractColors.component2();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.nowplaying.ui.components.NowPlayingCardData$Companion$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    NowPlayingCardData.Companion.create$lambda$1$0$0$0(callback, nowPlayingDTO, num, num2, bitmap, imageLocation, imageReceiver);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void create$lambda$1$0$0$0(Callback callback, NowPlayingDTO nowPlayingDTO, Integer num, Integer num2, Bitmap bitmap, ImageLocation imageLocation, ImageReceiver imageReceiver) {
            callback.onDataLoaded(new NowPlayingCardData(nowPlayingDTO, num, num2, bitmap, imageLocation, 0L, 32, null));
            imageReceiver.onDetachedFromWindow();
        }

        private final Pair extractColors(Bitmap bitmap) {
            int iIntValue;
            float f;
            float f2;
            if (bitmap == null) {
                return TuplesKt.m1081to(null, null);
            }
            Palette paletteGenerate = Palette.from(bitmap).generate();
            Intrinsics.checkNotNullExpressionValue(paletteGenerate, "generate(...)");
            Palette.Swatch darkVibrantSwatch = paletteGenerate.getDarkVibrantSwatch();
            if (darkVibrantSwatch != null) {
                iIntValue = darkVibrantSwatch.getRgb();
            } else {
                Palette.Swatch mutedSwatch = paletteGenerate.getMutedSwatch();
                if (mutedSwatch != null) {
                    iIntValue = mutedSwatch.getRgb();
                } else {
                    Palette.Swatch darkMutedSwatch = paletteGenerate.getDarkMutedSwatch();
                    Integer numValueOf = darkMutedSwatch != null ? Integer.valueOf(darkMutedSwatch.getRgb()) : null;
                    if (numValueOf != null) {
                        iIntValue = numValueOf.intValue();
                    } else {
                        Palette.Swatch dominantSwatch = paletteGenerate.getDominantSwatch();
                        Integer numValueOf2 = dominantSwatch != null ? Integer.valueOf(dominantSwatch.getRgb()) : null;
                        iIntValue = numValueOf2 != null ? numValueOf2.intValue() : AndroidUtilities.getDominantColor(bitmap);
                    }
                }
            }
            int iAdjustHsl$default = iIntValue;
            double dCalculateContrast = ColorUtils.calculateContrast(-1, iAdjustHsl$default);
            if (dCalculateContrast > 15.0d) {
                iAdjustHsl$default = UIUtil.adjustHsl$default(UIUtil.INSTANCE, iAdjustHsl$default, 2.0f, 0.0f, 4, null);
            } else if (dCalculateContrast < 10.0d) {
                iAdjustHsl$default = UIUtil.adjustHsl$default(UIUtil.INSTANCE, iAdjustHsl$default, 0.5f, 0.0f, 4, null);
            }
            if (ColorUtils.calculateContrast(-1, iAdjustHsl$default) < 3.0d) {
                iAdjustHsl$default = ColorUtils.blendARGB(iAdjustHsl$default, -16777216, 0.3f);
            }
            int i = iAdjustHsl$default;
            float[] fArr = new float[3];
            ColorUtils.colorToHSL(i, fArr);
            float f3 = fArr[2];
            if (0.0f <= f3 && f3 <= 0.25f) {
                f2 = 2.0f;
            } else if (0.25f <= f3 && f3 <= 0.5f) {
                f2 = 1.5f;
            } else {
                if (0.5f > f3 || f3 > 0.75f) {
                    f = 0.5f;
                    return TuplesKt.m1081to(Integer.valueOf(i), Integer.valueOf(UIUtil.adjustHsl$default(UIUtil.INSTANCE, i, f, 0.0f, 4, null)));
                }
                f2 = 1.0f;
            }
            f = f2;
            return TuplesKt.m1081to(Integer.valueOf(i), Integer.valueOf(UIUtil.adjustHsl$default(UIUtil.INSTANCE, i, f, 0.0f, 4, null)));
        }
    }
}
