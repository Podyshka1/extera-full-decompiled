package org.telegram.p029ui.bots;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import com.android.p003dx.rop.code.RegisterSpec;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.HeaderCell;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.ColoredImageSpan;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.FlickerLoadingView;
import org.telegram.p029ui.Components.ItemOptions;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.Premium.GLIcon.GLIconRenderer;
import org.telegram.p029ui.Components.Premium.GLIcon.GLIconTextureView;
import org.telegram.p029ui.Components.Premium.StarParticlesView;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.Components.TypefaceSpan;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import org.telegram.p029ui.FilterCreateActivity;
import org.telegram.p029ui.GradientHeaderActivity;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.ProfileActivity;
import org.telegram.p029ui.Stars.BotStarsController;
import org.telegram.p029ui.Stars.StarsIntroActivity;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.p029ui.bots.AffiliateProgramFragment;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_payments;

/* JADX INFO: loaded from: classes7.dex */
public class ChannelAffiliateProgramsFragment extends GradientHeaderActivity implements NotificationCenter.NotificationCenterDelegate {
    private FrameLayout aboveTitleView;
    private UniversalAdapter adapter;
    public final long dialogId;
    private View emptyLayout;
    private GLIconTextureView iconTextureView;

    public static /* synthetic */ void $r8$lambda$IcNRNxpxS4fjkN6ISX9CYpyMFyg(DialogInterface dialogInterface) {
    }

    public static /* synthetic */ void $r8$lambda$s5dd51qpgOmxoxkAzPDs_oY_Tx4(DialogInterface dialogInterface) {
    }

    public ChannelAffiliateProgramsFragment(long j) {
        this.dialogId = j;
        setWhiteBackground(true);
        setMinusHeaderHeight(AndroidUtilities.m1124dp(60.0f));
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.channelConnectedBotsUpdate);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.channelSuggestedBotsUpdate);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.channelConnectedBotsUpdate);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.channelSuggestedBotsUpdate);
    }

    @Override // org.telegram.p029ui.GradientHeaderActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        this.useFillLastLayoutManager = false;
        this.particlesViewHeight = AndroidUtilities.m1124dp(238.0f);
        View view = new View(context) { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment.1
            @Override // android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(60.0f), TLObject.FLAG_30));
            }
        };
        this.emptyLayout = view;
        view.setBackgroundColor(Theme.getColor(Theme.key_dialogBackgroundGray));
        super.createView(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.aboveTitleView = frameLayout;
        frameLayout.setClickable(true);
        GLIconTextureView gLIconTextureView = new GLIconTextureView(context, 1, 3);
        this.iconTextureView = gLIconTextureView;
        GLIconRenderer gLIconRenderer = gLIconTextureView.mRenderer;
        gLIconRenderer.colorKey1 = Theme.key_starsGradient1;
        gLIconRenderer.colorKey2 = Theme.key_starsGradient2;
        gLIconRenderer.updateColors();
        this.iconTextureView.setStarParticlesView(this.particlesView);
        this.aboveTitleView.addView(this.iconTextureView, LayoutHelper.createFrame(190, 190.0f, 17, 0.0f, 32.0f, 0.0f, 12.0f));
        configureHeader(LocaleController.getString(C2888R.string.ChannelAffiliateProgramTitle), AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ChannelAffiliateProgramText)), this.aboveTitleView, null);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view2, int i) {
                this.f$0.lambda$createView$0(context, view2, i);
            }
        });
        this.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view2, int i) {
                return this.f$0.lambda$createView$8(context, view2, i);
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(350L);
        this.listView.setItemAnimator(defaultItemAnimator);
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                if (ChannelAffiliateProgramsFragment.this.isLoadingVisible() || !recyclerView.canScrollVertically(1)) {
                    BotStarsController.getInstance(((BaseFragment) ChannelAffiliateProgramsFragment.this).currentAccount).getChannelConnectedBots(ChannelAffiliateProgramsFragment.this.dialogId).load();
                    BotStarsController.getInstance(((BaseFragment) ChannelAffiliateProgramsFragment.this).currentAccount).getChannelSuggestedBots(ChannelAffiliateProgramsFragment.this.dialogId).load();
                }
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(Context context, View view, int i) {
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter == null) {
            return;
        }
        Object obj = universalAdapter.getItem(i).object;
        if (obj instanceof TL_payments.starRefProgram) {
            showConnectAffiliateAlert(context, this.currentAccount, (TL_payments.starRefProgram) obj, this.dialogId, this.resourceProvider, false);
        } else if (obj instanceof TL_payments.connectedBotStarRef) {
            showShareAffiliateAlert(context, this.currentAccount, (TL_payments.connectedBotStarRef) obj, this.dialogId, this.resourceProvider);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$8(final Context context, View view, int i) {
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter == null) {
            return false;
        }
        Object obj = universalAdapter.getItem(i).object;
        if (!(obj instanceof TL_payments.connectedBotStarRef)) {
            return false;
        }
        final TL_payments.connectedBotStarRef connectedbotstarref = (TL_payments.connectedBotStarRef) obj;
        final TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(connectedbotstarref.bot_id));
        ItemOptions.makeOptions(this, view).addIf(user.bot_has_main_app, C2888R.drawable.msg_bot, LocaleController.getString(C2888R.string.ProfileBotOpenApp), new Runnable() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$1(user);
            }
        }).addIf(!user.bot_has_main_app, C2888R.drawable.msg_bot, LocaleController.getString(C2888R.string.BotWebViewOpenBot), new Runnable() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$2(connectedbotstarref);
            }
        }).add(C2888R.drawable.msg_link2, LocaleController.getString(C2888R.string.CopyLink), new Runnable() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$3(connectedbotstarref, user);
            }
        }).addIf(!connectedbotstarref.revoked, C2888R.drawable.msg_leave, (CharSequence) LocaleController.getString(C2888R.string.LeaveAffiliateLinkButton), true, new Runnable() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$7(context, user, connectedbotstarref);
            }
        }).setGravity(5).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(TLRPC.User user) {
        getMessagesController().openApp(user, getClassGuid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(TL_payments.connectedBotStarRef connectedbotstarref) {
        presentFragment(ChatActivity.m1239of(connectedbotstarref.bot_id));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(TL_payments.connectedBotStarRef connectedbotstarref, TLRPC.User user) {
        AndroidUtilities.addToClipboard(connectedbotstarref.url);
        BulletinFactory.m1246of(this).createSimpleBulletin(C2888R.raw.copy, LocaleController.getString(C2888R.string.AffiliateProgramLinkCopiedTitle), AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.AffiliateProgramLinkCopiedText, AffiliateProgramFragment.percents(connectedbotstarref.commission_permille), UserObject.getUserName(user)))).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7(Context context, TLRPC.User user, final TL_payments.connectedBotStarRef connectedbotstarref) {
        new AlertDialog.Builder(context, this.resourceProvider).setTitle(LocaleController.getString(C2888R.string.LeaveAffiliateLink)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.LeaveAffiliateLinkAlert, UserObject.getUserName(user)))).setPositiveButton(LocaleController.getString(C2888R.string.LeaveAffiliateLinkButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda22
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$createView$6(connectedbotstarref, alertDialog, i);
            }
        }).setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null).makeRed(-1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(TL_payments.connectedBotStarRef connectedbotstarref, AlertDialog alertDialog, int i) {
        final AlertDialog alertDialog2 = new AlertDialog(getParentActivity(), 3);
        alertDialog2.showDelayed(200L);
        TL_payments.editConnectedStarRefBot editconnectedstarrefbot = new TL_payments.editConnectedStarRefBot();
        editconnectedstarrefbot.link = connectedbotstarref.url;
        editconnectedstarrefbot.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
        editconnectedstarrefbot.revoked = true;
        getConnectionsManager().sendRequest(editconnectedstarrefbot, new RequestDelegate() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda25
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$createView$5(alertDialog2, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(final AlertDialog alertDialog, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$4(tLObject, alertDialog);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(TLObject tLObject, AlertDialog alertDialog) {
        if (tLObject instanceof TL_payments.connectedStarRefBots) {
            BotStarsController.getInstance(this.currentAccount).getChannelConnectedBots(this.dialogId).applyEdit((TL_payments.connectedStarRefBots) tLObject);
            BotStarsController.getInstance(this.currentAccount).getChannelSuggestedBots(this.dialogId).reload();
            this.adapter.update(true);
        }
        alertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLoadingVisible() {
        for (int i = 0; i < this.listView.getChildCount(); i++) {
            if (this.listView.getChildAt(i) instanceof FlickerLoadingView) {
                return true;
            }
        }
        return false;
    }

    @Override // org.telegram.p029ui.GradientHeaderActivity
    protected RecyclerView.Adapter createAdapter() {
        UniversalAdapter universalAdapter = new UniversalAdapter(this.listView, getContext(), this.currentAccount, this.classGuid, true, new Utilities.Callback2() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, getResourceProvider()) { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment.3
            @Override // org.telegram.p029ui.Components.UniversalAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                if (i == 42) {
                    HeaderCell headerCell = new HeaderCell(ChannelAffiliateProgramsFragment.this.getContext(), Theme.key_windowBackgroundWhiteBlueHeader, 21, 0, false, ((BaseFragment) ChannelAffiliateProgramsFragment.this).resourceProvider);
                    headerCell.setHeight(25);
                    return new RecyclerListView.Holder(headerCell);
                }
                return super.onCreateViewHolder(viewGroup, i);
            }
        };
        this.adapter = universalAdapter;
        return universalAdapter;
    }

    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        if (getContext() == null) {
            return;
        }
        arrayList.add(UItem.asFullyCustom(getHeader(getContext())));
        arrayList.add(AffiliateProgramFragment.FeatureCell.Factory.m1336as(C2888R.drawable.menu_feature_reliable, LocaleController.getString(C2888R.string.ChannelAffiliateProgramFeature1Title), LocaleController.getString(C2888R.string.ChannelAffiliateProgramFeature1)));
        arrayList.add(AffiliateProgramFragment.FeatureCell.Factory.m1336as(C2888R.drawable.menu_feature_transparent, LocaleController.getString(C2888R.string.ChannelAffiliateProgramFeature2Title), LocaleController.getString(C2888R.string.ChannelAffiliateProgramFeature2)));
        arrayList.add(AffiliateProgramFragment.FeatureCell.Factory.m1336as(C2888R.drawable.menu_feature_simple, LocaleController.getString(C2888R.string.ChannelAffiliateProgramFeature3Title), LocaleController.getString(C2888R.string.ChannelAffiliateProgramFeature3)));
        arrayList.add(UItem.asShadow(1, null));
        BotStarsController.ChannelConnectedBots channelConnectedBots = BotStarsController.getInstance(this.currentAccount).getChannelConnectedBots(this.dialogId);
        if (!channelConnectedBots.bots.isEmpty() || channelConnectedBots.count > 0) {
            arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.ChannelAffiliateProgramMyPrograms)));
            for (int i = 0; i < channelConnectedBots.bots.size(); i++) {
                arrayList.add(BotCell.Factory.m1341as((TL_payments.connectedBotStarRef) channelConnectedBots.bots.get(i)));
            }
            if (!channelConnectedBots.endReached || channelConnectedBots.isLoading()) {
                arrayList.add(UItem.asFlicker(29));
                arrayList.add(UItem.asFlicker(29));
                arrayList.add(UItem.asFlicker(29));
            }
            arrayList.add(UItem.asShadow(2, null));
        }
        BotStarsController.ChannelSuggestedBots channelSuggestedBots = BotStarsController.getInstance(this.currentAccount).getChannelSuggestedBots(this.dialogId);
        if (!channelSuggestedBots.bots.isEmpty() || channelSuggestedBots.count > 0) {
            arrayList.add(HeaderSortCell.Factory.m1343as(LocaleController.getString(C2888R.string.ChannelAffiliateProgramPrograms), sortText(channelSuggestedBots.getSort())));
            for (int i2 = 0; i2 < channelSuggestedBots.bots.size(); i2++) {
                arrayList.add(BotCell.Factory.m1341as(channelSuggestedBots.bots.get(i2)));
            }
            if (!channelSuggestedBots.endReached || channelSuggestedBots.isLoading()) {
                arrayList.add(UItem.asFlicker(29));
                arrayList.add(UItem.asFlicker(29));
                arrayList.add(UItem.asFlicker(29));
            }
            arrayList.add(UItem.asShadow(3, null));
        }
        arrayList.add(UItem.asCustom(this.emptyLayout));
    }

    private CharSequence sortText(BotStarsController.ChannelSuggestedBots.Sort sort) {
        SpannableString spannableString;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) LocaleController.getString(C2888R.string.ChannelAffiliateProgramProgramsSort)).append((CharSequence) " ");
        if (sort == BotStarsController.ChannelSuggestedBots.Sort.BY_PROFITABILITY) {
            spannableString = new SpannableString(LocaleController.getString(C2888R.string.ChannelAffiliateProgramProgramsSortProfitability) + RegisterSpec.PREFIX);
        } else if (sort == BotStarsController.ChannelSuggestedBots.Sort.BY_REVENUE) {
            spannableString = new SpannableString(LocaleController.getString(C2888R.string.ChannelAffiliateProgramProgramsSortRevenue) + RegisterSpec.PREFIX);
        } else {
            if (sort == BotStarsController.ChannelSuggestedBots.Sort.BY_DATE) {
                spannableString = new SpannableString(LocaleController.getString(C2888R.string.ChannelAffiliateProgramProgramsSortDate) + RegisterSpec.PREFIX);
            }
            return spannableStringBuilder;
        }
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.arrow_more);
        coloredImageSpan.useLinkPaintColor = true;
        coloredImageSpan.setScale(0.6f, 0.6f);
        spannableString.setSpan(coloredImageSpan, spannableString.length() - 1, spannableString.length(), 33);
        spannableString.setSpan(new C74504(sort, BotStarsController.getInstance(this.currentAccount).getChannelSuggestedBots(this.dialogId)), 0, spannableString.length(), 33);
        spannableStringBuilder.append((CharSequence) spannableString);
        return spannableStringBuilder;
    }

    /* JADX INFO: renamed from: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$4 */
    class C74504 extends ClickableSpan {
        final /* synthetic */ BotStarsController.ChannelSuggestedBots.Sort val$sort;
        final /* synthetic */ BotStarsController.ChannelSuggestedBots val$suggestedBots;

        C74504(BotStarsController.ChannelSuggestedBots.Sort sort, BotStarsController.ChannelSuggestedBots channelSuggestedBots) {
            this.val$sort = sort;
            this.val$suggestedBots = channelSuggestedBots;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(ChannelAffiliateProgramsFragment.this, view);
            boolean z = this.val$sort == BotStarsController.ChannelSuggestedBots.Sort.BY_DATE;
            String string = LocaleController.getString(C2888R.string.ChannelAffiliateProgramProgramsSortDate);
            final BotStarsController.ChannelSuggestedBots channelSuggestedBots = this.val$suggestedBots;
            ItemOptions itemOptionsAddChecked = itemOptionsMakeOptions.addChecked(z, string, new Runnable() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    channelSuggestedBots.setSort(BotStarsController.ChannelSuggestedBots.Sort.BY_DATE);
                }
            });
            boolean z2 = this.val$sort == BotStarsController.ChannelSuggestedBots.Sort.BY_REVENUE;
            String string2 = LocaleController.getString(C2888R.string.ChannelAffiliateProgramProgramsSortRevenue);
            final BotStarsController.ChannelSuggestedBots channelSuggestedBots2 = this.val$suggestedBots;
            ItemOptions itemOptionsAddChecked2 = itemOptionsAddChecked.addChecked(z2, string2, new Runnable() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$4$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    channelSuggestedBots2.setSort(BotStarsController.ChannelSuggestedBots.Sort.BY_REVENUE);
                }
            });
            boolean z3 = this.val$sort == BotStarsController.ChannelSuggestedBots.Sort.BY_PROFITABILITY;
            String string3 = LocaleController.getString(C2888R.string.ChannelAffiliateProgramProgramsSortProfitability);
            final BotStarsController.ChannelSuggestedBots channelSuggestedBots3 = this.val$suggestedBots;
            itemOptionsAddChecked2.addChecked(z3, string3, new Runnable() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$4$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    channelSuggestedBots3.setSort(BotStarsController.ChannelSuggestedBots.Sort.BY_PROFITABILITY);
                }
            }).setGravity(5).setDrawScrim(false).setDimAlpha(0).translate(AndroidUtilities.m1124dp(24.0f), -AndroidUtilities.m1124dp(24.0f)).show();
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setUnderlineText(false);
            textPaint.setColor(textPaint.linkColor);
        }
    }

    @Override // org.telegram.p029ui.GradientHeaderActivity
    public StarParticlesView createParticlesView() {
        return makeParticlesView(getContext(), 75, 1);
    }

    public static StarParticlesView makeParticlesView(Context context, int i, int i2) {
        return new StarParticlesView(context) { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment.5
            {
                setClipWithGradient();
            }

            @Override // org.telegram.p029ui.Components.Premium.StarParticlesView
            protected void configure() {
                super.configure();
                StarParticlesView.Drawable drawable = this.drawable;
                drawable.useGradient = true;
                drawable.useBlur = false;
                drawable.forceMaxAlpha = true;
                drawable.checkBounds = true;
                drawable.init();
            }

            @Override // org.telegram.p029ui.Components.Premium.StarParticlesView
            protected int getStarsRectWidth() {
                return getMeasuredWidth();
            }
        };
    }

    @Override // org.telegram.p029ui.GradientHeaderActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        GLIconTextureView gLIconTextureView = this.iconTextureView;
        if (gLIconTextureView != null) {
            gLIconTextureView.setPaused(false);
            this.iconTextureView.setDialogVisible(false);
        }
    }

    @Override // org.telegram.p029ui.GradientHeaderActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        GLIconTextureView gLIconTextureView = this.iconTextureView;
        if (gLIconTextureView != null) {
            gLIconTextureView.setPaused(true);
            this.iconTextureView.setDialogVisible(true);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        UniversalAdapter universalAdapter;
        if (i != NotificationCenter.channelConnectedBotsUpdate) {
            if (i == NotificationCenter.channelSuggestedBotsUpdate && ((Long) objArr[0]).longValue() == this.dialogId && (universalAdapter = this.adapter) != null) {
                universalAdapter.update(true);
                return;
            }
            return;
        }
        if (((Long) objArr[0]).longValue() == this.dialogId) {
            UniversalAdapter universalAdapter2 = this.adapter;
            if (universalAdapter2 != null) {
                universalAdapter2.update(true);
            }
            BotStarsController.getInstance(this.currentAccount).getChannelConnectedBots(this.dialogId).load();
        }
    }

    public static class BotCell extends FrameLayout {
        private final ImageView arrowView;
        private final int currentAccount;
        private final BackupImageView imageView;
        private final View linkBgView;
        private final View linkFg2View;
        private final ImageView linkFgView;
        private boolean needDivider;
        private final Theme.ResourcesProvider resourcesProvider;
        private final LinearLayout textLayout;
        private final TextView textView;
        private final TextView titleView;

        public BotCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.currentAccount = i;
            this.resourcesProvider = resourcesProvider;
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.m1124dp(46.0f));
            addView(backupImageView, LayoutHelper.createFrame(46, 46.0f, 19, 13.0f, 0.0f, 13.0f, 0.0f));
            View view = new View(context);
            this.linkBgView = view;
            view.setBackground(Theme.createCircleDrawable(AndroidUtilities.m1124dp(11.0f), Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider)));
            addView(view, LayoutHelper.createFrame(22, 22.0f, 19, 40.0f, 15.0f, 0.0f, 0.0f));
            View view2 = new View(context);
            this.linkFg2View = view2;
            view2.setBackground(Theme.createCircleDrawable(AndroidUtilities.m1124dp(9.665f), Theme.getColor(Theme.key_color_green, resourcesProvider)));
            addView(view2, LayoutHelper.createFrame(19.33f, 19.33f, 19, 41.33f, 15.0f, 0.0f, 0.0f));
            ImageView imageView = new ImageView(context);
            this.linkFgView = imageView;
            imageView.setScaleX(0.6f);
            imageView.setScaleY(0.6f);
            addView(imageView, LayoutHelper.createFrame(19.33f, 19.33f, 19, 41.33f, 15.0f, 0.0f, 0.0f));
            LinearLayout linearLayout = new LinearLayout(context);
            this.textLayout = linearLayout;
            linearLayout.setOrientation(1);
            addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f, 55, 66.0f, 8.66f, 10.0f, 0.0f));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setMaxLines(1);
            textView.setSingleLine(true);
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            textView.setEllipsize(truncateAt);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setTextSize(1, 16.0f);
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
            NotificationCenter.listenEmojiLoading(textView);
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 55, 6, 0, 24, 0));
            TextView textView2 = new TextView(context);
            this.textView = textView2;
            textView2.setMaxLines(1);
            textView2.setSingleLine(true);
            textView2.setEllipsize(truncateAt);
            textView2.setTextSize(1, 14.0f);
            textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
            linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 55, 6, 1, 24, 0));
            ImageView imageView2 = new ImageView(context);
            this.arrowView = imageView2;
            imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_switchTrack, resourcesProvider), PorterDuff.Mode.SRC_IN));
            imageView2.setImageResource(C2888R.drawable.msg_arrowright);
            imageView2.setScaleType(ImageView.ScaleType.CENTER);
            addView(imageView2, LayoutHelper.createFrame(24, 24.0f, 21, 0.0f, 0.0f, 10.0f, 0.0f));
        }

        public void set(TL_payments.connectedBotStarRef connectedbotstarref, boolean z, boolean z2) {
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(connectedbotstarref.bot_id));
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setInfo(user);
            this.imageView.setForUserOrChat(user, avatarDrawable);
            this.titleView.setText(Emoji.replaceEmoji(UserObject.getUserName(user), this.titleView.getPaint().getFontMetricsInt(), false));
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            if (connectedbotstarref.commission_permille > 0) {
                spannableStringBuilder.append((CharSequence) " d");
                FilterCreateActivity.NewSpan newSpan = new FilterCreateActivity.NewSpan(10.0f);
                newSpan.setColor(Theme.getColor(Theme.key_color_green));
                newSpan.setText(AffiliateProgramFragment.percents(connectedbotstarref.commission_permille));
                spannableStringBuilder.setSpan(newSpan, 1, 2, 33);
            }
            int i = connectedbotstarref.duration_months;
            if (i == 0) {
                spannableStringBuilder.append((CharSequence) LocaleController.getString(C2888R.string.Lifetime));
            } else if (i < 12 || i % 12 != 0) {
                spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("Months", i, new Object[0]));
            } else {
                spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("Years", i / 12, new Object[0]));
            }
            this.textView.setText(spannableStringBuilder);
            this.arrowView.setVisibility(z ? 0 : 8);
            this.linkBgView.setVisibility(0);
            this.linkFgView.setVisibility(0);
            this.linkFg2View.setVisibility(0);
            this.linkFg2View.setBackground(Theme.createCircleDrawable(AndroidUtilities.m1124dp(9.665f), Theme.getColor(connectedbotstarref.revoked ? Theme.key_color_red : Theme.key_color_green, this.resourcesProvider)));
            this.linkFgView.setImageResource(connectedbotstarref.revoked ? C2888R.drawable.msg_link_2 : C2888R.drawable.msg_limit_links);
            this.linkFgView.setScaleX(connectedbotstarref.revoked ? 0.8f : 0.6f);
            this.linkFgView.setScaleY(connectedbotstarref.revoked ? 0.8f : 0.6f);
            this.needDivider = z2;
            setWillNotDraw(!z2);
        }

        public void set(TL_payments.starRefProgram starrefprogram, boolean z, boolean z2) {
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(starrefprogram.bot_id));
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setInfo(user);
            this.imageView.setForUserOrChat(user, avatarDrawable);
            this.titleView.setText(UserObject.getUserName(user));
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            if (starrefprogram.commission_permille > 0) {
                spannableStringBuilder.append((CharSequence) " d");
                FilterCreateActivity.NewSpan newSpan = new FilterCreateActivity.NewSpan(10.0f);
                newSpan.setColor(Theme.getColor(Theme.key_color_green));
                newSpan.setText(AffiliateProgramFragment.percents(starrefprogram.commission_permille));
                spannableStringBuilder.setSpan(newSpan, 1, 2, 33);
            }
            int i = starrefprogram.duration_months;
            if (i == 0) {
                spannableStringBuilder.append((CharSequence) LocaleController.getString(C2888R.string.Lifetime));
            } else if (i < 12 || i % 12 != 0) {
                spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("Months", i, new Object[0]));
            } else {
                spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("Years", i / 12, new Object[0]));
            }
            this.textView.setText(spannableStringBuilder);
            this.arrowView.setVisibility(z ? 0 : 8);
            this.linkBgView.setVisibility(8);
            this.linkFgView.setVisibility(8);
            this.linkFg2View.setVisibility(8);
            this.needDivider = z2;
            setWillNotDraw(!z2);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(58.0f), TLObject.FLAG_30));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            if (this.needDivider) {
                canvas.drawRect(AndroidUtilities.m1124dp(72.0f), getHeight() - 1, getWidth(), getHeight(), Theme.dividerPaint);
            }
        }

        public static class Factory extends UItem.UItemFactory {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public BotCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new BotCell(context, i, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                Object obj = uItem.object;
                if (obj instanceof TL_payments.connectedBotStarRef) {
                    ((BotCell) view).set((TL_payments.connectedBotStarRef) obj, uItem.red, z);
                } else if (obj instanceof TL_payments.starRefProgram) {
                    ((BotCell) view).set((TL_payments.starRefProgram) obj, uItem.red, z);
                }
            }

            /* JADX INFO: renamed from: as */
            public static UItem m1341as(Object obj) {
                return m1342as(obj, true);
            }

            /* JADX INFO: renamed from: as */
            public static UItem m1342as(Object obj, boolean z) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.object = obj;
                uItemOfFactory.red = z;
                return uItemOfFactory;
            }
        }
    }

    private static class HeaderSortCell extends HeaderCell {
        private final LinkSpanDrawable.LinksTextView subtextView;

        public HeaderSortCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider);
            LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
            this.subtextView = linksTextView;
            linksTextView.setTextSize(1, 14.0f);
            linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
            linksTextView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader, resourcesProvider));
            linksTextView.setPadding(AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f), 0);
            addView(linksTextView, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 3 : 5) | 48, 10.0f, 14.0f, 10.0f, 0.0f));
        }

        public void set(CharSequence charSequence, CharSequence charSequence2) {
            setText(charSequence);
            this.subtextView.setText(charSequence2);
        }

        public static class Factory extends UItem.UItemFactory {
            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public boolean isClickable() {
                return false;
            }

            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public HeaderSortCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new HeaderSortCell(context, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((HeaderSortCell) view).set(uItem.text, uItem.subtext);
            }

            /* JADX INFO: renamed from: as */
            public static UItem m1343as(CharSequence charSequence, CharSequence charSequence2) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.text = charSequence;
                uItemOfFactory.subtext = charSequence2;
                return uItemOfFactory;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0484  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0563  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0609  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0629  */
    /* JADX WARN: Type inference failed for: r15v24 */
    /* JADX WARN: Type inference failed for: r15v27, types: [boolean] */
    /* JADX WARN: Type inference failed for: r15v33 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void showConnectAffiliateAlert(final Context context, final int i, final TL_payments.starRefProgram starrefprogram, final long j, final Theme.ResourcesProvider resourcesProvider, final boolean z) {
        long[] jArr;
        float f;
        String str;
        CharSequence charSequence;
        ?? r15;
        String pluralString;
        LinearLayout linearLayout;
        BackupImageView backupImageView;
        TextView textView;
        Theme.ResourcesProvider resourcesProvider2;
        if (starrefprogram == null || context == null) {
            return;
        }
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        long[] jArr2 = {j};
        final TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(starrefprogram.bot_id));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        linearLayout2.setPadding(AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(20.0f), AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(8.0f));
        linearLayout2.setClipChildren(false);
        linearLayout2.setClipToPadding(false);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setClipToPadding(false);
        frameLayout.setClipChildren(false);
        FrameLayout frameLayout2 = new FrameLayout(context);
        frameLayout2.setClipToPadding(false);
        frameLayout2.setClipChildren(false);
        frameLayout.addView(frameLayout2, LayoutHelper.createFrame(60, 60.0f, 19, 0.0f, 0.0f, 0.0f, 0.0f));
        BackupImageView backupImageView2 = new BackupImageView(context);
        backupImageView2.setRoundRadius(AndroidUtilities.m1124dp(30.0f));
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setInfo(user);
        backupImageView2.setForUserOrChat(user, avatarDrawable);
        ScaleStateListAnimator.apply(backupImageView2);
        frameLayout2.addView(backupImageView2, LayoutHelper.createFrame(60, 60, 119));
        if (starrefprogram.daily_revenue_per_user.positive()) {
            FrameLayout frameLayout3 = new FrameLayout(context);
            frameLayout3.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(10.0f), Theme.getColor(Theme.key_dialogBackground, resourcesProvider)));
            frameLayout3.setPadding(AndroidUtilities.m1124dp(1.33f), AndroidUtilities.m1124dp(1.33f), AndroidUtilities.m1124dp(1.33f), AndroidUtilities.m1124dp(1.33f));
            TextView textView2 = new TextView(context);
            textView2.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(10.0f), Theme.getColor(Theme.key_color_green, resourcesProvider)));
            textView2.setTypeface(AndroidUtilities.bold());
            textView2.setTextSize(1, 10.0f);
            f = 10.0f;
            textView2.setPadding(AndroidUtilities.m1124dp(5.33f), 0, AndroidUtilities.m1124dp(5.33f), 0);
            textView2.setTextColor(-1);
            textView2.setGravity(17);
            StringBuilder sb = new StringBuilder();
            sb.append("⭐️ ");
            jArr = jArr2;
            sb.append((Object) StarsIntroActivity.formatStarsAmountShort(starrefprogram.daily_revenue_per_user, 1.0f, ','));
            textView2.setText(StarsIntroActivity.replaceStars(sb.toString(), 0.75f, new ColoredImageSpan[1]));
            frameLayout3.addView(textView2, LayoutHelper.createFrame(-2, 15.66f));
            frameLayout2.addView(frameLayout3, LayoutHelper.createFrame(-2, -2.0f, 81, 0.0f, 0.0f, 0.0f, -4.0f));
        } else {
            jArr = jArr2;
            f = 10.0f;
        }
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(C2888R.drawable.msg_arrow_avatar);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        imageView.setScaleType(scaleType);
        imageView.setTranslationX(-AndroidUtilities.m1124dp(2.0825f));
        int color = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText7, resourcesProvider);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        imageView.setColorFilter(new PorterDuffColorFilter(color, mode));
        frameLayout.addView(imageView, LayoutHelper.createFrame(36, 60.0f, 17, 60.0f, 0.0f, 60.0f, 0.0f));
        FrameLayout frameLayout4 = new FrameLayout(context);
        frameLayout4.setClipToPadding(false);
        frameLayout4.setClipChildren(false);
        frameLayout.addView(frameLayout4, LayoutHelper.createFrame(60, 60.0f, 21, 0.0f, 0.0f, 5.66f, 0.0f));
        final BackupImageView backupImageView3 = new BackupImageView(context);
        backupImageView3.setRoundRadius(AndroidUtilities.m1124dp(30.0f));
        frameLayout4.addView(backupImageView3, LayoutHelper.createFrame(60, 60, 119));
        FrameLayout frameLayout5 = new FrameLayout(context);
        int iM1124dp = AndroidUtilities.m1124dp(f);
        int i2 = Theme.key_dialogBackground;
        frameLayout5.setBackground(Theme.createRoundRectDrawable(iM1124dp, Theme.getColor(i2, resourcesProvider)));
        frameLayout5.setPadding(AndroidUtilities.m1124dp(1.33f), AndroidUtilities.m1124dp(1.33f), AndroidUtilities.m1124dp(1.33f), AndroidUtilities.m1124dp(1.33f));
        TextView textView3 = new TextView(context);
        textView3.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(f), Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider)));
        textView3.setTypeface(AndroidUtilities.bold());
        textView3.setTextSize(1, f);
        textView3.setPadding(AndroidUtilities.m1124dp(5.33f), 0, AndroidUtilities.m1124dp(5.33f), 0);
        textView3.setTextColor(-1);
        textView3.setGravity(17);
        SpannableString spannableString = new SpannableString("s " + ((Object) AffiliateProgramFragment.percents(starrefprogram.commission_permille)));
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.msg_link_1);
        coloredImageSpan.setScale(0.65f, 0.65f);
        coloredImageSpan.spaceScaleX = 0.7f;
        coloredImageSpan.translate(AndroidUtilities.m1124dp(-2.0f), AndroidUtilities.m1124dp(0.0f));
        spannableString.setSpan(coloredImageSpan, 0, 1, 33);
        textView3.setText(spannableString);
        frameLayout5.addView(textView3, LayoutHelper.createFrame(-2, 15.66f));
        frameLayout4.addView(frameLayout5, LayoutHelper.createFrame(-2, -2.0f, 81, 0.0f, 0.0f, 0.0f, -4.0f));
        linearLayout2.addView(frameLayout, LayoutHelper.createLinear(-2, -2, 1, 0, 0, 0, 0));
        TextView textView4 = new TextView(context);
        int i3 = Theme.key_windowBackgroundWhiteBlackText;
        textView4.setTextColor(Theme.getColor(i3, resourcesProvider));
        textView4.setTextSize(1, 20.0f);
        textView4.setGravity(17);
        textView4.setText(LocaleController.getString(C2888R.string.ChannelAffiliateProgramJoinTitle));
        textView4.setTypeface(AndroidUtilities.bold());
        linearLayout2.addView(textView4, LayoutHelper.createLinear(-1, -2, 0.0f, 21.0f, 0.0f, 9.0f));
        LinearLayout linearLayout3 = new LinearLayout(context);
        linearLayout3.setOrientation(0);
        int iM1124dp2 = AndroidUtilities.m1124dp(28.0f);
        int i4 = Theme.key_windowBackgroundGray;
        linearLayout3.setBackground(Theme.createRoundRectDrawable(iM1124dp2, Theme.getColor(i4, resourcesProvider)));
        TextView textView5 = new TextView(context);
        textView5.setTextSize(1, 13.0f);
        textView5.setTextColor(Theme.getColor(i3, resourcesProvider));
        textView5.setText(LocaleController.formatString(C2888R.string.ChannelAffiliateProgramJoinViewBot, DialogObject.getName(i, starrefprogram.bot_id)));
        linearLayout3.addView(textView5, LayoutHelper.createLinear(-2, -2, 16, 11, 0, 0, 0));
        ImageView imageView2 = new ImageView(context);
        imageView2.setScaleType(scaleType);
        int i5 = Theme.key_dialogTextGray3;
        imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i5, resourcesProvider), mode));
        imageView2.setImageResource(C2888R.drawable.settings_arrow);
        imageView2.setScaleX(1.2f);
        imageView2.setScaleY(1.2f);
        linearLayout3.addView(imageView2, LayoutHelper.createLinear(-2, -2, 16, 5, 0, 8, 0));
        linearLayout2.addView(linearLayout3, LayoutHelper.createLinear(-2, 28, 1, 4, 0, 4, 0));
        ScaleStateListAnimator.apply(linearLayout3);
        TextView textView6 = new TextView(context);
        textView6.setTextColor(Theme.getColor(i3, resourcesProvider));
        textView6.setTextSize(1, 14.0f);
        textView6.setGravity(17);
        NotificationCenter.listenEmojiLoading(textView6);
        SpannableString spannableString2 = new SpannableString(StarsIntroActivity.formatStarsAmountShort(starrefprogram.daily_revenue_per_user, 0.95f, ','));
        spannableString2.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableString2.length(), 33);
        textView6.setText(StarsIntroActivity.replaceStarsWithPlain(LocaleController.formatSpannable(C2888R.string.ChannelAffiliateProgramJoinRevenue, spannableString2), 0.725f));
        linearLayout2.addView(textView6, LayoutHelper.createLinear(-1, -2, 0.0f, 10.0f, 0.0f, 20.0f));
        TextView textView7 = new TextView(context);
        textView7.setTextColor(Theme.getColor(i3, resourcesProvider));
        textView7.setTextSize(1, 14.0f);
        textView7.setGravity(17);
        NotificationCenter.listenEmojiLoading(textView7);
        int i6 = C2888R.string.ChannelAffiliateProgramJoinText;
        String userName = UserObject.getUserName(user);
        CharSequence charSequencePercents = AffiliateProgramFragment.percents(starrefprogram.commission_permille);
        int i7 = starrefprogram.duration_months;
        if (i7 <= 0) {
            pluralString = LocaleController.getString(C2888R.string.ChannelAffiliateProgramJoinText_Lifetime);
            str = userName;
        } else {
            if (i7 < 12 || i7 % 12 != 0) {
                str = userName;
                charSequence = charSequencePercents;
                r15 = 0;
                pluralString = LocaleController.formatPluralString("ChannelAffiliateProgramJoinText_Months", i7, new Object[0]);
                Object[] objArr = new Object[3];
                objArr[r15] = str;
                objArr[1] = charSequence;
                objArr[2] = pluralString;
                textView7.setText(Emoji.replaceEmoji(AndroidUtilities.replaceTags(LocaleController.formatString(i6, objArr)), textView7.getPaint().getFontMetricsInt(), r15));
                linearLayout2.addView(textView7, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 22.0f));
                if (j < 0) {
                    TextView textView8 = new TextView(context);
                    textView8.setTextColor(Theme.getColor(i3, resourcesProvider));
                    textView8.setTextSize(1, 14.0f);
                    textView8.setGravity(17);
                    textView8.setText(LocaleController.getString(C2888R.string.ChannelAffiliateProgramLinkSendTo));
                    linearLayout2.addView(textView8, LayoutHelper.createLinear(-1, -2, 20.0f, 0.0f, 20.0f, 0.0f));
                    LinearLayout linearLayout4 = new LinearLayout(context);
                    linearLayout4.setOrientation(0);
                    linearLayout4.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(28.0f), Theme.getColor(i4, resourcesProvider)));
                    linearLayout4.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(28.0f), Theme.getColor(i4, resourcesProvider), Theme.blendOver(Theme.getColor(i4, resourcesProvider), Theme.getColor(Theme.key_listSelector, resourcesProvider))));
                    BackupImageView backupImageView4 = new BackupImageView(context);
                    backupImageView4.setRoundRadius(AndroidUtilities.m1124dp(14.0f));
                    linearLayout4.addView(backupImageView4, LayoutHelper.createLinear(28, 28));
                    TextView textView9 = new TextView(context);
                    textView9.setTextSize(1, 13.0f);
                    textView9.setTextColor(Theme.getColor(i3, resourcesProvider));
                    linearLayout4.addView(textView9, LayoutHelper.createLinear(-2, -2, 16, 6, 0, 0, 0));
                    ImageView imageView3 = new ImageView(context);
                    imageView3.setScaleType(scaleType);
                    imageView3.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i5, resourcesProvider), mode));
                    imageView3.setImageResource(C2888R.drawable.arrows_select);
                    linearLayout4.addView(imageView3, LayoutHelper.createLinear(-2, -2, 16, 2, 0, 5, 0));
                    linearLayout2.addView(linearLayout4, LayoutHelper.createLinear(-2, 28, 1, 0, 11, 0, 20));
                    linearLayout = linearLayout4;
                    backupImageView = backupImageView4;
                    textView = textView9;
                } else {
                    linearLayout = null;
                    backupImageView = null;
                    textView = null;
                }
                final ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
                buttonWithCounterView.setText(LocaleController.getString(C2888R.string.ChannelAffiliateProgramJoinButton), false);
                linearLayout2.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48));
                LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
                linksTextView.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.ChannelAffiliateProgramJoinButtonInfo), new Runnable() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        Browser.openUrl(context, LocaleController.getString(C2888R.string.ChannelAffiliateProgramJoinButtonInfoLink));
                    }
                }));
                linksTextView.setGravity(17);
                linksTextView.setTextSize(1, 12.0f);
                linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4, resourcesProvider));
                linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
                linearLayout2.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 49, 14, 14, 14, 6));
                builder.setCustomView(linearLayout2);
                final BottomSheet bottomSheetCreate = builder.create();
                backupImageView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ChannelAffiliateProgramsFragment.$r8$lambda$u08yvmq6eYP6ESO54NvUTqSJEm0(bottomSheetCreate, starrefprogram, view);
                    }
                });
                final long[] jArr3 = jArr;
                buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda15
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ChannelAffiliateProgramsFragment.m20673$r8$lambda$XpRUTWcD8Qf60LYRYKywfdbQTg(buttonWithCounterView, jArr3, i, starrefprogram, bottomSheetCreate, j, z, context, resourcesProvider, user, view);
                    }
                });
                bottomSheetCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda16
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        ChannelAffiliateProgramsFragment.$r8$lambda$s5dd51qpgOmxoxkAzPDs_oY_Tx4(dialogInterface);
                    }
                });
                final BackupImageView backupImageView5 = backupImageView;
                final TextView textView10 = textView;
                final long[] jArr4 = jArr;
                final Runnable runnable = new Runnable() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda17
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChannelAffiliateProgramsFragment.$r8$lambda$rHlQjS6rQzJZVWBe1x1qEJrZ2KM(jArr4, i, backupImageView3, backupImageView5, textView10);
                    }
                };
                runnable.run();
                if (linearLayout == null) {
                    BotStarsController.getInstance(i).loadAdminedBots();
                    BotStarsController.getInstance(i).loadAdminedChannels();
                    final LinearLayout linearLayout5 = linearLayout;
                    final long[] jArr5 = jArr;
                    resourcesProvider2 = resourcesProvider;
                    linearLayout5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda18
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ChannelAffiliateProgramsFragment.m20672$r8$lambda$XgA49I2JQGHCeLKN4jezb1aQ(i, bottomSheetCreate, resourcesProvider, linearLayout5, jArr5, runnable, view);
                        }
                    });
                } else {
                    resourcesProvider2 = resourcesProvider;
                }
                linearLayout3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda19
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ChannelAffiliateProgramsFragment.$r8$lambda$RSMiA0pDgQwFzQxvPORVXXWPlFw(bottomSheetCreate, starrefprogram, view);
                    }
                });
                bottomSheetCreate.fixNavigationBar(Theme.getColor(i2, resourcesProvider2));
                bottomSheetCreate.show();
            }
            str = userName;
            pluralString = LocaleController.formatPluralString("ChannelAffiliateProgramJoinText_Years", i7 / 12, new Object[0]);
        }
        charSequence = charSequencePercents;
        r15 = 0;
        Object[] objArr2 = new Object[3];
        objArr2[r15] = str;
        objArr2[1] = charSequence;
        objArr2[2] = pluralString;
        textView7.setText(Emoji.replaceEmoji(AndroidUtilities.replaceTags(LocaleController.formatString(i6, objArr2)), textView7.getPaint().getFontMetricsInt(), r15));
        linearLayout2.addView(textView7, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 22.0f));
        if (j < 0) {
        }
        final ButtonWithCounterView buttonWithCounterView2 = new ButtonWithCounterView(context, resourcesProvider);
        buttonWithCounterView2.setText(LocaleController.getString(C2888R.string.ChannelAffiliateProgramJoinButton), false);
        linearLayout2.addView(buttonWithCounterView2, LayoutHelper.createLinear(-1, 48));
        LinkSpanDrawable.LinksTextView linksTextView2 = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
        linksTextView2.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.ChannelAffiliateProgramJoinButtonInfo), new Runnable() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                Browser.openUrl(context, LocaleController.getString(C2888R.string.ChannelAffiliateProgramJoinButtonInfoLink));
            }
        }));
        linksTextView2.setGravity(17);
        linksTextView2.setTextSize(1, 12.0f);
        linksTextView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4, resourcesProvider));
        linksTextView2.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
        linearLayout2.addView(linksTextView2, LayoutHelper.createLinear(-1, -2, 49, 14, 14, 14, 6));
        builder.setCustomView(linearLayout2);
        final BottomSheet bottomSheetCreate2 = builder.create();
        backupImageView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChannelAffiliateProgramsFragment.$r8$lambda$u08yvmq6eYP6ESO54NvUTqSJEm0(bottomSheetCreate2, starrefprogram, view);
            }
        });
        final long[] jArr32 = jArr;
        buttonWithCounterView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChannelAffiliateProgramsFragment.m20673$r8$lambda$XpRUTWcD8Qf60LYRYKywfdbQTg(buttonWithCounterView2, jArr32, i, starrefprogram, bottomSheetCreate2, j, z, context, resourcesProvider, user, view);
            }
        });
        bottomSheetCreate2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda16
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ChannelAffiliateProgramsFragment.$r8$lambda$s5dd51qpgOmxoxkAzPDs_oY_Tx4(dialogInterface);
            }
        });
        final BackupImageView backupImageView52 = backupImageView;
        final TextView textView102 = textView;
        final long[] jArr42 = jArr;
        final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                ChannelAffiliateProgramsFragment.$r8$lambda$rHlQjS6rQzJZVWBe1x1qEJrZ2KM(jArr42, i, backupImageView3, backupImageView52, textView102);
            }
        };
        runnable2.run();
        if (linearLayout == null) {
        }
        linearLayout3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda19
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChannelAffiliateProgramsFragment.$r8$lambda$RSMiA0pDgQwFzQxvPORVXXWPlFw(bottomSheetCreate2, starrefprogram, view);
            }
        });
        bottomSheetCreate2.fixNavigationBar(Theme.getColor(i2, resourcesProvider2));
        bottomSheetCreate2.show();
    }

    public static /* synthetic */ void $r8$lambda$u08yvmq6eYP6ESO54NvUTqSJEm0(BottomSheet bottomSheet, TL_payments.starRefProgram starrefprogram, View view) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            bottomSheet.lambda$new$0();
            safeLastFragment.presentFragment(ProfileActivity.m1294of(starrefprogram.bot_id));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$XpRUTWcD8Q-f60LYRYKywfdbQTg, reason: not valid java name */
    public static /* synthetic */ void m20673$r8$lambda$XpRUTWcD8Qf60LYRYKywfdbQTg(final ButtonWithCounterView buttonWithCounterView, long[] jArr, final int i, final TL_payments.starRefProgram starrefprogram, final BottomSheet bottomSheet, final long j, final boolean z, final Context context, final Theme.ResourcesProvider resourcesProvider, final TLRPC.User user, View view) {
        if (buttonWithCounterView.isLoading()) {
            return;
        }
        buttonWithCounterView.setLoading(true);
        final long j2 = jArr[0];
        TL_payments.connectStarRefBot connectstarrefbot = new TL_payments.connectStarRefBot();
        connectstarrefbot.bot = MessagesController.getInstance(i).getInputUser(starrefprogram.bot_id);
        connectstarrefbot.peer = MessagesController.getInstance(i).getInputPeer(j2);
        ConnectionsManager.getInstance(i).sendRequest(connectstarrefbot, new RequestDelegate() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda20
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda28
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChannelAffiliateProgramsFragment.$r8$lambda$LRr52sRYPPx8YPyfkS8PVzQPZoY(buttonWithCounterView, tLObject, i, j, bottomSheet, starrefprogram, j, z, context, resourcesProvider, user, tL_error);
                    }
                });
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$LRr52sRYPPx8YPyfkS8PVzQPZoY(ButtonWithCounterView buttonWithCounterView, TLObject tLObject, int i, long j, BottomSheet bottomSheet, TL_payments.starRefProgram starrefprogram, long j2, boolean z, Context context, Theme.ResourcesProvider resourcesProvider, TLRPC.User user, TLRPC.TL_error tL_error) {
        TL_payments.connectedBotStarRef connectedbotstarref;
        BaseFragment safeLastFragment;
        int i2 = 0;
        buttonWithCounterView.setLoading(false);
        if (!(tLObject instanceof TL_payments.connectedStarRefBots)) {
            if (tL_error != null) {
                BulletinFactory.m1245of(bottomSheet.topBulletinContainer, resourcesProvider).showForError(tL_error);
                return;
            }
            return;
        }
        TL_payments.connectedStarRefBots connectedstarrefbots = (TL_payments.connectedStarRefBots) tLObject;
        BotStarsController.getInstance(i).getChannelConnectedBots(j).apply(connectedstarrefbots);
        bottomSheet.lambda$new$0();
        while (true) {
            if (i2 >= connectedstarrefbots.connected_bots.size()) {
                connectedbotstarref = null;
                break;
            }
            connectedbotstarref = connectedstarrefbots.connected_bots.get(i2);
            if (connectedbotstarref.bot_id == starrefprogram.bot_id) {
                break;
            } else {
                i2++;
            }
        }
        TL_payments.connectedBotStarRef connectedbotstarref2 = connectedbotstarref;
        if ((j2 != j || z) && (safeLastFragment = LaunchActivity.getSafeLastFragment()) != null && (!(safeLastFragment instanceof ChannelAffiliateProgramsFragment) || ((ChannelAffiliateProgramsFragment) safeLastFragment).dialogId != j)) {
            safeLastFragment.presentFragment(new ChannelAffiliateProgramsFragment(j));
        }
        if (connectedbotstarref2 != null) {
            BotStarsController.getInstance(i).getChannelSuggestedBots(j).remove(connectedbotstarref2.bot_id);
            BulletinFactory.m1245of(showShareAffiliateAlert(context, i, connectedbotstarref2, j, resourcesProvider).topBulletinContainer, resourcesProvider).createUsersBulletin(user, LocaleController.getString(C2888R.string.AffiliateProgramJoinedTitle), LocaleController.getString(C2888R.string.AffiliateProgramJoinedText)).show();
        }
    }

    public static /* synthetic */ void $r8$lambda$rHlQjS6rQzJZVWBe1x1qEJrZ2KM(long[] jArr, int i, BackupImageView backupImageView, BackupImageView backupImageView2, TextView textView) {
        if (jArr[0] >= 0) {
            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(jArr[0]));
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setInfo(user);
            backupImageView.setForUserOrChat(user, avatarDrawable);
        } else {
            TLRPC.Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-jArr[0]));
            AvatarDrawable avatarDrawable2 = new AvatarDrawable();
            avatarDrawable2.setInfo(chat);
            backupImageView.setForUserOrChat(chat, avatarDrawable2);
        }
        if (jArr[0] >= 0) {
            TLRPC.User user2 = MessagesController.getInstance(i).getUser(Long.valueOf(jArr[0]));
            if (backupImageView2 != null) {
                AvatarDrawable avatarDrawable3 = new AvatarDrawable();
                avatarDrawable3.setInfo(user2);
                backupImageView2.setForUserOrChat(user2, avatarDrawable3);
            }
            if (textView != null) {
                textView.setText(UserObject.getUserName(user2));
                return;
            }
            return;
        }
        TLRPC.Chat chat2 = MessagesController.getInstance(i).getChat(Long.valueOf(-jArr[0]));
        if (backupImageView2 != null) {
            AvatarDrawable avatarDrawable4 = new AvatarDrawable();
            avatarDrawable4.setInfo(chat2);
            backupImageView2.setForUserOrChat(chat2, avatarDrawable4);
        }
        if (textView != null) {
            textView.setText(chat2 == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat2.title);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$XgA49I2JQGHCeLKN--4jezb1a-Q, reason: not valid java name */
    public static /* synthetic */ void m20672$r8$lambda$XgA49I2JQGHCeLKN4jezb1aQ(int i, BottomSheet bottomSheet, Theme.ResourcesProvider resourcesProvider, View view, final long[] jArr, final Runnable runnable, View view2) {
        final long j;
        ArrayList admined = BotStarsController.getInstance(i).getAdmined();
        admined.add(0, UserConfig.getInstance(i).getCurrentUser());
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(bottomSheet.getContainerView(), resourcesProvider, view);
        int size = admined.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = admined.get(i2);
            i2++;
            TLObject tLObject = (TLObject) obj;
            if (tLObject instanceof TLRPC.User) {
                j = ((TLRPC.User) tLObject).f1825id;
            } else if (tLObject instanceof TLRPC.Chat) {
                TLRPC.Chat chat = (TLRPC.Chat) tLObject;
                if (ChatObject.isChannelAndNotMegaGroup(chat)) {
                    j = -chat.f1660id;
                }
            }
            itemOptionsMakeOptions.addChat(tLObject, j == jArr[0], new Runnable() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    ChannelAffiliateProgramsFragment.m20676$r8$lambda$myZWo4kuTQPqu_UZiRZ7NiFhCg(jArr, j, runnable);
                }
            });
        }
        itemOptionsMakeOptions.setDrawScrim(false).setDimAlpha(0).setGravity(5).translate(AndroidUtilities.m1124dp(24.0f), 0.0f).show();
    }

    /* JADX INFO: renamed from: $r8$lambda$myZWo4kuTQPqu_UZ-iRZ7NiFhCg, reason: not valid java name */
    public static /* synthetic */ void m20676$r8$lambda$myZWo4kuTQPqu_UZiRZ7NiFhCg(long[] jArr, long j, Runnable runnable) {
        jArr[0] = j;
        runnable.run();
    }

    public static /* synthetic */ void $r8$lambda$RSMiA0pDgQwFzQxvPORVXXWPlFw(final BottomSheet bottomSheet, TL_payments.starRefProgram starrefprogram, View view) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            bottomSheet.lambda$new$0();
            Bundle bundle = new Bundle();
            bundle.putLong("user_id", starrefprogram.bot_id);
            safeLastFragment.presentFragment(new ChatActivity(bundle) { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment.6
                @Override // org.telegram.p029ui.ChatActivity, org.telegram.p029ui.ActionBar.BaseFragment
                public void onFragmentDestroy() {
                    super.onFragmentDestroy();
                    bottomSheet.makeAttached(null);
                    bottomSheet.show();
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View, android.view.ViewGroup, android.widget.FrameLayout] */
    /* JADX WARN: Type inference failed for: r11v25, types: [android.view.View, android.view.ViewGroup, android.widget.FrameLayout] */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r3v14, types: [org.telegram.ui.ActionBar.BottomSheet$Builder] */
    /* JADX WARN: Type inference failed for: r4v1, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r5v45, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r7v42, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r9v2, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    public static BottomSheet showShareAffiliateAlert(final Context context, final int i, final TL_payments.connectedBotStarRef connectedbotstarref, final long j, Theme.ResourcesProvider resourcesProvider) {
        BottomSheet.Builder builder;
        LinearLayout linearLayout;
        String str;
        char c;
        String pluralString;
        int i2;
        char c2;
        String pluralString2;
        final TLRPC.User user;
        int i3;
        final Theme.ResourcesProvider resourcesProvider2;
        int i4;
        String pluralString3;
        final TL_payments.connectedBotStarRef connectedbotstarref2;
        final Theme.ResourcesProvider resourcesProvider3;
        if (connectedbotstarref == null || context == null) {
            return null;
        }
        BottomSheet.Builder builder2 = new BottomSheet.Builder(context, false, resourcesProvider);
        TLRPC.User user2 = MessagesController.getInstance(i).getUser(Long.valueOf(connectedbotstarref.bot_id));
        ?? linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        ?? r17 = 0;
        linearLayout2.setPadding(AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(20.0f), AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(8.0f));
        linearLayout2.setClipChildren(false);
        linearLayout2.setClipToPadding(false);
        ?? frameLayout = new FrameLayout(context);
        View view = new View(context);
        view.setBackground(Theme.createCircleDrawable(AndroidUtilities.m1124dp(40.0f), Theme.getColor(connectedbotstarref.revoked ? Theme.key_color_red : Theme.key_featuredStickers_addButton, resourcesProvider)));
        frameLayout.addView(view, LayoutHelper.createFrame(80, 80.0f, 49, 0.0f, 0.0f, 0.0f, 0.0f));
        ImageView imageView = new ImageView(context);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        imageView.setScaleType(scaleType);
        imageView.setImageResource(connectedbotstarref.revoked ? C2888R.drawable.msg_link_2 : C2888R.drawable.msg_limit_links);
        imageView.setScaleX(connectedbotstarref.revoked ? 2.0f : 1.8f);
        imageView.setScaleY(connectedbotstarref.revoked ? 2.0f : 1.8f);
        frameLayout.addView(imageView, LayoutHelper.createFrame(80, 80.0f, 49, 0.0f, 0.0f, 0.0f, 0.0f));
        if (connectedbotstarref.participants > 0) {
            ?? frameLayout2 = new FrameLayout(context);
            frameLayout2.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(50.0f), Theme.getColor(Theme.key_dialogBackground, resourcesProvider)));
            frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-2, -2.0f, 49, 0.0f, 66.0f, 0.0f, 0.0f));
            ?? textView = new TextView(context);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setTextSize(1, 12.0f);
            textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(9.5f), Theme.getColor(connectedbotstarref.revoked ? Theme.key_color_red : Theme.key_color_green, resourcesProvider)));
            textView.setTextColor(-1);
            textView.setPadding(AndroidUtilities.m1124dp(6.66f), 0, AndroidUtilities.m1124dp(6.66f), 0);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) "s ");
            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.mini_reply_user);
            coloredImageSpan.setScale(0.937f, 0.937f);
            coloredImageSpan.translate(-AndroidUtilities.m1124dp(1.33f), AndroidUtilities.m1124dp(1.0f));
            coloredImageSpan.spaceScaleX = 0.8f;
            builder = builder2;
            spannableStringBuilder.setSpan(coloredImageSpan, 0, 1, 33);
            spannableStringBuilder.append((CharSequence) String.valueOf(connectedbotstarref.participants));
            textView.setText(spannableStringBuilder);
            textView.setGravity(17);
            frameLayout2.addView(textView, LayoutHelper.createFrame(-1, 19.0f, 119, 1.33f, 1.33f, 1.33f, 1.33f));
        } else {
            builder = builder2;
        }
        linearLayout2.addView(frameLayout, LayoutHelper.createLinear(-2, -2, 1, 0, 0, 0, 0));
        TextView textView2 = new TextView(context);
        int i5 = Theme.key_windowBackgroundWhiteBlackText;
        textView2.setTextColor(Theme.getColor(i5, resourcesProvider));
        textView2.setTextSize(1, 20.0f);
        textView2.setGravity(17);
        textView2.setText(LocaleController.getString(C2888R.string.ChannelAffiliateProgramLinkTitle));
        textView2.setTypeface(AndroidUtilities.bold());
        linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2, 20.0f, 16.0f, 20.0f, 9.33f));
        LinearLayout linearLayout3 = new LinearLayout(context);
        linearLayout3.setOrientation(0);
        int iM1124dp = AndroidUtilities.m1124dp(28.0f);
        int i6 = Theme.key_windowBackgroundGray;
        linearLayout3.setBackground(Theme.createRoundRectDrawable(iM1124dp, Theme.getColor(i6, resourcesProvider)));
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setRoundRadius(AndroidUtilities.m1124dp(14.0f));
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        linearLayout3.addView(backupImageView, LayoutHelper.createLinear(28, 28));
        TextView textView3 = new TextView(context);
        textView3.setTextSize(1, 13.0f);
        textView3.setTextColor(Theme.getColor(i5, resourcesProvider));
        textView3.setText(DialogObject.getName(i, connectedbotstarref.bot_id));
        avatarDrawable.setInfo(user2);
        backupImageView.setForUserOrChat(user2, avatarDrawable);
        linearLayout3.addView(textView3, LayoutHelper.createLinear(-2, -2, 16, 6, 0, 0, 0));
        ImageView imageView2 = new ImageView(context);
        imageView2.setScaleType(scaleType);
        int i7 = Theme.key_dialogTextGray3;
        int color = Theme.getColor(i7, resourcesProvider);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        imageView2.setColorFilter(new PorterDuffColorFilter(color, mode));
        imageView2.setImageResource(C2888R.drawable.settings_arrow);
        imageView2.setScaleX(1.2f);
        imageView2.setScaleY(1.2f);
        linearLayout3.addView(imageView2, LayoutHelper.createLinear(-2, -2, 16, 5, 0, 8, 0));
        linearLayout2.addView(linearLayout3, LayoutHelper.createLinear(-2, 28, 1, 4, 0, 4, 0));
        ScaleStateListAnimator.apply(linearLayout3);
        TextView textView4 = new TextView(context);
        textView4.setTextColor(Theme.getColor(i5, resourcesProvider));
        textView4.setTextSize(1, 14.0f);
        textView4.setGravity(17);
        if (connectedbotstarref.revoked) {
            textView4.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ChannelAffiliateProgramLinkTextRevoked)));
            linearLayout = linearLayout3;
        } else if (j < 0) {
            int i8 = C2888R.string.ChannelAffiliateProgramLinkTextChannel;
            CharSequence charSequencePercents = AffiliateProgramFragment.percents(connectedbotstarref.commission_permille);
            String userName = UserObject.getUserName(user2);
            int i9 = connectedbotstarref.duration_months;
            if (i9 <= 0) {
                pluralString2 = LocaleController.getString(C2888R.string.ChannelAffiliateProgramJoinText_Lifetime);
                linearLayout = linearLayout3;
                c2 = 0;
            } else {
                linearLayout = linearLayout3;
                if (i9 < 12 || i9 % 12 != 0) {
                    c2 = 0;
                    pluralString2 = LocaleController.formatPluralString("ChannelAffiliateProgramJoinText_Months", i9, new Object[0]);
                } else {
                    c2 = 0;
                    pluralString2 = LocaleController.formatPluralString("ChannelAffiliateProgramJoinText_Years", i9 / 12, new Object[0]);
                }
            }
            Object[] objArr = new Object[3];
            objArr[c2] = charSequencePercents;
            objArr[1] = userName;
            objArr[2] = pluralString2;
            textView4.setText(AndroidUtilities.replaceTags(LocaleController.formatString(i8, objArr)));
        } else {
            linearLayout = linearLayout3;
            int i10 = C2888R.string.ChannelAffiliateProgramLinkTextUser;
            CharSequence charSequencePercents2 = AffiliateProgramFragment.percents(connectedbotstarref.commission_permille);
            String userName2 = UserObject.getUserName(user2);
            int i11 = connectedbotstarref.duration_months;
            if (i11 <= 0) {
                pluralString = LocaleController.getString(C2888R.string.ChannelAffiliateProgramJoinText_Lifetime);
                str = userName2;
                i2 = 3;
                c = 0;
            } else {
                str = userName2;
                if (i11 < 12 || i11 % 12 != 0) {
                    c = 0;
                    pluralString = LocaleController.formatPluralString("ChannelAffiliateProgramJoinText_Months", i11, new Object[0]);
                } else {
                    c = 0;
                    pluralString = LocaleController.formatPluralString("ChannelAffiliateProgramJoinText_Years", i11 / 12, new Object[0]);
                }
                i2 = 3;
            }
            Object[] objArr2 = new Object[i2];
            objArr2[c] = charSequencePercents2;
            objArr2[1] = str;
            objArr2[2] = pluralString;
            textView4.setText(AndroidUtilities.replaceTags(LocaleController.formatString(i10, objArr2)));
        }
        linearLayout2.addView(textView4, LayoutHelper.createLinear(-1, -2, 20.0f, 19.0f, 20.0f, 18.0f));
        if (connectedbotstarref.revoked) {
            user = user2;
            i3 = i5;
            resourcesProvider2 = resourcesProvider;
        } else {
            TextView textView5 = new TextView(context);
            textView5.setTextColor(Theme.getColor(i5, resourcesProvider));
            textView5.setTextSize(1, 14.0f);
            textView5.setGravity(17);
            textView5.setText(LocaleController.getString(C2888R.string.ChannelAffiliateProgramLinkSendTo));
            linearLayout2.addView(textView5, LayoutHelper.createLinear(-1, -2, 20.0f, 0.0f, 20.0f, 0.0f));
            ?? linearLayout4 = new LinearLayout(context);
            linearLayout4.setOrientation(0);
            linearLayout4.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(28.0f), Theme.getColor(i6, resourcesProvider)));
            BackupImageView backupImageView2 = new BackupImageView(context);
            backupImageView2.setRoundRadius(AndroidUtilities.m1124dp(14.0f));
            AvatarDrawable avatarDrawable2 = new AvatarDrawable();
            linearLayout4.addView(backupImageView2, LayoutHelper.createLinear(28, 28));
            TextView textView6 = new TextView(context);
            textView6.setTextSize(1, 13.0f);
            textView6.setTextColor(Theme.getColor(i5, resourcesProvider));
            if (j >= 0) {
                TLRPC.User user3 = MessagesController.getInstance(i).getUser(Long.valueOf(j));
                avatarDrawable2.setInfo(user3);
                backupImageView2.setForUserOrChat(user3, avatarDrawable2);
                textView6.setText(UserObject.getUserName(user3));
                user = user2;
                i3 = i5;
            } else {
                user = user2;
                i3 = i5;
                TLRPC.Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-j));
                avatarDrawable2.setInfo(chat);
                backupImageView2.setForUserOrChat(chat, avatarDrawable2);
                textView6.setText(chat == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat.title);
            }
            linearLayout4.addView(textView6, LayoutHelper.createLinear(-2, -2, 16, 6, 0, 0, 0));
            ImageView imageView3 = new ImageView(context);
            imageView3.setScaleType(scaleType);
            resourcesProvider2 = resourcesProvider;
            imageView3.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i7, resourcesProvider2), mode));
            imageView3.setImageResource(C2888R.drawable.arrows_select);
            linearLayout4.addView(imageView3, LayoutHelper.createLinear(-2, -2, 16, 2, 0, 5, 0));
            linearLayout2.addView(linearLayout4, LayoutHelper.createLinear(-2, 28, 1, 0, 9, 0, 22));
            r17 = linearLayout4;
        }
        TextView textView7 = new TextView(context);
        textView7.setTextSize(1, 16.0f);
        textView7.setGravity(17);
        textView7.setTextColor(Theme.getColor(i3, resourcesProvider2));
        textView7.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(8.0f), Theme.getColor(i6, resourcesProvider2), Theme.blendOver(Theme.getColor(i6, resourcesProvider2), Theme.getColor(Theme.key_listSelector, resourcesProvider2))));
        textView7.setPadding(AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(14.66f), AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(14.66f));
        String str2 = connectedbotstarref.url;
        textView7.setText((str2 == null || !str2.startsWith("https://")) ? connectedbotstarref.url : connectedbotstarref.url.substring(8));
        linearLayout2.addView(textView7, LayoutHelper.createFrame(-1, -2.0f, 7, 0.0f, 0.0f, 0.0f, 12.0f));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider2);
        if (!connectedbotstarref.revoked) {
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
            spannableStringBuilder2.append((CharSequence) "c ");
            spannableStringBuilder2.setSpan(new ColoredImageSpan(C2888R.drawable.msg_copy_filled), 0, 1, 33);
            spannableStringBuilder2.append((CharSequence) LocaleController.getString(C2888R.string.ChannelAffiliateProgramLinkCopy));
            buttonWithCounterView.setText(spannableStringBuilder2, false);
        } else {
            buttonWithCounterView.setText(LocaleController.getString(C2888R.string.ChannelAffiliateProgramLinkRejoin), false);
        }
        linearLayout2.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48));
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider2);
        long j2 = connectedbotstarref.participants;
        if (j2 <= 0) {
            i4 = 1;
            pluralString3 = LocaleController.formatString(C2888R.string.ChannelAffiliateProgramLinkOpenedNone, UserObject.getUserName(user));
        } else {
            i4 = 1;
            pluralString3 = LocaleController.formatPluralString("ChannelAffiliateProgramLinkOpened", (int) j2, UserObject.getUserName(user));
        }
        linksTextView.setText(pluralString3);
        linksTextView.setGravity(17);
        linksTextView.setTextSize(i4, 12.0f);
        linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4, resourcesProvider2));
        linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider2));
        linearLayout2.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 49, 14, 12, 14, 2));
        ?? r3 = builder;
        r3.setCustomView(linearLayout2);
        final BottomSheet bottomSheetCreate = r3.create();
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ChannelAffiliateProgramsFragment.$r8$lambda$SMHHNYwLqpSUSV1onZnaUGrpXFo(connectedbotstarref, bottomSheetCreate, resourcesProvider2, user);
            }
        };
        if (!connectedbotstarref.revoked) {
            textView7.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    runnable.run();
                }
            });
        }
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ChannelAffiliateProgramsFragment.$r8$lambda$tpdveAv7H9ApMIxMHVHQz7ezBY4(connectedbotstarref, i, bottomSheetCreate, context, j, resourcesProvider2, runnable, view2);
            }
        });
        bottomSheetCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda6
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ChannelAffiliateProgramsFragment.$r8$lambda$IcNRNxpxS4fjkN6ISX9CYpyMFyg(dialogInterface);
            }
        });
        if (r17 != 0) {
            BotStarsController.getInstance(i).loadAdminedBots();
            BotStarsController.getInstance(i).loadAdminedChannels();
            resourcesProvider3 = resourcesProvider;
            final ?? r4 = r17;
            connectedbotstarref2 = connectedbotstarref;
            r4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ChannelAffiliateProgramsFragment.m20677$r8$lambda$rkFAKYigEpM2vOin2Pe0z1jB8Q(i, bottomSheetCreate, resourcesProvider3, r4, j, context, connectedbotstarref, view2);
                }
            });
        } else {
            connectedbotstarref2 = connectedbotstarref;
            resourcesProvider3 = resourcesProvider;
        }
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ChannelAffiliateProgramsFragment.m20668$r8$lambda$DA_jYfNNWEocIbgyGZeSJnRhK8(bottomSheetCreate, connectedbotstarref2, view2);
            }
        });
        bottomSheetCreate.fixNavigationBar(Theme.getColor(Theme.key_dialogBackground, resourcesProvider3));
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (!AndroidUtilities.isTablet() && safeLastFragment != null && !AndroidUtilities.hasDialogOnTop(safeLastFragment)) {
            bottomSheetCreate.makeAttached(safeLastFragment);
        }
        bottomSheetCreate.show();
        return bottomSheetCreate;
    }

    public static /* synthetic */ void $r8$lambda$SMHHNYwLqpSUSV1onZnaUGrpXFo(TL_payments.connectedBotStarRef connectedbotstarref, BottomSheet bottomSheet, Theme.ResourcesProvider resourcesProvider, TLRPC.User user) {
        AndroidUtilities.addToClipboard(connectedbotstarref.url);
        BulletinFactory.m1245of(bottomSheet.topBulletinContainer, resourcesProvider).createSimpleBulletin(C2888R.raw.copy, LocaleController.getString(C2888R.string.AffiliateProgramLinkCopiedTitle), AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.AffiliateProgramLinkCopiedText, AffiliateProgramFragment.percents(connectedbotstarref.commission_permille), UserObject.getUserName(user)))).show();
    }

    public static /* synthetic */ void $r8$lambda$tpdveAv7H9ApMIxMHVHQz7ezBY4(TL_payments.connectedBotStarRef connectedbotstarref, final int i, final BottomSheet bottomSheet, final Context context, final long j, final Theme.ResourcesProvider resourcesProvider, Runnable runnable, View view) {
        if (connectedbotstarref.revoked) {
            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(connectedbotstarref.bot_id));
            if (user != null) {
                MessagesController.getInstance(i).loadFullUser(user, 0, true, new Utilities.Callback() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda24
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda26
                            @Override // java.lang.Runnable
                            public final void run() {
                                ChannelAffiliateProgramsFragment.m20669$r8$lambda$GfWtO3GPRLf2Utb4HcFxHVUeXo(userFull, bottomSheet, context, i, j, resourcesProvider);
                            }
                        });
                    }
                });
                return;
            }
            return;
        }
        runnable.run();
    }

    /* JADX INFO: renamed from: $r8$lambda$GfWtO3GP-RLf2Utb4HcFxHVUeXo, reason: not valid java name */
    public static /* synthetic */ void m20669$r8$lambda$GfWtO3GPRLf2Utb4HcFxHVUeXo(TLRPC.UserFull userFull, BottomSheet bottomSheet, Context context, int i, long j, Theme.ResourcesProvider resourcesProvider) {
        if (userFull == null || userFull.starref_program == null) {
            return;
        }
        bottomSheet.lambda$new$0();
        showConnectAffiliateAlert(context, i, userFull.starref_program, j, resourcesProvider, true);
    }

    /* JADX INFO: renamed from: $r8$lambda$rkFAKY-igEpM2vOin2Pe0z1jB8Q, reason: not valid java name */
    public static /* synthetic */ void m20677$r8$lambda$rkFAKYigEpM2vOin2Pe0z1jB8Q(final int i, final BottomSheet bottomSheet, Theme.ResourcesProvider resourcesProvider, View view, long j, final Context context, final TL_payments.connectedBotStarRef connectedbotstarref, View view2) {
        long j2;
        ArrayList admined = BotStarsController.getInstance(i).getAdmined();
        admined.add(0, UserConfig.getInstance(i).getCurrentUser());
        final Theme.ResourcesProvider resourcesProvider2 = resourcesProvider;
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(bottomSheet.getContainerView(), resourcesProvider2, view);
        int size = admined.size();
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 + 1;
            TLObject tLObject = (TLObject) admined.get(i2);
            if (tLObject instanceof TLRPC.User) {
                j2 = ((TLRPC.User) tLObject).f1825id;
            } else {
                if (tLObject instanceof TLRPC.Chat) {
                    TLRPC.Chat chat = (TLRPC.Chat) tLObject;
                    if (ChatObject.isChannelAndNotMegaGroup(chat)) {
                        j2 = -chat.f1660id;
                    }
                } else {
                    resourcesProvider2 = resourcesProvider;
                }
                i2 = i3;
            }
            final long j3 = j2;
            itemOptionsMakeOptions.addChat(tLObject, j3 == j, new Runnable() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    int i4 = i;
                    Context context2 = context;
                    long j4 = j3;
                    TL_payments.connectedBotStarRef connectedbotstarref2 = connectedbotstarref;
                    BotStarsController.getInstance(i4).getConnectedBot(context2, j4, connectedbotstarref2.bot_id, new Utilities.Callback() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda27
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            ChannelAffiliateProgramsFragment.$r8$lambda$U5M0dEYFsmK8eGou6IsN1ErQ8PI(i4, connectedbotstarref2, bottomSheet, context2, j4, resourcesProvider, (TL_payments.connectedBotStarRef) obj);
                        }
                    });
                }
            });
            resourcesProvider2 = resourcesProvider;
            i2 = i3;
        }
        itemOptionsMakeOptions.setDrawScrim(false).setDimAlpha(0).setGravity(5).translate(AndroidUtilities.m1124dp(24.0f), 0.0f).show();
    }

    public static /* synthetic */ void $r8$lambda$U5M0dEYFsmK8eGou6IsN1ErQ8PI(final int i, TL_payments.connectedBotStarRef connectedbotstarref, final BottomSheet bottomSheet, final Context context, final long j, final Theme.ResourcesProvider resourcesProvider, TL_payments.connectedBotStarRef connectedbotstarref2) {
        if (connectedbotstarref2 == null) {
            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(connectedbotstarref.bot_id));
            if (user != null) {
                MessagesController.getInstance(i).loadFullUser(user, 0, true, new Utilities.Callback() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda29
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda31
                            @Override // java.lang.Runnable
                            public final void run() {
                                ChannelAffiliateProgramsFragment.$r8$lambda$xtQBE4xrwBaD_CFWzyNr4lb7X2Y(userFull, bottomSheet, context, i, j, resourcesProvider);
                            }
                        });
                    }
                });
                return;
            }
            return;
        }
        bottomSheet.lambda$new$0();
        showShareAffiliateAlert(context, i, connectedbotstarref2, j, resourcesProvider);
    }

    public static /* synthetic */ void $r8$lambda$xtQBE4xrwBaD_CFWzyNr4lb7X2Y(TLRPC.UserFull userFull, BottomSheet bottomSheet, Context context, int i, long j, Theme.ResourcesProvider resourcesProvider) {
        if (userFull == null || userFull.starref_program == null) {
            return;
        }
        bottomSheet.lambda$new$0();
        showConnectAffiliateAlert(context, i, userFull.starref_program, j, resourcesProvider, true);
    }

    /* JADX INFO: renamed from: $r8$lambda$DA_jYfNNWEocIbgyGZeSJnRhK-8, reason: not valid java name */
    public static /* synthetic */ void m20668$r8$lambda$DA_jYfNNWEocIbgyGZeSJnRhK8(BottomSheet bottomSheet, TL_payments.connectedBotStarRef connectedbotstarref, View view) {
        bottomSheet.lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            safeLastFragment.presentFragment(ProfileActivity.m1294of(connectedbotstarref.bot_id));
        }
    }
}
