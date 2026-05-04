package org.telegram.p029ui.Cells;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.RectF;
import android.text.TextUtils;
import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.ChatMessageCell;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.ButtonBounce;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LoadingDrawable;
import org.telegram.p029ui.Components.RadialProgress2;
import org.telegram.p029ui.Components.Text;
import org.telegram.p029ui.Components.spoilers.SpoilerEffect2;
import org.telegram.p029ui.Stars.StarsIntroActivity;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public class GroupMedia {
    private final AnimatedFloat animatedHidden;
    public boolean attached;
    private Bitmap blurBitmap;
    private int blurBitmapHeight;
    private int blurBitmapMessageId;
    private Paint blurBitmapPaint;
    private int blurBitmapState;
    private int blurBitmapWidth;
    private final ButtonBounce bounce;
    private Text buttonText;
    private long buttonTextPrice;
    public final ChatMessageCell cell;
    public int height;
    public boolean hidden;
    private GroupedMessages layout;
    private LoadingDrawable loadingDrawable;
    public int maxWidth;
    private int overrideWidth;
    private boolean pressButton;
    private MediaHolder pressHolder;
    private Text priceText;
    private long priceTextPrice;
    SpoilerEffect2 spoilerEffect;
    public int width;

    /* JADX INFO: renamed from: x */
    public int f1901x;

    /* JADX INFO: renamed from: y */
    public int f1902y;
    public final ArrayList holders = new ArrayList();
    private Path clipPath = new Path();
    private Path clipPath2 = new Path();
    private RectF clipRect = new RectF();

    public GroupMedia(ChatMessageCell chatMessageCell) {
        this.cell = chatMessageCell;
        this.spoilerEffect = SpoilerEffect2.getInstance(chatMessageCell);
        this.animatedHidden = new AnimatedFloat(chatMessageCell, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.bounce = new ButtonBounce(chatMessageCell);
    }

    public void setOverrideWidth(int i) {
        this.overrideWidth = i;
    }

    public void setMessageObject(MessageObject messageObject, boolean z, boolean z2) {
        TLRPC.Message message;
        MessageObject messageObject2;
        if (messageObject == null || (message = messageObject.messageOwner) == null) {
            return;
        }
        TLRPC.MessageMedia messageMedia = message.media;
        if (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) {
            TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) messageMedia;
            if (this.layout == null) {
                this.layout = new GroupedMessages();
            }
            this.layout.medias.clear();
            this.layout.medias.addAll(tL_messageMediaPaidMedia.extended_media);
            this.layout.calculate();
            int i = this.overrideWidth;
            if (i > 0) {
                this.maxWidth = i;
            } else {
                if (AndroidUtilities.isTablet()) {
                    this.maxWidth = AndroidUtilities.getMinTabletSide() - AndroidUtilities.m1124dp(122.0f);
                } else {
                    this.maxWidth = Math.min(this.cell.getParentWidth(), AndroidUtilities.displaySize.y) - AndroidUtilities.m1124dp((this.cell.checkNeedDrawShareButton(messageObject) ? 10 : 0) + 64);
                }
                if (this.cell.needDrawAvatar()) {
                    this.maxWidth -= AndroidUtilities.m1124dp(52.0f);
                }
            }
            int i2 = 0;
            while (true) {
                if (i2 >= tL_messageMediaPaidMedia.extended_media.size()) {
                    break;
                }
                TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia.extended_media.get(i2);
                MediaHolder mediaHolder = i2 >= this.holders.size() ? null : (MediaHolder) this.holders.get(i2);
                if (mediaHolder == null) {
                    messageObject2 = messageObject;
                    MediaHolder mediaHolder2 = new MediaHolder(this.cell, messageObject2, messageExtendedMedia, tL_messageMediaPaidMedia.extended_media.size() != 1, (int) ((r1.f1598pw / 1000.0f) * this.maxWidth), (int) (this.layout.getPosition(messageExtendedMedia).f1597ph * this.layout.maxSizeHeight));
                    String str = messageExtendedMedia.attachPath;
                    if (str != null) {
                        mediaHolder2.attachPath = str;
                    } else if (tL_messageMediaPaidMedia.extended_media.size() == 1) {
                        TLRPC.Message message2 = messageObject2.messageOwner;
                        mediaHolder2.attachPath = message2 != null ? message2.attachPath : null;
                    }
                    if (!TextUtils.isEmpty(mediaHolder2.attachPath)) {
                        DownloadController.getInstance(this.cell.currentAccount).addLoadingFileObserver(mediaHolder2.attachPath, messageObject2, mediaHolder2);
                        if (messageObject2.isSending()) {
                            mediaHolder2.radialProgress.setProgress(messageExtendedMedia.uploadProgress, false);
                        }
                    }
                    if (this.cell.isCellAttachedToWindow()) {
                        mediaHolder2.attach();
                    }
                    this.holders.add(mediaHolder2);
                } else {
                    messageObject2 = messageObject;
                    mediaHolder.updateMedia(messageExtendedMedia, messageObject2);
                }
                i2++;
                messageObject = messageObject2;
            }
            MessageObject messageObject3 = messageObject;
            int size = tL_messageMediaPaidMedia.extended_media.size();
            while (size < this.holders.size()) {
                MediaHolder mediaHolder3 = size >= this.holders.size() ? null : (MediaHolder) this.holders.get(size);
                if (mediaHolder3 != null) {
                    mediaHolder3.detach();
                    this.holders.remove(size);
                    size--;
                }
                size++;
            }
            updateHolders(messageObject3);
            GroupedMessages groupedMessages = this.layout;
            this.width = (int) ((groupedMessages.width / 1000.0f) * this.maxWidth);
            this.height = (int) (groupedMessages.height * groupedMessages.maxSizeHeight);
            if (this.hidden) {
                long j = tL_messageMediaPaidMedia.stars_amount;
                this.buttonTextPrice = j;
                Text text = new Text(StarsIntroActivity.replaceStarsWithPlain(LocaleController.formatPluralStringComma("UnlockPaidContent", (int) j), 0.7f), 14.0f, AndroidUtilities.bold());
                this.buttonText = text;
                if (text.getCurrentWidth() > this.width - AndroidUtilities.m1124dp(30.0f)) {
                    long j2 = tL_messageMediaPaidMedia.stars_amount;
                    this.buttonTextPrice = j2;
                    this.buttonText = new Text(StarsIntroActivity.replaceStarsWithPlain(LocaleController.formatPluralStringComma("UnlockPaidContentShort", (int) j2), 0.7f), 14.0f, AndroidUtilities.bold());
                }
            }
            if (this.priceText == null || this.priceTextPrice != tL_messageMediaPaidMedia.stars_amount) {
                long j3 = tL_messageMediaPaidMedia.stars_amount;
                this.priceTextPrice = j3;
                this.priceText = new Text(StarsIntroActivity.replaceStars(LocaleController.formatPluralStringComma("PaidMediaPrice", (int) j3), 0.9f), 12.0f, AndroidUtilities.bold());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateHolders(MessageObject messageObject) {
        boolean z;
        float f;
        char c;
        float f2;
        char c2;
        boolean z2;
        ChatMessageCell chatMessageCell = this.cell;
        char c3 = 0;
        boolean z3 = chatMessageCell.namesOffset > 0 || (chatMessageCell.captionAbove && !TextUtils.isEmpty(messageObject.caption));
        if (this.cell.captionAbove || TextUtils.isEmpty(messageObject.caption)) {
            ChatMessageCell chatMessageCell2 = this.cell;
            z = !chatMessageCell2.reactionsLayoutInBubble.isEmpty || chatMessageCell2.hasCommentLayout();
        }
        int i = this.overrideWidth;
        float f3 = 1000.0f;
        if (i > 0) {
            f = 1000.0f / this.layout.width;
            this.maxWidth = i;
        } else {
            if (AndroidUtilities.isTablet()) {
                this.maxWidth = AndroidUtilities.getMinTabletSide() - AndroidUtilities.m1124dp(122.0f);
            } else {
                this.maxWidth = Math.min(this.cell.getParentWidth(), AndroidUtilities.displaySize.y) - AndroidUtilities.m1124dp((this.cell.checkNeedDrawShareButton(messageObject) ? 10 : 0) + 64);
            }
            if (this.cell.needDrawAvatar()) {
                this.maxWidth -= AndroidUtilities.m1124dp(52.0f);
            }
            f = 1.0f;
        }
        GroupedMessages groupedMessages = this.layout;
        this.width = (int) ((groupedMessages.width / 1000.0f) * f * this.maxWidth);
        this.height = (int) (groupedMessages.height * groupedMessages.maxSizeHeight);
        this.hidden = false;
        int iM1124dp = AndroidUtilities.m1124dp(1.0f);
        int iM1124dp2 = AndroidUtilities.m1124dp(4.0f);
        char c4 = 2;
        int iM1124dp3 = AndroidUtilities.m1124dp(r10 - (SharedConfig.bubbleRadius > 2 ? 2 : 0));
        int iMin = Math.min(AndroidUtilities.m1124dp(3.0f), iM1124dp3);
        int i2 = 0;
        while (i2 < this.holders.size()) {
            MediaHolder mediaHolder = (MediaHolder) this.holders.get(i2);
            MessageObject.GroupedMessagePosition position = this.layout.getPosition(mediaHolder.media);
            if (position == null) {
                z2 = z3;
                c = c3;
                f2 = f3;
                c2 = c4;
            } else {
                float f4 = (position.left / f3) * f;
                c = c3;
                int i3 = this.maxWidth;
                f2 = f3;
                int i4 = (int) (f4 * i3);
                float f5 = position.top;
                c2 = c4;
                float f6 = this.layout.maxSizeHeight;
                int i5 = (int) (f5 * f6);
                z2 = z3;
                int i6 = (int) ((position.f1598pw / f2) * f * i3);
                int i7 = (int) (position.f1597ph * f6);
                int i8 = position.flags;
                if ((i8 & 1) == 0) {
                    i4 += iM1124dp;
                    i6 -= iM1124dp;
                }
                if ((i8 & 4) == 0) {
                    i5 += iM1124dp;
                    i7 -= iM1124dp;
                }
                if ((i8 & 2) == 0) {
                    i6 -= iM1124dp;
                }
                if ((i8 & 8) == 0) {
                    i7 -= iM1124dp;
                }
                mediaHolder.f1905l = i4;
                mediaHolder.f1907t = i5;
                mediaHolder.f1906r = i4 + i6;
                mediaHolder.f1903b = i5 + i7;
                mediaHolder.imageReceiver.setImageCoords(i4, i5, i6, i7);
                int i9 = position.flags;
                int i10 = ((i9 & 4) == 0 || (i9 & 1) == 0 || z2) ? iM1124dp2 : iM1124dp3;
                int i11 = ((i9 & 4) == 0 || (i9 & 2) == 0 || z2) ? iM1124dp2 : iM1124dp3;
                int i12 = ((i9 & 8) == 0 || (i9 & 1) == 0 || z) ? iM1124dp2 : iM1124dp3;
                int i13 = ((i9 & 8) == 0 || (i9 & 2) == 0 || z) ? iM1124dp2 : iM1124dp3;
                if (!z) {
                    if (messageObject.isOutOwner()) {
                        i13 = iM1124dp2;
                    } else {
                        i12 = iM1124dp2;
                    }
                }
                if (!z2 && this.cell.pinnedTop) {
                    if (messageObject.isOutOwner()) {
                        i11 = iMin;
                    } else {
                        i10 = iMin;
                    }
                }
                mediaHolder.imageReceiver.setRoundRadius(i10, i11, i13, i12);
                float[] fArr = mediaHolder.radii;
                float f7 = i10;
                fArr[1] = f7;
                fArr[c] = f7;
                float f8 = i11;
                fArr[3] = f8;
                fArr[c2] = f8;
                float f9 = i13;
                fArr[5] = f9;
                fArr[4] = f9;
                float f10 = i12;
                fArr[7] = f10;
                fArr[6] = f10;
                if (messageObject != null && messageObject.isSending()) {
                    mediaHolder.setIcon(3);
                }
                this.hidden = (this.hidden || mediaHolder.hidden) ? 1 : c;
            }
            i2++;
            c3 = c;
            f3 = f2;
            c4 = c2;
            z3 = z2;
        }
        if (this.hidden) {
            TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = messageObject == null ? null : (TLRPC.TL_messageMediaPaidMedia) messageObject.messageOwner.media;
            if (tL_messageMediaPaidMedia != null) {
                long j = tL_messageMediaPaidMedia.stars_amount;
                this.buttonTextPrice = j;
                Text text = new Text(StarsIntroActivity.replaceStarsWithPlain(LocaleController.formatPluralStringComma("UnlockPaidContent", (int) j), 0.7f), 14.0f, AndroidUtilities.bold());
                this.buttonText = text;
                if (text.getCurrentWidth() > this.width - AndroidUtilities.m1124dp(30.0f)) {
                    long j2 = tL_messageMediaPaidMedia.stars_amount;
                    this.buttonTextPrice = j2;
                    this.buttonText = new Text(StarsIntroActivity.replaceStarsWithPlain(LocaleController.formatPluralStringComma("UnlockPaidContentShort", (int) j2), 0.7f), 14.0f, AndroidUtilities.bold());
                }
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (motionEvent.getAction() == 0) {
            MediaHolder holderAt = getHolderAt(x, y);
            this.pressHolder = holderAt;
            this.pressButton = (holderAt == null || holderAt.radialProgress.getIcon() == 4 || !this.pressHolder.radialProgress.getProgressRect().contains(x, y)) ? false : true;
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            MediaHolder holderAt2 = getHolderAt(x, y);
            boolean z = (holderAt2 == null || holderAt2.radialProgress.getIcon() == 4 || !holderAt2.radialProgress.getProgressRect().contains(x, y)) ? false : true;
            MediaHolder mediaHolder = this.pressHolder;
            if (mediaHolder != null && mediaHolder == holderAt2 && this.cell.getDelegate() != null && motionEvent.getAction() == 1) {
                MessageObject messageObject = this.cell.getMessageObject();
                if (this.pressButton && z && holderAt2.radialProgress.getIcon() == 3 && messageObject != null) {
                    if (messageObject.isSending()) {
                        SendMessagesHelper.getInstance(messageObject.currentAccount).cancelSendingMessage(messageObject);
                    }
                } else {
                    ChatMessageCell.ChatMessageCellDelegate delegate = this.cell.getDelegate();
                    ChatMessageCell chatMessageCell = this.cell;
                    MediaHolder mediaHolder2 = this.pressHolder;
                    delegate.didPressGroupImage(chatMessageCell, mediaHolder2.imageReceiver, mediaHolder2.media, motionEvent.getX(), motionEvent.getY());
                }
            }
            this.pressButton = false;
            this.pressHolder = null;
        }
        this.bounce.setPressed(this.pressHolder != null);
        return this.pressHolder != null;
    }

    public MediaHolder getHolderAt(float f, float f2) {
        for (int i = 0; i < this.holders.size(); i++) {
            if (((MediaHolder) this.holders.get(i)).imageReceiver.isInsideImage(f, f2)) {
                return (MediaHolder) this.holders.get(i);
            }
        }
        return null;
    }

    public ImageReceiver getPhotoImage(int i) {
        GroupedMessages groupedMessages = this.layout;
        if (groupedMessages != null && i >= 0 && i < groupedMessages.medias.size()) {
            TLRPC.MessageExtendedMedia messageExtendedMedia = (TLRPC.MessageExtendedMedia) this.layout.medias.get(i);
            for (int i2 = 0; i2 < this.holders.size(); i2++) {
                if (((MediaHolder) this.holders.get(i2)).media == messageExtendedMedia) {
                    return ((MediaHolder) this.holders.get(i2)).imageReceiver;
                }
            }
        }
        return null;
    }

    public boolean allVisible() {
        ArrayList arrayList = this.holders;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            if (!((MediaHolder) obj).imageReceiver.getVisible()) {
                return false;
            }
        }
        return true;
    }

    public void draw(Canvas canvas) {
        if (this.layout == null) {
            return;
        }
        float f = this.animatedHidden.set(this.hidden);
        drawImages(canvas, true);
        if (this.buttonText != null && f > 0.0f) {
            float scale = this.bounce.getScale(0.05f);
            float fM1124dp = AndroidUtilities.m1124dp(28.0f) + this.buttonText.getCurrentWidth();
            float fM1124dp2 = AndroidUtilities.m1124dp(32.0f);
            RectF rectF = this.clipRect;
            int i = this.f1901x;
            int i2 = this.width;
            int i3 = this.f1902y;
            int i4 = this.height;
            rectF.set(i + ((i2 - fM1124dp) / 2.0f), i3 + ((i4 - fM1124dp2) / 2.0f), i + ((i2 + fM1124dp) / 2.0f), i3 + ((i4 + fM1124dp2) / 2.0f));
            this.clipPath.rewind();
            float f2 = fM1124dp2 / 2.0f;
            this.clipPath.addRoundRect(this.clipRect, f2, f2, Path.Direction.CW);
            canvas.save();
            canvas.scale(scale, scale, this.f1901x + (this.width / 2.0f), this.f1902y + (this.height / 2.0f));
            canvas.save();
            canvas.clipPath(this.clipPath);
            drawBlurred(canvas, f);
            canvas.drawColor(Theme.multAlpha(1342177280, f));
            this.buttonText.draw(canvas, AndroidUtilities.m1124dp(14.0f) + ((this.f1901x + (this.width / 2.0f)) - (fM1124dp / 2.0f)), this.f1902y + (this.height / 2.0f), -1, f);
            canvas.restore();
            if (isLoading()) {
                LoadingDrawable loadingDrawable = this.loadingDrawable;
                if (loadingDrawable == null) {
                    LoadingDrawable loadingDrawable2 = new LoadingDrawable();
                    this.loadingDrawable = loadingDrawable2;
                    loadingDrawable2.setCallback(this.cell);
                    this.loadingDrawable.setColors(Theme.multAlpha(-1, 0.1f), Theme.multAlpha(-1, 0.3f), Theme.multAlpha(-1, 0.35f), Theme.multAlpha(-1, 0.8f));
                    this.loadingDrawable.setAppearByGradient(true);
                    this.loadingDrawable.strokePaint.setStrokeWidth(AndroidUtilities.dpf2(1.25f));
                } else if (loadingDrawable.isDisappeared() || this.loadingDrawable.isDisappearing()) {
                    this.loadingDrawable.reset();
                    this.loadingDrawable.resetDisappear();
                }
            } else {
                LoadingDrawable loadingDrawable3 = this.loadingDrawable;
                if (loadingDrawable3 != null && !loadingDrawable3.isDisappearing() && !this.loadingDrawable.isDisappeared()) {
                    this.loadingDrawable.disappear();
                }
            }
            LoadingDrawable loadingDrawable4 = this.loadingDrawable;
            if (loadingDrawable4 != null) {
                loadingDrawable4.setBounds(this.clipRect);
                this.loadingDrawable.setRadiiDp(f2);
                this.loadingDrawable.setAlpha((int) (255.0f * f));
                this.loadingDrawable.draw(canvas);
            }
            canvas.restore();
        }
        if (this.priceText == null || f >= 1.0f || !allVisible()) {
            return;
        }
        float timeAlpha = (1.0f - f) * this.cell.getTimeAlpha();
        float fM1124dp3 = AndroidUtilities.m1124dp(11.32f) + this.priceText.getCurrentWidth();
        float fM1124dp4 = AndroidUtilities.m1124dp(17.0f);
        float fM1124dp5 = AndroidUtilities.m1124dp(5.0f);
        RectF rectF2 = this.clipRect;
        int i5 = this.f1901x;
        int i6 = this.width;
        int i7 = this.f1902y;
        rectF2.set(((i5 + i6) - fM1124dp3) - fM1124dp5, i7 + fM1124dp5, (i5 + i6) - fM1124dp5, i7 + fM1124dp5 + fM1124dp4);
        this.clipPath.rewind();
        float f3 = fM1124dp4 / 2.0f;
        this.clipPath.addRoundRect(this.clipRect, f3, f3, Path.Direction.CW);
        canvas.save();
        canvas.clipPath(this.clipPath);
        canvas.drawColor(Theme.multAlpha(TLObject.FLAG_30, timeAlpha));
        this.priceText.draw(canvas, (((this.f1901x + this.width) - fM1124dp3) - fM1124dp5) + AndroidUtilities.m1124dp(5.66f), this.f1902y + fM1124dp5 + f3, -1, timeAlpha);
        canvas.restore();
    }

    public boolean isLoading() {
        return this.cell.getDelegate() != null && this.cell.getDelegate().isProgressLoading(this.cell, 5);
    }

    public void drawBlurRect(Canvas canvas, RectF rectF, float f, float f2) {
        canvas.save();
        this.clipPath.rewind();
        this.clipPath.addRoundRect(rectF, f, f, Path.Direction.CW);
        canvas.clipPath(this.clipPath);
        canvas.drawColor(TLObject.FLAG_30);
        canvas.restore();
    }

    public void checkBlurBitmap() {
        int id = this.cell.getMessageObject() != null ? this.cell.getMessageObject().getId() : 0;
        int i = this.width;
        int i2 = this.height;
        int iMax = (int) Math.max(1.0f, i > i2 ? 100.0f : (i / i2) * 100.0f);
        int i3 = this.height;
        int i4 = this.width;
        int iMax2 = (int) Math.max(1.0f, i3 <= i4 ? 100.0f * (i3 / i4) : 100.0f);
        int i5 = 0;
        for (int i6 = 0; i6 < this.holders.size(); i6++) {
            MediaHolder mediaHolder = (MediaHolder) this.holders.get(i6);
            if (mediaHolder.imageReceiver.hasImageSet() && mediaHolder.imageReceiver.getBitmap() != null) {
                i5 |= 1 << i6;
            }
        }
        Bitmap bitmap = this.blurBitmap;
        if (bitmap != null && this.blurBitmapMessageId == id && this.blurBitmapState == i5 && this.blurBitmapWidth == iMax && this.blurBitmapHeight == iMax2) {
            return;
        }
        this.blurBitmapState = i5;
        this.blurBitmapMessageId = id;
        this.blurBitmapWidth = iMax;
        this.blurBitmapHeight = iMax2;
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.blurBitmap = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.blurBitmap);
        float f = iMax;
        int i7 = this.width;
        canvas.scale(f / i7, f / i7);
        for (int i8 = 0; i8 < this.holders.size(); i8++) {
            MediaHolder mediaHolder2 = (MediaHolder) this.holders.get(i8);
            mediaHolder2.imageReceiver.setImageCoords(mediaHolder2.f1905l, mediaHolder2.f1907t, mediaHolder2.f1906r - r4, mediaHolder2.f1903b - r6);
            mediaHolder2.imageReceiver.draw(canvas);
        }
        Utilities.stackBlurBitmap(this.blurBitmap, 12);
        if (this.blurBitmapPaint == null) {
            this.blurBitmapPaint = new Paint(3);
            ColorMatrix colorMatrix = new ColorMatrix();
            colorMatrix.setSaturation(1.5f);
            this.blurBitmapPaint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        }
    }

    public void drawBlurred(Canvas canvas, float f) {
        if (this.layout == null) {
            return;
        }
        checkBlurBitmap();
        if (this.blurBitmap != null) {
            canvas.save();
            canvas.translate(this.f1901x, this.f1902y);
            canvas.scale(this.width / this.blurBitmap.getWidth(), this.width / this.blurBitmap.getWidth());
            this.blurBitmapPaint.setAlpha((int) (f * 255.0f));
            canvas.drawBitmap(this.blurBitmap, 0.0f, 0.0f, this.blurBitmapPaint);
            canvas.restore();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void drawImages(Canvas canvas, boolean z) {
        Canvas canvas2 = canvas;
        float f = this.animatedHidden.set(this.hidden);
        MessageObject messageObject = this.cell.getMessageObject();
        this.clipPath2.rewind();
        float fMin = Float.MAX_VALUE;
        float fMax = Float.MIN_VALUE;
        float fMax2 = Float.MIN_VALUE;
        int i = 0;
        float fMin2 = Float.MAX_VALUE;
        while (i < this.holders.size()) {
            MediaHolder mediaHolder = (MediaHolder) this.holders.get(i);
            ImageReceiver imageReceiver = mediaHolder.imageReceiver;
            int i2 = this.f1901x;
            int i3 = mediaHolder.f1905l;
            int i4 = this.f1902y;
            int i5 = mediaHolder.f1907t;
            imageReceiver.setImageCoords(i2 + i3, i4 + i5, mediaHolder.f1906r - i3, mediaHolder.f1903b - i5);
            mediaHolder.imageReceiver.draw(canvas2);
            if (mediaHolder.imageReceiver.getAnimation() != null) {
                mediaHolder.setTime(Math.round(mediaHolder.imageReceiver.getAnimation().currentTime / 1000.0f));
            }
            if (f > 0.0f) {
                fMin = Math.min(this.f1901x + mediaHolder.f1905l, fMin);
                fMin2 = Math.min(this.f1902y + mediaHolder.f1907t, fMin2);
                fMax = Math.max(this.f1901x + mediaHolder.f1906r, fMax);
                fMax2 = Math.max(this.f1902y + mediaHolder.f1903b, fMax2);
                RectF rectF = AndroidUtilities.rectTmp;
                float f2 = mediaHolder.f1905l + this.f1901x;
                int i6 = this.f1902y;
                rectF.set(f2, mediaHolder.f1907t + i6, r11 + mediaHolder.f1906r, i6 + mediaHolder.f1903b);
                this.clipPath2.addRoundRect(rectF, mediaHolder.radii, Path.Direction.CW);
            }
            mediaHolder.radialProgress.setColorKeys(Theme.key_chat_mediaLoaderPhoto, Theme.key_chat_mediaLoaderPhotoSelected, Theme.key_chat_mediaLoaderPhotoIcon, Theme.key_chat_mediaLoaderPhotoIconSelected);
            float f3 = fMin;
            mediaHolder.radialProgress.setProgressRect(mediaHolder.imageReceiver.getImageX() + ((mediaHolder.imageReceiver.getImageWidth() / 2.0f) - mediaHolder.radialProgress.getRadius()), mediaHolder.imageReceiver.getImageY() + ((mediaHolder.imageReceiver.getImageHeight() / 2.0f) - mediaHolder.radialProgress.getRadius()), mediaHolder.imageReceiver.getImageX() + (mediaHolder.imageReceiver.getImageWidth() / 2.0f) + mediaHolder.radialProgress.getRadius(), mediaHolder.imageReceiver.getImageY() + (mediaHolder.imageReceiver.getImageHeight() / 2.0f) + mediaHolder.radialProgress.getRadius());
            if (messageObject.isSending()) {
                SendMessagesHelper sendMessagesHelper = SendMessagesHelper.getInstance(messageObject.currentAccount);
                long[] fileProgressSizes = ImageLoader.getInstance().getFileProgressSizes(mediaHolder.attachPath);
                boolean zIsSendingPaidMessage = sendMessagesHelper.isSendingPaidMessage(messageObject.getId(), i);
                if (fileProgressSizes == null && zIsSendingPaidMessage) {
                    mediaHolder.radialProgress.setProgress(1.0f, true);
                    mediaHolder.setIcon(mediaHolder.album ? 6 : mediaHolder.getDefaultIcon());
                }
            } else if (FileLoader.getInstance(messageObject.currentAccount).isLoadingFile(mediaHolder.filename)) {
                mediaHolder.setIcon(3);
            } else {
                mediaHolder.setIcon(mediaHolder.getDefaultIcon());
            }
            canvas2.saveLayerAlpha(mediaHolder.radialProgress.getProgressRect(), (int) ((1.0f - f) * 255.0f), 31);
            mediaHolder.radialProgress.draw(canvas2);
            canvas2.restore();
            i++;
            fMin = f3;
        }
        if (f > 0.0f && z) {
            canvas2.save();
            canvas2.clipPath(this.clipPath2);
            canvas2.translate(fMin, fMin2);
            int i7 = (int) (fMax - fMin);
            int i8 = (int) (fMax2 - fMin2);
            canvas.saveLayerAlpha(0.0f, 0.0f, i7, i8, (int) (f * 255.0f), 31);
            SpoilerEffect2 spoilerEffect2 = this.spoilerEffect;
            ChatMessageCell chatMessageCell = this.cell;
            canvas2 = canvas;
            spoilerEffect2.draw(canvas2, chatMessageCell, i7, i8, 1.0f, chatMessageCell.drawingToBitmap);
            canvas2.restore();
            canvas2.restore();
            this.cell.invalidate();
        }
        int i9 = 0;
        while (i9 < this.holders.size()) {
            MediaHolder mediaHolder2 = (MediaHolder) this.holders.get(i9);
            if (mediaHolder2.durationText != null) {
                float fM1124dp = AndroidUtilities.m1124dp(11.4f) + mediaHolder2.durationText.getCurrentWidth();
                float fM1124dp2 = AndroidUtilities.m1124dp(17.0f);
                float fM1124dp3 = AndroidUtilities.m1124dp(5.0f);
                RectF rectF2 = this.clipRect;
                int i10 = this.f1901x;
                int i11 = mediaHolder2.f1905l;
                int i12 = this.f1902y;
                int i13 = mediaHolder2.f1907t;
                rectF2.set(i10 + i11 + fM1124dp3, i12 + i13 + fM1124dp3, i10 + i11 + fM1124dp3 + fM1124dp, i12 + i13 + fM1124dp3 + fM1124dp2);
                if (this.priceText == null || this.clipRect.right <= ((this.f1901x + this.width) - (AndroidUtilities.m1124dp(11.32f) + this.priceText.getCurrentWidth())) - fM1124dp3 || this.clipRect.top > this.f1902y + fM1124dp3) {
                    this.clipPath.rewind();
                    float f4 = fM1124dp2 / 2.0f;
                    this.clipPath.addRoundRect(this.clipRect, f4, f4, Path.Direction.CW);
                    canvas2.save();
                    canvas2.clipPath(this.clipPath);
                    drawBlurred(canvas2, f);
                    canvas2.drawColor(Theme.multAlpha(TLObject.FLAG_30, 1.0f));
                    mediaHolder2.durationText.draw(canvas2, this.f1901x + mediaHolder2.f1905l + fM1124dp3 + AndroidUtilities.m1124dp(5.66f), f4 + this.f1902y + mediaHolder2.f1907t + fM1124dp3, -1, 1.0f);
                    canvas.restore();
                }
            }
            i9++;
            canvas2 = canvas;
        }
    }

    public static class MediaHolder implements DownloadController.FileDownloadProgressListener {
        private final int TAG;
        public boolean album;
        public String attachPath;
        public boolean attached;
        public boolean autoplay;

        /* JADX INFO: renamed from: b */
        public int f1903b;
        public final ChatMessageCell cell;
        private int duration;
        private Text durationText;
        private int durationValue;
        public String filename;

        /* JADX INFO: renamed from: h */
        private final int f1904h;
        public boolean hidden;
        public int icon;
        public final ImageReceiver imageReceiver;

        /* JADX INFO: renamed from: l */
        public int f1905l;
        public TLRPC.MessageExtendedMedia media;

        /* JADX INFO: renamed from: r */
        public int f1906r;
        public final RadialProgress2 radialProgress;

        /* JADX INFO: renamed from: t */
        public int f1907t;
        public boolean video;

        /* JADX INFO: renamed from: w */
        private final int f1908w;
        public final float[] radii = new float[8];
        public final RectF clipRect = new RectF();
        public final Path clipPath = new Path();

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onFailedDownload(String str, boolean z) {
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onSuccessDownload(String str) {
        }

        public void setIcon(int i) {
            if (i != this.icon) {
                RadialProgress2 radialProgress2 = this.radialProgress;
                this.icon = i;
                radialProgress2.setIcon(i, true, true);
            }
        }

        public void setTime(int i) {
            int iMax;
            if (this.video || this.durationValue == (iMax = Math.max(0, this.duration - i))) {
                return;
            }
            this.durationValue = iMax;
            this.durationText = new Text(AndroidUtilities.formatLongDuration(iMax), 12.0f);
        }

        public MediaHolder(ChatMessageCell chatMessageCell, MessageObject messageObject, TLRPC.MessageExtendedMedia messageExtendedMedia, boolean z, int i, int i2) {
            this.icon = 4;
            this.duration = 0;
            this.durationValue = 0;
            this.cell = chatMessageCell;
            this.album = z;
            this.video = false;
            if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) {
                TLRPC.MessageMedia messageMedia = ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media;
                this.video = (messageMedia instanceof TLRPC.TL_messageMediaDocument) && MessageObject.isVideoDocument(messageMedia.document);
                this.duration = (int) Math.max(1L, Math.round(MessageObject.getDocumentDuration(messageMedia.document)));
            } else if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMediaPreview) {
                TLRPC.TL_messageExtendedMediaPreview tL_messageExtendedMediaPreview = (TLRPC.TL_messageExtendedMediaPreview) messageExtendedMedia;
                this.video = (4 & tL_messageExtendedMediaPreview.flags) != 0;
                this.duration = tL_messageExtendedMediaPreview.video_duration;
            }
            if (this.video) {
                int i3 = this.duration;
                this.durationValue = i3;
                this.durationText = new Text(AndroidUtilities.formatLongDuration(i3), 12.0f);
            }
            ImageReceiver imageReceiver = new ImageReceiver(chatMessageCell);
            this.imageReceiver = imageReceiver;
            imageReceiver.setColorFilter(null);
            this.f1908w = i;
            this.f1904h = i2;
            this.TAG = DownloadController.getInstance(chatMessageCell.currentAccount).generateObserverTag();
            updateMedia(messageExtendedMedia, messageObject);
            RadialProgress2 radialProgress2 = new RadialProgress2(chatMessageCell, chatMessageCell.getResourcesProvider());
            this.radialProgress = radialProgress2;
            int defaultIcon = getDefaultIcon();
            this.icon = defaultIcon;
            radialProgress2.setIcon(defaultIcon, false, false);
        }

        public void updateMedia(TLRPC.MessageExtendedMedia messageExtendedMedia, MessageObject messageObject) {
            TLRPC.Document document;
            if (this.media == messageExtendedMedia) {
                return;
            }
            this.media = messageExtendedMedia;
            this.autoplay = false;
            String str = this.f1908w + "_" + this.f1904h;
            if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMediaPreview) {
                this.hidden = true;
                this.filename = null;
                this.imageReceiver.setImage(ImageLocation.getForObject(((TLRPC.TL_messageExtendedMediaPreview) messageExtendedMedia).thumb, messageObject.messageOwner), str + "_b2", null, null, messageObject, 0);
                ColorMatrix colorMatrix = new ColorMatrix();
                colorMatrix.setSaturation(1.4f);
                AndroidUtilities.adjustBrightnessColorMatrix(colorMatrix, -0.1f);
                this.imageReceiver.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
                return;
            }
            if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) {
                boolean z = messageObject.isRepostPreview;
                this.hidden = z;
                if (z) {
                    str = str + "_b3";
                }
                this.imageReceiver.setColorFilter(null);
                TLRPC.MessageMedia messageMedia = ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media;
                this.filename = MessageObject.getFileName(messageMedia);
                if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
                    TLRPC.TL_messageMediaPhoto tL_messageMediaPhoto = (TLRPC.TL_messageMediaPhoto) messageMedia;
                    TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tL_messageMediaPhoto.photo.sizes, AndroidUtilities.getPhotoSize(), true, null, true);
                    this.imageReceiver.setImage(ImageLocation.getForPhoto(closestPhotoSizeWithSize, tL_messageMediaPhoto.photo), str, ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(tL_messageMediaPhoto.photo.sizes, Math.min(this.f1908w, this.f1904h) / 100, false, closestPhotoSizeWithSize, false), tL_messageMediaPhoto.photo), str, 0L, null, messageObject, 0);
                    return;
                }
                if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
                    TLRPC.TL_messageMediaDocument tL_messageMediaDocument = (TLRPC.TL_messageMediaDocument) messageMedia;
                    this.autoplay = !this.hidden && !this.album && this.video && SharedConfig.isAutoplayVideo();
                    if (!this.album && this.video && (document = tL_messageMediaDocument.document) != null) {
                        TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, AndroidUtilities.getPhotoSize(), true, null, true);
                        TLRPC.PhotoSize closestPhotoSizeWithSize3 = FileLoader.getClosestPhotoSizeWithSize(tL_messageMediaDocument.document.thumbs, Math.min(this.f1908w, this.f1904h), false, closestPhotoSizeWithSize2, false);
                        ImageLocation forDocument = ImageLocation.getForDocument(tL_messageMediaDocument.document);
                        ImageLocation forDocument2 = ImageLocation.getForDocument(closestPhotoSizeWithSize2, tL_messageMediaDocument.document);
                        ImageLocation forDocument3 = ImageLocation.getForDocument(closestPhotoSizeWithSize3, tL_messageMediaDocument.document);
                        ImageLocation imageLocation = forDocument;
                        ImageReceiver imageReceiver = this.imageReceiver;
                        if (!this.autoplay) {
                            imageLocation = null;
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append(str);
                        sb.append(this.autoplay ? "_g" : _UrlKt.FRAGMENT_ENCODE_SET);
                        imageReceiver.setImage(imageLocation, sb.toString(), forDocument2, str, forDocument3, str, null, 0L, null, messageObject, 0);
                        return;
                    }
                    TLRPC.Document document2 = tL_messageMediaDocument.document;
                    if (document2 != null) {
                        TLRPC.PhotoSize closestPhotoSizeWithSize4 = FileLoader.getClosestPhotoSizeWithSize(document2.thumbs, AndroidUtilities.getPhotoSize(), true, null, true);
                        this.imageReceiver.setImage(ImageLocation.getForDocument(closestPhotoSizeWithSize4, tL_messageMediaDocument.document), str, ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(tL_messageMediaDocument.document.thumbs, Math.min(this.f1908w, this.f1904h), false, closestPhotoSizeWithSize4, false), tL_messageMediaDocument.document), str, 0L, null, messageObject, 0);
                    }
                }
            }
        }

        public void attach() {
            if (this.attached) {
                return;
            }
            this.attached = true;
            this.imageReceiver.onAttachedToWindow();
        }

        public void detach() {
            if (this.attached) {
                this.attached = false;
                this.imageReceiver.onDetachedFromWindow();
            }
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressDownload(String str, long j, long j2) {
            float fMin = j2 == 0 ? 0.0f : Math.min(1.0f, j / j2);
            RadialProgress2 radialProgress2 = this.radialProgress;
            this.media.downloadProgress = fMin;
            radialProgress2.setProgress(fMin, true);
            setIcon(fMin < 1.0f ? 3 : getDefaultIcon());
            this.cell.invalidate();
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressUpload(String str, long j, long j2, boolean z) {
            int defaultIcon;
            float fMin = j2 == 0 ? 0.0f : Math.min(1.0f, j / j2);
            RadialProgress2 radialProgress2 = this.radialProgress;
            this.media.uploadProgress = fMin;
            radialProgress2.setProgress(fMin, true);
            if (fMin < 1.0f) {
                defaultIcon = 3;
            } else {
                defaultIcon = this.album ? 6 : getDefaultIcon();
            }
            setIcon(defaultIcon);
            this.cell.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getDefaultIcon() {
            return (!this.video || this.autoplay) ? 4 : 0;
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public int getObserverTag() {
            return this.TAG;
        }
    }

    public void onAttachedToWindow() {
        if (this.attached) {
            return;
        }
        this.attached = true;
        SpoilerEffect2 spoilerEffect2 = this.spoilerEffect;
        if (spoilerEffect2 != null) {
            spoilerEffect2.attach(this.cell);
        }
        for (int i = 0; i < this.holders.size(); i++) {
            ((MediaHolder) this.holders.get(i)).attach();
        }
    }

    public void onDetachedFromWindow() {
        if (this.attached) {
            this.attached = false;
            SpoilerEffect2 spoilerEffect2 = this.spoilerEffect;
            if (spoilerEffect2 != null) {
                spoilerEffect2.detach(this.cell);
            }
            for (int i = 0; i < this.holders.size(); i++) {
                ((MediaHolder) this.holders.get(i)).detach();
            }
        }
    }

    public static class GroupedMessages {
        public boolean hasSibling;
        float height;
        int maxX;
        int maxY;
        int width;
        public ArrayList medias = new ArrayList();
        public ArrayList posArray = new ArrayList();
        public HashMap positions = new HashMap();
        public int maxSizeWidth = 800;
        public float maxSizeHeight = 814.0f;
        public final TransitionParams transitionParams = new TransitionParams();

        public static class TransitionParams {
            public float captionEnterProgress = 1.0f;
        }

        public MessageObject.GroupedMessagePosition getPosition(TLRPC.MessageExtendedMedia messageExtendedMedia) {
            if (messageExtendedMedia == null) {
                return null;
            }
            return (MessageObject.GroupedMessagePosition) this.positions.get(messageExtendedMedia);
        }

        private static class MessageGroupedLayoutAttempt {
            public float[] heights;
            public int[] lineCounts;

            public MessageGroupedLayoutAttempt(int i, int i2, float f, float f2) {
                this.lineCounts = new int[]{i, i2};
                this.heights = new float[]{f, f2};
            }

            public MessageGroupedLayoutAttempt(int i, int i2, int i3, float f, float f2, float f3) {
                this.lineCounts = new int[]{i, i2, i3};
                this.heights = new float[]{f, f2, f3};
            }

            public MessageGroupedLayoutAttempt(int i, int i2, int i3, int i4, float f, float f2, float f3, float f4) {
                this.lineCounts = new int[]{i, i2, i3, i4};
                this.heights = new float[]{f, f2, f3, f4};
            }
        }

        private float multiHeight(float[] fArr, int i, int i2) {
            float f = 0.0f;
            while (i < i2) {
                f += fArr[i];
                i++;
            }
            return this.maxSizeWidth / f;
        }

        /* JADX WARN: Removed duplicated region for block: B:142:0x0635  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0096  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0099  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x009b  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00a2  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x020c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void calculate() {
            int i;
            float f;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            int i9;
            float f2;
            float f3;
            float f4;
            float f5;
            TLRPC.Document document;
            TLRPC.PhotoSize closestPhotoSizeWithSize;
            this.posArray.clear();
            this.positions.clear();
            this.maxX = 0;
            int size = this.medias.size();
            if (size == 0) {
                this.width = 0;
                this.height = 0.0f;
                this.maxY = 0;
                return;
            }
            this.maxSizeWidth = 800;
            StringBuilder sb = new StringBuilder();
            this.hasSibling = false;
            int i10 = 0;
            boolean z = false;
            float f6 = 1.0f;
            while (i10 < size) {
                TLRPC.MessageExtendedMedia messageExtendedMedia = (TLRPC.MessageExtendedMedia) this.medias.get(i10);
                MessageObject.GroupedMessagePosition groupedMessagePosition = new MessageObject.GroupedMessagePosition();
                groupedMessagePosition.last = i10 == size + (-1);
                if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMediaPreview) {
                    TLRPC.TL_messageExtendedMediaPreview tL_messageExtendedMediaPreview = (TLRPC.TL_messageExtendedMediaPreview) messageExtendedMedia;
                    groupedMessagePosition.photoWidth = tL_messageExtendedMediaPreview.f1749w;
                    groupedMessagePosition.photoHeight = tL_messageExtendedMediaPreview.f1748h;
                    f5 = 2.0f;
                } else if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) {
                    TLRPC.MessageMedia messageMedia = ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media;
                    f5 = 2.0f;
                    if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
                        TLRPC.Photo photo = ((TLRPC.TL_messageMediaPhoto) messageMedia).photo;
                        closestPhotoSizeWithSize = photo == null ? null : FileLoader.getClosestPhotoSizeWithSize(photo.sizes, AndroidUtilities.getPhotoSize());
                        groupedMessagePosition.photoWidth = closestPhotoSizeWithSize != null ? 100 : closestPhotoSizeWithSize.f1694w;
                        groupedMessagePosition.photoHeight = closestPhotoSizeWithSize != null ? closestPhotoSizeWithSize.f1693h : 100;
                    } else {
                        if ((messageMedia instanceof TLRPC.TL_messageMediaDocument) && (document = ((TLRPC.TL_messageMediaDocument) messageMedia).document) != null) {
                            closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, AndroidUtilities.getPhotoSize());
                        }
                        groupedMessagePosition.photoWidth = closestPhotoSizeWithSize != null ? 100 : closestPhotoSizeWithSize.f1694w;
                        groupedMessagePosition.photoHeight = closestPhotoSizeWithSize != null ? closestPhotoSizeWithSize.f1693h : 100;
                    }
                } else {
                    f5 = 2.0f;
                    groupedMessagePosition.photoWidth = 100;
                    groupedMessagePosition.photoHeight = 100;
                }
                if (groupedMessagePosition.photoWidth <= 0 || groupedMessagePosition.photoHeight <= 0) {
                    groupedMessagePosition.photoWidth = 50;
                    groupedMessagePosition.photoHeight = 50;
                }
                float f7 = groupedMessagePosition.photoWidth / groupedMessagePosition.photoHeight;
                groupedMessagePosition.aspectRatio = f7;
                if (f7 > 1.2f) {
                    sb.append("w");
                } else if (f7 < 0.8f) {
                    sb.append("n");
                } else {
                    sb.append("q");
                }
                float f8 = groupedMessagePosition.aspectRatio;
                f6 += f8;
                if (f8 > f5) {
                    z = true;
                }
                this.positions.put(messageExtendedMedia, groupedMessagePosition);
                this.posArray.add(groupedMessagePosition);
                i10++;
            }
            int iM1124dp = AndroidUtilities.m1124dp(120.0f);
            float fM1124dp = AndroidUtilities.m1124dp(120.0f);
            Point point = AndroidUtilities.displaySize;
            int iMin = (int) (fM1124dp / (Math.min(point.x, point.y) / this.maxSizeWidth));
            float fM1124dp2 = AndroidUtilities.m1124dp(40.0f);
            Point point2 = AndroidUtilities.displaySize;
            float fMin = Math.min(point2.x, point2.y);
            int i11 = this.maxSizeWidth;
            int i12 = (int) (fM1124dp2 / (fMin / i11));
            float f9 = i11 / this.maxSizeHeight;
            float f10 = f6 / size;
            float fM1124dp3 = AndroidUtilities.m1124dp(100.0f) / this.maxSizeHeight;
            if (size == 1) {
                MessageObject.GroupedMessagePosition groupedMessagePosition2 = (MessageObject.GroupedMessagePosition) this.posArray.get(0);
                float f11 = groupedMessagePosition2.aspectRatio;
                if (f11 >= 1.0f) {
                    int i13 = this.maxSizeWidth;
                    f3 = i13;
                    f4 = ((f3 / f11) / i13) * this.maxSizeHeight;
                } else {
                    float f12 = this.maxSizeHeight;
                    f3 = this.maxSizeWidth * ((f11 * f12) / f12);
                    f4 = f12;
                }
                groupedMessagePosition2.set(0, 0, 0, 0, (int) f3, f4 / this.maxSizeHeight, 15);
                i = 0;
            } else {
                int i14 = 4;
                int i15 = 3;
                if (z || !(size == 2 || size == 3 || size == 4)) {
                    float f13 = 1.0f;
                    int size2 = this.posArray.size();
                    float[] fArr = new float[size2];
                    int i16 = 0;
                    while (i16 < size) {
                        if (f10 > 1.1f) {
                            f2 = f13;
                            fArr[i16] = Math.max(f2, ((MessageObject.GroupedMessagePosition) this.posArray.get(i16)).aspectRatio);
                        } else {
                            f2 = f13;
                            fArr[i16] = Math.min(f2, ((MessageObject.GroupedMessagePosition) this.posArray.get(i16)).aspectRatio);
                        }
                        fArr[i16] = Math.max(0.66667f, Math.min(1.7f, fArr[i16]));
                        i16++;
                        f13 = f2;
                    }
                    ArrayList arrayList = new ArrayList();
                    int i17 = 1;
                    while (i17 < size2) {
                        int i18 = size2 - i17;
                        if (i17 > 3 || i18 > 3) {
                            i9 = i14;
                        } else {
                            i9 = i14;
                            arrayList.add(new MessageGroupedLayoutAttempt(i17, i18, multiHeight(fArr, 0, i17), multiHeight(fArr, i17, size2)));
                        }
                        i17++;
                        i14 = i9;
                    }
                    int i19 = i14;
                    int i20 = 1;
                    while (i20 < size2 - 1) {
                        int i21 = 1;
                        while (true) {
                            int i22 = size2 - i20;
                            if (i21 < i22) {
                                int i23 = i22 - i21;
                                if (i20 > 3) {
                                    i7 = i20;
                                    i8 = i21;
                                } else if (i21 <= (f10 < 0.85f ? i19 : 3) && i23 <= 3) {
                                    int i24 = i20 + i21;
                                    i7 = i20;
                                    i8 = i21;
                                    arrayList.add(new MessageGroupedLayoutAttempt(i7, i8, i23, multiHeight(fArr, 0, i20), multiHeight(fArr, i20, i24), multiHeight(fArr, i24, size2)));
                                }
                                i21 = i8 + 1;
                                i20 = i7;
                            }
                        }
                        i20++;
                    }
                    int i25 = 1;
                    while (i25 < size2 - 2) {
                        int i26 = 1;
                        while (true) {
                            int i27 = size2 - i25;
                            if (i26 < i27) {
                                int i28 = 1;
                                while (true) {
                                    int i29 = i27 - i26;
                                    if (i28 < i29) {
                                        int i30 = i29 - i28;
                                        if (i25 > i15 || i26 > i15 || i28 > i15 || i30 > i15) {
                                            i3 = i25;
                                            i4 = i26;
                                            i5 = i28;
                                            i6 = i15;
                                        } else {
                                            int i31 = i25 + i26;
                                            i6 = i15;
                                            int i32 = i31 + i28;
                                            i3 = i25;
                                            i4 = i26;
                                            i5 = i28;
                                            arrayList.add(new MessageGroupedLayoutAttempt(i3, i4, i5, i30, multiHeight(fArr, 0, i25), multiHeight(fArr, i25, i31), multiHeight(fArr, i31, i32), multiHeight(fArr, i32, size2)));
                                        }
                                        i28 = i5 + 1;
                                        i15 = i6;
                                        i25 = i3;
                                        i26 = i4;
                                    }
                                }
                                i26++;
                            }
                        }
                        i25++;
                    }
                    int i33 = i15;
                    float f14 = (this.maxSizeWidth / 3) * 4;
                    int i34 = 0;
                    MessageGroupedLayoutAttempt messageGroupedLayoutAttempt = null;
                    float f15 = 0.0f;
                    while (i34 < arrayList.size()) {
                        MessageGroupedLayoutAttempt messageGroupedLayoutAttempt2 = (MessageGroupedLayoutAttempt) arrayList.get(i34);
                        float f16 = Float.MAX_VALUE;
                        int i35 = 0;
                        float f17 = 0.0f;
                        while (true) {
                            float[] fArr2 = messageGroupedLayoutAttempt2.heights;
                            if (i35 >= fArr2.length) {
                                break;
                            }
                            float f18 = fArr2[i35];
                            f17 += f18;
                            if (f18 < f16) {
                                f16 = f18;
                            }
                            i35++;
                        }
                        float fAbs = Math.abs(f17 - f14);
                        int[] iArr = messageGroupedLayoutAttempt2.lineCounts;
                        if (iArr.length > 1) {
                            int i36 = iArr[0];
                            int i37 = iArr[1];
                            if (i36 <= i37) {
                                f = f14;
                                if (iArr.length <= 2 || i37 <= iArr[2]) {
                                    i2 = i33;
                                    if (iArr.length > i2 && iArr[2] > iArr[i2]) {
                                    }
                                }
                                fAbs *= 1.2f;
                            } else {
                                f = f14;
                            }
                            i2 = i33;
                            fAbs *= 1.2f;
                        } else {
                            f = f14;
                            i2 = i33;
                        }
                        if (f16 < iMin) {
                            fAbs *= 1.5f;
                        }
                        if (messageGroupedLayoutAttempt == null || fAbs < f15) {
                            messageGroupedLayoutAttempt = messageGroupedLayoutAttempt2;
                            f15 = fAbs;
                        }
                        i34++;
                        i33 = i2;
                        f14 = f;
                    }
                    i = 0;
                    if (messageGroupedLayoutAttempt == null) {
                        return;
                    }
                    int i38 = 0;
                    int i39 = 0;
                    while (true) {
                        int[] iArr2 = messageGroupedLayoutAttempt.lineCounts;
                        if (i39 >= iArr2.length) {
                            break;
                        }
                        int i40 = iArr2[i39];
                        float f19 = messageGroupedLayoutAttempt.heights[i39];
                        int i41 = this.maxSizeWidth;
                        int i42 = i40 - 1;
                        this.maxX = Math.max(this.maxX, i42);
                        int i43 = i41;
                        int i44 = 0;
                        MessageObject.GroupedMessagePosition groupedMessagePosition3 = null;
                        while (i44 < i40) {
                            int i45 = (int) (fArr[i38] * f19);
                            i43 -= i45;
                            MessageObject.GroupedMessagePosition groupedMessagePosition4 = (MessageObject.GroupedMessagePosition) this.posArray.get(i38);
                            int i46 = i39 == 0 ? i19 : 0;
                            if (i39 == messageGroupedLayoutAttempt.lineCounts.length - 1) {
                                i46 |= 8;
                            }
                            if (i44 == 0) {
                                i46 |= 1;
                            }
                            if (i44 == i42) {
                                i46 |= 2;
                                groupedMessagePosition3 = groupedMessagePosition4;
                            }
                            int i47 = i44;
                            groupedMessagePosition4.set(i47, i44, i39, i39, i45, Math.max(fM1124dp3, f19 / this.maxSizeHeight), i46);
                            i38++;
                            i44 = i47 + 1;
                        }
                        groupedMessagePosition3.f1598pw += i43;
                        groupedMessagePosition3.spanSize += i43;
                        i39++;
                    }
                } else {
                    if (size == 2) {
                        MessageObject.GroupedMessagePosition groupedMessagePosition5 = (MessageObject.GroupedMessagePosition) this.posArray.get(0);
                        MessageObject.GroupedMessagePosition groupedMessagePosition6 = (MessageObject.GroupedMessagePosition) this.posArray.get(1);
                        String string = sb.toString();
                        if (!string.equals("ww") || f10 <= ((double) f9) * 1.4d) {
                            if (string.equals("ww") || string.equals("qq")) {
                                int i48 = this.maxSizeWidth / 2;
                                float f20 = i48;
                                float fRound = Math.round(Math.min(f20 / groupedMessagePosition5.aspectRatio, Math.min(f20 / groupedMessagePosition6.aspectRatio, this.maxSizeHeight))) / this.maxSizeHeight;
                                groupedMessagePosition5.set(0, 0, 0, 0, i48, fRound, 13);
                                groupedMessagePosition6.set(1, 1, 0, 0, i48, fRound, 14);
                                this.maxX = 1;
                            } else {
                                int i49 = this.maxSizeWidth;
                                float f21 = groupedMessagePosition5.aspectRatio;
                                int iMax = (int) Math.max(i49 * 0.4f, Math.round((i49 / f21) / ((1.0f / f21) + (1.0f / groupedMessagePosition6.aspectRatio))));
                                int i50 = this.maxSizeWidth - iMax;
                                if (i50 < iMin) {
                                    iMax -= iMin - i50;
                                } else {
                                    iMin = i50;
                                }
                                float fMin2 = Math.min(this.maxSizeHeight, Math.round(Math.min(iMin / groupedMessagePosition5.aspectRatio, iMax / groupedMessagePosition6.aspectRatio))) / this.maxSizeHeight;
                                groupedMessagePosition5.set(0, 0, 0, 0, iMin, fMin2, 13);
                                groupedMessagePosition6.set(1, 1, 0, 0, iMax, fMin2, 14);
                                this.maxX = 1;
                            }
                            size = size;
                        } else {
                            float f22 = groupedMessagePosition5.aspectRatio;
                            float f23 = groupedMessagePosition6.aspectRatio;
                            if (f22 - f23 < 0.2d) {
                                int i51 = this.maxSizeWidth;
                                float fRound2 = Math.round(Math.min(i51 / f22, Math.min(i51 / f23, this.maxSizeHeight / 2.0f))) / this.maxSizeHeight;
                                groupedMessagePosition5.set(0, 0, 0, 0, this.maxSizeWidth, fRound2, 7);
                                groupedMessagePosition6.set(0, 0, 1, 1, this.maxSizeWidth, fRound2, 11);
                            }
                            size = size;
                        }
                    } else if (size == 3) {
                        MessageObject.GroupedMessagePosition groupedMessagePosition7 = (MessageObject.GroupedMessagePosition) this.posArray.get(0);
                        MessageObject.GroupedMessagePosition groupedMessagePosition8 = (MessageObject.GroupedMessagePosition) this.posArray.get(1);
                        MessageObject.GroupedMessagePosition groupedMessagePosition9 = (MessageObject.GroupedMessagePosition) this.posArray.get(2);
                        if (sb.charAt(0) == 'n') {
                            float f24 = this.maxSizeHeight * 0.5f;
                            float f25 = groupedMessagePosition8.aspectRatio;
                            float fMin3 = Math.min(f24, Math.round((this.maxSizeWidth * f25) / (groupedMessagePosition9.aspectRatio + f25)));
                            float f26 = this.maxSizeHeight - fMin3;
                            int iMax2 = (int) Math.max(iMin, Math.min(this.maxSizeWidth * 0.5f, Math.round(Math.min(groupedMessagePosition9.aspectRatio * fMin3, groupedMessagePosition8.aspectRatio * f26))));
                            int iRound = Math.round(Math.min((this.maxSizeHeight * groupedMessagePosition7.aspectRatio) + i12, this.maxSizeWidth - iMax2));
                            groupedMessagePosition7.set(0, 0, 0, 1, iRound, 1.0f, 13);
                            groupedMessagePosition8.set(1, 1, 0, 0, iMax2, f26 / this.maxSizeHeight, 6);
                            groupedMessagePosition9.set(1, 1, 1, 1, iMax2, fMin3 / this.maxSizeHeight, 10);
                            int i52 = this.maxSizeWidth;
                            groupedMessagePosition9.spanSize = i52;
                            float f27 = this.maxSizeHeight;
                            groupedMessagePosition7.siblingHeights = new float[]{fMin3 / f27, f26 / f27};
                            groupedMessagePosition8.spanSize = i52 - iRound;
                            groupedMessagePosition9.leftSpanOffset = iRound;
                            this.hasSibling = true;
                            this.maxX = 1;
                        } else {
                            float fRound3 = Math.round(Math.min(this.maxSizeWidth / groupedMessagePosition7.aspectRatio, this.maxSizeHeight * 0.66f)) / this.maxSizeHeight;
                            groupedMessagePosition7.set(0, 1, 0, 0, this.maxSizeWidth, fRound3, 7);
                            int i53 = this.maxSizeWidth / 2;
                            float f28 = i53;
                            float fMin4 = Math.min(this.maxSizeHeight - fRound3, Math.round(Math.min(f28 / groupedMessagePosition8.aspectRatio, f28 / groupedMessagePosition9.aspectRatio))) / this.maxSizeHeight;
                            float f29 = fMin4 < fM1124dp3 ? fM1124dp3 : fMin4;
                            groupedMessagePosition8.set(0, 0, 1, 1, i53, f29, 9);
                            groupedMessagePosition9.set(1, 1, 1, 1, i53, f29, 10);
                            this.maxX = 1;
                        }
                    } else {
                        MessageObject.GroupedMessagePosition groupedMessagePosition10 = (MessageObject.GroupedMessagePosition) this.posArray.get(0);
                        MessageObject.GroupedMessagePosition groupedMessagePosition11 = (MessageObject.GroupedMessagePosition) this.posArray.get(1);
                        MessageObject.GroupedMessagePosition groupedMessagePosition12 = (MessageObject.GroupedMessagePosition) this.posArray.get(2);
                        MessageObject.GroupedMessagePosition groupedMessagePosition13 = (MessageObject.GroupedMessagePosition) this.posArray.get(3);
                        if (sb.charAt(0) == 'w') {
                            float fRound4 = Math.round(Math.min(this.maxSizeWidth / groupedMessagePosition10.aspectRatio, this.maxSizeHeight * 0.66f)) / this.maxSizeHeight;
                            groupedMessagePosition10.set(0, 2, 0, 0, this.maxSizeWidth, fRound4, 7);
                            float fRound5 = Math.round(this.maxSizeWidth / ((groupedMessagePosition11.aspectRatio + groupedMessagePosition12.aspectRatio) + groupedMessagePosition13.aspectRatio));
                            float f30 = iMin;
                            int iMax3 = (int) Math.max(f30, Math.min(this.maxSizeWidth * 0.4f, groupedMessagePosition11.aspectRatio * fRound5));
                            int iMax4 = (int) Math.max(Math.max(f30, this.maxSizeWidth * 0.33f), groupedMessagePosition13.aspectRatio * fRound5);
                            int iM1124dp2 = (this.maxSizeWidth - iMax3) - iMax4;
                            if (iM1124dp2 < AndroidUtilities.m1124dp(58.0f)) {
                                int iM1124dp3 = AndroidUtilities.m1124dp(58.0f) - iM1124dp2;
                                iM1124dp2 = AndroidUtilities.m1124dp(58.0f);
                                int i54 = iM1124dp3 / 2;
                                iMax3 -= i54;
                                iMax4 -= iM1124dp3 - i54;
                            }
                            int i55 = iMax4;
                            int i56 = iMax3;
                            float fMin5 = Math.min(this.maxSizeHeight - fRound4, fRound5) / this.maxSizeHeight;
                            float f31 = fMin5 < fM1124dp3 ? fM1124dp3 : fMin5;
                            groupedMessagePosition11.set(0, 0, 1, 1, i56, f31, 9);
                            groupedMessagePosition12.set(1, 1, 1, 1, iM1124dp2, f31, 8);
                            groupedMessagePosition13.set(2, 2, 1, 1, i55, f31, 10);
                            this.maxX = 2;
                        } else {
                            int iMax5 = Math.max(iMin, Math.round(this.maxSizeHeight / (((1.0f / groupedMessagePosition11.aspectRatio) + (1.0f / groupedMessagePosition12.aspectRatio)) + (1.0f / groupedMessagePosition13.aspectRatio))));
                            float f32 = iM1124dp;
                            float f33 = iMax5;
                            float fMin6 = Math.min(0.33f, Math.max(f32, f33 / groupedMessagePosition11.aspectRatio) / this.maxSizeHeight);
                            float fMin7 = Math.min(0.33f, Math.max(f32, f33 / groupedMessagePosition12.aspectRatio) / this.maxSizeHeight);
                            float f34 = (1.0f - fMin6) - fMin7;
                            int iRound2 = Math.round(Math.min((this.maxSizeHeight * groupedMessagePosition10.aspectRatio) + i12, this.maxSizeWidth - iMax5));
                            groupedMessagePosition10.set(0, 0, 0, 2, iRound2, fMin6 + fMin7 + f34, 13);
                            groupedMessagePosition11.set(1, 1, 0, 0, iMax5, fMin6, 6);
                            groupedMessagePosition12.set(1, 1, 1, 1, iMax5, fMin7, 2);
                            groupedMessagePosition12.spanSize = this.maxSizeWidth;
                            groupedMessagePosition13.set(1, 1, 2, 2, iMax5, f34, 10);
                            int i57 = this.maxSizeWidth;
                            groupedMessagePosition13.spanSize = i57;
                            groupedMessagePosition11.spanSize = i57 - iRound2;
                            groupedMessagePosition12.leftSpanOffset = iRound2;
                            groupedMessagePosition13.leftSpanOffset = iRound2;
                            groupedMessagePosition10.siblingHeights = new float[]{fMin6, fMin7, f34};
                            this.hasSibling = true;
                            this.maxX = 1;
                        }
                    }
                    i = 0;
                }
            }
            for (int i58 = i; i58 < size; i58++) {
                MessageObject.GroupedMessagePosition groupedMessagePosition14 = (MessageObject.GroupedMessagePosition) this.posArray.get(i58);
                if (groupedMessagePosition14.maxX == this.maxX || (groupedMessagePosition14.flags & 2) != 0) {
                    groupedMessagePosition14.spanSize += 200;
                }
                if ((groupedMessagePosition14.flags & 1) != 0) {
                    groupedMessagePosition14.edge = true;
                }
                if (groupedMessagePosition14.edge) {
                    int i59 = groupedMessagePosition14.spanSize;
                    if (i59 != 1000) {
                        groupedMessagePosition14.spanSize = i59 + 108;
                    }
                    groupedMessagePosition14.f1598pw += 108;
                } else if ((groupedMessagePosition14.flags & 2) != 0) {
                    int i60 = groupedMessagePosition14.spanSize;
                    if (i60 != 1000) {
                        groupedMessagePosition14.spanSize = i60 - 108;
                    } else {
                        int i61 = groupedMessagePosition14.leftSpanOffset;
                        if (i61 != 0) {
                            groupedMessagePosition14.leftSpanOffset = i61 + 108;
                        }
                    }
                }
            }
            for (int i62 = i; i62 < size; i62++) {
                MessageObject.GroupedMessagePosition groupedMessagePosition15 = (MessageObject.GroupedMessagePosition) this.posArray.get(i62);
                if (groupedMessagePosition15.minX == 0) {
                    groupedMessagePosition15.spanSize += 200;
                }
                if ((groupedMessagePosition15.flags & 2) != 0) {
                    groupedMessagePosition15.edge = true;
                }
                this.maxX = Math.max(this.maxX, (int) groupedMessagePosition15.maxX);
                this.maxY = Math.max(this.maxY, (int) groupedMessagePosition15.maxY);
                groupedMessagePosition15.left = getLeft(groupedMessagePosition15, groupedMessagePosition15.minY, groupedMessagePosition15.maxY, groupedMessagePosition15.minX);
            }
            for (int i63 = i; i63 < size; i63++) {
                MessageObject.GroupedMessagePosition groupedMessagePosition16 = (MessageObject.GroupedMessagePosition) this.posArray.get(i63);
                groupedMessagePosition16.top = getTop(groupedMessagePosition16, groupedMessagePosition16.minY);
            }
            this.width = getWidth();
            this.height = getHeight();
        }

        public int getWidth() {
            int[] iArr = new int[10];
            Arrays.fill(iArr, 0);
            int size = this.posArray.size();
            for (int i = 0; i < size; i++) {
                MessageObject.GroupedMessagePosition groupedMessagePosition = (MessageObject.GroupedMessagePosition) this.posArray.get(i);
                int i2 = groupedMessagePosition.f1598pw;
                for (int i3 = groupedMessagePosition.minY; i3 <= groupedMessagePosition.maxY; i3++) {
                    iArr[i3] = iArr[i3] + i2;
                }
            }
            int i4 = iArr[0];
            for (int i5 = 1; i5 < 10; i5++) {
                int i6 = iArr[i5];
                if (i4 < i6) {
                    i4 = i6;
                }
            }
            return i4;
        }

        public float getHeight() {
            float[] fArr = new float[10];
            Arrays.fill(fArr, 0.0f);
            int size = this.posArray.size();
            for (int i = 0; i < size; i++) {
                MessageObject.GroupedMessagePosition groupedMessagePosition = (MessageObject.GroupedMessagePosition) this.posArray.get(i);
                float f = groupedMessagePosition.f1597ph;
                for (int i2 = groupedMessagePosition.minX; i2 <= groupedMessagePosition.maxX; i2++) {
                    fArr[i2] = fArr[i2] + f;
                }
            }
            float f2 = fArr[0];
            for (int i3 = 1; i3 < 10; i3++) {
                float f3 = fArr[i3];
                if (f2 < f3) {
                    f2 = f3;
                }
            }
            return f2;
        }

        private float getLeft(MessageObject.GroupedMessagePosition groupedMessagePosition, int i, int i2, int i3) {
            int i4 = (i2 - i) + 1;
            float[] fArr = new float[i4];
            float f = 0.0f;
            Arrays.fill(fArr, 0.0f);
            int size = this.posArray.size();
            for (int i5 = 0; i5 < size; i5++) {
                MessageObject.GroupedMessagePosition groupedMessagePosition2 = (MessageObject.GroupedMessagePosition) this.posArray.get(i5);
                if (groupedMessagePosition2 != groupedMessagePosition && groupedMessagePosition2.maxX < i3) {
                    int iMin = Math.min((int) groupedMessagePosition2.maxY, i2) - i;
                    for (int iMax = Math.max(groupedMessagePosition2.minY - i, 0); iMax <= iMin; iMax++) {
                        fArr[iMax] = fArr[iMax] + groupedMessagePosition2.f1598pw;
                    }
                }
            }
            for (int i6 = 0; i6 < i4; i6++) {
                float f2 = fArr[i6];
                if (f < f2) {
                    f = f2;
                }
            }
            return f;
        }

        private float getTop(MessageObject.GroupedMessagePosition groupedMessagePosition, int i) {
            int i2 = this.maxX + 1;
            float[] fArr = new float[i2];
            float f = 0.0f;
            Arrays.fill(fArr, 0.0f);
            int size = this.posArray.size();
            for (int i3 = 0; i3 < size; i3++) {
                MessageObject.GroupedMessagePosition groupedMessagePosition2 = (MessageObject.GroupedMessagePosition) this.posArray.get(i3);
                if (groupedMessagePosition2 != groupedMessagePosition && groupedMessagePosition2.maxY < i) {
                    for (int i4 = groupedMessagePosition2.minX; i4 <= groupedMessagePosition2.maxX; i4++) {
                        fArr[i4] = fArr[i4] + groupedMessagePosition2.f1597ph;
                    }
                }
            }
            for (int i5 = 0; i5 < i2; i5++) {
                float f2 = fArr[i5];
                if (f < f2) {
                    f = f2;
                }
            }
            return f;
        }
    }
}
