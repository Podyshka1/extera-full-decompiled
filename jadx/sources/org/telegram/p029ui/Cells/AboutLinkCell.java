package org.telegram.p029ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.net.Uri;
import android.os.Build;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LinkPath;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.LoadingDrawable;
import org.telegram.p029ui.Components.StaticLayoutEx;
import org.telegram.p029ui.Components.URLSpanNoUnderline;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AboutLinkCell extends FrameLayout {
    private static final int COLLAPSED_HEIGHT;
    private static final int MAX_OPEN_HEIGHT;
    private static final int MOST_SPEC;
    final float SPACE;
    private Paint backgroundPaint;
    private ValueAnimator collapseAnimator;
    private FrameLayout container;
    private LoadingDrawable currentLoading;
    private Browser.Progress currentProgress;
    private float expandT;
    private boolean expanded;
    private StaticLayout firstThreeLinesLayout;
    private int lastInlineLine;
    private int lastMaxWidth;
    private LinkSpanDrawable.LinkCollector links;
    Runnable longPressedRunnable;
    private boolean moreButtonDisabled;
    private boolean needDivider;
    private boolean needSpace;
    private StaticLayout[] nextLinesLayouts;
    private Point[] nextLinesLayoutsPositions;
    private String oldText;
    private BaseFragment parentFragment;
    private LinkSpanDrawable pressedLink;
    private Layout pressedLinkLayout;
    private float pressedLinkYOffset;
    private float rawCollapseT;
    private Theme.ResourcesProvider resourcesProvider;
    private Drawable rippleBackground;
    private boolean shouldExpand;
    private Drawable showMoreBackgroundDrawable;
    private FrameLayout showMoreTextBackgroundView;
    private TextView showMoreTextView;
    private SpannableStringBuilder stringBuilder;
    private StaticLayout textLayout;
    private int textX;
    private int textY;
    private LinkPath urlPath;
    private Point urlPathOffset;
    private TextView valueTextView;

    protected void didExtend() {
    }

    protected abstract void didPressUrl(String str, Browser.Progress progress);

    protected abstract void didResizeEnd();

    protected abstract void didResizeStart();

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        return false;
    }

    protected abstract int processColor(int i);

    public AboutLinkCell(Context context, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.urlPathOffset = new Point();
        this.urlPath = new LinkPath(true);
        this.nextLinesLayouts = null;
        this.lastInlineLine = -1;
        this.needSpace = false;
        this.backgroundPaint = new Paint();
        this.SPACE = AndroidUtilities.m1124dp(3.0f);
        this.longPressedRunnable = new RunnableC33242();
        this.expandT = 0.0f;
        this.rawCollapseT = 0.0f;
        this.expanded = false;
        this.lastMaxWidth = 0;
        this.shouldExpand = false;
        this.resourcesProvider = resourcesProvider;
        this.parentFragment = baseFragment;
        FrameLayout frameLayout = new FrameLayout(context);
        this.container = frameLayout;
        frameLayout.setImportantForAccessibility(2);
        this.links = new LinkSpanDrawable.LinkCollector(this.container);
        this.rippleBackground = Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), 0, 0);
        TextView textView = new TextView(context);
        this.valueTextView = textView;
        textView.setVisibility(8);
        this.valueTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
        this.valueTextView.setTextSize(1, 13.0f);
        this.valueTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
        this.valueTextView.setLines(1);
        this.valueTextView.setMaxLines(1);
        this.valueTextView.setSingleLine(true);
        this.valueTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        this.valueTextView.setImportantForAccessibility(2);
        this.valueTextView.setFocusable(false);
        this.container.addView(this.valueTextView, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 5 : 3) | 80, 18.0f, 0.0f, 18.0f, 10.0f));
        addView(this.container, LayoutHelper.createFrame(-1, -1, 55));
        TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Cells.AboutLinkCell.1
            private boolean pressed = false;

            @Override // android.widget.TextView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                getParent().requestDisallowInterceptTouchEvent(true);
                boolean z = this.pressed;
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.pressed = true;
                } else if (action == 1) {
                    if (this.pressed) {
                        AboutLinkCell.this.updateCollapse(true, true);
                    }
                    this.pressed = false;
                } else if (action == 2) {
                    float x = motionEvent.getX();
                    float y = motionEvent.getY();
                    if (x < 0.0f || x >= getWidth() || y < 0.0f || y >= getHeight()) {
                        this.pressed = false;
                    }
                } else if (action == 3) {
                    this.pressed = false;
                }
                if (z != this.pressed) {
                    invalidate();
                }
                return true;
            }

            @Override // android.widget.TextView, android.view.View
            protected void onDraw(Canvas canvas) {
                if (this.pressed) {
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(0.0f, 0.0f, getWidth(), getHeight());
                    canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), Theme.chat_urlPaint);
                }
                super.onDraw(canvas);
            }
        };
        this.showMoreTextView = textView2;
        textView2.setClickable(true);
        this.showMoreTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText, resourcesProvider));
        this.showMoreTextView.setTextSize(1, 16.0f);
        this.showMoreTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
        this.showMoreTextView.setLines(1);
        this.showMoreTextView.setMaxLines(1);
        this.showMoreTextView.setSingleLine(true);
        this.showMoreTextView.setText(LocaleController.getString(C2888R.string.DescriptionMore));
        this.showMoreTextView.setPadding(AndroidUtilities.m1124dp(2.0f), 0, AndroidUtilities.m1124dp(2.0f), 0);
        this.showMoreTextBackgroundView = new FrameLayout(context);
        Drawable drawableMutate = context.getResources().getDrawable(C2888R.drawable.gradient_left).mutate();
        this.showMoreBackgroundDrawable = drawableMutate;
        int i = Theme.key_windowBackgroundWhite;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i, resourcesProvider), PorterDuff.Mode.MULTIPLY));
        this.showMoreTextBackgroundView.setBackground(this.showMoreBackgroundDrawable);
        FrameLayout frameLayout2 = this.showMoreTextBackgroundView;
        frameLayout2.setPadding(frameLayout2.getPaddingLeft() + AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(1.0f), 0, AndroidUtilities.m1124dp(3.0f));
        this.showMoreTextBackgroundView.addView(this.showMoreTextView, LayoutHelper.createFrame(-2, -2.0f));
        addView(this.showMoreTextBackgroundView, LayoutHelper.createFrame(-2, -2.0f, 85, 18.0f - (r1.getPaddingLeft() / AndroidUtilities.density), 0.0f, 18.0f - (this.showMoreTextBackgroundView.getPaddingRight() / AndroidUtilities.density), 6.0f));
        this.backgroundPaint.setColor(Theme.getColor(i, resourcesProvider));
        setWillNotDraw(false);
    }

    public void updateColors() {
        Theme.profile_aboutTextPaint.setColor(processColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider)));
        Theme.profile_aboutTextPaint.linkColor = processColor(Theme.getColor(Theme.key_chat_messageLinkIn, this.resourcesProvider));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (this.textLayout == null && this.nextLinesLayouts == null) {
            z = false;
        } else {
            if (motionEvent.getAction() == 0 || (this.pressedLink != null && motionEvent.getAction() == 1)) {
                if (motionEvent.getAction() == 0) {
                    resetPressedLink();
                    LinkSpanDrawable linkSpanDrawableHitLink = hitLink(x, y);
                    if (linkSpanDrawableHitLink != null) {
                        this.pressedLinkLayout = this.textLayout;
                        LinkSpanDrawable.LinkCollector linkCollector = this.links;
                        this.pressedLink = linkSpanDrawableHitLink;
                        linkCollector.addLink(linkSpanDrawableHitLink);
                        AndroidUtilities.runOnUIThread(this.longPressedRunnable, ViewConfiguration.getLongPressTimeout());
                        z = true;
                    }
                } else {
                    LinkSpanDrawable linkSpanDrawable = this.pressedLink;
                    if (linkSpanDrawable != null) {
                        try {
                            onLinkClick((ClickableSpan) linkSpanDrawable.getSpan(), this.textLayout, this.pressedLinkYOffset);
                        } catch (Exception e) {
                            FileLog.m1136e(e);
                        }
                        resetPressedLink();
                        z = true;
                    }
                }
            } else if (motionEvent.getAction() == 3) {
                resetPressedLink();
            }
            z = false;
        }
        if ((motionEvent.getActionMasked() == 0 || motionEvent.getActionMasked() == 2) && this.container.getBackground() != null) {
            this.container.getBackground().setHotspot(x, y);
        }
        return z || super.onTouchEvent(motionEvent);
    }

    private void setShowMoreMarginBottom(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.showMoreTextBackgroundView.getLayoutParams();
        if (layoutParams.bottomMargin != i) {
            layoutParams.bottomMargin = i;
            this.showMoreTextBackgroundView.setLayoutParams(layoutParams);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        float fPow = ((View) getParent()) == null ? 1.0f : (float) Math.pow(r0.getAlpha(), 2.0d);
        drawText(canvas);
        float alpha = this.showMoreTextBackgroundView.getAlpha();
        if (alpha > 0.0f) {
            canvas.save();
            canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), (int) (alpha * 255.0f), 31);
            this.showMoreBackgroundDrawable.setAlpha((int) (fPow * 255.0f));
            canvas.translate(this.showMoreTextBackgroundView.getLeft(), this.showMoreTextBackgroundView.getTop());
            this.showMoreTextBackgroundView.draw(canvas);
            canvas.restore();
        }
        this.container.draw(canvas);
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.m1124dp(20.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m1124dp(20.0f) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    private void drawText(Canvas canvas) {
        float f;
        StaticLayout staticLayout;
        int i;
        canvas.save();
        canvas.clipRect(AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(8.0f), getWidth() - AndroidUtilities.m1124dp(18.0f), getHeight());
        int iM1124dp = AndroidUtilities.m1124dp(18.0f);
        this.textX = iM1124dp;
        float f2 = 0.0f;
        canvas.translate(iM1124dp, 0.0f);
        LinkSpanDrawable.LinkCollector linkCollector = this.links;
        if (linkCollector != null && linkCollector.draw(canvas)) {
            invalidate();
        }
        int iM1124dp2 = AndroidUtilities.m1124dp(8.0f);
        this.textY = iM1124dp2;
        canvas.translate(0.0f, iM1124dp2);
        try {
            Theme.profile_aboutTextPaint.setColor(processColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider)));
            Theme.profile_aboutTextPaint.linkColor = processColor(Theme.getColor(Theme.key_chat_messageLinkIn, this.resourcesProvider));
            StaticLayout staticLayout2 = this.firstThreeLinesLayout;
            if (staticLayout2 == null || !this.shouldExpand) {
                StaticLayout staticLayout3 = this.textLayout;
                if (staticLayout3 != null) {
                    staticLayout3.draw(canvas);
                }
            } else {
                staticLayout2.draw(canvas);
                int lineCount = this.firstThreeLinesLayout.getLineCount() - 1;
                float lineTop = this.firstThreeLinesLayout.getLineTop(lineCount) + this.firstThreeLinesLayout.getTopPadding();
                float lineRight = this.firstThreeLinesLayout.getLineRight(lineCount) + (this.needSpace ? this.SPACE : 0.0f);
                float lineBottom = (this.firstThreeLinesLayout.getLineBottom(lineCount) - this.firstThreeLinesLayout.getLineTop(lineCount)) - this.firstThreeLinesLayout.getBottomPadding();
                float f3 = 1.0f;
                float fEaseInOutCubic = easeInOutCubic(1.0f - ((float) Math.pow(this.expandT, 0.25d)));
                if (this.nextLinesLayouts != null) {
                    float lineRight2 = lineRight;
                    int i2 = 0;
                    while (true) {
                        StaticLayout[] staticLayoutArr = this.nextLinesLayouts;
                        if (i2 >= staticLayoutArr.length) {
                            break;
                        }
                        StaticLayout staticLayout4 = staticLayoutArr[i2];
                        if (staticLayout4 != null) {
                            int iSave = canvas.save();
                            Point point = this.nextLinesLayoutsPositions[i2];
                            if (point != null) {
                                point.set((int) (this.textX + (lineRight2 * fEaseInOutCubic)), (int) (this.textY + lineTop + ((f3 - fEaseInOutCubic) * lineBottom)));
                            }
                            int i3 = this.lastInlineLine;
                            if (i3 != -1 && i3 <= i2) {
                                canvas.translate(f2, lineTop + lineBottom);
                                staticLayout = staticLayout4;
                                f = f3;
                                i = iSave;
                                canvas.saveLayerAlpha(0.0f, 0.0f, staticLayout4.getWidth(), staticLayout4.getHeight(), (int) (this.expandT * 255.0f), 31);
                            } else {
                                staticLayout = staticLayout4;
                                f = f3;
                                i = iSave;
                                canvas.translate(lineRight2 * fEaseInOutCubic, ((f - fEaseInOutCubic) * lineBottom) + lineTop);
                            }
                            staticLayout.draw(canvas);
                            canvas.restoreToCount(i);
                            lineRight2 += staticLayout.getLineRight(0) + this.SPACE;
                            lineBottom += (staticLayout.getLineBottom(0) + staticLayout.getTopPadding()) - 1;
                        } else {
                            f = f3;
                        }
                        i2++;
                        f3 = f;
                        f2 = 0.0f;
                    }
                }
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetPressedLink() {
        this.links.clear();
        this.pressedLink = null;
        AndroidUtilities.cancelRunOnUIThread(this.longPressedRunnable);
        invalidate();
    }

    public void setTextAndValue(String str, String str2, boolean z, boolean z2) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, this.oldText)) {
            return;
        }
        try {
            this.oldText = AndroidUtilities.getSafeString(str);
        } catch (Throwable unused) {
            this.oldText = str;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.oldText);
        this.stringBuilder = spannableStringBuilder;
        MessageObject.addLinks(false, spannableStringBuilder, false, false, !z);
        Emoji.replaceEmoji(this.stringBuilder, Theme.profile_aboutTextPaint.getFontMetricsInt(), false);
        if (this.lastMaxWidth <= 0) {
            this.lastMaxWidth = AndroidUtilities.displaySize.x - AndroidUtilities.m1124dp(36.0f);
        }
        checkTextLayout(this.lastMaxWidth, true);
        updateHeight();
        int visibility = this.valueTextView.getVisibility();
        if (TextUtils.isEmpty(str2)) {
            this.valueTextView.setVisibility(8);
        } else {
            this.valueTextView.setText(str2);
            this.valueTextView.setVisibility(0);
        }
        this.needDivider = z2;
        if (visibility != this.valueTextView.getVisibility()) {
            checkTextLayout(this.lastMaxWidth, true);
        }
        requestLayout();
    }

    /* JADX INFO: renamed from: org.telegram.ui.Cells.AboutLinkCell$2 */
    class RunnableC33242 implements Runnable {
        RunnableC33242() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String string;
            final RunnableC33242 runnableC33242;
            if (AboutLinkCell.this.pressedLink != null) {
                if (AboutLinkCell.this.pressedLink.getSpan() instanceof URLSpanNoUnderline) {
                    string = ((URLSpanNoUnderline) AboutLinkCell.this.pressedLink.getSpan()).getURL();
                } else if (AboutLinkCell.this.pressedLink.getSpan() instanceof URLSpan) {
                    string = ((URLSpan) AboutLinkCell.this.pressedLink.getSpan()).getURL();
                } else {
                    string = AboutLinkCell.this.pressedLink.getSpan().toString();
                }
                final String str = string;
                try {
                    AboutLinkCell.this.performHapticFeedback(0, 2);
                } catch (Exception unused) {
                }
                final Layout layout = AboutLinkCell.this.pressedLinkLayout;
                final float f = AboutLinkCell.this.pressedLinkYOffset;
                if (AboutLinkCell.this.getContext() != null) {
                    final ClickableSpan clickableSpan = (ClickableSpan) AboutLinkCell.this.pressedLink.getSpan();
                    BottomSheet.Builder builder = new BottomSheet.Builder(AboutLinkCell.this.getContext());
                    builder.setTitle(str);
                    runnableC33242 = this;
                    builder.setItems(new CharSequence[]{LocaleController.getString(C2888R.string.Open), LocaleController.getString(C2888R.string.Copy)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Cells.AboutLinkCell$2$$ExternalSyntheticLambda0
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            this.f$0.lambda$run$0(clickableSpan, layout, f, str, dialogInterface, i);
                        }
                    });
                    builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Cells.AboutLinkCell$2$$ExternalSyntheticLambda1
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            this.f$0.lambda$run$1(dialogInterface);
                        }
                    });
                    builder.show();
                } else {
                    runnableC33242 = this;
                }
                AboutLinkCell.this.pressedLink = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(ClickableSpan clickableSpan, Layout layout, float f, String str, DialogInterface dialogInterface, int i) {
            if (i == 0) {
                AboutLinkCell.this.onLinkClick(clickableSpan, layout, f);
                return;
            }
            if (i == 1) {
                AndroidUtilities.addToClipboard(str);
                if (AndroidUtilities.shouldShowClipboardToast()) {
                    if (str.startsWith("@")) {
                        BulletinFactory.m1246of(AboutLinkCell.this.parentFragment).createSimpleBulletin(C2888R.raw.copy, LocaleController.getString(C2888R.string.UsernameCopied)).show();
                    } else if (str.startsWith("#") || str.startsWith("$")) {
                        BulletinFactory.m1246of(AboutLinkCell.this.parentFragment).createSimpleBulletin(C2888R.raw.copy, LocaleController.getString(C2888R.string.HashtagCopied)).show();
                    } else {
                        BulletinFactory.m1246of(AboutLinkCell.this.parentFragment).createSimpleBulletin(C2888R.raw.copy, LocaleController.getString(C2888R.string.LinkCopied)).show();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(DialogInterface dialogInterface) {
            AboutLinkCell.this.resetPressedLink();
        }
    }

    private LinkSpanDrawable hitLink(int i, int i2) {
        AboutLinkCell aboutLinkCell;
        int i3;
        int i4;
        if (getMeasuredWidth() > 0 && i > getMeasuredWidth() - AndroidUtilities.m1124dp(18.0f)) {
            return null;
        }
        StaticLayout staticLayout = this.firstThreeLinesLayout;
        if (staticLayout == null || this.expandT >= 1.0f || !this.shouldExpand) {
            aboutLinkCell = this;
            i3 = i;
            i4 = i2;
        } else {
            aboutLinkCell = this;
            i3 = i;
            i4 = i2;
            LinkSpanDrawable linkSpanDrawableCheckTouchTextLayout = aboutLinkCell.checkTouchTextLayout(staticLayout, this.textX, this.textY, i3, i4);
            if (linkSpanDrawableCheckTouchTextLayout != null) {
                return linkSpanDrawableCheckTouchTextLayout;
            }
            if (aboutLinkCell.nextLinesLayouts != null) {
                int i5 = 0;
                while (true) {
                    StaticLayout[] staticLayoutArr = aboutLinkCell.nextLinesLayouts;
                    if (i5 >= staticLayoutArr.length) {
                        break;
                    }
                    StaticLayout staticLayout2 = staticLayoutArr[i5];
                    Point point = aboutLinkCell.nextLinesLayoutsPositions[i5];
                    LinkSpanDrawable linkSpanDrawableCheckTouchTextLayout2 = aboutLinkCell.checkTouchTextLayout(staticLayout2, point.x, point.y, i3, i4);
                    if (linkSpanDrawableCheckTouchTextLayout2 != null) {
                        return linkSpanDrawableCheckTouchTextLayout2;
                    }
                    i5++;
                }
            }
        }
        LinkSpanDrawable linkSpanDrawableCheckTouchTextLayout3 = aboutLinkCell.checkTouchTextLayout(aboutLinkCell.textLayout, aboutLinkCell.textX, aboutLinkCell.textY, i3, i4);
        if (linkSpanDrawableCheckTouchTextLayout3 != null) {
            return linkSpanDrawableCheckTouchTextLayout3;
        }
        return null;
    }

    private LinkSpanDrawable checkTouchTextLayout(StaticLayout staticLayout, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        try {
            int lineForVertical = staticLayout.getLineForVertical(i6);
            float f = i5;
            int offsetForHorizontal = staticLayout.getOffsetForHorizontal(lineForVertical, f);
            float lineLeft = staticLayout.getLineLeft(lineForVertical);
            if (lineLeft > f || lineLeft + staticLayout.getLineWidth(lineForVertical) < f || i6 < 0 || i6 > staticLayout.getHeight()) {
                return null;
            }
            Spannable spannable = (Spannable) staticLayout.getText();
            ClickableSpan[] clickableSpanArr = (ClickableSpan[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
            if (clickableSpanArr.length == 0 || AndroidUtilities.isAccessibilityScreenReaderEnabled()) {
                return null;
            }
            LinkSpanDrawable linkSpanDrawable = new LinkSpanDrawable(clickableSpanArr[0], this.resourcesProvider, i3, i4);
            linkSpanDrawable.setColor(processColor(Theme.getColor(Theme.key_chat_linkSelectBackground, this.resourcesProvider)));
            int spanStart = spannable.getSpanStart(clickableSpanArr[0]);
            int spanEnd = spannable.getSpanEnd(clickableSpanArr[0]);
            LinkPath linkPathObtainNewPath = linkSpanDrawable.obtainNewPath();
            float f2 = i2;
            this.pressedLinkYOffset = f2;
            linkPathObtainNewPath.setCurrentLayout(staticLayout, spanStart, f2);
            staticLayout.getSelectionPath(spanStart, spanEnd, linkPathObtainNewPath);
            return linkSpanDrawable;
        } catch (Exception e) {
            FileLog.m1136e(e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLinkClick(ClickableSpan clickableSpan, Layout layout, float f) {
        Browser.Progress progress = this.currentProgress;
        C33253 c33253 = null;
        if (progress != null) {
            progress.cancel();
            this.currentProgress = null;
        }
        if (layout != null && clickableSpan != null) {
            c33253 = new C33253(layout, clickableSpan, f);
        }
        this.currentProgress = c33253;
        if (clickableSpan instanceof URLSpanNoUnderline) {
            String url = ((URLSpanNoUnderline) clickableSpan).getURL();
            if (url.startsWith("@") || url.startsWith("#") || url.startsWith("$") || url.startsWith("/")) {
                didPressUrl(url, this.currentProgress);
                return;
            }
            return;
        }
        if (clickableSpan instanceof URLSpan) {
            String url2 = ((URLSpan) clickableSpan).getURL();
            if (AndroidUtilities.shouldShowUrlInAlert(url2)) {
                AlertsCreator.showOpenUrlAlert(this.parentFragment, url2, true, true, true, this.currentProgress, null);
                return;
            } else {
                Browser.openUrl(getContext(), Uri.parse(url2), true, true, this.currentProgress);
                return;
            }
        }
        clickableSpan.onClick(this);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Cells.AboutLinkCell$3 */
    /* JADX INFO: loaded from: classes6.dex */
    class C33253 extends Browser.Progress {
        LoadingDrawable thisLoading;
        final /* synthetic */ Layout val$layout;
        final /* synthetic */ ClickableSpan val$pressedLink;
        final /* synthetic */ float val$yOffset;

        C33253(Layout layout, ClickableSpan clickableSpan, float f) {
            this.val$layout = layout;
            this.val$pressedLink = clickableSpan;
            this.val$yOffset = f;
        }

        @Override // org.telegram.messenger.browser.Browser.Progress
        public void init() {
            if (AboutLinkCell.this.currentLoading != null) {
                AboutLinkCell.this.links.removeLoading(AboutLinkCell.this.currentLoading, true);
            }
            AboutLinkCell aboutLinkCell = AboutLinkCell.this;
            LoadingDrawable loadingDrawableMakeLoading = LinkSpanDrawable.LinkCollector.makeLoading(this.val$layout, this.val$pressedLink, this.val$yOffset);
            this.thisLoading = loadingDrawableMakeLoading;
            aboutLinkCell.currentLoading = loadingDrawableMakeLoading;
            AboutLinkCell aboutLinkCell2 = AboutLinkCell.this;
            int iProcessColor = aboutLinkCell2.processColor(Theme.getColor(Theme.key_chat_linkSelectBackground, aboutLinkCell2.resourcesProvider));
            this.thisLoading.setColors(Theme.multAlpha(iProcessColor, 0.8f), Theme.multAlpha(iProcessColor, 1.3f), Theme.multAlpha(iProcessColor, 1.0f), Theme.multAlpha(iProcessColor, 4.0f));
            this.thisLoading.strokePaint.setStrokeWidth(AndroidUtilities.dpf2(1.25f));
            AboutLinkCell.this.links.addLoading(this.thisLoading);
        }

        @Override // org.telegram.messenger.browser.Browser.Progress
        public void end(boolean z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.AboutLinkCell$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$end$0();
                }
            }, z ? 0L : 350L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$end$0() {
            if (this.thisLoading != null) {
                AboutLinkCell.this.links.removeLoading(this.thisLoading, true);
            }
        }
    }

    static {
        int iM1124dp = AndroidUtilities.m1124dp(76.0f);
        COLLAPSED_HEIGHT = iM1124dp;
        MAX_OPEN_HEIGHT = iM1124dp;
        MOST_SPEC = View.MeasureSpec.makeMeasureSpec(999999, Integer.MIN_VALUE);
    }

    /* JADX INFO: loaded from: classes6.dex */
    public class SpringInterpolator {
        public float friction;
        public float tension;
        private final float mass = 1.0f;
        private float position = 0.0f;
        private float velocity = 0.0f;

        public SpringInterpolator(float f, float f2) {
            this.tension = f;
            this.friction = f2;
        }

        public float getValue(float f) {
            float fMin = Math.min(f, 250.0f);
            while (fMin > 0.0f) {
                float fMin2 = Math.min(fMin, 18.0f);
                step(fMin2);
                fMin -= fMin2;
            }
            return this.position;
        }

        private void step(float f) {
            float f2 = (-this.tension) * 1.0E-6f;
            float f3 = this.position;
            float f4 = (-this.friction) * 0.001f;
            float f5 = this.velocity;
            float f6 = f5 + ((((f2 * (f3 - 1.0f)) + (f4 * f5)) / 1.0f) * f);
            this.velocity = f6;
            this.position = f3 + (f6 * f);
        }
    }

    public void updateCollapse(boolean z, boolean z2) {
        ValueAnimator valueAnimator = this.collapseAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.collapseAnimator = null;
        }
        final float f = this.expandT;
        final float f2 = z ? 1.0f : 0.0f;
        if (z2) {
            if (f2 > 0.0f) {
                didExtend();
            }
            float fTextHeight = textHeight();
            float fMin = Math.min(COLLAPSED_HEIGHT, fTextHeight);
            Math.abs(AndroidUtilities.lerp(fMin, fTextHeight, f2) - AndroidUtilities.lerp(fMin, fTextHeight, f));
            this.collapseAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);
            float fAbs = Math.abs(f - f2) * 1250.0f * 2.0f;
            final SpringInterpolator springInterpolator = new SpringInterpolator(380.0f, 20.17f);
            final AtomicReference atomicReference = new AtomicReference(Float.valueOf(f));
            this.collapseAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.AboutLinkCell$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$updateCollapse$0(atomicReference, f, f2, springInterpolator, valueAnimator2);
                }
            });
            this.collapseAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.AboutLinkCell.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    AboutLinkCell.this.didResizeEnd();
                    if (AboutLinkCell.this.container.getBackground() == null) {
                        AboutLinkCell.this.container.setBackground(AboutLinkCell.this.rippleBackground);
                    }
                    AboutLinkCell.this.expanded = true;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    AboutLinkCell.this.didResizeStart();
                }
            });
            this.collapseAnimator.setDuration((long) fAbs);
            this.collapseAnimator.start();
            return;
        }
        this.expandT = f2;
        forceLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateCollapse$0(AtomicReference atomicReference, float f, float f2, SpringInterpolator springInterpolator, ValueAnimator valueAnimator) {
        Float f3 = (Float) valueAnimator.getAnimatedValue();
        float fFloatValue = (f3.floatValue() - ((Float) atomicReference.getAndSet(f3)).floatValue()) * 1000.0f * 8.0f;
        this.rawCollapseT = AndroidUtilities.lerp(f, f2, ((Float) valueAnimator.getAnimatedValue()).floatValue());
        float fLerp = AndroidUtilities.lerp(f, f2, springInterpolator.getValue(fFloatValue));
        this.expandT = fLerp;
        if (fLerp > 0.8f && this.container.getBackground() == null) {
            this.container.setBackground(this.rippleBackground);
        }
        this.showMoreTextBackgroundView.setAlpha(1.0f - this.expandT);
        updateHeight();
        this.container.invalidate();
    }

    private int fromHeight() {
        int iM1124dp;
        StaticLayout staticLayout;
        if (this.shouldExpand && (staticLayout = this.firstThreeLinesLayout) != null) {
            iM1124dp = staticLayout.getHeight() + AndroidUtilities.m1124dp(16.0f);
        } else {
            iM1124dp = COLLAPSED_HEIGHT;
        }
        if (this.valueTextView.getVisibility() == 0) {
            iM1124dp += AndroidUtilities.m1124dp(23.0f);
        }
        return Math.min(iM1124dp, textHeight());
    }

    private int updateHeight() {
        int iTextHeight = textHeight();
        float fFromHeight = fromHeight();
        if (this.shouldExpand) {
            iTextHeight = (int) AndroidUtilities.lerp(fFromHeight, iTextHeight, this.expandT);
        }
        setHeight(iTextHeight);
        return iTextHeight;
    }

    private void setHeight(int i) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) getLayoutParams();
        if (layoutParams == null) {
            if (getMinimumHeight() == 0) {
                getHeight();
            } else {
                getMinimumHeight();
            }
            layoutParams = new RecyclerView.LayoutParams(-1, i);
        } else {
            z = ((ViewGroup.MarginLayoutParams) layoutParams).height != i;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = i;
        }
        if (z) {
            setLayoutParams(layoutParams);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        checkTextLayout(View.MeasureSpec.getSize(i) - AndroidUtilities.m1124dp(36.0f), false);
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(updateHeight(), TLObject.FLAG_30));
    }

    private StaticLayout makeTextLayout(CharSequence charSequence, int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            return StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), Theme.profile_aboutTextPaint, Math.max(1, i)).setBreakStrategy(0).setHyphenationFrequency(0).setAlignment(LocaleController.isRTL ? StaticLayoutEx.ALIGN_RIGHT() : StaticLayoutEx.ALIGN_LEFT()).build();
        }
        return new StaticLayout(charSequence, Theme.profile_aboutTextPaint, i, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
    }

    private void checkTextLayout(int i, boolean z) {
        if (this.moreButtonDisabled) {
            this.shouldExpand = false;
        }
        SpannableStringBuilder spannableStringBuilder = this.stringBuilder;
        if (spannableStringBuilder != null && (i != this.lastMaxWidth || z)) {
            StaticLayout staticLayoutMakeTextLayout = makeTextLayout(spannableStringBuilder, i);
            this.textLayout = staticLayoutMakeTextLayout;
            this.shouldExpand = staticLayoutMakeTextLayout.getLineCount() >= 4 && !this.moreButtonDisabled;
            if (this.textLayout.getLineCount() >= 3 && this.shouldExpand) {
                int iMax = Math.max(this.textLayout.getLineStart(2), this.textLayout.getLineEnd(2));
                if (this.stringBuilder.charAt(iMax - 1) == '\n') {
                    iMax--;
                }
                int i2 = iMax - 1;
                this.needSpace = (this.stringBuilder.charAt(i2) == ' ' || this.stringBuilder.charAt(i2) == '\n') ? false : true;
                this.firstThreeLinesLayout = makeTextLayout(this.stringBuilder.subSequence(0, iMax), i);
                this.nextLinesLayouts = new StaticLayout[this.textLayout.getLineCount() - 3];
                this.nextLinesLayoutsPositions = new Point[this.textLayout.getLineCount() - 3];
                float lineRight = this.firstThreeLinesLayout.getLineRight(this.firstThreeLinesLayout.getLineCount() - 1) + (this.needSpace ? this.SPACE : 0.0f);
                this.lastInlineLine = -1;
                if (this.showMoreTextBackgroundView.getMeasuredWidth() <= 0) {
                    FrameLayout frameLayout = this.showMoreTextBackgroundView;
                    int i3 = MOST_SPEC;
                    frameLayout.measure(i3, i3);
                }
                for (int i4 = 3; i4 < this.textLayout.getLineCount(); i4++) {
                    int lineStart = this.textLayout.getLineStart(i4);
                    int lineEnd = this.textLayout.getLineEnd(i4);
                    StaticLayout staticLayoutMakeTextLayout2 = makeTextLayout(this.stringBuilder.subSequence(Math.min(lineStart, lineEnd), Math.max(lineStart, lineEnd)), i);
                    int i5 = i4 - 3;
                    this.nextLinesLayouts[i5] = staticLayoutMakeTextLayout2;
                    this.nextLinesLayoutsPositions[i5] = new Point();
                    if (this.lastInlineLine == -1 && lineRight > (i - this.showMoreTextBackgroundView.getMeasuredWidth()) + this.showMoreTextBackgroundView.getPaddingLeft()) {
                        this.lastInlineLine = i5;
                    }
                    lineRight += staticLayoutMakeTextLayout2.getLineRight(0) + this.SPACE;
                }
                if (lineRight < (i - this.showMoreTextBackgroundView.getMeasuredWidth()) + this.showMoreTextBackgroundView.getPaddingLeft()) {
                    this.shouldExpand = false;
                }
            }
            if (!this.shouldExpand) {
                this.firstThreeLinesLayout = null;
                this.nextLinesLayouts = null;
            }
            this.lastMaxWidth = i;
            this.container.setMinimumHeight(textHeight());
            if (this.shouldExpand && this.firstThreeLinesLayout != null) {
                int iFromHeight = fromHeight() - AndroidUtilities.m1124dp(8.0f);
                StaticLayout staticLayout = this.firstThreeLinesLayout;
                setShowMoreMarginBottom((((iFromHeight - staticLayout.getLineBottom(staticLayout.getLineCount() - 1)) - this.showMoreTextBackgroundView.getPaddingBottom()) - this.showMoreTextView.getPaddingBottom()) - (this.showMoreTextView.getLayout() == null ? 0 : this.showMoreTextView.getLayout().getHeight() - this.showMoreTextView.getLayout().getLineBottom(this.showMoreTextView.getLineCount() - 1)));
            }
        }
        this.showMoreTextView.setVisibility(this.shouldExpand ? 0 : 8);
        if (!this.shouldExpand && this.container.getBackground() == null) {
            this.container.setBackground(this.rippleBackground);
        }
        if (!this.shouldExpand || this.expandT >= 1.0f || this.container.getBackground() == null) {
            return;
        }
        this.container.setBackground(null);
    }

    private int textHeight() {
        StaticLayout staticLayout = this.textLayout;
        int height = (staticLayout != null ? staticLayout.getHeight() : AndroidUtilities.m1124dp(20.0f)) + AndroidUtilities.m1124dp(16.0f);
        return this.valueTextView.getVisibility() == 0 ? height + AndroidUtilities.m1124dp(23.0f) : height;
    }

    public boolean onClick() {
        if (!this.shouldExpand || this.expandT > 0.0f) {
            return false;
        }
        updateCollapse(true, true);
        return true;
    }

    private float easeInOutCubic(float f) {
        return ((double) f) < 0.5d ? 4.0f * f * f * f : 1.0f - (((float) Math.pow((f * (-2.0f)) + 2.0f, 3.0d)) / 2.0f);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (this.textLayout != null) {
            SpannableStringBuilder spannableStringBuilder = this.stringBuilder;
            CharSequence text = this.valueTextView.getText();
            accessibilityNodeInfo.setClassName("android.widget.TextView");
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(spannableStringBuilder);
                return;
            }
            accessibilityNodeInfo.setText(((Object) text) + ": " + ((Object) spannableStringBuilder));
        }
    }

    public void setMoreButtonDisabled(boolean z) {
        this.moreButtonDisabled = z;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        updateGradientColor(i);
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        int color;
        super.setBackground(drawable);
        if (drawable instanceof ShapeDrawable) {
            color = ((ShapeDrawable) drawable).getPaint().getColor();
        } else {
            color = drawable instanceof ColorDrawable ? ((ColorDrawable) drawable).getColor() : 0;
        }
        if (color != 0) {
            updateGradientColor(color);
        }
    }

    private void updateGradientColor(int i) {
        Drawable drawable = this.showMoreBackgroundDrawable;
        if (drawable != null) {
            drawable.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
        }
        Paint paint = this.backgroundPaint;
        if (paint != null) {
            paint.setColor(i);
        }
        FrameLayout frameLayout = this.showMoreTextBackgroundView;
        if (frameLayout != null) {
            frameLayout.invalidate();
        }
    }
}
