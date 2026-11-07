package org.telegram.ui.Wallet;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.WebFile;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalFragment;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes8.dex */
public class WalletTonConnectSessionsFragment extends UniversalFragment implements NotificationCenter.NotificationCenterDelegate {
    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.walletUpdate);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.walletUpdate);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        UniversalRecyclerView universalRecyclerView;
        if (i != NotificationCenter.walletUpdate || (universalRecyclerView = this.listView) == null) {
            return;
        }
        universalRecyclerView.adapter.update(true);
    }

    @Override // org.telegram.ui.Components.UniversalFragment, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.fragmentView = super.createView(context);
        this.actionBar.setAdaptiveBackground(this.listView);
        this.listView.setSections();
        this.listView.setClipToPadding(false);
        return this.fragmentView;
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public CharSequence getTitle() {
        return LocaleController.getString(C2807R.string.WalletConnectedApps);
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
        if (!gramWallet.tonConnect.sessions.isEmpty()) {
            arrayList.add(UItem.asHeader(LocaleController.getString(C2807R.string.WalletActiveConnections)));
        }
        ArrayList<TL_wallet.tonConnectSession> arrayList2 = gramWallet.tonConnect.sessions;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            TL_wallet.tonConnectSession tonconnectsession = arrayList2.get(i);
            i++;
            arrayList.add(TONConnectionCell.Factory.of(tonconnectsession));
        }
        gramWallet.tonConnect.isLoadingSessions();
        arrayList.add(UItem.asShadow(LocaleController.getString(C2807R.string.WalletConnectedAppsInfo)));
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
        Object obj = uItem.object;
        if (obj instanceof TL_wallet.tonConnectSession) {
            final TL_wallet.tonConnectSession tonconnectsession = (TL_wallet.tonConnectSession) obj;
            openSessionSheet(getContext(), tonconnectsession, getResourceProvider(), new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletTonConnectSessionsFragment$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj2) {
                    this.f$0.lambda$onClick$0(tonconnectsession, (Utilities.Callback) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$0(TL_wallet.tonConnectSession tonconnectsession, Utilities.Callback callback) {
        GramWallet.getInstance(this.currentAccount).tonConnect.disconnectSession(tonconnectsession, callback);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.listView.setPadding(0, 0, 0, i4);
        this.listView.setClipToPadding(false);
    }

    public static void openSessionSheet(Context context, TL_wallet.tonConnectSession tonconnectsession, final Theme.ResourcesProvider resourcesProvider, final Utilities.Callback<Utilities.Callback<String>> callback) {
        TLRPC.WebDocument webDocument;
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(C2807R.drawable.ic_ab_close);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider)));
        int i = Theme.key_windowBackgroundWhiteBlackText;
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i, resourcesProvider), PorterDuff.Mode.SRC_IN));
        ScaleStateListAnimator.apply(imageView);
        frameLayout.addView(imageView, LayoutHelper.createFrame(48, 48.0f, 51, 4.0f, 0.0f, 0.0f, 0.0f));
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setRoundRadius(AndroidUtilities.dp(38.0f));
        TL_wallet.tonConnectManifest tonconnectmanifest = tonconnectsession.manifest;
        if (tonconnectmanifest != null && (webDocument = tonconnectmanifest.icon) != null) {
            backupImageView.setImage(ImageLocation.getForWebFile(WebFile.createWithWebDocument(webDocument)), "76_76", (Drawable) null, 0, tonconnectsession.manifest);
        }
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(76, 76.0f, 49, 0.0f, 32.0f, 0.0f, 0.0f));
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2));
        TextView textView = new TextView(context);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setTextSize(1, 20.0f);
        textView.setGravity(17);
        TL_wallet.tonConnectManifest tonconnectmanifest2 = tonconnectsession.manifest;
        textView.setText(tonconnectmanifest2 != null ? tonconnectmanifest2.name : LocaleController.getString(C2807R.string.WalletConnectedApp));
        textView.setTextColor(Theme.getColor(i, resourcesProvider));
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 49, 36, 16, 36, 0));
        TL_wallet.tonConnectManifest tonconnectmanifest3 = tonconnectsession.manifest;
        String hostAuthority = AndroidUtilities.getHostAuthority(tonconnectmanifest3 != null ? tonconnectmanifest3.url : null);
        if (!TextUtils.isEmpty(hostAuthority)) {
            TextView textView2 = new TextView(context);
            textView2.setTypeface(AndroidUtilities.bold());
            textView2.setTextSize(1, 14.0f);
            textView2.setTextColor(Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider));
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) hostAuthority);
            textView2.setText(spannableStringBuilder);
            linearLayout.addView(textView2, LayoutHelper.createLinear(-2, -2, 49, 36, 6, 36, 0));
        }
        TextView textView3 = new TextView(context);
        textView3.setTextSize(1, 14.0f);
        textView3.setGravity(17);
        textView3.setText(LocaleController.getString(C2807R.string.WalletConnectedAppInfo));
        textView3.setTextColor(Theme.getColor(i, resourcesProvider));
        linearLayout.addView(textView3, LayoutHelper.createLinear(-2, -2, 49, 36, 16, 36, 28));
        final ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
        round.setText(LocaleController.getString(C2807R.string.WalletDisconnect));
        round.setColor(Theme.getColor(Theme.key_text_RedBold, resourcesProvider));
        linearLayout.addView(round, LayoutHelper.createLinear(-1, 44, 1, 16, 0, 16, 16));
        final NewBottomSheet newBottomSheet = new NewBottomSheet(context, linearLayout, resourcesProvider);
        newBottomSheet.show();
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletTonConnectSessionsFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                newBottomSheet.lambda$new$0();
            }
        });
        round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletTonConnectSessionsFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WalletTonConnectSessionsFragment.m23575$r8$lambda$osgPPwkrqiK_GgEtpZ6pdcmGo(round, callback, newBottomSheet, resourcesProvider, view);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$osgPPwkrqiK_GgEtpZ6-p-dcmGo, reason: not valid java name */
    public static /* synthetic */ void m23575$r8$lambda$osgPPwkrqiK_GgEtpZ6pdcmGo(final ButtonWithCounterView buttonWithCounterView, Utilities.Callback callback, final NewBottomSheet newBottomSheet, final Theme.ResourcesProvider resourcesProvider, View view) {
        if (buttonWithCounterView.isLoading()) {
            return;
        }
        buttonWithCounterView.setLoading(true);
        callback.run(new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletTonConnectSessionsFragment$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                WalletTonConnectSessionsFragment.m23576$r8$lambda$rPqKk1BtQI7r9qLSAsXRs7ueGc(buttonWithCounterView, newBottomSheet, resourcesProvider, (String) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$rPqKk1-BtQI7r9qLSAsXRs7ueGc, reason: not valid java name */
    public static /* synthetic */ void m23576$r8$lambda$rPqKk1BtQI7r9qLSAsXRs7ueGc(ButtonWithCounterView buttonWithCounterView, NewBottomSheet newBottomSheet, Theme.ResourcesProvider resourcesProvider, String str) {
        buttonWithCounterView.setLoading(false);
        if (str == null) {
            newBottomSheet.lambda$new$0();
        } else {
            BulletinFactory.showError(str, newBottomSheet.topBulletinContainer, resourcesProvider);
        }
    }

    public static class TONConnectionCell extends FrameLayout implements Theme.Colorable {
        private final BackupImageView imageView;
        private final Theme.ResourcesProvider resourcesProvider;
        private final TextView subtitleView;
        private final LinearLayout textLayout;
        private final TextView titleView;

        public TONConnectionCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.dp(10.0f));
            addView(backupImageView, LayoutHelper.createFrame(28, 28.0f, 19, 18.0f, 0.0f, 0.0f, 0.0f));
            LinearLayout linearLayout = new LinearLayout(context);
            this.textLayout = linearLayout;
            linearLayout.setOrientation(1);
            addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f, 23, 62.0f, 0.0f, 20.0f, 0.0f));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextSize(1, 16.0f);
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 2.0f));
            TextView textView2 = new TextView(context);
            this.subtitleView = textView2;
            textView2.setTextSize(1, 14.0f);
            linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 0.0f));
            updateColors();
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(58.0f), TLObject.FLAG_30));
        }

        @Override // org.telegram.ui.ActionBar.Theme.Colorable
        public void updateColors() {
            this.titleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            this.subtitleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, this.resourcesProvider));
        }

        public void set(TL_wallet.tonConnectSession tonconnectsession) {
            TL_wallet.tonConnectManifest tonconnectmanifest = tonconnectsession.manifest;
            if (tonconnectmanifest != null) {
                TLRPC.WebDocument webDocument = tonconnectmanifest.icon;
                if (webDocument != null) {
                    this.imageView.setImage(ImageLocation.getForWebFile(WebFile.createWithWebDocument(webDocument)), "28_28", (Drawable) null, 0, tonconnectsession.manifest);
                }
                this.titleView.setText(tonconnectsession.manifest.name);
                this.subtitleView.setText(AndroidUtilities.getHostAuthority(tonconnectsession.manifest.url));
            }
        }

        public static class Factory extends UItem.UItemFactory<TONConnectionCell> {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public TONConnectionCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new TONConnectionCell(context, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((TONConnectionCell) view).set((TL_wallet.tonConnectSession) uItem.object);
            }

            public static UItem of(TL_wallet.tonConnectSession tonconnectsession) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.object = tonconnectsession;
                return uItemOfFactory;
            }
        }
    }
}
