package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.spoilers.SpoilersTextView;

/* JADX INFO: loaded from: classes7.dex */
public class EffectsTextView extends SpoilersTextView implements RecyclerListView.HitTestable {
    private boolean disablePaddingsOffset;
    private boolean disablePaddingsOffsetX;
    private boolean disablePaddingsOffsetY;
    private boolean isCustomLinkCollector;
    private LinkSpanDrawable.LinkCollector links;
    private LinkSpanDrawable.LinksTextView.OnLinkPress onLongPressListener;
    private LinkSpanDrawable.LinksTextView.OnLinkPress onPressListener;
    private LinkSpanDrawable pressedLink;
    private Theme.ResourcesProvider resourcesProvider;

    public EffectsTextView(Context context) {
        this(context, null);
    }

    public EffectsTextView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, true);
        this.isCustomLinkCollector = false;
        this.links = new LinkSpanDrawable.LinkCollector(this);
        this.resourcesProvider = resourcesProvider;
    }

    @Override // org.telegram.p029ui.Components.spoilers.SpoilersTextView, android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), false), bufferType);
    }

    @Override // org.telegram.p029ui.Components.spoilers.SpoilersTextView
    public void setDisablePaddingsOffset(boolean z) {
        this.disablePaddingsOffset = z;
    }

    @Override // org.telegram.p029ui.Components.spoilers.SpoilersTextView
    public void setDisablePaddingsOffsetX(boolean z) {
        this.disablePaddingsOffsetX = z;
    }

    @Override // org.telegram.p029ui.Components.spoilers.SpoilersTextView
    public void setDisablePaddingsOffsetY(boolean z) {
        this.disablePaddingsOffsetY = z;
    }

    @Override // org.telegram.p029ui.Components.spoilers.SpoilersTextView
    public ClickableSpan hit(int i, int i2) {
        Layout layout = getLayout();
        if (layout == null) {
            return null;
        }
        int paddingLeft = i - getPaddingLeft();
        int paddingTop = i2 - getPaddingTop();
        int lineForVertical = layout.getLineForVertical(paddingTop);
        float f = paddingLeft;
        int offsetForHorizontal = layout.getOffsetForHorizontal(lineForVertical, f);
        float lineLeft = getLayout().getLineLeft(lineForVertical);
        if (lineLeft <= f && lineLeft + layout.getLineWidth(lineForVertical) >= f && paddingTop >= 0 && paddingTop <= layout.getHeight()) {
            ClickableSpan[] clickableSpanArr = (ClickableSpan[]) new SpannableString(layout.getText()).getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
            if (clickableSpanArr.length != 0 && !AndroidUtilities.isAccessibilityScreenReaderEnabled()) {
                return clickableSpanArr[0];
            }
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.links != null) {
            Layout layout = getLayout();
            final ClickableSpan clickableSpanHit = hit((int) motionEvent.getX(), (int) motionEvent.getY());
            if (clickableSpanHit != null && motionEvent.getAction() == 0) {
                final LinkSpanDrawable linkSpanDrawable = new LinkSpanDrawable(clickableSpanHit, this.resourcesProvider, motionEvent.getX(), motionEvent.getY());
                this.pressedLink = linkSpanDrawable;
                this.links.addLink(linkSpanDrawable);
                SpannableString spannableString = new SpannableString(layout.getText());
                int spanStart = spannableString.getSpanStart(this.pressedLink.getSpan());
                int spanEnd = spannableString.getSpanEnd(this.pressedLink.getSpan());
                LinkPath linkPathObtainNewPath = this.pressedLink.obtainNewPath();
                linkPathObtainNewPath.setCurrentLayout(layout, spanStart, getPaddingTop());
                layout.getSelectionPath(spanStart, spanEnd, linkPathObtainNewPath);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.EffectsTextView$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onTouchEvent$0(linkSpanDrawable, clickableSpanHit);
                    }
                }, ViewConfiguration.getLongPressTimeout());
                return true;
            }
            if (motionEvent.getAction() == 1) {
                this.links.clear();
                LinkSpanDrawable linkSpanDrawable2 = this.pressedLink;
                if (linkSpanDrawable2 != null && linkSpanDrawable2.getSpan() == clickableSpanHit) {
                    LinkSpanDrawable.LinksTextView.OnLinkPress onLinkPress = this.onPressListener;
                    if (onLinkPress != null) {
                        onLinkPress.run((ClickableSpan) this.pressedLink.getSpan());
                    } else if (this.pressedLink.getSpan() != null) {
                        ((ClickableSpan) this.pressedLink.getSpan()).onClick(this);
                    }
                    this.pressedLink = null;
                    return true;
                }
                this.pressedLink = null;
            }
            if (motionEvent.getAction() == 3) {
                this.links.clear();
                this.pressedLink = null;
            }
        }
        return this.pressedLink != null || super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEvent$0(LinkSpanDrawable linkSpanDrawable, ClickableSpan clickableSpan) {
        LinkSpanDrawable.LinksTextView.OnLinkPress onLinkPress = this.onLongPressListener;
        if (onLinkPress == null || this.pressedLink != linkSpanDrawable) {
            return;
        }
        onLinkPress.run(clickableSpan);
        this.pressedLink = null;
        this.links.clear();
    }

    @Override // org.telegram.p029ui.Components.spoilers.SpoilersTextView, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (!this.isCustomLinkCollector) {
            canvas.save();
            if (!this.disablePaddingsOffset) {
                canvas.translate(this.disablePaddingsOffsetX ? 0.0f : getPaddingLeft(), this.disablePaddingsOffsetY ? 0.0f : getPaddingTop());
            }
            if (this.links.draw(canvas)) {
                invalidate();
            }
            canvas.restore();
        }
        super.onDraw(canvas);
    }

    @Override // org.telegram.ui.Components.RecyclerListView.HitTestable
    public boolean hasClickableNodeAt(float f, float f2) {
        int lineForVertical;
        if (!isClickable()) {
            return false;
        }
        CharSequence text = getText();
        if (text instanceof Spanned) {
            Spanned spanned = (Spanned) text;
            float totalPaddingLeft = (f - getTotalPaddingLeft()) + getScrollX();
            float totalPaddingTop = (f2 - getTotalPaddingTop()) + getScrollY();
            Layout layout = getLayout();
            if (layout != null && (lineForVertical = layout.getLineForVertical((int) totalPaddingTop)) >= 0 && lineForVertical < layout.getLineCount()) {
                float lineWidth = layout.getLineWidth(lineForVertical);
                float lineLeft = layout.getLineLeft(lineForVertical);
                if (totalPaddingLeft >= lineLeft && totalPaddingLeft <= lineLeft + lineWidth) {
                    int offsetForHorizontal = layout.getOffsetForHorizontal(lineForVertical, totalPaddingLeft);
                    if (((ClickableSpan[]) spanned.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class)).length > 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
