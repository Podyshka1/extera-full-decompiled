package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.TextDetailCell;
import org.telegram.p029ui.Components.JoinCallAlert;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.TextStyleSpan;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_phone;

/* JADX INFO: loaded from: classes7.dex */
public class CreateRtmpStreamBottomSheet extends BottomSheetWithRecyclerListView {
    private UniversalAdapter adapter;
    private boolean hasButton;
    private final boolean hasFewPeers;
    private boolean hasRevokeButton;
    private final JoinCallAlert.JoinCallAlertDelegate joinCallDelegate;
    private String rtmpKey;
    private SpannableStringBuilder rtmpKeySpoiled;
    private String rtmpUrl;
    private TLRPC.InputPeer selectAfterDismiss;
    private final boolean story;
    private TopCell topCell;

    public static void show(TLRPC.Peer peer, BaseFragment baseFragment, long j, boolean z, JoinCallAlert.JoinCallAlertDelegate joinCallAlertDelegate) {
        CreateRtmpStreamBottomSheet createRtmpStreamBottomSheet = new CreateRtmpStreamBottomSheet(baseFragment, peer, j, z, joinCallAlertDelegate);
        if (baseFragment != null && baseFragment.getParentActivity() != null) {
            baseFragment.showDialog(createRtmpStreamBottomSheet);
        } else {
            createRtmpStreamBottomSheet.show();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [org.telegram.ui.ActionBar.BottomSheet, org.telegram.ui.Components.BottomSheetWithRecyclerListView, org.telegram.ui.Components.CreateRtmpStreamBottomSheet] */
    public CreateRtmpStreamBottomSheet(final Context context, final int i, final TL_phone.getGroupCallStreamRtmpUrl getgroupcallstreamrtmpurl, TL_phone.groupCallStreamRtmpUrl groupcallstreamrtmpurl, final Utilities.Callback callback, final Theme.ResourcesProvider resourcesProvider) {
        int iM1124dp;
        final ?? bottomSheetWithRecyclerListView = new BottomSheetWithRecyclerListView(context, null, false, false, false, resourcesProvider);
        bottomSheetWithRecyclerListView.story = true;
        bottomSheetWithRecyclerListView.topPadding = 0.126f;
        bottomSheetWithRecyclerListView.joinCallDelegate = null;
        bottomSheetWithRecyclerListView.hasFewPeers = false;
        long peerDialogId = DialogObject.getPeerDialogId(getgroupcallstreamrtmpurl.peer);
        bottomSheetWithRecyclerListView.hasRevokeButton = callback != null && (peerDialogId >= 0 || ChatObject.isCreator(MessagesController.getInstance(i).getChat(Long.valueOf(-peerDialogId))));
        CreateRtmpStreamBottomSheet createRtmpStreamBottomSheet = bottomSheetWithRecyclerListView;
        if (callback != null) {
            bottomSheetWithRecyclerListView.hasButton = true;
            final ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
            buttonWithCounterView.setText(LocaleController.getString(C2888R.string.LiveStoryRTMPEnable), false);
            bottomSheetWithRecyclerListView.containerView.addView(buttonWithCounterView, LayoutHelper.createFrame(-1, 48.0f, 80, 16.0f, 0.0f, 16.0f, (bottomSheetWithRecyclerListView.hasRevokeButton ? 52 : 0) + 12));
            buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda13
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$2(callback, buttonWithCounterView, view);
                }
            });
            boolean z = bottomSheetWithRecyclerListView.hasRevokeButton;
            createRtmpStreamBottomSheet = bottomSheetWithRecyclerListView;
            if (z) {
                final ButtonWithCounterView buttonWithCounterView2 = new ButtonWithCounterView(context, false, resourcesProvider);
                buttonWithCounterView2.setColor(Theme.getColor(Theme.key_fill_RedNormal));
                buttonWithCounterView2.text.setTypeface(AndroidUtilities.bold());
                buttonWithCounterView2.setText(LocaleController.getString(C2888R.string.LiveStoryRTMPRevoke), false);
                CreateRtmpStreamBottomSheet createRtmpStreamBottomSheet2 = this;
                buttonWithCounterView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda14
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$6(context, resourcesProvider, buttonWithCounterView2, getgroupcallstreamrtmpurl, i, view);
                    }
                });
                createRtmpStreamBottomSheet2.containerView.addView(buttonWithCounterView2, LayoutHelper.createFrame(-1, 48.0f, 80, 16.0f, 0.0f, 16.0f, 12.0f));
                createRtmpStreamBottomSheet = createRtmpStreamBottomSheet2;
            }
        }
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(350L);
        createRtmpStreamBottomSheet.recyclerListView.setItemAnimator(defaultItemAnimator);
        RecyclerListView recyclerListView = createRtmpStreamBottomSheet.recyclerListView;
        int i2 = createRtmpStreamBottomSheet.backgroundPaddingLeft;
        if (createRtmpStreamBottomSheet.hasButton) {
            iM1124dp = AndroidUtilities.m1124dp(createRtmpStreamBottomSheet.hasRevokeButton ? 124.0f : 72.0f);
        } else {
            iM1124dp = 0;
        }
        recyclerListView.setPadding(i2, 0, i2, iM1124dp);
        createRtmpStreamBottomSheet.fixNavigationBar();
        createRtmpStreamBottomSheet.updateTitle();
        createRtmpStreamBottomSheet.rtmpUrl = groupcallstreamrtmpurl.url;
        createRtmpStreamBottomSheet.rtmpKey = groupcallstreamrtmpurl.key;
        createRtmpStreamBottomSheet.rtmpKeySpoiled = new SpannableStringBuilder(createRtmpStreamBottomSheet.rtmpKey);
        TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
        textStyleRun.flags |= 256;
        textStyleRun.start = 0;
        textStyleRun.end = createRtmpStreamBottomSheet.rtmpKeySpoiled.length();
        createRtmpStreamBottomSheet.rtmpKeySpoiled.setSpan(new TextStyleSpan(textStyleRun), 0, createRtmpStreamBottomSheet.rtmpKeySpoiled.length(), 0);
        createRtmpStreamBottomSheet.adapter.update(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(Utilities.Callback callback, final ButtonWithCounterView buttonWithCounterView, View view) {
        callback.run(new Browser.Progress(new Runnable() { // from class: org.telegram.ui.Components.CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                buttonWithCounterView.setLoading(true);
            }
        }, new Runnable() { // from class: org.telegram.ui.Components.CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1(buttonWithCounterView);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(ButtonWithCounterView buttonWithCounterView) {
        buttonWithCounterView.setLoading(false);
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(Context context, Theme.ResourcesProvider resourcesProvider, final ButtonWithCounterView buttonWithCounterView, final TL_phone.getGroupCallStreamRtmpUrl getgroupcallstreamrtmpurl, final int i, View view) {
        new AlertDialog.Builder(context, resourcesProvider).setTitle(LocaleController.getString(C2888R.string.LiveStoryRTMPRevokeTitle)).setMessage(LocaleController.getString(C2888R.string.LiveStoryRTMPRevokeText)).setPositiveButton(LocaleController.getString(C2888R.string.RevokeButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                this.f$0.lambda$new$5(buttonWithCounterView, getgroupcallstreamrtmpurl, i, alertDialog, i2);
            }
        }).setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null).makeRed(-1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(final ButtonWithCounterView buttonWithCounterView, TL_phone.getGroupCallStreamRtmpUrl getgroupcallstreamrtmpurl, int i, AlertDialog alertDialog, int i2) {
        if (buttonWithCounterView.isLoading()) {
            return;
        }
        buttonWithCounterView.setLoading(true);
        getgroupcallstreamrtmpurl.revoke = true;
        ConnectionsManager.getInstance(i).sendRequest(getgroupcallstreamrtmpurl, new RequestDelegate() { // from class: org.telegram.ui.Components.CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda4
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$new$4(buttonWithCounterView, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(final ButtonWithCounterView buttonWithCounterView, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$3(buttonWithCounterView, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(ButtonWithCounterView buttonWithCounterView, TLObject tLObject) {
        buttonWithCounterView.setLoading(false);
        if (tLObject instanceof TL_phone.groupCallStreamRtmpUrl) {
            TL_phone.groupCallStreamRtmpUrl groupcallstreamrtmpurl = (TL_phone.groupCallStreamRtmpUrl) tLObject;
            this.rtmpUrl = groupcallstreamrtmpurl.url;
            this.rtmpKey = groupcallstreamrtmpurl.key;
            this.rtmpKeySpoiled = new SpannableStringBuilder(this.rtmpKey);
            this.adapter.update(true);
        }
    }

    public CreateRtmpStreamBottomSheet(BaseFragment baseFragment, final TLRPC.Peer peer, final long j, boolean z, JoinCallAlert.JoinCallAlertDelegate joinCallAlertDelegate) {
        super(baseFragment, false, false);
        this.story = false;
        this.topPadding = 0.26f;
        this.joinCallDelegate = joinCallAlertDelegate;
        this.hasFewPeers = z;
        final Context context = this.containerView.getContext();
        boolean zIsCreator = ChatObject.isCreator(MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j)));
        this.hasButton = true;
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setSingleLine(true);
        textView.setTextSize(1, 14.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setText(LocaleController.getString(C2888R.string.VoipChannelStartStreaming));
        textView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText, this.resourcesProvider));
        textView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(8.0f), Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider), ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_windowBackgroundWhite), 120)));
        this.containerView.addView(textView, LayoutHelper.createFrame(-1, 48.0f, 80, 16.0f, 0.0f, 16.0f, (zIsCreator ? 52 : 0) + 12));
        textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$7(peer, view);
            }
        });
        if (zIsCreator) {
            final ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, false, this.resourcesProvider);
            buttonWithCounterView.setColor(Theme.getColor(Theme.key_fill_RedNormal));
            buttonWithCounterView.text.setTypeface(AndroidUtilities.bold());
            buttonWithCounterView.setText(LocaleController.getString(C2888R.string.LiveStoryRTMPRevoke), false);
            buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$11(context, buttonWithCounterView, j, view);
                }
            });
            this.containerView.addView(buttonWithCounterView, LayoutHelper.createFrame(-1, 48.0f, 80, 16.0f, 0.0f, 16.0f, 12.0f));
        }
        RecyclerListView recyclerListView = this.recyclerListView;
        int i = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i, 0, i, AndroidUtilities.m1124dp((zIsCreator ? 52 : 0) + 72));
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(350L);
        this.recyclerListView.setItemAnimator(defaultItemAnimator);
        fixNavigationBar();
        updateTitle();
        TL_phone.getGroupCallStreamRtmpUrl getgroupcallstreamrtmpurl = new TL_phone.getGroupCallStreamRtmpUrl();
        getgroupcallstreamrtmpurl.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        getgroupcallstreamrtmpurl.revoke = false;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(getgroupcallstreamrtmpurl, new RequestDelegate() { // from class: org.telegram.ui.Components.CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda9
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$new$13(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(TLRPC.Peer peer, View view) {
        this.selectAfterDismiss = MessagesController.getInstance(this.currentAccount).getInputPeer(MessageObject.getPeerId(peer));
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11(Context context, final ButtonWithCounterView buttonWithCounterView, final long j, View view) {
        new AlertDialog.Builder(context, this.resourcesProvider).setTitle(LocaleController.getString(C2888R.string.LiveStoryRTMPRevokeTitle)).setMessage(LocaleController.getString(C2888R.string.LiveStoryRTMPRevokeText)).setPositiveButton(LocaleController.getString(C2888R.string.RevokeButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda11
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$new$10(buttonWithCounterView, j, alertDialog, i);
            }
        }).setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null).makeRed(-1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(final ButtonWithCounterView buttonWithCounterView, long j, AlertDialog alertDialog, int i) {
        if (buttonWithCounterView.isLoading()) {
            return;
        }
        buttonWithCounterView.setLoading(true);
        TL_phone.getGroupCallStreamRtmpUrl getgroupcallstreamrtmpurl = new TL_phone.getGroupCallStreamRtmpUrl();
        getgroupcallstreamrtmpurl.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        getgroupcallstreamrtmpurl.revoke = true;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(getgroupcallstreamrtmpurl, new RequestDelegate() { // from class: org.telegram.ui.Components.CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda12
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$new$9(buttonWithCounterView, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(final ButtonWithCounterView buttonWithCounterView, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$8(buttonWithCounterView, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(ButtonWithCounterView buttonWithCounterView, TLObject tLObject) {
        buttonWithCounterView.setLoading(false);
        if (tLObject == null || !(tLObject instanceof TL_phone.groupCallStreamRtmpUrl)) {
            return;
        }
        TL_phone.groupCallStreamRtmpUrl groupcallstreamrtmpurl = (TL_phone.groupCallStreamRtmpUrl) tLObject;
        this.rtmpUrl = groupcallstreamrtmpurl.url;
        this.rtmpKey = groupcallstreamrtmpurl.key;
        this.rtmpKeySpoiled = new SpannableStringBuilder(this.rtmpKey);
        this.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$13(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$12(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$12(TLObject tLObject) {
        if (tLObject == null || !(tLObject instanceof TL_phone.groupCallStreamRtmpUrl)) {
            return;
        }
        TL_phone.groupCallStreamRtmpUrl groupcallstreamrtmpurl = (TL_phone.groupCallStreamRtmpUrl) tLObject;
        this.rtmpUrl = groupcallstreamrtmpurl.url;
        this.rtmpKey = groupcallstreamrtmpurl.key;
        this.rtmpKeySpoiled = new SpannableStringBuilder(this.rtmpKey);
        TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
        textStyleRun.flags |= 256;
        textStyleRun.start = 0;
        textStyleRun.end = this.rtmpKeySpoiled.length();
        this.rtmpKeySpoiled.setSpan(new TextStyleSpan(textStyleRun), 0, this.rtmpKeySpoiled.length(), 0);
        this.adapter.update(false);
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public void dismissInternal() {
        TLRPC.InputPeer inputPeer;
        super.dismissInternal();
        JoinCallAlert.JoinCallAlertDelegate joinCallAlertDelegate = this.joinCallDelegate;
        if (joinCallAlertDelegate == null || (inputPeer = this.selectAfterDismiss) == null) {
            return;
        }
        joinCallAlertDelegate.didSelectChat(inputPeer, this.hasFewPeers, false, true);
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        return LocaleController.getString(C2888R.string.Streaming);
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    public RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.Components.CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, this.resourcesProvider);
        this.adapter = universalAdapter;
        return universalAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        if (this.topCell == null) {
            this.topCell = new TopCell(getContext(), this.resourcesProvider);
        }
        arrayList.add(UItem.asCustom(this.topCell));
        String string = null;
        arrayList.add(UItem.asShadow(null));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.VoipChatStreamSettings)));
        arrayList.add(TextDetailCellFactory.m1250of(this.rtmpUrl, LocaleController.getString(C2888R.string.VoipChatStreamServerUrl), true));
        arrayList.add(TextDetailCellFactory.m1250of(this.rtmpKeySpoiled, LocaleController.getString(C2888R.string.VoipChatStreamKey), false));
        if (this.hasButton) {
            string = LocaleController.getString(this.story ? C2888R.string.VoipChatStreamWithAnotherAppDescriptionStory : C2888R.string.VoipChatStreamWithAnotherAppDescription);
        }
        arrayList.add(UItem.asShadow(string));
    }

    private static class TopCell extends LinearLayout {
        public TopCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            setOrientation(1);
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            rLottieImageView.setAutoRepeat(true);
            rLottieImageView.setAnimation(C2888R.raw.utyan_streaming, 112, 112);
            rLottieImageView.playAnimation();
            addView(rLottieImageView, LayoutHelper.createLinear(112, 112, 49, 0, 24, 0, 0));
            TextView textView = new TextView(context);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setText(LocaleController.formatString(C2888R.string.Streaming, new Object[0]));
            textView.setTextSize(1, 20.0f);
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
            addView(textView, LayoutHelper.createLinear(-2, -2, 1, 0, 14, 0, 7));
            TextView textView2 = new TextView(context);
            textView2.setTextSize(1, 14.0f);
            textView2.setGravity(1);
            textView2.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
            textView2.setText(LocaleController.formatString(C2888R.string.VoipStreamStart, new Object[0]));
            textView2.setLineSpacing(textView2.getLineSpacingExtra(), textView2.getLineSpacingMultiplier() * 1.1f);
            addView(textView2, LayoutHelper.createLinear(-2, -2, 1, 28, 0, 28, 17));
        }
    }

    public static class TextDetailCellFactory extends UItem.UItemFactory {
        static {
            UItem.UItemFactory.setup(new TextDetailCellFactory());
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public TextDetailCell createView(final Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
            final TextDetailCell textDetailCell = new TextDetailCell(context, resourcesProvider, true, false);
            textDetailCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider));
            Drawable drawableMutate = ContextCompat.getDrawable(context, C2888R.drawable.msg_copy).mutate();
            drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader, resourcesProvider), PorterDuff.Mode.MULTIPLY));
            textDetailCell.setImage(drawableMutate);
            textDetailCell.setImageClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.CreateRtmpStreamBottomSheet$TextDetailCellFactory$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$0(context, textDetailCell, view);
                }
            });
            return textDetailCell;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createView$0(Context context, TextDetailCell textDetailCell, View view) {
            copyRtmpValue(context, textDetailCell.textView.getText().toString());
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
            TextDetailCell textDetailCell = (TextDetailCell) view;
            textDetailCell.setTextAndValue(uItem.text, uItem.textValue, !uItem.hideDivider);
            if (uItem.text instanceof SpannableStringBuilder) {
                textDetailCell.textView.setTextSize(1, 13.0f);
                textDetailCell.textView.setTranslationY(AndroidUtilities.m1124dp(2.0f));
                textDetailCell.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO));
            }
        }

        /* JADX INFO: renamed from: of */
        public static UItem m1250of(CharSequence charSequence, CharSequence charSequence2, boolean z) {
            UItem uItemOfFactory = UItem.ofFactory(TextDetailCellFactory.class);
            uItemOfFactory.text = charSequence;
            uItemOfFactory.textValue = charSequence2;
            uItemOfFactory.hideDivider = !z;
            uItemOfFactory.enabled = false;
            return uItemOfFactory;
        }

        private void copyRtmpValue(Context context, String str) {
            AndroidUtilities.addToClipboard(str);
            if (AndroidUtilities.shouldShowClipboardToast()) {
                Toast.makeText(context, LocaleController.getString(C2888R.string.TextCopied), 0).show();
            }
        }
    }
}
