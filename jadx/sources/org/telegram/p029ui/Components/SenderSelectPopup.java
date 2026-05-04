package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.SpannableString;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p029ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.Bulletin;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.PremiumPreviewFragment;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public abstract class SenderSelectPopup extends ActionBarPopupWindow {
    private FrameLayout bulletinContainer;
    private Runnable bulletinHideCallback;
    private List bulletins;
    private boolean clicked;
    private final int currentAccount;
    private TLRPC.Peer defPeer;
    private boolean dismissed;
    private View headerShadow;
    public TextView headerText;
    private boolean isDismissingByBulletin;
    private Boolean isHeaderShadowVisible;
    private LinearLayoutManager layoutManager;
    private int popupX;
    private int popupY;
    public LinearLayout recyclerContainer;
    private RecyclerListView recyclerView;
    protected boolean runningCustomSprings;
    private FrameLayout scrimPopupContainerLayout;
    private TLRPC.TL_channels_sendAsPeers sendAsPeers;
    protected List springAnimations;

    public interface OnSelectCallback {
        void onPeerSelected(RecyclerView recyclerView, SenderView senderView, TLRPC.Peer peer);
    }

    public SenderSelectPopup(final Context context, final ChatActivity chatActivity, final MessagesController messagesController, final boolean z, final TLRPC.Peer peer, TLRPC.TL_channels_sendAsPeers tL_channels_sendAsPeers, final OnSelectCallback onSelectCallback, final Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.springAnimations = new ArrayList();
        this.bulletins = new ArrayList();
        this.defPeer = peer;
        this.sendAsPeers = tL_channels_sendAsPeers;
        this.currentAccount = chatActivity == null ? UserConfig.selectedAccount : chatActivity.getCurrentAccount();
        BackButtonFrameLayout backButtonFrameLayout = new BackButtonFrameLayout(context);
        this.scrimPopupContainerLayout = backButtonFrameLayout;
        backButtonFrameLayout.setLayoutParams(LayoutHelper.createFrame(-2, -2.0f));
        setContentView(this.scrimPopupContainerLayout);
        setWidth(-2);
        setHeight(-2);
        setBackgroundDrawable(null);
        Drawable drawableMutate = ContextCompat.getDrawable(context, C2888R.drawable.popup_fixed_alert4).mutate();
        drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, resourcesProvider), PorterDuff.Mode.MULTIPLY));
        this.scrimPopupContainerLayout.setBackground(drawableMutate);
        Rect rect = new Rect();
        drawableMutate.getPadding(rect);
        this.scrimPopupContainerLayout.setPadding(rect.left, rect.top, rect.right, rect.bottom);
        final int iM1124dp = AndroidUtilities.m1124dp(450.0f);
        final int width = (int) ((chatActivity == null ? AndroidUtilities.displaySize.x : chatActivity.contentView.getWidth()) * 0.75f);
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.SenderSelectPopup.1
            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), width), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i2), iM1124dp), View.MeasureSpec.getMode(i2)));
            }

            @Override // android.view.View
            protected int getSuggestedMinimumWidth() {
                return AndroidUtilities.m1124dp(260.0f);
            }
        };
        this.recyclerContainer = linearLayout;
        linearLayout.setOrientation(1);
        TextView textView = new TextView(context);
        this.headerText = textView;
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlue, resourcesProvider));
        this.headerText.setTextSize(1, 16.0f);
        this.headerText.setText(LocaleController.getString(C2888R.string.SendMessageAsTitle));
        this.headerText.setTypeface(AndroidUtilities.bold(), 1);
        int iM1124dp2 = AndroidUtilities.m1124dp(18.0f);
        this.headerText.setPadding(iM1124dp2, AndroidUtilities.m1124dp(12.0f), iM1124dp2, AndroidUtilities.m1124dp(12.0f));
        this.recyclerContainer.addView(this.headerText);
        FrameLayout frameLayout = new FrameLayout(context);
        final ArrayList arrayList = tL_channels_sendAsPeers.peers;
        this.recyclerView = new RecyclerListView(context);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
        this.layoutManager = linearLayoutManager;
        this.recyclerView.setLayoutManager(linearLayoutManager);
        this.recyclerView.setAdapter(new RecyclerListView.SelectionAdapter() { // from class: org.telegram.ui.Components.SenderSelectPopup.2
            @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return true;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                return new RecyclerListView.Holder(new SenderView(viewGroup.getContext(), resourcesProvider));
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                SenderView senderView = (SenderView) viewHolder.itemView;
                TLRPC.TL_sendAsPeer tL_sendAsPeer = (TLRPC.TL_sendAsPeer) arrayList.get(i);
                TLRPC.Peer peer2 = tL_sendAsPeer.peer;
                long j = peer2.channel_id;
                long j2 = j != 0 ? -j : 0L;
                if (j2 == 0) {
                    long j3 = peer2.user_id;
                    if (j3 != 0) {
                        j2 = j3;
                    }
                }
                boolean z2 = true;
                if (j2 < 0) {
                    TLRPC.Chat chat = messagesController.getChat(Long.valueOf(-j2));
                    if (chat != null) {
                        if (tL_sendAsPeer.premium_required) {
                            SpannableString spannableString = new SpannableString(((Object) TextUtils.ellipsize(chat.title, senderView.title.getPaint(), width - AndroidUtilities.m1124dp(100.0f), TextUtils.TruncateAt.END)) + " d");
                            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.msg_mini_premiumlock);
                            coloredImageSpan.setTopOffset(1);
                            coloredImageSpan.setSize(AndroidUtilities.m1124dp(14.0f));
                            coloredImageSpan.setColorKey(Theme.key_windowBackgroundWhiteGrayText5);
                            spannableString.setSpan(coloredImageSpan, spannableString.length() - 1, spannableString.length(), 33);
                            senderView.title.setEllipsize(null);
                            senderView.title.setText(spannableString);
                        } else {
                            senderView.title.setEllipsize(TextUtils.TruncateAt.END);
                            senderView.title.setText(chat.title);
                        }
                        senderView.subtitle.setText(LocaleController.formatPluralString((!ChatObject.isChannel(chat) || chat.megagroup) ? "Members" : "Subscribers", chat.participants_count, new Object[0]));
                        senderView.avatar.setAvatar(chat);
                    }
                    SimpleAvatarView simpleAvatarView = senderView.avatar;
                    TLRPC.Peer peer3 = peer;
                    if (peer3 == null ? i != 0 : peer3.channel_id != peer2.channel_id) {
                        z2 = false;
                    }
                    simpleAvatarView.setSelected(z2, false);
                    return;
                }
                TLRPC.User user = messagesController.getUser(Long.valueOf(j2));
                if (user != null) {
                    senderView.title.setText(UserObject.getUserName(user));
                    senderView.subtitle.setText(LocaleController.getString(C2888R.string.VoipGroupPersonalAccount));
                    senderView.avatar.setAvatar(user);
                }
                SimpleAvatarView simpleAvatarView2 = senderView.avatar;
                TLRPC.Peer peer4 = peer;
                if (peer4 == null ? i != 0 : peer4.user_id != peer2.user_id) {
                    z2 = false;
                }
                simpleAvatarView2.setSelected(z2, false);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return arrayList.size();
            }
        });
        this.recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.SenderSelectPopup.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                boolean z2 = SenderSelectPopup.this.layoutManager.findFirstCompletelyVisibleItemPosition() != 0;
                if (SenderSelectPopup.this.isHeaderShadowVisible == null || z2 != SenderSelectPopup.this.isHeaderShadowVisible.booleanValue()) {
                    SenderSelectPopup.this.headerShadow.animate().cancel();
                    SenderSelectPopup.this.headerShadow.animate().alpha(z2 ? 1.0f : 0.0f).setDuration(150L).start();
                    SenderSelectPopup.this.isHeaderShadowVisible = Boolean.valueOf(z2);
                }
            }
        });
        this.recyclerView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.SenderSelectPopup$$ExternalSyntheticLambda7
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                this.f$0.lambda$new$2(arrayList, context, chatActivity, z, onSelectCallback, view, i);
            }
        });
        this.recyclerView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.SenderSelectPopup$$ExternalSyntheticLambda8
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i) {
                return this.f$0.lambda$new$5(arrayList, messagesController, chatActivity, view, i);
            }
        });
        this.recyclerView.setOverScrollMode(2);
        frameLayout.addView(this.recyclerView);
        this.headerShadow = new View(context);
        Drawable drawable = ContextCompat.getDrawable(context, C2888R.drawable.header_shadow);
        drawable.setAlpha(153);
        this.headerShadow.setBackground(drawable);
        this.headerShadow.setAlpha(0.0f);
        frameLayout.addView(this.headerShadow, LayoutHelper.createFrame(-1, 4.0f));
        this.recyclerContainer.addView(frameLayout, LayoutHelper.createFrame(-1, -2.0f));
        this.scrimPopupContainerLayout.addView(this.recyclerContainer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(List list, Context context, final ChatActivity chatActivity, boolean z, OnSelectCallback onSelectCallback, View view, int i) {
        TLRPC.TL_sendAsPeer tL_sendAsPeer = (TLRPC.TL_sendAsPeer) list.get(i);
        if (this.clicked) {
            return;
        }
        if (tL_sendAsPeer.premium_required && !UserConfig.getInstance(UserConfig.selectedAccount).isPremium()) {
            try {
                view.performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            final WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (this.bulletinContainer == null) {
                this.bulletinContainer = new FrameLayout(context) { // from class: org.telegram.ui.Components.SenderSelectPopup.4
                    @Override // android.view.View
                    public boolean onTouchEvent(MotionEvent motionEvent) {
                        View contentView = SenderSelectPopup.this.getContentView();
                        int[] iArr = new int[2];
                        contentView.getLocationInWindow(iArr);
                        iArr[0] = iArr[0] + SenderSelectPopup.this.popupX;
                        iArr[1] = iArr[1] + SenderSelectPopup.this.popupY;
                        getLocationInWindow(new int[2]);
                        if ((motionEvent.getAction() == 0 && motionEvent.getX() <= iArr[0]) || motionEvent.getX() >= iArr[0] + contentView.getWidth() || motionEvent.getY() <= iArr[1] || motionEvent.getY() >= iArr[1] + contentView.getHeight()) {
                            if (!SenderSelectPopup.this.dismissed && !SenderSelectPopup.this.isDismissingByBulletin) {
                                SenderSelectPopup.this.isDismissingByBulletin = true;
                                SenderSelectPopup.this.startDismissAnimation(new SpringAnimation[0]);
                            }
                            return true;
                        }
                        motionEvent.offsetLocation(r1[0] - iArr[0], (AndroidUtilities.statusBarHeight + r1[1]) - iArr[1]);
                        return contentView.dispatchTouchEvent(motionEvent);
                    }
                };
            }
            Runnable runnable = this.bulletinHideCallback;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            if (this.bulletinContainer.getParent() == null) {
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.height = -1;
                layoutParams.width = -1;
                layoutParams.format = -3;
                layoutParams.type = 99;
                layoutParams.flags |= Integer.MIN_VALUE;
                if (Build.VERSION.SDK_INT >= 28) {
                    layoutParams.layoutInDisplayCutoutMode = 1;
                }
                AndroidUtilities.setPreferredMaxRefreshRate(windowManager, this.bulletinContainer, layoutParams);
                windowManager.addView(this.bulletinContainer, layoutParams);
            }
            if (chatActivity != null) {
                final Bulletin bulletinMake = Bulletin.make(this.bulletinContainer, new SelectSendAsPremiumHintBulletinLayout(context, chatActivity.themeDelegate, z, new Runnable() { // from class: org.telegram.ui.Components.SenderSelectPopup$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$0(chatActivity);
                    }
                }), 1500);
                bulletinMake.getLayout().addCallback(new Bulletin.Layout.Callback() { // from class: org.telegram.ui.Components.SenderSelectPopup.5
                    @Override // org.telegram.ui.Components.Bulletin.Layout.Callback
                    public /* synthetic */ void onAttach(Bulletin.Layout layout, Bulletin bulletin) {
                        Bulletin.Layout.Callback.CC.$default$onAttach(this, layout, bulletin);
                    }

                    @Override // org.telegram.ui.Components.Bulletin.Layout.Callback
                    public /* synthetic */ void onDetach(Bulletin.Layout layout) {
                        Bulletin.Layout.Callback.CC.$default$onDetach(this, layout);
                    }

                    @Override // org.telegram.ui.Components.Bulletin.Layout.Callback
                    public /* synthetic */ void onEnterTransitionEnd(Bulletin.Layout layout) {
                        Bulletin.Layout.Callback.CC.$default$onEnterTransitionEnd(this, layout);
                    }

                    @Override // org.telegram.ui.Components.Bulletin.Layout.Callback
                    public /* synthetic */ void onEnterTransitionStart(Bulletin.Layout layout) {
                        Bulletin.Layout.Callback.CC.$default$onEnterTransitionStart(this, layout);
                    }

                    @Override // org.telegram.ui.Components.Bulletin.Layout.Callback
                    public /* synthetic */ void onExitTransitionEnd(Bulletin.Layout layout) {
                        Bulletin.Layout.Callback.CC.$default$onExitTransitionEnd(this, layout);
                    }

                    @Override // org.telegram.ui.Components.Bulletin.Layout.Callback
                    public /* synthetic */ void onExitTransitionStart(Bulletin.Layout layout) {
                        Bulletin.Layout.Callback.CC.$default$onExitTransitionStart(this, layout);
                    }

                    @Override // org.telegram.ui.Components.Bulletin.Layout.Callback
                    public void onShow(Bulletin.Layout layout) {
                        SenderSelectPopup.this.bulletins.add(bulletinMake);
                    }

                    @Override // org.telegram.ui.Components.Bulletin.Layout.Callback
                    public void onHide(Bulletin.Layout layout) {
                        SenderSelectPopup.this.bulletins.remove(bulletinMake);
                    }
                });
                bulletinMake.show();
            }
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.SenderSelectPopup$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$1(windowManager);
                }
            };
            this.bulletinHideCallback = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 2500L);
            return;
        }
        this.clicked = true;
        onSelectCallback.onPeerSelected(this.recyclerView, (SenderView) view, tL_sendAsPeer.peer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ChatActivity chatActivity) {
        if (chatActivity != null) {
            chatActivity.presentFragment(new PremiumPreviewFragment("select_sender"));
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(WindowManager windowManager) {
        windowManager.removeView(this.bulletinContainer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$5(List list, MessagesController messagesController, final ChatActivity chatActivity, View view, int i) {
        long peerId = MessageObject.getPeerId(((TLRPC.TL_sendAsPeer) list.get(i)).peer);
        if (peerId > 0) {
            final TLRPC.User user = messagesController.getUser(Long.valueOf(peerId));
            if (user != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SenderSelectPopup$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$3(user, chatActivity);
                    }
                }, 500L);
            }
        } else {
            final TLRPC.Chat chat = messagesController.getChat(Long.valueOf(-peerId));
            if (chat != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SenderSelectPopup$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$4(chat, chatActivity);
                    }
                }, 500L);
            }
        }
        startDismissAnimation(new SpringAnimation[0]);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(TLRPC.User user, ChatActivity chatActivity) {
        MessagesController.getInstance(this.currentAccount).openChatOrProfileWith(user, null, chatActivity, 0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(TLRPC.Chat chat, ChatActivity chatActivity) {
        MessagesController.getInstance(this.currentAccount).openChatOrProfileWith(null, chat, chatActivity, 1, false);
    }

    @Override // org.telegram.p029ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
    public void dismiss() {
        if (this.dismissed) {
            return;
        }
        FrameLayout frameLayout = this.bulletinContainer;
        if (frameLayout != null && frameLayout.getAlpha() == 1.0f) {
            final WindowManager windowManager = (WindowManager) this.bulletinContainer.getContext().getSystemService("window");
            this.bulletinContainer.animate().alpha(0.0f).setDuration(150L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SenderSelectPopup.6
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    try {
                        windowManager.removeViewImmediate(SenderSelectPopup.this.bulletinContainer);
                    } catch (Exception unused) {
                    }
                    if (SenderSelectPopup.this.bulletinHideCallback != null) {
                        AndroidUtilities.cancelRunOnUIThread(SenderSelectPopup.this.bulletinHideCallback);
                    }
                }
            });
        }
        this.dismissed = true;
        super.dismiss();
    }

    @Override // org.telegram.p029ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
    public void showAtLocation(View view, int i, int i2, int i3) {
        this.popupX = i2;
        this.popupY = i3;
        super.showAtLocation(view, i, i2, i3);
    }

    public void startShowAnimation() {
        Iterator it = this.springAnimations.iterator();
        while (it.hasNext()) {
            ((SpringAnimation) it.next()).cancel();
        }
        this.springAnimations.clear();
        this.scrimPopupContainerLayout.setPivotX(AndroidUtilities.m1124dp(8.0f));
        this.scrimPopupContainerLayout.setPivotY(r0.getMeasuredHeight() - AndroidUtilities.m1124dp(8.0f));
        this.recyclerContainer.setPivotX(0.0f);
        this.recyclerContainer.setPivotY(0.0f);
        ArrayList arrayList = this.sendAsPeers.peers;
        if (this.defPeer != null) {
            int iM1124dp = AndroidUtilities.m1124dp(54.0f);
            int size = arrayList.size() * iM1124dp;
            int i = 0;
            while (i < arrayList.size()) {
                TLRPC.Peer peer = ((TLRPC.TL_sendAsPeer) arrayList.get(i)).peer;
                long j = peer.channel_id;
                if (j == 0 || j != this.defPeer.channel_id) {
                    long j2 = peer.user_id;
                    if (j2 == 0 || j2 != this.defPeer.user_id) {
                        long j3 = peer.chat_id;
                        if (j3 == 0 || j3 != this.defPeer.chat_id) {
                            i++;
                        }
                    }
                }
                this.layoutManager.scrollToPositionWithOffset(i, ((i == arrayList.size() - 1 || this.recyclerView.getMeasuredHeight() >= size) ? 0 : this.recyclerView.getMeasuredHeight() % iM1124dp) + AndroidUtilities.m1124dp(7.0f) + (size - ((arrayList.size() - 2) * iM1124dp)));
                if (this.recyclerView.computeVerticalScrollOffset() > 0) {
                    this.headerShadow.animate().cancel();
                    this.headerShadow.animate().alpha(1.0f).setDuration(150L).start();
                }
            }
        }
        this.scrimPopupContainerLayout.setScaleX(0.25f);
        this.scrimPopupContainerLayout.setScaleY(0.25f);
        this.recyclerContainer.setAlpha(0.25f);
        SpringAnimation springAnimation = (SpringAnimation) new SpringAnimation(this.scrimPopupContainerLayout, DynamicAnimation.SCALE_X).setSpring(new SpringForce(1.0f).setStiffness(750.0f).setDampingRatio(1.0f)).addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.SenderSelectPopup$$ExternalSyntheticLambda4
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                this.f$0.lambda$startShowAnimation$6(dynamicAnimation, f, f2);
            }
        });
        SpringAnimation springAnimation2 = (SpringAnimation) new SpringAnimation(this.scrimPopupContainerLayout, DynamicAnimation.SCALE_Y).setSpring(new SpringForce(1.0f).setStiffness(750.0f).setDampingRatio(1.0f)).addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.SenderSelectPopup$$ExternalSyntheticLambda5
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                this.f$0.lambda$startShowAnimation$7(dynamicAnimation, f, f2);
            }
        });
        FrameLayout frameLayout = this.scrimPopupContainerLayout;
        DynamicAnimation.ViewProperty viewProperty = DynamicAnimation.ALPHA;
        for (final SpringAnimation springAnimation3 : Arrays.asList(springAnimation, springAnimation2, new SpringAnimation(frameLayout, viewProperty).setSpring(new SpringForce(1.0f).setStiffness(750.0f).setDampingRatio(1.0f)), new SpringAnimation(this.recyclerContainer, viewProperty).setSpring(new SpringForce(1.0f).setStiffness(750.0f).setDampingRatio(1.0f)))) {
            this.springAnimations.add(springAnimation3);
            springAnimation3.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.SenderSelectPopup$$ExternalSyntheticLambda6
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                    this.f$0.lambda$startShowAnimation$8(springAnimation3, dynamicAnimation, z, f, f2);
                }
            });
            springAnimation3.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startShowAnimation$6(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.recyclerContainer.setScaleX(1.0f / f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startShowAnimation$7(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.recyclerContainer.setScaleY(1.0f / f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startShowAnimation$8(SpringAnimation springAnimation, DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        if (z) {
            return;
        }
        this.springAnimations.remove(springAnimation);
        dynamicAnimation.cancel();
    }

    public void startDismissAnimation(SpringAnimation... springAnimationArr) {
        ArrayList arrayList = new ArrayList(this.springAnimations);
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ((SpringAnimation) obj).cancel();
        }
        this.springAnimations.clear();
        this.scrimPopupContainerLayout.setPivotX(AndroidUtilities.m1124dp(8.0f));
        this.scrimPopupContainerLayout.setPivotY(r0.getMeasuredHeight() - AndroidUtilities.m1124dp(8.0f));
        this.recyclerContainer.setPivotX(0.0f);
        this.recyclerContainer.setPivotY(0.0f);
        this.scrimPopupContainerLayout.setScaleX(1.0f);
        this.scrimPopupContainerLayout.setScaleY(1.0f);
        this.recyclerContainer.setAlpha(1.0f);
        ArrayList arrayList2 = new ArrayList();
        SpringAnimation springAnimation = (SpringAnimation) new SpringAnimation(this.scrimPopupContainerLayout, DynamicAnimation.SCALE_X).setSpring(new SpringForce(0.25f).setStiffness(750.0f).setDampingRatio(1.0f)).addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.SenderSelectPopup$$ExternalSyntheticLambda0
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                this.f$0.lambda$startDismissAnimation$9(dynamicAnimation, f, f2);
            }
        });
        SpringAnimation springAnimation2 = (SpringAnimation) new SpringAnimation(this.scrimPopupContainerLayout, DynamicAnimation.SCALE_Y).setSpring(new SpringForce(0.25f).setStiffness(750.0f).setDampingRatio(1.0f)).addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.SenderSelectPopup$$ExternalSyntheticLambda1
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                this.f$0.lambda$startDismissAnimation$10(dynamicAnimation, f, f2);
            }
        });
        FrameLayout frameLayout = this.scrimPopupContainerLayout;
        DynamicAnimation.ViewProperty viewProperty = DynamicAnimation.ALPHA;
        arrayList2.addAll(Arrays.asList(springAnimation, springAnimation2, new SpringAnimation(frameLayout, viewProperty).setSpring(new SpringForce(0.0f).setStiffness(750.0f).setDampingRatio(1.0f)), new SpringAnimation(this.recyclerContainer, viewProperty).setSpring(new SpringForce(0.25f).setStiffness(750.0f).setDampingRatio(1.0f))));
        for (SpringAnimation springAnimation3 : springAnimationArr) {
            if (springAnimation3 != null) {
                arrayList2.add(springAnimation3);
            }
        }
        this.runningCustomSprings = springAnimationArr.length > 0;
        ((SpringAnimation) arrayList2.get(0)).addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.SenderSelectPopup$$ExternalSyntheticLambda2
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                this.f$0.lambda$startDismissAnimation$11(dynamicAnimation, z, f, f2);
            }
        });
        int size2 = arrayList2.size();
        while (i < size2) {
            Object obj2 = arrayList2.get(i);
            i++;
            final SpringAnimation springAnimation4 = (SpringAnimation) obj2;
            this.springAnimations.add(springAnimation4);
            springAnimation4.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.SenderSelectPopup$$ExternalSyntheticLambda3
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                    this.f$0.lambda$startDismissAnimation$12(springAnimation4, dynamicAnimation, z, f, f2);
                }
            });
            springAnimation4.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startDismissAnimation$9(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.recyclerContainer.setScaleX(1.0f / f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startDismissAnimation$10(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.recyclerContainer.setScaleY(1.0f / f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startDismissAnimation$11(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        this.runningCustomSprings = false;
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startDismissAnimation$12(SpringAnimation springAnimation, DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        if (z) {
            return;
        }
        this.springAnimations.remove(springAnimation);
        dynamicAnimation.cancel();
    }

    public static final class SenderView extends LinearLayout {
        public final SimpleAvatarView avatar;
        public final TextView subtitle;
        public final TextView title;

        public SenderView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            setOrientation(0);
            setGravity(16);
            int iM1124dp = AndroidUtilities.m1124dp(14.0f);
            int i = iM1124dp / 2;
            setPadding(iM1124dp, i, iM1124dp, i);
            SimpleAvatarView simpleAvatarView = new SimpleAvatarView(context);
            this.avatar = simpleAvatarView;
            simpleAvatarView.setAvatarCorners(ExteraConfig.getAvatarCorners(40.0f));
            addView(simpleAvatarView, LayoutHelper.createFrame(40, 40.0f));
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, LayoutHelper.createLinear(0, -1, 1.0f, 12, 0, 0, 0));
            TextView textView = new TextView(context);
            this.title = textView;
            int i2 = Theme.key_actionBarDefaultSubmenuItem;
            textView.setTextColor(Theme.getColor(i2, resourcesProvider));
            textView.setTextSize(1, 16.0f);
            textView.setTag(textView);
            textView.setMaxLines(1);
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            linearLayout.addView(textView);
            TextView textView2 = new TextView(context);
            this.subtitle = textView2;
            textView2.setTextColor(ColorUtils.setAlphaComponent(Theme.getColor(i2, resourcesProvider), 102));
            textView2.setTextSize(1, 14.0f);
            textView2.setTag(textView2);
            textView2.setMaxLines(1);
            textView2.setEllipsize(TextUtils.TruncateAt.END);
            linearLayout.addView(textView2);
        }
    }

    private class BackButtonFrameLayout extends FrameLayout {
        public BackButtonFrameLayout(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && SenderSelectPopup.this.isShowing()) {
                SenderSelectPopup.this.dismiss();
            }
            return super.dispatchKeyEvent(keyEvent);
        }
    }
}
