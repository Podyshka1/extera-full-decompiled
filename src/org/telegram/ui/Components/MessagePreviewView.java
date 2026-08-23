package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
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
import android.text.StaticLayout;
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
import com.google.android.exoplayer2.util.Consumer;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.ChatMessageSharedResources;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagePreviewParams;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.Cells.IMessageCell;
import org.telegram.ui.Cells.TextSelectionHelper;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ViewPagerFixed;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;

/* JADX INFO: loaded from: classes7.dex */
public abstract class MessagePreviewView extends FrameLayout {
    Runnable changeBoundsRunnable;
    final ChatActivity chatActivity;
    private final int currentAccount;
    TLRPC.Chat currentChat;
    TLRPC.User currentUser;
    private final ArrayList<MessageObject.GroupedMessages> drawingGroups;
    private final BlurredBackgroundDrawableViewFactory iBlur3Factory;
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

    public interface ResourcesDelegate extends Theme.ResourcesProvider {
        Drawable getWallpaperDrawable();

        boolean isWallpaperMotion();
    }

    private void updateColors() {
    }

    public void didSendPressed() {
    }

    public abstract void onDismiss(boolean z);

    public abstract void onFullDismiss(boolean z);

    public abstract void onQuoteSelectedPart();

    public void removeForward() {
    }

    public abstract void removeLink();

    public abstract void removeQuote();

    public abstract void removeReply();

    public abstract void selectAnotherChat(boolean z);

    public abstract void viewInChat();

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

    public class Page extends FrameLayout {
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
        int scrollToQuoteEndY;
        int scrollToQuoteStartY;
        ChatMessageSharedResources sharedResources;
        boolean shouldScrollToQuote;
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

        /* JADX WARN: Multi-variable type inference failed */
        public View getReplyMessageCell() {
            MessageObject replyMessage = getReplyMessage();
            if (replyMessage == null) {
                return null;
            }
            for (int i = 0; i < this.chatListView.getChildCount(); i++) {
                View childAt = this.chatListView.getChildAt(i);
                IMessageCell iMessageCell = (IMessageCell) childAt;
                if (iMessageCell.getMessageObject() != null && (iMessageCell.getMessageObject() == replyMessage || iMessageCell.getMessageObject().getId() == replyMessage.getId())) {
                    return childAt;
                }
            }
            return null;
        }

        public MessageObject getReplyMessage() {
            return getReplyMessage(null);
        }

        public boolean isReplyToRichMessage() {
            MessageObject replyMessage;
            TLRPC.Message message;
            return (this.currentTab != 0 || (replyMessage = getReplyMessage()) == null || (message = replyMessage.messageOwner) == null || message.rich_message == null) ? false : true;
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

        /* JADX WARN: Removed duplicated region for block: B:57:0x0482  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x048a  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0495  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x049d  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x04ba  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x04eb  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x05e9  */
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
        public Page(final Context context, int i) {
            final Page page;
            float f;
            MessagePreviewView messagePreviewView;
            Context context2;
            boolean z;
            Context context3;
            ToggleButton toggleButton;
            ToggleButton toggleButton2;
            final ToggleButton toggleButton3;
            MessagePreviewParams messagePreviewParams;
            MessagePreviewParams.Messages messages;
            MessagePreviewView messagePreviewView2;
            float f2;
            int i2;
            int i3;
            ViewGroup viewGroup;
            super(context);
            this.firstLayout = true;
            this.scrollToQuoteStartY = -1;
            this.scrollToQuoteEndY = -1;
            this.shouldScrollToQuote = false;
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
                @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
                public Drawable getNewDrawable() {
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
                    outline.setRoundRect(0, Page.this.currentTopOffset + 1, view.getMeasuredWidth(), view.getMeasuredHeight(), AndroidUtilities.dp(8.0f));
                }
            });
            this.chatPreviewContainer.setClipToOutline(true);
            this.chatPreviewContainer.setElevation(AndroidUtilities.dp(4.0f));
            ActionBar actionBar = MessagePreviewView.this.new ActionBar(context, MessagePreviewView.this.resourcesProvider);
            this.actionBar = actionBar;
            actionBar.setBackgroundColor(MessagePreviewView.this.getThemedColor(Theme.key_actionBarDefault));
            TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper = new TextSelectionHelper.ChatListTextSelectionHelper() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.4
                {
                    this.resourcesProvider = MessagePreviewView.this.resourcesProvider;
                }

                @Override // org.telegram.ui.Cells.TextSelectionHelper
                public boolean canCopy() {
                    if (Page.this.isReplyToRichMessage()) {
                        return false;
                    }
                    MessagePreviewParams messagePreviewParams2 = MessagePreviewView.this.messagePreviewParams;
                    return messagePreviewParams2 == null || !messagePreviewParams2.noforwards;
                }

                @Override // org.telegram.ui.Cells.TextSelectionHelper
                public Theme.ResourcesProvider getResourcesProvider() {
                    return this.resourcesProvider;
                }

                @Override // org.telegram.ui.Cells.TextSelectionHelper.ChatListTextSelectionHelper, org.telegram.ui.Cells.TextSelectionHelper
                public void invalidate() {
                    super.invalidate();
                    RecyclerListView recyclerListView = Page.this.chatListView;
                    if (recyclerListView != null) {
                        recyclerListView.invalidate();
                    }
                }

                @Override // org.telegram.ui.Cells.TextSelectionHelper
                public boolean canShowQuote() {
                    Page page2 = Page.this;
                    return (page2.currentTab != 0 || MessagePreviewView.this.messagePreviewParams.isSecret || page2.isReplyToRichMessage()) ? false : true;
                }

                @Override // org.telegram.ui.Cells.TextSelectionHelper
                public void onQuoteClick(MessageObject messageObject, int i4, int i5, CharSequence charSequence) {
                    ChatActivity.ReplyQuote replyQuote;
                    MessageObject messageObject2;
                    Page page2 = Page.this;
                    TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper2 = page2.textSelectionHelper;
                    int i6 = chatListTextSelectionHelper2.selectionEnd - chatListTextSelectionHelper2.selectionStart;
                    int i7 = MessagesController.getInstance(MessagePreviewView.this.currentAccount).quoteLengthMax;
                    Page page3 = Page.this;
                    if (i6 > i7) {
                        page3.showQuoteLengthError();
                        return;
                    }
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

                @Override // org.telegram.ui.Cells.TextSelectionHelper
                public boolean isSelected(MessageObject messageObject) {
                    Page page2 = Page.this;
                    return page2.currentTab == 0 && !MessagePreviewView.this.messagePreviewParams.isSecret && isInSelectionMode();
                }
            };
            this.textSelectionHelper = chatListTextSelectionHelper;
            chatListTextSelectionHelper.setCallback(new TextSelectionHelper.Callback() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.5
                @Override // org.telegram.ui.Cells.TextSelectionHelper.Callback
                public void onStateChanged(boolean z2) {
                    Page page2 = Page.this;
                    if (MessagePreviewView.this.showing) {
                        if (!z2 && page2.menu.getSwipeBack().isForegroundOpen()) {
                            Page.this.menu.getSwipeBack().closeForeground(true);
                            return;
                        }
                        if (z2) {
                            Page page3 = Page.this;
                            TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper2 = page3.textSelectionHelper;
                            int i4 = chatListTextSelectionHelper2.selectionEnd - chatListTextSelectionHelper2.selectionStart;
                            int i5 = MessagesController.getInstance(MessagePreviewView.this.currentAccount).quoteLengthMax;
                            Page page4 = Page.this;
                            if (i4 > i5) {
                                page4.showQuoteLengthError();
                                return;
                            }
                            MessageObject replyMessage = Page.this.getReplyMessage(page4.textSelectionHelper.getSelectedCell() != null ? Page.this.textSelectionHelper.getSelectedCell().getMessageObject() : null);
                            Page page5 = Page.this;
                            MessagePreviewParams messagePreviewParams2 = MessagePreviewView.this.messagePreviewParams;
                            if (messagePreviewParams2.quote == null) {
                                TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper3 = page5.textSelectionHelper;
                                int i6 = chatListTextSelectionHelper3.selectionStart;
                                messagePreviewParams2.quoteStart = i6;
                                int i7 = chatListTextSelectionHelper3.selectionEnd;
                                messagePreviewParams2.quoteEnd = i7;
                                messagePreviewParams2.quote = ChatActivity.ReplyQuote.from(replyMessage, i6, i7);
                                Page.this.switchToQuote(true, true);
                                Page.this.menu.getSwipeBack().openForeground(Page.this.menuBack);
                            }
                        }
                    }
                }
            });
            C38986 c38986 = new C38986(context, MessagePreviewView.this.resourcesProvider, MessagePreviewView.this);
            this.chatListView = c38986;
            C38997 c38997 = new C38997(null, this.chatListView, MessagePreviewView.this.resourcesProvider, MessagePreviewView.this);
            this.itemAnimator = c38997;
            c38986.setItemAnimator(c38997);
            this.chatListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.8
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i4, int i5) {
                    Page page2;
                    super.onScrolled(recyclerView, i4, i5);
                    int i6 = 0;
                    while (true) {
                        int childCount = Page.this.chatListView.getChildCount();
                        page2 = Page.this;
                        if (i6 >= childCount) {
                            break;
                        }
                        View childAt = page2.chatListView.getChildAt(i6);
                        if (childAt instanceof ChatMessageCell) {
                            ((ChatMessageCell) childAt).setParentViewSize(Page.this.chatPreviewContainer.getMeasuredWidth(), Page.this.chatPreviewContainer.getBackgroundSizeY());
                        }
                        i6++;
                    }
                    TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper2 = page2.textSelectionHelper;
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
                    MessageObject messageObject = Page.this.messages.previewMessages.get(i4);
                    boolean zIsSelected = Page.this.messages.isSelected(messageObject);
                    boolean z2 = !zIsSelected;
                    if (Page.this.messages.getSelectedCount() == 1 && zIsSelected) {
                        return;
                    }
                    Page.this.messages.setSelected(messageObject, z2);
                    if (view instanceof ChatMessageCell) {
                        ((ChatMessageCell) view).setChecked(z2, z2, true);
                    }
                    Page.this.updateSubtitle(true);
                }
            });
            RecyclerListView recyclerListView = this.chatListView;
            Adapter adapter = new Adapter();
            this.adapter = adapter;
            recyclerListView.setAdapter(adapter);
            this.chatListView.setPadding(0, AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f));
            AnonymousClass10 anonymousClass10 = new AnonymousClass10(context, 1000, 1, true, MessagePreviewView.this);
            Context context4 = context;
            this.chatLayoutManager = anonymousClass10;
            anonymousClass10.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.11
                @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                public int getSpanSize(int i4) {
                    if (i4 < 0 || i4 >= Page.this.messages.previewMessages.size()) {
                        return 1000;
                    }
                    MessageObject messageObject = Page.this.messages.previewMessages.get(i4);
                    MessageObject.GroupedMessages validGroupedMessage = Page.this.getValidGroupedMessage(messageObject);
                    if (validGroupedMessage != null) {
                        return validGroupedMessage.getPosition(messageObject).spanSize;
                    }
                    return 1000;
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
                        extraInsetHeight += (int) Math.ceil(r2[i5] * fMax);
                        i5++;
                    }
                    int iRound = extraInsetHeight + ((currentPosition.maxY - currentPosition.minY) * Math.round(AndroidUtilities.density * 7.0f));
                    int size = currentMessagesGroup.posArray.size();
                    while (true) {
                        if (i4 < size) {
                            MessageObject.GroupedMessagePosition groupedMessagePosition = currentMessagesGroup.posArray.get(i4);
                            byte b2 = groupedMessagePosition.minY;
                            byte b3 = currentPosition.minY;
                            if (b2 == b3 && ((groupedMessagePosition.minX != currentPosition.minX || groupedMessagePosition.maxX != currentPosition.maxX || b2 != b3 || groupedMessagePosition.maxY != currentPosition.maxY) && b2 == b3)) {
                                iRound -= ((int) Math.ceil(fMax * groupedMessagePosition.ph)) - AndroidUtilities.dp(4.0f);
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
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(getContext(), C2573R.drawable.popup_fixed_alert2, MessagePreviewView.this.resourcesProvider, 1);
            this.menu = actionBarPopupWindowLayout;
            actionBarPopupWindowLayout.getSwipeBack().setOnForegroundOpenFinished(new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$1();
                }
            });
            this.menu.setBackground(MessagePreviewView.this.iBlur3Factory.create(this.menu).setColorProvider(BlurredBackgroundProviderImpl.scrimMenuBackground(MessagePreviewView.this.resourcesProvider)).setPadding(AndroidUtilities.dp(8.0f)).setHasPadding(true).setRadius(AndroidUtilities.dp(12.0f)));
            addView(this.menu, LayoutHelper.createFrame(-2, -2.0f));
            if (i == 0 && (messages = (messagePreviewParams = MessagePreviewView.this.messagePreviewParams).replyMessage) != null) {
                if (!messages.hasText || messagePreviewParams.isSecret) {
                    page = this;
                    messagePreviewView = MessagePreviewView.this;
                    f2 = 0.06f;
                    i2 = 48;
                    f = 8.0f;
                    i3 = 8;
                } else {
                    LinearLayout linearLayout = new LinearLayout(context4);
                    linearLayout.setOrientation(1);
                    if (MessagePreviewView.this.showOutdatedQuote) {
                        viewGroup = linearLayout;
                        f2 = 0.06f;
                        i2 = 48;
                        f = 8.0f;
                        i3 = 8;
                    } else {
                        f = 8.0f;
                        i2 = 48;
                        viewGroup = linearLayout;
                        f2 = 0.06f;
                        i3 = 8;
                        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(context4, false, true, false, (Theme.ResourcesProvider) MessagePreviewView.this.resourcesProvider);
                        actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(C2573R.string.Back), C2573R.drawable.msg_arrow_back);
                        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda12
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$2(view);
                            }
                        });
                        viewGroup.addView(actionBarMenuSubItem, LayoutHelper.createLinear(-1, 48));
                        ActionBarPopupWindow.GapView gapView = new ActionBarPopupWindow.GapView(context4, MessagePreviewView.this.resourcesProvider);
                        gapView.setColor(Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, MessagePreviewView.this.resourcesProvider), 0.06f));
                        gapView.setTag(C2573R.id.fit_width_tag, 1);
                        viewGroup.addView(gapView, LayoutHelper.createLinear(-1, 8));
                        ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(context4, false, false, true, (Theme.ResourcesProvider) MessagePreviewView.this.resourcesProvider);
                        actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString(C2573R.string.QuoteSelectedPart), C2573R.drawable.menu_quote_specific);
                        actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda13
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$3(view);
                            }
                        });
                        viewGroup.addView(actionBarMenuSubItem2, LayoutHelper.createLinear(-1, 48));
                    }
                    this.menuBack = this.menu.addViewToSwipeBack(viewGroup);
                    this.menu.getSwipeBack().setStickToRight(true);
                    FrameLayout frameLayout = new FrameLayout(context4);
                    ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem(context4, true, true, false, MessagePreviewView.this.resourcesProvider) { // from class: org.telegram.ui.Components.MessagePreviewView.Page.13
                        @Override // android.view.View
                        public boolean onTouchEvent(MotionEvent motionEvent) {
                            if (getVisibility() != 0 || getAlpha() < 0.5f) {
                                return false;
                            }
                            return super.onTouchEvent(motionEvent);
                        }

                        @Override // org.telegram.ui.ActionBar.ActionBarMenuSubItem
                        public void updateBackground() {
                            setBackground(null);
                        }
                    };
                    this.quoteButton = actionBarMenuSubItem3;
                    actionBarMenuSubItem3.setTextAndIcon(LocaleController.getString(MessagePreviewView.this.showOutdatedQuote ? C2573R.string.QuoteSelectedPart : C2573R.string.SelectSpecificQuote), C2573R.drawable.menu_select_quote);
                    ActionBarMenuSubItem actionBarMenuSubItem4 = new ActionBarMenuSubItem(context, true, true, false, MessagePreviewView.this.resourcesProvider) { // from class: org.telegram.ui.Components.MessagePreviewView.Page.14
                        @Override // android.view.View
                        public boolean onTouchEvent(MotionEvent motionEvent) {
                            if (getVisibility() != 0 || getAlpha() < 0.5f) {
                                return false;
                            }
                            return super.onTouchEvent(motionEvent);
                        }

                        @Override // org.telegram.ui.ActionBar.ActionBarMenuSubItem
                        public void updateBackground() {
                            setBackground(null);
                        }
                    };
                    messagePreviewView = MessagePreviewView.this;
                    page = this;
                    context4 = context;
                    page.clearQuoteButton = actionBarMenuSubItem4;
                    actionBarMenuSubItem4.setTextAndIcon(LocaleController.getString(C2573R.string.ClearQuote), C2573R.drawable.menu_quote_delete);
                    frameLayout.setBackground(Theme.createRadSelectorDrawable(messagePreviewView2.getThemedColor(Theme.key_dialogButtonSelector), 6, 0));
                    frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda14
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$new$4(view);
                        }
                    });
                    frameLayout.addView(page.quoteButton, LayoutHelper.createFrame(-1, 48.0f));
                    frameLayout.addView(page.clearQuoteButton, LayoutHelper.createFrame(-1, 48.0f));
                    page.menu.addView((View) frameLayout, LayoutHelper.createLinear(-1, i2));
                }
                MessagePreviewParams messagePreviewParams2 = messagePreviewView2.messagePreviewParams;
                if (!messagePreviewParams2.monoforum && !messagePreviewParams2.noforwards && !messagePreviewParams2.hasSecretMessages) {
                    FrameLayout frameLayout2 = new FrameLayout(context4);
                    ActionBarMenuSubItem actionBarMenuSubItem5 = new ActionBarMenuSubItem(context4, true, false, false, (Theme.ResourcesProvider) messagePreviewView2.resourcesProvider);
                    page.replyAnotherChatButton = actionBarMenuSubItem5;
                    actionBarMenuSubItem5.setTextAndIcon(LocaleController.getString(C2573R.string.ReplyToAnotherChat), C2573R.drawable.msg_forward_replace);
                    page.replyAnotherChatButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda15
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$new$5(view);
                        }
                    });
                    context4 = context;
                    ActionBarMenuSubItem actionBarMenuSubItem6 = new ActionBarMenuSubItem(context4, true, false, false, (Theme.ResourcesProvider) messagePreviewView2.resourcesProvider);
                    page.quoteAnotherChatButton = actionBarMenuSubItem6;
                    actionBarMenuSubItem6.setTextAndIcon(LocaleController.getString(C2573R.string.QuoteToAnotherChat), C2573R.drawable.msg_forward_replace);
                    page.quoteAnotherChatButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda16
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$new$6(view);
                        }
                    });
                    frameLayout2.addView(page.quoteAnotherChatButton, LayoutHelper.createFrame(-1, 48.0f));
                    frameLayout2.addView(page.replyAnotherChatButton, LayoutHelper.createFrame(-1, 48.0f));
                    page.menu.addView((View) frameLayout2, LayoutHelper.createLinear(-1, i2));
                }
                MessagePreviewParams messagePreviewParams3 = messagePreviewView2.messagePreviewParams;
                if (!messagePreviewParams3.noforwards && !messagePreviewParams3.hasSecretMessages) {
                    ActionBarPopupWindow.GapView gapView2 = new ActionBarPopupWindow.GapView(context4, messagePreviewView2.resourcesProvider);
                    gapView2.setColor(Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, messagePreviewView2.resourcesProvider), f2));
                    gapView2.setTag(C2573R.id.fit_width_tag, 1);
                    page.menu.addView((View) gapView2, LayoutHelper.createLinear(-1, i3));
                }
                page.switchToQuote(messagePreviewView2.messagePreviewParams.quote != null, false);
                ActionBarMenuSubItem actionBarMenuSubItem7 = new ActionBarMenuSubItem(context4, true, false, false, (Theme.ResourcesProvider) messagePreviewView2.resourcesProvider);
                actionBarMenuSubItem7.setTextAndIcon(LocaleController.getString(C2573R.string.ApplyChanges), C2573R.drawable.msg_select);
                actionBarMenuSubItem7.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda17
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$7(view);
                    }
                });
                page.menu.addView((View) actionBarMenuSubItem7, LayoutHelper.createLinear(-1, i2));
                ActionBarMenuSubItem actionBarMenuSubItem8 = new ActionBarMenuSubItem(context, true, false, false, (Theme.ResourcesProvider) messagePreviewView2.resourcesProvider);
                actionBarMenuSubItem8.setTextAndIcon(LocaleController.getString(C2573R.string.ViewInChat), C2573R.drawable.msg_view_file);
                actionBarMenuSubItem8.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda18
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$8(view);
                    }
                });
                page.menu.addView((View) actionBarMenuSubItem8, LayoutHelper.createLinear(-1, i2));
                ActionBarMenuSubItem actionBarMenuSubItem9 = new ActionBarMenuSubItem(context, true, false, true, (Theme.ResourcesProvider) messagePreviewView2.resourcesProvider);
                page.deleteReplyButton = actionBarMenuSubItem9;
                actionBarMenuSubItem9.setTextAndIcon(LocaleController.getString(messagePreviewView2.showOutdatedQuote ? C2573R.string.DoNotQuote : C2573R.string.DoNotReply), C2573R.drawable.msg_delete);
                ActionBarMenuSubItem actionBarMenuSubItem10 = page.deleteReplyButton;
                int themedColor = messagePreviewView2.getThemedColor(Theme.key_text_RedBold);
                int i4 = Theme.key_text_RedRegular;
                actionBarMenuSubItem10.setColors(themedColor, messagePreviewView2.getThemedColor(i4));
                page.deleteReplyButton.setSelectorColor(Theme.multAlpha(Theme.getColor(i4), 0.12f));
                page.deleteReplyButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda19
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$9(view);
                    }
                });
                page.menu.addView((View) page.deleteReplyButton, LayoutHelper.createLinear(-1, i2));
                context2 = context;
                messagePreviewView = messagePreviewView2;
            } else {
                page = this;
                f = 8.0f;
                if (i == 1 && MessagePreviewView.this.messagePreviewParams.forwardMessages != null) {
                    if (!UserConfig.getInstance(MessagePreviewView.this.currentAccount).isPremium()) {
                        for (int i5 = 0; i5 < MessagePreviewView.this.messagePreviewParams.forwardMessages.messages.size(); i5++) {
                            if (MessagePreviewView.this.messagePreviewParams.forwardMessages.messages.get(i5).type == 36) {
                                z = false;
                                break;
                            }
                        }
                        z = true;
                        messagePreviewView = MessagePreviewView.this;
                        ToggleButton toggleButton4 = new ToggleButton(context, C2573R.raw.name_hide, LocaleController.getString(!MessagePreviewView.this.messagePreviewParams.multipleUsers ? C2573R.string.ShowSenderNames : C2573R.string.ShowSendersName), C2573R.raw.name_show, LocaleController.getString(!MessagePreviewView.this.messagePreviewParams.multipleUsers ? C2573R.string.HideSenderNames : C2573R.string.HideSendersName), MessagePreviewView.this.resourcesProvider);
                        page.menu.addView((View) toggleButton4, LayoutHelper.createLinear(-1, 48));
                        if (messagePreviewView.messagePreviewParams.hasCaption) {
                            context3 = context;
                            toggleButton = toggleButton4;
                            toggleButton2 = null;
                        } else {
                            toggleButton = toggleButton4;
                            context3 = context;
                            ToggleButton toggleButton5 = new ToggleButton(context3, C2573R.raw.caption_hide, LocaleController.getString(C2573R.string.ShowCaption), C2573R.raw.caption_show, LocaleController.getString(C2573R.string.HideCaption), messagePreviewView.resourcesProvider);
                            toggleButton5.setState(messagePreviewView.messagePreviewParams.hideCaption, false);
                            page.menu.addView((View) toggleButton5, LayoutHelper.createLinear(-1, 48));
                            toggleButton2 = toggleButton5;
                        }
                        ActionBarMenuSubItem actionBarMenuSubItem11 = new ActionBarMenuSubItem(context3, true, false, (Theme.ResourcesProvider) messagePreviewView.resourcesProvider);
                        actionBarMenuSubItem11.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$10(view);
                            }
                        });
                        actionBarMenuSubItem11.setTextAndIcon(LocaleController.getString(C2573R.string.ChangeRecipient), C2573R.drawable.msg_forward_replace);
                        page.menu.addView((View) actionBarMenuSubItem11, LayoutHelper.createLinear(-1, 48));
                        ActionBarPopupWindow.GapView gapView3 = new ActionBarPopupWindow.GapView(context3, messagePreviewView.resourcesProvider);
                        gapView3.setColor(Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, messagePreviewView.resourcesProvider), 0.06f));
                        gapView3.setTag(C2573R.id.fit_width_tag, 1);
                        page.menu.addView((View) gapView3, LayoutHelper.createLinear(-1, 8));
                        ActionBarMenuSubItem actionBarMenuSubItem12 = new ActionBarMenuSubItem(context3, true, false, false, (Theme.ResourcesProvider) messagePreviewView.resourcesProvider);
                        actionBarMenuSubItem12.setTextAndIcon(LocaleController.getString(C2573R.string.ApplyChanges), C2573R.drawable.msg_select);
                        actionBarMenuSubItem12.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda2
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$11(view);
                            }
                        });
                        page.menu.addView((View) actionBarMenuSubItem12, LayoutHelper.createLinear(-1, 48));
                        ActionBarMenuSubItem actionBarMenuSubItem13 = new ActionBarMenuSubItem(context3, false, false, (Theme.ResourcesProvider) messagePreviewView.resourcesProvider);
                        actionBarMenuSubItem13.setTextAndIcon(LocaleController.getString(C2573R.string.ForwardSendMessages), C2573R.drawable.msg_send);
                        page.menu.addView((View) actionBarMenuSubItem13, LayoutHelper.createLinear(-1, 48));
                        actionBarMenuSubItem13.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$12(view);
                            }
                        });
                        ActionBarMenuSubItem actionBarMenuSubItem14 = new ActionBarMenuSubItem(context3, true, false, true, (Theme.ResourcesProvider) messagePreviewView.resourcesProvider);
                        actionBarMenuSubItem14.setTextAndIcon(LocaleController.getString(C2573R.string.DoNotForward), C2573R.drawable.msg_delete);
                        int themedColor2 = messagePreviewView.getThemedColor(Theme.key_text_RedBold);
                        int i6 = Theme.key_text_RedRegular;
                        actionBarMenuSubItem14.setColors(themedColor2, messagePreviewView.getThemedColor(i6));
                        actionBarMenuSubItem14.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$13(view);
                            }
                        });
                        actionBarMenuSubItem14.setSelectorColor(Theme.multAlpha(Theme.getColor(i6), 0.12f));
                        page.menu.addView((View) actionBarMenuSubItem14, LayoutHelper.createLinear(-1, 48));
                        final ToggleButton toggleButton6 = toggleButton;
                        toggleButton6.setState(messagePreviewView.messagePreviewParams.hideForwardSendersName, false);
                        toggleButton3 = toggleButton2;
                        final boolean z2 = z;
                        toggleButton6.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$16(z2, context, toggleButton3, toggleButton6, view);
                            }
                        });
                        if (toggleButton3 != null) {
                            toggleButton3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda6
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    this.f$0.lambda$new$17(toggleButton3, toggleButton6, view);
                                }
                            });
                        }
                    } else {
                        z = true;
                        messagePreviewView = MessagePreviewView.this;
                        ToggleButton toggleButton42 = new ToggleButton(context, C2573R.raw.name_hide, LocaleController.getString(!MessagePreviewView.this.messagePreviewParams.multipleUsers ? C2573R.string.ShowSenderNames : C2573R.string.ShowSendersName), C2573R.raw.name_show, LocaleController.getString(!MessagePreviewView.this.messagePreviewParams.multipleUsers ? C2573R.string.HideSenderNames : C2573R.string.HideSendersName), MessagePreviewView.this.resourcesProvider);
                        page.menu.addView((View) toggleButton42, LayoutHelper.createLinear(-1, 48));
                        if (messagePreviewView.messagePreviewParams.hasCaption) {
                        }
                        ActionBarMenuSubItem actionBarMenuSubItem112 = new ActionBarMenuSubItem(context3, true, false, (Theme.ResourcesProvider) messagePreviewView.resourcesProvider);
                        actionBarMenuSubItem112.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$10(view);
                            }
                        });
                        actionBarMenuSubItem112.setTextAndIcon(LocaleController.getString(C2573R.string.ChangeRecipient), C2573R.drawable.msg_forward_replace);
                        page.menu.addView((View) actionBarMenuSubItem112, LayoutHelper.createLinear(-1, 48));
                        ActionBarPopupWindow.GapView gapView32 = new ActionBarPopupWindow.GapView(context3, messagePreviewView.resourcesProvider);
                        gapView32.setColor(Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, messagePreviewView.resourcesProvider), 0.06f));
                        gapView32.setTag(C2573R.id.fit_width_tag, 1);
                        page.menu.addView((View) gapView32, LayoutHelper.createLinear(-1, 8));
                        ActionBarMenuSubItem actionBarMenuSubItem122 = new ActionBarMenuSubItem(context3, true, false, false, (Theme.ResourcesProvider) messagePreviewView.resourcesProvider);
                        actionBarMenuSubItem122.setTextAndIcon(LocaleController.getString(C2573R.string.ApplyChanges), C2573R.drawable.msg_select);
                        actionBarMenuSubItem122.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda2
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$11(view);
                            }
                        });
                        page.menu.addView((View) actionBarMenuSubItem122, LayoutHelper.createLinear(-1, 48));
                        ActionBarMenuSubItem actionBarMenuSubItem132 = new ActionBarMenuSubItem(context3, false, false, (Theme.ResourcesProvider) messagePreviewView.resourcesProvider);
                        actionBarMenuSubItem132.setTextAndIcon(LocaleController.getString(C2573R.string.ForwardSendMessages), C2573R.drawable.msg_send);
                        page.menu.addView((View) actionBarMenuSubItem132, LayoutHelper.createLinear(-1, 48));
                        actionBarMenuSubItem132.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$12(view);
                            }
                        });
                        ActionBarMenuSubItem actionBarMenuSubItem142 = new ActionBarMenuSubItem(context3, true, false, true, (Theme.ResourcesProvider) messagePreviewView.resourcesProvider);
                        actionBarMenuSubItem142.setTextAndIcon(LocaleController.getString(C2573R.string.DoNotForward), C2573R.drawable.msg_delete);
                        int themedColor22 = messagePreviewView.getThemedColor(Theme.key_text_RedBold);
                        int i62 = Theme.key_text_RedRegular;
                        actionBarMenuSubItem142.setColors(themedColor22, messagePreviewView.getThemedColor(i62));
                        actionBarMenuSubItem142.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$13(view);
                            }
                        });
                        actionBarMenuSubItem142.setSelectorColor(Theme.multAlpha(Theme.getColor(i62), 0.12f));
                        page.menu.addView((View) actionBarMenuSubItem142, LayoutHelper.createLinear(-1, 48));
                        final ToggleButton toggleButton62 = toggleButton;
                        toggleButton62.setState(messagePreviewView.messagePreviewParams.hideForwardSendersName, false);
                        toggleButton3 = toggleButton2;
                        final boolean z22 = z;
                        toggleButton62.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$16(z22, context, toggleButton3, toggleButton62, view);
                            }
                        });
                        if (toggleButton3 != null) {
                        }
                    }
                } else {
                    messagePreviewView = MessagePreviewView.this;
                    if (i == 2 && messagePreviewView.messagePreviewParams.linkMessage != null) {
                        ToggleButton toggleButton7 = new ToggleButton(context, C2573R.raw.position_below, LocaleController.getString(C2573R.string.LinkAbove), C2573R.raw.position_above, LocaleController.getString(C2573R.string.LinkBelow), messagePreviewView.resourcesProvider);
                        page.changePositionBtn = toggleButton7;
                        toggleButton7.setState(!messagePreviewView.messagePreviewParams.webpageTop, false);
                        page.menu.addView((View) page.changePositionBtn, LayoutHelper.createLinear(-1, 48));
                        FrameLayout frameLayout3 = new FrameLayout(context);
                        page.changeSizeBtnContainer = frameLayout3;
                        frameLayout3.setBackground(Theme.createRadSelectorDrawable(messagePreviewView.getThemedColor(Theme.key_dialogButtonSelector), 0, 0));
                        ToggleButton toggleButton8 = new ToggleButton(context, C2573R.raw.media_shrink, LocaleController.getString(C2573R.string.LinkMediaLarger), C2573R.raw.media_enlarge, LocaleController.getString(C2573R.string.LinkMediaSmaller), messagePreviewView.resourcesProvider);
                        page.changeSizeBtn = toggleButton8;
                        toggleButton8.setBackground(null);
                        page.changeSizeBtn.setVisibility(messagePreviewView.messagePreviewParams.isVideo ? 4 : 0);
                        page.changeSizeBtnContainer.addView(page.changeSizeBtn, LayoutHelper.createLinear(-1, 48));
                        ToggleButton toggleButton9 = new ToggleButton(context, C2573R.raw.media_shrink, LocaleController.getString(C2573R.string.LinkVideoLarger), C2573R.raw.media_enlarge, LocaleController.getString(C2573R.string.LinkVideoSmaller), messagePreviewView.resourcesProvider);
                        page.videoChangeSizeBtn = toggleButton9;
                        toggleButton9.setBackground(null);
                        page.videoChangeSizeBtn.setVisibility(messagePreviewView.messagePreviewParams.isVideo ? 0 : 4);
                        page.changeSizeBtnContainer.setAlpha(messagePreviewView.messagePreviewParams.hasMedia ? 1.0f : 0.5f);
                        page.changeSizeBtnContainer.addView(page.videoChangeSizeBtn, LayoutHelper.createLinear(-1, 48));
                        page.menu.addView((View) page.changeSizeBtnContainer, LayoutHelper.createLinear(-1, 48));
                        FrameLayout frameLayout4 = page.changeSizeBtnContainer;
                        MessagePreviewParams messagePreviewParams4 = messagePreviewView.messagePreviewParams;
                        frameLayout4.setVisibility((!messagePreviewParams4.singleLink || messagePreviewParams4.hasMedia) ? 0 : 8);
                        page.changeSizeBtn.setState(messagePreviewView.messagePreviewParams.webpageSmall, false);
                        page.videoChangeSizeBtn.setState(messagePreviewView.messagePreviewParams.webpageSmall, false);
                        ActionBarPopupWindow.GapView gapView4 = new ActionBarPopupWindow.GapView(context, messagePreviewView.resourcesProvider);
                        gapView4.setColor(Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, messagePreviewView.resourcesProvider), 0.06f));
                        gapView4.setTag(C2573R.id.fit_width_tag, 1);
                        page.menu.addView((View) gapView4, LayoutHelper.createLinear(-1, 8));
                        ActionBarMenuSubItem actionBarMenuSubItem15 = new ActionBarMenuSubItem(context, true, false, false, (Theme.ResourcesProvider) messagePreviewView.resourcesProvider);
                        actionBarMenuSubItem15.setTextAndIcon(LocaleController.getString(C2573R.string.ApplyChanges), C2573R.drawable.msg_select);
                        actionBarMenuSubItem15.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$18(view);
                            }
                        });
                        page.menu.addView((View) actionBarMenuSubItem15, LayoutHelper.createLinear(-1, 48));
                        context2 = context;
                        ActionBarMenuSubItem actionBarMenuSubItem16 = new ActionBarMenuSubItem(context2, true, false, true, (Theme.ResourcesProvider) messagePreviewView.resourcesProvider);
                        actionBarMenuSubItem16.setTextAndIcon(LocaleController.getString(C2573R.string.DoNotLinkPreview), C2573R.drawable.msg_delete);
                        int themedColor3 = messagePreviewView.getThemedColor(Theme.key_text_RedBold);
                        int i7 = Theme.key_text_RedRegular;
                        actionBarMenuSubItem16.setColors(themedColor3, messagePreviewView.getThemedColor(i7));
                        actionBarMenuSubItem16.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda8
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$19(view);
                            }
                        });
                        actionBarMenuSubItem16.setSelectorColor(Theme.multAlpha(Theme.getColor(i7), 0.12f));
                        page.menu.addView((View) actionBarMenuSubItem16, LayoutHelper.createLinear(-1, 48));
                        page.changeSizeBtnContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda9
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$20(view);
                            }
                        });
                        page.changePositionBtn.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda10
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$21(view);
                            }
                        });
                    }
                }
                context2 = context;
            }
            int i8 = page.currentTab;
            if (i8 == 1) {
                page.messages = messagePreviewView.messagePreviewParams.forwardMessages;
            } else if (i8 == 0) {
                page.messages = messagePreviewView.messagePreviewParams.replyMessage;
            } else if (i8 == 2) {
                page.messages = messagePreviewView.messagePreviewParams.linkMessage;
            }
            TextSelectionHelper<Cell>.TextSelectionOverlay overlayView = page.textSelectionHelper.getOverlayView(context2);
            page.textSelectionOverlay = overlayView;
            overlayView.setElevation(AndroidUtilities.dp(f));
            page.textSelectionOverlay.setOutlineProvider(null);
            View view = page.textSelectionOverlay;
            if (view != null) {
                if (view.getParent() instanceof ViewGroup) {
                    ((ViewGroup) page.textSelectionOverlay.getParent()).removeView(page.textSelectionOverlay);
                }
                page.addView(page.textSelectionOverlay, LayoutHelper.createFrame(-1, -1.0f, 51, 0.0f, org.telegram.ui.ActionBar.ActionBar.getCurrentActionBarHeight() / AndroidUtilities.density, 0.0f, 0.0f));
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

        /* JADX INFO: renamed from: org.telegram.ui.Components.MessagePreviewView$Page$6 */
        public class C38986 extends RecyclerListView {
            final /* synthetic */ MessagePreviewView val$this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C38986(Context context, Theme.ResourcesProvider resourcesProvider, MessagePreviewView messagePreviewView) {
                super(context, resourcesProvider);
                this.val$this$0 = messagePreviewView;
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                if (view instanceof ChatMessageCell) {
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
                    if (chatMessageCell.getCurrentMessagesGroup() != null || chatMessageCell.getTransitionParams().animateBackgroundBoundsInner) {
                        chatMessageCell.drawNamesLayout(canvas, chatMessageCell.getAlpha());
                    }
                    if ((chatMessageCell.getCurrentPosition() != null && chatMessageCell.getCurrentPosition().last) || chatMessageCell.getTransitionParams().animateBackgroundBoundsInner) {
                        chatMessageCell.drawTime(canvas, chatMessageCell.getAlpha(), true);
                    }
                    chatMessageCell.drawOverlays(canvas);
                    canvas.restore();
                    chatMessageCell.getTransitionParams().recordDrawingStatePreview();
                    canvas.restore();
                    return zDrawChild;
                }
                return super.drawChild(canvas, view, j);
            }

            @Override // org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                for (int i = 0; i < getChildCount(); i++) {
                    View childAt = getChildAt(i);
                    if (childAt instanceof ChatMessageCell) {
                        ((ChatMessageCell) childAt).setParentViewSize(Page.this.chatPreviewContainer.getMeasuredWidth(), Page.this.chatPreviewContainer.getBackgroundSizeY());
                    }
                }
                drawChatBackgroundElements(canvas);
                super.dispatchDraw(canvas);
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i, int i2, int i3, int i4) {
                if (Page.this.firstLayout) {
                    if (Page.this.currentTab != 0) {
                        scrollToPosition(0);
                    }
                    Page.this.firstLayout = false;
                }
                super.onLayout(z, i, i2, i3, i4);
                Page.this.updatePositions();
                Page.this.checkScroll();
                Page page = Page.this;
                if (page.shouldScrollToQuote && page.currentTab == 0) {
                    final int i5 = page.scrollToQuoteStartY;
                    final int i6 = page.scrollToQuoteEndY;
                    page.shouldScrollToQuote = false;
                    post(new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$6$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onLayout$0(i5, i6);
                        }
                    });
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onLayout$0(int i, int i2) {
                View replyMessageCell = Page.this.getReplyMessageCell();
                if (replyMessageCell == null) {
                    return;
                }
                int top = replyMessageCell.getTop() + i;
                int top2 = replyMessageCell.getTop() + i2;
                int i3 = top2 - top;
                int paddingTop = Page.this.chatListView.getPaddingTop();
                int height = Page.this.chatListView.getHeight() - Page.this.chatListView.getPaddingBottom();
                if (i3 <= height - paddingTop) {
                    top = (top + top2) / 2;
                    paddingTop = (paddingTop + height) / 2;
                }
                int i4 = top - paddingTop;
                if (i4 < 0) {
                    Page.this.chatListView.scrollBy(0, i4);
                }
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
                MessageObject.GroupedMessages currentMessagesGroup2;
                int childCount = getChildCount();
                boolean z2 = false;
                MessageObject.GroupedMessages groupedMessages = null;
                for (int i = 0; i < childCount; i++) {
                    View childAt = getChildAt(i);
                    if ((childAt instanceof ChatMessageCell) && ((currentMessagesGroup2 = ((ChatMessageCell) childAt).getCurrentMessagesGroup()) == null || currentMessagesGroup2 != groupedMessages)) {
                        groupedMessages = currentMessagesGroup2;
                    }
                }
                int i2 = 0;
                while (i2 < 3) {
                    MessagePreviewView.this.drawingGroups.clear();
                    if (i2 != 2 || Page.this.chatListView.isFastScrollAnimationRunning()) {
                        int i3 = z2 ? 1 : 0;
                        while (true) {
                            z = true;
                            if (i3 >= childCount) {
                                break;
                            }
                            View childAt2 = Page.this.chatListView.getChildAt(i3);
                            if (childAt2 instanceof ChatMessageCell) {
                                ChatMessageCell chatMessageCell = (ChatMessageCell) childAt2;
                                if (childAt2.getY() <= Page.this.chatListView.getHeight() && childAt2.getY() + childAt2.getHeight() >= 0.0f && (currentMessagesGroup = chatMessageCell.getCurrentMessagesGroup()) != null && ((i2 != 0 || currentMessagesGroup.messages.size() != 1) && ((i2 != 1 || currentMessagesGroup.transitionParams.drawBackgroundForDeletedItems) && ((i2 != 0 || !chatMessageCell.getMessageObject().deleted) && ((i2 != 1 || chatMessageCell.getMessageObject().deleted) && ((i2 != 2 || chatMessageCell.willRemovedAfterAnimation()) && (i2 == 2 || !chatMessageCell.willRemovedAfterAnimation()))))))) {
                                    if (!MessagePreviewView.this.drawingGroups.contains(currentMessagesGroup)) {
                                        MessageObject.GroupedMessages.TransitionParams transitionParams = currentMessagesGroup.transitionParams;
                                        transitionParams.left = z2 ? 1 : 0;
                                        transitionParams.top = z2 ? 1 : 0;
                                        transitionParams.right = z2 ? 1 : 0;
                                        transitionParams.bottom = z2 ? 1 : 0;
                                        transitionParams.pinnedBotton = z2;
                                        transitionParams.pinnedTop = z2;
                                        transitionParams.cell = chatMessageCell;
                                        MessagePreviewView.this.drawingGroups.add(currentMessagesGroup);
                                    }
                                    currentMessagesGroup.transitionParams.pinnedTop = chatMessageCell.isPinnedTop();
                                    currentMessagesGroup.transitionParams.pinnedBotton = chatMessageCell.isPinnedBottom();
                                    int left = chatMessageCell.getLeft() + chatMessageCell.getBackgroundDrawableLeft();
                                    int left2 = chatMessageCell.getLeft() + chatMessageCell.getBackgroundDrawableRight();
                                    int top = chatMessageCell.getTop() + chatMessageCell.getPaddingTop() + chatMessageCell.getBackgroundDrawableTop();
                                    int top2 = chatMessageCell.getTop() + chatMessageCell.getPaddingTop() + chatMessageCell.getBackgroundDrawableBottom();
                                    if ((chatMessageCell.getCurrentPosition().flags & 4) == 0) {
                                        top -= AndroidUtilities.dp(10.0f);
                                    }
                                    if ((chatMessageCell.getCurrentPosition().flags & 8) == 0) {
                                        top2 += AndroidUtilities.dp(10.0f);
                                    }
                                    if (chatMessageCell.willRemovedAfterAnimation()) {
                                        currentMessagesGroup.transitionParams.cell = chatMessageCell;
                                    }
                                    MessageObject.GroupedMessages.TransitionParams transitionParams2 = currentMessagesGroup.transitionParams;
                                    int i4 = transitionParams2.top;
                                    if (i4 == 0 || top < i4) {
                                        transitionParams2.top = top;
                                    }
                                    int i5 = transitionParams2.bottom;
                                    if (i5 == 0 || top2 > i5) {
                                        transitionParams2.bottom = top2;
                                    }
                                    int i6 = transitionParams2.left;
                                    if (i6 == 0 || left < i6) {
                                        transitionParams2.left = left;
                                    }
                                    int i7 = transitionParams2.right;
                                    if (i7 == 0 || left2 > i7) {
                                        transitionParams2.right = left2;
                                    }
                                }
                            }
                            i3++;
                        }
                        int i8 = z2 ? 1 : 0;
                        while (i8 < MessagePreviewView.this.drawingGroups.size()) {
                            MessageObject.GroupedMessages groupedMessages2 = (MessageObject.GroupedMessages) MessagePreviewView.this.drawingGroups.get(i8);
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
                                if (translationY < (-AndroidUtilities.dp(20.0f))) {
                                    translationY = -AndroidUtilities.dp(20.0f);
                                }
                                if (measuredHeight > Page.this.chatListView.getMeasuredHeight() + AndroidUtilities.dp(20.0f)) {
                                    measuredHeight = Page.this.chatListView.getMeasuredHeight() + AndroidUtilities.dp(20.0f);
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
                                    for (int i9 = 0; i9 < childCount; i9++) {
                                        View childAt3 = Page.this.chatListView.getChildAt(i9);
                                        if (childAt3 instanceof ChatMessageCell) {
                                            ChatMessageCell chatMessageCell2 = (ChatMessageCell) childAt3;
                                            if (chatMessageCell2.getCurrentMessagesGroup() == groupedMessages2) {
                                                int left3 = chatMessageCell2.getLeft();
                                                int top3 = chatMessageCell2.getTop();
                                                childAt3.setPivotX((f2 - left3) + ((f3 - f2) / f));
                                                childAt3.setPivotY((translationY - top3) + ((measuredHeight - translationY) / f));
                                            }
                                        }
                                    }
                                }
                            }
                            i8++;
                            z2 = false;
                            z = true;
                        }
                    }
                    i2++;
                    z2 = false;
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView
            public void onScrollStateChanged(int i) {
                if (i == 0) {
                    Page.this.textSelectionHelper.stopScrolling();
                }
                super.onScrollStateChanged(i);
            }

            @Override // androidx.recyclerview.widget.RecyclerView
            public void onScrolled(int i, int i2) {
                super.onScrolled(i, i2);
                Page.this.textSelectionHelper.onParentScrolled();
            }
        }

        /* JADX INFO: renamed from: org.telegram.ui.Components.MessagePreviewView$Page$7 */
        public class C38997 extends ChatListItemAnimator {
            Runnable finishRunnable;
            int scrollAnimationIndex;
            final /* synthetic */ MessagePreviewView val$this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C38997(ChatActivity chatActivity, RecyclerListView recyclerListView, Theme.ResourcesProvider resourcesProvider, MessagePreviewView messagePreviewView) {
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
            public void onAllAnimationsDone() {
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

        /* JADX INFO: renamed from: org.telegram.ui.Components.MessagePreviewView$Page$10, reason: invalid class name */
        public class AnonymousClass10 extends GridLayoutManagerFixed {
            final /* synthetic */ MessagePreviewView val$this$0;

            @Override // androidx.recyclerview.widget.GridLayoutManagerFixed
            public boolean shouldLayoutChildFromOpositeSide(View view) {
                return false;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass10(Context context, int i, int i2, boolean z, MessagePreviewView messagePreviewView) {
                super(context, i, i2, z);
                this.val$this$0 = messagePreviewView;
            }

            @Override // androidx.recyclerview.widget.GridLayoutManagerFixed
            public boolean hasSiblingChild(int i) {
                byte b2;
                MessageObject messageObject = Page.this.messages.previewMessages.get(i);
                MessageObject.GroupedMessages validGroupedMessage = Page.this.getValidGroupedMessage(messageObject);
                if (validGroupedMessage != null) {
                    MessageObject.GroupedMessagePosition position = validGroupedMessage.getPosition(messageObject);
                    if (position.minX != position.maxX && (b2 = position.minY) == position.maxY && b2 != 0) {
                        int size = validGroupedMessage.posArray.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            MessageObject.GroupedMessagePosition groupedMessagePosition = validGroupedMessage.posArray.get(i2);
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

            @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
                if (BuildVars.DEBUG_PRIVATE_VERSION) {
                    super.onLayoutChildren(recycler, state);
                    return;
                }
                try {
                    super.onLayoutChildren(recycler, state);
                } catch (Exception e) {
                    FileLog.m898e(e);
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
                MessageObject replyMessage = getReplyMessage(this.textSelectionHelper.getSelectedCell() != null ? this.textSelectionHelper.getSelectedCell().getMessageObject() : null);
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
                boolean zIsInSelectionMode = this.textSelectionHelper.isInSelectionMode();
                MessagePreviewView messagePreviewView2 = MessagePreviewView.this;
                if (zIsInSelectionMode) {
                    MessagePreviewParams messagePreviewParams2 = messagePreviewView2.messagePreviewParams;
                    TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper2 = this.textSelectionHelper;
                    messagePreviewParams2.quoteStart = chatListTextSelectionHelper2.selectionStart;
                    messagePreviewParams2.quoteEnd = chatListTextSelectionHelper2.selectionEnd;
                    MessageObject replyMessage2 = getReplyMessage(chatListTextSelectionHelper2.getSelectedCell() != null ? this.textSelectionHelper.getSelectedCell().getMessageObject() : null);
                    MessagePreviewParams messagePreviewParams3 = MessagePreviewView.this.messagePreviewParams;
                    messagePreviewParams3.quote = ChatActivity.ReplyQuote.from(replyMessage2, messagePreviewParams3.quoteStart, messagePreviewParams3.quoteEnd);
                    MessagePreviewView.this.onQuoteSelectedPart();
                    MessagePreviewView.this.dismiss(true);
                    return;
                }
                MessagePreviewParams messagePreviewParams4 = messagePreviewView2.messagePreviewParams;
                messagePreviewParams4.quoteStart = 0;
                messagePreviewParams4.quoteEnd = Math.min(MessagesController.getInstance(messagePreviewView2.currentAccount).quoteLengthMax, replyMessage.messageOwner.message.length());
                MessagePreviewParams messagePreviewParams5 = MessagePreviewView.this.messagePreviewParams;
                messagePreviewParams5.quote = ChatActivity.ReplyQuote.from(replyMessage, messagePreviewParams5.quoteStart, messagePreviewParams5.quoteEnd);
                View replyMessageCell = getReplyMessageCell();
                if (replyMessageCell instanceof ChatMessageCell) {
                    MessagePreviewParams messagePreviewParams6 = MessagePreviewView.this.messagePreviewParams;
                    this.textSelectionHelper.select((ChatMessageCell) replyMessageCell, messagePreviewParams6.quoteStart, messagePreviewParams6.quoteEnd);
                }
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
        public /* synthetic */ void lambda$new$15(final Context context) {
            MessagePreviewView.this.dismiss(false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$14(context);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$14(Context context) {
            if (AndroidUtilities.isContextSafe(context)) {
                new PremiumFeatureBottomSheet(context, 43, true, (Theme.ResourcesProvider) MessagePreviewView.this.resourcesProvider).show();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$16(boolean z, final Context context, ToggleButton toggleButton, ToggleButton toggleButton2, View view) {
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            if (!z) {
                BulletinFactory.of(messagePreviewView, messagePreviewView.resourcesProvider).createSimpleBulletin(C2573R.raw.star_premium_2, AndroidUtilities.replaceSingleTag("Subscribe to **Telegram Premium** to forward formatted messages without the sender’s name.", new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda22
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$15(context);
                    }
                })).show();
                return;
            }
            MessagePreviewParams messagePreviewParams = messagePreviewView.messagePreviewParams;
            boolean z2 = messagePreviewParams.hideForwardSendersName;
            messagePreviewParams.hideForwardSendersName = !z2;
            messagePreviewView.returnSendersNames = false;
            if (z2) {
                messagePreviewParams.hideCaption = false;
                if (toggleButton != null) {
                    toggleButton.setState(false, true);
                }
            }
            toggleButton2.setState(MessagePreviewView.this.messagePreviewParams.hideForwardSendersName, true);
            updateMessages();
            updateSubtitle(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$17(ToggleButton toggleButton, ToggleButton toggleButton2, View view) {
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            MessagePreviewParams messagePreviewParams = messagePreviewView.messagePreviewParams;
            boolean z = messagePreviewParams.hideCaption;
            boolean z2 = !z;
            messagePreviewParams.hideCaption = z2;
            if (!z) {
                if (!messagePreviewParams.hideForwardSendersName) {
                    messagePreviewParams.hideForwardSendersName = true;
                    messagePreviewView.returnSendersNames = true;
                }
            } else {
                if (messagePreviewView.returnSendersNames) {
                    messagePreviewParams.hideForwardSendersName = false;
                }
                messagePreviewView.returnSendersNames = false;
            }
            toggleButton.setState(z2, true);
            toggleButton2.setState(MessagePreviewView.this.messagePreviewParams.hideForwardSendersName, true);
            updateMessages();
            updateSubtitle(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$18(View view) {
            MessagePreviewView.this.dismiss(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$19(View view) {
            MessagePreviewView.this.removeLink();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$20(View view) {
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
        public /* synthetic */ void lambda$new$21(View view) {
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
                    postDelayed(new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda24
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$checkScroll$22();
                        }
                    }, 0L);
                }
                this.updateScroll = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$checkScroll$22() {
            boolean z = MessagePreviewView.this.messagePreviewParams.webpageTop;
            RecyclerListView recyclerListView = this.chatListView;
            if (z) {
                recyclerListView.smoothScrollBy(0, -recyclerListView.computeVerticalScrollOffset(), 250, ChatListItemAnimator.DEFAULT_INTERPOLATOR);
            } else {
                recyclerListView.smoothScrollBy(0, recyclerListView.computeVerticalScrollRange() - (this.chatListView.computeVerticalScrollOffset() + this.chatListView.computeVerticalScrollExtent()), 250, ChatListItemAnimator.DEFAULT_INTERPOLATOR);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void showQuoteLengthError() {
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            BulletinFactory.of(messagePreviewView, messagePreviewView.resourcesProvider).createSimpleBulletin(C2573R.raw.error, LocaleController.getString(C2573R.string.QuoteMaxError), LocaleController.getString(C2573R.string.QuoteMaxErrorMessage)).show();
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
                        this.actionBar.setTitle(LocaleController.getString(C2573R.string.MessageOptionsLinkTitle), z);
                        this.actionBar.setSubtitle(LocaleController.getString(C2573R.string.MessageOptionsLinkSubtitle), z);
                        return;
                    }
                    return;
                }
                MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
                if (messagePreviewParams.quote != null && messagePreviewParams.replyMessage.hasText) {
                    this.actionBar.setTitle(LocaleController.getString(C2573R.string.PreviewQuoteUpdate), z);
                    this.actionBar.setSubtitle(LocaleController.getString(C2573R.string.PreviewQuoteUpdateSubtitle), z);
                    return;
                } else {
                    this.actionBar.setTitle(LocaleController.getString(C2573R.string.MessageOptionsReplyTitle), z);
                    this.actionBar.setSubtitle(MessagePreviewView.this.messagePreviewParams.replyMessage.hasText ? LocaleController.getString(C2573R.string.MessageOptionsReplySubtitle) : _UrlKt.FRAGMENT_ENCODE_SET, z);
                    return;
                }
            }
            ActionBar actionBar = this.actionBar;
            MessagePreviewParams.Messages messages = MessagePreviewView.this.messagePreviewParams.forwardMessages;
            actionBar.setTitle(LocaleController.formatPluralString("PreviewForwardMessagesCount", messages == null ? 0 : messages.getSelectedCount(), new Object[0]), z);
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            MessagePreviewParams messagePreviewParams2 = messagePreviewView.messagePreviewParams;
            if (!messagePreviewParams2.hasSenders) {
                if (messagePreviewParams2.willSeeSenders) {
                    TLRPC.User user = messagePreviewView.currentUser;
                    if (user != null) {
                        string = LocaleController.formatString("ForwardPreviewSendersNameVisible", C2573R.string.ForwardPreviewSendersNameVisible, ContactsController.formatName(user.first_name, user.last_name));
                    } else if (ChatObject.isChannel(messagePreviewView.currentChat) && !MessagePreviewView.this.currentChat.megagroup) {
                        string = LocaleController.getString(C2573R.string.ForwardPreviewSendersNameVisibleChannel);
                    } else {
                        string = LocaleController.getString(C2573R.string.ForwardPreviewSendersNameVisibleGroup);
                    }
                } else {
                    TLRPC.User user2 = messagePreviewView.currentUser;
                    if (user2 != null) {
                        string = LocaleController.formatString("ForwardPreviewSendersNameVisible", C2573R.string.ForwardPreviewSendersNameVisible, ContactsController.formatName(user2.first_name, user2.last_name));
                    } else if (ChatObject.isChannel(messagePreviewView.currentChat) && !MessagePreviewView.this.currentChat.megagroup) {
                        string = LocaleController.getString(C2573R.string.ForwardPreviewSendersNameHiddenChannel);
                    } else {
                        string = LocaleController.getString(C2573R.string.ForwardPreviewSendersNameHiddenGroup);
                    }
                }
            } else if (!messagePreviewParams2.hideForwardSendersName) {
                TLRPC.User user3 = messagePreviewView.currentUser;
                if (user3 != null) {
                    string = LocaleController.formatString("ForwardPreviewSendersNameVisible", C2573R.string.ForwardPreviewSendersNameVisible, ContactsController.formatName(user3.first_name, user3.last_name));
                } else if (ChatObject.isChannel(messagePreviewView.currentChat) && !MessagePreviewView.this.currentChat.megagroup) {
                    string = LocaleController.getString(C2573R.string.ForwardPreviewSendersNameVisibleChannel);
                } else {
                    string = LocaleController.getString(C2573R.string.ForwardPreviewSendersNameVisibleGroup);
                }
            } else {
                TLRPC.User user4 = messagePreviewView.currentUser;
                if (user4 != null) {
                    string = LocaleController.formatString("ForwardPreviewSendersNameHidden", C2573R.string.ForwardPreviewSendersNameHidden, ContactsController.formatName(user4.first_name, user4.last_name));
                } else if (ChatObject.isChannel(messagePreviewView.currentChat) && !MessagePreviewView.this.currentChat.megagroup) {
                    string = LocaleController.getString(C2573R.string.ForwardPreviewSendersNameHiddenChannel);
                } else {
                    string = LocaleController.getString(C2573R.string.ForwardPreviewSendersNameHiddenGroup);
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
                boolean z = messagePreviewParams.hideForwardSendersName;
                TLRPC.Message message2 = messageObject.messageOwner;
                if (!z) {
                    message2.flags |= 4;
                    messageObject.hideSendersName = false;
                } else {
                    message2.flags &= -5;
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
                        boolean z2 = messagePreviewParams2.webpageSmall;
                        messageMedia2.force_large_media = !z2;
                        messageMedia2.force_small_media = z2;
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
                        TLRPC.Message message3 = messageObject.messageOwner;
                        message3.flags &= -513;
                        message3.media = null;
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
            this.adapter.notifyItemRangeChanged(0, this.messages.previewMessages.size());
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            int size;
            MessagePreviewView.this.isLandscapeMode = View.MeasureSpec.getSize(i) > View.MeasureSpec.getSize(i2);
            this.buttonsHeight = 0;
            this.menu.measure(i, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 0));
            int i3 = this.buttonsHeight;
            int measuredHeight = this.menu.getMeasuredHeight();
            Rect rect = this.rect;
            this.buttonsHeight = Math.max(i3, measuredHeight + rect.top + rect.bottom);
            ((ViewGroup.MarginLayoutParams) this.chatListView.getLayoutParams()).topMargin = org.telegram.ui.ActionBar.ActionBar.getCurrentActionBarHeight();
            boolean z = MessagePreviewView.this.isLandscapeMode;
            SizeNotifierFrameLayout sizeNotifierFrameLayout = this.chatPreviewContainer;
            if (z) {
                sizeNotifierFrameLayout.getLayoutParams().height = -1;
                ((ViewGroup.MarginLayoutParams) this.chatPreviewContainer.getLayoutParams()).topMargin = AndroidUtilities.dp(8.0f);
                ((ViewGroup.MarginLayoutParams) this.chatPreviewContainer.getLayoutParams()).bottomMargin = AndroidUtilities.dp(8.0f);
                this.chatPreviewContainer.getLayoutParams().width = (int) Math.min(View.MeasureSpec.getSize(i), Math.max(AndroidUtilities.dp(340.0f), View.MeasureSpec.getSize(i) * 0.6f));
                this.menu.getLayoutParams().height = -1;
            } else {
                ((ViewGroup.MarginLayoutParams) sizeNotifierFrameLayout.getLayoutParams()).topMargin = 0;
                ((ViewGroup.MarginLayoutParams) this.chatPreviewContainer.getLayoutParams()).bottomMargin = 0;
                this.chatPreviewContainer.getLayoutParams().height = (View.MeasureSpec.getSize(i2) - AndroidUtilities.dp(6.0f)) - this.buttonsHeight;
                if (this.chatPreviewContainer.getLayoutParams().height < View.MeasureSpec.getSize(i2) * 0.5f) {
                    this.chatPreviewContainer.getLayoutParams().height = (int) (View.MeasureSpec.getSize(i2) * 0.5f);
                }
                this.chatPreviewContainer.getLayoutParams().width = -1;
                this.menu.getLayoutParams().height = View.MeasureSpec.getSize(i2) - this.chatPreviewContainer.getLayoutParams().height;
            }
            int size2 = (View.MeasureSpec.getSize(i) + View.MeasureSpec.getSize(i2)) << 16;
            if (this.lastSize != size2) {
                for (int i4 = 0; i4 < this.messages.previewMessages.size(); i4++) {
                    MessageObject messageObject = this.messages.previewMessages.get(i4);
                    if (MessagePreviewView.this.isLandscapeMode) {
                        size = this.chatPreviewContainer.getLayoutParams().width;
                    } else {
                        size = View.MeasureSpec.getSize(i) - AndroidUtilities.dp(16.0f);
                    }
                    messageObject.parentWidth = size;
                    messageObject.resetLayout();
                    messageObject.forceUpdate = true;
                    Adapter adapter = this.adapter;
                    if (adapter != null) {
                        adapter.notifyDataSetChanged();
                    }
                }
                this.firstLayout = true;
            }
            this.lastSize = size2;
            super.onMeasure(i, i2);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            updatePositions();
            this.firstLayout = false;
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
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
                MessageObject replyMessage = getReplyMessage(this.textSelectionHelper.getSelectedCell() != null ? this.textSelectionHelper.getSelectedCell().getMessageObject() : null);
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
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.currentTab == 0) {
                AndroidUtilities.forEachViews((RecyclerView) this.chatListView, (Consumer<View>) new Consumer() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda21
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$onAttachedToWindow$23((View) obj);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAttachedToWindow$23(View view) {
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
                    int iMax = Math.max(0, measuredHeight - AndroidUtilities.dp(4.0f));
                    this.chatTopOffset = iMax;
                    this.chatTopOffset = Math.min((iMax + (this.chatListView.getMeasuredHeight() - this.chatTopOffset)) - ((int) ((((AndroidUtilities.displaySize.y - (Build.VERSION.SDK_INT >= 35 ? AndroidUtilities.navigationBarHeight : 0)) * 0.8f) - this.buttonsHeight) - AndroidUtilities.dp(8.0f))), this.chatTopOffset);
                }
                float fDp = (AndroidUtilities.dp(8.0f) + (((getMeasuredHeight() - AndroidUtilities.dp(16.0f)) - ((this.buttonsHeight - AndroidUtilities.dp(8.0f)) + (this.chatPreviewContainer.getMeasuredHeight() - this.chatTopOffset))) / 2.0f)) - this.chatTopOffset;
                this.yOffset = fDp;
                if (fDp > AndroidUtilities.dp(8.0f)) {
                    this.yOffset = AndroidUtilities.dp(8.0f);
                }
                this.menu.setTranslationX(getMeasuredWidth() - this.menu.getMeasuredWidth());
            } else {
                this.yOffset = 0.0f;
                this.chatTopOffset = 0;
                this.menu.setTranslationX(this.chatListView.getMeasuredWidth() + AndroidUtilities.dp(8.0f));
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
            MessagePreviewView.this.offsetsAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda20
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$updatePositions$24(i, f, valueAnimator2);
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
        public /* synthetic */ void lambda$updatePositions$24(int i, float f, ValueAnimator valueAnimator) {
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
            boolean z = MessagePreviewView.this.isLandscapeMode;
            ActionBar actionBar = this.actionBar;
            if (z) {
                actionBar.setTranslationY(0.0f);
                this.chatPreviewContainer.invalidateOutline();
                this.chatPreviewContainer.setTranslationY(0.0f);
                this.menu.setTranslationY(0.0f);
            } else {
                actionBar.setTranslationY(i);
                this.chatPreviewContainer.invalidateOutline();
                this.chatPreviewContainer.setTranslationY(f);
                this.menu.setTranslationY((f + this.chatPreviewContainer.getMeasuredHeight()) - AndroidUtilities.dp(2.0f));
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

        public class Adapter extends RecyclerView.Adapter {
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                return 0;
            }

            private Adapter() {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                Context context = viewGroup.getContext();
                int i2 = MessagePreviewView.this.currentAccount;
                Page page = Page.this;
                ChatMessageCell chatMessageCell = new ChatMessageCell(context, i2, false, page.sharedResources, MessagePreviewView.this.resourcesProvider) { // from class: org.telegram.ui.Components.MessagePreviewView.Page.Adapter.1
                    @Override // org.telegram.ui.Cells.ChatMessageCell, org.telegram.ui.Cells.BaseCell, android.view.View
                    public void invalidate() {
                        super.invalidate();
                        Page.this.chatListView.invalidate();
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell, android.view.View
                    public void invalidate(int i3, int i4, int i5, int i6) {
                        super.invalidate(i3, i4, i5, i6);
                        Page.this.chatListView.invalidate();
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell
                    public void setMessageObject(MessageObject messageObject, MessageObject.GroupedMessages groupedMessages, boolean z, boolean z2, boolean z3, boolean z4) {
                        MessageObject messageObject2 = getMessageObject();
                        boolean z5 = messageObject2 != null && messageObject != null && messageObject2.getId() == messageObject.getId() && messageObject.preview && messageObject.isAnyKindOfSticker() && !ExteraConfig.getHideStickerTime();
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

                    @Override // org.telegram.ui.Cells.ChatMessageCell, android.view.ViewGroup, android.view.View
                    public void onLayout(boolean z, int i3, int i4, int i5, int i6) {
                        super.onLayout(z, i3, i4, i5, i6);
                        Page.this.updateLinkHighlight(this);
                    }
                };
                chatMessageCell.setClipChildren(false);
                chatMessageCell.setClipToPadding(false);
                chatMessageCell.setDelegate(new ChatMessageCell.ChatMessageCellDelegate() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.Adapter.2
                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public boolean hasSelectedMessages() {
                        return true;
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
                if (Page.this.messages != null && viewHolder.getItemViewType() == 0) {
                    ChatMessageCell chatMessageCell = (ChatMessageCell) viewHolder.itemView;
                    chatMessageCell.setInvalidateSpoilersParent(Page.this.messages.hasSpoilers);
                    chatMessageCell.setParentViewSize(Page.this.chatListView.getMeasuredWidth(), Page.this.chatListView.getMeasuredHeight());
                    int id = chatMessageCell.getMessageObject() != null ? chatMessageCell.getMessageObject().getId() : 0;
                    Page page = Page.this;
                    if (page.currentTab == 2) {
                        MessagePreviewView.this.messagePreviewParams.checkCurrentLink(page.messages.previewMessages.get(i));
                    }
                    MessageObject messageObject = Page.this.messages.previewMessages.get(i);
                    MessagePreviewParams.Messages messages = Page.this.messages;
                    chatMessageCell.setMessageObject(messageObject, messages.groupedMessagesMap.get(messages.previewMessages.get(i).getGroupId()), true, true, false);
                    if (Page.this.currentTab == 1) {
                        chatMessageCell.setDelegate(new ChatMessageCell.ChatMessageCellDelegate() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.Adapter.3
                        });
                    }
                    if (Page.this.messages.previewMessages.size() > 1) {
                        chatMessageCell.setCheckBoxVisible(Page.this.currentTab == 1, false);
                        boolean z = id == Page.this.messages.previewMessages.get(i).getId();
                        MessagePreviewParams.Messages messages2 = Page.this.messages;
                        boolean zIsSelected = messages2.isSelected(messages2.previewMessages.get(i));
                        chatMessageCell.setChecked(zIsSelected, zIsSelected, z);
                    }
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
                int i;
                Page page = Page.this;
                if (page.messages == null || (i = page.currentTab) == 1) {
                    return;
                }
                View view = viewHolder.itemView;
                if (view instanceof ChatMessageCell) {
                    ChatMessageCell chatMessageCell = (ChatMessageCell) view;
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
                            page4.scrollToQuoteStartY = offset(chatMessageCell, MessagePreviewView.this.messagePreviewParams.quoteStart, false);
                            Page page5 = Page.this;
                            page5.scrollToQuoteEndY = offset(chatMessageCell, MessagePreviewView.this.messagePreviewParams.quoteEnd, true);
                            Page page6 = Page.this;
                            page6.shouldScrollToQuote = true;
                            page6.firstAttach = false;
                            return;
                        }
                        return;
                    }
                    chatMessageCell.setDrawSelectionBackground(false);
                }
            }

            private int offset(ChatMessageCell chatMessageCell, int i, boolean z) {
                MessageObject messageObject;
                int iDp;
                ArrayList<MessageObject.TextLayoutBlock> arrayList;
                CharSequence charSequence;
                float lineBottom;
                MessageObject.TextLayoutBlocks textLayoutBlocks;
                if (chatMessageCell == null || (messageObject = chatMessageCell.getMessageObject()) == null || messageObject.getGroupId() != 0) {
                    return 0;
                }
                if (!TextUtils.isEmpty(messageObject.caption) && (textLayoutBlocks = chatMessageCell.captionLayout) != null) {
                    iDp = (int) chatMessageCell.captionY;
                    charSequence = messageObject.caption;
                    arrayList = textLayoutBlocks.textLayoutBlocks;
                } else {
                    chatMessageCell.layoutTextXY(true);
                    iDp = chatMessageCell.textY;
                    CharSequence charSequence2 = messageObject.messageText;
                    ArrayList<MessageObject.TextLayoutBlock> arrayList2 = messageObject.textLayoutBlocks;
                    if (chatMessageCell.linkPreviewAbove) {
                        iDp += chatMessageCell.linkPreviewHeight + AndroidUtilities.dp(10.0f);
                    }
                    arrayList = arrayList2;
                    charSequence = charSequence2;
                }
                if (arrayList != null && charSequence != null) {
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        MessageObject.TextLayoutBlock textLayoutBlock = arrayList.get(i2);
                        StaticLayout staticLayout = textLayoutBlock.textLayout;
                        String string = staticLayout.getText().toString();
                        int i3 = textLayoutBlock.charactersOffset;
                        if (i > i3) {
                            if (i - i3 > string.length() - 1) {
                                lineBottom = iDp + ((int) (textLayoutBlock.textYOffset(arrayList, chatMessageCell.transitionParams) + textLayoutBlock.padTop + textLayoutBlock.height));
                            } else {
                                int lineForOffset = staticLayout.getLineForOffset(i - textLayoutBlock.charactersOffset);
                                lineBottom = (z ? staticLayout.getLineBottom(lineForOffset) : staticLayout.getLineTop(lineForOffset)) + iDp + textLayoutBlock.textYOffset(arrayList, chatMessageCell.transitionParams) + textLayoutBlock.padTop;
                            }
                            return (int) lineBottom;
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

    @SuppressLint({"ClickableViewAccessibility"})
    public MessagePreviewView(final Context context, ChatActivity chatActivity, BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory, MessagePreviewParams messagePreviewParams, TLRPC.User user, TLRPC.Chat chat, int i, ResourcesDelegate resourcesDelegate, int i2, final boolean z) {
        super(context);
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
        this.drawingGroups = new ArrayList<>(10);
        this.showOutdatedQuote = z;
        this.chatActivity = chatActivity;
        this.currentAccount = i;
        this.iBlur3Factory = blurredBackgroundDrawableViewFactory;
        this.currentUser = user;
        this.currentChat = chat;
        this.messagePreviewParams = messagePreviewParams;
        this.resourcesProvider = resourcesDelegate;
        this.viewPager = new ViewPagerFixed(context, resourcesDelegate) { // from class: org.telegram.ui.Components.MessagePreviewView.2
            @Override // org.telegram.ui.Components.ViewPagerFixed
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

            @Override // org.telegram.ui.Components.ViewPagerFixed
            public void onScrollEnd() {
                View view = this.viewPages[0];
                if (view instanceof Page) {
                    ((Page) view).textSelectionHelper.stopScrolling();
                }
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (MessagePreviewView.this.isTouchedHandle()) {
                    return false;
                }
                return super.onTouchEvent(motionEvent);
            }
        };
        TabsView tabsView = new TabsView(context, resourcesDelegate);
        this.tabsView = tabsView;
        tabsView.setBackground(blurredBackgroundDrawableViewFactory.create(tabsView).setColorProvider(BlurredBackgroundProviderImpl.scrimMenuBackground(resourcesDelegate)).setHasPadding(true).setPadding(AndroidUtilities.dp(8.0f)).setRadius(AndroidUtilities.dp(16.0f)));
        int size = 0;
        for (int i3 = 0; i3 < 3; i3++) {
            if (i3 == 0 && messagePreviewParams.replyMessage != null) {
                this.tabsView.addTab(0, LocaleController.getString(C2573R.string.MessageOptionsReply));
            } else if (i3 == 1 && messagePreviewParams.forwardMessages != null && !z) {
                this.tabsView.addTab(1, LocaleController.getString(C2573R.string.MessageOptionsForward));
            } else if (i3 == 2 && messagePreviewParams.linkMessage != null && !z) {
                this.tabsView.addTab(2, LocaleController.getString(C2573R.string.MessageOptionsLink));
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
                return MessagePreviewView.this.tabsView.tabs.get(i4).id;
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
        if (this.tabsView.tabs.get(this.viewPager.getCurrentPosition()).id == num.intValue()) {
            return;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= this.tabsView.tabs.size()) {
                break;
            }
            if (this.tabsView.tabs.get(i2).id == num.intValue()) {
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

    public static class TabsView extends View {
        private Drawable bgDrawable;
        private final Paint bgPaint;
        private int color;
        private float marginBetween;
        private Utilities.Callback<Integer> onTabClick;
        private final Theme.ResourcesProvider resourcesProvider;
        private RectF selectRect;
        private int selectedColor;
        private float selectedTab;
        private float tabInnerPadding;
        public final ArrayList<Tab> tabs;

        public static class Tab {
            final RectF bounds = new RectF();
            final RectF clickBounds = new RectF();
            final int id;
            final Text text;

            public Tab(int i, String str) {
                this.id = i;
                this.text = new Text(str, 14.0f, AndroidUtilities.bold());
            }
        }

        public TabsView(Context context, Theme.ResourcesProvider resourcesProvider) {
            int[] colors;
            super(context);
            this.tabs = new ArrayList<>();
            Paint paint = new Paint(1);
            this.bgPaint = paint;
            this.tabInnerPadding = AndroidUtilities.dp(14.0f);
            this.marginBetween = AndroidUtilities.dp(0.0f);
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
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            this.tabInnerPadding = AndroidUtilities.dp(14.0f);
            float width = 0.0f;
            this.marginBetween = AndroidUtilities.dp(0.0f);
            for (int i3 = 0; i3 < this.tabs.size(); i3++) {
                if (i3 > 0) {
                    width += this.marginBetween;
                }
                width += this.tabInnerPadding + this.tabs.get(i3).text.getWidth() + this.tabInnerPadding;
            }
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            float fDp = (measuredHeight - AndroidUtilities.dp(26.0f)) / 2.0f;
            float fDp2 = (AndroidUtilities.dp(26.0f) + measuredHeight) / 2.0f;
            float f = measuredWidth;
            float f2 = (f - width) / 2.0f;
            float f3 = f2;
            for (int i4 = 0; i4 < this.tabs.size(); i4++) {
                float width2 = this.tabInnerPadding + this.tabs.get(i4).text.getWidth() + this.tabInnerPadding;
                this.tabs.get(i4).bounds.set(f3, fDp, f3 + width2, fDp2);
                this.tabs.get(i4).clickBounds.set(this.tabs.get(i4).bounds);
                this.tabs.get(i4).clickBounds.inset((-this.marginBetween) / 2.0f, -fDp);
                f3 += width2 + this.marginBetween;
            }
            Drawable drawable = this.bgDrawable;
            if (drawable != null) {
                Rect rect = AndroidUtilities.rectTmp2;
                drawable.getPadding(rect);
                int i5 = measuredHeight / 2;
                this.bgDrawable.setBounds((((int) f2) - AndroidUtilities.dp(3.0f)) - rect.left, (i5 - AndroidUtilities.dp(16.0f)) - rect.top, ((int) ((f + width) / 2.0f)) + AndroidUtilities.dp(3.0f) + rect.right, i5 + AndroidUtilities.dp(16.0f) + rect.bottom);
            }
        }

        @Override // android.view.View
        public void dispatchDraw(Canvas canvas) {
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
                AndroidUtilities.lerp(this.tabs.get(iFloor).bounds, this.tabs.get(iCeil).bounds, f - iFloor, this.selectRect);
            } else if (z) {
                this.selectRect.set(this.tabs.get(iFloor).bounds);
            } else if (z2) {
                this.selectRect.set(this.tabs.get(iCeil).bounds);
            }
            Drawable drawable = this.bgDrawable;
            if (drawable != null) {
                drawable.draw(canvas);
            }
            if (z || z2) {
                canvas.drawRoundRect(this.selectRect, AndroidUtilities.dp(13.0f), AndroidUtilities.dp(13.0f), this.bgPaint);
            }
            for (int i = 0; i < this.tabs.size(); i++) {
                Tab tab = this.tabs.get(i);
                tab.text.draw(canvas, tab.bounds.left + this.tabInnerPadding, getMeasuredHeight() / 2.0f, ColorUtils.blendARGB(this.color, this.selectedColor, 1.0f - Math.abs(f - i)), 1.0f);
            }
        }

        @Override // android.view.View
        public void setBackground(Drawable drawable) {
            this.bgDrawable = drawable;
        }

        public void setOnTabClick(Utilities.Callback<Integer> callback) {
            this.onTabClick = callback;
        }

        @Override // android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            Utilities.Callback<Integer> callback;
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
                if (this.tabs.get(i).clickBounds.contains(f, f2)) {
                    return this.tabs.get(i).id;
                }
            }
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public class ActionBar extends FrameLayout {
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
            animatedTextDrawable.setTextSize(AndroidUtilities.dp(18.0f));
            animatedTextDrawable.setEllipsizeByGradient(!LocaleController.isRTL);
            animatedTextDrawable.setCallback(this);
            animatedTextDrawable.setOverrideFullWidth(AndroidUtilities.displaySize.x);
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = new AnimatedTextView.AnimatedTextDrawable(true, true, true);
            this.subtitle = animatedTextDrawable2;
            animatedTextDrawable2.setAnimationProperties(0.3f, 0L, 430L, cubicBezierInterpolator);
            animatedTextDrawable2.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubtitle, resourcesProvider));
            animatedTextDrawable2.setTextSize(AndroidUtilities.dp(14.0f));
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
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(56.0f), TLObject.FLAG_30));
            setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
        }

        @Override // android.view.View
        public boolean verifyDrawable(Drawable drawable) {
            return this.title == drawable || this.subtitle == drawable || super.verifyDrawable(drawable);
        }

        private void setBounds(Drawable drawable, float f) {
            int i = (int) f;
            drawable.setBounds(getPaddingLeft(), i - AndroidUtilities.dp(32.0f), getMeasuredWidth() - getPaddingRight(), i + AndroidUtilities.dp(32.0f));
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            setBounds(this.title, AndroidUtilities.lerp(AndroidUtilities.dp(29.0f), AndroidUtilities.dp(18.83f), this.subtitle.isNotEmpty()));
            this.title.draw(canvas);
            setBounds(this.subtitle, AndroidUtilities.dp(39.5f));
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
                        MessageObject replyMessage = page.getReplyMessage(page.textSelectionHelper.getSelectedCell() != null ? page.textSelectionHelper.getSelectedCell().getMessageObject() : null);
                        if (replyMessage != null) {
                            MessagePreviewParams messagePreviewParams = this.messagePreviewParams;
                            messagePreviewParams.quoteStart = 0;
                            messagePreviewParams.quoteEnd = Math.min(MessagesController.getInstance(this.currentAccount).quoteLengthMax, replyMessage.messageOwner.message.length());
                            MessagePreviewParams messagePreviewParams2 = this.messagePreviewParams;
                            messagePreviewParams2.quote = ChatActivity.ReplyQuote.from(replyMessage, messagePreviewParams2.quoteStart, messagePreviewParams2.quoteEnd);
                            View replyMessageCell = page.getReplyMessageCell();
                            if (replyMessageCell instanceof ChatMessageCell) {
                                MessagePreviewParams messagePreviewParams3 = this.messagePreviewParams;
                                page.textSelectionHelper.select((ChatMessageCell) replyMessageCell, messagePreviewParams3.quoteStart, messagePreviewParams3.quoteEnd);
                            }
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
            this.textDrawable.setTextSize(AndroidUtilities.dp(16.0f));
            this.textDrawable.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, resourcesProvider));
            this.textDrawable.setCallback(this);
            this.textDrawable.setEllipsizeByGradient(true ^ LocaleController.isRTL);
            if (LocaleController.isRTL) {
                this.textDrawable.setGravity(5);
            }
            int iDp = (int) (AndroidUtilities.dp(77.0f) + Math.max(this.textDrawable.getPaint().measureText(str), this.textDrawable.getPaint().measureText(str2)));
            this.minWidth = iDp;
            this.textDrawable.setOverrideFullWidth(iDp);
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
                setContentDescription(this.textDrawable.getText());
            }
        }

        public boolean getState() {
            return this.isState1;
        }

        public ToggleButton setColors(int i, int i2) {
            setTextColor(i);
            setIconColor(i2);
            return this;
        }

        public void setTextColor(int i) {
            this.textDrawable.setTextColor(i);
            invalidate();
        }

        public void setIconColor(int i) {
            this.iconDrawable.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
            invalidate();
        }

        public void setSelectorColor(int i) {
            setBackground(Theme.createSelectorDrawable(i, 2));
        }

        @Override // android.view.View
        public boolean verifyDrawable(Drawable drawable) {
            return drawable == this.textDrawable || super.verifyDrawable(drawable);
        }

        @Override // android.view.View
        public void dispatchDraw(Canvas canvas) {
            boolean z = LocaleController.isRTL;
            RLottieToggleDrawable rLottieToggleDrawable = this.iconDrawable;
            if (z) {
                rLottieToggleDrawable.setBounds(getMeasuredWidth() - AndroidUtilities.dp(41.0f), (getMeasuredHeight() - AndroidUtilities.dp(24.0f)) / 2, getMeasuredWidth() - AndroidUtilities.dp(17.0f), (getMeasuredHeight() + AndroidUtilities.dp(24.0f)) / 2);
                this.textDrawable.setBounds(0, 0, getMeasuredWidth() - AndroidUtilities.dp(59.0f), getMeasuredHeight());
            } else {
                rLottieToggleDrawable.setBounds(AndroidUtilities.dp(17.0f), (getMeasuredHeight() - AndroidUtilities.dp(24.0f)) / 2, AndroidUtilities.dp(41.0f), (getMeasuredHeight() + AndroidUtilities.dp(24.0f)) / 2);
                this.textDrawable.setBounds(AndroidUtilities.dp(59.0f), 0, getMeasuredWidth(), getMeasuredHeight());
            }
            this.textDrawable.draw(canvas);
            this.iconDrawable.draw(canvas);
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            int iMin;
            int mode = View.MeasureSpec.getMode(i);
            if (mode == 1073741824) {
                iMin = Math.max(View.MeasureSpec.getSize(i), this.minWidth);
            } else {
                iMin = Math.min(View.MeasureSpec.getSize(i), this.minWidth);
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, mode), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(48.0f), TLObject.FLAG_30));
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (getVisibility() != 0 || getAlpha() < 0.5f) {
                return false;
            }
            return super.onTouchEvent(motionEvent);
        }
    }

    public static class RLottieToggleDrawable extends Drawable {
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
            RLottieDrawable rLottieDrawable = new RLottieDrawable(i, _UrlKt.FRAGMENT_ENCODE_SET + i, AndroidUtilities.dp(24.0f), AndroidUtilities.dp(24.0f));
            this.state1 = rLottieDrawable;
            rLottieDrawable.setMasterParent(view);
            this.state1.setAllowDecodeSingleFrame(true);
            this.state1.setPlayInDirectionOfCustomEndFrame(true);
            this.state1.setAutoRepeat(0);
            RLottieDrawable rLottieDrawable2 = new RLottieDrawable(i2, _UrlKt.FRAGMENT_ENCODE_SET + i2, AndroidUtilities.dp(24.0f), AndroidUtilities.dp(24.0f));
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
            rect.set(getBounds().centerX() - AndroidUtilities.dp(12.0f), getBounds().centerY() - AndroidUtilities.dp(12.0f), getBounds().centerX() + AndroidUtilities.dp(12.0f), getBounds().centerY() + AndroidUtilities.dp(12.0f));
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
            return AndroidUtilities.dp(24.0f);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return AndroidUtilities.dp(24.0f);
        }
    }
}
