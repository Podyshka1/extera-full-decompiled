package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.URLSpan;
import android.util.LongSparseArray;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.ChatListItemAnimator;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.GridLayoutManagerFixed;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.forward.ForwardContext;
import com.google.android.exoplayer2.util.Consumer;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotInlineKeyboard;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatMessageSharedResources;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagePreviewParams;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p029ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.ChatMessageCell;
import org.telegram.p029ui.Cells.TextSelectionHelper;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.ViewPagerFixed;
import org.telegram.p029ui.PinchToZoomHelper;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public abstract class MessagePreviewView extends FrameLayout implements ForwardContext {
    Runnable changeBoundsRunnable;
    final ChatActivity chatActivity;
    private final int currentAccount;
    TLRPC.Chat currentChat;
    TLRPC.User currentUser;
    private final ArrayList drawingGroups;
    private final ForwardContext.ForwardParams forwardParams;
    boolean isLandscapeMode;
    final MessagePreviewParams messagePreviewParams;
    ValueAnimator offsetsAnimator;
    private final ResourcesDelegate resourcesProvider;
    boolean returnSendersNames;
    TLRPC.Peer sendAsPeer;
    final boolean showOutdatedQuote;
    boolean showing;
    TabsView tabsView;
    ViewPagerFixed viewPager;

    /* JADX INFO: loaded from: classes7.dex */
    public interface ResourcesDelegate extends Theme.ResourcesProvider {
        Drawable getWallpaperDrawable();

        boolean isWallpaperMotion();
    }

    private void updateColors() {
    }

    protected void didSendPressed() {
    }

    @Override // com.exteragram.messenger.forward.ForwardContext
    public /* synthetic */ boolean isForwardNoQuote() {
        return getForwardParams().noQuote;
    }

    protected abstract void onDismiss(boolean z);

    protected abstract void onFullDismiss(boolean z);

    protected abstract void onQuoteSelectedPart();

    protected void removeForward() {
    }

    protected abstract void removeLink();

    protected abstract void removeQuote();

    protected abstract void removeReply();

    protected abstract void selectAnotherChat(boolean z);

    protected abstract void viewInChat();

    public void setSendAsPeer(TLRPC.Peer peer) {
        this.sendAsPeer = peer;
        int i = 0;
        while (true) {
            View[] viewArr = this.viewPager.viewPages;
            if (i >= viewArr.length) {
                return;
            }
            View view = viewArr[i];
            if (view != null && ((Page) view).currentTab == 1) {
                ((Page) view).updateMessages();
            }
            i++;
        }
    }

    @Override // com.exteragram.messenger.forward.ForwardContext
    public ForwardContext.ForwardParams getForwardParams() {
        return this.forwardParams;
    }

    @Override // com.exteragram.messenger.forward.ForwardContext
    public void setForwardParams(boolean z) {
        getForwardParams().noQuote = z;
        MessagePreviewParams messagePreviewParams = this.messagePreviewParams;
        if (messagePreviewParams != null) {
            messagePreviewParams.hideForwardSendersName = z;
        }
        ChatActivity chatActivity = this.chatActivity;
        if (chatActivity != null) {
            chatActivity.setForwardParams(z);
        }
    }

    public ArrayList<MessageObject> getForwardingMessages() {
        MessagePreviewParams.Messages messages = this.messagePreviewParams.forwardMessages;
        if (messages != null) {
            return messages.messages;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes7.dex */
    class Page extends FrameLayout {
        ActionBar actionBar;
        Adapter adapter;
        private int buttonsHeight;
        ToggleButton changePositionBtn;
        ToggleButton changeSizeBtn;
        FrameLayout changeSizeBtnContainer;
        GridLayoutManagerFixed chatLayoutManager;
        RecyclerListView chatListView;
        SizeNotifierFrameLayout chatPreviewContainer;
        int chatTopOffset;
        ActionBarMenuSubItem clearQuoteButton;
        public int currentTab;
        int currentTopOffset;
        float currentYOffset;
        ActionBarMenuSubItem deleteReplyButton;
        private boolean firstAttach;
        private boolean firstLayout;
        ChatListItemAnimator itemAnimator;
        int lastSize;
        ActionBarPopupWindow.ActionBarPopupWindowLayout menu;
        int menuBack;
        MessagePreviewParams.Messages messages;
        ActionBarMenuSubItem quoteAnotherChatButton;
        ActionBarMenuSubItem quoteButton;
        private AnimatorSet quoteSwitcher;
        Rect rect;
        ActionBarMenuSubItem replyAnotherChatButton;
        int scrollToOffset;
        ChatMessageSharedResources sharedResources;
        TextSelectionHelper.ChatListTextSelectionHelper textSelectionHelper;
        View textSelectionOverlay;
        boolean toQuote;
        boolean updateAfterAnimations;
        private boolean updateScroll;
        ToggleButton videoChangeSizeBtn;
        float yOffset;

        /* JADX INFO: Access modifiers changed from: private */
        public void switchToQuote(final boolean z, boolean z2) {
            if (MessagePreviewView.this.showOutdatedQuote) {
                z = false;
            }
            if (z2 && this.toQuote == z) {
                return;
            }
            this.toQuote = z;
            AnimatorSet animatorSet = this.quoteSwitcher;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.quoteSwitcher = null;
            }
            if (z2) {
                this.quoteSwitcher = new AnimatorSet();
                ArrayList arrayList = new ArrayList();
                ActionBarMenuSubItem actionBarMenuSubItem = this.quoteButton;
                Property property = View.ALPHA;
                if (actionBarMenuSubItem != null) {
                    actionBarMenuSubItem.setVisibility(0);
                    arrayList.add(ObjectAnimator.ofFloat(this.quoteButton, (Property<ActionBarMenuSubItem, Float>) property, !z ? 1.0f : 0.0f));
                }
                ActionBarMenuSubItem actionBarMenuSubItem2 = this.clearQuoteButton;
                if (actionBarMenuSubItem2 != null) {
                    actionBarMenuSubItem2.setVisibility(0);
                    arrayList.add(ObjectAnimator.ofFloat(this.clearQuoteButton, (Property<ActionBarMenuSubItem, Float>) property, z ? 1.0f : 0.0f));
                }
                ActionBarMenuSubItem actionBarMenuSubItem3 = this.replyAnotherChatButton;
                if (actionBarMenuSubItem3 != null) {
                    actionBarMenuSubItem3.setVisibility(0);
                    arrayList.add(ObjectAnimator.ofFloat(this.replyAnotherChatButton, (Property<ActionBarMenuSubItem, Float>) property, !z ? 1.0f : 0.0f));
                }
                ActionBarMenuSubItem actionBarMenuSubItem4 = this.quoteAnotherChatButton;
                if (actionBarMenuSubItem4 != null) {
                    actionBarMenuSubItem4.setVisibility(0);
                    arrayList.add(ObjectAnimator.ofFloat(this.quoteAnotherChatButton, (Property<ActionBarMenuSubItem, Float>) property, z ? 1.0f : 0.0f));
                }
                this.quoteSwitcher.playTogether(arrayList);
                this.quoteSwitcher.setDuration(360L);
                this.quoteSwitcher.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.quoteSwitcher.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        Page.this.quoteSwitcher = null;
                        Page.this.switchToQuote(z, false);
                    }
                });
                this.quoteSwitcher.start();
                return;
            }
            ActionBarMenuSubItem actionBarMenuSubItem5 = this.quoteButton;
            if (actionBarMenuSubItem5 != null) {
                actionBarMenuSubItem5.setAlpha(!z ? 1.0f : 0.0f);
                this.quoteButton.setVisibility(!z ? 0 : 4);
            }
            ActionBarMenuSubItem actionBarMenuSubItem6 = this.clearQuoteButton;
            if (actionBarMenuSubItem6 != null) {
                actionBarMenuSubItem6.setAlpha(z ? 1.0f : 0.0f);
                this.clearQuoteButton.setVisibility(z ? 0 : 4);
            }
            ActionBarMenuSubItem actionBarMenuSubItem7 = this.replyAnotherChatButton;
            if (actionBarMenuSubItem7 != null) {
                actionBarMenuSubItem7.setAlpha(!z ? 1.0f : 0.0f);
                this.replyAnotherChatButton.setVisibility(!z ? 0 : 4);
            }
            ActionBarMenuSubItem actionBarMenuSubItem8 = this.quoteAnotherChatButton;
            if (actionBarMenuSubItem8 != null) {
                actionBarMenuSubItem8.setAlpha(z ? 1.0f : 0.0f);
                this.quoteAnotherChatButton.setVisibility(z ? 0 : 4);
            }
        }

        public boolean isReplyMessageCell(ChatMessageCell chatMessageCell) {
            MessageObject replyMessage;
            if (chatMessageCell == null || chatMessageCell.getMessageObject() == null || (replyMessage = getReplyMessage()) == null) {
                return false;
            }
            return chatMessageCell.getMessageObject() == replyMessage || chatMessageCell.getMessageObject().getId() == replyMessage.getId();
        }

        public ChatMessageCell getReplyMessageCell() {
            MessageObject replyMessage = getReplyMessage();
            if (replyMessage == null) {
                return null;
            }
            for (int i = 0; i < this.chatListView.getChildCount(); i++) {
                ChatMessageCell chatMessageCell = (ChatMessageCell) this.chatListView.getChildAt(i);
                if (chatMessageCell.getMessageObject() != null && (chatMessageCell.getMessageObject() == replyMessage || chatMessageCell.getMessageObject().getId() == replyMessage.getId())) {
                    return chatMessageCell;
                }
            }
            return null;
        }

        public MessageObject getReplyMessage() {
            return getReplyMessage(null);
        }

        public MessageObject getReplyMessage(MessageObject messageObject) {
            MessageObject.GroupedMessages groupedMessagesValueAt;
            MessagePreviewParams.Messages messages = MessagePreviewView.this.messagePreviewParams.replyMessage;
            if (messages == null) {
                return null;
            }
            LongSparseArray<MessageObject.GroupedMessages> longSparseArray = messages.groupedMessagesMap;
            if (longSparseArray != null && longSparseArray.size() > 0 && (groupedMessagesValueAt = MessagePreviewView.this.messagePreviewParams.replyMessage.groupedMessagesMap.valueAt(0)) != null) {
                if (groupedMessagesValueAt.isDocuments) {
                    if (messageObject != null) {
                        return messageObject;
                    }
                    ChatActivity.ReplyQuote replyQuote = MessagePreviewView.this.messagePreviewParams.quote;
                    if (replyQuote != null) {
                        return replyQuote.message;
                    }
                }
                return groupedMessagesValueAt.captionMessage;
            }
            return MessagePreviewView.this.messagePreviewParams.replyMessage.messages.get(0);
        }

        /* JADX WARN: Removed duplicated region for block: B:63:0x0534  */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Page(Context context, int i) {
            final Page page;
            MessagePreviewView messagePreviewView;
            Context context2;
            Context context3;
            final ToggleButton toggleButton;
            MessagePreviewParams messagePreviewParams;
            MessagePreviewParams.Messages messages;
            MessagePreviewView messagePreviewView2;
            int i2;
            int i3;
            ViewGroup viewGroup;
            super(context);
            this.firstLayout = true;
            this.scrollToOffset = -1;
            this.rect = new Rect();
            this.updateScroll = false;
            this.firstAttach = true;
            this.sharedResources = new ChatMessageSharedResources(context);
            this.currentTab = i;
            setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return this.f$0.lambda$new$0(view, motionEvent);
                }
            });
            SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.Components.MessagePreviewView.Page.2
                @Override // org.telegram.p029ui.Components.SizeNotifierFrameLayout
                protected Drawable getNewDrawable() {
                    Drawable wallpaperDrawable = MessagePreviewView.this.resourcesProvider.getWallpaperDrawable();
                    return wallpaperDrawable != null ? wallpaperDrawable : super.getNewDrawable();
                }

                @Override // android.view.ViewGroup, android.view.View
                public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                    if (motionEvent.getY() < Page.this.currentTopOffset) {
                        return false;
                    }
                    return super.dispatchTouchEvent(motionEvent);
                }
            };
            this.chatPreviewContainer = sizeNotifierFrameLayout;
            sizeNotifierFrameLayout.setBackgroundImage(MessagePreviewView.this.resourcesProvider.getWallpaperDrawable(), MessagePreviewView.this.resourcesProvider.isWallpaperMotion());
            this.chatPreviewContainer.setOccupyStatusBar(false);
            this.chatPreviewContainer.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.3
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setRoundRect(0, Page.this.currentTopOffset + 1, view.getMeasuredWidth(), view.getMeasuredHeight(), AndroidUtilities.m1124dp(8.0f));
                }
            });
            this.chatPreviewContainer.setClipToOutline(true);
            this.chatPreviewContainer.setElevation(AndroidUtilities.m1124dp(4.0f));
            ActionBar actionBar = MessagePreviewView.this.new ActionBar(context, MessagePreviewView.this.resourcesProvider);
            this.actionBar = actionBar;
            actionBar.setBackgroundColor(MessagePreviewView.this.getThemedColor(Theme.key_actionBarDefault));
            TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper = new TextSelectionHelper.ChatListTextSelectionHelper() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.4
                {
                    this.resourcesProvider = MessagePreviewView.this.resourcesProvider;
                }

                @Override // org.telegram.p029ui.Cells.TextSelectionHelper
                protected boolean canCopy() {
                    MessagePreviewParams messagePreviewParams2 = MessagePreviewView.this.messagePreviewParams;
                    return messagePreviewParams2 == null || !messagePreviewParams2.noforwards;
                }

                @Override // org.telegram.p029ui.Cells.TextSelectionHelper
                protected Theme.ResourcesProvider getResourcesProvider() {
                    return this.resourcesProvider;
                }

                @Override // org.telegram.ui.Cells.TextSelectionHelper.ChatListTextSelectionHelper, org.telegram.p029ui.Cells.TextSelectionHelper
                public void invalidate() {
                    super.invalidate();
                    RecyclerListView recyclerListView = Page.this.chatListView;
                    if (recyclerListView != null) {
                        recyclerListView.invalidate();
                    }
                }

                @Override // org.telegram.p029ui.Cells.TextSelectionHelper
                protected boolean canShowQuote() {
                    Page page2 = Page.this;
                    return page2.currentTab == 0 && !MessagePreviewView.this.messagePreviewParams.isSecret;
                }

                @Override // org.telegram.p029ui.Cells.TextSelectionHelper
                protected void onQuoteClick(MessageObject messageObject, int i4, int i5, CharSequence charSequence) {
                    ChatActivity.ReplyQuote replyQuote;
                    MessageObject messageObject2;
                    Page page2 = Page.this;
                    TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper2 = page2.textSelectionHelper;
                    if (chatListTextSelectionHelper2.selectionEnd - chatListTextSelectionHelper2.selectionStart > MessagesController.getInstance(MessagePreviewView.this.currentAccount).quoteLengthMax) {
                        Page.this.showQuoteLengthError();
                        return;
                    }
                    Page page3 = Page.this;
                    MessagePreviewParams messagePreviewParams2 = MessagePreviewView.this.messagePreviewParams;
                    TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper3 = page3.textSelectionHelper;
                    messagePreviewParams2.quoteStart = chatListTextSelectionHelper3.selectionStart;
                    messagePreviewParams2.quoteEnd = chatListTextSelectionHelper3.selectionEnd;
                    MessageObject replyMessage = page3.getReplyMessage(messageObject);
                    if (replyMessage != null && ((replyQuote = MessagePreviewView.this.messagePreviewParams.quote) == null || (messageObject2 = replyQuote.message) == null || messageObject2.getId() != replyMessage.getId())) {
                        MessagePreviewView.this.messagePreviewParams.quote = ChatActivity.ReplyQuote.from(replyMessage, i4, i5);
                    }
                    MessagePreviewView.this.onQuoteSelectedPart();
                    MessagePreviewView.this.dismiss(true);
                }

                @Override // org.telegram.p029ui.Cells.TextSelectionHelper
                public boolean isSelected(MessageObject messageObject) {
                    Page page2 = Page.this;
                    return page2.currentTab == 0 && !MessagePreviewView.this.messagePreviewParams.isSecret && isInSelectionMode();
                }
            };
            this.textSelectionHelper = chatListTextSelectionHelper;
            chatListTextSelectionHelper.setCallback(new TextSelectionHelper.Callback() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.5
                @Override // org.telegram.ui.Cells.TextSelectionHelper.Callback
                public void onStateChanged(boolean z) {
                    Page page2 = Page.this;
                    if (MessagePreviewView.this.showing) {
                        if (!z && page2.menu.getSwipeBack().isForegroundOpen()) {
                            Page.this.menu.getSwipeBack().closeForeground(true);
                            return;
                        }
                        if (z) {
                            Page page3 = Page.this;
                            TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper2 = page3.textSelectionHelper;
                            if (chatListTextSelectionHelper2.selectionEnd - chatListTextSelectionHelper2.selectionStart > MessagesController.getInstance(MessagePreviewView.this.currentAccount).quoteLengthMax) {
                                Page.this.showQuoteLengthError();
                                return;
                            }
                            MessageObject replyMessage = Page.this.getReplyMessage(Page.this.textSelectionHelper.getSelectedCell() != null ? ((ChatMessageCell) Page.this.textSelectionHelper.getSelectedCell()).getMessageObject() : null);
                            Page page4 = Page.this;
                            MessagePreviewParams messagePreviewParams2 = MessagePreviewView.this.messagePreviewParams;
                            if (messagePreviewParams2.quote == null) {
                                TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper3 = page4.textSelectionHelper;
                                int i4 = chatListTextSelectionHelper3.selectionStart;
                                messagePreviewParams2.quoteStart = i4;
                                int i5 = chatListTextSelectionHelper3.selectionEnd;
                                messagePreviewParams2.quoteEnd = i5;
                                messagePreviewParams2.quote = ChatActivity.ReplyQuote.from(replyMessage, i4, i5);
                                Page.this.menu.getSwipeBack().openForeground(Page.this.menuBack);
                            }
                        }
                    }
                }
            });
            RecyclerListView recyclerListView = new RecyclerListView(context, MessagePreviewView.this.resourcesProvider) { // from class: org.telegram.ui.Components.MessagePreviewView.Page.6
                @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
                public boolean drawChild(Canvas canvas, View view, long j) {
                    if (!(view instanceof ChatMessageCell)) {
                        return true;
                    }
                    ChatMessageCell chatMessageCell = (ChatMessageCell) view;
                    boolean zDrawChild = super.drawChild(canvas, view, j);
                    chatMessageCell.drawCheckBox(canvas);
                    canvas.save();
                    canvas.translate(chatMessageCell.getX(), chatMessageCell.getY());
                    canvas.save();
                    canvas.scale(chatMessageCell.getScaleX(), chatMessageCell.getScaleY(), chatMessageCell.getPivotX(), chatMessageCell.getPivotY());
                    chatMessageCell.drawContent(canvas, true);
                    chatMessageCell.layoutTextXY(true);
                    chatMessageCell.drawMessageText(canvas);
                    if (chatMessageCell.getCurrentMessagesGroup() == null || ((chatMessageCell.getCurrentPosition() != null && (((chatMessageCell.getCurrentPosition().flags & chatMessageCell.captionFlag()) != 0 && (chatMessageCell.getCurrentPosition().flags & 1) != 0) || (chatMessageCell.getCurrentMessagesGroup() != null && chatMessageCell.getCurrentMessagesGroup().isDocuments))) || chatMessageCell.getTransitionParams().animateBackgroundBoundsInner)) {
                        chatMessageCell.drawCaptionLayout(canvas, false, chatMessageCell.getAlpha());
                        chatMessageCell.drawReactionsLayout(canvas, chatMessageCell.getAlpha(), null);
                        chatMessageCell.drawCommentLayout(canvas, chatMessageCell.getAlpha());
                    }
                    if (chatMessageCell.getCurrentPosition() == null || chatMessageCell.getTransitionParams().animateBackgroundBoundsInner) {
                        chatMessageCell.drawNamesLayout(canvas, chatMessageCell.getAlpha());
                    }
                    chatMessageCell.drawOverlays(canvas);
                    if (chatMessageCell.needDrawTime()) {
                        chatMessageCell.drawTime(canvas, chatMessageCell.getAlpha(), true);
                    }
                    canvas.restore();
                    chatMessageCell.getTransitionParams().recordDrawingStatePreview();
                    canvas.restore();
                    return zDrawChild;
                }

                @Override // org.telegram.p029ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    for (int i4 = 0; i4 < getChildCount(); i4++) {
                        View childAt = getChildAt(i4);
                        if (childAt instanceof ChatMessageCell) {
                            ((ChatMessageCell) childAt).setParentViewSize(Page.this.chatPreviewContainer.getMeasuredWidth(), Page.this.chatPreviewContainer.getBackgroundSizeY());
                        }
                    }
                    drawChatBackgroundElements(canvas);
                    super.dispatchDraw(canvas);
                }

                @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
                protected void onLayout(boolean z, int i4, int i5, int i6, int i7) {
                    if (Page.this.firstLayout) {
                        if (Page.this.currentTab != 0) {
                            scrollToPosition(0);
                        }
                        Page.this.firstLayout = false;
                    }
                    super.onLayout(z, i4, i5, i6, i7);
                    Page.this.updatePositions();
                    Page.this.checkScroll();
                }

                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                 */
                private void drawChatBackgroundElements(Canvas canvas) {
                    boolean z;
                    float f;
                    Canvas canvas2;
                    MessageObject.GroupedMessages currentMessagesGroup;
                    ChatMessageCell chatMessageCell;
                    MessageObject.GroupedMessages currentMessagesGroup2;
                    int childCount = getChildCount();
                    boolean z2 = false;
                    MessageObject.GroupedMessages groupedMessages = null;
                    for (int i4 = 0; i4 < childCount; i4++) {
                        View childAt = getChildAt(i4);
                        if ((childAt instanceof ChatMessageCell) && ((currentMessagesGroup2 = (chatMessageCell = (ChatMessageCell) childAt).getCurrentMessagesGroup()) == null || currentMessagesGroup2 != groupedMessages)) {
                            chatMessageCell.getCurrentPosition();
                            chatMessageCell.getBackgroundDrawable();
                            groupedMessages = currentMessagesGroup2;
                        }
                    }
                    int i5 = 0;
                    while (i5 < 3) {
                        MessagePreviewView.this.drawingGroups.clear();
                        if (i5 != 2 || Page.this.chatListView.isFastScrollAnimationRunning()) {
                            int i6 = z2 ? 1 : 0;
                            while (true) {
                                z = true;
                                if (i6 >= childCount) {
                                    break;
                                }
                                View childAt2 = Page.this.chatListView.getChildAt(i6);
                                if (childAt2 instanceof ChatMessageCell) {
                                    ChatMessageCell chatMessageCell2 = (ChatMessageCell) childAt2;
                                    if (childAt2.getY() <= Page.this.chatListView.getHeight() && childAt2.getY() + childAt2.getHeight() >= 0.0f && (currentMessagesGroup = chatMessageCell2.getCurrentMessagesGroup()) != null && ((i5 != 0 || currentMessagesGroup.messages.size() != 1) && ((i5 != 1 || currentMessagesGroup.transitionParams.drawBackgroundForDeletedItems) && ((i5 != 0 || !chatMessageCell2.getMessageObject().deleted) && ((i5 != 1 || chatMessageCell2.getMessageObject().deleted) && ((i5 != 2 || chatMessageCell2.willRemovedAfterAnimation()) && (i5 == 2 || !chatMessageCell2.willRemovedAfterAnimation()))))))) {
                                        if (!MessagePreviewView.this.drawingGroups.contains(currentMessagesGroup)) {
                                            MessageObject.GroupedMessages.TransitionParams transitionParams = currentMessagesGroup.transitionParams;
                                            transitionParams.left = z2 ? 1 : 0;
                                            transitionParams.top = z2 ? 1 : 0;
                                            transitionParams.right = z2 ? 1 : 0;
                                            transitionParams.bottom = z2 ? 1 : 0;
                                            transitionParams.pinnedBotton = z2;
                                            transitionParams.pinnedTop = z2;
                                            transitionParams.cell = chatMessageCell2;
                                            MessagePreviewView.this.drawingGroups.add(currentMessagesGroup);
                                        }
                                        currentMessagesGroup.transitionParams.pinnedTop = chatMessageCell2.isPinnedTop();
                                        currentMessagesGroup.transitionParams.pinnedBotton = chatMessageCell2.isPinnedBottom();
                                        int left = chatMessageCell2.getLeft() + chatMessageCell2.getBackgroundDrawableLeft();
                                        int left2 = chatMessageCell2.getLeft() + chatMessageCell2.getBackgroundDrawableRight();
                                        int top = chatMessageCell2.getTop() + chatMessageCell2.getPaddingTop() + chatMessageCell2.getBackgroundDrawableTop();
                                        int top2 = chatMessageCell2.getTop() + chatMessageCell2.getPaddingTop() + chatMessageCell2.getBackgroundDrawableBottom();
                                        if ((chatMessageCell2.getCurrentPosition().flags & 4) == 0) {
                                            top -= AndroidUtilities.m1124dp(10.0f);
                                        }
                                        if ((chatMessageCell2.getCurrentPosition().flags & 8) == 0) {
                                            top2 += AndroidUtilities.m1124dp(10.0f);
                                        }
                                        if (chatMessageCell2.willRemovedAfterAnimation()) {
                                            currentMessagesGroup.transitionParams.cell = chatMessageCell2;
                                        }
                                        MessageObject.GroupedMessages.TransitionParams transitionParams2 = currentMessagesGroup.transitionParams;
                                        int i7 = transitionParams2.top;
                                        if (i7 == 0 || top < i7) {
                                            transitionParams2.top = top;
                                        }
                                        int i8 = transitionParams2.bottom;
                                        if (i8 == 0 || top2 > i8) {
                                            transitionParams2.bottom = top2;
                                        }
                                        int i9 = transitionParams2.left;
                                        if (i9 == 0 || left < i9) {
                                            transitionParams2.left = left;
                                        }
                                        int i10 = transitionParams2.right;
                                        if (i10 == 0 || left2 > i10) {
                                            transitionParams2.right = left2;
                                        }
                                    }
                                }
                                i6++;
                            }
                            int i11 = z2 ? 1 : 0;
                            while (i11 < MessagePreviewView.this.drawingGroups.size()) {
                                MessageObject.GroupedMessages groupedMessages2 = (MessageObject.GroupedMessages) MessagePreviewView.this.drawingGroups.get(i11);
                                if (groupedMessages2 != null) {
                                    float nonAnimationTranslationX = groupedMessages2.transitionParams.cell.getNonAnimationTranslationX(z);
                                    MessageObject.GroupedMessages.TransitionParams transitionParams3 = groupedMessages2.transitionParams;
                                    float f2 = transitionParams3.left + nonAnimationTranslationX + transitionParams3.offsetLeft;
                                    float translationY = transitionParams3.top + transitionParams3.offsetTop;
                                    float f3 = transitionParams3.right + nonAnimationTranslationX + transitionParams3.offsetRight;
                                    float measuredHeight = transitionParams3.bottom + transitionParams3.offsetBottom;
                                    if (!transitionParams3.backgroundChangeBounds) {
                                        translationY += transitionParams3.cell.getTranslationY();
                                        measuredHeight += groupedMessages2.transitionParams.cell.getTranslationY();
                                    }
                                    if (translationY < (-AndroidUtilities.m1124dp(20.0f))) {
                                        translationY = -AndroidUtilities.m1124dp(20.0f);
                                    }
                                    if (measuredHeight > Page.this.chatListView.getMeasuredHeight() + AndroidUtilities.m1124dp(20.0f)) {
                                        measuredHeight = Page.this.chatListView.getMeasuredHeight() + AndroidUtilities.m1124dp(20.0f);
                                    }
                                    boolean z3 = (groupedMessages2.transitionParams.cell.getScaleX() == 1.0f && groupedMessages2.transitionParams.cell.getScaleY() == 1.0f) ? z2 : z;
                                    if (z3) {
                                        canvas.save();
                                        f = 2.0f;
                                        canvas2 = canvas;
                                        canvas2.scale(groupedMessages2.transitionParams.cell.getScaleX(), groupedMessages2.transitionParams.cell.getScaleY(), f2 + ((f3 - f2) / 2.0f), translationY + ((measuredHeight - translationY) / 2.0f));
                                    } else {
                                        f = 2.0f;
                                        canvas2 = canvas;
                                    }
                                    MessageObject.GroupedMessages.TransitionParams transitionParams4 = groupedMessages2.transitionParams;
                                    transitionParams4.cell.drawBackground(canvas2, (int) f2, (int) translationY, (int) f3, (int) measuredHeight, transitionParams4.pinnedTop, transitionParams4.pinnedBotton, false, 0);
                                    MessageObject.GroupedMessages.TransitionParams transitionParams5 = groupedMessages2.transitionParams;
                                    transitionParams5.cell = null;
                                    transitionParams5.drawCaptionLayout = groupedMessages2.hasCaption;
                                    if (z3) {
                                        canvas.restore();
                                        for (int i12 = 0; i12 < childCount; i12++) {
                                            View childAt3 = Page.this.chatListView.getChildAt(i12);
                                            if (childAt3 instanceof ChatMessageCell) {
                                                ChatMessageCell chatMessageCell3 = (ChatMessageCell) childAt3;
                                                if (chatMessageCell3.getCurrentMessagesGroup() == groupedMessages2) {
                                                    int left3 = chatMessageCell3.getLeft();
                                                    int top3 = chatMessageCell3.getTop();
                                                    childAt3.setPivotX((f2 - left3) + ((f3 - f2) / f));
                                                    childAt3.setPivotY((translationY - top3) + ((measuredHeight - translationY) / f));
                                                }
                                            }
                                        }
                                    }
                                }
                                i11++;
                                z2 = false;
                                z = true;
                            }
                        }
                        i5++;
                        z2 = false;
                    }
                }

                @Override // androidx.recyclerview.widget.RecyclerView
                public void onScrollStateChanged(int i4) {
                    if (i4 == 0) {
                        Page.this.textSelectionHelper.stopScrolling();
                    }
                    super.onScrollStateChanged(i4);
                }

                @Override // androidx.recyclerview.widget.RecyclerView
                public void onScrolled(int i4, int i5) {
                    super.onScrolled(i4, i5);
                    Page.this.textSelectionHelper.onParentScrolled();
                }
            };
            this.chatListView = recyclerListView;
            C45707 c45707 = new C45707(null, this.chatListView, MessagePreviewView.this.resourcesProvider, MessagePreviewView.this);
            this.itemAnimator = c45707;
            recyclerListView.setItemAnimator(c45707);
            this.chatListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.8
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i4, int i5) {
                    super.onScrolled(recyclerView, i4, i5);
                    for (int i6 = 0; i6 < Page.this.chatListView.getChildCount(); i6++) {
                        ((ChatMessageCell) Page.this.chatListView.getChildAt(i6)).setParentViewSize(Page.this.chatPreviewContainer.getMeasuredWidth(), Page.this.chatPreviewContainer.getBackgroundSizeY());
                    }
                    TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper2 = Page.this.textSelectionHelper;
                    if (chatListTextSelectionHelper2 != null) {
                        chatListTextSelectionHelper2.invalidate();
                    }
                }
            });
            this.chatListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.9
                @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
                public void onItemClick(View view, int i4) {
                    Page page2 = Page.this;
                    if (page2.currentTab != 1 || page2.messages.previewMessages.size() <= 1) {
                        return;
                    }
                    int id = Page.this.messages.previewMessages.get(i4).getId();
                    boolean z = Page.this.messages.selectedIds.get(id, false);
                    boolean z2 = !z;
                    if (Page.this.messages.selectedIds.size() == 1 && z) {
                        return;
                    }
                    if (z) {
                        Page.this.messages.selectedIds.delete(id);
                    } else {
                        Page.this.messages.selectedIds.put(id, z2);
                    }
                    ((ChatMessageCell) view).setChecked(z2, z2, true);
                    Page.this.updateSubtitle(true);
                }
            });
            RecyclerListView recyclerListView2 = this.chatListView;
            Adapter adapter = new Adapter();
            this.adapter = adapter;
            recyclerListView2.setAdapter(adapter);
            this.chatListView.setPadding(0, AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f));
            C455910 c455910 = new C455910(context, MediaDataController.MAX_STYLE_RUNS_COUNT, 1, true, MessagePreviewView.this);
            Context context4 = context;
            this.chatLayoutManager = c455910;
            c455910.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.11
                @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                public int getSpanSize(int i4) {
                    if (i4 < 0 || i4 >= Page.this.messages.previewMessages.size()) {
                        return MediaDataController.MAX_STYLE_RUNS_COUNT;
                    }
                    MessageObject messageObject = Page.this.messages.previewMessages.get(i4);
                    MessageObject.GroupedMessages validGroupedMessage = Page.this.getValidGroupedMessage(messageObject);
                    return validGroupedMessage != null ? validGroupedMessage.getPosition(messageObject).spanSize : MediaDataController.MAX_STYLE_RUNS_COUNT;
                }
            });
            this.chatListView.setClipToPadding(false);
            this.chatListView.setLayoutManager(this.chatLayoutManager);
            this.chatListView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.12
                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                    ChatMessageCell chatMessageCell;
                    MessageObject.GroupedMessages currentMessagesGroup;
                    MessageObject.GroupedMessagePosition currentPosition;
                    int i4 = 0;
                    rect.bottom = 0;
                    if (!(view instanceof ChatMessageCell) || (currentMessagesGroup = (chatMessageCell = (ChatMessageCell) view).getCurrentMessagesGroup()) == null || (currentPosition = chatMessageCell.getCurrentPosition()) == null || currentPosition.siblingHeights == null) {
                        return;
                    }
                    Point point = AndroidUtilities.displaySize;
                    float fMax = Math.max(point.x, point.y) * 0.5f;
                    int extraInsetHeight = chatMessageCell.getExtraInsetHeight();
                    int i5 = 0;
                    while (true) {
                        if (i5 >= currentPosition.siblingHeights.length) {
                            break;
                        }
                        extraInsetHeight += (int) Math.ceil(r3[i5] * fMax);
                        i5++;
                    }
                    int iRound = extraInsetHeight + ((currentPosition.maxY - currentPosition.minY) * Math.round(AndroidUtilities.density * 7.0f));
                    int size = currentMessagesGroup.posArray.size();
                    while (true) {
                        if (i4 < size) {
                            MessageObject.GroupedMessagePosition groupedMessagePosition = currentMessagesGroup.posArray.get(i4);
                            byte b = groupedMessagePosition.minY;
                            byte b2 = currentPosition.minY;
                            if (b == b2 && ((groupedMessagePosition.minX != currentPosition.minX || groupedMessagePosition.maxX != currentPosition.maxX || b != b2 || groupedMessagePosition.maxY != currentPosition.maxY) && b == b2)) {
                                iRound -= ((int) Math.ceil(fMax * groupedMessagePosition.f1597ph)) - AndroidUtilities.m1124dp(4.0f);
                                break;
                            }
                            i4++;
                        } else {
                            break;
                        }
                    }
                    rect.bottom = -iRound;
                }
            });
            this.chatPreviewContainer.addView(this.chatListView);
            addView(this.chatPreviewContainer, LayoutHelper.createFrame(-1, 400.0f, 0, 8.0f, 0.0f, 8.0f, 0.0f));
            this.chatPreviewContainer.addView(this.actionBar, LayoutHelper.createFrame(-1, -2.0f));
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(getContext(), C2888R.drawable.popup_fixed_alert2, MessagePreviewView.this.resourcesProvider, 1);
            this.menu = actionBarPopupWindowLayout;
            actionBarPopupWindowLayout.getSwipeBack().setOnForegroundOpenFinished(new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$1();
                }
            });
            addView(this.menu, LayoutHelper.createFrame(-2, -2.0f));
            if (i != 0 || (messages = (messagePreviewParams = MessagePreviewView.this.messagePreviewParams).replyMessage) == null) {
                page = this;
                if (i == 1) {
                    MessagePreviewParams messagePreviewParams2 = MessagePreviewView.this.messagePreviewParams;
                    if (messagePreviewParams2.forwardMessages != null) {
                        messagePreviewView = MessagePreviewView.this;
                        final ToggleButton toggleButton2 = new ToggleButton(context, C2888R.raw.name_hide, LocaleController.getString(messagePreviewParams2.multipleUsers ? C2888R.string.ShowSenderNames : C2888R.string.ShowSendersName), C2888R.raw.name_show, LocaleController.getString(MessagePreviewView.this.messagePreviewParams.multipleUsers ? C2888R.string.HideSenderNames : C2888R.string.HideSendersName), MessagePreviewView.this.resourcesProvider);
                        page.menu.addView((View) toggleButton2, LayoutHelper.createLinear(-1, 48));
                        if (messagePreviewView.messagePreviewParams.hasCaption) {
                            context3 = context;
                            ToggleButton toggleButton3 = new ToggleButton(context3, C2888R.raw.caption_hide, LocaleController.getString(C2888R.string.ShowCaption), C2888R.raw.caption_show, LocaleController.getString(C2888R.string.HideCaption), messagePreviewView.resourcesProvider);
                            toggleButton3.setState(messagePreviewView.messagePreviewParams.hideCaption, false);
                            page.menu.addView((View) toggleButton3, LayoutHelper.createLinear(-1, 48));
                            toggleButton = toggleButton3;
                        } else {
                            context3 = context;
                            toggleButton = null;
                        }
                        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(context3, true, false, (Theme.ResourcesProvider) messagePreviewView.resourcesProvider);
                        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$10(view);
                            }
                        });
                        actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(C2888R.string.ChangeRecipient), C2888R.drawable.msg_forward_replace);
                        page.menu.addView((View) actionBarMenuSubItem, LayoutHelper.createLinear(-1, 48));
                        ActionBarPopupWindow.GapView gapView = new ActionBarPopupWindow.GapView(context3, messagePreviewView.resourcesProvider);
                        gapView.setTag(C2888R.id.fit_width_tag, 1);
                        page.menu.addView((View) gapView, LayoutHelper.createLinear(-1, 8));
                        ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(context3, true, false, false, (Theme.ResourcesProvider) messagePreviewView.resourcesProvider);
                        actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString(C2888R.string.ApplyChanges), C2888R.drawable.msg_select);
                        actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda2
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$11(view);
                            }
                        });
                        page.menu.addView((View) actionBarMenuSubItem2, LayoutHelper.createLinear(-1, 48));
                        ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem(context3, false, false, (Theme.ResourcesProvider) messagePreviewView.resourcesProvider);
                        actionBarMenuSubItem3.setTextAndIcon(LocaleController.getString(C2888R.string.ForwardSendMessages), C2888R.drawable.msg_send);
                        page.menu.addView((View) actionBarMenuSubItem3, LayoutHelper.createLinear(-1, 48));
                        actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$12(view);
                            }
                        });
                        ActionBarMenuSubItem actionBarMenuSubItem4 = new ActionBarMenuSubItem(context3, true, false, true, (Theme.ResourcesProvider) messagePreviewView.resourcesProvider);
                        actionBarMenuSubItem4.setTextAndIcon(LocaleController.getString(C2888R.string.DoNotForward), C2888R.drawable.msg_delete);
                        int themedColor = messagePreviewView.getThemedColor(Theme.key_text_RedBold);
                        int i4 = Theme.key_text_RedRegular;
                        actionBarMenuSubItem4.setColors(themedColor, messagePreviewView.getThemedColor(i4));
                        actionBarMenuSubItem4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$13(view);
                            }
                        });
                        actionBarMenuSubItem4.setSelectorColor(Theme.multAlpha(Theme.getColor(i4), 0.12f));
                        page.menu.addView((View) actionBarMenuSubItem4, LayoutHelper.createLinear(-1, 48));
                        toggleButton2.setState(messagePreviewView.isForwardNoQuote(), false);
                        toggleButton2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$14(toggleButton, toggleButton2, view);
                            }
                        });
                        if (toggleButton != null) {
                            toggleButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda6
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    this.f$0.lambda$new$15(toggleButton, toggleButton2, view);
                                }
                            });
                        }
                    } else {
                        messagePreviewView = MessagePreviewView.this;
                        if (i == 2 && messagePreviewView.messagePreviewParams.linkMessage != null) {
                            ToggleButton toggleButton4 = new ToggleButton(context, C2888R.raw.position_below, LocaleController.getString(C2888R.string.LinkAbove), C2888R.raw.position_above, LocaleController.getString(C2888R.string.LinkBelow), messagePreviewView.resourcesProvider);
                            page.changePositionBtn = toggleButton4;
                            toggleButton4.setState(!messagePreviewView.messagePreviewParams.webpageTop, false);
                            page.menu.addView((View) page.changePositionBtn, LayoutHelper.createLinear(-1, 48));
                            FrameLayout frameLayout = new FrameLayout(context);
                            page.changeSizeBtnContainer = frameLayout;
                            frameLayout.setBackground(Theme.createRadSelectorDrawable(messagePreviewView.getThemedColor(Theme.key_dialogButtonSelector), 0, 0));
                            ToggleButton toggleButton5 = new ToggleButton(context, C2888R.raw.media_shrink, LocaleController.getString(C2888R.string.LinkMediaLarger), C2888R.raw.media_enlarge, LocaleController.getString(C2888R.string.LinkMediaSmaller), messagePreviewView.resourcesProvider);
                            page.changeSizeBtn = toggleButton5;
                            toggleButton5.setBackground(null);
                            page.changeSizeBtn.setVisibility(messagePreviewView.messagePreviewParams.isVideo ? 4 : 0);
                            page.changeSizeBtnContainer.addView(page.changeSizeBtn, LayoutHelper.createLinear(-1, 48));
                            ToggleButton toggleButton6 = new ToggleButton(context, C2888R.raw.media_shrink, LocaleController.getString(C2888R.string.LinkVideoLarger), C2888R.raw.media_enlarge, LocaleController.getString(C2888R.string.LinkVideoSmaller), messagePreviewView.resourcesProvider);
                            page.videoChangeSizeBtn = toggleButton6;
                            toggleButton6.setBackground(null);
                            page.videoChangeSizeBtn.setVisibility(messagePreviewView.messagePreviewParams.isVideo ? 0 : 4);
                            page.changeSizeBtnContainer.setAlpha(messagePreviewView.messagePreviewParams.hasMedia ? 1.0f : 0.5f);
                            page.changeSizeBtnContainer.addView(page.videoChangeSizeBtn, LayoutHelper.createLinear(-1, 48));
                            page.menu.addView((View) page.changeSizeBtnContainer, LayoutHelper.createLinear(-1, 48));
                            FrameLayout frameLayout2 = page.changeSizeBtnContainer;
                            MessagePreviewParams messagePreviewParams3 = messagePreviewView.messagePreviewParams;
                            frameLayout2.setVisibility((!messagePreviewParams3.singleLink || messagePreviewParams3.hasMedia) ? 0 : 8);
                            page.changeSizeBtn.setState(messagePreviewView.messagePreviewParams.webpageSmall, false);
                            page.videoChangeSizeBtn.setState(messagePreviewView.messagePreviewParams.webpageSmall, false);
                            ActionBarPopupWindow.GapView gapView2 = new ActionBarPopupWindow.GapView(context, messagePreviewView.resourcesProvider);
                            gapView2.setTag(C2888R.id.fit_width_tag, 1);
                            page.menu.addView((View) gapView2, LayoutHelper.createLinear(-1, 8));
                            ActionBarMenuSubItem actionBarMenuSubItem5 = new ActionBarMenuSubItem(context, true, false, false, (Theme.ResourcesProvider) messagePreviewView.resourcesProvider);
                            actionBarMenuSubItem5.setTextAndIcon(LocaleController.getString(C2888R.string.ApplyChanges), C2888R.drawable.msg_select);
                            actionBarMenuSubItem5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda7
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    this.f$0.lambda$new$16(view);
                                }
                            });
                            page.menu.addView((View) actionBarMenuSubItem5, LayoutHelper.createLinear(-1, 48));
                            context2 = context;
                            ActionBarMenuSubItem actionBarMenuSubItem6 = new ActionBarMenuSubItem(context2, true, false, true, (Theme.ResourcesProvider) messagePreviewView.resourcesProvider);
                            actionBarMenuSubItem6.setTextAndIcon(LocaleController.getString(C2888R.string.DoNotLinkPreview), C2888R.drawable.msg_delete);
                            int themedColor2 = messagePreviewView.getThemedColor(Theme.key_text_RedBold);
                            int i5 = Theme.key_text_RedRegular;
                            actionBarMenuSubItem6.setColors(themedColor2, messagePreviewView.getThemedColor(i5));
                            actionBarMenuSubItem6.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda8
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    this.f$0.lambda$new$17(view);
                                }
                            });
                            actionBarMenuSubItem6.setSelectorColor(Theme.multAlpha(Theme.getColor(i5), 0.12f));
                            page.menu.addView((View) actionBarMenuSubItem6, LayoutHelper.createLinear(-1, 48));
                            page.changeSizeBtnContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda9
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    this.f$0.lambda$new$18(view);
                                }
                            });
                            page.changePositionBtn.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda10
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    this.f$0.lambda$new$19(view);
                                }
                            });
                        }
                    }
                    context2 = context;
                }
            } else {
                if (!messages.hasText || messagePreviewParams.isSecret) {
                    page = this;
                    messagePreviewView = MessagePreviewView.this;
                    i2 = 8;
                    i3 = 48;
                } else {
                    LinearLayout linearLayout = new LinearLayout(context4);
                    linearLayout.setOrientation(1);
                    if (MessagePreviewView.this.showOutdatedQuote) {
                        i2 = 8;
                        i3 = 48;
                        viewGroup = linearLayout;
                    } else {
                        i2 = 8;
                        i3 = 48;
                        viewGroup = linearLayout;
                        ActionBarMenuSubItem actionBarMenuSubItem7 = new ActionBarMenuSubItem(context4, false, true, false, (Theme.ResourcesProvider) MessagePreviewView.this.resourcesProvider);
                        actionBarMenuSubItem7.setTextAndIcon(LocaleController.getString(C2888R.string.Back), C2888R.drawable.msg_arrow_back);
                        actionBarMenuSubItem7.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda12
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$2(view);
                            }
                        });
                        viewGroup.addView(actionBarMenuSubItem7, LayoutHelper.createLinear(-1, 48));
                        ActionBarPopupWindow.GapView gapView3 = new ActionBarPopupWindow.GapView(context4, MessagePreviewView.this.resourcesProvider);
                        gapView3.setTag(C2888R.id.fit_width_tag, 1);
                        viewGroup.addView(gapView3, LayoutHelper.createLinear(-1, 8));
                        ActionBarMenuSubItem actionBarMenuSubItem8 = new ActionBarMenuSubItem(context4, false, false, true, (Theme.ResourcesProvider) MessagePreviewView.this.resourcesProvider);
                        actionBarMenuSubItem8.setTextAndIcon(LocaleController.getString(C2888R.string.QuoteSelectedPart), C2888R.drawable.menu_quote_specific);
                        actionBarMenuSubItem8.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda13
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$3(view);
                            }
                        });
                        viewGroup.addView(actionBarMenuSubItem8, LayoutHelper.createLinear(-1, 48));
                    }
                    this.menuBack = this.menu.addViewToSwipeBack(viewGroup);
                    this.menu.getSwipeBack().setStickToRight(true);
                    FrameLayout frameLayout3 = new FrameLayout(context4);
                    ActionBarMenuSubItem actionBarMenuSubItem9 = new ActionBarMenuSubItem(context4, true, true, false, MessagePreviewView.this.resourcesProvider) { // from class: org.telegram.ui.Components.MessagePreviewView.Page.13
                        @Override // android.view.View
                        public boolean onTouchEvent(MotionEvent motionEvent) {
                            if (getVisibility() != 0 || getAlpha() < 0.5f) {
                                return false;
                            }
                            return super.onTouchEvent(motionEvent);
                        }

                        @Override // org.telegram.p029ui.ActionBar.ActionBarMenuSubItem
                        public void updateBackground() {
                            setBackground(null);
                        }
                    };
                    this.quoteButton = actionBarMenuSubItem9;
                    actionBarMenuSubItem9.setTextAndIcon(LocaleController.getString(MessagePreviewView.this.showOutdatedQuote ? C2888R.string.QuoteSelectedPart : C2888R.string.SelectSpecificQuote), C2888R.drawable.menu_select_quote);
                    ActionBarMenuSubItem actionBarMenuSubItem10 = new ActionBarMenuSubItem(context, true, true, false, MessagePreviewView.this.resourcesProvider) { // from class: org.telegram.ui.Components.MessagePreviewView.Page.14
                        @Override // android.view.View
                        public boolean onTouchEvent(MotionEvent motionEvent) {
                            if (getVisibility() != 0 || getAlpha() < 0.5f) {
                                return false;
                            }
                            return super.onTouchEvent(motionEvent);
                        }

                        @Override // org.telegram.p029ui.ActionBar.ActionBarMenuSubItem
                        public void updateBackground() {
                            setBackground(null);
                        }
                    };
                    messagePreviewView = MessagePreviewView.this;
                    page = this;
                    context4 = context;
                    page.clearQuoteButton = actionBarMenuSubItem10;
                    actionBarMenuSubItem10.setTextAndIcon(LocaleController.getString(C2888R.string.ClearQuote), C2888R.drawable.menu_quote_delete);
                    frameLayout3.setBackground(Theme.createRadSelectorDrawable(messagePreviewView2.getThemedColor(Theme.key_dialogButtonSelector), 6, 0));
                    frameLayout3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda14
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$new$4(view);
                        }
                    });
                    frameLayout3.addView(page.quoteButton, LayoutHelper.createFrame(-1, 48.0f));
                    frameLayout3.addView(page.clearQuoteButton, LayoutHelper.createFrame(-1, 48.0f));
                    page.menu.addView((View) frameLayout3, LayoutHelper.createLinear(-1, i3));
                }
                MessagePreviewParams messagePreviewParams4 = messagePreviewView2.messagePreviewParams;
                if (!messagePreviewParams4.monoforum && !messagePreviewParams4.noforwards && !messagePreviewParams4.hasSecretMessages) {
                    FrameLayout frameLayout4 = new FrameLayout(context4);
                    ActionBarMenuSubItem actionBarMenuSubItem11 = new ActionBarMenuSubItem(context4, true, false, false, (Theme.ResourcesProvider) messagePreviewView2.resourcesProvider);
                    page.replyAnotherChatButton = actionBarMenuSubItem11;
                    actionBarMenuSubItem11.setTextAndIcon(LocaleController.getString(C2888R.string.ReplyToAnotherChat), C2888R.drawable.msg_forward_replace);
                    page.replyAnotherChatButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda15
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$new$5(view);
                        }
                    });
                    context4 = context;
                    ActionBarMenuSubItem actionBarMenuSubItem12 = new ActionBarMenuSubItem(context4, true, false, false, (Theme.ResourcesProvider) messagePreviewView2.resourcesProvider);
                    page.quoteAnotherChatButton = actionBarMenuSubItem12;
                    actionBarMenuSubItem12.setTextAndIcon(LocaleController.getString(C2888R.string.QuoteToAnotherChat), C2888R.drawable.msg_forward_replace);
                    page.quoteAnotherChatButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda16
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$new$6(view);
                        }
                    });
                    frameLayout4.addView(page.quoteAnotherChatButton, LayoutHelper.createFrame(-1, 48.0f));
                    frameLayout4.addView(page.replyAnotherChatButton, LayoutHelper.createFrame(-1, 48.0f));
                    page.menu.addView((View) frameLayout4, LayoutHelper.createLinear(-1, i3));
                }
                MessagePreviewParams messagePreviewParams5 = messagePreviewView2.messagePreviewParams;
                if (!messagePreviewParams5.noforwards && !messagePreviewParams5.hasSecretMessages) {
                    ActionBarPopupWindow.GapView gapView4 = new ActionBarPopupWindow.GapView(context4, messagePreviewView2.resourcesProvider);
                    gapView4.setTag(C2888R.id.fit_width_tag, 1);
                    page.menu.addView((View) gapView4, LayoutHelper.createLinear(-1, i2));
                }
                page.switchToQuote(messagePreviewView2.messagePreviewParams.quote != null, false);
                ActionBarMenuSubItem actionBarMenuSubItem13 = new ActionBarMenuSubItem(context4, true, false, false, (Theme.ResourcesProvider) messagePreviewView2.resourcesProvider);
                actionBarMenuSubItem13.setTextAndIcon(LocaleController.getString(C2888R.string.ApplyChanges), C2888R.drawable.msg_select);
                actionBarMenuSubItem13.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda17
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$7(view);
                    }
                });
                page.menu.addView((View) actionBarMenuSubItem13, LayoutHelper.createLinear(-1, i3));
                ActionBarMenuSubItem actionBarMenuSubItem14 = new ActionBarMenuSubItem(context, true, false, false, (Theme.ResourcesProvider) messagePreviewView2.resourcesProvider);
                actionBarMenuSubItem14.setTextAndIcon(LocaleController.getString(C2888R.string.ViewInChat), C2888R.drawable.msg_view_file);
                actionBarMenuSubItem14.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda18
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$8(view);
                    }
                });
                page.menu.addView((View) actionBarMenuSubItem14, LayoutHelper.createLinear(-1, i3));
                ActionBarMenuSubItem actionBarMenuSubItem15 = new ActionBarMenuSubItem(context, true, false, true, (Theme.ResourcesProvider) messagePreviewView2.resourcesProvider);
                page.deleteReplyButton = actionBarMenuSubItem15;
                actionBarMenuSubItem15.setTextAndIcon(LocaleController.getString(messagePreviewView2.showOutdatedQuote ? C2888R.string.DoNotQuote : C2888R.string.DoNotReply), C2888R.drawable.msg_delete);
                ActionBarMenuSubItem actionBarMenuSubItem16 = page.deleteReplyButton;
                int themedColor3 = messagePreviewView2.getThemedColor(Theme.key_text_RedBold);
                int i6 = Theme.key_text_RedRegular;
                actionBarMenuSubItem16.setColors(themedColor3, messagePreviewView2.getThemedColor(i6));
                page.deleteReplyButton.setSelectorColor(Theme.multAlpha(Theme.getColor(i6), 0.12f));
                page.deleteReplyButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda19
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$9(view);
                    }
                });
                page.menu.addView((View) page.deleteReplyButton, LayoutHelper.createLinear(-1, i3));
                context2 = context;
                messagePreviewView = messagePreviewView2;
            }
            int i7 = page.currentTab;
            if (i7 == 1) {
                page.messages = messagePreviewView.messagePreviewParams.forwardMessages;
            } else if (i7 == 0) {
                page.messages = messagePreviewView.messagePreviewParams.replyMessage;
            } else if (i7 == 2) {
                page.messages = messagePreviewView.messagePreviewParams.linkMessage;
            }
            TextSelectionHelper.TextSelectionOverlay overlayView = page.textSelectionHelper.getOverlayView(context2);
            page.textSelectionOverlay = overlayView;
            overlayView.setElevation(AndroidUtilities.m1124dp(8.0f));
            page.textSelectionOverlay.setOutlineProvider(null);
            View view = page.textSelectionOverlay;
            if (view != null) {
                if (view.getParent() instanceof ViewGroup) {
                    ((ViewGroup) page.textSelectionOverlay.getParent()).removeView(page.textSelectionOverlay);
                }
                page.addView(page.textSelectionOverlay, LayoutHelper.createFrame(-1, -1.0f, 51, 0.0f, org.telegram.p029ui.ActionBar.ActionBar.getCurrentActionBarHeight() / AndroidUtilities.density, 0.0f, 0.0f));
            }
            page.textSelectionHelper.setParentView(page.chatListView);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$new$0(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                MessagePreviewView.this.dismiss(true);
            }
            return true;
        }

        /* JADX INFO: renamed from: org.telegram.ui.Components.MessagePreviewView$Page$7 */
        class C45707 extends ChatListItemAnimator {
            Runnable finishRunnable;
            int scrollAnimationIndex;
            final /* synthetic */ MessagePreviewView val$this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C45707(ChatActivity chatActivity, RecyclerListView recyclerListView, Theme.ResourcesProvider resourcesProvider, MessagePreviewView messagePreviewView) {
                super(chatActivity, recyclerListView, resourcesProvider);
                this.val$this$0 = messagePreviewView;
                this.scrollAnimationIndex = -1;
            }

            @Override // androidx.recyclerview.widget.ChatListItemAnimator
            public void onAnimationStart() {
                super.onAnimationStart();
                AndroidUtilities.cancelRunOnUIThread(MessagePreviewView.this.changeBoundsRunnable);
                MessagePreviewView.this.changeBoundsRunnable.run();
                if (this.scrollAnimationIndex == -1) {
                    this.scrollAnimationIndex = NotificationCenter.getInstance(MessagePreviewView.this.currentAccount).setAnimationInProgress(this.scrollAnimationIndex, null, false);
                }
                Runnable runnable = this.finishRunnable;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                    this.finishRunnable = null;
                }
            }

            @Override // androidx.recyclerview.widget.ChatListItemAnimator, androidx.recyclerview.widget.DefaultItemAnimator
            protected void onAllAnimationsDone() {
                super.onAllAnimationsDone();
                Runnable runnable = this.finishRunnable;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                }
                Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$7$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onAllAnimationsDone$0();
                    }
                };
                this.finishRunnable = runnable2;
                AndroidUtilities.runOnUIThread(runnable2);
                Page page = Page.this;
                if (page.updateAfterAnimations) {
                    page.updateAfterAnimations = false;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$7$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onAllAnimationsDone$1();
                        }
                    });
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onAllAnimationsDone$0() {
                if (this.scrollAnimationIndex != -1) {
                    NotificationCenter.getInstance(MessagePreviewView.this.currentAccount).onAnimationFinish(this.scrollAnimationIndex);
                    this.scrollAnimationIndex = -1;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onAllAnimationsDone$1() {
                Page.this.updateMessages();
            }

            @Override // androidx.recyclerview.widget.ChatListItemAnimator, androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
            public void endAnimations() {
                super.endAnimations();
                Runnable runnable = this.finishRunnable;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                }
                Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$7$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$endAnimations$2();
                    }
                };
                this.finishRunnable = runnable2;
                AndroidUtilities.runOnUIThread(runnable2);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$endAnimations$2() {
                if (this.scrollAnimationIndex != -1) {
                    NotificationCenter.getInstance(MessagePreviewView.this.currentAccount).onAnimationFinish(this.scrollAnimationIndex);
                    this.scrollAnimationIndex = -1;
                }
            }
        }

        /* JADX INFO: renamed from: org.telegram.ui.Components.MessagePreviewView$Page$10 */
        class C455910 extends GridLayoutManagerFixed {
            final /* synthetic */ MessagePreviewView val$this$0;

            @Override // androidx.recyclerview.widget.GridLayoutManagerFixed
            public boolean shouldLayoutChildFromOpositeSide(View view) {
                return false;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C455910(Context context, int i, int i2, boolean z, MessagePreviewView messagePreviewView) {
                super(context, i, i2, z);
                this.val$this$0 = messagePreviewView;
            }

            @Override // androidx.recyclerview.widget.GridLayoutManagerFixed
            protected boolean hasSiblingChild(int i) {
                byte b;
                MessageObject messageObject = Page.this.messages.previewMessages.get(i);
                MessageObject.GroupedMessages validGroupedMessage = Page.this.getValidGroupedMessage(messageObject);
                if (validGroupedMessage != null) {
                    MessageObject.GroupedMessagePosition position = validGroupedMessage.getPosition(messageObject);
                    if (position.minX != position.maxX && (b = position.minY) == position.maxY && b != 0) {
                        int size = validGroupedMessage.posArray.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            MessageObject.GroupedMessagePosition groupedMessagePosition = validGroupedMessage.posArray.get(i2);
                            if (groupedMessagePosition != position) {
                                byte b2 = groupedMessagePosition.minY;
                                byte b3 = position.minY;
                                if (b2 <= b3 && groupedMessagePosition.maxY >= b3) {
                                    return true;
                                }
                            }
                        }
                    }
                }
                return false;
            }

            @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
                if (BuildVars.DEBUG_PRIVATE_VERSION) {
                    super.onLayoutChildren(recycler, state);
                    return;
                }
                try {
                    super.onLayoutChildren(recycler, state);
                } catch (Exception e) {
                    FileLog.m1136e(e);
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$10$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onLayoutChildren$0();
                        }
                    });
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onLayoutChildren$0() {
                Page.this.adapter.notifyDataSetChanged();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1() {
            switchToQuote(true, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(View view) {
            MessagePreviewView.this.messagePreviewParams.quote = null;
            this.textSelectionHelper.clear();
            switchToQuote(false, false);
            this.menu.getSwipeBack().closeForeground();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(View view) {
            if (getReplyMessage() != null) {
                TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper = this.textSelectionHelper;
                if (chatListTextSelectionHelper.selectionEnd - chatListTextSelectionHelper.selectionStart > MessagesController.getInstance(MessagePreviewView.this.currentAccount).quoteLengthMax) {
                    showQuoteLengthError();
                    return;
                }
                MessageObject replyMessage = getReplyMessage(this.textSelectionHelper.getSelectedCell() != null ? ((ChatMessageCell) this.textSelectionHelper.getSelectedCell()).getMessageObject() : null);
                MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
                TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper2 = this.textSelectionHelper;
                int i = chatListTextSelectionHelper2.selectionStart;
                messagePreviewParams.quoteStart = i;
                int i2 = chatListTextSelectionHelper2.selectionEnd;
                messagePreviewParams.quoteEnd = i2;
                messagePreviewParams.quote = ChatActivity.ReplyQuote.from(replyMessage, i, i2);
                MessagePreviewView.this.onQuoteSelectedPart();
                MessagePreviewView.this.dismiss(true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4(View view) {
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            MessagePreviewParams messagePreviewParams = messagePreviewView.messagePreviewParams;
            if (messagePreviewParams.quote != null && !messagePreviewView.showOutdatedQuote) {
                messagePreviewParams.quote = null;
                this.textSelectionHelper.clear();
                switchToQuote(false, true);
                updateSubtitle(true);
                return;
            }
            TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper = this.textSelectionHelper;
            if (chatListTextSelectionHelper.selectionEnd - chatListTextSelectionHelper.selectionStart > MessagesController.getInstance(messagePreviewView.currentAccount).quoteLengthMax) {
                showQuoteLengthError();
                return;
            }
            MessageObject replyMessage = getReplyMessage();
            if (replyMessage != null) {
                if (this.textSelectionHelper.isInSelectionMode()) {
                    MessagePreviewParams messagePreviewParams2 = MessagePreviewView.this.messagePreviewParams;
                    TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper2 = this.textSelectionHelper;
                    messagePreviewParams2.quoteStart = chatListTextSelectionHelper2.selectionStart;
                    messagePreviewParams2.quoteEnd = chatListTextSelectionHelper2.selectionEnd;
                    MessageObject replyMessage2 = getReplyMessage(chatListTextSelectionHelper2.getSelectedCell() != null ? ((ChatMessageCell) this.textSelectionHelper.getSelectedCell()).getMessageObject() : null);
                    MessagePreviewParams messagePreviewParams3 = MessagePreviewView.this.messagePreviewParams;
                    messagePreviewParams3.quote = ChatActivity.ReplyQuote.from(replyMessage2, messagePreviewParams3.quoteStart, messagePreviewParams3.quoteEnd);
                    MessagePreviewView.this.onQuoteSelectedPart();
                    MessagePreviewView.this.dismiss(true);
                    return;
                }
                MessagePreviewView messagePreviewView2 = MessagePreviewView.this;
                MessagePreviewParams messagePreviewParams4 = messagePreviewView2.messagePreviewParams;
                messagePreviewParams4.quoteStart = 0;
                messagePreviewParams4.quoteEnd = Math.min(MessagesController.getInstance(messagePreviewView2.currentAccount).quoteLengthMax, replyMessage.messageOwner.message.length());
                MessagePreviewParams messagePreviewParams5 = MessagePreviewView.this.messagePreviewParams;
                messagePreviewParams5.quote = ChatActivity.ReplyQuote.from(replyMessage, messagePreviewParams5.quoteStart, messagePreviewParams5.quoteEnd);
                TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper3 = this.textSelectionHelper;
                ChatMessageCell replyMessageCell = getReplyMessageCell();
                MessagePreviewParams messagePreviewParams6 = MessagePreviewView.this.messagePreviewParams;
                chatListTextSelectionHelper3.select(replyMessageCell, messagePreviewParams6.quoteStart, messagePreviewParams6.quoteEnd);
                if (!MessagePreviewView.this.showOutdatedQuote) {
                    this.menu.getSwipeBack().openForeground(this.menuBack);
                }
                switchToQuote(true, true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$5(View view) {
            MessagePreviewView.this.selectAnotherChat(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$6(View view) {
            MessagePreviewView.this.selectAnotherChat(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$7(View view) {
            MessagePreviewView.this.dismiss(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$8(View view) {
            MessagePreviewView.this.viewInChat();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$9(View view) {
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            if (messagePreviewView.showOutdatedQuote) {
                messagePreviewView.removeQuote();
            } else {
                messagePreviewView.removeReply();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$10(View view) {
            MessagePreviewView.this.selectAnotherChat(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$11(View view) {
            MessagePreviewView.this.dismiss(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$12(View view) {
            MessagePreviewView.this.didSendPressed();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$13(View view) {
            MessagePreviewView.this.removeForward();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$14(ToggleButton toggleButton, ToggleButton toggleButton2, View view) {
            MessagePreviewView.this.setForwardParams(!r5.isForwardNoQuote());
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            messagePreviewView.returnSendersNames = false;
            if (!messagePreviewView.isForwardNoQuote()) {
                MessagePreviewView.this.messagePreviewParams.hideCaption = false;
                if (toggleButton != null) {
                    toggleButton.setState(false, true);
                }
            }
            toggleButton2.setState(MessagePreviewView.this.isForwardNoQuote(), true);
            updateMessages();
            updateSubtitle(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$15(ToggleButton toggleButton, ToggleButton toggleButton2, View view) {
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            MessagePreviewParams messagePreviewParams = messagePreviewView.messagePreviewParams;
            boolean z = messagePreviewParams.hideCaption;
            messagePreviewParams.hideCaption = !z;
            if (!z) {
                if (!messagePreviewView.isForwardNoQuote()) {
                    MessagePreviewView.this.setForwardParams(true);
                    MessagePreviewView.this.returnSendersNames = true;
                }
            } else {
                if (messagePreviewView.returnSendersNames) {
                    messagePreviewView.setForwardParams(false);
                }
                MessagePreviewView.this.returnSendersNames = false;
            }
            toggleButton.setState(MessagePreviewView.this.messagePreviewParams.hideCaption, true);
            toggleButton2.setState(MessagePreviewView.this.isForwardNoQuote(), true);
            updateMessages();
            updateSubtitle(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$16(View view) {
            MessagePreviewView.this.dismiss(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$17(View view) {
            MessagePreviewView.this.removeLink();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$18(View view) {
            TLRPC.Message message;
            TLRPC.MessageMedia messageMedia;
            TLRPC.Message message2;
            TLRPC.MessageMedia messageMedia2;
            MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
            if (messagePreviewParams.hasMedia) {
                boolean z = !messagePreviewParams.webpageSmall;
                messagePreviewParams.webpageSmall = z;
                this.changeSizeBtn.setState(z, true);
                this.videoChangeSizeBtn.setState(MessagePreviewView.this.messagePreviewParams.webpageSmall, true);
                if (this.messages.messages.size() > 0 && (message2 = this.messages.messages.get(0).messageOwner) != null && (messageMedia2 = message2.media) != null) {
                    boolean z2 = MessagePreviewView.this.messagePreviewParams.webpageSmall;
                    messageMedia2.force_small_media = z2;
                    messageMedia2.force_large_media = !z2;
                }
                if (this.messages.previewMessages.size() > 0 && (message = this.messages.previewMessages.get(0).messageOwner) != null && (messageMedia = message.media) != null) {
                    boolean z3 = MessagePreviewView.this.messagePreviewParams.webpageSmall;
                    messageMedia.force_small_media = z3;
                    messageMedia.force_large_media = !z3;
                }
                updateMessages();
                this.updateScroll = true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$19(View view) {
            TLRPC.Message message;
            TLRPC.Message message2;
            MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
            boolean z = messagePreviewParams.webpageTop;
            messagePreviewParams.webpageTop = !z;
            this.changePositionBtn.setState(z, true);
            if (this.messages.messages.size() > 0 && (message2 = this.messages.messages.get(0).messageOwner) != null) {
                message2.invert_media = MessagePreviewView.this.messagePreviewParams.webpageTop;
            }
            if (this.messages.previewMessages.size() > 0 && (message = this.messages.previewMessages.get(0).messageOwner) != null) {
                message.invert_media = MessagePreviewView.this.messagePreviewParams.webpageTop;
            }
            updateMessages();
            this.updateScroll = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void checkScroll() {
            if (this.updateScroll) {
                if (this.chatListView.computeVerticalScrollRange() > this.chatListView.computeVerticalScrollExtent()) {
                    postDelayed(new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda23
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$checkScroll$20();
                        }
                    }, 0L);
                }
                this.updateScroll = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$checkScroll$20() {
            if (MessagePreviewView.this.messagePreviewParams.webpageTop) {
                RecyclerListView recyclerListView = this.chatListView;
                recyclerListView.smoothScrollBy(0, -recyclerListView.computeVerticalScrollOffset(), 250, ChatListItemAnimator.DEFAULT_INTERPOLATOR);
            } else {
                RecyclerListView recyclerListView2 = this.chatListView;
                recyclerListView2.smoothScrollBy(0, recyclerListView2.computeVerticalScrollRange() - (this.chatListView.computeVerticalScrollOffset() + this.chatListView.computeVerticalScrollExtent()), 250, ChatListItemAnimator.DEFAULT_INTERPOLATOR);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void showQuoteLengthError() {
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            BulletinFactory.m1245of(messagePreviewView, messagePreviewView.resourcesProvider).createSimpleBulletin(C2888R.raw.error, LocaleController.getString(C2888R.string.QuoteMaxError), LocaleController.getString(C2888R.string.QuoteMaxErrorMessage)).show();
        }

        public void bind() {
            updateMessages();
            updateSubtitle(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateSubtitle(boolean z) {
            String string;
            int i = this.currentTab;
            if (i != 1) {
                if (i != 0) {
                    if (i == 2) {
                        this.actionBar.setTitle(LocaleController.getString(C2888R.string.MessageOptionsLinkTitle), z);
                        this.actionBar.setSubtitle(LocaleController.getString(C2888R.string.MessageOptionsLinkSubtitle), z);
                        return;
                    }
                    return;
                }
                MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
                if (messagePreviewParams.quote != null && messagePreviewParams.replyMessage.hasText) {
                    this.actionBar.setTitle(LocaleController.getString(C2888R.string.PreviewQuoteUpdate), z);
                    this.actionBar.setSubtitle(LocaleController.getString(C2888R.string.PreviewQuoteUpdateSubtitle), z);
                    return;
                } else {
                    this.actionBar.setTitle(LocaleController.getString(C2888R.string.MessageOptionsReplyTitle), z);
                    this.actionBar.setSubtitle(MessagePreviewView.this.messagePreviewParams.replyMessage.hasText ? LocaleController.getString(C2888R.string.MessageOptionsReplySubtitle) : _UrlKt.FRAGMENT_ENCODE_SET, z);
                    return;
                }
            }
            ActionBar actionBar = this.actionBar;
            MessagePreviewParams.Messages messages = MessagePreviewView.this.messagePreviewParams.forwardMessages;
            actionBar.setTitle(LocaleController.formatPluralString("PreviewForwardMessagesCount", messages == null ? 0 : messages.selectedIds.size(), new Object[0]), z);
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            MessagePreviewParams messagePreviewParams2 = messagePreviewView.messagePreviewParams;
            if (!messagePreviewParams2.hasSenders) {
                if (messagePreviewParams2.willSeeSenders) {
                    TLRPC.User user = messagePreviewView.currentUser;
                    if (user != null) {
                        string = LocaleController.formatString("ForwardPreviewSendersNameVisible", C2888R.string.ForwardPreviewSendersNameVisible, ContactsController.formatName(user.first_name, user.last_name));
                    } else if (ChatObject.isChannel(messagePreviewView.currentChat) && !MessagePreviewView.this.currentChat.megagroup) {
                        string = LocaleController.getString(C2888R.string.ForwardPreviewSendersNameVisibleChannel);
                    } else {
                        string = LocaleController.getString(C2888R.string.ForwardPreviewSendersNameVisibleGroup);
                    }
                } else {
                    TLRPC.User user2 = messagePreviewView.currentUser;
                    if (user2 != null) {
                        string = LocaleController.formatString("ForwardPreviewSendersNameVisible", C2888R.string.ForwardPreviewSendersNameVisible, ContactsController.formatName(user2.first_name, user2.last_name));
                    } else if (ChatObject.isChannel(messagePreviewView.currentChat) && !MessagePreviewView.this.currentChat.megagroup) {
                        string = LocaleController.getString(C2888R.string.ForwardPreviewSendersNameHiddenChannel);
                    } else {
                        string = LocaleController.getString(C2888R.string.ForwardPreviewSendersNameHiddenGroup);
                    }
                }
            } else if (!messagePreviewParams2.hideForwardSendersName) {
                TLRPC.User user3 = messagePreviewView.currentUser;
                if (user3 != null) {
                    string = LocaleController.formatString("ForwardPreviewSendersNameVisible", C2888R.string.ForwardPreviewSendersNameVisible, ContactsController.formatName(user3.first_name, user3.last_name));
                } else if (ChatObject.isChannel(messagePreviewView.currentChat) && !MessagePreviewView.this.currentChat.megagroup) {
                    string = LocaleController.getString(C2888R.string.ForwardPreviewSendersNameVisibleChannel);
                } else {
                    string = LocaleController.getString(C2888R.string.ForwardPreviewSendersNameVisibleGroup);
                }
            } else {
                TLRPC.User user4 = messagePreviewView.currentUser;
                if (user4 != null) {
                    string = LocaleController.formatString("ForwardPreviewSendersNameHidden", C2888R.string.ForwardPreviewSendersNameHidden, ContactsController.formatName(user4.first_name, user4.last_name));
                } else if (ChatObject.isChannel(messagePreviewView.currentChat) && !MessagePreviewView.this.currentChat.megagroup) {
                    string = LocaleController.getString(C2888R.string.ForwardPreviewSendersNameHiddenChannel);
                } else {
                    string = LocaleController.getString(C2888R.string.ForwardPreviewSendersNameHiddenGroup);
                }
            }
            this.actionBar.setSubtitle(string, z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateMessages() {
            TLRPC.Message message;
            TLRPC.MessageMedia messageMedia;
            if (this.itemAnimator.isRunning()) {
                this.updateAfterAnimations = true;
                return;
            }
            for (int i = 0; i < this.messages.previewMessages.size(); i++) {
                MessageObject messageObject = this.messages.previewMessages.get(i);
                messageObject.forceUpdate = true;
                MessagePreviewView messagePreviewView = MessagePreviewView.this;
                messageObject.sendAsPeer = messagePreviewView.sendAsPeer;
                MessagePreviewParams messagePreviewParams = messagePreviewView.messagePreviewParams;
                if (!messagePreviewParams.hideForwardSendersName) {
                    messageObject.messageOwner.flags |= 4;
                    messageObject.hideSendersName = false;
                } else {
                    messageObject.messageOwner.flags &= -5;
                    messageObject.hideSendersName = true;
                }
                if (this.currentTab == 2) {
                    TLRPC.WebPage webPage = messagePreviewParams.webpage;
                    if (webPage != null && ((messageMedia = (message = messageObject.messageOwner).media) == null || messageMedia.webpage != webPage)) {
                        message.flags |= 512;
                        message.media = new TLRPC.TL_messageMediaWebPage();
                        TLRPC.MessageMedia messageMedia2 = messageObject.messageOwner.media;
                        MessagePreviewParams messagePreviewParams2 = MessagePreviewView.this.messagePreviewParams;
                        messageMedia2.webpage = messagePreviewParams2.webpage;
                        boolean z = messagePreviewParams2.webpageSmall;
                        messageMedia2.force_large_media = !z;
                        messageMedia2.force_small_media = z;
                        messageMedia2.manual = true;
                        messageObject.linkDescription = null;
                        messageObject.generateLinkDescription();
                        messageObject.photoThumbs = null;
                        messageObject.photoThumbs2 = null;
                        messageObject.photoThumbsObject = null;
                        messageObject.photoThumbsObject2 = null;
                        messageObject.generateThumbs(true);
                        messageObject.checkMediaExistance();
                    } else if (webPage == null) {
                        TLRPC.Message message2 = messageObject.messageOwner;
                        message2.flags &= -513;
                        message2.media = null;
                    }
                }
                if (MessagePreviewView.this.messagePreviewParams.hideCaption) {
                    messageObject.caption = null;
                } else {
                    messageObject.generateCaption();
                }
                if (messageObject.isPoll()) {
                    MessagePreviewParams.PreviewMediaPoll previewMediaPoll = (MessagePreviewParams.PreviewMediaPoll) messageObject.messageOwner.media;
                    previewMediaPoll.results.total_voters = MessagePreviewView.this.messagePreviewParams.hideCaption ? 0 : previewMediaPoll.totalVotersCached;
                }
            }
            for (int i2 = 0; i2 < this.messages.pollChosenAnswers.size(); i2++) {
                this.messages.pollChosenAnswers.get(i2).chosen = !MessagePreviewView.this.messagePreviewParams.hideForwardSendersName;
            }
            for (int i3 = 0; i3 < this.messages.groupedMessagesMap.size(); i3++) {
                this.itemAnimator.groupWillChanged(this.messages.groupedMessagesMap.valueAt(i3));
            }
            final RecyclerView.ItemAnimator itemAnimator = this.chatListView.getItemAnimator();
            this.chatListView.setItemAnimator(null);
            this.adapter.notifyItemRangeChanged(0, this.messages.previewMessages.size());
            this.chatListView.post(new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateMessages$21(itemAnimator);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateMessages$21(RecyclerView.ItemAnimator itemAnimator) {
            if (this.chatListView.getItemAnimator() == null) {
                this.chatListView.setItemAnimator(itemAnimator);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            MessagePreviewView.this.isLandscapeMode = View.MeasureSpec.getSize(i) > View.MeasureSpec.getSize(i2);
            this.buttonsHeight = 0;
            this.menu.measure(i, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 0));
            int i3 = this.buttonsHeight;
            int measuredHeight = this.menu.getMeasuredHeight();
            Rect rect = this.rect;
            this.buttonsHeight = Math.max(i3, measuredHeight + rect.top + rect.bottom);
            ((ViewGroup.MarginLayoutParams) this.chatListView.getLayoutParams()).topMargin = org.telegram.p029ui.ActionBar.ActionBar.getCurrentActionBarHeight();
            if (MessagePreviewView.this.isLandscapeMode) {
                this.chatPreviewContainer.getLayoutParams().height = -1;
                ((ViewGroup.MarginLayoutParams) this.chatPreviewContainer.getLayoutParams()).topMargin = AndroidUtilities.m1124dp(8.0f);
                ((ViewGroup.MarginLayoutParams) this.chatPreviewContainer.getLayoutParams()).bottomMargin = AndroidUtilities.m1124dp(8.0f);
                this.chatPreviewContainer.getLayoutParams().width = (int) Math.min(View.MeasureSpec.getSize(i), Math.max(AndroidUtilities.m1124dp(340.0f), View.MeasureSpec.getSize(i) * 0.6f));
                this.menu.getLayoutParams().height = -1;
            } else {
                ((ViewGroup.MarginLayoutParams) this.chatPreviewContainer.getLayoutParams()).topMargin = 0;
                ((ViewGroup.MarginLayoutParams) this.chatPreviewContainer.getLayoutParams()).bottomMargin = 0;
                this.chatPreviewContainer.getLayoutParams().height = (View.MeasureSpec.getSize(i2) - AndroidUtilities.m1124dp(6.0f)) - this.buttonsHeight;
                if (this.chatPreviewContainer.getLayoutParams().height < View.MeasureSpec.getSize(i2) * 0.5f) {
                    this.chatPreviewContainer.getLayoutParams().height = (int) (View.MeasureSpec.getSize(i2) * 0.5f);
                }
                this.chatPreviewContainer.getLayoutParams().width = -1;
                this.menu.getLayoutParams().height = View.MeasureSpec.getSize(i2) - this.chatPreviewContainer.getLayoutParams().height;
            }
            int size = (View.MeasureSpec.getSize(i) + View.MeasureSpec.getSize(i2)) << 16;
            if (this.lastSize != size) {
                for (int i4 = 0; i4 < this.messages.previewMessages.size(); i4++) {
                    if (MessagePreviewView.this.isLandscapeMode) {
                        this.messages.previewMessages.get(i4).parentWidth = this.chatPreviewContainer.getLayoutParams().width;
                    } else {
                        this.messages.previewMessages.get(i4).parentWidth = View.MeasureSpec.getSize(i) - AndroidUtilities.m1124dp(16.0f);
                    }
                    this.messages.previewMessages.get(i4).resetLayout();
                    this.messages.previewMessages.get(i4).forceUpdate = true;
                    Adapter adapter = this.adapter;
                    if (adapter != null) {
                        adapter.notifyDataSetChanged();
                    }
                }
                this.firstLayout = true;
            }
            this.lastSize = size;
            super.onMeasure(i, i2);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            updatePositions();
            this.firstLayout = false;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            updateSelection();
            this.firstAttach = true;
            this.firstLayout = true;
        }

        public void updateSelection() {
            MessageObject messageObject;
            if (this.currentTab == 0) {
                TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper = this.textSelectionHelper;
                if (chatListTextSelectionHelper.selectionEnd - chatListTextSelectionHelper.selectionStart > MessagesController.getInstance(MessagePreviewView.this.currentAccount).quoteLengthMax) {
                    return;
                }
                MessageObject replyMessage = getReplyMessage(this.textSelectionHelper.getSelectedCell() != null ? ((ChatMessageCell) this.textSelectionHelper.getSelectedCell()).getMessageObject() : null);
                if (MessagePreviewView.this.messagePreviewParams.quote != null && this.textSelectionHelper.isInSelectionMode()) {
                    MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
                    TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper2 = this.textSelectionHelper;
                    messagePreviewParams.quoteStart = chatListTextSelectionHelper2.selectionStart;
                    messagePreviewParams.quoteEnd = chatListTextSelectionHelper2.selectionEnd;
                    if (replyMessage != null && ((messageObject = messagePreviewParams.quote.message) == null || messageObject.getId() != replyMessage.getId())) {
                        MessagePreviewParams messagePreviewParams2 = MessagePreviewView.this.messagePreviewParams;
                        messagePreviewParams2.quote = ChatActivity.ReplyQuote.from(replyMessage, messagePreviewParams2.quoteStart, messagePreviewParams2.quoteEnd);
                        MessagePreviewView.this.onQuoteSelectedPart();
                    }
                }
                this.textSelectionHelper.clear();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.currentTab == 0) {
                AndroidUtilities.forEachViews((RecyclerView) this.chatListView, new Consumer() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda22
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$onAttachedToWindow$22((View) obj);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAttachedToWindow$22(View view) {
            this.adapter.onViewAttachedToWindow(this.chatListView.getChildViewHolder(view));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updatePositions() {
            final int i = this.chatTopOffset;
            final float f = this.yOffset;
            if (!MessagePreviewView.this.isLandscapeMode) {
                int measuredHeight = this.chatListView.getMeasuredHeight();
                int i2 = 0;
                for (int i3 = 0; i3 < this.chatListView.getChildCount(); i3++) {
                    View childAt = this.chatListView.getChildAt(i3);
                    if (this.chatListView.getChildAdapterPosition(childAt) != -1) {
                        measuredHeight = Math.min(measuredHeight, childAt.getTop());
                        i2++;
                    }
                }
                MessagePreviewParams.Messages messages = this.messages;
                if (messages == null || i2 == 0 || i2 > messages.previewMessages.size()) {
                    this.chatTopOffset = 0;
                } else {
                    int iMax = Math.max(0, measuredHeight - AndroidUtilities.m1124dp(4.0f));
                    this.chatTopOffset = iMax;
                    this.chatTopOffset = Math.min((iMax + (this.chatListView.getMeasuredHeight() - this.chatTopOffset)) - ((int) ((((AndroidUtilities.displaySize.y - (Build.VERSION.SDK_INT >= 35 ? AndroidUtilities.navigationBarHeight : 0)) * 0.8f) - this.buttonsHeight) - AndroidUtilities.m1124dp(8.0f))), this.chatTopOffset);
                }
                float fM1124dp = (AndroidUtilities.m1124dp(8.0f) + (((getMeasuredHeight() - AndroidUtilities.m1124dp(16.0f)) - ((this.buttonsHeight - AndroidUtilities.m1124dp(8.0f)) + (this.chatPreviewContainer.getMeasuredHeight() - this.chatTopOffset))) / 2.0f)) - this.chatTopOffset;
                this.yOffset = fM1124dp;
                if (fM1124dp > AndroidUtilities.m1124dp(8.0f)) {
                    this.yOffset = AndroidUtilities.m1124dp(8.0f);
                }
                this.menu.setTranslationX(getMeasuredWidth() - this.menu.getMeasuredWidth());
            } else {
                this.yOffset = 0.0f;
                this.chatTopOffset = 0;
                this.menu.setTranslationX(this.chatListView.getMeasuredWidth() + AndroidUtilities.m1124dp(8.0f));
            }
            boolean z = this.firstLayout;
            if (z || (this.chatTopOffset == i && this.yOffset == f)) {
                if (z) {
                    float f2 = this.yOffset;
                    this.currentYOffset = f2;
                    int i4 = this.chatTopOffset;
                    this.currentTopOffset = i4;
                    setOffset(f2, i4);
                    return;
                }
                return;
            }
            ValueAnimator valueAnimator = MessagePreviewView.this.offsetsAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            MessagePreviewView.this.offsetsAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);
            MessagePreviewView.this.offsetsAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda21
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$updatePositions$23(i, f, valueAnimator2);
                }
            });
            MessagePreviewView.this.offsetsAnimator.setDuration(250L);
            MessagePreviewView.this.offsetsAnimator.setInterpolator(ChatListItemAnimator.DEFAULT_INTERPOLATOR);
            MessagePreviewView.this.offsetsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.15
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    Page page = Page.this;
                    MessagePreviewView.this.offsetsAnimator = null;
                    page.setOffset(page.yOffset, page.chatTopOffset);
                }
            });
            AndroidUtilities.runOnUIThread(MessagePreviewView.this.changeBoundsRunnable, 50L);
            this.currentTopOffset = i;
            this.currentYOffset = f;
            setOffset(f, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updatePositions$23(int i, float f, ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            float f2 = 1.0f - fFloatValue;
            int i2 = (int) ((i * f2) + (this.chatTopOffset * fFloatValue));
            this.currentTopOffset = i2;
            float f3 = (f * f2) + (this.yOffset * fFloatValue);
            this.currentYOffset = f3;
            setOffset(f3, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOffset(float f, int i) {
            if (MessagePreviewView.this.isLandscapeMode) {
                this.actionBar.setTranslationY(0.0f);
                this.chatPreviewContainer.invalidateOutline();
                this.chatPreviewContainer.setTranslationY(0.0f);
                this.menu.setTranslationY(0.0f);
            } else {
                this.actionBar.setTranslationY(i);
                this.chatPreviewContainer.invalidateOutline();
                this.chatPreviewContainer.setTranslationY(f);
                this.menu.setTranslationY((f + this.chatPreviewContainer.getMeasuredHeight()) - AndroidUtilities.m1124dp(2.0f));
            }
            this.textSelectionOverlay.setTranslationX(this.chatPreviewContainer.getX());
            this.textSelectionOverlay.setTranslationY(this.chatPreviewContainer.getY());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateLinkHighlight(ChatMessageCell chatMessageCell) {
            CharacterStyle characterStyle;
            TLRPC.WebPage webPage;
            if (this.currentTab == 2) {
                MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
                if (!messagePreviewParams.singleLink && (characterStyle = messagePreviewParams.currentLink) != null && (webPage = messagePreviewParams.webpage) != null && !(webPage instanceof TLRPC.TL_webPagePending)) {
                    chatMessageCell.setHighlightedSpan(characterStyle);
                    return;
                }
            }
            chatMessageCell.setHighlightedSpan(null);
        }

        private class Adapter extends RecyclerView.Adapter {
            private Adapter() {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                Context context = viewGroup.getContext();
                int i2 = MessagePreviewView.this.currentAccount;
                Page page = Page.this;
                ChatMessageCell chatMessageCell = new ChatMessageCell(context, i2, false, page.sharedResources, MessagePreviewView.this.resourcesProvider) { // from class: org.telegram.ui.Components.MessagePreviewView.Page.Adapter.1
                    @Override // org.telegram.p029ui.Cells.ChatMessageCell, org.telegram.p029ui.Cells.BaseCell, android.view.View
                    public void invalidate() {
                        super.invalidate();
                        Page.this.chatListView.invalidate();
                    }

                    @Override // org.telegram.p029ui.Cells.ChatMessageCell, android.view.View
                    public void invalidate(int i3, int i4, int i5, int i6) {
                        super.invalidate(i3, i4, i5, i6);
                        Page.this.chatListView.invalidate();
                    }

                    @Override // org.telegram.p029ui.Cells.ChatMessageCell
                    public void setMessageObject(MessageObject messageObject, MessageObject.GroupedMessages groupedMessages, boolean z, boolean z2, boolean z3, boolean z4) {
                        MessageObject messageObject2 = getMessageObject();
                        boolean z5 = messageObject2 != null && messageObject != null && messageObject2.getId() == messageObject.getId() && messageObject.preview && messageObject.isAnyKindOfSticker() && !ExteraConfig.hideStickerTime;
                        float timeAlpha = getTimeAlpha();
                        super.setMessageObject(messageObject, groupedMessages, z, z2, z3, z4);
                        if (z5) {
                            getTransitionParams().resetAnimation();
                            if (timeAlpha == 0.0f) {
                                timeAlpha = 1.0f;
                            }
                            setTimeAlpha(timeAlpha);
                        }
                        Page.this.updateLinkHighlight(this);
                    }

                    @Override // org.telegram.p029ui.Cells.ChatMessageCell, android.view.ViewGroup, android.view.View
                    protected void onLayout(boolean z, int i3, int i4, int i5, int i6) {
                        super.onLayout(z, i3, i4, i5, i6);
                        Page.this.updateLinkHighlight(this);
                    }
                };
                chatMessageCell.setClipChildren(false);
                chatMessageCell.setClipToPadding(false);
                chatMessageCell.setDelegate(new ChatMessageCell.ChatMessageCellDelegate() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.Adapter.2
                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean canDrawOutboundsContent() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$canDrawOutboundsContent(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean canPerformReply() {
                        return canPerformActions();
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didLongPress(ChatMessageCell chatMessageCell2, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPress(this, chatMessageCell2, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didLongPressBotButton(ChatMessageCell chatMessageCell2, TLRPC.KeyboardButton keyboardButton) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressBotButton(this, chatMessageCell2, keyboardButton);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean didLongPressChannelAvatar(ChatMessageCell chatMessageCell2, TLRPC.Chat chat, int i3, float f, float f2) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressChannelAvatar(this, chatMessageCell2, chat, i3, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didLongPressCustomBotButton(ChatMessageCell chatMessageCell2, BotInlineKeyboard.ButtonCustom buttonCustom) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressCustomBotButton(this, chatMessageCell2, buttonCustom);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean didLongPressToDoButton(ChatMessageCell chatMessageCell2, TLRPC.TodoItem todoItem) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressToDoButton(this, chatMessageCell2, todoItem);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean didLongPressUserAvatar(ChatMessageCell chatMessageCell2, TLRPC.User user, float f, float f2) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressUserAvatar(this, chatMessageCell2, user, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressAboutRevenueSharingAds() {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAboutRevenueSharingAds(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressAdmin(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAdmin(this, chatMessageCell2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean didPressAnimatedEmoji(ChatMessageCell chatMessageCell2, AnimatedEmojiSpan animatedEmojiSpan) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAnimatedEmoji(this, chatMessageCell2, animatedEmojiSpan);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressBoostCounter(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressBoostCounter(this, chatMessageCell2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressBotButton(ChatMessageCell chatMessageCell2, TLRPC.KeyboardButton keyboardButton) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressBotButton(this, chatMessageCell2, keyboardButton);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressCancelSendButton(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCancelSendButton(this, chatMessageCell2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressChannelAvatar(ChatMessageCell chatMessageCell2, TLRPC.Chat chat, int i3, float f, float f2, boolean z) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelAvatar(this, chatMessageCell2, chat, i3, f, f2, z);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressChannelRecommendation(ChatMessageCell chatMessageCell2, TLObject tLObject, boolean z) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelRecommendation(this, chatMessageCell2, tLObject, z);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressChannelRecommendationsClose(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelRecommendationsClose(this, chatMessageCell2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressCodeCopy(ChatMessageCell chatMessageCell2, MessageObject.TextLayoutBlock textLayoutBlock) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCodeCopy(this, chatMessageCell2, textLayoutBlock);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressCommentButton(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCommentButton(this, chatMessageCell2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressCustomBotButton(ChatMessageCell chatMessageCell2, BotInlineKeyboard.ButtonCustom buttonCustom) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCustomBotButton(this, chatMessageCell2, buttonCustom);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressEffect(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressEffect(this, chatMessageCell2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressExtendedMediaPreview(ChatMessageCell chatMessageCell2, TLRPC.KeyboardButton keyboardButton) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressExtendedMediaPreview(this, chatMessageCell2, keyboardButton);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressFactCheck(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressFactCheck(this, chatMessageCell2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressFactCheckWhat(ChatMessageCell chatMessageCell2, int i3, int i4) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressFactCheckWhat(this, chatMessageCell2, i3, i4);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressGiveawayChatButton(ChatMessageCell chatMessageCell2, int i3) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressGiveawayChatButton(this, chatMessageCell2, i3);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressGroupImage(ChatMessageCell chatMessageCell2, ImageReceiver imageReceiver, TLRPC.MessageExtendedMedia messageExtendedMedia, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressGroupImage(this, chatMessageCell2, imageReceiver, messageExtendedMedia, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressHiddenForward(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHiddenForward(this, chatMessageCell2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressHint(ChatMessageCell chatMessageCell2, int i3) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHint(this, chatMessageCell2, i3);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressImage(ChatMessageCell chatMessageCell2, float f, float f2, boolean z) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressImage(this, chatMessageCell2, f, f2, z);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressInstantButton(ChatMessageCell chatMessageCell2, int i3) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressInstantButton(this, chatMessageCell2, i3);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressMoreChannelRecommendations(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressMoreChannelRecommendations(this, chatMessageCell2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressOther(ChatMessageCell chatMessageCell2, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressOther(this, chatMessageCell2, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressReaction(ChatMessageCell chatMessageCell2, TLRPC.ReactionCount reactionCount, boolean z, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReaction(this, chatMessageCell2, reactionCount, z, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressReplyMessage(ChatMessageCell chatMessageCell2, int i3, float f, float f2, boolean z) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReplyMessage(this, chatMessageCell2, i3, f, f2, z);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressRevealSensitiveContent(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressRevealSensitiveContent(this, chatMessageCell2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressSideButton(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSideButton(this, chatMessageCell2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressSponsoredClose(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSponsoredClose(this, chatMessageCell2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressSponsoredInfo(ChatMessageCell chatMessageCell2, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSponsoredInfo(this, chatMessageCell2, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressSummarize(ChatMessageCell chatMessageCell2, boolean z) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSummarize(this, chatMessageCell2, z);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressTime(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressTime(this, chatMessageCell2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean didPressToDoButton(ChatMessageCell chatMessageCell2, TLRPC.TodoItem todoItem, boolean z) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressToDoButton(this, chatMessageCell2, todoItem, z);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressUserAvatar(ChatMessageCell chatMessageCell2, TLRPC.User user, float f, float f2, boolean z) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserAvatar(this, chatMessageCell2, user, f, f2, z);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressUserStatus(ChatMessageCell chatMessageCell2, TLRPC.User user, TLRPC.Document document, String str) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserStatus(this, chatMessageCell2, user, document, str);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressViaBot(ChatMessageCell chatMessageCell2, String str) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBot(this, chatMessageCell2, str);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressViaBotNotInline(ChatMessageCell chatMessageCell2, long j) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBotNotInline(this, chatMessageCell2, j);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressVoteButtons(ChatMessageCell chatMessageCell2, ArrayList arrayList, int i3, int i4, int i5) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressVoteButtons(this, chatMessageCell2, arrayList, i3, i4, i5);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressWebPage(ChatMessageCell chatMessageCell2, TLRPC.WebPage webPage, String str, boolean z) {
                        Browser.openUrl(chatMessageCell2.getContext(), str);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didQuickShareEnd(ChatMessageCell chatMessageCell2, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didQuickShareEnd(this, chatMessageCell2, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didQuickShareMove(ChatMessageCell chatMessageCell2, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didQuickShareMove(this, chatMessageCell2, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didQuickShareStart(ChatMessageCell chatMessageCell2, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didQuickShareStart(this, chatMessageCell2, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didStartVideoStream(MessageObject messageObject) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didStartVideoStream(this, messageObject);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean doNotShowLoadingReply(MessageObject messageObject) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$doNotShowLoadingReply(this, messageObject);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void forceUpdate(ChatMessageCell chatMessageCell2, boolean z) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$forceUpdate(this, chatMessageCell2, z);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void forceUpdateNoAnimation(ChatMessageCell chatMessageCell2, boolean z) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$forceUpdateNoAnimation(this, chatMessageCell2, z);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ String getAdminRank(long j) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getAdminRank(this, j);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ PinchToZoomHelper getPinchToZoomHelper() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getPinchToZoomHelper(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ String getProgressLoadingBotButtonUrl(ChatMessageCell chatMessageCell2) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingBotButtonUrl(this, chatMessageCell2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public boolean hasSelectedMessages() {
                        return true;
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void invalidateBlur() {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$invalidateBlur(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean isAdmin(long j) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isAdmin(this, j);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean isLandscape() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isLandscape(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean isOwner(long j) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isOwner(this, j);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean isReplyOrSelf() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isReplyOrSelf(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean keyboardIsOpened() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$keyboardIsOpened(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void needOpenWebView(MessageObject messageObject, String str, String str2, String str3, String str4, int i3, int i4) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$needOpenWebView(this, messageObject, str, str2, str3, str4, i3, i4);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean needPlayMessage(ChatMessageCell chatMessageCell2, MessageObject messageObject, boolean z) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$needPlayMessage(this, chatMessageCell2, messageObject, z);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void needReloadPolls() {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$needReloadPolls(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void needShowPremiumBulletin(int i3) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$needShowPremiumBulletin(this, i3);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean onAccessibilityAction(int i3, Bundle bundle) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$onAccessibilityAction(this, i3, bundle);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void onDiceFinished() {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$onDiceFinished(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void setShouldNotRepeatSticker(MessageObject messageObject) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$setShouldNotRepeatSticker(this, messageObject);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean shouldDrawAvatarOnlineStatus(ChatMessageCell chatMessageCell2) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldDrawAvatarOnlineStatus(this, chatMessageCell2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean shouldDrawThreadProgress(ChatMessageCell chatMessageCell2, boolean z) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldDrawThreadProgress(this, chatMessageCell2, z);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean shouldRepeatSticker(MessageObject messageObject) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldRepeatSticker(this, messageObject);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void videoTimerReached() {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$videoTimerReached(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public TextSelectionHelper.ChatListTextSelectionHelper getTextSelectionHelper() {
                        return Page.this.textSelectionHelper;
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public boolean canPerformActions() {
                        Page page2 = Page.this;
                        if (page2.currentTab != 2) {
                            return false;
                        }
                        MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
                        return (messagePreviewParams.singleLink || messagePreviewParams.isSecret) ? false : true;
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public void didPressUrl(ChatMessageCell chatMessageCell2, CharacterStyle characterStyle, boolean z) {
                        Page page2 = Page.this;
                        if (page2.currentTab != 2 || MessagePreviewView.this.messagePreviewParams.currentLink == characterStyle || chatMessageCell2.getMessageObject() == null || !(characterStyle instanceof URLSpan)) {
                            return;
                        }
                        String url = ((URLSpan) characterStyle).getURL();
                        MessagePreviewView messagePreviewView = MessagePreviewView.this;
                        MessagePreviewParams messagePreviewParams = messagePreviewView.messagePreviewParams;
                        messagePreviewParams.currentLink = characterStyle;
                        messagePreviewParams.webpage = null;
                        ChatActivity chatActivity = messagePreviewView.chatActivity;
                        if (chatActivity != null && url != null) {
                            chatActivity.searchLinks(url, true);
                        }
                        Page.this.updateLinkHighlight(chatMessageCell2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public CharacterStyle getProgressLoadingLink(ChatMessageCell chatMessageCell2) {
                        Page page2 = Page.this;
                        if (page2.currentTab != 2) {
                            return null;
                        }
                        MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
                        if (messagePreviewParams.singleLink) {
                            return null;
                        }
                        return messagePreviewParams.currentLink;
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public boolean isProgressLoading(ChatMessageCell chatMessageCell2, int i3) {
                        Page page2 = Page.this;
                        if (page2.currentTab == 2 && i3 == 1) {
                            MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
                            if (!messagePreviewParams.singleLink) {
                                TLRPC.WebPage webPage = messagePreviewParams.webpage;
                                return webPage == null || (webPage instanceof TLRPC.TL_webPagePending);
                            }
                        }
                        return false;
                    }
                });
                return new RecyclerListView.Holder(chatMessageCell);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                MessagePreviewParams.Messages messages = Page.this.messages;
                if (messages == null) {
                    return;
                }
                ChatMessageCell chatMessageCell = (ChatMessageCell) viewHolder.itemView;
                chatMessageCell.setInvalidateSpoilersParent(messages.hasSpoilers);
                chatMessageCell.setParentViewSize(Page.this.chatListView.getMeasuredWidth(), Page.this.chatListView.getMeasuredHeight());
                int id = chatMessageCell.getMessageObject() != null ? chatMessageCell.getMessageObject().getId() : 0;
                Page page = Page.this;
                if (page.currentTab == 2) {
                    MessagePreviewView.this.messagePreviewParams.checkCurrentLink(page.messages.previewMessages.get(i));
                }
                MessageObject messageObject = Page.this.messages.previewMessages.get(i);
                MessagePreviewParams.Messages messages2 = Page.this.messages;
                chatMessageCell.setMessageObject(messageObject, messages2.groupedMessagesMap.get(messages2.previewMessages.get(i).getGroupId()), true, true, false);
                if (Page.this.currentTab == 1) {
                    chatMessageCell.setDelegate(new ChatMessageCell.ChatMessageCellDelegate() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.Adapter.3
                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean canDrawOutboundsContent() {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$canDrawOutboundsContent(this);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean canPerformActions() {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$canPerformActions(this);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean canPerformReply() {
                            return canPerformActions();
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didLongPress(ChatMessageCell chatMessageCell2, float f, float f2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPress(this, chatMessageCell2, f, f2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didLongPressBotButton(ChatMessageCell chatMessageCell2, TLRPC.KeyboardButton keyboardButton) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressBotButton(this, chatMessageCell2, keyboardButton);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean didLongPressChannelAvatar(ChatMessageCell chatMessageCell2, TLRPC.Chat chat, int i2, float f, float f2) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressChannelAvatar(this, chatMessageCell2, chat, i2, f, f2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didLongPressCustomBotButton(ChatMessageCell chatMessageCell2, BotInlineKeyboard.ButtonCustom buttonCustom) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressCustomBotButton(this, chatMessageCell2, buttonCustom);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean didLongPressToDoButton(ChatMessageCell chatMessageCell2, TLRPC.TodoItem todoItem) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressToDoButton(this, chatMessageCell2, todoItem);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean didLongPressUserAvatar(ChatMessageCell chatMessageCell2, TLRPC.User user, float f, float f2) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressUserAvatar(this, chatMessageCell2, user, f, f2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressAboutRevenueSharingAds() {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAboutRevenueSharingAds(this);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressAdmin(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAdmin(this, chatMessageCell2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean didPressAnimatedEmoji(ChatMessageCell chatMessageCell2, AnimatedEmojiSpan animatedEmojiSpan) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAnimatedEmoji(this, chatMessageCell2, animatedEmojiSpan);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressBoostCounter(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressBoostCounter(this, chatMessageCell2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressBotButton(ChatMessageCell chatMessageCell2, TLRPC.KeyboardButton keyboardButton) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressBotButton(this, chatMessageCell2, keyboardButton);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressCancelSendButton(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCancelSendButton(this, chatMessageCell2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressChannelAvatar(ChatMessageCell chatMessageCell2, TLRPC.Chat chat, int i2, float f, float f2, boolean z) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelAvatar(this, chatMessageCell2, chat, i2, f, f2, z);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressChannelRecommendation(ChatMessageCell chatMessageCell2, TLObject tLObject, boolean z) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelRecommendation(this, chatMessageCell2, tLObject, z);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressChannelRecommendationsClose(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelRecommendationsClose(this, chatMessageCell2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressCodeCopy(ChatMessageCell chatMessageCell2, MessageObject.TextLayoutBlock textLayoutBlock) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCodeCopy(this, chatMessageCell2, textLayoutBlock);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressCommentButton(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCommentButton(this, chatMessageCell2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressCustomBotButton(ChatMessageCell chatMessageCell2, BotInlineKeyboard.ButtonCustom buttonCustom) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCustomBotButton(this, chatMessageCell2, buttonCustom);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressEffect(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressEffect(this, chatMessageCell2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressExtendedMediaPreview(ChatMessageCell chatMessageCell2, TLRPC.KeyboardButton keyboardButton) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressExtendedMediaPreview(this, chatMessageCell2, keyboardButton);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressFactCheck(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressFactCheck(this, chatMessageCell2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressFactCheckWhat(ChatMessageCell chatMessageCell2, int i2, int i3) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressFactCheckWhat(this, chatMessageCell2, i2, i3);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressGiveawayChatButton(ChatMessageCell chatMessageCell2, int i2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressGiveawayChatButton(this, chatMessageCell2, i2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressGroupImage(ChatMessageCell chatMessageCell2, ImageReceiver imageReceiver, TLRPC.MessageExtendedMedia messageExtendedMedia, float f, float f2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressGroupImage(this, chatMessageCell2, imageReceiver, messageExtendedMedia, f, f2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressHiddenForward(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHiddenForward(this, chatMessageCell2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressHint(ChatMessageCell chatMessageCell2, int i2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHint(this, chatMessageCell2, i2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressImage(ChatMessageCell chatMessageCell2, float f, float f2, boolean z) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressImage(this, chatMessageCell2, f, f2, z);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressInstantButton(ChatMessageCell chatMessageCell2, int i2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressInstantButton(this, chatMessageCell2, i2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressMoreChannelRecommendations(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressMoreChannelRecommendations(this, chatMessageCell2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressOther(ChatMessageCell chatMessageCell2, float f, float f2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressOther(this, chatMessageCell2, f, f2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressReaction(ChatMessageCell chatMessageCell2, TLRPC.ReactionCount reactionCount, boolean z, float f, float f2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReaction(this, chatMessageCell2, reactionCount, z, f, f2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressReplyMessage(ChatMessageCell chatMessageCell2, int i2, float f, float f2, boolean z) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReplyMessage(this, chatMessageCell2, i2, f, f2, z);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressRevealSensitiveContent(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressRevealSensitiveContent(this, chatMessageCell2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressSideButton(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSideButton(this, chatMessageCell2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressSponsoredClose(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSponsoredClose(this, chatMessageCell2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressSponsoredInfo(ChatMessageCell chatMessageCell2, float f, float f2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSponsoredInfo(this, chatMessageCell2, f, f2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressSummarize(ChatMessageCell chatMessageCell2, boolean z) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSummarize(this, chatMessageCell2, z);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressTime(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressTime(this, chatMessageCell2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean didPressToDoButton(ChatMessageCell chatMessageCell2, TLRPC.TodoItem todoItem, boolean z) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressToDoButton(this, chatMessageCell2, todoItem, z);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressUrl(ChatMessageCell chatMessageCell2, CharacterStyle characterStyle, boolean z) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUrl(this, chatMessageCell2, characterStyle, z);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressUserAvatar(ChatMessageCell chatMessageCell2, TLRPC.User user, float f, float f2, boolean z) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserAvatar(this, chatMessageCell2, user, f, f2, z);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressUserStatus(ChatMessageCell chatMessageCell2, TLRPC.User user, TLRPC.Document document, String str) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserStatus(this, chatMessageCell2, user, document, str);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressViaBot(ChatMessageCell chatMessageCell2, String str) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBot(this, chatMessageCell2, str);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressViaBotNotInline(ChatMessageCell chatMessageCell2, long j) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBotNotInline(this, chatMessageCell2, j);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressVoteButtons(ChatMessageCell chatMessageCell2, ArrayList arrayList, int i2, int i3, int i4) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressVoteButtons(this, chatMessageCell2, arrayList, i2, i3, i4);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressWebPage(ChatMessageCell chatMessageCell2, TLRPC.WebPage webPage, String str, boolean z) {
                            Browser.openUrl(chatMessageCell2.getContext(), str);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didQuickShareEnd(ChatMessageCell chatMessageCell2, float f, float f2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didQuickShareEnd(this, chatMessageCell2, f, f2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didQuickShareMove(ChatMessageCell chatMessageCell2, float f, float f2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didQuickShareMove(this, chatMessageCell2, f, f2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didQuickShareStart(ChatMessageCell chatMessageCell2, float f, float f2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didQuickShareStart(this, chatMessageCell2, f, f2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didStartVideoStream(MessageObject messageObject2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didStartVideoStream(this, messageObject2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean doNotShowLoadingReply(MessageObject messageObject2) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$doNotShowLoadingReply(this, messageObject2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void forceUpdate(ChatMessageCell chatMessageCell2, boolean z) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$forceUpdate(this, chatMessageCell2, z);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void forceUpdateNoAnimation(ChatMessageCell chatMessageCell2, boolean z) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$forceUpdateNoAnimation(this, chatMessageCell2, z);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ String getAdminRank(long j) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getAdminRank(this, j);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ PinchToZoomHelper getPinchToZoomHelper() {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getPinchToZoomHelper(this);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ String getProgressLoadingBotButtonUrl(ChatMessageCell chatMessageCell2) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingBotButtonUrl(this, chatMessageCell2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ CharacterStyle getProgressLoadingLink(ChatMessageCell chatMessageCell2) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingLink(this, chatMessageCell2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ TextSelectionHelper.ChatListTextSelectionHelper getTextSelectionHelper() {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getTextSelectionHelper(this);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean hasSelectedMessages() {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$hasSelectedMessages(this);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void invalidateBlur() {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$invalidateBlur(this);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean isAdmin(long j) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isAdmin(this, j);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean isLandscape() {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isLandscape(this);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean isOwner(long j) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isOwner(this, j);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean isProgressLoading(ChatMessageCell chatMessageCell2, int i2) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isProgressLoading(this, chatMessageCell2, i2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean isReplyOrSelf() {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isReplyOrSelf(this);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean keyboardIsOpened() {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$keyboardIsOpened(this);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void needOpenWebView(MessageObject messageObject2, String str, String str2, String str3, String str4, int i2, int i3) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$needOpenWebView(this, messageObject2, str, str2, str3, str4, i2, i3);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean needPlayMessage(ChatMessageCell chatMessageCell2, MessageObject messageObject2, boolean z) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$needPlayMessage(this, chatMessageCell2, messageObject2, z);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void needReloadPolls() {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$needReloadPolls(this);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void needShowPremiumBulletin(int i2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$needShowPremiumBulletin(this, i2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean onAccessibilityAction(int i2, Bundle bundle) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$onAccessibilityAction(this, i2, bundle);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void onDiceFinished() {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$onDiceFinished(this);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void setShouldNotRepeatSticker(MessageObject messageObject2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$setShouldNotRepeatSticker(this, messageObject2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean shouldDrawAvatarOnlineStatus(ChatMessageCell chatMessageCell2) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldDrawAvatarOnlineStatus(this, chatMessageCell2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean shouldDrawThreadProgress(ChatMessageCell chatMessageCell2, boolean z) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldDrawThreadProgress(this, chatMessageCell2, z);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean shouldRepeatSticker(MessageObject messageObject2) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldRepeatSticker(this, messageObject2);
                        }

                        @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void videoTimerReached() {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$videoTimerReached(this);
                        }
                    });
                }
                if (Page.this.messages.previewMessages.size() > 1) {
                    chatMessageCell.setCheckBoxVisible(Page.this.currentTab == 1, false);
                    boolean z = id == Page.this.messages.previewMessages.get(i).getId();
                    MessagePreviewParams.Messages messages3 = Page.this.messages;
                    boolean z2 = messages3.selectedIds.get(messages3.previewMessages.get(i).getId(), false);
                    chatMessageCell.setChecked(z2, z2, z);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
                int i;
                Page page = Page.this;
                if (page.messages == null || (i = page.currentTab) == 1) {
                    return;
                }
                ChatMessageCell chatMessageCell = (ChatMessageCell) viewHolder.itemView;
                if (i == 0) {
                    MessageObject.GroupedMessages validGroupedMessage = page.getValidGroupedMessage(chatMessageCell.getMessageObject());
                    chatMessageCell.setDrawSelectionBackground(validGroupedMessage == null);
                    chatMessageCell.setChecked(true, validGroupedMessage == null, false);
                    Page page2 = Page.this;
                    MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
                    if (messagePreviewParams.isSecret || messagePreviewParams.quote == null || !page2.isReplyMessageCell(chatMessageCell) || Page.this.textSelectionHelper.isInSelectionMode()) {
                        return;
                    }
                    Page page3 = Page.this;
                    TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper = page3.textSelectionHelper;
                    MessagePreviewParams messagePreviewParams2 = MessagePreviewView.this.messagePreviewParams;
                    chatListTextSelectionHelper.select(chatMessageCell, messagePreviewParams2.quoteStart, messagePreviewParams2.quoteEnd);
                    if (Page.this.firstAttach) {
                        Page page4 = Page.this;
                        page4.scrollToOffset = offset(chatMessageCell, MessagePreviewView.this.messagePreviewParams.quoteStart);
                        Page.this.firstAttach = false;
                        return;
                    }
                    return;
                }
                chatMessageCell.setDrawSelectionBackground(false);
            }

            private int offset(ChatMessageCell chatMessageCell, int i) {
                MessageObject messageObject;
                int iM1124dp;
                ArrayList<MessageObject.TextLayoutBlock> arrayList;
                CharSequence charSequence;
                float lineTop;
                MessageObject.TextLayoutBlocks textLayoutBlocks;
                if (chatMessageCell == null || (messageObject = chatMessageCell.getMessageObject()) == null || messageObject.getGroupId() != 0) {
                    return 0;
                }
                if (!TextUtils.isEmpty(messageObject.caption) && (textLayoutBlocks = chatMessageCell.captionLayout) != null) {
                    iM1124dp = (int) chatMessageCell.captionY;
                    charSequence = messageObject.caption;
                    arrayList = textLayoutBlocks.textLayoutBlocks;
                } else {
                    chatMessageCell.layoutTextXY(true);
                    iM1124dp = chatMessageCell.textY;
                    CharSequence charSequence2 = messageObject.messageText;
                    ArrayList<MessageObject.TextLayoutBlock> arrayList2 = messageObject.textLayoutBlocks;
                    if (chatMessageCell.linkPreviewAbove) {
                        iM1124dp += chatMessageCell.linkPreviewHeight + AndroidUtilities.m1124dp(10.0f);
                    }
                    arrayList = arrayList2;
                    charSequence = charSequence2;
                }
                if (arrayList != null && charSequence != null) {
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        MessageObject.TextLayoutBlock textLayoutBlock = arrayList.get(i2);
                        String string = textLayoutBlock.textLayout.getText().toString();
                        int i3 = textLayoutBlock.charactersOffset;
                        if (i > i3) {
                            if (i - i3 > string.length() - 1) {
                                lineTop = iM1124dp + ((int) (textLayoutBlock.textYOffset(arrayList, chatMessageCell.transitionParams) + textLayoutBlock.padTop + textLayoutBlock.height));
                            } else {
                                lineTop = r6.getLineTop(r6.getLineForOffset(i - textLayoutBlock.charactersOffset)) + iM1124dp + textLayoutBlock.textYOffset(arrayList, chatMessageCell.transitionParams) + textLayoutBlock.padTop;
                            }
                            return (int) lineTop;
                        }
                    }
                }
                return 0;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                MessagePreviewParams.Messages messages = Page.this.messages;
                if (messages == null) {
                    return 0;
                }
                return messages.previewMessages.size();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MessageObject.GroupedMessages getValidGroupedMessage(MessageObject messageObject) {
            if (messageObject.getGroupId() == 0) {
                return null;
            }
            MessageObject.GroupedMessages groupedMessages = this.messages.groupedMessagesMap.get(messageObject.getGroupId());
            if (groupedMessages == null || (groupedMessages.messages.size() > 1 && groupedMessages.getPosition(messageObject) != null)) {
                return groupedMessages;
            }
            return null;
        }
    }

    public MessagePreviewView(final Context context, ChatActivity chatActivity, MessagePreviewParams messagePreviewParams, TLRPC.User user, TLRPC.Chat chat, int i, ResourcesDelegate resourcesDelegate, int i2, final boolean z) {
        super(context);
        this.forwardParams = new ForwardContext.ForwardParams();
        this.changeBoundsRunnable = new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView.1
            @Override // java.lang.Runnable
            public void run() {
                ValueAnimator valueAnimator = MessagePreviewView.this.offsetsAnimator;
                if (valueAnimator == null || valueAnimator.isRunning()) {
                    return;
                }
                MessagePreviewView.this.offsetsAnimator.start();
            }
        };
        this.drawingGroups = new ArrayList(10);
        this.showOutdatedQuote = z;
        this.chatActivity = chatActivity;
        this.currentAccount = i;
        this.currentUser = user;
        this.currentChat = chat;
        this.messagePreviewParams = messagePreviewParams;
        this.resourcesProvider = resourcesDelegate;
        setForwardParams(messagePreviewParams != null && messagePreviewParams.hideForwardSendersName);
        this.viewPager = new ViewPagerFixed(context, resourcesDelegate) { // from class: org.telegram.ui.Components.MessagePreviewView.2
            @Override // org.telegram.p029ui.Components.ViewPagerFixed
            public void onTabAnimationUpdate(boolean z2) {
                MessagePreviewView messagePreviewView = MessagePreviewView.this;
                messagePreviewView.tabsView.setSelectedTab(messagePreviewView.viewPager.getPositionAnimated());
                View view = this.viewPages[0];
                if (view instanceof Page) {
                    ((Page) view).textSelectionHelper.onParentScrolled();
                }
                View view2 = this.viewPages[1];
                if (view2 instanceof Page) {
                    ((Page) view2).textSelectionHelper.onParentScrolled();
                }
            }

            @Override // org.telegram.p029ui.Components.ViewPagerFixed
            protected void onScrollEnd() {
                View view = this.viewPages[0];
                if (view instanceof Page) {
                    ((Page) view).textSelectionHelper.stopScrolling();
                }
            }

            @Override // org.telegram.p029ui.Components.ViewPagerFixed, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (MessagePreviewView.this.isTouchedHandle()) {
                    return false;
                }
                return super.onTouchEvent(motionEvent);
            }
        };
        this.tabsView = new TabsView(context, resourcesDelegate);
        int size = 0;
        for (int i3 = 0; i3 < 3; i3++) {
            if (i3 == 0 && messagePreviewParams.replyMessage != null) {
                this.tabsView.addTab(0, LocaleController.getString(C2888R.string.MessageOptionsReply));
            } else if (i3 == 1 && messagePreviewParams.forwardMessages != null && !z) {
                this.tabsView.addTab(1, LocaleController.getString(C2888R.string.MessageOptionsForward));
            } else if (i3 == 2 && messagePreviewParams.linkMessage != null && !z) {
                this.tabsView.addTab(2, LocaleController.getString(C2888R.string.MessageOptionsLink));
            }
            if (i3 == i2) {
                size = this.tabsView.tabs.size() - 1;
            }
        }
        this.viewPager.setAdapter(new ViewPagerFixed.Adapter() { // from class: org.telegram.ui.Components.MessagePreviewView.3
            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public int getItemCount() {
                return MessagePreviewView.this.tabsView.tabs.size();
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public int getItemViewType(int i4) {
                return ((TabsView.Tab) MessagePreviewView.this.tabsView.tabs.get(i4)).f1977id;
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public View createView(int i4) {
                return MessagePreviewView.this.new Page(context, i4);
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public void bindView(View view, int i4, int i5) {
                ((Page) view).bind();
            }
        });
        this.viewPager.setPosition(size);
        this.tabsView.setSelectedTab(size);
        addView(this.tabsView, LayoutHelper.createFrame(-1, 66, 87));
        addView(this.viewPager, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, 0.0f, 0.0f, 66.0f));
        this.tabsView.setOnTabClick(new Utilities.Callback() { // from class: org.telegram.ui.Components.MessagePreviewView$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$0((Integer) obj);
            }
        });
        setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.MessagePreviewView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f$0.lambda$new$1(z, view, motionEvent);
            }
        });
        this.showing = true;
        setAlpha(0.0f);
        setScaleX(0.95f);
        setScaleY(0.95f);
        animate().alpha(1.0f).scaleX(1.0f).setDuration(250L).setInterpolator(ChatListItemAnimator.DEFAULT_INTERPOLATOR).scaleY(1.0f);
        updateColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Integer num) {
        if (((TabsView.Tab) this.tabsView.tabs.get(this.viewPager.getCurrentPosition())).f1977id == num.intValue()) {
            return;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= this.tabsView.tabs.size()) {
                break;
            }
            if (((TabsView.Tab) this.tabsView.tabs.get(i2)).f1977id == num.intValue()) {
                i = i2;
                break;
            }
            i2++;
        }
        if (this.viewPager.getCurrentPosition() == i) {
            return;
        }
        this.viewPager.scrollToPosition(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$1(boolean z, View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 && !z) {
            dismiss(true);
        }
        return true;
    }

    public void dismiss(final boolean z) {
        if (this.showing) {
            int i = 0;
            this.showing = false;
            animate().alpha(0.0f).scaleX(0.95f).scaleY(0.95f).setDuration(250L).setInterpolator(ChatListItemAnimator.DEFAULT_INTERPOLATOR).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.MessagePreviewView.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (MessagePreviewView.this.getParent() != null) {
                        ((ViewGroup) MessagePreviewView.this.getParent()).removeView(MessagePreviewView.this);
                    }
                    MessagePreviewView.this.onFullDismiss(z);
                }
            });
            while (true) {
                View[] viewArr = this.viewPager.viewPages;
                if (i >= viewArr.length) {
                    break;
                }
                View view = viewArr[i];
                if (view instanceof Page) {
                    Page page = (Page) view;
                    if (page.currentTab == 0) {
                        page.updateSelection();
                        break;
                    }
                }
                i++;
            }
            onDismiss(z);
        }
    }

    public boolean isShowing() {
        return this.showing;
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class TabsView extends View {
        private final Paint bgPaint;
        private int color;
        private float marginBetween;
        private Utilities.Callback onTabClick;
        private final Theme.ResourcesProvider resourcesProvider;
        private RectF selectRect;
        private int selectedColor;
        private float selectedTab;
        private float tabInnerPadding;
        public final ArrayList tabs;

        private static class Tab {
            final RectF bounds = new RectF();
            final RectF clickBounds = new RectF();

            /* JADX INFO: renamed from: id */
            final int f1977id;
            final Text text;

            public Tab(int i, String str) {
                this.f1977id = i;
                this.text = new Text(str, 14.0f, AndroidUtilities.bold());
            }
        }

        public TabsView(Context context, Theme.ResourcesProvider resourcesProvider) {
            int[] colors;
            super(context);
            this.tabs = new ArrayList();
            Paint paint = new Paint(1);
            this.bgPaint = paint;
            this.tabInnerPadding = AndroidUtilities.m1124dp(12.0f);
            this.marginBetween = AndroidUtilities.m1124dp(13.0f);
            this.selectRect = new RectF();
            this.resourcesProvider = resourcesProvider;
            if (Theme.isCurrentThemeDark()) {
                this.color = -1862270977;
                this.selectedColor = -1325400065;
                paint.setColor(285212671);
                return;
            }
            int color = Theme.getColor(Theme.key_chat_wallpaper, resourcesProvider);
            if (resourcesProvider instanceof ChatActivity.ThemeDelegate) {
                ChatActivity.ThemeDelegate themeDelegate = (ChatActivity.ThemeDelegate) resourcesProvider;
                if ((themeDelegate.getWallpaperDrawable() instanceof MotionBackgroundDrawable) && (colors = ((MotionBackgroundDrawable) themeDelegate.getWallpaperDrawable()).getColors()) != null) {
                    color = AndroidUtilities.getAverageColor(AndroidUtilities.getAverageColor(colors[0], colors[1]), AndroidUtilities.getAverageColor(colors[2], colors[3]));
                }
            }
            this.color = Theme.adaptHue(-1606201797, color);
            this.selectedColor = Theme.adaptHue(-448573893, color);
            paint.setColor(Theme.adaptHue(814980216, color));
        }

        public int getColor() {
            return this.color;
        }

        public void addTab(int i, String str) {
            this.tabs.add(new Tab(i, str));
        }

        public void setSelectedTab(float f) {
            this.selectedTab = f;
            invalidate();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            this.tabInnerPadding = AndroidUtilities.m1124dp(12.0f);
            this.marginBetween = AndroidUtilities.m1124dp(13.0f);
            float width = 0.0f;
            for (int i3 = 0; i3 < this.tabs.size(); i3++) {
                if (i3 > 0) {
                    width += this.marginBetween;
                }
                width += this.tabInnerPadding + ((Tab) this.tabs.get(i3)).text.getWidth() + this.tabInnerPadding;
            }
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            float fM1124dp = (measuredHeight - AndroidUtilities.m1124dp(26.0f)) / 2.0f;
            float fM1124dp2 = (measuredHeight + AndroidUtilities.m1124dp(26.0f)) / 2.0f;
            float f = (measuredWidth - width) / 2.0f;
            for (int i4 = 0; i4 < this.tabs.size(); i4++) {
                float width2 = this.tabInnerPadding + ((Tab) this.tabs.get(i4)).text.getWidth() + this.tabInnerPadding;
                ((Tab) this.tabs.get(i4)).bounds.set(f, fM1124dp, f + width2, fM1124dp2);
                ((Tab) this.tabs.get(i4)).clickBounds.set(((Tab) this.tabs.get(i4)).bounds);
                ((Tab) this.tabs.get(i4)).clickBounds.inset((-this.marginBetween) / 2.0f, -fM1124dp);
                f += width2 + this.marginBetween;
            }
        }

        @Override // android.view.View
        protected void dispatchDraw(Canvas canvas) {
            if (this.tabs.size() <= 1) {
                return;
            }
            float f = this.selectedTab;
            double d = f;
            int iFloor = (int) Math.floor(d);
            boolean z = iFloor >= 0 && iFloor < this.tabs.size();
            int iCeil = (int) Math.ceil(d);
            boolean z2 = iCeil >= 0 && iCeil < this.tabs.size();
            if (z && z2) {
                AndroidUtilities.lerp(((Tab) this.tabs.get(iFloor)).bounds, ((Tab) this.tabs.get(iCeil)).bounds, f - iFloor, this.selectRect);
            } else if (z) {
                this.selectRect.set(((Tab) this.tabs.get(iFloor)).bounds);
            } else if (z2) {
                this.selectRect.set(((Tab) this.tabs.get(iCeil)).bounds);
            }
            if (z || z2) {
                canvas.drawRoundRect(this.selectRect, AndroidUtilities.m1124dp(13.0f), AndroidUtilities.m1124dp(13.0f), this.bgPaint);
            }
            for (int i = 0; i < this.tabs.size(); i++) {
                Tab tab = (Tab) this.tabs.get(i);
                tab.text.draw(canvas, tab.bounds.left + this.tabInnerPadding, getMeasuredHeight() / 2.0f, ColorUtils.blendARGB(this.color, this.selectedColor, 1.0f - Math.abs(f - i)), 1.0f);
            }
        }

        public void setOnTabClick(Utilities.Callback<Integer> callback) {
            this.onTabClick = callback;
        }

        @Override // android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            Utilities.Callback callback;
            if (this.tabs.size() <= 1) {
                return false;
            }
            int hitTab = getHitTab(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() == 0) {
                return hitTab != -1;
            }
            if (motionEvent.getAction() == 1 && hitTab != -1 && (callback = this.onTabClick) != null) {
                callback.run(Integer.valueOf(hitTab));
            }
            return false;
        }

        private int getHitTab(float f, float f2) {
            for (int i = 0; i < this.tabs.size(); i++) {
                if (((Tab) this.tabs.get(i)).clickBounds.contains(f, f2)) {
                    return ((Tab) this.tabs.get(i)).f1977id;
                }
            }
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    /* JADX INFO: loaded from: classes7.dex */
    private class ActionBar extends FrameLayout {
        private Theme.ResourcesProvider resourcesProvider;
        private final AnimatedTextView.AnimatedTextDrawable subtitle;
        private final AnimatedTextView.AnimatedTextDrawable title;

        public ActionBar(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(true, true, true);
            this.title = animatedTextDrawable;
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            animatedTextDrawable.setAnimationProperties(0.3f, 0L, 430L, cubicBezierInterpolator);
            animatedTextDrawable.setTypeface(AndroidUtilities.bold());
            animatedTextDrawable.setTextColor(Theme.getColor(Theme.key_actionBarDefaultTitle, resourcesProvider));
            animatedTextDrawable.setTextSize(AndroidUtilities.m1124dp(18.0f));
            animatedTextDrawable.setEllipsizeByGradient(!LocaleController.isRTL);
            animatedTextDrawable.setCallback(this);
            animatedTextDrawable.setOverrideFullWidth(AndroidUtilities.displaySize.x);
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = new AnimatedTextView.AnimatedTextDrawable(true, true, true);
            this.subtitle = animatedTextDrawable2;
            animatedTextDrawable2.setAnimationProperties(0.3f, 0L, 430L, cubicBezierInterpolator);
            animatedTextDrawable2.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubtitle, resourcesProvider));
            animatedTextDrawable2.setTextSize(AndroidUtilities.m1124dp(14.0f));
            animatedTextDrawable2.setEllipsizeByGradient(true ^ LocaleController.isRTL);
            animatedTextDrawable2.setCallback(this);
            animatedTextDrawable2.setOverrideFullWidth(AndroidUtilities.displaySize.x);
        }

        public void setTitle(CharSequence charSequence, boolean z) {
            this.title.setText(charSequence, z && !LocaleController.isRTL);
        }

        public void setSubtitle(CharSequence charSequence, boolean z) {
            this.subtitle.setText(charSequence, z && !LocaleController.isRTL);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(56.0f), TLObject.FLAG_30));
            setPadding(AndroidUtilities.m1124dp(18.0f), 0, AndroidUtilities.m1124dp(18.0f), 0);
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            return this.title == drawable || this.subtitle == drawable || super.verifyDrawable(drawable);
        }

        private void setBounds(Drawable drawable, float f) {
            int i = (int) f;
            drawable.setBounds(getPaddingLeft(), i - AndroidUtilities.m1124dp(32.0f), getMeasuredWidth() - getPaddingRight(), i + AndroidUtilities.m1124dp(32.0f));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            setBounds(this.title, AndroidUtilities.lerp(AndroidUtilities.m1124dp(29.0f), AndroidUtilities.m1124dp(18.83f), this.subtitle.isNotEmpty()));
            this.title.draw(canvas);
            setBounds(this.subtitle, AndroidUtilities.m1124dp(39.5f));
            this.subtitle.draw(canvas);
        }
    }

    public void updateLink() {
        int i = 0;
        while (true) {
            View[] viewArr = this.viewPager.viewPages;
            if (i >= viewArr.length) {
                return;
            }
            View view = viewArr[i];
            if (view != null && ((Page) view).currentTab == 2) {
                Page page = (Page) view;
                FrameLayout frameLayout = page.changeSizeBtnContainer;
                MessagePreviewParams messagePreviewParams = this.messagePreviewParams;
                frameLayout.setVisibility((!messagePreviewParams.singleLink || messagePreviewParams.hasMedia) ? 0 : 8);
                page.changeSizeBtn.setVisibility(this.messagePreviewParams.isVideo ? 4 : 0);
                page.videoChangeSizeBtn.setVisibility(this.messagePreviewParams.isVideo ? 0 : 4);
                page.changeSizeBtnContainer.animate().alpha(this.messagePreviewParams.hasMedia ? 1.0f : 0.5f).start();
                page.changeSizeBtn.setState(this.messagePreviewParams.webpageSmall, true);
                page.videoChangeSizeBtn.setState(this.messagePreviewParams.webpageSmall, true);
                page.changePositionBtn.setState(!this.messagePreviewParams.webpageTop, true);
                page.updateMessages();
            }
            i++;
        }
    }

    public void updateAll() {
        int i = 0;
        while (true) {
            View[] viewArr = this.viewPager.viewPages;
            if (i >= viewArr.length) {
                return;
            }
            View view = viewArr[i];
            if (view instanceof Page) {
                Page page = (Page) view;
                int i2 = page.currentTab;
                if (i2 == 1) {
                    page.messages = this.messagePreviewParams.forwardMessages;
                } else if (i2 == 0) {
                    page.messages = this.messagePreviewParams.replyMessage;
                } else if (i2 == 2) {
                    page.messages = this.messagePreviewParams.linkMessage;
                }
                page.updateMessages();
                if (page.currentTab == 0) {
                    if (this.showOutdatedQuote && !this.messagePreviewParams.isSecret) {
                        MessageObject replyMessage = page.getReplyMessage(page.textSelectionHelper.getSelectedCell() != null ? ((ChatMessageCell) page.textSelectionHelper.getSelectedCell()).getMessageObject() : null);
                        if (replyMessage != null) {
                            MessagePreviewParams messagePreviewParams = this.messagePreviewParams;
                            messagePreviewParams.quoteStart = 0;
                            messagePreviewParams.quoteEnd = Math.min(MessagesController.getInstance(this.currentAccount).quoteLengthMax, replyMessage.messageOwner.message.length());
                            MessagePreviewParams messagePreviewParams2 = this.messagePreviewParams;
                            messagePreviewParams2.quote = ChatActivity.ReplyQuote.from(replyMessage, messagePreviewParams2.quoteStart, messagePreviewParams2.quoteEnd);
                            TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper = page.textSelectionHelper;
                            ChatMessageCell replyMessageCell = page.getReplyMessageCell();
                            MessagePreviewParams messagePreviewParams3 = this.messagePreviewParams;
                            chatListTextSelectionHelper.select(replyMessageCell, messagePreviewParams3.quoteStart, messagePreviewParams3.quoteEnd);
                        }
                    } else {
                        this.messagePreviewParams.quote = null;
                        page.textSelectionHelper.clear();
                        page.switchToQuote(false, true);
                    }
                    page.updateSubtitle(true);
                }
                ToggleButton toggleButton = page.changeSizeBtn;
                if (toggleButton != null) {
                    toggleButton.animate().alpha(this.messagePreviewParams.hasMedia ? 1.0f : 0.5f).start();
                }
            }
            i++;
        }
    }

    public boolean isTouchedHandle() {
        int i = 0;
        while (true) {
            View[] viewArr = this.viewPager.viewPages;
            if (i >= viewArr.length) {
                return false;
            }
            View view = viewArr[i];
            if (view != null && ((Page) view).currentTab == 0) {
                return ((Page) view).textSelectionHelper.isTouched();
            }
            i++;
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class ToggleButton extends View {
        private boolean first;
        RLottieToggleDrawable iconDrawable;
        private boolean isState1;
        final int minWidth;
        final String text1;
        final String text2;
        AnimatedTextView.AnimatedTextDrawable textDrawable;

        public ToggleButton(Context context, int i, String str, int i2, String str2, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.first = true;
            this.text1 = str;
            this.text2 = str2;
            setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), 2));
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(true, true, true);
            this.textDrawable = animatedTextDrawable;
            animatedTextDrawable.setAnimationProperties(0.35f, 0L, 300L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.textDrawable.setTextSize(AndroidUtilities.m1124dp(16.0f));
            this.textDrawable.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, resourcesProvider));
            this.textDrawable.setCallback(this);
            this.textDrawable.setEllipsizeByGradient(true ^ LocaleController.isRTL);
            if (LocaleController.isRTL) {
                this.textDrawable.setGravity(5);
            }
            int iM1124dp = (int) (AndroidUtilities.m1124dp(77.0f) + Math.max(this.textDrawable.getPaint().measureText(str), this.textDrawable.getPaint().measureText(str2)));
            this.minWidth = iM1124dp;
            this.textDrawable.setOverrideFullWidth(iM1124dp);
            RLottieToggleDrawable rLottieToggleDrawable = new RLottieToggleDrawable(this, i, i2);
            this.iconDrawable = rLottieToggleDrawable;
            rLottieToggleDrawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon, resourcesProvider), PorterDuff.Mode.SRC_IN));
        }

        public void setState(boolean z, boolean z2) {
            if (this.first || z != this.isState1) {
                this.isState1 = z;
                this.textDrawable.setText(z ? this.text1 : this.text2, z2 && !LocaleController.isRTL);
                this.iconDrawable.setState(z, z2);
                this.first = false;
            }
        }

        public boolean getState() {
            return this.isState1;
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            return drawable == this.textDrawable || super.verifyDrawable(drawable);
        }

        @Override // android.view.View
        protected void dispatchDraw(Canvas canvas) {
            if (LocaleController.isRTL) {
                this.iconDrawable.setBounds(getMeasuredWidth() - AndroidUtilities.m1124dp(41.0f), (getMeasuredHeight() - AndroidUtilities.m1124dp(24.0f)) / 2, getMeasuredWidth() - AndroidUtilities.m1124dp(17.0f), (getMeasuredHeight() + AndroidUtilities.m1124dp(24.0f)) / 2);
                this.textDrawable.setBounds(0, 0, getMeasuredWidth() - AndroidUtilities.m1124dp(59.0f), getMeasuredHeight());
            } else {
                this.iconDrawable.setBounds(AndroidUtilities.m1124dp(17.0f), (getMeasuredHeight() - AndroidUtilities.m1124dp(24.0f)) / 2, AndroidUtilities.m1124dp(41.0f), (getMeasuredHeight() + AndroidUtilities.m1124dp(24.0f)) / 2);
                this.textDrawable.setBounds(AndroidUtilities.m1124dp(59.0f), 0, getMeasuredWidth(), getMeasuredHeight());
            }
            this.textDrawable.draw(canvas);
            this.iconDrawable.draw(canvas);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int iMin;
            int mode = View.MeasureSpec.getMode(i);
            if (mode == 1073741824) {
                iMin = Math.max(View.MeasureSpec.getSize(i), this.minWidth);
            } else {
                iMin = Math.min(View.MeasureSpec.getSize(i), this.minWidth);
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, mode), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(48.0f), TLObject.FLAG_30));
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (getVisibility() != 0 || getAlpha() < 0.5f) {
                return false;
            }
            return super.onTouchEvent(motionEvent);
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    private static class RLottieToggleDrawable extends Drawable {
        private RLottieDrawable currentState;
        private boolean detached;
        private boolean isState1;
        private RLottieDrawable state1;
        private RLottieDrawable state2;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        public RLottieToggleDrawable(View view, int i, int i2) {
            RLottieDrawable rLottieDrawable = new RLottieDrawable(i, _UrlKt.FRAGMENT_ENCODE_SET + i, AndroidUtilities.m1124dp(24.0f), AndroidUtilities.m1124dp(24.0f));
            this.state1 = rLottieDrawable;
            rLottieDrawable.setMasterParent(view);
            this.state1.setAllowDecodeSingleFrame(true);
            this.state1.setPlayInDirectionOfCustomEndFrame(true);
            this.state1.setAutoRepeat(0);
            RLottieDrawable rLottieDrawable2 = new RLottieDrawable(i2, _UrlKt.FRAGMENT_ENCODE_SET + i2, AndroidUtilities.m1124dp(24.0f), AndroidUtilities.m1124dp(24.0f));
            this.state2 = rLottieDrawable2;
            rLottieDrawable2.setMasterParent(view);
            this.state2.setAllowDecodeSingleFrame(true);
            this.state2.setPlayInDirectionOfCustomEndFrame(true);
            this.state2.setAutoRepeat(0);
            this.currentState = this.state1;
        }

        public void setState(boolean z, boolean z2) {
            this.isState1 = z;
            if (z2) {
                this.currentState = z ? this.state1 : this.state2;
                this.state1.setCurrentFrame(0);
                this.state2.setCurrentFrame(0);
                this.currentState.start();
                return;
            }
            RLottieDrawable rLottieDrawable = z ? this.state1 : this.state2;
            this.currentState = rLottieDrawable;
            rLottieDrawable.setCurrentFrame(rLottieDrawable.getFramesCount() - 1);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.detached) {
                return;
            }
            Rect rect = AndroidUtilities.rectTmp2;
            rect.set(getBounds().centerX() - AndroidUtilities.m1124dp(12.0f), getBounds().centerY() - AndroidUtilities.m1124dp(12.0f), getBounds().centerX() + AndroidUtilities.m1124dp(12.0f), getBounds().centerY() + AndroidUtilities.m1124dp(12.0f));
            if (this.currentState.isLastFrame()) {
                RLottieDrawable rLottieDrawable = this.currentState;
                boolean z = this.isState1;
                if (rLottieDrawable != (z ? this.state1 : this.state2)) {
                    RLottieDrawable rLottieDrawable2 = z ? this.state1 : this.state2;
                    this.currentState = rLottieDrawable2;
                    rLottieDrawable2.setCurrentFrame(rLottieDrawable2.getFramesCount() - 1);
                }
            }
            this.currentState.setBounds(rect);
            this.currentState.draw(canvas);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.state1.setAlpha(i);
            this.state2.setAlpha(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.state1.setColorFilter(colorFilter);
            this.state2.setColorFilter(colorFilter);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return AndroidUtilities.m1124dp(24.0f);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return AndroidUtilities.m1124dp(24.0f);
        }
    }
}
