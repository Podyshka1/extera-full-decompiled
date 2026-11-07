package org.telegram.ui.Components;

import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.view.View;
import android.view.ViewParent;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.RichMessageLayout;
import org.telegram.messenger.Utilities;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.Cells.TextSelectionHelper;

/* JADX INFO: loaded from: classes7.dex */
public class QuoteHighlight extends Path {
    public final ChatMessageCell cell;
    private int cornerPathEffectSize;
    private TextSelectionHelper.TextLayoutBlock currentBlock;
    private int currentGroup;
    private float currentOffsetX;
    private float currentOffsetY;
    public final int end;
    private final ArrayList<CornerPath> groupPaths;
    private int groupsCount;
    public final int id;
    private Rect lastRect;
    private float minX;
    public final Paint paint;
    private final CornerPath path;
    public final boolean poll;
    public byte[] pollOptionId;
    public final ArrayList<Integer> quotesToExpand;
    private final ArrayList<Rect> rectangles;
    public final int start;

    /* JADX INFO: renamed from: t */
    private final AnimatedFloat f1157t;
    public final boolean todo;

    public static class Rect {
        public TextSelectionHelper.TextLayoutBlock block;
        public float blockX;
        public float blockY;
        public float bottom;
        public boolean first;
        public int group;
        public boolean last;
        public float left;
        public float nextBottom;
        public float prevTop;
        public float right;
        public float top;

        private Rect() {
        }
    }

    public QuoteHighlight(final ChatMessageCell chatMessageCell, int i, int i2) {
        Paint paint = new Paint(1);
        this.paint = paint;
        this.path = new CornerPath();
        this.rectangles = new ArrayList<>();
        this.quotesToExpand = new ArrayList<>();
        this.groupsCount = 1;
        this.groupPaths = new ArrayList<>();
        this.cell = chatMessageCell;
        this.f1157t = new AnimatedFloat(0.0f, new Runnable() { // from class: org.telegram.ui.Components.QuoteHighlight$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                QuoteHighlight.m13984$r8$lambda$4waOk2vMbE18qeSW6UP2HXYHDU(chatMessageCell);
            }
        }, 350L, 420L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.id = i;
        int i3 = -i2;
        this.start = i3;
        this.end = i3;
        this.todo = true;
        this.poll = false;
        int iDp = AndroidUtilities.dp(4.0f);
        this.cornerPathEffectSize = iDp;
        paint.setPathEffect(new CornerPathEffect(iDp));
    }

    /* JADX INFO: renamed from: $r8$lambda$4waOk2vMbE18qeSW6UP2-HXYHDU, reason: not valid java name */
    public static /* synthetic */ void m13984$r8$lambda$4waOk2vMbE18qeSW6UP2HXYHDU(ChatMessageCell chatMessageCell) {
        if (chatMessageCell != null) {
            chatMessageCell.invalidate();
        }
        if (chatMessageCell.getParent() instanceof View) {
            ((View) chatMessageCell.getParent()).invalidate();
        }
    }

    public QuoteHighlight(final ChatMessageCell chatMessageCell, int i, byte[] bArr) {
        Paint paint = new Paint(1);
        this.paint = paint;
        this.path = new CornerPath();
        this.rectangles = new ArrayList<>();
        this.quotesToExpand = new ArrayList<>();
        this.groupsCount = 1;
        this.groupPaths = new ArrayList<>();
        this.cell = chatMessageCell;
        this.f1157t = new AnimatedFloat(0.0f, new Runnable() { // from class: org.telegram.ui.Components.QuoteHighlight$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                QuoteHighlight.$r8$lambda$FrmBRmhxAimyxX4zFmww8ORlVME(chatMessageCell);
            }
        }, 350L, 420L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.id = i;
        this.pollOptionId = bArr;
        this.start = 0;
        this.end = 0;
        this.todo = false;
        this.poll = true;
        int iDp = AndroidUtilities.dp(4.0f);
        this.cornerPathEffectSize = iDp;
        paint.setPathEffect(new CornerPathEffect(iDp));
    }

    public static /* synthetic */ void $r8$lambda$FrmBRmhxAimyxX4zFmww8ORlVME(ChatMessageCell chatMessageCell) {
        if (chatMessageCell != null) {
            chatMessageCell.invalidate();
        }
        if (chatMessageCell.getParent() instanceof View) {
            ((View) chatMessageCell.getParent()).invalidate();
        }
    }

    public QuoteHighlight(final View view, final ViewParent viewParent, int i, ArrayList<MessageObject.TextLayoutBlock> arrayList, int i2, int i3, float f) {
        int i4;
        Paint paint = new Paint(1);
        this.paint = paint;
        this.path = new CornerPath();
        this.rectangles = new ArrayList<>();
        this.quotesToExpand = new ArrayList<>();
        this.groupsCount = 1;
        this.groupPaths = new ArrayList<>();
        this.cell = null;
        this.f1157t = new AnimatedFloat(0.0f, new Runnable() { // from class: org.telegram.ui.Components.QuoteHighlight$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                QuoteHighlight.$r8$lambda$ndzqcitrdwbkbHWU4Usl4NiPxIo(view, viewParent);
            }
        }, 350L, 420L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.id = i;
        this.start = i2;
        this.end = i3;
        this.todo = false;
        this.poll = false;
        if (arrayList == null) {
            return;
        }
        int iDp = AndroidUtilities.dp(4.0f);
        this.cornerPathEffectSize = iDp;
        paint.setPathEffect(new CornerPathEffect(iDp));
        boolean z = false;
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            MessageObject.TextLayoutBlock textLayoutBlock = arrayList.get(i5);
            if (textLayoutBlock != null && i2 <= textLayoutBlock.charactersEnd && i3 >= (i4 = textLayoutBlock.charactersOffset)) {
                int iMax = Math.max(0, i2 - i4);
                int i6 = textLayoutBlock.charactersOffset;
                int iMin = Math.min(i3 - i6, textLayoutBlock.charactersEnd - i6);
                float f2 = -f;
                this.currentOffsetX = f2;
                if (textLayoutBlock.code && !textLayoutBlock.quote) {
                    this.currentOffsetX = f2 + AndroidUtilities.dp(10.0f);
                }
                this.currentOffsetY = textLayoutBlock.textYOffset(arrayList) + textLayoutBlock.padTop;
                this.minX = textLayoutBlock.quote ? AndroidUtilities.dp(10.0f) : 0.0f;
                z = z || AndroidUtilities.isRTL(textLayoutBlock.textLayout.getText());
                StaticLayout staticLayout = textLayoutBlock.textLayout;
                if (z) {
                    staticLayout.getSelectionPath(iMax, iMin, this);
                } else {
                    getSelectionPath(staticLayout, iMax, iMin);
                }
                if (textLayoutBlock.quoteCollapse && textLayoutBlock.collapsed()) {
                    this.quotesToExpand.add(Integer.valueOf(textLayoutBlock.index));
                }
            }
        }
        finishRects();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void $r8$lambda$ndzqcitrdwbkbHWU4Usl4NiPxIo(View view, ViewParent viewParent) {
        if (view != null) {
            view.invalidate();
        }
        if (viewParent instanceof View) {
            ((View) viewParent).invalidate();
        }
    }

    public QuoteHighlight(final View view, final ViewParent viewParent, int i, RichMessageLayout richMessageLayout, int i2, int i3) {
        Paint paint = new Paint(1);
        this.paint = paint;
        this.path = new CornerPath();
        this.rectangles = new ArrayList<>();
        this.quotesToExpand = new ArrayList<>();
        this.groupsCount = 1;
        this.groupPaths = new ArrayList<>();
        this.cell = null;
        this.f1157t = new AnimatedFloat(0.0f, new Runnable() { // from class: org.telegram.ui.Components.QuoteHighlight$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                QuoteHighlight.$r8$lambda$tzILe9i8WpXDMtTzd_7gkI99GhU(view, viewParent);
            }
        }, 350L, 420L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.id = i;
        this.start = i2;
        this.end = i3;
        this.todo = false;
        this.poll = false;
        if (richMessageLayout == null) {
            return;
        }
        int iDp = AndroidUtilities.dp(4.0f);
        this.cornerPathEffectSize = iDp;
        paint.setPathEffect(new CornerPathEffect(iDp));
        this.minX = -3.4028235E38f;
        for (int i4 = 0; i4 < richMessageLayout.textBlocks.size(); i4++) {
            TextSelectionHelper.TextLayoutBlock textLayoutBlock = richMessageLayout.textBlocks.get(i4);
            Layout layout = textLayoutBlock == null ? null : textLayoutBlock.getLayout();
            if (layout != null && layout.getText() != null) {
                int iIntValue = richMessageLayout.textBlockCharOffsets.get(i4).intValue();
                int length = layout.getText().length();
                int iClamp = Utilities.clamp(i2 - iIntValue, length, 0);
                int iClamp2 = Utilities.clamp(i3 - iIntValue, length, 0);
                if (iClamp < iClamp2) {
                    this.currentOffsetX = textLayoutBlock.getX();
                    this.currentOffsetY = textLayoutBlock.getY();
                    this.currentBlock = textLayoutBlock;
                    this.lastRect = null;
                    int size = this.rectangles.size();
                    if (AndroidUtilities.isRTL(layout.getText())) {
                        layout.getSelectionPath(iClamp, iClamp2, this);
                    } else {
                        getSelectionPath(layout, iClamp, iClamp2);
                    }
                    if (this.rectangles.size() > size) {
                        this.currentGroup++;
                    }
                }
            }
        }
        this.groupsCount = Math.max(1, this.currentGroup);
        finishRects();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void $r8$lambda$tzILe9i8WpXDMtTzd_7gkI99GhU(View view, ViewParent viewParent) {
        if (view != null) {
            view.invalidate();
        }
        if (viewParent instanceof View) {
            ((View) viewParent).invalidate();
        }
    }

    private void finishRects() {
        for (int i = 0; i < this.rectangles.size(); i++) {
            Rect rect = this.rectangles.get(i);
            if (i == 0 || this.rectangles.get(i - 1).group != rect.group) {
                rect.first = true;
                rect.top -= AndroidUtilities.dp(0.66f);
            }
            if (i == this.rectangles.size() - 1 || this.rectangles.get(i + 1).group != rect.group) {
                rect.last = true;
                rect.bottom += AndroidUtilities.dp(0.66f);
            }
        }
    }

    private void getSelectionPath(Layout layout, int i, int i2) {
        float lineLeft;
        float lineRight;
        if (i == i2) {
            return;
        }
        if (i2 < i) {
            i2 = i;
            i = i2;
        }
        int lineForOffset = layout.getLineForOffset(i);
        int lineForOffset2 = layout.getLineForOffset(i2);
        for (int i3 = lineForOffset; i3 <= lineForOffset2; i3++) {
            int lineStart = layout.getLineStart(i3);
            int lineEnd = layout.getLineEnd(i3);
            if (lineEnd != lineStart && (lineStart + 1 != lineEnd || !Character.isWhitespace(layout.getText().charAt(lineStart)))) {
                if (i3 == lineForOffset && i > lineStart) {
                    lineLeft = layout.getPrimaryHorizontal(i);
                } else {
                    lineLeft = layout.getLineLeft(i3);
                }
                if (i3 == lineForOffset2 && i2 < lineEnd) {
                    lineRight = layout.getPrimaryHorizontal(i2);
                } else {
                    lineRight = layout.getLineRight(i3);
                }
                addRect(Math.min(lineLeft, lineRight), layout.getLineTop(i3), Math.max(lineLeft, lineRight), layout.getLineBottom(i3));
            }
        }
    }

    public float getT() {
        return this.f1157t.set(1.0f);
    }

    public void draw(Canvas canvas, float f, float f2, android.graphics.Rect rect, float f3) {
        Canvas canvas2;
        CornerPath cornerPath;
        float f4 = this.f1157t.set(1.0f);
        canvas.save();
        int i = 0;
        if (this.poll) {
            int iLerp = AndroidUtilities.lerp(AndroidUtilities.dp(4.0f), 0, f4);
            if (this.cornerPathEffectSize != iLerp) {
                Paint paint = this.paint;
                this.cornerPathEffectSize = iLerp;
                paint.setPathEffect(new CornerPathEffect(iLerp));
            }
            this.path.rewind();
            int pollIndex = this.cell.getPollIndex(this.pollOptionId);
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(this.cell.getBackgroundDrawableLeft(), this.cell.getPollButtonTop(pollIndex), this.cell.getBackgroundDrawableRight(), this.cell.getPollButtonBottom(pollIndex));
            AndroidUtilities.lerp(rect, rectF, f4, rectF);
            this.path.addRect(rectF, Path.Direction.CW);
            this.path.closeRects();
        } else if (this.todo) {
            int iLerp2 = AndroidUtilities.lerp(AndroidUtilities.dp(4.0f), 0, f4);
            if (this.cornerPathEffectSize != iLerp2) {
                Paint paint2 = this.paint;
                this.cornerPathEffectSize = iLerp2;
                paint2.setPathEffect(new CornerPathEffect(iLerp2));
            }
            this.path.rewind();
            int todoIndex = this.cell.getTodoIndex(-this.start);
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.set(this.cell.getBackgroundDrawableLeft(), this.cell.getPollButtonTop(todoIndex), this.cell.getBackgroundDrawableRight(), this.cell.getPollButtonBottom(todoIndex));
            AndroidUtilities.lerp(rect, rectF2, f4, rectF2);
            this.path.addRect(rectF2, Path.Direction.CW);
            this.path.closeRects();
        } else {
            if (this.groupsCount > 1) {
                canvas.translate(f, f2);
                int i2 = -1;
                CornerPath cornerPath2 = null;
                int i3 = 0;
                while (i3 < this.rectangles.size()) {
                    Rect rect2 = this.rectangles.get(i3);
                    if (cornerPath2 == null || rect2.first) {
                        if (cornerPath2 != null) {
                            cornerPath2.closeRects();
                        }
                        i2++;
                        if (i2 >= this.groupPaths.size()) {
                            this.groupPaths.add(new CornerPath());
                        }
                        cornerPath2 = this.groupPaths.get(i2);
                        cornerPath2.rewind();
                    }
                    float f5 = f;
                    float f6 = f2;
                    android.graphics.Rect rect3 = rect;
                    CornerPath cornerPath3 = cornerPath2;
                    addRect(cornerPath3, rect2, f5, f6, rect3, f4);
                    cornerPath2 = cornerPath3;
                    i3++;
                    f = f5;
                    f2 = f6;
                    rect = rect3;
                }
                float f7 = f;
                float f8 = f2;
                android.graphics.Rect rect4 = rect;
                if (cornerPath2 != null) {
                    cornerPath2.closeRects();
                }
                int alpha = this.paint.getAlpha();
                canvas.saveLayerAlpha(rect4.left - f7, rect4.top - f8, rect4.right - f7, rect4.bottom - f8, (int) (alpha * f3), 31);
                this.paint.setAlpha(255);
                while (i <= i2) {
                    canvas.drawPath(this.groupPaths.get(i), this.paint);
                    i++;
                }
                this.paint.setAlpha(alpha);
                canvas.restore();
                canvas.restore();
                return;
            }
            canvas2 = canvas;
            canvas2.translate(f, f2);
            this.path.rewind();
            while (true) {
                int size = this.rectangles.size();
                cornerPath = this.path;
                if (i >= size) {
                    break;
                }
                addRect(cornerPath, this.rectangles.get(i), f, f2, rect, f4);
                i++;
            }
            cornerPath.closeRects();
            int alpha2 = this.paint.getAlpha();
            this.paint.setAlpha((int) (alpha2 * f3));
            canvas2.drawPath(this.path, this.paint);
            this.paint.setAlpha(alpha2);
            canvas2.restore();
        }
        canvas2 = canvas;
        int alpha22 = this.paint.getAlpha();
        this.paint.setAlpha((int) (alpha22 * f3));
        canvas2.drawPath(this.path, this.paint);
        this.paint.setAlpha(alpha22);
        canvas2.restore();
    }

    public void continueFrom(QuoteHighlight quoteHighlight) {
        if (quoteHighlight == null || quoteHighlight.id != this.id || quoteHighlight.todo || quoteHighlight.poll) {
            return;
        }
        this.f1157t.set(quoteHighlight.f1157t.get(), true);
    }

    private static void addRect(Path path, Rect rect, float f, float f2, android.graphics.Rect rect2, float f3) {
        float x = rect.block != null ? r0.getX() - rect.blockX : 0.0f;
        float y = rect.block != null ? r2.getY() - rect.blockY : 0.0f;
        path.addRect(AndroidUtilities.lerp(rect2.left - f, rect.left + x, f3), AndroidUtilities.lerp(rect.first ? rect2.top - f2 : rect.prevTop + y, rect.top + y, f3), AndroidUtilities.lerp(rect2.right - f, rect.right + x, f3), AndroidUtilities.lerp(rect.last ? rect2.bottom - f2 : rect.nextBottom + y, rect.bottom + y, f3), Path.Direction.CW);
    }

    public boolean done() {
        return this.f1157t.get() >= 1.0f;
    }

    @Override // android.graphics.Path
    public void addRect(float f, float f2, float f3, float f4, Path.Direction direction) {
        addRect(f, f2, f3, f4);
    }

    public void addRect(float f, float f2, float f3, float f4) {
        if (f >= f3) {
            return;
        }
        float fMax = Math.max(this.minX, f);
        float fMax2 = Math.max(this.minX, f3);
        float f5 = this.currentOffsetX;
        float f6 = fMax + f5;
        float f7 = this.currentOffsetY;
        float f8 = f2 + f7;
        float f9 = fMax2 + f5;
        Rect rect = new Rect();
        rect.left = f6 - AndroidUtilities.dp(3.0f);
        rect.right = f9 + AndroidUtilities.dp(3.0f);
        rect.top = f8;
        rect.bottom = f4 + f7;
        rect.group = this.currentGroup;
        TextSelectionHelper.TextLayoutBlock textLayoutBlock = this.currentBlock;
        rect.block = textLayoutBlock;
        if (textLayoutBlock != null) {
            rect.blockX = textLayoutBlock.getX();
            rect.blockY = this.currentBlock.getY();
        }
        Rect rect2 = this.lastRect;
        if (rect2 != null) {
            float f10 = rect2.bottom;
            rect2.nextBottom = (f10 + f8) / 2.0f;
            rect.prevTop = (f10 + f8) / 2.0f;
        }
        this.rectangles.add(rect);
        this.lastRect = rect;
    }
}
