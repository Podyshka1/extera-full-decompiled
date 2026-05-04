package org.telegram.p029ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Region;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedEmojiSpan;
import org.telegram.p029ui.Components.CheckBox2;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LetterDrawable;
import org.telegram.p029ui.Components.LinkPath;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.spoilers.SpoilerEffect;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public class SharedLinkCell extends FrameLayout {
    private StaticLayout captionLayout;
    private TextPaint captionTextPaint;
    private int captionY;
    private CheckBox2 checkBox;
    private boolean checkingForLongPress;
    private StaticLayout dateLayout;
    private int dateLayoutX;
    private SharedLinkCellDelegate delegate;
    private TextPaint description2TextPaint;
    private int description2Y;
    private StaticLayout descriptionLayout;
    private StaticLayout descriptionLayout2;
    private List descriptionLayout2Spoilers;
    private List descriptionLayoutSpoilers;
    private TextPaint descriptionTextPaint;
    private int descriptionY;
    private boolean drawLinkImageView;
    private StaticLayout fromInfoLayout;
    private AnimatedEmojiSpan.EmojiGroupedSpans fromInfoLayoutEmojis;
    private int fromInfoLayoutY;
    private LetterDrawable letterDrawable;
    private ImageReceiver linkImageView;
    private ArrayList linkLayout;
    private boolean linkPreviewPressed;
    private SparseArray linkSpoilers;
    private int linkY;
    ArrayList links;
    private LinkSpanDrawable.LinkCollector linksCollector;
    private MessageObject message;
    private boolean needDivider;
    private AtomicReference patchedDescriptionLayout;
    private AtomicReference patchedDescriptionLayout2;
    private Path path;
    private CheckForLongPress pendingCheckForLongPress;
    private CheckForTap pendingCheckForTap;
    private int pressCount;
    private LinkSpanDrawable pressedLink;
    private int pressedLinkIndex;
    private Theme.ResourcesProvider resourcesProvider;
    private SpoilerEffect spoilerPressed;
    private int spoilerTypePressed;
    private Stack spoilersPool;
    private StaticLayout titleLayout;
    private TextPaint titleTextPaint;
    private int titleY;
    private int viewType;

    /* JADX INFO: loaded from: classes3.dex */
    public interface SharedLinkCellDelegate {
        boolean canPerformActions();

        void needOpenWebView(TLRPC.WebPage webPage, MessageObject messageObject);

        void onLinkPress(String str, boolean z);
    }

    private final class CheckForTap implements Runnable {
        private CheckForTap() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SharedLinkCell.this.pendingCheckForLongPress == null) {
                SharedLinkCell sharedLinkCell = SharedLinkCell.this;
                sharedLinkCell.pendingCheckForLongPress = sharedLinkCell.new CheckForLongPress();
            }
            CheckForLongPress checkForLongPress = SharedLinkCell.this.pendingCheckForLongPress;
            SharedLinkCell sharedLinkCell2 = SharedLinkCell.this;
            int i = sharedLinkCell2.pressCount + 1;
            sharedLinkCell2.pressCount = i;
            checkForLongPress.currentPressCount = i;
            SharedLinkCell sharedLinkCell3 = SharedLinkCell.this;
            sharedLinkCell3.postDelayed(sharedLinkCell3.pendingCheckForLongPress, ViewConfiguration.getLongPressTimeout() - ViewConfiguration.getTapTimeout());
        }
    }

    class CheckForLongPress implements Runnable {
        public int currentPressCount;

        CheckForLongPress() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SharedLinkCell.this.checkingForLongPress && SharedLinkCell.this.getParent() != null && this.currentPressCount == SharedLinkCell.this.pressCount) {
                SharedLinkCell.this.checkingForLongPress = false;
                try {
                    SharedLinkCell.this.performHapticFeedback(0);
                } catch (Exception unused) {
                }
                if (SharedLinkCell.this.pressedLinkIndex >= 0) {
                    SharedLinkCellDelegate sharedLinkCellDelegate = SharedLinkCell.this.delegate;
                    SharedLinkCell sharedLinkCell = SharedLinkCell.this;
                    sharedLinkCellDelegate.onLinkPress(((CharSequence) sharedLinkCell.links.get(sharedLinkCell.pressedLinkIndex)).toString(), true);
                }
                MotionEvent motionEventObtain = MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0);
                SharedLinkCell.this.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
            }
        }
    }

    protected void startCheckLongPress() {
        if (this.checkingForLongPress) {
            return;
        }
        this.checkingForLongPress = true;
        if (this.pendingCheckForTap == null) {
            this.pendingCheckForTap = new CheckForTap();
        }
        postDelayed(this.pendingCheckForTap, ViewConfiguration.getTapTimeout());
    }

    protected void cancelCheckLongPress() {
        this.checkingForLongPress = false;
        CheckForLongPress checkForLongPress = this.pendingCheckForLongPress;
        if (checkForLongPress != null) {
            removeCallbacks(checkForLongPress);
        }
        CheckForTap checkForTap = this.pendingCheckForTap;
        if (checkForTap != null) {
            removeCallbacks(checkForTap);
        }
    }

    public SharedLinkCell(Context context, int i) {
        this(context, i, null);
    }

    public SharedLinkCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.checkingForLongPress = false;
        this.pendingCheckForLongPress = null;
        this.pressCount = 0;
        this.pendingCheckForTap = null;
        this.linksCollector = new LinkSpanDrawable.LinkCollector(this);
        this.links = new ArrayList();
        this.linkLayout = new ArrayList();
        this.linkSpoilers = new SparseArray();
        this.descriptionLayoutSpoilers = new ArrayList();
        this.descriptionLayout2Spoilers = new ArrayList();
        this.spoilersPool = new Stack();
        this.path = new Path();
        this.spoilerTypePressed = -1;
        this.titleY = AndroidUtilities.m1124dp(10.0f);
        this.descriptionY = AndroidUtilities.m1124dp(30.0f);
        this.patchedDescriptionLayout = new AtomicReference();
        this.description2Y = AndroidUtilities.m1124dp(30.0f);
        this.patchedDescriptionLayout2 = new AtomicReference();
        this.captionY = AndroidUtilities.m1124dp(30.0f);
        this.fromInfoLayoutY = AndroidUtilities.m1124dp(30.0f);
        this.resourcesProvider = resourcesProvider;
        this.viewType = i;
        setFocusable(true);
        TextPaint textPaint = new TextPaint(1);
        this.titleTextPaint = textPaint;
        textPaint.setTypeface(AndroidUtilities.bold());
        this.titleTextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        this.descriptionTextPaint = new TextPaint(1);
        this.titleTextPaint.setTextSize(AndroidUtilities.m1124dp(14.0f));
        this.descriptionTextPaint.setTextSize(AndroidUtilities.m1124dp(14.0f));
        setWillNotDraw(false);
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.linkImageView = imageReceiver;
        imageReceiver.setRoundRadius(AndroidUtilities.m1124dp(8.0f));
        this.letterDrawable = new LetterDrawable(resourcesProvider, 0);
        CheckBox2 checkBox2 = new CheckBox2(context, 21, resourcesProvider);
        this.checkBox = checkBox2;
        checkBox2.setVisibility(4);
        this.checkBox.setColor(-1, Theme.key_windowBackgroundWhite, Theme.key_checkboxCheck);
        this.checkBox.setDrawUnchecked(false);
        this.checkBox.setDrawBackgroundAsArc(2);
        CheckBox2 checkBox22 = this.checkBox;
        boolean z = LocaleController.isRTL;
        addView(checkBox22, LayoutHelper.createFrame(24, 24.0f, (z ? 5 : 3) | 48, z ? 0.0f : 44.0f, 44.0f, z ? 44.0f : 0.0f, 0.0f));
        if (i == 1) {
            TextPaint textPaint2 = new TextPaint(1);
            this.description2TextPaint = textPaint2;
            textPaint2.setTextSize(AndroidUtilities.m1124dp(13.0f));
        }
        TextPaint textPaint3 = new TextPaint(1);
        this.captionTextPaint = textPaint3;
        textPaint3.setTextSize(AndroidUtilities.m1124dp(13.0f));
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0217, code lost:
    
        if (r11.length != r31.message.messageOwner.message.length()) goto L102;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x022c A[Catch: Exception -> 0x0176, TryCatch #8 {Exception -> 0x0176, blocks: (B:67:0x0146, B:69:0x0167, B:104:0x022c, B:106:0x0234, B:108:0x0244, B:110:0x0254, B:112:0x0268, B:114:0x027e, B:118:0x0299, B:121:0x02c5, B:74:0x0179, B:77:0x018e, B:79:0x0192, B:82:0x01a6, B:86:0x01b7, B:88:0x01bd, B:90:0x01cb, B:92:0x01d2, B:94:0x01da, B:96:0x01e4, B:97:0x01eb, B:98:0x0207, B:100:0x020b, B:102:0x0219, B:80:0x01a2), top: B:314:0x0146 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01bd A[Catch: Exception -> 0x0176, TryCatch #8 {Exception -> 0x0176, blocks: (B:67:0x0146, B:69:0x0167, B:104:0x022c, B:106:0x0234, B:108:0x0244, B:110:0x0254, B:112:0x0268, B:114:0x027e, B:118:0x0299, B:121:0x02c5, B:74:0x0179, B:77:0x018e, B:79:0x0192, B:82:0x01a6, B:86:0x01b7, B:88:0x01bd, B:90:0x01cb, B:92:0x01d2, B:94:0x01da, B:96:0x01e4, B:97:0x01eb, B:98:0x0207, B:100:0x020b, B:102:0x0219, B:80:0x01a2), top: B:314:0x0146 }] */
    /* JADX WARN: Type inference failed for: r3v41 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
        java.lang.NullPointerException
        */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int r32, int r33) {
        /*
            Method dump skipped, instruction units count: 1912
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p029ui.Cells.SharedLinkCell.onMeasure(int, int):void");
    }

    public void setLink(MessageObject messageObject, boolean z) {
        this.needDivider = z;
        resetPressedLink();
        this.message = messageObject;
        requestLayout();
    }

    public ImageReceiver getLinkImageView() {
        return this.linkImageView;
    }

    public void setDelegate(SharedLinkCellDelegate sharedLinkCellDelegate) {
        this.delegate = sharedLinkCellDelegate;
    }

    public MessageObject getMessage() {
        return this.message;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.drawLinkImageView) {
            this.linkImageView.onDetachedFromWindow();
        }
        AnimatedEmojiSpan.release(this, this.fromInfoLayoutEmojis);
        ImageReceiver imageReceiver = this.linkImageView;
        if (imageReceiver != null) {
            imageReceiver.onDetachedFromWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.drawLinkImageView) {
            this.linkImageView.onAttachedToWindow();
        }
        this.fromInfoLayoutEmojis = AnimatedEmojiSpan.update(0, this, this.fromInfoLayoutEmojis, this.fromInfoLayout);
        ImageReceiver imageReceiver = this.linkImageView;
        if (imageReceiver != null) {
            imageReceiver.onAttachedToWindow();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:133:0x0228  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        SharedLinkCellDelegate sharedLinkCellDelegate;
        boolean z2;
        int i;
        int i2;
        String str;
        TLRPC.MessageMedia messageMedia;
        if (this.message != null && !this.linkLayout.isEmpty() && (sharedLinkCellDelegate = this.delegate) != null && sharedLinkCellDelegate.canPerformActions()) {
            if (motionEvent.getAction() == 0 || ((this.linkPreviewPressed || this.spoilerPressed != null) && motionEvent.getAction() == 1)) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    if (i3 >= this.linkLayout.size()) {
                        z = false;
                        break;
                    }
                    StaticLayout staticLayout = (StaticLayout) this.linkLayout.get(i3);
                    if (staticLayout.getLineCount() > 0) {
                        int lineBottom = staticLayout.getLineBottom(staticLayout.getLineCount() - 1);
                        int iM1124dp = AndroidUtilities.m1124dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline);
                        float f = x;
                        float f2 = iM1124dp;
                        if (f >= staticLayout.getLineLeft(0) + f2 && f <= staticLayout.getLineWidth(0) + f2) {
                            int i5 = this.linkY;
                            if (y >= i5 + i4 && y <= i5 + i4 + lineBottom) {
                                TLRPC.WebPage webPage = null;
                                if (motionEvent.getAction() == 0) {
                                    this.spoilerPressed = null;
                                    if (this.linkSpoilers.get(i3, null) != null) {
                                        Iterator it = ((List) this.linkSpoilers.get(i3)).iterator();
                                        while (true) {
                                            if (!it.hasNext()) {
                                                break;
                                            }
                                            SpoilerEffect spoilerEffect = (SpoilerEffect) it.next();
                                            if (spoilerEffect.getBounds().contains(x - iM1124dp, (y - this.linkY) - i4)) {
                                                resetPressedLink();
                                                this.spoilerPressed = spoilerEffect;
                                                this.spoilerTypePressed = 0;
                                                break;
                                            }
                                        }
                                    }
                                    if (this.spoilerPressed == null && (this.pressedLinkIndex != i3 || this.pressedLink == null || !this.linkPreviewPressed)) {
                                        resetPressedLink();
                                        this.pressedLinkIndex = i3;
                                        LinkSpanDrawable linkSpanDrawable = new LinkSpanDrawable(null, this.resourcesProvider, x - iM1124dp, (y - this.linkY) - i4);
                                        this.pressedLink = linkSpanDrawable;
                                        LinkPath linkPathObtainNewPath = linkSpanDrawable.obtainNewPath();
                                        this.linkPreviewPressed = true;
                                        this.linksCollector.addLink(this.pressedLink);
                                        startCheckLongPress();
                                        try {
                                            linkPathObtainNewPath.setCurrentLayout(staticLayout, 0, f2, this.linkY + i4);
                                            staticLayout.getSelectionPath(0, staticLayout.getText().length(), linkPathObtainNewPath);
                                        } catch (Exception e) {
                                            FileLog.m1136e(e);
                                        }
                                    }
                                } else if (this.linkPreviewPressed) {
                                    try {
                                        if (this.pressedLinkIndex == 0 && (messageMedia = this.message.messageOwner.media) != null) {
                                            webPage = messageMedia.webpage;
                                        }
                                        if (webPage != null && (str = webPage.embed_url) != null && str.length() != 0) {
                                            this.delegate.needOpenWebView(webPage, this.message);
                                        } else {
                                            this.delegate.onLinkPress(((CharSequence) this.links.get(this.pressedLinkIndex)).toString(), false);
                                        }
                                    } catch (Exception e2) {
                                        FileLog.m1136e(e2);
                                    }
                                    resetPressedLink();
                                } else if (this.spoilerPressed != null) {
                                    startSpoilerRipples(x, y, i4);
                                } else {
                                    z2 = true;
                                    z = false;
                                }
                                z = true;
                            }
                        }
                        i4 += lineBottom;
                    }
                    i3++;
                }
                z2 = z;
                if (motionEvent.getAction() == 0) {
                    int iM1124dp2 = AndroidUtilities.m1124dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline);
                    StaticLayout staticLayout2 = this.descriptionLayout;
                    if (staticLayout2 != null && x >= iM1124dp2 && x <= staticLayout2.getWidth() + iM1124dp2 && y >= (i2 = this.descriptionY) && y <= i2 + this.descriptionLayout.getHeight()) {
                        Iterator it2 = this.descriptionLayoutSpoilers.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            SpoilerEffect spoilerEffect2 = (SpoilerEffect) it2.next();
                            if (spoilerEffect2.getBounds().contains(x - iM1124dp2, y - this.descriptionY)) {
                                this.spoilerPressed = spoilerEffect2;
                                this.spoilerTypePressed = 1;
                                z = true;
                                z2 = true;
                                break;
                            }
                        }
                    }
                    StaticLayout staticLayout3 = this.descriptionLayout2;
                    if (staticLayout3 != null && x >= iM1124dp2 && x <= staticLayout3.getWidth() + iM1124dp2 && y >= (i = this.description2Y) && y <= i + this.descriptionLayout2.getHeight()) {
                        for (SpoilerEffect spoilerEffect3 : this.descriptionLayout2Spoilers) {
                            if (spoilerEffect3.getBounds().contains(x - iM1124dp2, y - this.description2Y)) {
                                this.spoilerPressed = spoilerEffect3;
                                this.spoilerTypePressed = 2;
                                z = true;
                                z2 = true;
                                break;
                            }
                        }
                    }
                    if (!z2) {
                        resetPressedLink();
                    }
                } else {
                    if (motionEvent.getAction() == 1 && this.spoilerPressed != null) {
                        startSpoilerRipples(x, y, 0);
                        z = true;
                        z2 = true;
                        break;
                    }
                    if (!z2) {
                    }
                }
                return z || super.onTouchEvent(motionEvent);
            }
            if (motionEvent.getAction() == 3) {
                resetPressedLink();
            }
        } else {
            resetPressedLink();
        }
        z = false;
        if (z) {
            return true;
        }
    }

    private void startSpoilerRipples(int i, int i2, int i3) {
        int iM1124dp = AndroidUtilities.m1124dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline);
        resetPressedLink();
        this.spoilerPressed.setOnRippleEndCallback(new Runnable() { // from class: org.telegram.ui.Cells.SharedLinkCell$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startSpoilerRipples$1();
            }
        });
        int i4 = i - iM1124dp;
        float fSqrt = (float) Math.sqrt(Math.pow(getWidth(), 2.0d) + Math.pow(getHeight(), 2.0d));
        int i5 = this.spoilerTypePressed;
        if (i5 == 0) {
            float lineBottom = 0.0f;
            for (int i6 = 0; i6 < this.linkLayout.size(); i6++) {
                Layout layout = (Layout) this.linkLayout.get(i6);
                lineBottom += layout.getLineBottom(layout.getLineCount() - 1);
                Iterator it = ((List) this.linkSpoilers.get(i6)).iterator();
                while (it.hasNext()) {
                    ((SpoilerEffect) it.next()).startRipple(i4, ((i2 - getYOffsetForType(0)) - i3) + lineBottom, fSqrt);
                }
            }
        } else if (i5 == 1) {
            Iterator it2 = this.descriptionLayoutSpoilers.iterator();
            while (it2.hasNext()) {
                ((SpoilerEffect) it2.next()).startRipple(i4, i2 - getYOffsetForType(1), fSqrt);
            }
        } else if (i5 == 2) {
            Iterator it3 = this.descriptionLayout2Spoilers.iterator();
            while (it3.hasNext()) {
                ((SpoilerEffect) it3.next()).startRipple(i4, i2 - getYOffsetForType(2), fSqrt);
            }
        }
        for (int i7 = 0; i7 <= 2; i7++) {
            if (i7 != this.spoilerTypePressed) {
                if (i7 == 0) {
                    for (int i8 = 0; i8 < this.linkLayout.size(); i8++) {
                        Layout layout2 = (Layout) this.linkLayout.get(i8);
                        layout2.getLineBottom(layout2.getLineCount() - 1);
                        Iterator it4 = ((List) this.linkSpoilers.get(i8)).iterator();
                        while (it4.hasNext()) {
                            ((SpoilerEffect) it4.next()).startRipple(r1.getBounds().centerX(), r1.getBounds().centerY(), fSqrt);
                        }
                    }
                } else if (i7 == 1) {
                    Iterator it5 = this.descriptionLayoutSpoilers.iterator();
                    while (it5.hasNext()) {
                        ((SpoilerEffect) it5.next()).startRipple(r13.getBounds().centerX(), r13.getBounds().centerY(), fSqrt);
                    }
                } else if (i7 == 2) {
                    Iterator it6 = this.descriptionLayout2Spoilers.iterator();
                    while (it6.hasNext()) {
                        ((SpoilerEffect) it6.next()).startRipple(r13.getBounds().centerX(), r13.getBounds().centerY(), fSqrt);
                    }
                }
            }
        }
        this.spoilerTypePressed = -1;
        this.spoilerPressed = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startSpoilerRipples$1() {
        post(new Runnable() { // from class: org.telegram.ui.Cells.SharedLinkCell$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startSpoilerRipples$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startSpoilerRipples$0() {
        this.message.isSpoilersRevealed = true;
        this.linkSpoilers.clear();
        this.descriptionLayoutSpoilers.clear();
        this.descriptionLayout2Spoilers.clear();
        invalidate();
    }

    private int getYOffsetForType(int i) {
        if (i == 1) {
            return this.descriptionY;
        }
        if (i != 2) {
            return this.linkY;
        }
        return this.description2Y;
    }

    public String getLink(int i) {
        if (i < 0 || i >= this.links.size()) {
            return null;
        }
        return ((CharSequence) this.links.get(i)).toString();
    }

    protected void resetPressedLink() {
        this.linksCollector.clear(true);
        this.pressedLinkIndex = -1;
        this.pressedLink = null;
        this.linkPreviewPressed = false;
        cancelCheckLongPress();
        invalidate();
    }

    public void setChecked(boolean z, boolean z2) {
        if (this.checkBox.getVisibility() != 0) {
            this.checkBox.setVisibility(0);
        }
        this.checkBox.setChecked(z, z2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        SharedLinkCell sharedLinkCell;
        Canvas canvas2 = canvas;
        if (this.viewType == 1) {
            this.description2TextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText3, this.resourcesProvider));
        }
        if (this.dateLayout != null) {
            canvas2.save();
            canvas2.translate(AndroidUtilities.m1124dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline) + (LocaleController.isRTL ? 0 : this.dateLayoutX), this.titleY);
            this.dateLayout.draw(canvas2);
            canvas2.restore();
        }
        if (this.titleLayout != null) {
            canvas2.save();
            float fM1124dp = AndroidUtilities.m1124dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline);
            if (LocaleController.isRTL) {
                fM1124dp += this.dateLayout == null ? 0.0f : r2.getWidth() + AndroidUtilities.m1124dp(4.0f);
            }
            canvas2.translate(fM1124dp, this.titleY);
            this.titleLayout.draw(canvas2);
            canvas2.restore();
        }
        if (this.captionLayout != null) {
            this.captionTextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            canvas2.save();
            canvas2.translate(AndroidUtilities.m1124dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), this.captionY);
            this.captionLayout.draw(canvas2);
            canvas2.restore();
        }
        if (this.descriptionLayout != null) {
            this.descriptionTextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            canvas2.save();
            canvas2.translate(AndroidUtilities.m1124dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), this.descriptionY);
            SpoilerEffect.renderWithRipple(this, false, this.descriptionTextPaint.getColor(), -AndroidUtilities.m1124dp(2.0f), this.patchedDescriptionLayout, 0, this.descriptionLayout, this.descriptionLayoutSpoilers, canvas2, false);
            canvas2.restore();
        }
        if (this.descriptionLayout2 != null) {
            this.descriptionTextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            canvas2.save();
            canvas2.translate(AndroidUtilities.m1124dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), this.description2Y);
            SpoilerEffect.renderWithRipple(this, false, this.descriptionTextPaint.getColor(), -AndroidUtilities.m1124dp(2.0f), this.patchedDescriptionLayout2, 0, this.descriptionLayout2, this.descriptionLayout2Spoilers, canvas2, false);
            sharedLinkCell = this;
            canvas2.restore();
        } else {
            sharedLinkCell = this;
        }
        if (!sharedLinkCell.linkLayout.isEmpty()) {
            sharedLinkCell.descriptionTextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText, sharedLinkCell.resourcesProvider));
            int lineBottom = 0;
            for (int i = 0; i < sharedLinkCell.linkLayout.size(); i++) {
                StaticLayout staticLayout = (StaticLayout) sharedLinkCell.linkLayout.get(i);
                List list = (List) sharedLinkCell.linkSpoilers.get(i);
                if (staticLayout.getLineCount() > 0) {
                    canvas2.save();
                    canvas2.translate(AndroidUtilities.m1124dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), sharedLinkCell.linkY + lineBottom);
                    sharedLinkCell.path.rewind();
                    if (list != null) {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            Rect bounds = ((SpoilerEffect) it.next()).getBounds();
                            sharedLinkCell.path.addRect(bounds.left, bounds.top, bounds.right, bounds.bottom, Path.Direction.CW);
                        }
                    }
                    canvas2.save();
                    canvas2.clipPath(sharedLinkCell.path, Region.Op.DIFFERENCE);
                    staticLayout.draw(canvas2);
                    canvas2.restore();
                    canvas2.save();
                    canvas2.clipPath(sharedLinkCell.path);
                    sharedLinkCell.path.rewind();
                    if (list != null && !list.isEmpty()) {
                        ((SpoilerEffect) list.get(0)).getRipplePath(sharedLinkCell.path);
                    }
                    canvas2.clipPath(sharedLinkCell.path);
                    staticLayout.draw(canvas2);
                    canvas2.restore();
                    if (list != null) {
                        Iterator it2 = list.iterator();
                        while (it2.hasNext()) {
                            ((SpoilerEffect) it2.next()).draw(canvas2);
                        }
                    }
                    canvas2.restore();
                    lineBottom += staticLayout.getLineBottom(staticLayout.getLineCount() - 1);
                }
            }
            if (sharedLinkCell.linksCollector.draw(canvas2)) {
                sharedLinkCell.invalidate();
            }
        }
        if (sharedLinkCell.fromInfoLayout != null) {
            canvas2.save();
            canvas2.translate(AndroidUtilities.m1124dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), sharedLinkCell.fromInfoLayoutY);
            sharedLinkCell.fromInfoLayout.draw(canvas2);
            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, sharedLinkCell.fromInfoLayout, sharedLinkCell.fromInfoLayoutEmojis, 0.0f, null, 0.0f, 0.0f, 0.0f, 1.0f);
            canvas2 = canvas;
            canvas2.restore();
        }
        sharedLinkCell.letterDrawable.draw(canvas2);
        if (sharedLinkCell.drawLinkImageView) {
            sharedLinkCell.linkImageView.draw(canvas2);
        }
        if (sharedLinkCell.needDivider) {
            if (LocaleController.isRTL) {
                canvas2.drawLine(0.0f, sharedLinkCell.getMeasuredHeight() - 1, sharedLinkCell.getMeasuredWidth() - AndroidUtilities.m1124dp(AndroidUtilities.leftBaseline), sharedLinkCell.getMeasuredHeight() - 1, Theme.dividerPaint);
            } else {
                canvas.drawLine(AndroidUtilities.m1124dp(AndroidUtilities.leftBaseline), sharedLinkCell.getMeasuredHeight() - 1, sharedLinkCell.getMeasuredWidth(), sharedLinkCell.getMeasuredHeight() - 1, Theme.dividerPaint);
            }
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        StringBuilder sb = new StringBuilder();
        StaticLayout staticLayout = this.titleLayout;
        if (staticLayout != null) {
            sb.append(staticLayout.getText());
        }
        if (this.descriptionLayout != null) {
            sb.append(", ");
            sb.append(this.descriptionLayout.getText());
        }
        if (this.descriptionLayout2 != null) {
            sb.append(", ");
            sb.append(this.descriptionLayout2.getText());
        }
        accessibilityNodeInfo.setText(sb.toString());
        if (this.checkBox.isChecked()) {
            accessibilityNodeInfo.setChecked(true);
            accessibilityNodeInfo.setCheckable(true);
        }
    }
}
