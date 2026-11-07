package org.telegram.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.collection.LongSparseArray;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.GridLayoutManagerFixed;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ChatMessageSharedResources;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ChatActivityEnterView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextCaption;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.Components.ReactionsContainerLayout;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScrimOptions;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceBitmap;
import org.telegram.ui.Components.blur3.utils.Blur3Utils;
import org.telegram.ui.Components.chat.ViewPositionWatcher;
import org.telegram.ui.Components.spoilers.SpoilerEffect2;
import org.telegram.ui.EmojiAnimationsOverlay;
import org.telegram.ui.MessageSendPreview;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Stories.recorder.KeyboardNotifier;
import org.telegram.ui.recyclerview.ChatListItemAnimator;

/* JADX INFO: loaded from: classes6.dex */
public class MessageSendPreview extends Dialog implements NotificationCenter.NotificationCenterDelegate {
    private final RecyclerView.Adapter adapter;
    public boolean allowRelayout;
    private ChatActivityEnterView.SendButton anchorSendButton;
    private Bitmap blurBitmap;
    private Paint blurBitmapPaint;
    private BitmapShader blurBitmapShader;
    private Matrix blurMatrix;
    private Paint buttonBgPaint;
    private Text buttonText;
    private RectF cameraRect;
    private Rect cellDelta;
    private final GridLayoutManagerFixed chatLayoutManager;
    private final RecyclerListView chatListView;
    private boolean closing;
    private final FrameLayout containerView;
    public final Context context;
    public final int currentAccount;
    private boolean customSendButtonWidth;
    private ChatMessageCell destCell;
    private float destClipBottom;
    private float destClipTop;
    private boolean dismissing;
    private Utilities.Callback2<Canvas, Utilities.Callback0Return<Boolean>> drawEditText;
    private Utilities.Callback<Canvas> drawEditTextBackground;
    private ChatMessageCell dummyMessageCell;
    private EditTextCaption editText;
    private Paint editTextBackgroundPaint;
    private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable effectDrawable;
    private long effectId;
    private EmojiAnimationsOverlay effectOverlay;
    private ReactionsContainerLayout effectSelector;
    private FrameLayout effectSelectorContainer;
    private float effectSelectorContainerY;
    private boolean effectSelectorShown;
    private final FrameLayout effectsView;
    private boolean firstOpenFrame;
    private boolean firstOpenFrame2;
    private boolean focusable;
    private VisiblePart fromPart;
    private final LongSparseArray<MessageObject.GroupedMessages> groupedMessagesMap;
    private final BlurredBackgroundDrawableViewFactory iBlur3Factory;
    private final BlurredBackgroundSourceBitmap iBlur3SourceBitmap;
    private Insets insets;
    private boolean keyboardVisible;
    private boolean layoutDone;
    private ChatMessageCell mainMessageCell;
    private int mainMessageCellId;
    private final ArrayList<MessageObject> messageObjects;
    private int messageObjectsWidth;
    private ValueAnimator openAnimator;
    private boolean openInProgress;
    private float openProgress;
    private boolean opening;
    private View optionsView;
    public final Theme.ResourcesProvider resourcesProvider;
    private boolean scrolledToLast;
    private ChatActivityEnterView.SendButton sendButton;
    private final int[] sendButtonInitialPosition;
    private int sendButtonWidth;
    private boolean sent;
    private boolean sentEffect;
    private SpoilerEffect2 spoilerEffect2;
    private final FrameLayout windowView;

    public void onEffectChange(long j) {
    }

    public void updateColors() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getMainMessageCellPosition() {
        if (this.groupedMessagesMap.isEmpty() || this.messageObjects.size() < 10) {
            return 0;
        }
        return this.messageObjects.size() % 10;
    }

    public MessageSendPreview(final Context context, final Theme.ResourcesProvider resourcesProvider) {
        super(context, C2807R.style.TransparentDialog);
        int i = UserConfig.selectedAccount;
        this.currentAccount = i;
        this.insets = Insets.NONE;
        this.messageObjects = new ArrayList<>();
        this.groupedMessagesMap = new LongSparseArray<>();
        this.editTextBackgroundPaint = new Paint(1);
        this.sendButtonInitialPosition = new int[2];
        this.dismissing = false;
        this.cellDelta = new Rect();
        this.context = context;
        this.resourcesProvider = resourcesProvider;
        AndroidUtilities.enableEdgeToEdge(getWindow());
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.MessageSendPreview.1
            @Override // android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                Canvas canvas2;
                if (MessageSendPreview.this.openProgress <= 0.0f || MessageSendPreview.this.blurBitmapPaint == null) {
                    canvas2 = canvas;
                } else {
                    MessageSendPreview.this.blurMatrix.reset();
                    float width = getWidth() / MessageSendPreview.this.blurBitmap.getWidth();
                    MessageSendPreview.this.blurMatrix.postScale(width, width);
                    MessageSendPreview.this.blurBitmapShader.setLocalMatrix(MessageSendPreview.this.blurMatrix);
                    MessageSendPreview.this.blurBitmapPaint.setAlpha((int) (MessageSendPreview.this.openProgress * 255.0f));
                    canvas2 = canvas;
                    canvas2.drawRect(0.0f, 0.0f, getWidth(), getHeight(), MessageSendPreview.this.blurBitmapPaint);
                }
                super.dispatchDraw(canvas2);
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
                if (keyEvent != null && keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
                    MessageSendPreview.this.onBackPressed();
                    return true;
                }
                return super.dispatchKeyEventPreIme(keyEvent);
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
                super.onLayout(z, i2, i3, i4, i5);
                if (!MessageSendPreview.this.layoutDone || MessageSendPreview.this.allowRelayout) {
                    MessageSendPreview.this.layout();
                    MessageSendPreview.this.layoutDone = true;
                }
            }

            @Override // android.view.View
            public void onSizeChanged(int i2, int i3, int i4, int i5) {
                super.onSizeChanged(i2, i3, i4, i5);
                MessageSendPreview.this.checkBitmapMatrix();
            }
        };
        this.windowView = frameLayout;
        this.spoilerEffect2 = SpoilerEffect2.getInstance(1, frameLayout, frameLayout);
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.MessageSendPreview$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        frameLayout.getViewTreeObserver().addOnGlobalFocusChangeListener(new ViewTreeObserver.OnGlobalFocusChangeListener() { // from class: org.telegram.ui.MessageSendPreview$$ExternalSyntheticLambda6
            @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
            public final void onGlobalFocusChanged(View view, View view2) {
                this.f$0.lambda$new$3(view, view2);
            }
        });
        BlurredBackgroundSourceBitmap blurredBackgroundSourceBitmap = new BlurredBackgroundSourceBitmap();
        this.iBlur3SourceBitmap = blurredBackgroundSourceBitmap;
        BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceBitmap);
        this.iBlur3Factory = blurredBackgroundDrawableViewFactory;
        blurredBackgroundDrawableViewFactory.setSourceRootView(new ViewPositionWatcher(frameLayout), frameLayout);
        C54832 c54832 = new C54832(context, resourcesProvider);
        this.containerView = c54832;
        c54832.setClipToPadding(false);
        frameLayout.addView(c54832, LayoutHelper.createFrame(-1, -1, 119));
        ViewCompat.setOnApplyWindowInsetsListener(frameLayout, new OnApplyWindowInsetsListener() { // from class: org.telegram.ui.MessageSendPreview.3
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                MessageSendPreview.this.insets = AndroidUtilities.getDefaultWindowInsets(windowInsetsCompat, false);
                MessageSendPreview.this.containerView.setPadding(MessageSendPreview.this.insets.left, MessageSendPreview.this.insets.top, MessageSendPreview.this.insets.right, MessageSendPreview.this.insets.bottom);
                MessageSendPreview.this.windowView.requestLayout();
                return WindowInsetsCompat.CONSUMED;
            }
        });
        RecyclerListView recyclerListView = new RecyclerListView(context, resourcesProvider) { // from class: org.telegram.ui.MessageSendPreview.4
            private final AnimatedFloat bottom;
            private final GradientClip clip;
            private final ArrayList<MessageObject.GroupedMessages> drawingGroups = new ArrayList<>(10);
            private final AnimatedFloat top;

            {
                CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
                this.top = new AnimatedFloat(this, 0L, 360L, cubicBezierInterpolator);
                this.bottom = new AnimatedFloat(this, 0L, 360L, cubicBezierInterpolator);
                this.clip = new GradientClip();
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            public void onMeasure(int i2, int i3) {
                super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(Math.max(0, ((AndroidUtilities.displaySize.y - (AndroidUtilities.dp(MessageSendPreview.this.messageObjects.isEmpty() ? -6.0f : 48.0f) + (MessageSendPreview.this.optionsView == null ? 0 : MessageSendPreview.this.optionsView.getMeasuredHeight()))) - AndroidUtilities.dp(8.0f)) - MessageSendPreview.this.insets.top), Integer.MIN_VALUE));
                int iMax = Math.max(MessageSendPreview.this.getSendButtonWidth() + AndroidUtilities.dp(12.0f), -((MessageSendPreview.this.sendButtonInitialPosition[0] + AndroidUtilities.dp(7.0f)) - getMeasuredWidth()));
                float fMax = Math.max(1, getMeasuredWidth() - iMax) / Math.max(1, ((getMeasuredWidth() - iMax) - AndroidUtilities.dp(8.0f)) + Math.max(0, MessageSendPreview.this.messageObjectsWidth - ((getMeasuredWidth() - iMax) - AndroidUtilities.dp((MessageSendPreview.this.groupedMessagesMap.isEmpty() ? 0 : 40) + 8))));
                setPivotX(getMeasuredWidth());
                setPivotY(getMeasuredHeight());
                setScaleX(fMax);
                setScaleY(fMax);
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
                for (int i6 = 0; i6 < getChildCount(); i6++) {
                    View childAt = getChildAt(i6);
                    if (childAt.getTop() != 0 && (childAt instanceof MessageCell)) {
                        MessageCell messageCell = (MessageCell) childAt;
                        messageCell.top = childAt.getTop();
                        messageCell.bottom = childAt.getBottom();
                        messageCell.pastId = messageCell.getMessageObject().getId();
                    }
                }
                super.onLayout(z, i2, i3, i4, i5);
            }

            @Override // org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                MessageSendPreview.this.updateMessagesVisiblePart();
                canvas.saveLayerAlpha(0.0f, getScrollY() + 1, getWidth(), (getScrollY() + getHeight()) - 1, 255, 31);
                canvas.save();
                drawChatBackgroundElements(canvas);
                super.dispatchDraw(canvas);
                drawChatForegroundElements(canvas);
                canvas.save();
                float f = this.top.set(canScrollVertically(-1));
                float f2 = this.bottom.set(canScrollVertically(1));
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(0.0f, getScrollY(), getWidth(), getScrollY() + AndroidUtilities.dp(14.0f));
                this.clip.draw(canvas, rectF, true, f);
                rectF.set(0.0f, (getScrollY() + getHeight()) - AndroidUtilities.dp(14.0f), getWidth(), getScrollY() + getHeight());
                this.clip.draw(canvas, rectF, false, f2);
                canvas.restore();
                canvas.restore();
                canvas.restore();
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                if (MessageSendPreview.this.openInProgress && ((view == MessageSendPreview.this.mainMessageCell && MessageSendPreview.this.mainMessageCell != null && MessageSendPreview.this.mainMessageCell.getCurrentPosition() == null) || view == MessageSendPreview.this.sendButton)) {
                    return false;
                }
                if (!(view instanceof ChatMessageCell)) {
                    return true;
                }
                ChatMessageCell chatMessageCell = (ChatMessageCell) view;
                chatMessageCell.setInvalidatesParent(true);
                chatMessageCell.drawCheckBox(canvas);
                canvas.save();
                canvas.translate(chatMessageCell.getX(), chatMessageCell.getY());
                canvas.scale(chatMessageCell.getScaleX(), chatMessageCell.getScaleY(), chatMessageCell.getPivotX(), chatMessageCell.getPivotY());
                if (chatMessageCell.drawBackgroundInParent() && chatMessageCell.getCurrentPosition() == null) {
                    canvas.save();
                    canvas.translate(0.0f, chatMessageCell.getPaddingTop());
                    chatMessageCell.drawBackgroundInternal(canvas, true);
                    canvas.restore();
                }
                canvas.restore();
                boolean zDrawChild = super.drawChild(canvas, view, j);
                canvas.save();
                canvas.translate(chatMessageCell.getX(), chatMessageCell.getY() + chatMessageCell.getPaddingTop());
                canvas.scale(chatMessageCell.getScaleX(), chatMessageCell.getScaleY(), chatMessageCell.getPivotX(), chatMessageCell.getPivotY());
                if (chatMessageCell.getCurrentPosition() != null && (((chatMessageCell.getCurrentPosition().flags & chatMessageCell.captionFlag()) != 0 && (chatMessageCell.getCurrentPosition().flags & 1) != 0) || (chatMessageCell.getCurrentMessagesGroup() != null && chatMessageCell.getCurrentMessagesGroup().isDocuments))) {
                    chatMessageCell.drawCaptionLayout(canvas, false, chatMessageCell.getAlpha());
                }
                if (chatMessageCell.getCurrentPosition() != null && (((chatMessageCell.getCurrentPosition().flags & 8) != 0 && (chatMessageCell.getCurrentPosition().flags & 1) != 0) || (chatMessageCell.getCurrentMessagesGroup() != null && chatMessageCell.getCurrentMessagesGroup().isDocuments))) {
                    chatMessageCell.drawReactionsLayout(canvas, chatMessageCell.getAlpha(), null);
                    chatMessageCell.drawCommentLayout(canvas, chatMessageCell.getAlpha());
                }
                if (chatMessageCell.getCurrentPosition() != null) {
                    chatMessageCell.drawNamesLayout(canvas, chatMessageCell.getAlpha());
                }
                if (chatMessageCell.getCurrentPosition() == null || chatMessageCell.getCurrentPosition().last) {
                    chatMessageCell.drawTime(canvas, chatMessageCell.getAlpha(), true);
                }
                chatMessageCell.drawOutboundsContent(canvas);
                chatMessageCell.getTransitionParams().recordDrawingStatePreview();
                canvas.restore();
                chatMessageCell.setInvalidatesParent(false);
                return zDrawChild;
            }

            private void drawChatBackgroundElements(Canvas canvas) {
                boolean z;
                float f;
                Canvas canvas2;
                MessageObject.GroupedMessages currentMessagesGroup;
                MessageObject.GroupedMessages currentMessagesGroup2;
                int childCount = getChildCount();
                boolean z2 = false;
                MessageObject.GroupedMessages groupedMessages = null;
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = getChildAt(i2);
                    if ((childAt instanceof ChatMessageCell) && ((currentMessagesGroup2 = ((ChatMessageCell) childAt).getCurrentMessagesGroup()) == null || currentMessagesGroup2 != groupedMessages)) {
                        groupedMessages = currentMessagesGroup2;
                    }
                }
                int i3 = 0;
                while (i3 < 3) {
                    this.drawingGroups.clear();
                    if (i3 != 2 || MessageSendPreview.this.chatListView.isFastScrollAnimationRunning()) {
                        int i4 = z2 ? 1 : 0;
                        while (true) {
                            z = true;
                            if (i4 >= childCount) {
                                break;
                            }
                            View childAt2 = MessageSendPreview.this.chatListView.getChildAt(i4);
                            if (childAt2 instanceof ChatMessageCell) {
                                ChatMessageCell chatMessageCell = (ChatMessageCell) childAt2;
                                if (childAt2.getY() <= MessageSendPreview.this.chatListView.getHeight() && childAt2.getY() + childAt2.getHeight() >= 0.0f && (currentMessagesGroup = chatMessageCell.getCurrentMessagesGroup()) != null && ((i3 != 0 || currentMessagesGroup.messages.size() != 1) && ((i3 != 1 || currentMessagesGroup.transitionParams.drawBackgroundForDeletedItems) && ((i3 != 0 || !chatMessageCell.getMessageObject().deleted) && ((i3 != 1 || chatMessageCell.getMessageObject().deleted) && ((i3 != 2 || chatMessageCell.willRemovedAfterAnimation()) && (i3 == 2 || !chatMessageCell.willRemovedAfterAnimation()))))))) {
                                    if (!this.drawingGroups.contains(currentMessagesGroup)) {
                                        MessageObject.GroupedMessages.TransitionParams transitionParams = currentMessagesGroup.transitionParams;
                                        transitionParams.left = z2 ? 1 : 0;
                                        transitionParams.top = z2 ? 1 : 0;
                                        transitionParams.right = z2 ? 1 : 0;
                                        transitionParams.bottom = z2 ? 1 : 0;
                                        transitionParams.pinnedBotton = z2;
                                        transitionParams.pinnedTop = z2;
                                        transitionParams.cell = chatMessageCell;
                                        this.drawingGroups.add(currentMessagesGroup);
                                    }
                                    currentMessagesGroup.transitionParams.pinnedTop = chatMessageCell.isPinnedTop();
                                    currentMessagesGroup.transitionParams.pinnedBotton = chatMessageCell.isPinnedBottom();
                                    int x = (int) (chatMessageCell.getX() + chatMessageCell.getBackgroundDrawableLeft());
                                    int x2 = (int) (chatMessageCell.getX() + chatMessageCell.getBackgroundDrawableRight());
                                    int y = (int) (chatMessageCell.getY() + chatMessageCell.getPaddingTop() + chatMessageCell.getBackgroundDrawableTop());
                                    int y2 = (int) (chatMessageCell.getY() + chatMessageCell.getPaddingTop() + chatMessageCell.getBackgroundDrawableBottom());
                                    if ((chatMessageCell.getCurrentPosition().flags & 4) == 0) {
                                        y -= AndroidUtilities.dp(10.0f);
                                    }
                                    if ((chatMessageCell.getCurrentPosition().flags & 8) == 0) {
                                        y2 += AndroidUtilities.dp(10.0f);
                                    }
                                    if (chatMessageCell.willRemovedAfterAnimation()) {
                                        currentMessagesGroup.transitionParams.cell = chatMessageCell;
                                    }
                                    MessageObject.GroupedMessages.TransitionParams transitionParams2 = currentMessagesGroup.transitionParams;
                                    int i5 = transitionParams2.top;
                                    if (i5 == 0 || y < i5) {
                                        transitionParams2.top = y;
                                    }
                                    int i6 = transitionParams2.bottom;
                                    if (i6 == 0 || y2 > i6) {
                                        transitionParams2.bottom = y2;
                                    }
                                    int i7 = transitionParams2.left;
                                    if (i7 == 0 || x < i7) {
                                        transitionParams2.left = x;
                                    }
                                    int i8 = transitionParams2.right;
                                    if (i8 == 0 || x2 > i8) {
                                        transitionParams2.right = x2;
                                    }
                                }
                            }
                            i4++;
                        }
                        int i9 = z2 ? 1 : 0;
                        while (i9 < this.drawingGroups.size()) {
                            MessageObject.GroupedMessages groupedMessages2 = this.drawingGroups.get(i9);
                            if (groupedMessages2 != null) {
                                float nonAnimationTranslationX = groupedMessages2.transitionParams.cell.getNonAnimationTranslationX(z);
                                MessageObject.GroupedMessages.TransitionParams transitionParams3 = groupedMessages2.transitionParams;
                                float f2 = transitionParams3.left + nonAnimationTranslationX + transitionParams3.offsetLeft;
                                float f3 = transitionParams3.top + transitionParams3.offsetTop;
                                float f4 = transitionParams3.right + nonAnimationTranslationX + transitionParams3.offsetRight;
                                float measuredHeight = transitionParams3.bottom + transitionParams3.offsetBottom;
                                if (f3 < (-AndroidUtilities.dp(20.0f))) {
                                    f3 = -AndroidUtilities.dp(20.0f);
                                }
                                if (measuredHeight > MessageSendPreview.this.chatListView.getMeasuredHeight() + AndroidUtilities.dp(20.0f)) {
                                    measuredHeight = MessageSendPreview.this.chatListView.getMeasuredHeight() + AndroidUtilities.dp(20.0f);
                                }
                                boolean z3 = (groupedMessages2.transitionParams.cell.getScaleX() == 1.0f && groupedMessages2.transitionParams.cell.getScaleY() == 1.0f) ? z2 : z;
                                if (z3) {
                                    canvas.save();
                                    f = 2.0f;
                                    canvas2 = canvas;
                                    canvas2.scale(groupedMessages2.transitionParams.cell.getScaleX(), groupedMessages2.transitionParams.cell.getScaleY(), f2 + ((f4 - f2) / 2.0f), f3 + ((measuredHeight - f3) / 2.0f));
                                } else {
                                    f = 2.0f;
                                    canvas2 = canvas;
                                }
                                MessageObject.GroupedMessages.TransitionParams transitionParams4 = groupedMessages2.transitionParams;
                                transitionParams4.cell.drawBackground(canvas2, (int) f2, (int) f3, (int) f4, (int) measuredHeight, transitionParams4.pinnedTop, transitionParams4.pinnedBotton, false, 0);
                                MessageObject.GroupedMessages.TransitionParams transitionParams5 = groupedMessages2.transitionParams;
                                transitionParams5.cell = null;
                                transitionParams5.drawCaptionLayout = groupedMessages2.hasCaption;
                                if (z3) {
                                    canvas.restore();
                                    for (int i10 = 0; i10 < childCount; i10++) {
                                        View childAt3 = MessageSendPreview.this.chatListView.getChildAt(i10);
                                        if (childAt3 instanceof ChatMessageCell) {
                                            ChatMessageCell chatMessageCell2 = (ChatMessageCell) childAt3;
                                            if (chatMessageCell2.getCurrentMessagesGroup() == groupedMessages2) {
                                                int left = chatMessageCell2.getLeft();
                                                int top = chatMessageCell2.getTop();
                                                childAt3.setPivotX((f2 - left) + ((f4 - f2) / f));
                                                childAt3.setPivotY((f3 - top) + ((measuredHeight - f3) / f));
                                            }
                                        }
                                    }
                                }
                            }
                            i9++;
                            z2 = false;
                            z = true;
                        }
                    }
                    i3++;
                    z2 = false;
                }
            }

            private void drawChatForegroundElements(Canvas canvas) {
                MessageObject.GroupedMessages currentMessagesGroup;
                ChatMessageCell chatMessageCell;
                MessageObject.GroupedMessages currentMessagesGroup2;
                int childCount = getChildCount();
                MessageObject.GroupedMessages groupedMessages = null;
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = getChildAt(i2);
                    if ((childAt instanceof ChatMessageCell) && ((currentMessagesGroup2 = (chatMessageCell = (ChatMessageCell) childAt).getCurrentMessagesGroup()) == null || currentMessagesGroup2 != groupedMessages)) {
                        if (currentMessagesGroup2 == null) {
                            MessageSendPreview.this.drawStarsPrice(canvas, chatMessageCell.getBoundsLeft(), chatMessageCell.getY(), chatMessageCell.getBoundsRight(), chatMessageCell.getY() + chatMessageCell.getHeight());
                        }
                        groupedMessages = currentMessagesGroup2;
                    }
                }
                for (int i3 = 0; i3 < 3; i3++) {
                    this.drawingGroups.clear();
                    if (i3 != 2 || MessageSendPreview.this.chatListView.isFastScrollAnimationRunning()) {
                        for (int i4 = 0; i4 < childCount; i4++) {
                            View childAt2 = MessageSendPreview.this.chatListView.getChildAt(i4);
                            if (childAt2 instanceof ChatMessageCell) {
                                ChatMessageCell chatMessageCell2 = (ChatMessageCell) childAt2;
                                if (childAt2.getY() <= MessageSendPreview.this.chatListView.getHeight() && childAt2.getY() + childAt2.getHeight() >= 0.0f && (currentMessagesGroup = chatMessageCell2.getCurrentMessagesGroup()) != null && ((i3 != 0 || currentMessagesGroup.messages.size() != 1) && ((i3 != 1 || currentMessagesGroup.transitionParams.drawBackgroundForDeletedItems) && ((i3 != 0 || !chatMessageCell2.getMessageObject().deleted) && ((i3 != 1 || chatMessageCell2.getMessageObject().deleted) && ((i3 != 2 || chatMessageCell2.willRemovedAfterAnimation()) && (i3 == 2 || !chatMessageCell2.willRemovedAfterAnimation()))))))) {
                                    if (!this.drawingGroups.contains(currentMessagesGroup)) {
                                        MessageObject.GroupedMessages.TransitionParams transitionParams = currentMessagesGroup.transitionParams;
                                        transitionParams.left = 0;
                                        transitionParams.top = 0;
                                        transitionParams.right = 0;
                                        transitionParams.bottom = 0;
                                        transitionParams.pinnedBotton = false;
                                        transitionParams.pinnedTop = false;
                                        transitionParams.cell = chatMessageCell2;
                                        this.drawingGroups.add(currentMessagesGroup);
                                    }
                                    currentMessagesGroup.transitionParams.pinnedTop = chatMessageCell2.isPinnedTop();
                                    currentMessagesGroup.transitionParams.pinnedBotton = chatMessageCell2.isPinnedBottom();
                                    int x = (int) (chatMessageCell2.getX() + chatMessageCell2.getBackgroundDrawableLeft());
                                    int x2 = (int) (chatMessageCell2.getX() + chatMessageCell2.getBackgroundDrawableRight());
                                    int y = (int) (chatMessageCell2.getY() + chatMessageCell2.getPaddingTop() + chatMessageCell2.getBackgroundDrawableTop());
                                    int y2 = (int) (chatMessageCell2.getY() + chatMessageCell2.getPaddingTop() + chatMessageCell2.getBackgroundDrawableBottom());
                                    if ((chatMessageCell2.getCurrentPosition().flags & 4) == 0) {
                                        y -= AndroidUtilities.dp(10.0f);
                                    }
                                    if ((chatMessageCell2.getCurrentPosition().flags & 8) == 0) {
                                        y2 += AndroidUtilities.dp(10.0f);
                                    }
                                    if (chatMessageCell2.willRemovedAfterAnimation()) {
                                        currentMessagesGroup.transitionParams.cell = chatMessageCell2;
                                    }
                                    MessageObject.GroupedMessages.TransitionParams transitionParams2 = currentMessagesGroup.transitionParams;
                                    int i5 = transitionParams2.top;
                                    if (i5 == 0 || y < i5) {
                                        transitionParams2.top = y;
                                    }
                                    int i6 = transitionParams2.bottom;
                                    if (i6 == 0 || y2 > i6) {
                                        transitionParams2.bottom = y2;
                                    }
                                    int i7 = transitionParams2.left;
                                    if (i7 == 0 || x < i7) {
                                        transitionParams2.left = x;
                                    }
                                    int i8 = transitionParams2.right;
                                    if (i8 == 0 || x2 > i8) {
                                        transitionParams2.right = x2;
                                    }
                                }
                            }
                        }
                        for (int i9 = 0; i9 < this.drawingGroups.size(); i9++) {
                            MessageObject.GroupedMessages groupedMessages2 = this.drawingGroups.get(i9);
                            float nonAnimationTranslationX = groupedMessages2.transitionParams.cell.getNonAnimationTranslationX(true);
                            MessageObject.GroupedMessages.TransitionParams transitionParams3 = groupedMessages2.transitionParams;
                            float f = transitionParams3.left + nonAnimationTranslationX + transitionParams3.offsetLeft;
                            float f2 = transitionParams3.top + transitionParams3.offsetTop;
                            float f3 = transitionParams3.right + nonAnimationTranslationX + transitionParams3.offsetRight;
                            float measuredHeight = transitionParams3.bottom + transitionParams3.offsetBottom;
                            if (f2 < (-AndroidUtilities.dp(20.0f))) {
                                f2 = -AndroidUtilities.dp(20.0f);
                            }
                            float f4 = f2;
                            if (measuredHeight > MessageSendPreview.this.chatListView.getMeasuredHeight() + AndroidUtilities.dp(20.0f)) {
                                measuredHeight = MessageSendPreview.this.chatListView.getMeasuredHeight() + AndroidUtilities.dp(20.0f);
                            }
                            MessageSendPreview.this.drawStarsPrice(canvas, f, f4, f3, measuredHeight);
                            groupedMessages2.transitionParams.cell = null;
                        }
                    }
                }
            }
        };
        this.chatListView = recyclerListView;
        recyclerListView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.MessageSendPreview$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$4(view);
            }
        });
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.MessageSendPreview$$ExternalSyntheticLambda8
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                this.f$0.lambda$new$5(view, i2);
            }
        });
        recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.MessageSendPreview.5
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                MessageSendPreview.this.chatListView.invalidate();
            }
        });
        recyclerListView.setItemAnimator(new C54876(null, recyclerListView, resourcesProvider));
        GridLayoutManagerFixed gridLayoutManagerFixed = new GridLayoutManagerFixed(context, 1000, 1, true) { // from class: org.telegram.ui.MessageSendPreview.7
            boolean computingScroll;

            @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return true;
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public int computeVerticalScrollExtent(RecyclerView.State state) {
                this.computingScroll = true;
                int iComputeVerticalScrollExtent = super.computeVerticalScrollExtent(state);
                this.computingScroll = false;
                return iComputeVerticalScrollExtent;
            }

            @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public int computeVerticalScrollOffset(RecyclerView.State state) {
                this.computingScroll = true;
                int iComputeVerticalScrollOffset = super.computeVerticalScrollOffset(state);
                this.computingScroll = false;
                return iComputeVerticalScrollOffset;
            }

            @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public int computeVerticalScrollRange(RecyclerView.State state) {
                this.computingScroll = true;
                int iComputeVerticalScrollRange = super.computeVerticalScrollRange(state);
                this.computingScroll = false;
                return iComputeVerticalScrollRange;
            }

            @Override // androidx.recyclerview.widget.GridLayoutManagerFixed
            public boolean shouldLayoutChildFromOpositeSide(View view) {
                if (view instanceof ChatMessageCell) {
                    return !((ChatMessageCell) view).getMessageObject().isOutOwner();
                }
                return false;
            }

            @Override // androidx.recyclerview.widget.GridLayoutManagerFixed
            public boolean hasSiblingChild(int i2) {
                byte b2;
                MessageObject messageObject = (MessageObject) MessageSendPreview.this.messageObjects.get((getItemCount() - 1) - i2);
                MessageObject.GroupedMessages validGroupedMessage = MessageSendPreview.this.getValidGroupedMessage(messageObject);
                if (validGroupedMessage != null) {
                    MessageObject.GroupedMessagePosition position = validGroupedMessage.getPosition(messageObject);
                    if (position.minX != position.maxX && (b2 = position.minY) == position.maxY && b2 != 0) {
                        int size = validGroupedMessage.posArray.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            MessageObject.GroupedMessagePosition groupedMessagePosition = validGroupedMessage.posArray.get(i3);
                            if (groupedMessagePosition != position) {
                                byte b3 = groupedMessagePosition.minY;
                                byte b4 = position.minY;
                                if (b3 <= b4 && groupedMessagePosition.maxY >= b4) {
                                    return true;
                                }
                            }
                        }
                    }
                }
                return false;
            }
        };
        this.chatLayoutManager = gridLayoutManagerFixed;
        gridLayoutManagerFixed.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.MessageSendPreview.8
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i2) {
                MessageObject messageObject = (MessageObject) MessageSendPreview.this.messageObjects.get((MessageSendPreview.this.messageObjects.size() - 1) - i2);
                MessageObject.GroupedMessages validGroupedMessage = MessageSendPreview.this.getValidGroupedMessage(messageObject);
                if (validGroupedMessage != null) {
                    return validGroupedMessage.getPosition(messageObject).spanSize;
                }
                return 1000;
            }
        });
        recyclerListView.setLayoutManager(gridLayoutManagerFixed);
        recyclerListView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: org.telegram.ui.MessageSendPreview.9
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                ChatMessageCell chatMessageCell;
                MessageObject.GroupedMessages currentMessagesGroup;
                MessageObject.GroupedMessagePosition currentPosition;
                int i2 = 0;
                rect.bottom = 0;
                if (!(view instanceof ChatMessageCell) || (currentMessagesGroup = (chatMessageCell = (ChatMessageCell) view).getCurrentMessagesGroup()) == null || (currentPosition = chatMessageCell.getCurrentPosition()) == null || currentPosition.siblingHeights == null) {
                    return;
                }
                Point point = AndroidUtilities.displaySize;
                float fMax = Math.max(point.x, point.y) * 0.5f;
                int extraInsetHeight = chatMessageCell.getExtraInsetHeight();
                int i3 = 0;
                while (true) {
                    if (i3 >= currentPosition.siblingHeights.length) {
                        break;
                    }
                    extraInsetHeight += (int) Math.ceil(r2[i3] * fMax);
                    i3++;
                }
                int iRound = extraInsetHeight + ((currentPosition.maxY - currentPosition.minY) * Math.round(AndroidUtilities.density * 7.0f));
                int size = currentMessagesGroup.posArray.size();
                while (true) {
                    if (i2 < size) {
                        MessageObject.GroupedMessagePosition groupedMessagePosition = currentMessagesGroup.posArray.get(i2);
                        byte b2 = groupedMessagePosition.minY;
                        byte b3 = currentPosition.minY;
                        if (b2 == b3 && ((groupedMessagePosition.minX != currentPosition.minX || groupedMessagePosition.maxX != currentPosition.maxX || b2 != b3 || groupedMessagePosition.maxY != currentPosition.maxY) && b2 == b3)) {
                            iRound -= ((int) Math.ceil(fMax * groupedMessagePosition.ph)) - AndroidUtilities.dp(4.0f);
                            break;
                        }
                        i2++;
                    } else {
                        break;
                    }
                }
                rect.bottom = -iRound;
            }
        });
        RecyclerView.Adapter adapter = new RecyclerView.Adapter() { // from class: org.telegram.ui.MessageSendPreview.10
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
                MessageSendPreview messageSendPreview = MessageSendPreview.this;
                MessageCell messageCell = messageSendPreview.new MessageCell(context, messageSendPreview.currentAccount, true, null, resourcesProvider);
                messageCell.setDelegate(new ChatMessageCell.ChatMessageCellDelegate() { // from class: org.telegram.ui.MessageSendPreview.10.1
                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public boolean canPerformActions() {
                        return false;
                    }
                });
                return new RecyclerListView.Holder(messageCell);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
                MessageObject messageObject = (MessageObject) MessageSendPreview.this.messageObjects.get((getItemCount() - 1) - i2);
                ChatMessageCell chatMessageCell = (ChatMessageCell) viewHolder.itemView;
                MessageObject.GroupedMessages validGroupedMessage = MessageSendPreview.this.getValidGroupedMessage(messageObject);
                chatMessageCell.setInvalidatesParent(validGroupedMessage != null);
                chatMessageCell.setMessageObject(messageObject, validGroupedMessage, false, false, false);
                if (i2 != MessageSendPreview.this.getMainMessageCellPosition() || messageObject.needDrawForwarded()) {
                    return;
                }
                MessageSendPreview.this.mainMessageCell = chatMessageCell;
                ChatMessageCell chatMessageCell2 = MessageSendPreview.this.mainMessageCell;
                Point point = AndroidUtilities.displaySize;
                chatMessageCell2.setParentViewSize(point.x, point.y);
                MessageSendPreview.this.mainMessageCellId = messageObject.getId();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return MessageSendPreview.this.messageObjects.size();
            }
        };
        this.adapter = adapter;
        recyclerListView.setAdapter(adapter);
        recyclerListView.setVerticalScrollBarEnabled(false);
        recyclerListView.setOverScrollMode(2);
        c54832.addView(recyclerListView, LayoutHelper.createFrame(-1, -2.0f));
        FrameLayout frameLayout2 = new FrameLayout(context) { // from class: org.telegram.ui.MessageSendPreview.11
            @Override // android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                MessageSendPreview.this.effectOverlay.draw(canvas);
                float progress = MessageSendPreview.this.effectOverlay.getProgress();
                if (progress != -2.0f) {
                    MessageSendPreview.this.sendButton.setLoading(progress >= 0.0f && progress < 1.0f, -3.0f);
                }
                if (MessageSendPreview.this.effectOverlay.isIdle()) {
                    return;
                }
                invalidate();
            }
        };
        this.effectsView = frameLayout2;
        frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, -1.0f));
        this.effectOverlay = new EmojiAnimationsOverlay(frameLayout2, i) { // from class: org.telegram.ui.MessageSendPreview.12
            int[] messagePos = new int[2];

            @Override // org.telegram.ui.EmojiAnimationsOverlay
            public void layoutObject(EmojiAnimationsOverlay.DrawingObject drawingObject) {
                if (drawingObject == null) {
                    return;
                }
                if (MessageSendPreview.this.cameraRect != null) {
                    drawingObject.viewFound = true;
                    float filterWidth = (EmojiAnimationsOverlay.getFilterWidth() * AndroidUtilities.density) / 1.3f;
                    float f = filterWidth / 3.0f;
                    drawingObject.lastW = f;
                    drawingObject.lastH = f;
                    drawingObject.lastX = Utilities.clamp(MessageSendPreview.this.cameraRect.right - (0.75f * filterWidth), AndroidUtilities.displaySize.x - filterWidth, 0.0f);
                    drawingObject.lastY = MessageSendPreview.this.cameraRect.bottom - (filterWidth / 2.0f);
                    return;
                }
                if (MessageSendPreview.this.mainMessageCell == null || !MessageSendPreview.this.mainMessageCell.isAttachedToWindow() || MessageSendPreview.this.mainMessageCell.getMessageObject() == null || MessageSendPreview.this.mainMessageCell.getMessageObject().getId() != MessageSendPreview.this.mainMessageCellId) {
                    return;
                }
                MessageSendPreview.this.mainMessageCell.getLocationOnScreen(this.messagePos);
                drawingObject.viewFound = true;
                float filterWidth2 = (EmojiAnimationsOverlay.getFilterWidth() * AndroidUtilities.density) / 1.3f;
                float f2 = filterWidth2 / 3.0f;
                drawingObject.lastW = f2;
                drawingObject.lastH = f2;
                float f3 = filterWidth2 / 2.0f;
                drawingObject.lastX = Utilities.clamp((this.messagePos[0] + (MessageSendPreview.this.mainMessageCell.getTimeX() * MessageSendPreview.this.chatListView.getScaleX())) - f3, AndroidUtilities.displaySize.x - filterWidth2, 0.0f);
                drawingObject.lastY = (this.messagePos[1] + (MessageSendPreview.this.mainMessageCell.getTimeY() * MessageSendPreview.this.chatListView.getScaleY())) - f3;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view, final View view2) {
        if (this.focusable || !(view2 instanceof EditText)) {
            return;
        }
        AndroidUtilities.hideKeyboard(this.editText);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.MessageSendPreview$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2(view2);
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(final View view) {
        makeFocusable();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.MessageSendPreview$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1(view);
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        AndroidUtilities.showKeyboard(view);
        ChatActivityEnterView.SendButton sendButton = this.anchorSendButton;
        if (sendButton != null) {
            sendButton.getLocationOnScreen(this.sendButtonInitialPosition);
            int[] iArr = this.sendButtonInitialPosition;
            int i = iArr[0];
            int width = this.anchorSendButton.getWidth();
            ChatActivityEnterView.SendButton sendButton2 = this.anchorSendButton;
            iArr[0] = i + ((width - sendButton2.width(sendButton2.getHeight())) - AndroidUtilities.dp(6.0f));
            this.sendButton.setScaleX(this.anchorSendButton.getScaleX());
            this.sendButton.setScaleY(this.anchorSendButton.getScaleY());
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.MessageSendPreview$2 */
    public class C54832 extends SizeNotifierFrameLayout {
        private Paint backgroundPaint;
        int chatListViewTy;
        private GradientClip clip;
        final int[] destCellPos;
        private AnimatedFloat destCellY;
        final int[] pos;
        final int[] pos2;
        final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C54832(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.val$resourcesProvider = resourcesProvider;
            this.pos = new int[2];
            this.pos2 = new int[2];
            this.chatListViewTy = 0;
            this.destCellPos = new int[2];
            this.clip = new GradientClip();
            this.destCellY = new AnimatedFloat(0L, 100L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.backgroundPaint = new Paint(1);
        }

        /* JADX WARN: Removed duplicated region for block: B:86:0x063e  */
        /* JADX WARN: Removed duplicated region for block: B:89:0x06d9  */
        @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void dispatchDraw(Canvas canvas) {
            final Canvas canvas2;
            float f;
            char c2;
            float height;
            float f2;
            float fLerp;
            char c3;
            float f3;
            if (MessageSendPreview.this.openInProgress && MessageSendPreview.this.mainMessageCell != null && MessageSendPreview.this.mainMessageCell.getCurrentPosition() == null) {
                if (MessageSendPreview.this.firstOpenFrame) {
                    if (MessageSendPreview.this.editText != null) {
                        MessageSendPreview.this.editText.setAlpha(0.0f);
                    }
                    MessageSendPreview.this.firstOpenFrame = false;
                }
                boolean z = MessageSendPreview.this.mainMessageCell.getMessageObject() != null && MessageSendPreview.this.mainMessageCell.getMessageObject().type == 15;
                float imageX = z ? MessageSendPreview.this.mainMessageCell.getPhotoImage().getImageX() : r2.getTextX();
                float imageY = z ? MessageSendPreview.this.mainMessageCell.getPhotoImage().getImageY() : r2.mainMessageCell.getTextY();
                float x = MessageSendPreview.this.chatListView.getX() + MessageSendPreview.this.mainMessageCell.getX() + imageX;
                float y = MessageSendPreview.this.chatListView.getY() + MessageSendPreview.this.mainMessageCell.getY() + imageY;
                float textSize = (MessageSendPreview.this.mainMessageCell.getMessageObject() != null ? MessageSendPreview.this.mainMessageCell.getMessageObject().getTextPaint() : Theme.chat_msgTextPaint).getTextSize();
                if (MessageSendPreview.this.editText != null) {
                    MessageSendPreview.this.editText.getLocationOnScreen(this.pos);
                    float paddingLeft = this.pos[0] + MessageSendPreview.this.editText.getPaddingLeft();
                    float paddingTop = (this.pos[1] + MessageSendPreview.this.editText.getPaddingTop()) - MessageSendPreview.this.editText.getScrollY();
                    float textSize2 = MessageSendPreview.this.editText.getTextSize();
                    int i = this.pos[1];
                    f2 = i;
                    height = i + MessageSendPreview.this.editText.getMeasuredHeight();
                    x = AndroidUtilities.lerp(paddingLeft, x, MessageSendPreview.this.openProgress);
                    y = AndroidUtilities.lerp(paddingTop, y, MessageSendPreview.this.openProgress);
                    fLerp = AndroidUtilities.lerp(textSize2, textSize, MessageSendPreview.this.openProgress);
                } else {
                    height = getHeight();
                    f2 = 0.0f;
                    fLerp = textSize;
                }
                float f4 = x;
                float f5 = MessageSendPreview.this.openProgress;
                if (MessageSendPreview.this.destCell != null) {
                    f2 = MessageSendPreview.this.destClipTop;
                }
                f = 255.0f;
                float fLerp2 = AndroidUtilities.lerp(f2, MessageSendPreview.this.chatListView.getY() + (MessageSendPreview.this.chatListView.getHeight() * (1.0f - MessageSendPreview.this.chatListView.getScaleY())), MessageSendPreview.this.openProgress);
                float fLerp3 = AndroidUtilities.lerp(0.0f, MessageSendPreview.this.chatListView.canScrollVertically(-1) ? 1.0f : 0.0f, MessageSendPreview.this.openProgress);
                if (MessageSendPreview.this.destCell != null) {
                    height = MessageSendPreview.this.destClipBottom;
                }
                float fLerp4 = AndroidUtilities.lerp(height, MessageSendPreview.this.chatListView.getY() + MessageSendPreview.this.chatListView.getHeight(), MessageSendPreview.this.openProgress);
                float fLerp5 = AndroidUtilities.lerp(0.0f, MessageSendPreview.this.chatListView.canScrollVertically(1) ? 1.0f : 0.0f, MessageSendPreview.this.openProgress);
                final float f6 = fLerp;
                float f7 = y;
                canvas.saveLayerAlpha(0.0f, fLerp2 + 1.0f, getWidth(), fLerp4 - 1.0f, 255, 31);
                if (MessageSendPreview.this.editText != null) {
                    canvas2 = canvas;
                    canvas2.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), (int) ((1.0f - f5) * 255.0f), 31);
                    canvas2.translate(f4, f7);
                    canvas2.translate((-MessageSendPreview.this.editText.getX()) - MessageSendPreview.this.editText.getPaddingLeft(), ((-MessageSendPreview.this.editText.getY()) - MessageSendPreview.this.editText.getPaddingTop()) + MessageSendPreview.this.editText.getScrollY());
                    float alpha = MessageSendPreview.this.editText.getAlpha();
                    MessageSendPreview.this.editText.setAlpha(1.0f);
                    if (MessageSendPreview.this.openProgress >= 0.001f) {
                        f3 = alpha;
                    } else if (MessageSendPreview.this.drawEditTextBackground != null) {
                        canvas2.save();
                        canvas2.translate(0.0f, MessageSendPreview.this.editText.getY());
                        f3 = alpha;
                        canvas2.saveLayerAlpha(MessageSendPreview.this.editText.getX() + MessageSendPreview.this.editText.getPaddingLeft(), 0.0f, ((MessageSendPreview.this.editText.getX() + MessageSendPreview.this.editText.getPaddingLeft()) + MessageSendPreview.this.editText.getWidth()) - MessageSendPreview.this.editText.getPaddingRight(), MessageSendPreview.this.editText.getHeight(), (int) ((1.0f - (MessageSendPreview.this.openProgress / 0.1f)) * 255.0f), 31);
                        MessageSendPreview.this.drawEditTextBackground.run(canvas2);
                        canvas2.restore();
                        canvas2.restore();
                    } else {
                        f3 = alpha;
                        MessageSendPreview.this.editTextBackgroundPaint.setColor(Theme.getColor(Theme.key_chat_messagePanelBackground, this.val$resourcesProvider));
                        MessageSendPreview.this.editTextBackgroundPaint.setAlpha((int) (MessageSendPreview.this.editTextBackgroundPaint.getAlpha() * (1.0f - (MessageSendPreview.this.openProgress / 0.1f))));
                        canvas2.drawRect(MessageSendPreview.this.editText.getPaddingLeft(), MessageSendPreview.this.editText.getY(), ((MessageSendPreview.this.editText.getX() + MessageSendPreview.this.editText.getPaddingLeft()) + MessageSendPreview.this.editText.getWidth()) - MessageSendPreview.this.editText.getPaddingRight(), MessageSendPreview.this.editText.getY() + MessageSendPreview.this.editText.getHeight(), MessageSendPreview.this.editTextBackgroundPaint);
                    }
                    if (MessageSendPreview.this.drawEditText != null) {
                        MessageSendPreview.this.drawEditText.run(canvas2, new Utilities.Callback0Return() { // from class: org.telegram.ui.MessageSendPreview$2$$ExternalSyntheticLambda0
                            @Override // org.telegram.messenger.Utilities.Callback0Return
                            public final Object run() {
                                return this.f$0.lambda$dispatchDraw$0(canvas2, f6);
                            }
                        });
                    }
                    MessageSendPreview.this.editText.setAlpha(f3);
                    canvas2.restore();
                } else {
                    canvas2 = canvas;
                }
                MessageSendPreview.this.mainMessageCell.getTransitionParams().ignoreAlpha = true;
                if (MessageSendPreview.this.destCell == null) {
                    canvas2.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), (int) (f5 * 255.0f), 31);
                    canvas2.translate(f4, f7);
                    canvas2.translate(-imageX, -imageY);
                    float fLerp6 = AndroidUtilities.lerp(1.0f, MessageSendPreview.this.chatListView.getScaleX(), MessageSendPreview.this.openProgress);
                    canvas2.scale(fLerp6, fLerp6, (-MessageSendPreview.this.mainMessageCell.getX()) + MessageSendPreview.this.chatListView.getWidth(), (-MessageSendPreview.this.mainMessageCell.getY()) + MessageSendPreview.this.chatListView.getHeight());
                    float f8 = f6 / textSize;
                    canvas2.scale(f8, f8, imageX, imageY);
                    if (MessageSendPreview.this.mainMessageCell.drawBackgroundInParent()) {
                        canvas2.save();
                        canvas2.translate(0.0f, MessageSendPreview.this.mainMessageCell.getPaddingTop());
                        MessageSendPreview.this.mainMessageCell.drawBackgroundInternal(canvas2, true);
                        canvas2.restore();
                    }
                    MessageSendPreview.this.mainMessageCell.draw(canvas2);
                    canvas2.restore();
                } else {
                    MessageSendPreview.this.destCell.getLocationInWindow(this.pos2);
                    int translationY = MessageSendPreview.this.destCell.getParent() instanceof View ? (int) ((View) MessageSendPreview.this.destCell.getParent()).getTranslationY() : 0;
                    int i2 = this.chatListViewTy;
                    if (i2 > translationY) {
                        c3 = 1;
                        if (this.destCellPos[1] - this.pos2[1] <= i2) {
                        }
                        this.chatListViewTy = translationY;
                        float fLerp7 = AndroidUtilities.lerp(MessageSendPreview.this.chatListView.getX() + MessageSendPreview.this.mainMessageCell.getX(), this.destCellPos[0], 1.0f - MessageSendPreview.this.openProgress);
                        float fLerp8 = AndroidUtilities.lerp(MessageSendPreview.this.chatListView.getY() + MessageSendPreview.this.mainMessageCell.getY(), this.destCellPos[1], 1.0f - MessageSendPreview.this.openProgress);
                        canvas2.save();
                        canvas2.translate(fLerp7, fLerp8);
                        float fLerp9 = AndroidUtilities.lerp(1.0f, MessageSendPreview.this.chatListView.getScaleX(), MessageSendPreview.this.openProgress);
                        canvas2.scale(fLerp9, fLerp9, (-MessageSendPreview.this.mainMessageCell.getX()) + MessageSendPreview.this.chatListView.getWidth(), (-MessageSendPreview.this.mainMessageCell.getY()) + MessageSendPreview.this.chatListView.getHeight());
                        MessageSendPreview.this.mainMessageCell.getTransitionParams().animateChangeProgress = 1.0f - MessageSendPreview.this.openProgress;
                        MessageSendPreview.this.mainMessageCell.getTransitionParams().deltaLeft = MessageSendPreview.this.cellDelta.left * MessageSendPreview.this.openProgress;
                        MessageSendPreview.this.mainMessageCell.getTransitionParams().deltaTop = MessageSendPreview.this.cellDelta.top * MessageSendPreview.this.openProgress;
                        MessageSendPreview.this.mainMessageCell.getTransitionParams().deltaRight = MessageSendPreview.this.cellDelta.right * MessageSendPreview.this.openProgress;
                        MessageSendPreview.this.mainMessageCell.getTransitionParams().deltaBottom = MessageSendPreview.this.cellDelta.bottom * MessageSendPreview.this.openProgress;
                        MessageSendPreview.this.mainMessageCell.setTimeAlpha(1.0f - MessageSendPreview.this.openProgress);
                        if (MessageSendPreview.this.mainMessageCell.drawBackgroundInParent()) {
                            canvas2.saveLayerAlpha(0.0f, 0.0f, MessageSendPreview.this.destCell.getWidth(), MessageSendPreview.this.destCell.getHeight(), (int) (MessageSendPreview.this.openProgress * 255.0f), 31);
                            canvas2.translate(0.0f, MessageSendPreview.this.mainMessageCell.getPaddingTop());
                            MessageSendPreview.this.mainMessageCell.drawBackgroundInternal(canvas2, true);
                            canvas2.restore();
                            canvas2.saveLayerAlpha(0.0f, 0.0f, MessageSendPreview.this.destCell.getWidth(), MessageSendPreview.this.destCell.getHeight(), (int) ((1.0f - MessageSendPreview.this.openProgress) * 255.0f), 31);
                            canvas2.translate(0.0f, MessageSendPreview.this.destCell.getPaddingTop());
                            MessageSendPreview.this.destCell.drawBackgroundInternal(canvas2, true);
                            canvas2.restore();
                        }
                        MessageSendPreview.this.mainMessageCell.draw(canvas2);
                        if (MessageSendPreview.this.mainMessageCell.getTransitionParams().animateBackgroundBoundsInner) {
                            MessageSendPreview.this.mainMessageCell.drawNamesLayout(canvas2, 1.0f);
                            MessageSendPreview.this.mainMessageCell.drawTime(canvas2, 1.0f - MessageSendPreview.this.openProgress, true);
                        }
                        canvas2.restore();
                    } else {
                        c3 = 1;
                    }
                    int[] iArr = this.destCellPos;
                    int[] iArr2 = this.pos2;
                    iArr[0] = iArr2[0];
                    iArr[c3] = iArr2[c3];
                    this.chatListViewTy = translationY;
                    float fLerp72 = AndroidUtilities.lerp(MessageSendPreview.this.chatListView.getX() + MessageSendPreview.this.mainMessageCell.getX(), this.destCellPos[0], 1.0f - MessageSendPreview.this.openProgress);
                    float fLerp82 = AndroidUtilities.lerp(MessageSendPreview.this.chatListView.getY() + MessageSendPreview.this.mainMessageCell.getY(), this.destCellPos[1], 1.0f - MessageSendPreview.this.openProgress);
                    canvas2.save();
                    canvas2.translate(fLerp72, fLerp82);
                    float fLerp92 = AndroidUtilities.lerp(1.0f, MessageSendPreview.this.chatListView.getScaleX(), MessageSendPreview.this.openProgress);
                    canvas2.scale(fLerp92, fLerp92, (-MessageSendPreview.this.mainMessageCell.getX()) + MessageSendPreview.this.chatListView.getWidth(), (-MessageSendPreview.this.mainMessageCell.getY()) + MessageSendPreview.this.chatListView.getHeight());
                    MessageSendPreview.this.mainMessageCell.getTransitionParams().animateChangeProgress = 1.0f - MessageSendPreview.this.openProgress;
                    MessageSendPreview.this.mainMessageCell.getTransitionParams().deltaLeft = MessageSendPreview.this.cellDelta.left * MessageSendPreview.this.openProgress;
                    MessageSendPreview.this.mainMessageCell.getTransitionParams().deltaTop = MessageSendPreview.this.cellDelta.top * MessageSendPreview.this.openProgress;
                    MessageSendPreview.this.mainMessageCell.getTransitionParams().deltaRight = MessageSendPreview.this.cellDelta.right * MessageSendPreview.this.openProgress;
                    MessageSendPreview.this.mainMessageCell.getTransitionParams().deltaBottom = MessageSendPreview.this.cellDelta.bottom * MessageSendPreview.this.openProgress;
                    MessageSendPreview.this.mainMessageCell.setTimeAlpha(1.0f - MessageSendPreview.this.openProgress);
                    if (MessageSendPreview.this.mainMessageCell.drawBackgroundInParent()) {
                    }
                    MessageSendPreview.this.mainMessageCell.draw(canvas2);
                    if (MessageSendPreview.this.mainMessageCell.getTransitionParams().animateBackgroundBoundsInner) {
                    }
                    canvas2.restore();
                }
                canvas2.save();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(0.0f, fLerp2, getWidth(), AndroidUtilities.dp(14.0f) + fLerp2);
                this.clip.draw(canvas2, rectF, true, fLerp3);
                rectF.set(0.0f, fLerp4 - AndroidUtilities.dp(14.0f), getWidth(), fLerp4);
                this.clip.draw(canvas2, rectF, false, fLerp5);
                canvas2.restore();
                canvas2.restore();
            } else {
                canvas2 = canvas;
                f = 255.0f;
            }
            if (MessageSendPreview.this.openInProgress) {
                if (MessageSendPreview.this.firstOpenFrame2) {
                    if (MessageSendPreview.this.anchorSendButton != null) {
                        MessageSendPreview.this.anchorSendButton.setAlpha(0.0f);
                    }
                    c2 = 0;
                    MessageSendPreview.this.firstOpenFrame2 = false;
                } else {
                    c2 = 0;
                }
                canvas2.save();
                canvas2.translate(AndroidUtilities.lerp((MessageSendPreview.this.sendButtonInitialPosition[c2] - (MessageSendPreview.this.sendButton.getWidth() - MessageSendPreview.this.sendButton.width(MessageSendPreview.this.sendButton.getHeight()))) + AndroidUtilities.dp(6.0f), MessageSendPreview.this.sendButton.getX(), MessageSendPreview.this.openProgress), AndroidUtilities.lerp(MessageSendPreview.this.sendButtonInitialPosition[1], MessageSendPreview.this.sendButton.getY(), MessageSendPreview.this.openProgress));
                if (MessageSendPreview.this.closing && MessageSendPreview.this.sent) {
                    canvas2.saveLayerAlpha(0.0f, 0.0f, MessageSendPreview.this.sendButton.getWidth(), MessageSendPreview.this.sendButton.getHeight(), (int) (MessageSendPreview.this.openProgress * f), 31);
                }
                MessageSendPreview.this.sendButton.draw(canvas2);
                if (MessageSendPreview.this.closing && MessageSendPreview.this.sent) {
                    canvas2.restore();
                }
                canvas2.restore();
            }
            super.dispatchDraw(canvas);
            if (MessageSendPreview.this.cameraRect != null) {
                if (MessageSendPreview.this.effectDrawable == null) {
                    MessageSendPreview.this.effectDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.dp(24.0f), 23);
                }
                Rect rect = AndroidUtilities.rectTmp2;
                rect.set((int) ((MessageSendPreview.this.cameraRect.right - AndroidUtilities.dp(12.0f)) - AndroidUtilities.dp(24.0f)), (int) ((MessageSendPreview.this.cameraRect.bottom - AndroidUtilities.dp(12.0f)) - AndroidUtilities.dp(24.0f)), (int) (MessageSendPreview.this.cameraRect.right - AndroidUtilities.dp(12.0f)), (int) (MessageSendPreview.this.cameraRect.bottom - AndroidUtilities.dp(12.0f)));
                RectF rectF2 = AndroidUtilities.rectTmp;
                rectF2.set(rect);
                rectF2.inset(-AndroidUtilities.dp(12.0f), -AndroidUtilities.dp(6.0f));
                float fHeight = rectF2.height() / 2.0f;
                this.backgroundPaint.setColor(503316480);
                this.backgroundPaint.setAlpha((int) (MessageSendPreview.this.effectDrawable.isNotEmpty() * 30.0f * MessageSendPreview.this.openProgress));
                canvas2.drawRoundRect(rectF2, fHeight, fHeight, this.backgroundPaint);
                MessageSendPreview.this.effectDrawable.setBounds(rect);
                MessageSendPreview.this.effectDrawable.setAlpha((int) (MessageSendPreview.this.openProgress * f));
                MessageSendPreview.this.effectDrawable.draw(canvas2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Boolean lambda$dispatchDraw$0(Canvas canvas, float f) {
            canvas.save();
            canvas.translate(MessageSendPreview.this.editText.getX(), MessageSendPreview.this.editText.getY() - MessageSendPreview.this.editText.getScrollY());
            float textSize = f / MessageSendPreview.this.editText.getTextSize();
            canvas.scale(textSize, textSize, MessageSendPreview.this.editText.getPaddingLeft(), MessageSendPreview.this.editText.getPaddingTop());
            MessageSendPreview.this.editText.draw(canvas);
            canvas.restore();
            return Boolean.TRUE;
        }

        @Override // android.view.ViewGroup
        public boolean drawChild(Canvas canvas, View view, long j) {
            if (MessageSendPreview.this.openInProgress) {
                if (view == MessageSendPreview.this.sendButton) {
                    return false;
                }
                if (view == MessageSendPreview.this.mainMessageCell && MessageSendPreview.this.mainMessageCell != null && MessageSendPreview.this.mainMessageCell.getCurrentPosition() == null) {
                    return false;
                }
            }
            return super.drawChild(canvas, view, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(View view) {
        onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(View view, int i) {
        onBackPressed();
    }

    /* JADX INFO: renamed from: org.telegram.ui.MessageSendPreview$6 */
    public class C54876 extends ChatListItemAnimator {
        Runnable finishRunnable;

        @Override // androidx.recyclerview.widget.DefaultItemAnimator
        public void checkIsRunning() {
        }

        public C54876(ChatActivity chatActivity, RecyclerListView recyclerListView, Theme.ResourcesProvider resourcesProvider) {
            super(chatActivity, recyclerListView, resourcesProvider);
        }

        @Override // org.telegram.ui.recyclerview.ChatListItemAnimator
        public void onAnimationStart() {
            Runnable runnable = this.finishRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.finishRunnable = null;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1037d("chatItemAnimator disable notifications");
            }
        }

        @Override // org.telegram.ui.recyclerview.ChatListItemAnimator, androidx.recyclerview.widget.DefaultItemAnimator
        public void onAllAnimationsDone() {
            super.onAllAnimationsDone();
            Runnable runnable = this.finishRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.finishRunnable = null;
            }
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.MessageSendPreview$6$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onAllAnimationsDone$0();
                }
            };
            this.finishRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAllAnimationsDone$0() {
            this.finishRunnable = null;
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1037d("chatItemAnimator enable notifications");
            }
        }

        @Override // org.telegram.ui.recyclerview.ChatListItemAnimator, androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
        public void endAnimations() {
            super.endAnimations();
            Runnable runnable = this.finishRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.MessageSendPreview$6$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$endAnimations$1();
                }
            };
            this.finishRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$endAnimations$1() {
            this.finishRunnable = null;
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1037d("chatItemAnimator enable notifications");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMessagesVisiblePart() {
        int measuredHeight = this.containerView.getMeasuredHeight();
        int childCount = this.chatListView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.chatListView.getChildAt(i);
            if (childAt instanceof ChatMessageCell) {
                float fComputeYCoordinateInParent = ViewPositionWatcher.computeYCoordinateInParent(childAt, this.containerView);
                ChatMessageCell chatMessageCell = (ChatMessageCell) childAt;
                int i2 = (int) fComputeYCoordinateInParent;
                childAt.getMeasuredHeight();
                int i3 = i2 >= 0 ? 0 : -i2;
                int measuredHeight2 = childAt.getMeasuredHeight();
                if (measuredHeight2 > measuredHeight) {
                    measuredHeight2 = i3 + measuredHeight;
                }
                chatMessageCell.setVisiblePart(i3, measuredHeight2 - i3, measuredHeight, fComputeYCoordinateInParent, fComputeYCoordinateInParent, this.containerView.getMeasuredWidth(), this.containerView.getMeasuredHeight(), 0, 0, 0);
            }
        }
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (this.keyboardVisible) {
            AndroidUtilities.hideKeyboard(getCurrentFocus());
            this.keyboardVisible = false;
            return;
        }
        ReactionsContainerLayout reactionsContainerLayout = this.effectSelector;
        if (reactionsContainerLayout != null && reactionsContainerLayout.getReactionsWindow() != null) {
            if (this.effectSelector.getReactionsWindow().transition) {
                return;
            }
            this.effectSelector.getReactionsWindow().dismiss();
        } else {
            this.sentEffect = true;
            super.onBackPressed();
        }
    }

    public class MessageCell extends ChatMessageCell {
        public int bottom;
        private int pastId;
        public int top;

        @Override // android.view.View
        public boolean isPressed() {
            return false;
        }

        public MessageCell(Context context, int i, boolean z, ChatMessageSharedResources chatMessageSharedResources, Theme.ResourcesProvider resourcesProvider) {
            super(context, i, z, chatMessageSharedResources, resourcesProvider);
            this.top = Integer.MAX_VALUE;
            this.bottom = Integer.MAX_VALUE;
            this.pastId = -1;
        }

        @Override // org.telegram.ui.Cells.ChatMessageCell
        public SpoilerEffect2 makeSpoilerEffect() {
            return SpoilerEffect2.getInstance(1, this, MessageSendPreview.this.windowView);
        }

        @Override // org.telegram.ui.Cells.ChatMessageCell, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (!this.transitionParams.animateBackgroundBoundsInner || i2 == 0 || this.top == Integer.MAX_VALUE || i4 == 0 || this.bottom == Integer.MAX_VALUE) {
                return;
            }
            if (this.pastId == (getMessageObject() == null ? 0 : getMessageObject().getId())) {
                if (!MessageSendPreview.this.scrolledToLast) {
                    setTranslationY(-(i2 - this.top));
                    animate().translationY(0.0f).setDuration(320L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
                }
                this.top = getTop();
                this.bottom = getBottom();
                this.pastId = getMessageObject() != null ? getMessageObject().getId() : 0;
            }
        }
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        window.setWindowAnimations(C2807R.style.DialogNoAnimation);
        setContentView(this.windowView, new ViewGroup.LayoutParams(-1, -1));
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        attributes.gravity = 119;
        attributes.dimAmount = 0.0f;
        int i = attributes.flags & (-3);
        attributes.softInputMode = 16;
        attributes.flags = i | (-1945959040);
        window.setAttributes(attributes);
        this.windowView.setSystemUiVisibility(256);
        AndroidUtilities.setLightNavigationBar(this.windowView, !Theme.isCurrentThemeDark());
    }

    public void setMessageObjects(ArrayList<MessageObject> arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            MessageObject messageObject = arrayList.get(i);
            if (messageObject.hasValidGroupId()) {
                MessageObject.GroupedMessages groupedMessages = this.groupedMessagesMap.get(messageObject.getGroupIdForUse());
                if (groupedMessages == null) {
                    groupedMessages = new MessageObject.GroupedMessages();
                    groupedMessages.reversed = false;
                    long groupId = messageObject.getGroupId();
                    groupedMessages.groupId = groupId;
                    this.groupedMessagesMap.put(groupId, groupedMessages);
                }
                if (groupedMessages.getPosition(messageObject) == null) {
                    int i2 = 0;
                    while (true) {
                        int size = groupedMessages.messages.size();
                        ArrayList<MessageObject> arrayList2 = groupedMessages.messages;
                        if (i2 < size) {
                            if (arrayList2.get(i2).getId() == messageObject.getId()) {
                                break;
                            } else {
                                i2++;
                            }
                        } else {
                            arrayList2.add(messageObject);
                            break;
                        }
                    }
                }
            } else if (messageObject.getGroupIdForUse() != 0) {
                messageObject.messageOwner.grouped_id = 0L;
                messageObject.localSentGroupId = 0L;
            }
        }
        for (int i3 = 0; i3 < this.groupedMessagesMap.size(); i3++) {
            this.groupedMessagesMap.valueAt(i3).calculate();
        }
        this.messageObjects.addAll(arrayList);
        for (int i4 = 0; i4 < this.messageObjects.size(); i4++) {
            this.messageObjectsWidth = Math.max(this.messageObjectsWidth, getWidthForMessage(this.messageObjects.get(i4)));
        }
        this.chatListView.getAdapter().notifyDataSetChanged();
        int itemCount = this.chatListView.getAdapter().getItemCount();
        this.chatLayoutManager.scrollToPositionWithOffset(itemCount > 10 ? itemCount % 10 : 0, AndroidUtilities.dp(12.0f), true);
    }

    public void setCameraTexture(TextureView textureView) {
        if (textureView == null) {
            return;
        }
        this.cameraRect = new RectF();
        int[] iArr = new int[2];
        textureView.getLocationOnScreen(iArr);
        this.cameraRect.set(iArr[0], iArr[1], r1 + textureView.getWidth(), iArr[1] + textureView.getHeight());
    }

    public void setEditText(EditTextCaption editTextCaption, Utilities.Callback2<Canvas, Utilities.Callback0Return<Boolean>> callback2, Utilities.Callback<Canvas> callback) {
        this.editText = editTextCaption;
        this.drawEditText = callback2;
        this.drawEditTextBackground = callback;
    }

    public ChatActivityEnterView.SendButton setSendButton(final ChatActivityEnterView.SendButton sendButton, final boolean z, View.OnClickListener onClickListener) {
        this.anchorSendButton = sendButton;
        sendButton.getLocationOnScreen(this.sendButtonInitialPosition);
        ChatActivityEnterView.SendButton sendButton2 = new ChatActivityEnterView.SendButton(getContext(), sendButton.resId, this.resourcesProvider) { // from class: org.telegram.ui.MessageSendPreview.13
            @Override // org.telegram.ui.Components.ChatActivityEnterView.SendButton
            public boolean isInScheduleMode() {
                return sendButton.isInScheduleMode();
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.SendButton
            public boolean isOpen() {
                return (z && MessageSendPreview.this.dismissing && !super.isOpen()) ? false : true;
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.SendButton
            public boolean isInactive() {
                return sendButton.isInactive();
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.SendButton
            public boolean shouldDrawBackground() {
                return sendButton.shouldDrawBackground();
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.SendButton
            public int getFillColor() {
                return sendButton.getFillColor();
            }
        };
        this.sendButton = sendButton2;
        sendButton2.setScaleX(this.anchorSendButton.getScaleX());
        this.sendButton.setScaleY(this.anchorSendButton.getScaleY());
        this.anchorSendButton.copyTo(this.sendButton);
        this.sendButton.open.set(sendButton.open.get(), true);
        this.sendButton.setOnClickListener(onClickListener);
        this.containerView.addView(this.sendButton, new ViewGroup.LayoutParams(sendButton.getWidth(), sendButton.getHeight()));
        this.sendButtonWidth = this.anchorSendButton.width(sendButton.getHeight());
        int[] iArr = this.sendButtonInitialPosition;
        iArr[0] = iArr[0] + ((this.anchorSendButton.getWidth() - this.anchorSendButton.width(sendButton.getHeight())) - AndroidUtilities.dp(6.0f));
        return this.sendButton;
    }

    public void setSendButtonWidth(int i) {
        this.customSendButtonWidth = true;
        this.sendButtonWidth = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSendButtonWidth() {
        return this.customSendButtonWidth ? this.sendButtonWidth : this.anchorSendButton.width();
    }

    public void setItemOptions(ItemOptions itemOptions) {
        itemOptions.setGapBackgroundColor(Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, this.resourcesProvider), 0.06f));
        itemOptions.setBlurBackground(this.iBlur3Factory, BlurredBackgroundProviderImpl.scrimMenuBackground(this.resourcesProvider), false);
        ViewGroup layout = itemOptions.getLayout();
        this.optionsView = layout;
        this.containerView.addView(layout, LayoutHelper.createFrame(-2, -2.0f));
    }

    public void dispatchCapturedTouchEvent(MotionEvent motionEvent, ItemOptions itemOptions) {
        if (motionEvent.getAction() != 1 || !performEffectClickAt(motionEvent.getRawX(), motionEvent.getRawY())) {
            if (itemOptions != null) {
                itemOptions.dispatchCapturedTouchEvent(motionEvent);
            }
        } else if (itemOptions != null) {
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            motionEventObtain.setAction(3);
            itemOptions.dispatchCapturedTouchEvent(motionEventObtain);
            motionEventObtain.recycle();
        }
    }

    private boolean performEffectClickAt(float f, float f2) {
        View viewFindChildViewUnder;
        int childAdapterPosition;
        ReactionsContainerLayout reactionsContainerLayout = this.effectSelector;
        if (reactionsContainerLayout != null && this.effectSelectorShown && reactionsContainerLayout.getAlpha() >= 0.5f) {
            RecyclerListView recyclerListView = this.effectSelector.recyclerListView;
            recyclerListView.getLocationOnScreen(new int[2]);
            float f3 = f - r0[0];
            float f4 = f2 - r0[1];
            if (f3 < 0.0f || f3 > recyclerListView.getWidth() || f4 < 0.0f || f4 > recyclerListView.getHeight() || (viewFindChildViewUnder = recyclerListView.findChildViewUnder(f3, f4)) == null || viewFindChildViewUnder.getVisibility() != 0 || (childAdapterPosition = recyclerListView.getChildAdapterPosition(viewFindChildViewUnder)) == -1) {
                return false;
            }
            recyclerListView.clickItem(viewFindChildViewUnder, childAdapterPosition);
            return true;
        }
        return false;
    }

    public void allowEffectSelector(BaseFragment baseFragment) {
        if (this.effectSelector != null || baseFragment == null) {
            return;
        }
        MessagesController.getInstance(this.currentAccount).getAvailableEffects();
        FrameLayout frameLayout = new FrameLayout(this.context);
        this.effectSelectorContainer = frameLayout;
        frameLayout.setClipChildren(false);
        this.effectSelectorContainer.setClipToPadding(false);
        this.effectSelectorContainer.setPadding(0, 0, 0, AndroidUtilities.dp(24.0f));
        ReactionsContainerLayout reactionsContainerLayout = new ReactionsContainerLayout(5, null, getContext(), this.currentAccount, this.resourcesProvider) { // from class: org.telegram.ui.MessageSendPreview.14
            @Override // android.widget.FrameLayout, android.view.View
            public void onMeasure(int i, int i2) {
                super.onMeasure(i, i2);
                setPivotX(getMeasuredWidth());
                setPivotY(getMeasuredHeight());
            }
        };
        this.effectSelector = reactionsContainerLayout;
        reactionsContainerLayout.setClipChildren(false);
        this.effectSelector.setClipToPadding(false);
        this.effectSelector.setPadding(AndroidUtilities.dp(4.0f), AndroidUtilities.dp(22.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(22.0f));
        this.effectSelector.setDelegate(new AnonymousClass15(baseFragment));
        this.effectSelector.setTop(false);
        this.effectSelector.setClipChildren(false);
        this.effectSelector.setClipToPadding(false);
        this.effectSelector.setVisibility(0);
        this.effectSelector.setHint(LocaleController.getString(C2807R.string.AddEffectMessageHint));
        this.effectSelector.setBubbleOffset(AndroidUtilities.dp(-25.0f));
        this.effectSelector.setMiniBubblesOffset(AndroidUtilities.dp(2.0f));
        this.containerView.addView(this.effectSelectorContainer, LayoutHelper.createFrame(-2, 300.0f, 51, 0.0f, 0.0f, 0.0f, 0.0f));
        this.effectSelectorContainer.addView(this.effectSelector, LayoutHelper.createFrame(-1, 116.0f, 83, 0.0f, 0.0f, 0.0f, 0.0f));
        this.effectSelector.setScaleY(0.4f);
        this.effectSelector.setScaleX(0.4f);
        this.effectSelector.setAlpha(0.0f);
        if (MessagesController.getInstance(this.currentAccount).hasAvailableEffects()) {
            showEffectSelector();
        } else {
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.availableEffectsUpdate);
        }
        ReactionsContainerLayout reactionsContainerLayout2 = this.effectSelector;
        if (reactionsContainerLayout2 != null) {
            reactionsContainerLayout2.setPaused(true, true);
        }
        new KeyboardNotifier(this.windowView, new Utilities.Callback() { // from class: org.telegram.ui.MessageSendPreview$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$allowEffectSelector$6((Integer) obj);
            }
        });
    }

    /* JADX INFO: renamed from: org.telegram.ui.MessageSendPreview$15, reason: invalid class name */
    public class AnonymousClass15 implements ReactionsContainerLayout.ReactionsContainerDelegate {
        final /* synthetic */ BaseFragment val$fragment;

        public AnonymousClass15(BaseFragment baseFragment) {
            this.val$fragment = baseFragment;
        }

        /* JADX WARN: Removed duplicated region for block: B:77:0x01bc  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x01be  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x01ce  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x01ee  */
        @Override // org.telegram.ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onReactionClicked(View view, ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z, boolean z2) {
            boolean z3;
            ReactionsLayoutInBubble.VisibleReaction visibleReaction2;
            boolean z4;
            long j;
            long j2;
            ReactionsLayoutInBubble.VisibleReaction visibleReaction3 = visibleReaction;
            if (visibleReaction3 == null || MessageSendPreview.this.effectSelector == null) {
                return;
            }
            boolean z5 = !UserConfig.getInstance(MessageSendPreview.this.currentAccount).isPremium() && visibleReaction3.premium;
            ChatMessageCell chatMessageCell = MessageSendPreview.this.mainMessageCell;
            MessageSendPreview messageSendPreview = MessageSendPreview.this;
            if (chatMessageCell != null) {
                MessageObject messageObject = messageSendPreview.mainMessageCell.getMessageObject();
                if (messageObject == null) {
                    return;
                }
                TLRPC.Message message = messageObject.messageOwner;
                long j3 = message.effect;
                long j4 = visibleReaction3.effectId;
                if (j4 == j3) {
                    message.flags2 &= -5;
                    message.effect = 0L;
                    z4 = true;
                } else {
                    message.flags2 |= 4;
                    message.effect = j4;
                    z4 = false;
                }
                if (z5) {
                    j = 0;
                    j2 = j3;
                } else {
                    j = 0;
                    j2 = j3;
                    MessageSendPreview.this.mainMessageCell.setMessageObject(messageObject, MessageSendPreview.this.getValidGroupedMessage(messageObject), MessageSendPreview.this.messageObjects.size() > 1, false, false);
                    MessageSendPreview.this.effectSelector.setSelectedReactionAnimated(z4 ? null : visibleReaction3);
                    if (MessageSendPreview.this.effectSelector.getReactionsWindow() != null && MessageSendPreview.this.effectSelector.getReactionsWindow().getSelectAnimatedEmojiDialog() != null) {
                        SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = MessageSendPreview.this.effectSelector.getReactionsWindow().getSelectAnimatedEmojiDialog();
                        if (z4) {
                            visibleReaction3 = null;
                        }
                        selectAnimatedEmojiDialog.setSelectedReaction(visibleReaction3);
                        MessageSendPreview.this.effectSelector.getReactionsWindow().containerView.invalidate();
                    }
                }
                MessageSendPreview.this.effectOverlay.clear();
                if (!z4) {
                    MessageSendPreview.this.effectOverlay.showAnimationForCell(MessageSendPreview.this.mainMessageCell, 0, false, false);
                }
                if (z5) {
                    TLRPC.Message message2 = messageObject.messageOwner;
                    message2.effect = j2;
                    if (j2 == j) {
                        message2.flags2 &= -5;
                    }
                }
                if (MessageSendPreview.this.sendButton != null) {
                    MessageSendPreview.this.sendButton.setEffect(messageObject.messageOwner.effect);
                }
                MessageSendPreview.this.onEffectChange(messageObject.messageOwner.effect);
            } else if (messageSendPreview.cameraRect != null) {
                long j5 = visibleReaction3.effectId;
                long j6 = MessageSendPreview.this.effectId;
                MessageSendPreview messageSendPreview2 = MessageSendPreview.this;
                if (j5 == j6) {
                    messageSendPreview2.effectId = 0L;
                    z3 = true;
                } else {
                    messageSendPreview2.effectId = visibleReaction3.effectId;
                    z3 = false;
                }
                if (MessageSendPreview.this.sendButton != null) {
                    MessageSendPreview.this.sendButton.setEffect(MessageSendPreview.this.effectId);
                }
                MessageSendPreview messageSendPreview3 = MessageSendPreview.this;
                messageSendPreview3.onEffectChange(messageSendPreview3.effectId);
                if (!z5) {
                    TLRPC.TL_availableEffect effect = MessageSendPreview.this.effectId == 0 ? null : MessagesController.getInstance(MessageSendPreview.this.currentAccount).getEffect(MessageSendPreview.this.effectId);
                    if (MessageSendPreview.this.effectDrawable == null) {
                        visibleReaction2 = null;
                        MessageSendPreview.this.effectSelector.setSelectedReactionAnimated(z3 ? visibleReaction2 : visibleReaction3);
                        if (MessageSendPreview.this.effectSelector.getReactionsWindow() != null && MessageSendPreview.this.effectSelector.getReactionsWindow().getSelectAnimatedEmojiDialog() != null) {
                            SelectAnimatedEmojiDialog selectAnimatedEmojiDialog2 = MessageSendPreview.this.effectSelector.getReactionsWindow().getSelectAnimatedEmojiDialog();
                            if (z3) {
                                visibleReaction3 = visibleReaction2;
                            }
                            selectAnimatedEmojiDialog2.setSelectedReaction(visibleReaction3);
                            MessageSendPreview.this.effectSelector.getReactionsWindow().containerView.invalidate();
                        }
                    } else if (MessageSendPreview.this.effectId == 0 || effect == null) {
                        visibleReaction2 = null;
                        MessageSendPreview.this.effectDrawable.set((Drawable) null, true);
                        MessageSendPreview.this.effectSelector.setSelectedReactionAnimated(z3 ? visibleReaction2 : visibleReaction3);
                        if (MessageSendPreview.this.effectSelector.getReactionsWindow() != null) {
                            SelectAnimatedEmojiDialog selectAnimatedEmojiDialog22 = MessageSendPreview.this.effectSelector.getReactionsWindow().getSelectAnimatedEmojiDialog();
                            if (z3) {
                            }
                            selectAnimatedEmojiDialog22.setSelectedReaction(visibleReaction3);
                            MessageSendPreview.this.effectSelector.getReactionsWindow().containerView.invalidate();
                        }
                    } else {
                        MessageSendPreview.this.effectDrawable.set((Drawable) Emoji.getEmojiDrawable(effect.emoticon), true);
                        visibleReaction2 = null;
                        MessageSendPreview.this.effectSelector.setSelectedReactionAnimated(z3 ? visibleReaction2 : visibleReaction3);
                        if (MessageSendPreview.this.effectSelector.getReactionsWindow() != null) {
                        }
                    }
                }
                MessageSendPreview.this.effectOverlay.clear();
                if (!z3) {
                    TLRPC.TL_message tL_message = new TLRPC.TL_message();
                    tL_message.effect = MessageSendPreview.this.effectId;
                    if (MessageSendPreview.this.effectId != 0) {
                        tL_message.flags2 |= 4;
                    }
                    MessageSendPreview.this.effectOverlay.createDrawingObject(null, 0, null, new MessageObject(MessageSendPreview.this.currentAccount, tL_message, false, false), 0, false, false, 0.0f, 0.0f, true);
                }
            }
            if (z5 && this.val$fragment != null) {
                BulletinFactory bulletinFactoryOf = BulletinFactory.of(MessageSendPreview.this.containerView, MessageSendPreview.this.resourcesProvider);
                int i = C2807R.raw.star_premium_2;
                String string = LocaleController.getString(C2807R.string.AnimatedEffectPremium);
                final BaseFragment baseFragment = this.val$fragment;
                bulletinFactoryOf.createSimpleBulletin(i, AndroidUtilities.premiumText(string, new Runnable() { // from class: org.telegram.ui.MessageSendPreview$15$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessageSendPreview.AnonymousClass15.$r8$lambda$tyWKze7VD88usEKRXkm81_hG0mQ(baseFragment);
                    }
                })).show();
            }
            MessageSendPreview.this.effectsView.invalidate();
        }

        public static /* synthetic */ void $r8$lambda$tyWKze7VD88usEKRXkm81_hG0mQ(BaseFragment baseFragment) {
            BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
            bottomSheetParams.transitionFromLeft = true;
            bottomSheetParams.allowNestedScroll = false;
            baseFragment.showAsSheet(new PremiumPreviewFragment("effect"), bottomSheetParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$allowEffectSelector$6(Integer num) {
        boolean z = num.intValue() - this.insets.bottom > AndroidUtilities.dp(20.0f);
        this.keyboardVisible = z;
        float fMin = this.effectSelectorContainerY;
        if (z) {
            fMin = Math.min(fMin, (this.windowView.getHeight() - num.intValue()) - this.effectSelectorContainer.getMeasuredHeight());
        }
        this.effectSelectorContainer.animate().translationY(fMin - this.effectSelectorContainer.getTop()).setDuration(250L).setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator).start();
    }

    public void setEffectId(long j) {
        TLRPC.TL_availableEffect effect;
        this.effectId = j;
        int mainMessageCellPosition = getMainMessageCellPosition();
        MessageObject messageObject = (mainMessageCellPosition < 0 || mainMessageCellPosition >= this.messageObjects.size()) ? null : this.messageObjects.get(mainMessageCellPosition);
        if (messageObject != null) {
            TLRPC.Message message = messageObject.messageOwner;
            message.flags2 |= 4;
            message.effect = j;
        }
        if (this.effectSelector == null || (effect = MessagesController.getInstance(this.currentAccount).getEffect(j)) == null) {
            return;
        }
        this.effectSelector.setSelectedReactionAnimated(ReactionsLayoutInBubble.VisibleReaction.fromTL(effect));
    }

    public void showEffectSelector() {
        if (this.effectSelectorShown) {
            return;
        }
        this.layoutDone = false;
        this.effectSelectorShown = true;
        this.effectSelector.setMessage(null, null, true);
        this.effectSelector.animate().scaleY(1.0f).scaleX(1.0f).alpha(1.0f).setDuration(420L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
        this.effectSelector.startEnterAnimation(false);
    }

    public long getSelectedEffect() {
        MessageObject messageObject;
        if (!this.sentEffect && this.effectSelector != null) {
            if (this.cameraRect != null) {
                this.sentEffect = true;
                return this.effectId;
            }
            ChatMessageCell chatMessageCell = this.mainMessageCell;
            if (chatMessageCell == null || (messageObject = chatMessageCell.getMessageObject()) == null) {
                return 0L;
            }
            TLRPC.Message message = messageObject.messageOwner;
            if ((message.flags2 & 4) == 0) {
                return 0L;
            }
            this.sentEffect = true;
            return message.effect;
        }
        return 0L;
    }

    public void hideEffectSelector() {
        ReactionsContainerLayout reactionsContainerLayout = this.effectSelector;
        if (reactionsContainerLayout != null && this.effectSelectorShown) {
            reactionsContainerLayout.dismissWindow();
            if (this.effectSelector.getReactionsWindow() != null && this.effectSelector.getReactionsWindow().containerView != null) {
                this.effectSelector.getReactionsWindow().containerView.animate().alpha(0.0f).setDuration(180L).start();
            }
            this.effectSelector.animate().alpha(0.01f).translationY(-AndroidUtilities.dp(12.0f)).scaleX(0.6f).scaleY(0.6f).setDuration(180L).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void layout() {
        if (this.windowView.getWidth() <= 0) {
            return;
        }
        int[] iArr = new int[2];
        this.anchorSendButton.getLocationOnScreen(iArr);
        iArr[0] = iArr[0] + ((this.anchorSendButton.getWidth() - this.anchorSendButton.width()) - AndroidUtilities.dp(6.0f));
        this.sendButton.setScaleX(this.anchorSendButton.getScaleX());
        this.sendButton.setScaleY(this.anchorSendButton.getScaleY());
        int[] iArr2 = this.sendButtonInitialPosition;
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        int measuredHeight = (this.chatListView.getMeasuredHeight() - this.sendButton.getHeight()) + (this.effectSelector != null ? AndroidUtilities.dp(320.0f) : 0);
        int iDp = this.insets.top + AndroidUtilities.dp(8.0f);
        int iDp2 = AndroidUtilities.dp(this.messageObjects.isEmpty() ? -6.0f : 48.0f);
        View view = this.optionsView;
        int measuredHeight2 = iDp2 + (view == null ? 0 : view.getMeasuredHeight());
        int measuredHeight3 = (this.containerView.getMeasuredHeight() - AndroidUtilities.dp(8.0f)) - this.insets.bottom;
        if (iArr[1] + measuredHeight2 > measuredHeight3) {
            iArr[1] = measuredHeight3 - measuredHeight2;
        }
        if (iArr[1] - measuredHeight < iDp) {
            iArr[1] = iDp + measuredHeight;
        }
        if (iArr[1] + this.anchorSendButton.getHeight() + measuredHeight2 > measuredHeight3) {
            iArr[1] = (measuredHeight3 - measuredHeight2) - this.anchorSendButton.getHeight();
        }
        this.sendButton.setX((iArr[0] - (r2.getWidth() - this.sendButton.width())) + AndroidUtilities.dp(6.0f));
        this.sendButton.setY(iArr[1]);
        if (this.customSendButtonWidth) {
            iArr[0] = iArr[0] - (this.sendButtonWidth - this.anchorSendButton.width());
        }
        this.chatListView.setX((iArr[0] + AndroidUtilities.dp(7.0f)) - this.chatListView.getMeasuredWidth());
        boolean z = this.layoutDone;
        RecyclerListView recyclerListView = this.chatListView;
        if (z) {
            recyclerListView.animate().translationY(((iArr[1] + this.sendButton.getHeight()) - this.chatListView.getMeasuredHeight()) - this.chatListView.getTop()).setInterpolator(ChatListItemAnimator.DEFAULT_INTERPOLATOR).setDuration(250L).start();
        } else {
            recyclerListView.setY((iArr[1] + this.sendButton.getHeight()) - this.chatListView.getMeasuredHeight());
        }
        View view2 = this.optionsView;
        if (view2 != null) {
            view2.setX((iArr[0] + AndroidUtilities.dp(7.0f)) - this.optionsView.getMeasuredWidth());
            this.optionsView.setY(iArr[1] + (this.messageObjects.isEmpty() ? -AndroidUtilities.dp(6.0f) : this.sendButton.getHeight()));
        }
        FrameLayout frameLayout = this.effectSelectorContainer;
        if (frameLayout != null) {
            frameLayout.setX(Math.max(0, ((iArr[0] + this.sendButton.width()) - this.effectSelectorContainer.getMeasuredWidth()) - AndroidUtilities.dp(6.0f)));
            RectF rectF = this.cameraRect;
            if (rectF != null) {
                FrameLayout frameLayout2 = this.effectSelectorContainer;
                float fMax = Math.max(this.insets.top, rectF.top - frameLayout2.getMeasuredWidth());
                this.effectSelectorContainerY = fMax;
                frameLayout2.setY(fMax);
                ReactionsContainerLayout reactionsContainerLayout = this.effectSelector;
                if (reactionsContainerLayout != null) {
                    reactionsContainerLayout.setY(Math.max(this.insets.top, (this.cameraRect.top - AndroidUtilities.dp(24.0f)) - this.effectSelector.getMeasuredHeight()));
                    return;
                }
                return;
            }
            float height = (iArr[1] + this.sendButton.getHeight()) - this.chatListView.getMeasuredHeight();
            FrameLayout frameLayout3 = this.effectSelectorContainer;
            float fMax2 = Math.max(this.insets.top, height - frameLayout3.getMeasuredHeight()) + AndroidUtilities.dp(24.0f);
            this.effectSelectorContainerY = fMax2;
            frameLayout3.setY(fMax2);
            ReactionsContainerLayout reactionsContainerLayout2 = this.effectSelector;
            if (reactionsContainerLayout2 != null) {
                reactionsContainerLayout2.setY(Math.max(0.0f, (height - reactionsContainerLayout2.getMeasuredHeight()) - this.effectSelectorContainerY));
            }
        }
    }

    public void makeFocusable() {
        if (this.focusable) {
            return;
        }
        try {
            Window window = getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.flags &= -131073;
            window.setAttributes(attributes);
            this.focusable = true;
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    @Override // android.app.Dialog
    public boolean isShowing() {
        return !this.dismissing;
    }

    @Override // android.app.Dialog
    public void show() {
        if (AndroidUtilities.isSafeToShow(getContext())) {
            SpoilerEffect2.pause(0, true);
            super.show();
            prepareBlur(null);
            FrameLayout frameLayout = this.effectsView;
            if (frameLayout != null) {
                frameLayout.bringToFront();
            }
            animateOpenTo(true, null);
        }
    }

    public static class VisiblePart {
        private int blurredViewBottomOffset;
        private int blurredViewTopOffset;
        private int childPosition;
        public int parentHeight;
        public int parentWidth;
        private int visibleHeight;
        private int visibleParent;
        private float visibleParentOffset;
        private float visibleTop;

        private VisiblePart() {
        }

        public static VisiblePart of(ChatMessageCell chatMessageCell) {
            VisiblePart visiblePart = new VisiblePart();
            visiblePart.childPosition = chatMessageCell.childPosition;
            visiblePart.visibleHeight = chatMessageCell.visibleHeight;
            visiblePart.visibleParent = chatMessageCell.visibleParent;
            visiblePart.parentWidth = chatMessageCell.parentWidth;
            visiblePart.parentHeight = chatMessageCell.parentHeight;
            visiblePart.visibleTop = chatMessageCell.visibleTop;
            visiblePart.visibleParentOffset = chatMessageCell.visibleParentOffset;
            visiblePart.blurredViewTopOffset = chatMessageCell.blurredViewTopOffset;
            visiblePart.blurredViewBottomOffset = chatMessageCell.blurredViewBottomOffset;
            return visiblePart;
        }
    }

    public void dismissInto(ChatMessageCell chatMessageCell, float f, float f2) {
        if (this.dismissing) {
            return;
        }
        this.sent = true;
        this.dismissing = true;
        ChatActivityEnterView.SendButton sendButton = this.sendButton;
        if (sendButton != null) {
            sendButton.invalidate();
        }
        ChatActivityEnterView.SendButton sendButton2 = this.anchorSendButton;
        if (sendButton2 != null) {
            sendButton2.invalidate();
        }
        if (this.mainMessageCell != null && chatMessageCell != null) {
            this.destCell = chatMessageCell;
            chatMessageCell.setVisibility(4);
            this.destClipTop = f;
            this.destClipBottom = f2;
            ChatMessageCell chatMessageCell2 = this.mainMessageCell;
            ChatMessageCell chatMessageCell3 = this.destCell;
            chatMessageCell2.isChat = chatMessageCell3.isChat;
            chatMessageCell2.isThreadChat = chatMessageCell3.isThreadChat;
            chatMessageCell2.isSavedChat = chatMessageCell3.isSavedChat;
            chatMessageCell2.isBot = chatMessageCell3.isBot;
            chatMessageCell2.isForum = chatMessageCell3.isForum;
            chatMessageCell2.isForumGeneral = chatMessageCell3.isForumGeneral;
            chatMessageCell2.setMessageObject(chatMessageCell.getMessageObject(), null, chatMessageCell.isPinnedBottom(), chatMessageCell.isPinnedTop(), chatMessageCell.isFirstInChat());
            ChatMessageCell.TransitionParams transitionParams = this.mainMessageCell.getTransitionParams();
            transitionParams.animateChange = this.mainMessageCell.getTransitionParams().animateChange();
            transitionParams.animateChangeProgress = 0.0f;
            boolean z = this.mainMessageCell.getTransitionParams().lastDrawingBackgroundRect.left != this.mainMessageCell.getBackgroundDrawableLeft();
            if (z || transitionParams.lastDrawingBackgroundRect.top != this.mainMessageCell.getBackgroundDrawableTop() || transitionParams.lastDrawingBackgroundRect.bottom != this.mainMessageCell.getBackgroundDrawableBottom()) {
                this.cellDelta.bottom = -(this.mainMessageCell.getBackgroundDrawableBottom() - transitionParams.lastDrawingBackgroundRect.bottom);
                this.cellDelta.top = -(this.mainMessageCell.getBackgroundDrawableTop() - transitionParams.lastDrawingBackgroundRect.top);
                boolean zIsOutOwner = chatMessageCell.getMessageObject().isOutOwner();
                Rect rect = this.cellDelta;
                if (zIsOutOwner) {
                    rect.left = -(this.mainMessageCell.getBackgroundDrawableLeft() - transitionParams.lastDrawingBackgroundRect.left);
                    this.cellDelta.right = 0;
                } else {
                    rect.left = 0;
                    rect.right = this.mainMessageCell.getBackgroundDrawableRight() - transitionParams.lastDrawingBackgroundRect.right;
                }
                transitionParams.animateBackgroundBoundsInner = true;
                transitionParams.animateBackgroundWidth = z;
            }
            this.fromPart = VisiblePart.of(this.mainMessageCell);
        }
        animateOpenTo(false, new Runnable() { // from class: org.telegram.ui.MessageSendPreview$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$dismissInto$8();
            }
        });
        this.windowView.invalidate();
        afterDismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismissInto$8() {
        SpoilerEffect2.pause(0, false);
        SpoilerEffect2 spoilerEffect2 = this.spoilerEffect2;
        if (spoilerEffect2 != null) {
            spoilerEffect2.detach(this.windowView);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.MessageSendPreview$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$dismissInto$7();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismissInto$7() {
        super.dismiss();
    }

    public void dismiss(boolean z) {
        this.sent = z;
        dismiss();
    }

    public void dismissInstant() {
        if (this.dismissing) {
            return;
        }
        this.dismissing = true;
        SpoilerEffect2.pause(0, false);
        SpoilerEffect2 spoilerEffect2 = this.spoilerEffect2;
        if (spoilerEffect2 != null) {
            spoilerEffect2.detach(this.windowView);
        }
        super.dismiss();
        afterDismiss();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.dismissing) {
            return;
        }
        this.dismissing = true;
        ChatActivityEnterView.SendButton sendButton = this.sendButton;
        if (sendButton != null) {
            sendButton.invalidate();
        }
        ChatActivityEnterView.SendButton sendButton2 = this.anchorSendButton;
        if (sendButton2 != null) {
            sendButton2.invalidate();
        }
        animateOpenTo(false, new Runnable() { // from class: org.telegram.ui.MessageSendPreview$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$dismiss$10();
            }
        });
        this.windowView.invalidate();
        afterDismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$10() {
        SpoilerEffect2.pause(0, false);
        SpoilerEffect2 spoilerEffect2 = this.spoilerEffect2;
        if (spoilerEffect2 != null) {
            spoilerEffect2.detach(this.windowView);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.MessageSendPreview$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$dismiss$9();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$9() {
        super.dismiss();
    }

    private void afterDismiss() {
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.availableEffectsUpdate);
    }

    private void animateOpenTo(final boolean z, final Runnable runnable) {
        View view;
        ValueAnimator valueAnimator = this.openAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        final boolean z2 = z && (view = this.optionsView) != null && (view instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout);
        if (z2) {
            ActionBarPopupWindow.startAnimation((ActionBarPopupWindow.ActionBarPopupWindowLayout) this.optionsView);
        }
        if (!z) {
            hideEffectSelector();
        }
        this.openInProgress = true;
        this.opening = z;
        this.closing = !z;
        this.chatListView.invalidate();
        this.firstOpenFrame = true;
        this.firstOpenFrame2 = true;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.openProgress, z ? 1.0f : 0.0f);
        this.openAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.MessageSendPreview$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$animateOpenTo$11(z2, valueAnimator2);
            }
        });
        this.openAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.MessageSendPreview.16
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                MessageSendPreview.this.openProgress = z ? 1.0f : 0.0f;
                MessageSendPreview.this.firstOpenFrame = false;
                MessageSendPreview.this.firstOpenFrame2 = false;
                MessageSendPreview.this.effectsView.setAlpha(MessageSendPreview.this.openProgress);
                if (z) {
                    MessageSendPreview.this.openInProgress = false;
                    MessageSendPreview.this.opening = false;
                    MessageSendPreview.this.closing = false;
                }
                if (MessageSendPreview.this.editText != null) {
                    MessageSendPreview.this.editText.setAlpha(1.0f);
                }
                if (MessageSendPreview.this.destCell != null) {
                    MessageSendPreview.this.destCell.setVisibility(0);
                }
                if (MessageSendPreview.this.anchorSendButton != null && !MessageSendPreview.this.sent) {
                    MessageSendPreview.this.anchorSendButton.setAlpha(1.0f);
                }
                if (!z && MessageSendPreview.this.sendButton != null) {
                    MessageSendPreview.this.sendButton.setAlpha(0.0f);
                }
                if (!z2 && MessageSendPreview.this.optionsView != null) {
                    MessageSendPreview.this.optionsView.setAlpha(MessageSendPreview.this.openProgress);
                }
                MessageSendPreview.this.chatListView.invalidate();
                MessageSendPreview.this.chatListView.setAlpha(MessageSendPreview.this.openProgress);
                MessageSendPreview.this.windowView.invalidate();
                MessageSendPreview.this.containerView.invalidate();
                if (runnable != null) {
                    if (!z && MessageSendPreview.this.destCell != null && MessageSendPreview.this.destCell.isAttachedToWindow()) {
                        MessageSendPreview.this.destCell.post(runnable);
                    } else if (!z && MessageSendPreview.this.editText != null && MessageSendPreview.this.editText.isAttachedToWindow()) {
                        MessageSendPreview.this.editText.post(runnable);
                    } else {
                        AndroidUtilities.runOnUIThread(runnable);
                    }
                }
            }
        });
        this.openAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.openAnimator.setDuration(350L);
        this.openAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateOpenTo$11(boolean z, ValueAnimator valueAnimator) {
        View view;
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.openProgress = fFloatValue;
        this.effectsView.setAlpha(fFloatValue);
        this.chatListView.setAlpha(this.openProgress);
        if (!z && (view = this.optionsView) != null) {
            view.setAlpha(this.openProgress);
        }
        this.windowView.invalidate();
        this.containerView.invalidate();
    }

    private void prepareBlur(final View view) {
        if (view != null) {
            view.setVisibility(4);
        }
        final float alpha = this.anchorSendButton.getAlpha();
        ChatActivityEnterView.SendButton sendButton = this.anchorSendButton;
        if (sendButton != null) {
            sendButton.setAlpha(0.0f);
        }
        ScrimOptions.makeGlobalBlurBitmaps(new Utilities.Callback2() { // from class: org.telegram.ui.MessageSendPreview$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$prepareBlur$12(alpha, view, (Bitmap) obj, (Bitmap) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareBlur$12(float f, View view, Bitmap bitmap, Bitmap bitmap2) {
        ChatActivityEnterView.SendButton sendButton = this.anchorSendButton;
        if (sendButton != null) {
            sendButton.setAlpha(f);
        }
        if (view != null) {
            view.setVisibility(0);
        }
        this.blurBitmap = bitmap;
        Paint paint = new Paint(1);
        this.blurBitmapPaint = paint;
        Bitmap bitmap3 = this.blurBitmap;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap3, tileMode, tileMode);
        this.blurBitmapShader = bitmapShader;
        paint.setShader(bitmapShader);
        this.blurMatrix = new Matrix();
        this.iBlur3SourceBitmap.setBitmap(bitmap2);
        checkBitmapMatrix();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.availableEffectsUpdate && MessagesController.getInstance(this.currentAccount).hasAvailableEffects()) {
            showEffectSelector();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MessageObject.GroupedMessages getValidGroupedMessage(MessageObject messageObject) {
        if (messageObject.getGroupId() == 0) {
            return null;
        }
        MessageObject.GroupedMessages groupedMessages = this.groupedMessagesMap.get(messageObject.getGroupId());
        if (groupedMessages == null || (groupedMessages.messages.size() > 1 && groupedMessages.getPosition(messageObject) != null)) {
            return groupedMessages;
        }
        return null;
    }

    public void scrollTo(boolean z) {
        int i;
        RecyclerListView recyclerListView = this.chatListView;
        if (recyclerListView == null || recyclerListView.getAdapter() == null || this.chatLayoutManager == null) {
            return;
        }
        int itemCount = this.chatListView.getAdapter().getItemCount();
        if (z) {
            i = itemCount > 10 ? itemCount % 10 : 0;
        } else {
            i = itemCount - 1;
        }
        this.chatLayoutManager.scrollToPositionWithOffset(i, AndroidUtilities.dp(12.0f), z);
        this.scrolledToLast = z;
    }

    public void changeMessage(MessageObject messageObject) {
        MessageObject.GroupedMessages validGroupedMessage = getValidGroupedMessage(messageObject);
        if (validGroupedMessage != null) {
            validGroupedMessage.calculate();
            ArrayList<MessageObject> arrayList = validGroupedMessage.messages;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                MessageObject messageObject2 = arrayList.get(i);
                i++;
                changeMessageInternal(messageObject2);
            }
            return;
        }
        changeMessageInternal(messageObject);
    }

    public void changeMessageInternal(MessageObject messageObject) {
        ChatMessageCell chatMessageCell;
        if (this.chatListView == null) {
            return;
        }
        int i = 0;
        while (true) {
            if (i >= this.chatListView.getChildCount()) {
                chatMessageCell = null;
                break;
            }
            View childAt = this.chatListView.getChildAt(i);
            if (childAt instanceof ChatMessageCell) {
                chatMessageCell = (ChatMessageCell) childAt;
                if (chatMessageCell.getMessageObject() == messageObject) {
                    break;
                }
            }
            i++;
        }
        ChatMessageCell chatMessageCell2 = chatMessageCell;
        int size = -1;
        for (int i2 = 0; i2 < this.messageObjects.size(); i2++) {
            if (this.messageObjects.get(i2) == messageObject) {
                size = (this.messageObjects.size() - 1) - i2;
            }
        }
        if (chatMessageCell2 == null) {
            this.chatListView.getAdapter().notifyItemChanged(size);
            return;
        }
        messageObject.forceUpdate = true;
        chatMessageCell2.setMessageObject(messageObject, chatMessageCell2.getCurrentMessagesGroup(), chatMessageCell2.isPinnedBottom(), chatMessageCell2.isPinnedTop(), chatMessageCell2.isFirstInChat());
        this.chatListView.getAdapter().notifyItemChanged(size);
    }

    private int getWidthForMessage(MessageObject messageObject) {
        if (getContext() == null) {
            return 0;
        }
        if (this.dummyMessageCell == null) {
            this.dummyMessageCell = new ChatMessageCell(getContext(), this.currentAccount, true, null, this.resourcesProvider);
        }
        ChatMessageCell chatMessageCell = this.dummyMessageCell;
        chatMessageCell.isChat = false;
        chatMessageCell.isSavedChat = false;
        chatMessageCell.isSavedPreviewChat = false;
        chatMessageCell.isBot = false;
        chatMessageCell.isMegagroup = false;
        return chatMessageCell.computeWidth(messageObject, this.groupedMessagesMap.get(messageObject.getGroupId()));
    }

    public void setStars(long j) {
        TLRPC.Message message;
        TLRPC.MessageMedia messageMedia;
        this.buttonText = j <= 0 ? null : new Text(StarsIntroActivity.replaceStarsWithPlain(LocaleController.formatPluralStringComma("UnlockPaidContent", (int) j), 0.7f), 14.0f, AndroidUtilities.bold());
        if (this.buttonBgPaint == null) {
            Paint paint = new Paint(1);
            this.buttonBgPaint = paint;
            paint.setColor(TLObject.FLAG_30);
        }
        this.chatListView.invalidate();
        for (int i = 0; i < this.messageObjects.size(); i++) {
            MessageObject messageObject = this.messageObjects.get(i);
            if (messageObject != null && (message = messageObject.messageOwner) != null && (messageMedia = message.media) != null) {
                messageMedia.spoiler = j > 0;
            }
        }
        this.adapter.notifyDataSetChanged();
    }

    public void drawStarsPrice(Canvas canvas, float f, float f2, float f3, float f4) {
        if (this.buttonText == null || this.buttonBgPaint == null) {
            return;
        }
        float f5 = (f + f3) / 2.0f;
        float f6 = (f2 + f4) / 2.0f;
        float fDp = AndroidUtilities.dp(28.0f) + this.buttonText.getCurrentWidth();
        float fDp2 = AndroidUtilities.dp(32.0f);
        RectF rectF = AndroidUtilities.rectTmp;
        float f7 = fDp / 2.0f;
        float f8 = f5 - f7;
        float f9 = fDp2 / 2.0f;
        rectF.set(f8, f6 - f9, f5 + f7, f6 + f9);
        canvas.save();
        canvas.drawRoundRect(rectF, f9, f9, this.buttonBgPaint);
        this.buttonText.draw(canvas, f8 + AndroidUtilities.dp(14.0f), f6, -1, 1.0f);
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkBitmapMatrix() {
        Blur3Utils.checkBitmapSourceMatrixScale(this.iBlur3SourceBitmap, this.windowView);
        View view = this.optionsView;
        if (view != null) {
            view.invalidate();
        }
    }
}
