package org.telegram.p029ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.ChatListItemAnimator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.ChatMessageCell;
import org.telegram.p029ui.Components.AnimatedEmojiSpan;
import org.telegram.p029ui.Components.ChatActivityEnterView;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.EmptyStubSpan;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.ReplyMessageLine;
import org.telegram.p029ui.Components.chat.ViewPositionWatcher;
import org.telegram.p029ui.Components.spoilers.SpoilerEffect;
import org.telegram.p029ui.MessageEnterTransitionContainer;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public class TextMessageEnterTransition implements MessageEnterTransitionContainer.Transition {
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack;
    private ValueAnimator animator;
    boolean changeColor;
    private ChatActivity chatActivity;
    MessageEnterTransitionContainer container;
    boolean crossfade;
    Bitmap crossfadeTextBitmap;
    float crossfadeTextOffset;
    private final int currentAccount;
    MessageObject currentMessageObject;
    boolean drawBitmaps;
    private float drawableFromBottom;
    float drawableFromTop;
    ChatActivityEnterView enterView;
    int fromColor;
    Drawable fromMessageDrawable;
    float fromRadius;
    private float fromStartX;
    private float fromStartY;
    private Matrix gradientMatrix;
    private Paint gradientPaint;
    private LinearGradient gradientShader;
    boolean hasReply;
    float lastMessageX;
    float lastMessageY;
    StaticLayout layout;
    RecyclerListView listView;
    private float listViewTargetBottomPadding;
    private int messageId;
    private final RectF messageReplySelectorRect;
    ChatMessageCell messageView;
    float progress;
    int replayFromColor;
    int replayObjectFromColor;
    float replyFromObjectStartY;
    float replyFromStartWidth;
    float replyFromStartX;
    float replyFromStartY;
    float replyNameDx;
    private final RectF replySelectorRect;
    private final Theme.ResourcesProvider resourcesProvider;
    private float[] roundRectRadii;
    StaticLayout rtlLayout;
    private float scaleFrom;
    private float scaleY;
    Bitmap textLayoutBitmap;
    Bitmap textLayoutBitmapRtl;
    MessageObject.TextLayoutBlock textLayoutBlock;
    float textX;
    float textY;
    private final PointF tmpPointF;
    int toColor;
    float toXOffset;
    float toXOffsetRtl;
    Paint bitmapPaint = new Paint(1);
    boolean initBitmaps = false;
    private AnimationNotificationsLocker notificationsLocker = new AnimationNotificationsLocker();

    public TextMessageEnterTransition(final ChatMessageCell chatMessageCell, final ChatActivity chatActivity, RecyclerListView recyclerListView, final MessageEnterTransitionContainer messageEnterTransitionContainer, Theme.ResourcesProvider resourcesProvider) {
        int lineTop;
        int i;
        int i2;
        float f;
        Theme.MessageDrawable currentBackgroundDrawable;
        float f2;
        Object[] spans;
        TextPaint textPaint;
        this.drawBitmaps = false;
        PointF pointF = new PointF();
        this.tmpPointF = pointF;
        this.replySelectorRect = new RectF();
        this.messageReplySelectorRect = new RectF();
        this.resourcesProvider = resourcesProvider;
        this.currentAccount = UserConfig.selectedAccount;
        if (chatMessageCell.getMessageObject().textLayoutBlocks == null || chatMessageCell.getMessageObject().textLayoutBlocks.size() > 1 || chatMessageCell.getMessageObject().textLayoutBlocks.isEmpty() || chatMessageCell.getMessageObject().textLayoutBlocks.get(0).textLayout.getLineCount() > 10) {
            return;
        }
        this.messageView = chatMessageCell;
        this.listView = recyclerListView;
        this.container = messageEnterTransitionContainer;
        this.chatActivity = chatActivity;
        this.enterView = chatActivity.getChatActivityEnterView();
        final ChatActivityEnterView chatActivityEnterView = chatActivity.getChatActivityEnterView();
        if (chatActivityEnterView == null || chatActivityEnterView.getEditField() == null || chatActivityEnterView.getEditField().getLayout() == null) {
            return;
        }
        ChatActivityEnterView.RecordCircle recordCircle = chatActivityEnterView.getRecordCircle();
        this.fromRadius = recordCircle == null ? 0.0f : recordCircle.drawingCircleRadius;
        this.bitmapPaint.setFilterBitmap(true);
        this.currentMessageObject = chatMessageCell.getMessageObject();
        if (!chatMessageCell.getTransitionParams().wasDraw) {
            chatMessageCell.draw(new Canvas());
        }
        chatMessageCell.setEnterTransitionInProgress(true);
        Editable editText = chatActivityEnterView.getEditText();
        CharSequence charSequenceReplaceEmoji = chatMessageCell.getMessageObject().messageText;
        this.crossfade = false;
        int height = chatActivityEnterView.getEditField().getLayout().getHeight();
        TextPaint textPaint2 = Theme.chat_msgTextPaint;
        AndroidUtilities.m1124dp(20.0f);
        if (chatMessageCell.getMessageObject().getEmojiOnlyCount() != 0) {
            boolean z = chatMessageCell.getMessageObject().emojiOnlyCount == chatMessageCell.getMessageObject().animatedEmojiCount;
            switch (Math.max(chatMessageCell.getMessageObject().emojiOnlyCount, chatMessageCell.getMessageObject().animatedEmojiCount)) {
                case 0:
                case 1:
                case 2:
                    TextPaint[] textPaintArr = Theme.chat_msgTextPaintEmoji;
                    textPaint = z ? textPaintArr[0] : textPaintArr[2];
                    break;
                case 3:
                    TextPaint[] textPaintArr2 = Theme.chat_msgTextPaintEmoji;
                    textPaint = z ? textPaintArr2[1] : textPaintArr2[3];
                    break;
                case 4:
                    TextPaint[] textPaintArr3 = Theme.chat_msgTextPaintEmoji;
                    textPaint = z ? textPaintArr3[2] : textPaintArr3[4];
                    break;
                case 5:
                    TextPaint[] textPaintArr4 = Theme.chat_msgTextPaintEmoji;
                    textPaint = z ? textPaintArr4[3] : textPaintArr4[5];
                    break;
                case 6:
                    TextPaint[] textPaintArr5 = Theme.chat_msgTextPaintEmoji;
                    textPaint = z ? textPaintArr5[4] : textPaintArr5[5];
                    break;
                default:
                    textPaint = Theme.chat_msgTextPaintEmoji[5];
                    break;
            }
            textPaint2 = textPaint;
            if (textPaint2 != null) {
                textPaint2.getTextSize();
                AndroidUtilities.m1124dp(4.0f);
            }
        }
        boolean z2 = (charSequenceReplaceEmoji instanceof Spannable) && (spans = ((Spannable) charSequenceReplaceEmoji).getSpans(0, charSequenceReplaceEmoji.length(), Object.class)) != null && spans.length > 0;
        if (editText.length() != charSequenceReplaceEmoji.length() || z2) {
            this.crossfade = true;
            int[] iArr = new int[1];
            CharSequence charSequenceTrim = AndroidUtilities.trim(editText, iArr);
            if (iArr[0] > 0) {
                lineTop = chatActivityEnterView.getEditField().getLayout().getLineTop(chatActivityEnterView.getEditField().getLayout().getLineForOffset(iArr[0]));
                height = chatActivityEnterView.getEditField().getLayout().getLineBottom(chatActivityEnterView.getEditField().getLayout().getLineForOffset(iArr[0] + charSequenceTrim.length())) - lineTop;
            } else {
                lineTop = 0;
            }
            AnimatedEmojiSpan.cloneSpans(charSequenceReplaceEmoji);
            charSequenceReplaceEmoji = Emoji.replaceEmoji(editText, textPaint2.getFontMetricsInt(), false);
        } else {
            lineTop = 0;
        }
        this.scaleFrom = chatActivityEnterView.getEditField().getTextSize() / textPaint2.getTextSize();
        int lineCount = chatActivityEnterView.getEditField().getLayout().getLineCount();
        int width = (int) (chatActivityEnterView.getEditField().getLayout().getWidth() / this.scaleFrom);
        if (Build.VERSION.SDK_INT >= 24) {
            this.layout = StaticLayout.Builder.obtain(charSequenceReplaceEmoji, 0, charSequenceReplaceEmoji.length(), textPaint2, width).setBreakStrategy(1).setHyphenationFrequency(0).setAlignment(Layout.Alignment.ALIGN_NORMAL).build();
        } else {
            this.layout = new StaticLayout(charSequenceReplaceEmoji, textPaint2, width, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        }
        this.animatedEmojiStack = AnimatedEmojiSpan.update(2, (View) null, this.animatedEmojiStack, this.layout);
        ViewPositionWatcher.computeCoordinatesInParent(chatActivityEnterView.getEditField(), chatActivity.contentView, pointF);
        float f3 = pointF.y;
        this.fromStartX = pointF.x;
        this.fromStartY = ((AndroidUtilities.m1124dp(10.0f) + f3) - chatActivityEnterView.getEditField().getScrollY()) + lineTop;
        this.toXOffset = 0.0f;
        float f4 = Float.MAX_VALUE;
        for (int i3 = 0; i3 < this.layout.getLineCount(); i3++) {
            float lineLeft = this.layout.getLineLeft(i3);
            if (lineLeft < f4) {
                f4 = lineLeft;
            }
        }
        if (f4 != Float.MAX_VALUE) {
            this.toXOffset = f4;
        }
        this.scaleY = height / (this.layout.getHeight() * this.scaleFrom);
        this.drawableFromTop = AndroidUtilities.m1124dp(4.0f) + f3;
        float f5 = 12.0f;
        if (this.enterView.isTopViewVisible()) {
            this.drawableFromTop -= AndroidUtilities.m1124dp(12.0f);
        }
        this.drawableFromBottom = f3 + chatActivityEnterView.getEditField().getMeasuredHeight();
        MessageObject.TextLayoutBlock textLayoutBlock = chatMessageCell.getMessageObject().textLayoutBlocks.get(0);
        this.textLayoutBlock = textLayoutBlock;
        StaticLayout staticLayout = textLayoutBlock.textLayout;
        int i4 = Theme.key_chat_messageTextOut;
        double dCalculateLuminance = ColorUtils.calculateLuminance(getThemedColor(i4));
        int i5 = Theme.key_chat_messagePanelText;
        if (Math.abs(dCalculateLuminance - ColorUtils.calculateLuminance(getThemedColor(i5))) > 0.20000000298023224d) {
            this.crossfade = true;
            this.changeColor = true;
        }
        this.fromColor = getThemedColor(i5);
        this.toColor = getThemedColor(i4);
        if (staticLayout.getLineCount() == this.layout.getLineCount()) {
            lineCount = staticLayout.getLineCount();
            int i6 = 0;
            i = 0;
            i2 = 0;
            while (true) {
                if (i6 < lineCount) {
                    if (isRtlLine(this.layout, i6)) {
                        i2++;
                    } else {
                        i++;
                    }
                    if (staticLayout.getLineEnd(i6) != this.layout.getLineEnd(i6)) {
                        this.crossfade = true;
                    } else {
                        i6++;
                    }
                }
            }
        } else {
            this.crossfade = true;
            i = 0;
            i2 = 0;
        }
        if (this.crossfade || i2 <= 0 || i <= 0) {
            f = 12.0f;
        } else {
            SpannableString spannableString = new SpannableString(charSequenceReplaceEmoji);
            SpannableString spannableString2 = new SpannableString(charSequenceReplaceEmoji);
            float f6 = Float.MAX_VALUE;
            int i7 = 0;
            while (i7 < lineCount) {
                if (isRtlLine(this.layout, i7)) {
                    f2 = f5;
                    spannableString.setSpan(new EmptyStubSpan(), this.layout.getLineStart(i7), this.layout.getLineEnd(i7), 0);
                    float lineLeft2 = this.layout.getLineLeft(i7);
                    f6 = lineLeft2 < f6 ? lineLeft2 : f6;
                } else {
                    f2 = f5;
                    spannableString2.setSpan(new EmptyStubSpan(), this.layout.getLineStart(i7), this.layout.getLineEnd(i7), 0);
                }
                i7++;
                f5 = f2;
            }
            f = f5;
            if (Build.VERSION.SDK_INT >= 24) {
                StaticLayout.Builder hyphenationFrequency = StaticLayout.Builder.obtain(spannableString, 0, spannableString.length(), textPaint2, width).setBreakStrategy(1).setHyphenationFrequency(0);
                Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
                this.layout = hyphenationFrequency.setAlignment(alignment).build();
                this.rtlLayout = StaticLayout.Builder.obtain(spannableString2, 0, spannableString2.length(), textPaint2, width).setBreakStrategy(1).setHyphenationFrequency(0).setAlignment(alignment).build();
            } else {
                Layout.Alignment alignment2 = Layout.Alignment.ALIGN_NORMAL;
                TextPaint textPaint3 = textPaint2;
                this.layout = new StaticLayout(spannableString, textPaint3, width, alignment2, 1.0f, 0.0f, false);
                this.rtlLayout = new StaticLayout(spannableString2, textPaint3, width, alignment2, 1.0f, 0.0f, false);
            }
        }
        this.toXOffsetRtl = this.layout.getWidth() - chatMessageCell.getMessageObject().textLayoutBlocks.get(0).textLayout.getWidth();
        try {
            if (this.drawBitmaps) {
                int width2 = this.layout.getWidth();
                int height2 = this.layout.getHeight();
                Bitmap.Config config = Bitmap.Config.ARGB_8888;
                this.textLayoutBitmap = Bitmap.createBitmap(width2, height2, config);
                this.layout.draw(new Canvas(this.textLayoutBitmap));
                StaticLayout staticLayout2 = this.rtlLayout;
                if (staticLayout2 != null) {
                    this.textLayoutBitmapRtl = Bitmap.createBitmap(staticLayout2.getWidth(), this.rtlLayout.getHeight(), config);
                    this.rtlLayout.draw(new Canvas(this.textLayoutBitmapRtl));
                }
                if (this.crossfade) {
                    if (chatMessageCell.getMeasuredHeight() < recyclerListView.getMeasuredHeight()) {
                        this.crossfadeTextOffset = 0.0f;
                        this.crossfadeTextBitmap = Bitmap.createBitmap(chatMessageCell.getMeasuredWidth(), chatMessageCell.getMeasuredHeight(), config);
                    } else {
                        this.crossfadeTextOffset = chatMessageCell.getTop();
                        this.crossfadeTextBitmap = Bitmap.createBitmap(chatMessageCell.getMeasuredWidth(), recyclerListView.getMeasuredHeight(), config);
                    }
                }
            }
        } catch (Exception unused) {
            this.drawBitmaps = false;
        }
        boolean z3 = (chatMessageCell.getMessageObject().getReplyMsgId() == 0 || chatMessageCell.replyNameLayout == null) ? false : true;
        this.hasReply = z3;
        if (z3) {
            SimpleTextView replyNameTextView = chatActivity.getReplyNameTextView();
            ViewPositionWatcher.computeCoordinatesInParent(replyNameTextView, chatActivity.contentView, this.tmpPointF);
            PointF pointF2 = this.tmpPointF;
            this.replyFromStartX = pointF2.x;
            this.replyFromStartY = pointF2.y;
            this.replyFromStartWidth = ((View) replyNameTextView.getParent()).getWidth();
            SimpleTextView replyObjectTextView = chatActivity.getReplyObjectTextView();
            ViewPositionWatcher.computeCoordinatesInParent(replyObjectTextView, chatActivity.contentView, this.tmpPointF);
            this.replyFromObjectStartY = this.tmpPointF.y;
            this.replayFromColor = replyNameTextView.getTextColor();
            this.replayObjectFromColor = replyObjectTextView.getTextColor();
            this.drawableFromTop -= AndroidUtilities.m1124dp(46.0f);
        }
        this.listViewTargetBottomPadding = recyclerListView.getPaddingBottom() - (chatActivity.getInputIslandHeightTarget() - AndroidUtilities.m1124dp(48.0f));
        this.gradientMatrix = new Matrix();
        Paint paint = new Paint(1);
        this.gradientPaint = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        LinearGradient linearGradient = new LinearGradient(0.0f, AndroidUtilities.m1124dp(f), 0.0f, 0.0f, 0, -16777216, Shader.TileMode.CLAMP);
        this.gradientShader = linearGradient;
        this.gradientPaint.setShader(linearGradient);
        this.messageId = chatMessageCell.getMessageObject().stableId;
        chatActivityEnterView.getEditField().setAlpha(0.0f);
        chatActivityEnterView.setTextTransitionIsRunning(true);
        StaticLayout staticLayout3 = chatMessageCell.replyNameLayout;
        if (staticLayout3 != null && staticLayout3.getText().length() > 1 && chatMessageCell.replyNameLayout.getPrimaryHorizontal(0) != 0.0f) {
            this.replyNameDx = chatMessageCell.replyNameLayout.getWidth() - chatMessageCell.replyNameLayout.getLineWidth(0);
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.animator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.TextMessageEnterTransition$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$new$0(chatActivityEnterView, messageEnterTransitionContainer, valueAnimator);
            }
        });
        this.animator.setInterpolator(new LinearInterpolator());
        this.animator.setDuration(250L);
        messageEnterTransitionContainer.addTransition(this);
        this.notificationsLocker.lock();
        this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.TextMessageEnterTransition.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TextMessageEnterTransition.this.notificationsLocker.unlock();
                messageEnterTransitionContainer.removeTransition(TextMessageEnterTransition.this);
                chatMessageCell.setEnterTransitionInProgress(false);
                chatMessageCell.getTransitionParams().lastDrawingBackgroundRect.set(chatMessageCell.getBackgroundDrawableLeft(), chatMessageCell.getBackgroundDrawableTop(), chatMessageCell.getBackgroundDrawableRight(), chatMessageCell.getBackgroundDrawableBottom());
                chatActivityEnterView.setTextTransitionIsRunning(false);
                chatActivityEnterView.getEditField().setAlpha(1.0f);
                chatActivity.getReplyNameTextView().setAlpha(1.0f);
                chatActivity.getReplyObjectTextView().setAlpha(1.0f);
                AnimatedEmojiSpan.release((View) null, TextMessageEnterTransition.this.animatedEmojiStack);
            }
        });
        if (SharedConfig.getDevicePerformanceClass() != 2 || (currentBackgroundDrawable = chatMessageCell.getCurrentBackgroundDrawable(true)) == null) {
            return;
        }
        this.fromMessageDrawable = currentBackgroundDrawable.getTransitionDrawable(getThemedColor(Theme.key_chat_messagePanelBackground));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ChatActivityEnterView chatActivityEnterView, MessageEnterTransitionContainer messageEnterTransitionContainer, ValueAnimator valueAnimator) {
        this.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        chatActivityEnterView.getEditField().setAlpha(this.progress);
        messageEnterTransitionContainer.invalidate();
    }

    public void start() {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    private boolean isRtlLine(Layout layout, int i) {
        return layout.getLineRight(i) == ((float) layout.getWidth()) && layout.getLineLeft(i) != 0.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x049b  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x04aa  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x04f4  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0434  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0443  */
    @Override // org.telegram.ui.MessageEnterTransitionContainer.Transition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDraw(Canvas canvas) {
        int i;
        float f;
        float f2;
        Canvas canvas2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        int i2;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        int themedColor;
        int themedColor2;
        float f16;
        float f17;
        float f18;
        StaticLayout staticLayout;
        float f19;
        float f20;
        Drawable drawable;
        if (this.drawBitmaps && !this.initBitmaps && this.crossfadeTextBitmap != null && this.messageView.getTransitionParams().wasDraw) {
            this.initBitmaps = true;
            Canvas canvas3 = new Canvas(this.crossfadeTextBitmap);
            canvas3.translate(0.0f, this.crossfadeTextOffset);
            AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans = this.messageView.animatedEmojiStack;
            if (emojiGroupedSpans != null) {
                emojiGroupedSpans.clearPositions();
            }
            ChatMessageCell chatMessageCell = this.messageView;
            chatMessageCell.drawMessageText(canvas3, chatMessageCell.getMessageObject().textLayoutBlocks, true, 1.0f, true);
            this.messageView.drawAnimatedEmojis(canvas3, 1.0f);
        }
        float y = (this.listView.getY() - this.container.getY()) + this.listView.getMeasuredHeight();
        float x = this.fromStartX - this.container.getX();
        float y2 = this.fromStartY - this.container.getY();
        this.textX = this.messageView.getTextX();
        this.textY = this.messageView.getTextY();
        if (this.messageView.getMessageObject().stableId != this.messageId) {
            return;
        }
        float x2 = (this.messageView.getX() + this.listView.getX()) - this.container.getX();
        float top = (((this.messageView.getTop() + this.messageView.getPaddingTop()) + this.listView.getTop()) - this.container.getY()) - (this.listViewTargetBottomPadding - this.listView.getPaddingBottom());
        this.lastMessageX = x2;
        this.lastMessageY = top;
        float interpolation = ChatListItemAnimator.DEFAULT_INTERPOLATOR.getInterpolation(this.progress);
        float f21 = this.progress;
        float f22 = f21 > 0.4f ? 1.0f : f21 / 0.4f;
        float interpolation2 = CubicBezierInterpolator.EASE_OUT.getInterpolation(CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(f21));
        float f23 = x2 + this.textX;
        float f24 = top + this.textY;
        float f25 = 1.0f - interpolation2;
        int measuredHeight = (int) ((this.container.getMeasuredHeight() * f25) + (y * interpolation2));
        Object[] objArr = this.messageView.getBottom() - AndroidUtilities.m1124dp(4.0f) > this.listView.getMeasuredHeight() && (((float) this.messageView.getMeasuredHeight()) + top) - ((float) AndroidUtilities.m1124dp(8.0f)) > ((float) measuredHeight) && this.container.getMeasuredHeight() > 0;
        if (objArr == true) {
            i = measuredHeight;
            f2 = 1.0f;
            f3 = f22;
            f = interpolation2;
            canvas2 = canvas;
            canvas2.saveLayerAlpha(0.0f, Math.max(0.0f, top), this.container.getMeasuredWidth(), this.container.getMeasuredHeight(), 255, 31);
        } else {
            i = measuredHeight;
            f = interpolation2;
            f2 = 1.0f;
            canvas2 = canvas;
            f3 = f22;
        }
        canvas2.save();
        canvas2.clipRect(0.0f, ((this.listView.getY() + this.chatActivity.getChatListViewPadding()) - this.container.getY()) - AndroidUtilities.m1124dp(3.0f), this.container.getMeasuredWidth(), this.container.getMeasuredHeight());
        canvas2.save();
        float backgroundDrawableLeft = this.messageView.getBackgroundDrawableLeft() + x2 + ((x - (f23 - this.toXOffset)) * f25);
        float backgroundDrawableTop = this.messageView.getBackgroundDrawableTop() + top;
        float f26 = f2 - interpolation;
        float y3 = ((this.drawableFromTop - this.container.getY()) * f26) + (backgroundDrawableTop * interpolation);
        float backgroundDrawableBottom = ((backgroundDrawableTop + (this.messageView.getBackgroundDrawableBottom() - this.messageView.getBackgroundDrawableTop())) * interpolation) + ((this.drawableFromBottom - this.container.getY()) * f26);
        int backgroundDrawableRight = (int) (this.messageView.getBackgroundDrawableRight() + x2 + (AndroidUtilities.m1124dp(4.0f) * f25));
        Theme.MessageDrawable currentBackgroundDrawable = !this.currentMessageObject.isAnimatedEmojiStickers() ? this.messageView.getCurrentBackgroundDrawable(true) : null;
        if (currentBackgroundDrawable != null) {
            this.messageView.setBackgroundTopY(this.container.getTop() - this.listView.getTop());
            Drawable shadowDrawable = currentBackgroundDrawable.getShadowDrawable();
            if (f3 == f2 || (drawable = this.fromMessageDrawable) == null) {
                f4 = x;
                f5 = y2;
            } else {
                f4 = x;
                f5 = y2;
                drawable.setBounds((int) backgroundDrawableLeft, (int) y3, backgroundDrawableRight, (int) backgroundDrawableBottom);
                this.fromMessageDrawable.draw(canvas2);
            }
            f6 = f;
            if (shadowDrawable != null) {
                shadowDrawable.setAlpha((int) (f6 * 255.0f));
                shadowDrawable.setBounds((int) backgroundDrawableLeft, (int) y3, backgroundDrawableRight, (int) backgroundDrawableBottom);
                shadowDrawable.draw(canvas2);
                shadowDrawable.setAlpha(255);
            }
            currentBackgroundDrawable.setAlpha((int) (f3 * 255.0f));
            currentBackgroundDrawable.setBounds((int) backgroundDrawableLeft, (int) y3, backgroundDrawableRight, (int) backgroundDrawableBottom);
            currentBackgroundDrawable.setDrawFullBubble(true);
            currentBackgroundDrawable.draw(canvas2);
            currentBackgroundDrawable.setDrawFullBubble(false);
            currentBackgroundDrawable.setAlpha(255);
        } else {
            f4 = x;
            f5 = y2;
            f6 = f;
        }
        canvas2.restore();
        canvas2.save();
        if (currentBackgroundDrawable != null) {
            if (this.currentMessageObject.isOutOwner()) {
                canvas2.clipRect(AndroidUtilities.m1124dp(4.0f) + backgroundDrawableLeft, AndroidUtilities.m1124dp(4.0f) + y3, backgroundDrawableRight - AndroidUtilities.m1124dp(10.0f), backgroundDrawableBottom - AndroidUtilities.m1124dp(4.0f));
            } else {
                canvas2.clipRect(AndroidUtilities.m1124dp(4.0f) + backgroundDrawableLeft, AndroidUtilities.m1124dp(4.0f) + y3, backgroundDrawableRight - AndroidUtilities.m1124dp(4.0f), backgroundDrawableBottom - AndroidUtilities.m1124dp(4.0f));
            }
        }
        float f27 = ((f5 - f24) * f26) + top;
        canvas2.translate((this.messageView.getLeft() + this.listView.getX()) - this.container.getX(), f27);
        this.messageView.drawTime(canvas2, f3, false);
        this.messageView.drawNamesLayout(canvas2, f3);
        this.messageView.drawCommentButton(canvas2, f3);
        this.messageView.drawCaptionLayout(canvas2, false, f3);
        this.messageView.drawReactionsLayout(canvas2, f3, null);
        this.messageView.drawCommentLayout(canvas2, f3);
        this.messageView.drawLinkPreview(canvas2, f3);
        canvas2.restore();
        if (this.hasReply) {
            this.chatActivity.getReplyNameTextView().setAlpha(0.0f);
            this.chatActivity.getReplyObjectTextView().setAlpha(0.0f);
            AndroidUtilities.lerp(AndroidUtilities.m1124dp(35.0f), this.messageView.replyHeight, f6);
            int iM1124dp = AndroidUtilities.m1124dp(10.0f);
            float x3 = this.replyFromStartX - this.container.getX();
            float y4 = this.replyFromStartY - this.container.getY();
            ChatMessageCell chatMessageCell2 = this.messageView;
            float f28 = chatMessageCell2.replyStartX + x2;
            f7 = backgroundDrawableBottom;
            float f29 = top + chatMessageCell2.replyStartY;
            if (chatMessageCell2.replyLine == null) {
                chatMessageCell2.replyLine = new ReplyMessageLine(chatMessageCell2);
            }
            ChatMessageCell chatMessageCell3 = this.messageView;
            chatMessageCell3.replyLine.check(chatMessageCell3.getMessageObject(), this.messageView.getCurrentUser(), this.messageView.getCurrentChat(), this.resourcesProvider, 0);
            if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                themedColor = getThemedColor(Theme.key_chat_stickerReplyNameText);
                getThemedColor(Theme.key_chat_stickerReplyLine);
            } else {
                ReplyMessageLine replyMessageLine = this.messageView.replyLine;
                if (replyMessageLine != null) {
                    themedColor = replyMessageLine.nameColorAnimated.get();
                    this.messageView.replyLine.getColor();
                } else if (this.currentMessageObject.isOutOwner()) {
                    themedColor = getThemedColor(Theme.key_chat_outReplyNameText);
                    getThemedColor(Theme.key_chat_outReplyLine);
                } else {
                    themedColor = getThemedColor(Theme.key_chat_inReplyNameText);
                    getThemedColor(Theme.key_chat_inReplyLine);
                }
            }
            if (!this.currentMessageObject.shouldDrawWithoutBackground()) {
                if (this.currentMessageObject.isOutOwner()) {
                    if (this.currentMessageObject.isReplyToStory()) {
                        f8 = y3;
                        i2 = backgroundDrawableRight;
                        themedColor2 = themedColor;
                    } else {
                        int themedColor3 = getThemedColor(Theme.key_chat_outReplyMessageText);
                        f8 = y3;
                        MessageObject messageObject = this.currentMessageObject;
                        i2 = backgroundDrawableRight;
                        if (messageObject.forceAvatar) {
                            f20 = 0.0f;
                            themedColor2 = ColorUtils.blendARGB(themedColor3, Theme.adaptHue(themedColor3, themedColor), f20);
                        } else if (messageObject.hasValidReplyMessageObject()) {
                            MessageObject messageObject2 = this.currentMessageObject.replyMessageObject;
                            if ((messageObject2.type != 0 && TextUtils.isEmpty(messageObject2.caption)) || (MessageObject.getMedia(this.currentMessageObject.replyMessageObject.messageOwner) instanceof TLRPC.TL_messageMediaGame) || (MessageObject.getMedia(this.currentMessageObject.replyMessageObject.messageOwner) instanceof TLRPC.TL_messageMediaInvoice)) {
                                if (!this.messageView.isReplyQuote) {
                                    themedColor3 = getThemedColor(Theme.key_chat_outReplyMediaMessageText);
                                    f20 = 0.6f;
                                }
                                themedColor2 = ColorUtils.blendARGB(themedColor3, Theme.adaptHue(themedColor3, themedColor), f20);
                            }
                        }
                    }
                } else {
                    f8 = y3;
                    i2 = backgroundDrawableRight;
                    if (this.currentMessageObject.isReplyToStory()) {
                        themedColor2 = themedColor;
                    } else {
                        int themedColor4 = getThemedColor(Theme.key_chat_inReplyMessageText);
                        MessageObject messageObject3 = this.currentMessageObject;
                        if (messageObject3.forceAvatar) {
                            f19 = 0.0f;
                            themedColor2 = ColorUtils.blendARGB(themedColor4, Theme.adaptHue(themedColor4, themedColor), f19);
                        } else if (messageObject3.hasValidReplyMessageObject()) {
                            MessageObject messageObject4 = this.currentMessageObject.replyMessageObject;
                            if ((messageObject4.type != 0 && TextUtils.isEmpty(messageObject4.caption)) || (MessageObject.getMedia(this.currentMessageObject.replyMessageObject.messageOwner) instanceof TLRPC.TL_messageMediaGame) || (MessageObject.getMedia(this.currentMessageObject.replyMessageObject.messageOwner) instanceof TLRPC.TL_messageMediaInvoice)) {
                                if (!this.messageView.isReplyQuote) {
                                    themedColor4 = getThemedColor(Theme.key_chat_inReplyMediaMessageText);
                                    f19 = 0.6f;
                                }
                                themedColor2 = ColorUtils.blendARGB(themedColor4, Theme.adaptHue(themedColor4, themedColor), f19);
                            }
                        }
                    }
                }
            } else {
                f8 = y3;
                i2 = backgroundDrawableRight;
                ReplyMessageLine replyMessageLine2 = this.messageView.replyLine;
                if (replyMessageLine2 != null) {
                    themedColor2 = replyMessageLine2.nameColorAnimated.get();
                } else if (this.currentMessageObject.hasValidReplyMessageObject()) {
                    MessageObject messageObject5 = this.currentMessageObject.replyMessageObject;
                    if (messageObject5.type == 0 || !TextUtils.isEmpty(messageObject5.caption)) {
                        TLRPC.MessageMedia messageMedia = this.currentMessageObject.replyMessageObject.messageOwner.media;
                        if (!(messageMedia instanceof TLRPC.TL_messageMediaGame) && !(messageMedia instanceof TLRPC.TL_messageMediaInvoice)) {
                            themedColor2 = getThemedColor(Theme.key_chat_outReplyMessageText);
                        } else {
                            themedColor2 = getThemedColor(Theme.key_chat_outReplyMediaMessageText);
                        }
                    }
                }
            }
            Theme.chat_replyTextPaint.setColor(ColorUtils.blendARGB(this.replayObjectFromColor, themedColor2, interpolation));
            Theme.chat_replyNamePaint.setColor(ColorUtils.blendARGB(this.replayFromColor, themedColor, interpolation));
            if (this.messageView.needReplyImage) {
                x3 -= AndroidUtilities.m1124dp(48.0f);
            }
            float f30 = x3;
            float fLerp = AndroidUtilities.lerp(f30, f28, f6);
            float fLerp2 = AndroidUtilities.lerp((AndroidUtilities.m1124dp(12.0f) * interpolation) + y4, f29, interpolation);
            if (this.roundRectRadii == null) {
                this.roundRectRadii = new float[]{fM1124dp, fM1124dp, 0.0f, 0.0f, 0.0f, 0.0f, fM1124dp, fM1124dp};
                float fM1124dp = AndroidUtilities.m1124dp(4.0f);
                float[] fArr = this.roundRectRadii;
                fArr[5] = 0.0f;
                fArr[4] = 0.0f;
                fArr[3] = 0.0f;
                fArr[2] = 0.0f;
            }
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(f30, y4, this.replyFromStartWidth + f30, AndroidUtilities.m1124dp(35.0f) + y4);
            rectF.offset(0.0f, AndroidUtilities.m1124dp(12.0f) * interpolation);
            this.messageReplySelectorRect.set(this.messageView.replySelectorRect);
            this.messageReplySelectorRect.offset(x2, f27);
            AndroidUtilities.lerp(rectF, this.messageReplySelectorRect, f6, this.replySelectorRect);
            ChatMessageCell chatMessageCell4 = this.messageView;
            float f31 = f3;
            chatMessageCell4.replyLine.drawBackground(canvas, this.replySelectorRect, f31, chatMessageCell4.isReplyQuote, chatMessageCell4.getMessageObject().shouldDrawWithoutBackground());
            canvas2 = canvas;
            this.messageView.replyLine.drawLine(canvas2, this.replySelectorRect, f31);
            if (this.messageView.needReplyImage) {
                canvas2.save();
                float fLerp3 = AndroidUtilities.lerp(AndroidUtilities.m1124dp(35.0f), Math.min(this.replySelectorRect.height() - AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(this.messageView.isReplyQuote ? 3.0f : 7.0f) + Theme.chat_replyNamePaint.getTextSize() + Theme.chat_replyTextPaint.getTextSize()), f6);
                ImageReceiver imageReceiver = this.messageView.replyImageReceiver;
                float fLerp4 = AndroidUtilities.lerp(fLerp, this.replySelectorRect.left + AndroidUtilities.m1124dp(8.0f), f6);
                float f32 = this.replySelectorRect.top;
                ChatMessageCell chatMessageCell5 = this.messageView;
                f16 = f31;
                imageReceiver.setImageCoords(fLerp4, AndroidUtilities.lerp(fLerp2, f32 + AndroidUtilities.m1124dp(((!chatMessageCell5.isReplyQuote || (staticLayout = chatMessageCell5.replyTextLayout) == null || staticLayout.getLineCount() > 1) ? 0 : 2) + 5), f6), fLerp3, fLerp3);
                this.messageView.replyImageReceiver.draw(canvas2);
                canvas2.restore();
                f17 = fLerp3;
            } else {
                f16 = f31;
                f17 = 0.0f;
            }
            canvas2.save();
            float f33 = iM1124dp * f6;
            canvas2.translate(f33, 0.0f);
            MessageObject messageObject6 = this.currentMessageObject;
            float f34 = -((messageObject6 == null || !messageObject6.shouldDrawWithoutBackground()) ? AndroidUtilities.m1124dp(f2) : AndroidUtilities.m1124dp(6.0f));
            MessageObject messageObject7 = this.currentMessageObject;
            float fM1124dp2 = (messageObject7 == null || !messageObject7.shouldDrawWithoutBackground()) ? AndroidUtilities.m1124dp(3.0f) : AndroidUtilities.m1124dp(f2);
            int i3 = this.messageView.replyTextOffset;
            float f35 = (f28 - i3) + f34;
            float f36 = (f28 - this.replyNameDx) + f34;
            AndroidUtilities.lerp(f30 - i3, f35, f6);
            float fLerp5 = AndroidUtilities.lerp(f30, f36, f6) + (this.messageView.needReplyImage ? AndroidUtilities.m1124dp(3.0f) + f17 : 0.0f);
            if (this.messageView.replyNameLayout != null) {
                canvas2.save();
                canvas2.translate(fLerp5, (fM1124dp2 * f6) + fLerp2);
                int alpha = Theme.chat_replyNamePaint.getAlpha();
                Theme.chat_replyNamePaint.setAlpha((int) (alpha * f6));
                this.messageView.replyNameLayout.draw(canvas2);
                Theme.chat_replyNamePaint.setAlpha(alpha);
                SimpleTextView replyNameTextView = this.chatActivity.getReplyNameTextView();
                f18 = f35;
                f9 = backgroundDrawableLeft;
                f10 = f16;
                canvas2.saveLayerAlpha(0.0f, 0.0f, replyNameTextView.getWidth(), replyNameTextView.getHeight(), (int) (f25 * 255.0f), 31);
                replyNameTextView.setAlpha(f2);
                replyNameTextView.draw(canvas2);
                replyNameTextView.setAlpha(0.0f);
                canvas2.restore();
                canvas2.restore();
            } else {
                f18 = f35;
                f9 = backgroundDrawableLeft;
                f10 = f16;
            }
            ChatMessageCell chatMessageCell6 = this.messageView;
            if (chatMessageCell6.isReplyQuote && chatMessageCell6.replyQuoteDrawable != null) {
                int color = chatMessageCell6.replyLine.getColor();
                ChatMessageCell chatMessageCell7 = this.messageView;
                if (color != chatMessageCell7.replyQuoteDrawableColor) {
                    Drawable drawable2 = chatMessageCell7.replyQuoteDrawable;
                    ChatMessageCell chatMessageCell8 = this.messageView;
                    int color2 = chatMessageCell8.replyLine.getColor();
                    chatMessageCell8.replyQuoteDrawableColor = color2;
                    drawable2.setColorFilter(new PorterDuffColorFilter(color2, PorterDuff.Mode.SRC_IN));
                }
                ChatMessageCell chatMessageCell9 = this.messageView;
                chatMessageCell9.replyQuoteDrawable.setBounds((int) (((this.replySelectorRect.right - f33) - AndroidUtilities.m1124dp((!chatMessageCell9.drawPinnedTop ? 1 : 0) + 2)) - this.messageView.replyQuoteDrawable.getIntrinsicWidth()), (int) (this.replySelectorRect.top + AndroidUtilities.m1124dp((!this.messageView.drawPinnedTop ? 1 : 0) + 2)), (int) ((this.replySelectorRect.right - f33) - AndroidUtilities.m1124dp((!this.messageView.drawPinnedTop ? 1 : 0) + 2)), (int) (this.replySelectorRect.top + AndroidUtilities.m1124dp((!this.messageView.drawPinnedTop ? 1 : 0) + 2) + this.messageView.replyQuoteDrawable.getIntrinsicHeight()));
                this.messageView.replyQuoteDrawable.setAlpha((int) (f6 * 255.0f));
                this.messageView.replyQuoteDrawable.draw(canvas2);
            }
            if (this.messageView.replyTextLayout != null) {
                canvas2.save();
                float fLerp6 = fLerp2 + AndroidUtilities.lerp(AndroidUtilities.m1124dp(19.0f), Theme.chat_replyNamePaint.getTextSize() + AndroidUtilities.m1124dp(4.0f) + fM1124dp2, f6);
                ChatMessageCell chatMessageCell10 = this.messageView;
                float fM1124dp3 = (chatMessageCell10.isReplyQuote && chatMessageCell10.needReplyImage) ? f18 - AndroidUtilities.m1124dp(2.0f) : f18;
                ChatMessageCell chatMessageCell11 = this.messageView;
                if (chatMessageCell11.needReplyImage && (!chatMessageCell11.isReplyQuote || chatMessageCell11.replyTextRTL)) {
                    fM1124dp3 += f17 + AndroidUtilities.m1124dp(3.0f);
                }
                ChatMessageCell chatMessageCell12 = this.messageView;
                if (chatMessageCell12.isReplyTask && chatMessageCell12.replyTaskCheckbox != null) {
                    float fLerp7 = AndroidUtilities.lerp(f30 - chatMessageCell12.replyTextOffset, fM1124dp3, f6);
                    this.messageView.replyTaskCheckbox.setBounds((int) fLerp7, ((int) fLerp6) + AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f));
                    Theme.chat_instantViewRectPaint.setColor(getThemedColor(this.currentMessageObject.isOutOwner() ? Theme.key_chat_outMenu : Theme.key_chat_inMenu));
                    canvas2.drawCircle(fLerp7 + AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(8.0f) + fLerp6, AndroidUtilities.m1124dp(5.0f), Theme.chat_instantViewRectPaint);
                    this.messageView.replyTaskCheckbox.setColor(-1, this.currentMessageObject.isOutOwner() ? Theme.key_chat_outAudioSeekbarFill : Theme.key_chat_inAudioSeekbarFill, Theme.key_checkboxCheck);
                    this.messageView.replyTaskCheckbox.setAlpha(interpolation);
                    this.messageView.replyTaskCheckbox.draw(canvas2);
                }
                if (this.messageView.isReplyTask) {
                    fM1124dp3 += AndroidUtilities.m1124dp(16.0f);
                }
                ChatMessageCell chatMessageCell13 = this.messageView;
                if (chatMessageCell13.replyTextRTL && chatMessageCell13.replyTextOffset > 0) {
                    fM1124dp3 = ((this.replySelectorRect.right - AndroidUtilities.m1124dp(8.0f)) - this.messageView.replyTextLayout.getWidth()) - f33;
                }
                canvas2.translate(AndroidUtilities.lerp(f30 - this.messageView.replyTextOffset, fM1124dp3, f6), fLerp6);
                canvas2.save();
                SpoilerEffect.clipOutCanvas(canvas2, this.messageView.replySpoilers);
                ChatMessageCell chatMessageCell14 = this.messageView;
                AnimatedEmojiSpan.drawAnimatedEmojis(canvas2, chatMessageCell14.replyTextLayout, chatMessageCell14.animatedEmojiReplyStack, 0.0f, chatMessageCell14.replySpoilers, 0.0f, 0.0f, 0.0f, 1.0f);
                this.messageView.replyTextLayout.draw(canvas2);
                canvas2.restore();
                for (SpoilerEffect spoilerEffect : this.messageView.replySpoilers) {
                    if (spoilerEffect.shouldInvalidateColor()) {
                        spoilerEffect.setColor(this.messageView.replyTextLayout.getPaint().getColor());
                    }
                    spoilerEffect.draw(canvas2);
                }
                canvas2.restore();
            }
            canvas2.restore();
        } else {
            f7 = backgroundDrawableBottom;
            f8 = y3;
            i2 = backgroundDrawableRight;
            f9 = backgroundDrawableLeft;
            f10 = f3;
        }
        canvas2.save();
        if (this.messageView.getMessageObject() == null || this.messageView.getMessageObject().type != 19) {
            canvas2.clipRect(f9 + AndroidUtilities.m1124dp(4.0f), f8 + AndroidUtilities.m1124dp(4.0f), i2 - AndroidUtilities.m1124dp(4.0f), f7 - AndroidUtilities.m1124dp(4.0f));
        }
        float f37 = f6 + (this.scaleFrom * f25);
        float f38 = this.drawBitmaps ? (this.scaleY * f25) + f6 : 1.0f;
        canvas2.save();
        float f39 = f4 * f25;
        float f40 = f5 * f26;
        canvas2.translate(((f23 - this.toXOffset) * f6) + f39, ((f24 + this.textLayoutBlock.textYOffset(this.messageView.getMessageObject().textLayoutBlocks, this.messageView.transitionParams)) * interpolation) + f40);
        float f41 = f37 * f38;
        canvas2.scale(f37, f41, 0.0f, 0.0f);
        if (this.drawBitmaps) {
            if (this.crossfade) {
                f15 = f10;
                this.bitmapPaint.setAlpha((int) ((1.0f - f15) * 255.0f));
            } else {
                f15 = f10;
            }
            canvas2.drawBitmap(this.textLayoutBitmap, 0.0f, 0.0f, this.bitmapPaint);
            f11 = f6;
            f12 = f39;
            f13 = f41;
            f14 = f15;
        } else {
            float f42 = f10;
            boolean z = this.crossfade;
            if (z && this.changeColor) {
                int color3 = this.layout.getPaint().getColor();
                this.layout.getPaint().setColor(ColorUtils.blendARGB(this.fromColor, this.toColor, f42));
                float f43 = 1.0f - f42;
                canvas2.saveLayerAlpha(0.0f, 0.0f, this.layout.getWidth(), this.layout.getHeight(), (int) (f43 * 255.0f), 31);
                this.layout.draw(canvas2);
                f12 = f39;
                f13 = f41;
                f11 = f6;
                f14 = f42;
                AnimatedEmojiSpan.drawAnimatedEmojis(canvas2, this.layout, this.animatedEmojiStack, 0.0f, null, 0.0f, 0.0f, 0.0f, f43);
                this.layout.getPaint().setColor(color3);
                canvas.restore();
                canvas2 = canvas;
            } else {
                f11 = f6;
                f12 = f39;
                f13 = f41;
                f14 = f42;
                if (z) {
                    float f44 = 1.0f - f14;
                    canvas2 = canvas;
                    canvas2.saveLayerAlpha(0.0f, 0.0f, this.layout.getWidth(), this.layout.getHeight(), (int) (f44 * 255.0f), 31);
                    this.layout.draw(canvas2);
                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas2, this.layout, this.animatedEmojiStack, 0.0f, null, 0.0f, 0.0f, 0.0f, f44);
                    canvas2.restore();
                } else {
                    canvas2 = canvas;
                    this.layout.draw(canvas2);
                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas2, this.layout, this.animatedEmojiStack, 0.0f, null, 0.0f, 0.0f, 0.0f, 1.0f);
                }
            }
        }
        canvas2.restore();
        if (this.rtlLayout != null) {
            canvas2.save();
            canvas2.translate(f12 + ((f23 - this.toXOffsetRtl) * f11), f40 + ((f24 + this.textLayoutBlock.textYOffset(this.messageView.getMessageObject().textLayoutBlocks, this.messageView.transitionParams)) * interpolation));
            canvas2.scale(f37, f13, 0.0f, 0.0f);
            if (this.drawBitmaps) {
                if (this.crossfade) {
                    this.bitmapPaint.setAlpha((int) ((1.0f - f14) * 255.0f));
                }
                canvas2.drawBitmap(this.textLayoutBitmapRtl, 0.0f, 0.0f, this.bitmapPaint);
            } else {
                boolean z2 = this.crossfade;
                if (z2 && this.changeColor) {
                    int color4 = this.rtlLayout.getPaint().getColor();
                    this.rtlLayout.getPaint().setColor(ColorUtils.setAlphaComponent(ColorUtils.blendARGB(this.fromColor, this.toColor, f14), (int) (Color.alpha(color4) * (1.0f - f14))));
                    this.rtlLayout.draw(canvas2);
                    this.rtlLayout.getPaint().setColor(color4);
                } else if (z2) {
                    int alpha2 = this.rtlLayout.getPaint().getAlpha();
                    this.rtlLayout.getPaint().setAlpha((int) (alpha2 * (1.0f - f14)));
                    this.rtlLayout.draw(canvas2);
                    this.rtlLayout.getPaint().setAlpha(alpha2);
                } else {
                    this.rtlLayout.draw(canvas2);
                }
            }
            canvas2.restore();
        }
        if (this.crossfade) {
            canvas2.save();
            canvas2.translate(((this.messageView.getLeft() + this.listView.getX()) - this.container.getX()) + ((f4 - f23) * f25), f27);
            canvas2.scale(f37, f13, this.messageView.getTextX(), this.messageView.getTextY());
            canvas2.translate(0.0f, -this.crossfadeTextOffset);
            if (this.crossfadeTextBitmap != null) {
                this.bitmapPaint.setAlpha((int) (f14 * 255.0f));
                canvas2.drawBitmap(this.crossfadeTextBitmap, 0.0f, 0.0f, this.bitmapPaint);
            } else {
                int color5 = Theme.chat_msgTextPaint.getColor();
                Theme.chat_msgTextPaint.setColor(this.toColor);
                ChatMessageCell chatMessageCell15 = this.messageView;
                float f45 = f14;
                chatMessageCell15.drawMessageText(canvas, chatMessageCell15.getMessageObject().textLayoutBlocks, true, f45, true);
                canvas2 = canvas;
                this.messageView.drawAnimatedEmojis(canvas2, f45);
                if (Theme.chat_msgTextPaint.getColor() != color5) {
                    Theme.chat_msgTextPaint.setColor(color5);
                }
            }
            canvas2.restore();
        }
        canvas2.restore();
        if (objArr != false) {
            float f46 = i;
            this.gradientMatrix.setTranslate(0.0f, f46);
            this.gradientShader.setLocalMatrix(this.gradientMatrix);
            canvas2.drawRect(0.0f, f46, this.container.getMeasuredWidth(), this.container.getMeasuredHeight(), this.gradientPaint);
            canvas2.restore();
        }
        float f47 = this.progress;
        float f48 = f47 > 0.4f ? 1.0f : f47 / 0.4f;
        if (f48 == 1.0f) {
            this.enterView.setTextTransitionIsRunning(false);
        }
        if (this.enterView.getSendButton().getVisibility() != 0 || f48 >= 1.0f) {
            return;
        }
        ViewPositionWatcher.computeCoordinatesInParent(this.enterView.getSendButton(), this.chatActivity.contentView, this.tmpPointF);
        canvas2.save();
        canvas2.translate(this.tmpPointF.x - this.container.getX(), this.tmpPointF.y - this.container.getY());
        View sendButton = this.enterView.getSendButton();
        canvas2.saveLayerAlpha(0.0f, 0.0f, sendButton.getWidth(), sendButton.getHeight(), (int) ((1.0f - f48) * 255.0f));
        sendButton.draw(canvas2);
        canvas2.restore();
        canvas2.restore();
        canvas2.restore();
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
