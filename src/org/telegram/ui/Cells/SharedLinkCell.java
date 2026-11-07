package org.telegram.ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Region;
import android.text.Layout;
import android.text.SpannableString;
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
import org.telegram.messenger.RichMessageLayout;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.CheckBox2;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LetterDrawable;
import org.telegram.ui.Components.LinkPath;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.spoilers.SpoilerEffect;

/* JADX INFO: loaded from: classes7.dex */
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
    private List<SpoilerEffect> descriptionLayout2Spoilers;
    private List<SpoilerEffect> descriptionLayoutSpoilers;
    private TextPaint descriptionTextPaint;
    private int descriptionY;
    private boolean drawLinkImageView;
    private StaticLayout fromInfoLayout;
    private AnimatedEmojiSpan.EmojiGroupedSpans fromInfoLayoutEmojis;
    private int fromInfoLayoutY;
    private LetterDrawable letterDrawable;
    private ImageReceiver linkImageView;
    private ArrayList<StaticLayout> linkLayout;
    private boolean linkPreviewPressed;
    private SparseArray<List<SpoilerEffect>> linkSpoilers;
    private int linkY;
    ArrayList<CharSequence> links;
    private LinkSpanDrawable.LinkCollector linksCollector;
    private MessageObject message;
    private boolean needDivider;
    private AtomicReference<Layout> patchedDescriptionLayout;
    private AtomicReference<Layout> patchedDescriptionLayout2;
    private Path path;
    private CheckForLongPress pendingCheckForLongPress;
    private CheckForTap pendingCheckForTap;
    private int pressCount;
    private LinkSpanDrawable pressedLink;
    private int pressedLinkIndex;
    private Theme.ResourcesProvider resourcesProvider;
    private SpoilerEffect spoilerPressed;
    private int spoilerTypePressed;
    private Stack<SpoilerEffect> spoilersPool;
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

    public final class CheckForTap implements Runnable {
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

    public class CheckForLongPress implements Runnable {
        public int currentPressCount;

        public CheckForLongPress() {
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
                    sharedLinkCellDelegate.onLinkPress(sharedLinkCell.links.get(sharedLinkCell.pressedLinkIndex).toString(), true);
                }
                MotionEvent motionEventObtain = MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0);
                SharedLinkCell.this.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
            }
        }
    }

    public void startCheckLongPress() {
        if (this.checkingForLongPress) {
            return;
        }
        this.checkingForLongPress = true;
        if (this.pendingCheckForTap == null) {
            this.pendingCheckForTap = new CheckForTap();
        }
        postDelayed(this.pendingCheckForTap, ViewConfiguration.getTapTimeout());
    }

    public void cancelCheckLongPress() {
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
        this.links = new ArrayList<>();
        this.linkLayout = new ArrayList<>();
        this.linkSpoilers = new SparseArray<>();
        this.descriptionLayoutSpoilers = new ArrayList();
        this.descriptionLayout2Spoilers = new ArrayList();
        this.spoilersPool = new Stack<>();
        this.path = new Path();
        this.spoilerTypePressed = -1;
        this.titleY = AndroidUtilities.dp(10.0f);
        this.descriptionY = AndroidUtilities.dp(30.0f);
        this.patchedDescriptionLayout = new AtomicReference<>();
        this.description2Y = AndroidUtilities.dp(30.0f);
        this.patchedDescriptionLayout2 = new AtomicReference<>();
        this.captionY = AndroidUtilities.dp(30.0f);
        this.fromInfoLayoutY = AndroidUtilities.dp(30.0f);
        this.resourcesProvider = resourcesProvider;
        this.viewType = i;
        setFocusable(true);
        TextPaint textPaint = new TextPaint(1);
        this.titleTextPaint = textPaint;
        textPaint.setTypeface(AndroidUtilities.bold());
        this.titleTextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        this.descriptionTextPaint = new TextPaint(1);
        this.titleTextPaint.setTextSize(AndroidUtilities.dp(14.0f));
        this.descriptionTextPaint.setTextSize(AndroidUtilities.dp(14.0f));
        setWillNotDraw(false);
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.linkImageView = imageReceiver;
        imageReceiver.setRoundRadius(AndroidUtilities.dp(8.0f));
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
            textPaint2.setTextSize(AndroidUtilities.dp(13.0f));
        }
        TextPaint textPaint3 = new TextPaint(1);
        this.captionTextPaint = textPaint3;
        textPaint3.setTextSize(AndroidUtilities.dp(13.0f));
    }

    private void gatherLink(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        String strTrim = str.trim();
        if (strTrim.startsWith("#")) {
            return;
        }
        if (!AndroidUtilities.charSequenceContains(strTrim, "://") && strTrim.toString().toLowerCase().indexOf("http") != 0 && strTrim.toString().toLowerCase().indexOf("mailto") != 0) {
            strTrim = AndroidUtilities.defaultUrlScheme(strTrim) + strTrim;
        }
        this.links.add(SpannableString.valueOf(strTrim));
    }

    private void gatherRichMessageLinks(TL_iv.RichText richText) {
        if (richText instanceof TL_iv.textUrl) {
            gatherLink(richText.url);
            return;
        }
        if (richText instanceof TL_iv.textAutoUrl) {
            gatherLink(RichMessageLayout.getString(richText));
            return;
        }
        if (richText instanceof TL_iv.textEmail) {
            gatherLink("mailto:" + ((TL_iv.textEmail) richText).email);
            return;
        }
        if (richText instanceof TL_iv.textAutoEmail) {
            gatherLink("mailto:" + RichMessageLayout.getString(richText));
            return;
        }
        if (richText instanceof TL_iv.textConcat) {
            for (int i = 0; i < richText.texts.size(); i++) {
                gatherRichMessageLinks(richText.texts.get(i));
            }
            return;
        }
        if ((richText instanceof TL_iv.textBold) || (richText instanceof TL_iv.textItalic) || (richText instanceof TL_iv.textUnderline) || (richText instanceof TL_iv.textStrike) || (richText instanceof TL_iv.textFixed) || (richText instanceof TL_iv.textSubscript) || (richText instanceof TL_iv.textSuperscript) || (richText instanceof TL_iv.textMarked) || (richText instanceof TL_iv.textAnchor)) {
            gatherRichMessageLinks(richText.text);
        }
    }

    private void gatherRichMessageLinks(TL_iv.PageBlock pageBlock) {
        if ((pageBlock instanceof TL_iv.pageBlockParagraph) || (pageBlock instanceof TL_iv.pageBlockHeading1) || (pageBlock instanceof TL_iv.pageBlockHeading2) || (pageBlock instanceof TL_iv.pageBlockHeading3) || (pageBlock instanceof TL_iv.pageBlockHeading4) || (pageBlock instanceof TL_iv.pageBlockHeading5) || (pageBlock instanceof TL_iv.pageBlockHeading6) || (pageBlock instanceof TL_iv.pageBlockPreformatted) || (pageBlock instanceof TL_iv.pageBlockFooter) || (pageBlock instanceof TL_iv.pageBlockBlockquote) || (pageBlock instanceof TL_iv.pageBlockPullquote)) {
            gatherRichMessageLinks(pageBlock.text);
        } else if (pageBlock instanceof TL_iv.pageBlockCover) {
            gatherRichMessageLinks(((TL_iv.pageBlockCover) pageBlock).cover);
        } else if (pageBlock instanceof TL_iv.pageBlockBlockquoteBlocks) {
            gatherRichMessageLinks(((TL_iv.pageBlockBlockquoteBlocks) pageBlock).blocks);
        }
    }

    private void gatherRichMessageLinks(ArrayList<TL_iv.PageBlock> arrayList) {
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TL_iv.PageBlock pageBlock = arrayList.get(i);
            i++;
            gatherRichMessageLinks(pageBlock);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x0220, code lost:
    
        if (r12.length != r29.message.messageOwner.message.length()) goto L105;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x0235 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01c8 A[Catch: Exception -> 0x017e, TryCatch #1 {Exception -> 0x017e, blocks: (B:69:0x014c, B:71:0x016f, B:110:0x023d, B:112:0x024d, B:114:0x025d, B:76:0x0180, B:79:0x0195, B:81:0x0199, B:84:0x01ad, B:89:0x01c2, B:91:0x01c8, B:93:0x01d6, B:95:0x01dd, B:97:0x01e3, B:99:0x01ed, B:100:0x01f4, B:101:0x0210, B:103:0x0214, B:105:0x0222, B:82:0x01a9), top: B:329:0x014c }] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
        java.lang.NullPointerException
        */
    @Override // android.widget.FrameLayout, android.view.View
    @android.annotation.SuppressLint({"DrawAllocation"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int r30, int r31) {
        /*
            Method dump skipped, instruction units count: 2051
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.ui.Cells.SharedLinkCell.onMeasure(int, int):void");
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
    public void onDetachedFromWindow() {
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
    public void onAttachedToWindow() {
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
                    StaticLayout staticLayout = this.linkLayout.get(i3);
                    if (staticLayout.getLineCount() > 0) {
                        int lineBottom = staticLayout.getLineBottom(staticLayout.getLineCount() - 1);
                        int iDp = AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline);
                        float f = x;
                        float f2 = iDp;
                        if (f >= staticLayout.getLineLeft(0) + f2 && f <= staticLayout.getLineWidth(0) + f2) {
                            int i5 = this.linkY;
                            if (y >= i5 + i4 && y <= i5 + i4 + lineBottom) {
                                TLRPC.WebPage webPage = null;
                                if (motionEvent.getAction() == 0) {
                                    this.spoilerPressed = null;
                                    if (this.linkSpoilers.get(i3, null) != null) {
                                        Iterator<SpoilerEffect> it = this.linkSpoilers.get(i3).iterator();
                                        while (true) {
                                            if (!it.hasNext()) {
                                                break;
                                            }
                                            SpoilerEffect next = it.next();
                                            if (next.getBounds().contains(x - iDp, (y - this.linkY) - i4)) {
                                                resetPressedLink();
                                                this.spoilerPressed = next;
                                                this.spoilerTypePressed = 0;
                                                break;
                                            }
                                        }
                                    }
                                    if (this.spoilerPressed == null && (this.pressedLinkIndex != i3 || this.pressedLink == null || !this.linkPreviewPressed)) {
                                        resetPressedLink();
                                        this.pressedLinkIndex = i3;
                                        LinkSpanDrawable linkSpanDrawable = new LinkSpanDrawable(null, this.resourcesProvider, x - iDp, (y - this.linkY) - i4);
                                        this.pressedLink = linkSpanDrawable;
                                        LinkPath linkPathObtainNewPath = linkSpanDrawable.obtainNewPath();
                                        this.linkPreviewPressed = true;
                                        this.linksCollector.addLink(this.pressedLink);
                                        startCheckLongPress();
                                        try {
                                            linkPathObtainNewPath.setCurrentLayout(staticLayout, 0, f2, this.linkY + i4);
                                            staticLayout.getSelectionPath(0, staticLayout.getText().length(), linkPathObtainNewPath);
                                        } catch (Exception e) {
                                            FileLog.m1040e(e);
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
                                            this.delegate.onLinkPress(this.links.get(this.pressedLinkIndex).toString(), false);
                                        }
                                    } catch (Exception e2) {
                                        FileLog.m1040e(e2);
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
                    int iDp2 = AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline);
                    StaticLayout staticLayout2 = this.descriptionLayout;
                    if (staticLayout2 != null && x >= iDp2 && x <= staticLayout2.getWidth() + iDp2 && y >= (i2 = this.descriptionY) && y <= i2 + this.descriptionLayout.getHeight()) {
                        Iterator<SpoilerEffect> it2 = this.descriptionLayoutSpoilers.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            SpoilerEffect next2 = it2.next();
                            if (next2.getBounds().contains(x - iDp2, y - this.descriptionY)) {
                                this.spoilerPressed = next2;
                                this.spoilerTypePressed = 1;
                                z = true;
                                z2 = true;
                                break;
                            }
                        }
                    }
                    StaticLayout staticLayout3 = this.descriptionLayout2;
                    if (staticLayout3 != null && x >= iDp2 && x <= staticLayout3.getWidth() + iDp2 && y >= (i = this.description2Y) && y <= i + this.descriptionLayout2.getHeight()) {
                        for (SpoilerEffect spoilerEffect : this.descriptionLayout2Spoilers) {
                            if (spoilerEffect.getBounds().contains(x - iDp2, y - this.description2Y)) {
                                this.spoilerPressed = spoilerEffect;
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
        int iDp = AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline);
        resetPressedLink();
        this.spoilerPressed.setOnRippleEndCallback(new Runnable() { // from class: org.telegram.ui.Cells.SharedLinkCell$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startSpoilerRipples$1();
            }
        });
        int i4 = i - iDp;
        float fSqrt = (float) Math.sqrt(Math.pow(getWidth(), 2.0d) + Math.pow(getHeight(), 2.0d));
        int i5 = this.spoilerTypePressed;
        if (i5 == 0) {
            float lineBottom = 0.0f;
            for (int i6 = 0; i6 < this.linkLayout.size(); i6++) {
                StaticLayout staticLayout = this.linkLayout.get(i6);
                lineBottom += staticLayout.getLineBottom(staticLayout.getLineCount() - 1);
                Iterator<SpoilerEffect> it = this.linkSpoilers.get(i6).iterator();
                while (it.hasNext()) {
                    it.next().startRipple(i4, ((i2 - getYOffsetForType(0)) - i3) + lineBottom, fSqrt);
                }
            }
        } else if (i5 == 1) {
            Iterator<SpoilerEffect> it2 = this.descriptionLayoutSpoilers.iterator();
            while (it2.hasNext()) {
                it2.next().startRipple(i4, i2 - getYOffsetForType(1), fSqrt);
            }
        } else if (i5 == 2) {
            Iterator<SpoilerEffect> it3 = this.descriptionLayout2Spoilers.iterator();
            while (it3.hasNext()) {
                it3.next().startRipple(i4, i2 - getYOffsetForType(2), fSqrt);
            }
        }
        for (int i7 = 0; i7 <= 2; i7++) {
            if (i7 != this.spoilerTypePressed) {
                if (i7 == 0) {
                    for (int i8 = 0; i8 < this.linkLayout.size(); i8++) {
                        StaticLayout staticLayout2 = this.linkLayout.get(i8);
                        staticLayout2.getLineBottom(staticLayout2.getLineCount() - 1);
                        Iterator<SpoilerEffect> it4 = this.linkSpoilers.get(i8).iterator();
                        while (it4.hasNext()) {
                            it4.next().startRipple(r1.getBounds().centerX(), r1.getBounds().centerY(), fSqrt);
                        }
                    }
                } else if (i7 == 1) {
                    Iterator<SpoilerEffect> it5 = this.descriptionLayoutSpoilers.iterator();
                    while (it5.hasNext()) {
                        it5.next().startRipple(r13.getBounds().centerX(), r13.getBounds().centerY(), fSqrt);
                    }
                } else if (i7 == 2) {
                    Iterator<SpoilerEffect> it6 = this.descriptionLayout2Spoilers.iterator();
                    while (it6.hasNext()) {
                        it6.next().startRipple(r13.getBounds().centerX(), r13.getBounds().centerY(), fSqrt);
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
        return this.links.get(i).toString();
    }

    public void resetPressedLink() {
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
    public void onDraw(Canvas canvas) {
        SharedLinkCell sharedLinkCell;
        Canvas canvas2 = canvas;
        if (this.viewType == 1) {
            this.description2TextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText3, this.resourcesProvider));
        }
        if (this.dateLayout != null) {
            canvas2.save();
            canvas2.translate(AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline) + (LocaleController.isRTL ? 0 : this.dateLayoutX), this.titleY);
            this.dateLayout.draw(canvas2);
            canvas2.restore();
        }
        if (this.titleLayout != null) {
            canvas2.save();
            float fDp = AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline);
            if (LocaleController.isRTL) {
                fDp += this.dateLayout == null ? 0.0f : r2.getWidth() + AndroidUtilities.dp(4.0f);
            }
            canvas2.translate(fDp, this.titleY);
            this.titleLayout.draw(canvas2);
            canvas2.restore();
        }
        if (this.captionLayout != null) {
            this.captionTextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            canvas2.save();
            canvas2.translate(AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), this.captionY);
            this.captionLayout.draw(canvas2);
            canvas2.restore();
        }
        if (this.descriptionLayout != null) {
            this.descriptionTextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            canvas2.save();
            canvas2.translate(AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), this.descriptionY);
            SpoilerEffect.renderWithRipple(this, false, this.descriptionTextPaint.getColor(), -AndroidUtilities.dp(2.0f), this.patchedDescriptionLayout, 0, this.descriptionLayout, this.descriptionLayoutSpoilers, canvas2, false);
            canvas2.restore();
        }
        if (this.descriptionLayout2 != null) {
            this.descriptionTextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            canvas2.save();
            canvas2.translate(AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), this.description2Y);
            SpoilerEffect.renderWithRipple(this, false, this.descriptionTextPaint.getColor(), -AndroidUtilities.dp(2.0f), this.patchedDescriptionLayout2, 0, this.descriptionLayout2, this.descriptionLayout2Spoilers, canvas2, false);
            sharedLinkCell = this;
            canvas2.restore();
        } else {
            sharedLinkCell = this;
        }
        if (!sharedLinkCell.linkLayout.isEmpty()) {
            sharedLinkCell.descriptionTextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText, sharedLinkCell.resourcesProvider));
            int lineBottom = 0;
            for (int i = 0; i < sharedLinkCell.linkLayout.size(); i++) {
                StaticLayout staticLayout = sharedLinkCell.linkLayout.get(i);
                List<SpoilerEffect> list = sharedLinkCell.linkSpoilers.get(i);
                if (staticLayout.getLineCount() > 0) {
                    canvas2.save();
                    canvas2.translate(AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), sharedLinkCell.linkY + lineBottom);
                    sharedLinkCell.path.rewind();
                    if (list != null) {
                        Iterator<SpoilerEffect> it = list.iterator();
                        while (it.hasNext()) {
                            Rect bounds = it.next().getBounds();
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
                        list.get(0).getRipplePath(sharedLinkCell.path);
                    }
                    canvas2.clipPath(sharedLinkCell.path);
                    staticLayout.draw(canvas2);
                    canvas2.restore();
                    if (list != null) {
                        Iterator<SpoilerEffect> it2 = list.iterator();
                        while (it2.hasNext()) {
                            it2.next().draw(canvas2);
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
            canvas2.translate(AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), sharedLinkCell.fromInfoLayoutY);
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
                canvas2.drawLine(0.0f, sharedLinkCell.getMeasuredHeight() - 1, sharedLinkCell.getMeasuredWidth() - AndroidUtilities.dp(AndroidUtilities.leftBaseline), sharedLinkCell.getMeasuredHeight() - 1, Theme.dividerPaint);
            } else {
                canvas.drawLine(AndroidUtilities.dp(AndroidUtilities.leftBaseline), sharedLinkCell.getMeasuredHeight() - 1, sharedLinkCell.getMeasuredWidth(), sharedLinkCell.getMeasuredHeight() - 1, Theme.dividerPaint);
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
