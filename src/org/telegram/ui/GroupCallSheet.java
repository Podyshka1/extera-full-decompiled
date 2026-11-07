package org.telegram.ui;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.voip.ConferenceCall;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_phone;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.AvatarsImageView;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CheckBox2;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.TextHelper;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Components.voip.VoIPHelper;
import org.telegram.ui.Stories.DarkThemeResourceProvider;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Stories.recorder.HintView2;

/* JADX INFO: loaded from: classes6.dex */
public abstract class GroupCallSheet {
    public static void show(Context context, int i, long j, String str, Browser.Progress progress) {
        TLRPC.TL_inputGroupCallSlug tL_inputGroupCallSlug = new TLRPC.TL_inputGroupCallSlug();
        tL_inputGroupCallSlug.slug = str;
        show(context, i, j, tL_inputGroupCallSlug, progress);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void show(Context context, final int i, final long j, final TLRPC.InputGroupCall inputGroupCall, final Browser.Progress progress) {
        final Context context2;
        AlertDialog alertDialog;
        ConferenceCall conferenceCall;
        LaunchActivity launchActivity;
        if (VoIPService.getSharedInstance() == null || (conferenceCall = VoIPService.getSharedInstance().conference) == null) {
            context2 = context;
        } else if (inputGroupCall instanceof TLRPC.TL_inputGroupCall) {
            TLRPC.GroupCall groupCall = conferenceCall.groupCall;
            if (groupCall == null || inputGroupCall.id != groupCall.id) {
                TLRPC.InputGroupCall inputGroupCall2 = conferenceCall.inputGroupCall;
                if (!(inputGroupCall2 instanceof TLRPC.TL_inputGroupCall) || inputGroupCall.id != inputGroupCall2.id) {
                }
            }
            context2 = context;
            launchActivity = LaunchActivity.instance;
            if (launchActivity != null) {
                GroupCallActivity.create(launchActivity, AccountInstance.getInstance(VoIPService.getSharedInstance().getAccount()), null, null, false, null);
                return;
            }
        } else {
            if (inputGroupCall instanceof TLRPC.TL_inputGroupCallSlug) {
                TLRPC.InputGroupCall inputGroupCall3 = conferenceCall.inputGroupCall;
                if ((inputGroupCall3 instanceof TLRPC.TL_inputGroupCallSlug) && TextUtils.equals(inputGroupCall3.slug, inputGroupCall.slug)) {
                    context2 = context;
                    launchActivity = LaunchActivity.instance;
                    if (launchActivity != null) {
                    }
                }
            }
            context2 = context;
        }
        if (progress == null) {
            alertDialog = new AlertDialog(context2, 3);
            alertDialog.showDelayed(300L);
        } else {
            alertDialog = null;
        }
        final AlertDialog alertDialog2 = alertDialog;
        TL_phone.getGroupCall getgroupcall = new TL_phone.getGroupCall();
        getgroupcall.call = inputGroupCall;
        getgroupcall.limit = 10;
        final int iSendRequest = ConnectionsManager.getInstance(i).sendRequest(getgroupcall, new RequestDelegate() { // from class: org.telegram.ui.GroupCallSheet$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.GroupCallSheet$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        GroupCallSheet.$r8$lambda$Akf10XNgC6J0t1JRJKCuBgnc3cI(alertDialog, progress, tLObject, i, context, j, inputGroupCall, tL_error);
                    }
                });
            }
        });
        if (progress != null) {
            progress.onCancel(new Runnable() { // from class: org.telegram.ui.GroupCallSheet$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ConnectionsManager.getInstance(i).cancelRequest(iSendRequest, true);
                }
            });
            progress.init();
        }
    }

    public static /* synthetic */ void $r8$lambda$Akf10XNgC6J0t1JRJKCuBgnc3cI(AlertDialog alertDialog, Browser.Progress progress, TLObject tLObject, int i, Context context, long j, TLRPC.InputGroupCall inputGroupCall, TLRPC.TL_error tL_error) {
        BaseFragment safeLastFragment;
        int i2;
        ConferenceCall conferenceCall;
        TLRPC.GroupCall groupCall;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        if (progress != null) {
            progress.end();
        }
        if (tLObject instanceof TL_phone.groupCall) {
            TL_phone.groupCall groupcall = (TL_phone.groupCall) tLObject;
            MessagesController.getInstance(i).putUsers(groupcall.users, false);
            MessagesController.getInstance(i).putChats(groupcall.chats, false);
            if (VoIPService.getSharedInstance() == null || (conferenceCall = VoIPService.getSharedInstance().conference) == null || (groupCall = conferenceCall.groupCall) == null || groupcall.call.id != groupCall.id) {
                i2 = i;
            } else {
                i2 = i;
                LaunchActivity launchActivity = LaunchActivity.instance;
                if (launchActivity != null) {
                    GroupCallActivity.create(launchActivity, AccountInstance.getInstance(VoIPService.getSharedInstance().getAccount()), null, null, false, null);
                    return;
                }
            }
            show(context, i2, j, inputGroupCall, groupcall.call, groupcall.participants);
            return;
        }
        if (tL_error == null || !"GROUPCALL_INVALID".equalsIgnoreCase(tL_error.text)) {
            if (tL_error == null || (safeLastFragment = LaunchActivity.getSafeLastFragment()) == null) {
                return;
            }
            BulletinFactory.of(safeLastFragment).showForError(tL_error);
            return;
        }
        BaseFragment safeLastFragment2 = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment2 != null) {
            BulletinFactory.of(safeLastFragment2).createSimpleBulletin(C2665R.raw.error, LocaleController.getString(C2665R.string.LinkIsNoActive)).show();
        }
    }

    public static void show(final Context context, final int i, final long j, final TLRPC.InputGroupCall inputGroupCall, TLRPC.GroupCall groupCall, ArrayList<TLRPC.GroupCallParticipant> arrayList) {
        DarkThemeResourceProvider darkThemeResourceProvider = new DarkThemeResourceProvider();
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, darkThemeResourceProvider);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.dp(14.0f), 0, AndroidUtilities.dp(14.0f), AndroidUtilities.dp(8.0f));
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(80.0f), Theme.getColor(Theme.key_featuredStickers_addButton, darkThemeResourceProvider)));
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(C2665R.drawable.filled_calls_users);
        frameLayout.addView(imageView, LayoutHelper.createFrame(56, 56, 17));
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(80, 80, 1, 2, 21, 2, 13));
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        LinkSpanDrawable.LinksTextView linksTextViewMakeLinkTextView = TextHelper.makeLinkTextView(context, 20.0f, i2, true, darkThemeResourceProvider);
        linksTextViewMakeLinkTextView.setText(LocaleController.getString(C2665R.string.GroupCallLinkTitle));
        linksTextViewMakeLinkTextView.setGravity(17);
        linearLayout.addView(linksTextViewMakeLinkTextView, LayoutHelper.createLinear(-1, -2, 1, 2, 0, 2, 4));
        List list = (List) arrayList.stream().map(new Function() { // from class: org.telegram.ui.GroupCallSheet$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Long.valueOf(DialogObject.getPeerDialogId(((TLRPC.GroupCallParticipant) obj).peer));
            }
        }).filter(new Predicate() { // from class: org.telegram.ui.GroupCallSheet$$ExternalSyntheticLambda4
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return GroupCallSheet.$r8$lambda$0wXRjKk4tiXvqp2xchk3q6Rg_NQ(i, j, (Long) obj);
            }
        }).collect(Collectors.toList());
        boolean zIsEmpty = list.isEmpty();
        LinkSpanDrawable.LinksTextView linksTextViewMakeLinkTextView2 = TextHelper.makeLinkTextView(context, 14.0f, i2, false, darkThemeResourceProvider);
        linksTextViewMakeLinkTextView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2665R.string.GroupCallLinkText)));
        linksTextViewMakeLinkTextView2.setGravity(17);
        linksTextViewMakeLinkTextView2.setMaxWidth(HintView2.cutInFancyHalf(linksTextViewMakeLinkTextView2.getText(), linksTextViewMakeLinkTextView2.getPaint()));
        linearLayout.addView(linksTextViewMakeLinkTextView2, LayoutHelper.createLinear(-1, -2, 1, 2, 0, 2, 23));
        if (!zIsEmpty) {
            View view = new View(context);
            view.setBackgroundColor(-14012362);
            linearLayout.addView(view, LayoutHelper.createLinear(-1, 0.66f, 7, 0, 0, 0, 0));
            AvatarsImageView avatarsImageView = new AvatarsImageView(context, false);
            avatarsImageView.setCentered(true);
            avatarsImageView.setSize(AndroidUtilities.dp(38.0f));
            int iMin = Math.min(3, list.size());
            avatarsImageView.setCount(iMin);
            for (int i3 = 0; i3 < iMin; i3++) {
                avatarsImageView.setObject(i3, i, MessagesController.getInstance(i).getUser((Long) list.get(i3)));
            }
            avatarsImageView.commitTransition(false);
            linearLayout.addView(avatarsImageView, LayoutHelper.createLinear(-1, 58, 2.0f, 11.0f, 5.0f, 0.0f));
            LinkSpanDrawable.LinksTextView linksTextViewMakeLinkTextView3 = TextHelper.makeLinkTextView(context, 14.0f, Theme.key_windowBackgroundWhiteBlackText, false, darkThemeResourceProvider);
            linksTextViewMakeLinkTextView3.setGravity(17);
            if (list.size() == 1) {
                linksTextViewMakeLinkTextView3.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.GroupCallLinkText2One, DialogObject.getShortName(i, ((Long) list.get(0)).longValue()))));
            } else if (list.size() == 2) {
                linksTextViewMakeLinkTextView3.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.GroupCallLinkText2Two, DialogObject.getShortName(i, ((Long) list.get(0)).longValue()), DialogObject.getShortName(i, ((Long) list.get(1)).longValue()))));
            } else {
                linksTextViewMakeLinkTextView3.setText(AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("GroupCallLinkText2Many", arrayList.size() - 2, DialogObject.getShortName(i, ((Long) list.get(0)).longValue()), DialogObject.getShortName(i, ((Long) list.get(1)).longValue()))));
            }
            linksTextViewMakeLinkTextView3.setMaxWidth(HintView2.cutInFancyHalf(linksTextViewMakeLinkTextView3.getText(), linksTextViewMakeLinkTextView3.getPaint()));
            linearLayout.addView(linksTextViewMakeLinkTextView3, LayoutHelper.createLinear(-1, -2, 1, 2, 0, 2, 25));
        }
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(8.0f));
        linearLayout2.setClipToPadding(false);
        linearLayout2.setOrientation(0);
        linearLayout2.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector, darkThemeResourceProvider), 20, 20));
        final CheckBox2 checkBox2 = new CheckBox2(context, 24, darkThemeResourceProvider);
        checkBox2.setColor(Theme.key_radioBackgroundChecked, Theme.key_checkboxDisabled, Theme.key_checkboxCheck);
        checkBox2.setDrawUnchecked(true);
        checkBox2.setChecked(MessagesController.getGlobalMainSettings().getBoolean("callmiconstart", true), false);
        checkBox2.setDrawBackgroundAsArc(10);
        linearLayout2.addView(checkBox2, LayoutHelper.createLinear(26, 26, 16, 0, 0, 0, 0));
        TextView textView = new TextView(context);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, darkThemeResourceProvider));
        textView.setTextSize(1, 14.0f);
        textView.setText(LocaleController.getString(C2665R.string.GroupCallLinkMicrophone));
        linearLayout2.addView(textView, LayoutHelper.createLinear(-2, -2, 16, 9, 0, 0, 0));
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-2, 38, 1, 0, 4, 0, 12));
        ScaleStateListAnimator.apply(linearLayout2, 0.025f, 1.5f);
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.GroupCallSheet$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GroupCallSheet.$r8$lambda$uOXxZGwZT0bVQWHGSuPdRe3GfLE(checkBox2, view2);
            }
        });
        ButtonWithCounterView round = new ButtonWithCounterView(context, darkThemeResourceProvider).setRound();
        round.setText(LocaleController.getString(C2665R.string.GroupCallLinkJoin), false);
        linearLayout.addView(round, LayoutHelper.createLinear(-1, 48, 2.0f, 0.0f, 2.0f, 0.0f));
        builder.setCustomView(linearLayout);
        final BottomSheet bottomSheetCreate = builder.create();
        round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.GroupCallSheet$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GroupCallSheet.m16404$r8$lambda$plmRm_ZCfuxi0WM15hUydZwDTE(bottomSheetCreate, context, checkBox2, i, inputGroupCall, view2);
            }
        });
        bottomSheetCreate.fixNavigationBar();
        bottomSheetCreate.show();
    }

    public static /* synthetic */ boolean $r8$lambda$0wXRjKk4tiXvqp2xchk3q6Rg_NQ(int i, long j, Long l) {
        return (l.longValue() == UserConfig.getInstance(i).getClientUserId() || l.longValue() == j) ? false : true;
    }

    public static /* synthetic */ void $r8$lambda$uOXxZGwZT0bVQWHGSuPdRe3GfLE(CheckBox2 checkBox2, View view) {
        checkBox2.setChecked(!checkBox2.isChecked(), true);
        MessagesController.getGlobalMainSettings().edit().putBoolean("callmiconstart", checkBox2.isChecked()).apply();
    }

    /* JADX INFO: renamed from: $r8$lambda$plmRm_-ZCfuxi0WM15hUydZwDTE, reason: not valid java name */
    public static /* synthetic */ void m16404$r8$lambda$plmRm_ZCfuxi0WM15hUydZwDTE(BottomSheet bottomSheet, Context context, CheckBox2 checkBox2, int i, TLRPC.InputGroupCall inputGroupCall, View view) {
        bottomSheet.lambda$new$0();
        Activity activityFindActivity = AndroidUtilities.findActivity(context);
        if (activityFindActivity == null) {
            return;
        }
        MessagesController.getGlobalMainSettings().edit().putBoolean("callmiconstart", checkBox2.isChecked()).apply();
        VoIPHelper.joinConference(activityFindActivity, i, inputGroupCall, false, null);
    }

    public static class UserView extends FrameLayout {
        private final AvatarDrawable avatarDrawable;
        private final int currentAccount;
        private final BackupImageView imageView;
        private final LinkSpanDrawable.LinksTextView textView;

        public UserView(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.avatarDrawable = new AvatarDrawable();
            this.currentAccount = i;
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.dp(28.0f));
            addView(backupImageView, LayoutHelper.createFrame(56, 56.0f, 49, 0.0f, 17.0f, 0.0f, 0.0f));
            LinkSpanDrawable.LinksTextView linksTextViewMakeLinkTextView = TextHelper.makeLinkTextView(context, 12.0f, Theme.key_windowBackgroundWhiteBlackText, false, resourcesProvider);
            this.textView = linksTextViewMakeLinkTextView;
            linksTextViewMakeLinkTextView.setGravity(17);
            addView(linksTextViewMakeLinkTextView, LayoutHelper.createFrame(-2, -2.0f, 49, 6.0f, 77.66f, 6.0f, 0.0f));
        }

        public void set(long j) {
            TLObject userOrChat = MessagesController.getInstance(this.currentAccount).getUserOrChat(j);
            this.avatarDrawable.setInfo(userOrChat);
            this.imageView.setForUserOrChat(userOrChat, this.avatarDrawable);
            this.textView.setText(DialogObject.getName(userOrChat));
            this.textView.setMaxWidth(Math.max(AndroidUtilities.dp(41.0f), HintView2.cutInFancyHalf(this.textView.getText(), this.textView.getPaint())));
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(82.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), TLObject.FLAG_30));
        }

        public static class Factory extends UItem.UItemFactory<UserView> {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public UserView createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new UserView(context, i, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((UserView) view).set(uItem.dialogId);
            }
        }
    }
}
