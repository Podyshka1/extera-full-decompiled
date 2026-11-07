package com.exteragram.messenger.player.ui;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.player.motion.SpotifyCanvasRepository;
import java.util.Arrays;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.Utilities;
import org.telegram.ui.Components.AnimatedFileDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;

/* JADX INFO: loaded from: classes4.dex */
public class SpotifyCanvasBackground {
    private final Runnable onFrame;
    private Slot outgoing;
    private int outgoingDirection;
    private float scrimBottom;
    private int scrimColor;
    private float scrimTop;
    private int shaderColor;
    private static final int[] CLAIM_ORDER = {1, 2, 0};
    private static final float[] SCRIM_STOPS = {0.0f, 0.2f, 0.45f, 0.62f, 1.0f};
    private static final float[] SCRIM_ALPHA = {0.6f, 0.2f, 0.3f, 0.72f, 0.92f};
    private final Slot[] pool = new Slot[4];
    private final Slot[] slots = new Slot[3];
    private final Slot[] lastSlots = new Slot[3];
    private final boolean[] hadFrames = new boolean[3];
    private final Paint scrimPaint = new Paint(1);
    private final RectF pageRect = new RectF();

    public static final class Slot {
        String path;
        final ImageReceiver receiver;
        long shownAt;
        final ImageReceiver thumbReceiver;
        boolean videoShown;

        public Slot(View view) {
            ImageReceiver imageReceiver = new ImageReceiver(view);
            this.receiver = imageReceiver;
            imageReceiver.setAllowStartAnimation(true);
            imageReceiver.setCrossfadeAlpha((byte) 0);
            ImageReceiver imageReceiver2 = new ImageReceiver(view);
            this.thumbReceiver = imageReceiver2;
            imageReceiver2.setCrossfadeAlpha((byte) 0);
        }

        public void load(String str, MessageObject messageObject) {
            this.path = str;
            this.shownAt = 0L;
            this.videoShown = false;
            if (str == null) {
                this.receiver.clearImage();
                this.thumbReceiver.clearImage();
                return;
            }
            float f = AndroidUtilities.density;
            String str2 = ((int) (AndroidUtilities.displaySize.x / f)) + "_" + ((int) (AndroidUtilities.displaySize.y / f));
            this.receiver.setImage(ImageLocation.getForPath(str), str2, null, null, 0L, null, messageObject, 1);
            this.thumbReceiver.setImage(ImageLocation.getForPath(SpotifyCanvasRepository.getThumbPath(str)), str2, null, null, 0L, null, messageObject, 1);
        }

        public boolean checkVideo() {
            if (!this.videoShown) {
                AnimatedFileDrawable animation = this.receiver.getAnimation();
                if (animation == null || !animation.isRunning() || !animation.hasBitmap()) {
                    return false;
                }
                this.videoShown = true;
                this.thumbReceiver.clearImage();
            }
            return true;
        }

        public boolean hasFrame() {
            if (this.path == null) {
                return false;
            }
            if (this.shownAt != 0) {
                return true;
            }
            if (!checkVideo() && !this.thumbReceiver.hasBitmapImage()) {
                return false;
            }
            this.shownAt = SystemClock.elapsedRealtime();
            return true;
        }
    }

    public SpotifyCanvasBackground(View view, Runnable runnable) {
        this.onFrame = runnable;
        int i = 0;
        while (true) {
            Slot[] slotArr = this.pool;
            if (i < slotArr.length) {
                slotArr[i] = new Slot(view);
                i++;
            } else {
                Slot[] slotArr2 = this.slots;
                System.arraycopy(slotArr, 0, slotArr2, 0, slotArr2.length);
                return;
            }
        }
    }

    public void setPaths(String[] strArr, MessageObject[] messageObjectArr, int i) {
        Slot slot;
        if (i == 0) {
            slot = this.outgoing;
        } else {
            slot = this.slots[1].hasFrame() ? this.slots[1] : null;
        }
        Slot[] slotArr = this.slots;
        int i2 = 0;
        System.arraycopy(slotArr, 0, this.lastSlots, 0, slotArr.length);
        Arrays.fill(this.slots, (Object) null);
        for (int i3 : CLAIM_ORDER) {
            if (strArr[i3] != null) {
                if (!isRole(this.lastSlots[i3]) && TextUtils.equals(this.lastSlots[i3].path, strArr[i3])) {
                    this.slots[i3] = this.lastSlots[i3];
                } else {
                    Slot[] slotArr2 = this.pool;
                    int length = slotArr2.length;
                    int i4 = 0;
                    while (true) {
                        if (i4 < length) {
                            Slot slot2 = slotArr2[i4];
                            if (!isRole(slot2) && TextUtils.equals(slot2.path, strArr[i3])) {
                                this.slots[i3] = slot2;
                                break;
                            }
                            i4++;
                        }
                    }
                }
            }
        }
        for (int i5 : CLAIM_ORDER) {
            if (this.slots[i5] == null) {
                Slot slot3 = this.lastSlots[i5];
                if (!isRole(slot3) && slot3 != slot) {
                    this.slots[i5] = slot3;
                } else {
                    Slot[] slotArr3 = this.pool;
                    int length2 = slotArr3.length;
                    int i6 = 0;
                    while (true) {
                        if (i6 >= length2) {
                            break;
                        }
                        Slot slot4 = slotArr3[i6];
                        if (!isRole(slot4) && slot4 != slot) {
                            this.slots[i5] = slot4;
                            break;
                        }
                        i6++;
                    }
                }
                if (!TextUtils.equals(this.slots[i5].path, strArr[i5])) {
                    this.slots[i5].load(strArr[i5], messageObjectArr[i5]);
                }
            }
        }
        if (i != 0) {
            if (slot == this.slots[1]) {
                slot = null;
            }
            this.outgoing = slot;
            this.outgoingDirection = i;
        }
        for (Slot slot5 : this.pool) {
            if (slot5.path != null && slot5 != this.outgoing && !isRole(slot5)) {
                slot5.load(null, null);
            }
        }
        while (true) {
            Slot[] slotArr4 = this.slots;
            if (i2 >= slotArr4.length) {
                return;
            }
            this.hadFrames[i2] = slotArr4[i2].hasFrame();
            i2++;
        }
    }

    private boolean isRole(Slot slot) {
        for (Slot slot2 : this.slots) {
            if (slot2 == slot) {
                return true;
            }
        }
        return false;
    }

    public boolean hasFrame(int i) {
        return this.slots[i].hasFrame();
    }

    public void setScrimColor(int i) {
        this.scrimColor = i;
    }

    public void onAttachedToWindow() {
        for (Slot slot : this.pool) {
            slot.receiver.onAttachedToWindow();
            slot.thumbReceiver.onAttachedToWindow();
        }
    }

    public void onDetachedFromWindow() {
        for (Slot slot : this.pool) {
            slot.receiver.onDetachedFromWindow();
            slot.thumbReceiver.onDetachedFromWindow();
        }
    }

    public boolean draw(Canvas canvas, RectF rectF, float f, float f2, float f3, float f4, float f5, float f6, float f7) {
        int i;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            Slot[] slotArr = this.slots;
            i = 1;
            if (i2 >= slotArr.length) {
                break;
            }
            boolean zHasFrame = slotArr[i2].hasFrame();
            if (!zHasFrame || this.hadFrames[i2]) {
                i = 0;
            }
            i3 |= i;
            this.hadFrames[i2] = zHasFrame;
            i2++;
        }
        if (i3 != 0) {
            AndroidUtilities.runOnUIThread(this.onFrame);
        }
        Slot slot = this.outgoing;
        if (slot != null && f4 == 0.0f) {
            if (!isRole(slot)) {
                this.outgoing.load(null, null);
            }
            this.outgoing = null;
        }
        if (rectF.isEmpty() || f2 <= 0.0f) {
            return false;
        }
        float f8 = this.scrimTop;
        float f9 = rectF.top;
        if (f8 != f9 || this.scrimBottom != rectF.bottom || this.shaderColor != this.scrimColor) {
            this.scrimTop = f9;
            this.scrimBottom = rectF.bottom;
            this.shaderColor = this.scrimColor;
            int length = SCRIM_ALPHA.length;
            int[] iArr = new int[length];
            for (int i4 = 0; i4 < length; i4++) {
                iArr[i4] = ColorUtils.setAlphaComponent(this.scrimColor, (int) (SCRIM_ALPHA[i4] * 255.0f));
            }
            this.scrimPaint.setShader(new LinearGradient(0.0f, rectF.top, 0.0f, rectF.bottom, iArr, SCRIM_STOPS, Shader.TileMode.CLAMP));
        }
        boolean zDrawPage = drawPage(canvas, this.slots[1], rectF, f, f2 * Utilities.clamp01(f3), f4);
        if (f4 > 0.0f) {
            i = -1;
        } else if (f4 >= 0.0f) {
            i = 0;
        }
        if (i == 0) {
            return zDrawPage;
        }
        Slot slot2 = this.outgoing;
        if (slot2 == null || this.outgoingDirection != (-i)) {
            slot2 = this.slots[i >= 0 ? (char) 2 : (char) 0];
        }
        return drawPage(canvas, slot2, rectF, f, f2 * Utilities.clamp01(i < 0 ? f6 : f7), f4 + (i * f5)) | zDrawPage;
    }

    private static void drawReceiver(Canvas canvas, ImageReceiver imageReceiver, RectF rectF, int i, float f, float f2) {
        imageReceiver.setRoundRadius(i, i, 0, 0);
        imageReceiver.setImageCoords(rectF.left + f, rectF.top, rectF.width(), rectF.height());
        imageReceiver.setAlpha(f2);
        imageReceiver.draw(canvas);
    }

    private boolean drawPage(Canvas canvas, Slot slot, RectF rectF, float f, float f2, float f3) {
        if (f2 > 0.0f && Math.abs(f3) < rectF.width() && slot.hasFrame()) {
            float fClamp01 = Utilities.clamp01((SystemClock.elapsedRealtime() - slot.shownAt) / 300.0f);
            float interpolation = f2 * CubicBezierInterpolator.EASE_OUT.getInterpolation(fClamp01);
            this.pageRect.set(rectF);
            this.pageRect.offset(f3, 0.0f);
            this.pageRect.intersect(rectF);
            canvas.save();
            canvas.clipRect(this.pageRect);
            int i = (int) f;
            if (!slot.checkVideo()) {
                drawReceiver(canvas, slot.thumbReceiver, rectF, i, f3, interpolation);
                i = i;
                interpolation = interpolation;
            }
            drawReceiver(canvas, slot.receiver, rectF, i, f3, interpolation);
            this.scrimPaint.setAlpha((int) (interpolation * 255.0f));
            canvas.drawRoundRect(rectF.left + f3, rectF.top, rectF.right + f3, rectF.bottom, f, f, this.scrimPaint);
            canvas.restore();
            if (fClamp01 < 1.0f) {
                return true;
            }
        }
        return false;
    }
}
