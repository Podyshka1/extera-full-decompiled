package org.telegram.ui.QrShare;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextPaint;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.WeakHashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.QrShare.QrEmojiPanel;

/* JADX INFO: loaded from: classes7.dex */
final class EmojiPickOverlay extends View {
    private final Path badgeClip;
    private final Paint.FontMetrics badgeFm;
    private final Path badgePath;
    private LinearGradient badgeRim;
    private final Paint badgeRimPaint;
    private final HashMap<String, float[]> badges;
    private final RectF cellRect;
    private ViewGroup emojiView;
    private final Paint fill;
    private float glassBottom;
    private float glassRight;
    private RecyclerView grid;
    private final int[] gridLoc;
    private final Host host;
    private float islandAlpha;
    private final RectF islandRect;
    private float islandShow;
    private float islandW;
    private final ArrayList<Item> items;
    private final RectF lastCutRect;
    private float lastCutShow;
    private long lastIslandFrame;
    private long lastSbFrame;
    private long lastScroll;
    private final int[] loc;
    private final ArrayList<Item> matched;
    private final int[] myLoc;
    private final ArrayList<Item> next;
    private final TextPaint num;
    private final int[] qrLoc;
    private final RectF rect;
    private final RimPainter rim;
    private final WeakHashMap<View, Boolean> rippled;
    private float sbAlpha;
    private boolean sbDragging;
    private float sbLevel;
    private final RectF sbRect;
    private final Paint stroke;
    private float topClipY;
    private static final long T0 = System.currentTimeMillis();
    private static final String[] DIGITS = new String[100];

    public interface Host {
        boolean drawBlur(Canvas canvas, float f, float f2);

        Drawable emojiFor(String str);

        int islandTint();

        List<String> pickedKeys();

        void qrViewLocation(int[] iArr);

        void removePickAt(int i);
    }

    private static float easeOutBack(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        float f2 = f - 1.0f;
        return (2.4f * f2 * f2 * f2) + 1.0f + (1.4f * f2 * f2);
    }

    private static float lerpF(float f, float f2, float f3) {
        return f + ((f2 - f) * f3);
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public static final class Item {
        String key;
        boolean leaving;
        float scale;
        float target;

        /* JADX INFO: renamed from: x */
        float f1203x;

        private Item() {
            this.f1203x = Float.NaN;
            this.target = 1.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long nowMs() {
        return System.currentTimeMillis() - T0;
    }

    public EmojiPickOverlay(Context context, Host host) {
        super(context);
        this.fill = new Paint(1);
        Paint paint = new Paint(1);
        this.stroke = paint;
        TextPaint textPaint = new TextPaint(1);
        this.num = textPaint;
        this.rect = new RectF();
        this.loc = new int[2];
        this.myLoc = new int[2];
        this.badges = new HashMap<>();
        this.items = new ArrayList<>();
        this.matched = new ArrayList<>();
        this.next = new ArrayList<>();
        this.islandRect = new RectF();
        this.glassBottom = Float.NaN;
        this.lastCutShow = -1.0f;
        this.rim = new RimPainter();
        this.badgeClip = new Path();
        this.topClipY = Float.NaN;
        this.lastCutRect = new RectF();
        this.cellRect = new RectF();
        this.rippled = new WeakHashMap<>();
        this.badgePath = new Path();
        this.qrLoc = new int[2];
        this.badgeRimPaint = new Paint(1);
        this.badgeFm = new Paint.FontMetrics();
        this.glassRight = Float.NaN;
        this.sbLevel = 0.45f;
        this.gridLoc = new int[2];
        this.sbRect = new RectF();
        this.host = host;
        textPaint.setTypeface(AndroidUtilities.bold());
        textPaint.setTextSize(AndroidUtilities.dp(10.0f));
        textPaint.setTextAlign(Paint.Align.CENTER);
        paint.setStyle(Paint.Style.STROKE);
    }

    public float gridCutY(float f) {
        this.glassBottom = f;
        return f;
    }

    public boolean islandCut(RectF rectF, float[] fArr) {
        if (this.islandShow <= 0.003f || this.islandRect.isEmpty()) {
            return false;
        }
        rectF.set(this.islandRect);
        fArr[0] = this.islandRect.height() / 2.0f;
        fArr[1] = this.islandAlpha;
        return true;
    }

    public void setTopClip(float f) {
        if (this.topClipY != f) {
            this.topClipY = f;
            invalidate();
        }
    }

    public float fadeAt(float f) {
        if (Float.isNaN(this.glassBottom)) {
            return 1.0f;
        }
        float fGridCutY = gridCutY(this.glassBottom);
        float fDp = AndroidUtilities.dp(10.0f);
        float fMax = Math.max(0.0f, Math.min(1.0f, (f - (fGridCutY - fDp)) / fDp));
        return 1.0f - ((fMax * fMax) * (3.0f - (fMax * 2.0f)));
    }

    public void attach(ViewGroup viewGroup) {
        this.emojiView = viewGroup;
    }

    private static String keyOf(QrEmojiPanel.Cell cell) {
        return cell.getKey();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00b0  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDraw(Canvas canvas) {
        EmojiPickOverlay emojiPickOverlay;
        List<String> list;
        boolean zDrawBadges;
        float f;
        float f2;
        float f3;
        float fPow;
        float f4;
        float fLerpF;
        List<String> listPickedKeys = this.host.pickedKeys();
        long jNowMs = nowMs();
        if (this.emojiView != null) {
            getLocationOnScreen(this.myLoc);
            canvas.save();
            if (!Float.isNaN(this.topClipY)) {
                canvas.clipRect(0.0f, this.topClipY, getWidth(), getHeight());
            }
            if (this.islandShow > 0.003f && !this.islandRect.isEmpty()) {
                this.badgeClip.rewind();
                Path path = this.badgeClip;
                RectF rectF = this.islandRect;
                path.addRoundRect(rectF, rectF.height() / 2.0f, this.islandRect.height() / 2.0f, Path.Direction.CW);
                QrRender.clipOut(canvas, this.badgeClip);
            }
            zDrawBadges = drawBadges(canvas, this.emojiView, listPickedKeys, jNowMs);
            emojiPickOverlay = this;
            list = listPickedKeys;
            canvas.restore();
        } else {
            emojiPickOverlay = this;
            list = listPickedKeys;
            zDrawBadges = false;
        }
        boolean zDrawScrollbar = zDrawBadges | emojiPickOverlay.drawScrollbar(canvas, jNowMs);
        emojiPickOverlay.syncItems(list);
        int iCountTargets = emojiPickOverlay.countTargets();
        float fDp = iCountTargets == 0 ? AndroidUtilities.dp(50.0f) : (AndroidUtilities.dp(34.0f) * iCountTargets) + AndroidUtilities.dp(16.0f);
        if (!Float.isNaN(emojiPickOverlay.islandW)) {
            float f5 = emojiPickOverlay.islandW;
            f = f5 == 0.0f ? fDp : f5 + ((fDp - f5) * 0.25f);
        }
        emojiPickOverlay.islandW = f;
        float f6 = 1.0f;
        float f7 = iCountTargets > 0 ? 1.0f : 0.0f;
        long jNowMs2 = nowMs();
        float fMin = emojiPickOverlay.lastIslandFrame != 0 ? Math.min(64.0f, jNowMs2 - r6) : 16.0f;
        emojiPickOverlay.lastIslandFrame = jNowMs2;
        float f8 = emojiPickOverlay.islandShow;
        if (f8 < f7) {
            emojiPickOverlay.islandShow = Math.min(f7, f8 + (fMin / 260.0f));
        } else if (f8 > f7) {
            emojiPickOverlay.islandShow = Math.max(f7, f8 - (fMin / 260.0f));
        }
        if (emojiPickOverlay.islandShow > 0.003f || !emojiPickOverlay.items.isEmpty()) {
            float fDp2 = AndroidUtilities.dp(44.0f);
            float width = emojiPickOverlay.getWidth() / 2.0f;
            float f9 = emojiPickOverlay.islandShow;
            if (f9 < 0.5f) {
                fPow = f9 * 2.0f * f9;
                f2 = 0.5f;
                f3 = 2.0f;
            } else {
                f2 = 0.5f;
                f3 = 2.0f;
                fPow = 1.0f - (((float) Math.pow((f9 * (-2.0f)) + 2.0f, 2.0d)) / 2.0f);
            }
            if (fPow >= 0.4f) {
                f4 = 0.4f;
                fLerpF = lerpF(fDp2, emojiPickOverlay.islandW, (fPow - 0.4f) / 0.6f);
            } else {
                f4 = 0.4f;
                fLerpF = fDp2;
            }
            float fLerpF2 = fPow >= 0.4f ? 1.0f : lerpF(0.6f, 1.0f, fPow / f4);
            float f10 = fPow >= 0.4f ? 1.0f : fPow / f4;
            emojiPickOverlay.islandAlpha = f10;
            float fMin2 = fLerpF2 * Math.min(1.0f, fLerpF / Math.max(1.0f, emojiPickOverlay.islandW));
            float height = (emojiPickOverlay.getHeight() - AndroidUtilities.dpf2(18.666666f)) - (fDp2 / f3);
            float f11 = (fLerpF * fLerpF2) / f3;
            float f12 = (fDp2 * fLerpF2) / f3;
            emojiPickOverlay.islandRect.set(width - f11, height - f12, f11 + width, height + f12);
            float fHeight = emojiPickOverlay.islandRect.height() / f3;
            emojiPickOverlay.fill.setColor(emojiPickOverlay.host.islandTint());
            emojiPickOverlay.fill.setAlpha((int) (Color.alpha(emojiPickOverlay.host.islandTint()) * f10));
            canvas.drawRoundRect(emojiPickOverlay.islandRect, fHeight, fHeight, emojiPickOverlay.fill);
            emojiPickOverlay.fill.setColor(872415231);
            emojiPickOverlay.fill.setAlpha((int) (51.0f * f10));
            canvas.drawRoundRect(emojiPickOverlay.islandRect, fHeight, fHeight, emojiPickOverlay.fill);
            float f13 = f7;
            emojiPickOverlay.rim.draw(canvas, emojiPickOverlay.islandRect, fHeight, 0, f10);
            canvas.save();
            canvas.clipRect(emojiPickOverlay.islandRect);
            int i = 0;
            int i2 = 0;
            while (i2 < emojiPickOverlay.items.size()) {
                Item item = emojiPickOverlay.items.get(i2);
                float fDp3 = (width - (emojiPickOverlay.islandW / f3)) + AndroidUtilities.dp(8.0f) + (AndroidUtilities.dp(34.0f) * (i + f2));
                if (!item.leaving) {
                    i++;
                }
                if (Float.isNaN(item.f1203x)) {
                    item.f1203x = fDp3;
                }
                boolean z = item.leaving;
                if (!z) {
                    float f14 = item.f1203x;
                    item.f1203x = f14 + ((fDp3 - f14) * 0.3f);
                }
                float f15 = item.scale;
                float f16 = f15 + (((z ? 0.0f : f6) - f15) * 0.28f);
                item.scale = f16;
                if (Math.abs(f16 - (z ? 0.0f : f6)) > 0.004f || Math.abs(fDp3 - item.f1203x) > f2) {
                    zDrawScrollbar = true;
                }
                Drawable drawableEmojiFor = emojiPickOverlay.host.emojiFor(item.key);
                if (drawableEmojiFor != null) {
                    float fDp4 = AndroidUtilities.dp(26.0f);
                    boolean z2 = item.leaving;
                    float fEaseOutBack = item.scale;
                    if (!z2) {
                        fEaseOutBack = easeOutBack(fEaseOutBack);
                    }
                    float f17 = fDp4 * fEaseOutBack * fMin2;
                    if (f17 >= f6) {
                        drawableEmojiFor.setAlpha(255);
                        float f18 = ((item.f1203x - width) * fMin2) + width;
                        float f19 = f17 / f3;
                        drawableEmojiFor.setBounds((int) (f18 - f19), (int) (emojiPickOverlay.islandRect.centerY() - f19), (int) (f18 + f19), (int) (emojiPickOverlay.islandRect.centerY() + f19));
                        QrEmojiPanel.drawEmoji(canvas, drawableEmojiFor);
                    }
                }
                i2++;
                f6 = 1.0f;
            }
            canvas.restore();
            for (int size = emojiPickOverlay.items.size() - 1; size >= 0; size--) {
                if (emojiPickOverlay.items.get(size).leaving && emojiPickOverlay.items.get(size).scale < 0.02f) {
                    emojiPickOverlay.items.remove(size);
                }
            }
            if (Math.abs(emojiPickOverlay.islandW - fDp) > f2 || Math.abs(emojiPickOverlay.islandShow - f13) > 0.003f) {
                zDrawScrollbar = true;
            }
        }
        if (emojiPickOverlay.islandShow != emojiPickOverlay.lastCutShow || !emojiPickOverlay.islandRect.equals(emojiPickOverlay.lastCutRect)) {
            emojiPickOverlay.lastCutShow = emojiPickOverlay.islandShow;
            emojiPickOverlay.lastCutRect.set(emojiPickOverlay.islandRect);
            ViewGroup viewGroup = emojiPickOverlay.emojiView;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        if (!zDrawScrollbar && emojiPickOverlay.items.isEmpty() && list.isEmpty()) {
            return;
        }
        emojiPickOverlay.postInvalidateOnAnimation();
    }

    private static float easeOutCubic(float f) {
        float fMax = 1.0f - Math.max(0.0f, Math.min(1.0f, f));
        return 1.0f - ((fMax * fMax) * fMax);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawUnder(Canvas canvas, ViewGroup viewGroup) {
        float[] fArr;
        long jNowMs = nowMs();
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof QrEmojiPanel.Cell) && childAt.getVisibility() == 0) {
                if (!this.rippled.containsKey(childAt)) {
                    this.rippled.put(childAt, Boolean.TRUE);
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setColor(-1);
                    gradientDrawable.setCornerRadius(AndroidUtilities.dp(10.0f));
                    childAt.setBackground(new RippleDrawable(ColorStateList.valueOf(788529151), null, new InsetDrawable((Drawable) gradientDrawable, (int) AndroidUtilities.dpf2(2.5f))));
                }
                String strKeyOf = keyOf((QrEmojiPanel.Cell) childAt);
                if (strKeyOf != null && (fArr = this.badges.get(strKeyOf)) != null) {
                    float fSelK = selK(fArr, jNowMs);
                    if (fSelK > 0.004f) {
                        float left = childAt.getLeft() + childAt.getTranslationX();
                        float top = childAt.getTop() + childAt.getTranslationY();
                        float width = childAt.getWidth();
                        float height = childAt.getHeight();
                        float fDpf2 = (int) AndroidUtilities.dpf2(2.5f);
                        this.cellRect.set(left + fDpf2, top + fDpf2, (left + width) - fDpf2, (top + height) - fDpf2);
                        if (!childAt.isPressed()) {
                            this.fill.setColor(788529151);
                            this.fill.setAlpha((int) (Color.alpha(788529151) * fSelK));
                            canvas.drawRoundRect(this.cellRect, AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), this.fill);
                        }
                    }
                }
            }
        }
    }

    private float selK(float[] fArr, long j) {
        float fMin = Math.min(1.0f, (j - ((long) fArr[2])) / 180.0f);
        float f = fArr[1];
        return f + ((fArr[0] - f) * easeOutCubic(fMin));
    }

    private static String digit(int i) {
        if (i >= 0) {
            String[] strArr = DIGITS;
            if (i < strArr.length) {
                String str = strArr[i];
                if (str != null) {
                    return str;
                }
                String strValueOf = String.valueOf(i);
                strArr[i] = strValueOf;
                return strValueOf;
            }
        }
        return String.valueOf(i);
    }

    public static float spring(float f, float f2, float f3) {
        double d = ((double) f) / 1000.0d;
        if (d <= 0.0d) {
            return 0.0f;
        }
        double d2 = 6.283185307179586d / ((double) f3);
        double dSqrt = d2 / Math.sqrt(1.0f - (f2 * f2));
        double dExp = Math.exp(((double) (-f2)) * dSqrt * d);
        double d3 = d * d2;
        return (float) (1.0d - (dExp * (Math.cos(d3) + (((((double) f2) * dSqrt) / d2) * Math.sin(d3)))));
    }

    private void drawBadge(Canvas canvas, float f, float f2, float f3, float f4, float[] fArr, long j) {
        float f5;
        if (f4 <= 0.004f || f3 <= 0.01f) {
            return;
        }
        float fDp = AndroidUtilities.dp(8.0f);
        if (this.badgeRim == null) {
            this.badgeRim = new LinearGradient(0.0f, -fDp, 0.0f, fDp, 1946157055, 536870911, Shader.TileMode.CLAMP);
            this.badgeRimPaint.setStyle(Paint.Style.STROKE);
            this.badgeRimPaint.setShader(this.badgeRim);
        }
        canvas.save();
        canvas.translate(f, f2);
        canvas.scale(f3, f3);
        this.badgePath.rewind();
        this.badgePath.addCircle(0.0f, 0.0f, fDp, Path.Direction.CW);
        canvas.save();
        canvas.clipPath(this.badgePath);
        if (f4 < 0.999f) {
            float f6 = -fDp;
            canvas.saveLayerAlpha(f6, f6, fDp, fDp, (int) (f4 * 255.0f));
        }
        this.host.qrViewLocation(this.qrLoc);
        float f7 = 1.0f / f3;
        canvas.scale(f7, f7);
        canvas.translate(-f, -f2);
        Host host = this.host;
        int i = this.myLoc[0];
        int[] iArr = this.qrLoc;
        host.drawBlur(canvas, i - iArr[0], r6[1] - iArr[1]);
        canvas.translate(f, f2);
        canvas.scale(f3, f3);
        this.fill.setColor(788529151);
        canvas.drawCircle(0.0f, 0.0f, fDp, this.fill);
        if (f4 < 0.999f) {
            canvas.restore();
        }
        canvas.restore();
        this.stroke.setStrokeWidth(AndroidUtilities.dpf2(0.6f));
        this.stroke.setColor(1207959551);
        this.stroke.setAlpha((int) (71.0f * f4));
        canvas.drawCircle(0.0f, 0.0f, fDp - AndroidUtilities.dpf2(0.3f), this.stroke);
        this.num.setTextSize(AndroidUtilities.dp(10.0f));
        this.num.setColor(-1);
        this.num.getFontMetrics(this.badgeFm);
        Paint.FontMetrics fontMetrics = this.badgeFm;
        float f8 = (-(fontMetrics.ascent + fontMetrics.descent)) / 2.0f;
        float fMin = fArr[5] == 0.0f ? 1.0f : Math.min(1.0f, (j - ((long) r4)) / 200.0f);
        if (fMin < 1.0f) {
            float f9 = (1.0f - fMin) * f4;
            f5 = 1.0f;
            this.num.setShadowLayer(AndroidUtilities.dpf2(1.5f), 0.0f, AndroidUtilities.dpf2(0.5f), Color.argb((int) (f9 * 89.0f), 0, 0, 0));
            this.num.setAlpha((int) (f9 * 255.0f));
            canvas.drawText(digit((int) fArr[4]), 0.0f, f8 - (AndroidUtilities.dp(4.0f) * fMin), this.num);
        } else {
            f5 = 1.0f;
        }
        float f10 = f4 * fMin;
        this.num.setShadowLayer(AndroidUtilities.dpf2(1.5f), 0.0f, AndroidUtilities.dpf2(0.5f), Color.argb((int) (89.0f * f10), 0, 0, 0));
        this.num.setAlpha((int) (f10 * 255.0f));
        canvas.drawText(digit((int) fArr[3]), 0.0f, f8 + ((f5 - fMin) * AndroidUtilities.dp(4.0f)), this.num);
        this.num.clearShadowLayer();
        canvas.restore();
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean drawBadges(Canvas canvas, ViewGroup viewGroup, List<String> list, long j) {
        char c2;
        char c3;
        EmojiPickOverlay emojiPickOverlay = this;
        List<String> list2 = list;
        long j2 = j;
        boolean zDrawBadges = false;
        int i = 0;
        while (i < viewGroup.getChildCount()) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getVisibility() == 0) {
                if (childAt instanceof QrEmojiPanel.Cell) {
                    QrEmojiPanel.Cell cell = (QrEmojiPanel.Cell) childAt;
                    String strKeyOf = keyOf(cell);
                    if (strKeyOf != null) {
                        int iIndexOf = list2.indexOf(strKeyOf);
                        float[] fArr = emojiPickOverlay.badges.get(strKeyOf);
                        if (iIndexOf >= 0) {
                            int i2 = 0;
                            c2 = 5;
                            for (int i3 = 0; i3 < iIndexOf; i3++) {
                                if (list2.indexOf(list2.get(i3)) == i3) {
                                    i2++;
                                }
                            }
                            c3 = 2;
                            int i4 = i2 + 1;
                            if (fArr == null) {
                                float f = i4;
                                fArr = new float[]{1.0f, 0.0f, j2, f, f, 0.0f};
                                emojiPickOverlay.badges.put(strKeyOf, fArr);
                            } else {
                                if (fArr[0] != 1.0f) {
                                    fArr[1] = emojiPickOverlay.selK(fArr, j2);
                                    fArr[0] = 1.0f;
                                    fArr[2] = j2;
                                }
                                float f2 = fArr[3];
                                float f3 = i4;
                                if (f2 != f3) {
                                    fArr[4] = f2;
                                    fArr[3] = f3;
                                    fArr[5] = j2;
                                }
                            }
                        } else {
                            c2 = 5;
                            c3 = 2;
                            if (fArr != null && fArr[0] != 0.0f) {
                                fArr[1] = emojiPickOverlay.selK(fArr, j2);
                                fArr[0] = 0.0f;
                                fArr[2] = j2;
                            }
                        }
                        float fSelK = fArr == null ? 0.0f : emojiPickOverlay.selK(fArr, j2);
                        if (fArr != null && fSelK < 0.001f && fArr[0] == 0.0f) {
                            emojiPickOverlay.badges.remove(strKeyOf);
                        }
                        float f4 = 1.0f - (0.1f * fSelK);
                        if (Math.abs(cell.selectScale - f4) > 5.0E-4f) {
                            cell.selectScale = f4;
                            cell.invalidate();
                            if (cell.getParent() instanceof View) {
                                ((View) cell.getParent()).invalidate();
                            }
                        }
                        if (childAt.getAlpha() != 1.0f) {
                            childAt.setAlpha(1.0f);
                        }
                        if (fArr != null) {
                            if (j2 - ((long) fArr[c3]) >= 200) {
                                float f5 = fArr[c2];
                                if (f5 != 0.0f && j2 - ((long) f5) < 200) {
                                    zDrawBadges = true;
                                }
                            }
                        }
                        if (fSelK > 0.004f && fArr != null) {
                            childAt.getLocationOnScreen(emojiPickOverlay.loc);
                            int[] iArr = emojiPickOverlay.loc;
                            int i5 = iArr[0];
                            int[] iArr2 = emojiPickOverlay.myLoc;
                            float f6 = i5 - iArr2[0];
                            float f7 = iArr[1] - iArr2[1];
                            float width = childAt.getWidth();
                            childAt.getHeight();
                            float fSpring = fArr[0] == 1.0f ? (spring(j2 - ((long) fArr[c3]), 0.55f, 0.3f) * 0.4f) + 0.6f : (fSelK * 0.4f) + 0.6f;
                            boolean z = (fArr[0] != 1.0f || j2 - ((long) fArr[c3]) >= 600) ? zDrawBadges : true;
                            emojiPickOverlay.drawBadge(canvas, (f6 + width) - AndroidUtilities.dp(9.5f), AndroidUtilities.dp(9.5f) + f7, fSpring, Math.min(1.0f, fSelK * 1.2f) * emojiPickOverlay.fadeAt(f7 + AndroidUtilities.dp(9.5f)), fArr, j2);
                            zDrawBadges = z;
                        }
                    }
                } else if (childAt instanceof ViewGroup) {
                    zDrawBadges |= drawBadges(canvas, (ViewGroup) childAt, list2, j);
                }
            }
            i++;
            emojiPickOverlay = this;
            list2 = list;
            j2 = j;
        }
        return zDrawBadges;
    }

    public void attachGrid(RecyclerView recyclerView) {
        if (this.grid == recyclerView) {
            return;
        }
        this.grid = recyclerView;
        recyclerView.setVerticalScrollBarEnabled(false);
        recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.QrShare.EmojiPickOverlay.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView2, int i, int i2) {
                if (i2 != 0) {
                    EmojiPickOverlay.this.lastScroll = EmojiPickOverlay.nowMs();
                    EmojiPickOverlay.this.invalidate();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView2, int i) {
                EmojiPickOverlay.this.sbDragging = i == 1;
                if (i != 0) {
                    EmojiPickOverlay.this.lastScroll = EmojiPickOverlay.nowMs();
                }
                EmojiPickOverlay.this.invalidate();
            }
        });
    }

    public void setGlassRight(float f) {
        this.glassRight = f;
    }

    private boolean drawScrollbar(Canvas canvas, long j) {
        long j2 = this.lastSbFrame;
        long jMin = j2 == 0 ? 16L : Math.min(64L, j - j2);
        long j3 = this.lastSbFrame;
        if (j3 != 0 && j - j3 > 200) {
            this.sbAlpha = (this.sbDragging || j - this.lastScroll < 900) ? 1.0f : 0.0f;
        }
        this.lastSbFrame = j;
        if (this.grid != null && !Float.isNaN(this.glassRight) && !Float.isNaN(this.glassBottom) && this.grid.isAttachedToWindow()) {
            boolean z = this.sbDragging || j - this.lastScroll < 900;
            float f = z ? 1.0f : 0.0f;
            float f2 = this.sbAlpha;
            if (f2 < f) {
                this.sbAlpha = Math.min(f, f2 + (jMin / 120.0f));
            } else if (f2 > f) {
                this.sbAlpha = Math.max(f, f2 - (jMin / 250.0f));
            }
            float f3 = this.sbDragging ? 0.6f : 0.45f;
            float f4 = this.sbLevel;
            float fMin = f4 + ((f3 - f4) * Math.min(1.0f, jMin / 80.0f));
            this.sbLevel = fMin;
            z = z || this.sbAlpha > 0.0f || Math.abs(fMin - f3) > 0.004f;
            if (this.sbAlpha > 0.004f) {
                int iComputeVerticalScrollRange = this.grid.computeVerticalScrollRange();
                int iComputeVerticalScrollExtent = this.grid.computeVerticalScrollExtent();
                int iComputeVerticalScrollOffset = this.grid.computeVerticalScrollOffset();
                if (iComputeVerticalScrollRange > iComputeVerticalScrollExtent && iComputeVerticalScrollExtent > 0) {
                    this.grid.getLocationOnScreen(this.gridLoc);
                    getLocationOnScreen(this.myLoc);
                    float paddingTop = (this.gridLoc[1] - this.myLoc[1]) + this.grid.getPaddingTop();
                    float fDp = ((this.islandShow <= 0.5f || this.islandRect.isEmpty()) ? this.glassBottom - AndroidUtilities.dp(10.0f) : Math.min(this.glassBottom - AndroidUtilities.dp(10.0f), this.islandRect.top - AndroidUtilities.dp(6.0f))) - paddingTop;
                    if (fDp > AndroidUtilities.dp(30.0f)) {
                        float fMax = Math.max(AndroidUtilities.dp(28.0f), (iComputeVerticalScrollExtent * fDp) / iComputeVerticalScrollRange);
                        float fMax2 = paddingTop + ((fDp - fMax) * Math.max(0.0f, Math.min(1.0f, iComputeVerticalScrollOffset / (iComputeVerticalScrollRange - iComputeVerticalScrollExtent))));
                        float width = getWidth() - AndroidUtilities.dp(3.0f);
                        this.sbRect.set(width - AndroidUtilities.dp(3.0f), fMax2, width, fMax + fMax2);
                        this.fill.setColor(-1);
                        this.fill.setAlpha((int) (this.sbLevel * 255.0f * this.sbAlpha));
                        canvas.drawRoundRect(this.sbRect, AndroidUtilities.dpf2(1.5f), AndroidUtilities.dpf2(1.5f), this.fill);
                    }
                }
            }
        }
        return z;
    }

    private void syncItems(List<String> list) {
        Item item;
        this.matched.clear();
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            String str = list.get(i2);
            int i3 = 0;
            while (true) {
                if (i3 >= this.items.size()) {
                    item = null;
                    break;
                }
                item = this.items.get(i3);
                if (!item.leaving && !this.matched.contains(item) && item.key.equals(str)) {
                    break;
                } else {
                    i3++;
                }
            }
            if (item == null) {
                item = new Item();
                item.key = str;
            }
            this.matched.add(item);
        }
        for (int i4 = 0; i4 < this.items.size(); i4++) {
            Item item2 = this.items.get(i4);
            if (!item2.leaving && !this.matched.contains(item2)) {
                item2.leaving = true;
            }
        }
        this.next.clear();
        this.next.addAll(this.matched);
        while (true) {
            int size = this.items.size();
            ArrayList<Item> arrayList = this.items;
            if (i < size) {
                if (arrayList.get(i).leaving) {
                    ArrayList<Item> arrayList2 = this.next;
                    arrayList2.add(Math.min(i, arrayList2.size()), this.items.get(i));
                }
                i++;
            } else {
                arrayList.clear();
                this.items.addAll(this.next);
                return;
            }
        }
    }

    private int countTargets() {
        int i = 0;
        for (int i2 = 0; i2 < this.items.size(); i2++) {
            if (!this.items.get(i2).leaving) {
                i++;
            }
        }
        return i;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i = 0;
        if (this.islandShow < 0.5f || !this.islandRect.contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        if (motionEvent.getActionMasked() == 1) {
            int i2 = 0;
            while (true) {
                if (i >= this.items.size()) {
                    break;
                }
                Item item = this.items.get(i);
                if (!item.leaving) {
                    if (Math.abs(motionEvent.getX() - item.f1203x) < AndroidUtilities.dp(34.0f) / 2.0f) {
                        this.host.removePickAt(i2);
                        invalidate();
                        break;
                    }
                    i2++;
                }
                i++;
            }
        }
        return true;
    }
}
