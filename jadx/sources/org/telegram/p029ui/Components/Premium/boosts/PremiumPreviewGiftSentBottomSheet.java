package org.telegram.p029ui.Components.Premium.boosts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.text.TextPaint;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Premium.PremiumGradient;
import org.telegram.p029ui.Components.Premium.PremiumPreviewBottomSheet;
import org.telegram.p029ui.Components.Premium.boosts.cells.ActionBtnCell;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class PremiumPreviewGiftSentBottomSheet extends PremiumPreviewBottomSheet {
    private final List selectedUsers;

    @Override // org.telegram.p029ui.Components.Premium.PremiumPreviewBottomSheet
    protected boolean needDefaultPremiumBtn() {
        return false;
    }

    public static void show(List list) {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null) {
            return;
        }
        PremiumPreviewGiftSentBottomSheet premiumPreviewGiftSentBottomSheet = new PremiumPreviewGiftSentBottomSheet(lastFragment, UserConfig.selectedAccount, list, lastFragment.getResourceProvider());
        premiumPreviewGiftSentBottomSheet.setAnimateConfetti(true);
        premiumPreviewGiftSentBottomSheet.setAnimateConfettiWithStars(true);
        premiumPreviewGiftSentBottomSheet.show();
    }

    public PremiumPreviewGiftSentBottomSheet(BaseFragment baseFragment, int i, List list, Theme.ResourcesProvider resourcesProvider) {
        super(baseFragment, i, null, null, null, resourcesProvider);
        ArrayList arrayList = new ArrayList();
        this.selectedUsers = arrayList;
        arrayList.addAll(list);
        init();
    }

    @Override // org.telegram.p029ui.Components.Premium.PremiumPreviewBottomSheet
    protected void updateRows() {
        this.rowCount = 1;
        this.paddingRow = 0;
        this.featuresStartRow = 1;
        int size = this.premiumFeatures.size();
        int i = 1 + size;
        this.featuresEndRow = i;
        this.rowCount = size + 2;
        this.termsRow = i;
    }

    @Override // org.telegram.p029ui.Components.Premium.PremiumPreviewBottomSheet
    public void setTitle(boolean z) {
        String string;
        ((PremiumPreviewBottomSheet) this).titleView[0].setTextSize(1, 20.0f);
        this.subtitleView.setPadding(AndroidUtilities.m1124dp(30.0f), 0, AndroidUtilities.m1124dp(30.0f), 0);
        this.subtitleView.setLineSpacing(AndroidUtilities.m1124dp(2.0f), 1.0f);
        ((PremiumPreviewBottomSheet) this).titleView[0].setText(LocaleController.getPluralString("GiftPremiumGiftsSent", this.selectedUsers.size()));
        ((ViewGroup.MarginLayoutParams) this.subtitleView.getLayoutParams()).bottomMargin = AndroidUtilities.m1124dp(16.0f);
        ((ViewGroup.MarginLayoutParams) this.subtitleView.getLayoutParams()).topMargin = AndroidUtilities.m1124dp(4.0f);
        int size = this.selectedUsers.size();
        if (size == 1) {
            string = LocaleController.formatString(C2888R.string.GiftPremiumUsersPurchasedManyZero, LocaleController.formatString(C2888R.string.GiftPremiumUsersOne, UserObject.getFirstName((TLRPC.User) this.selectedUsers.get(0))));
        } else if (size == 2) {
            string = LocaleController.formatString("GiftPremiumUsersPurchasedManyZero", C2888R.string.GiftPremiumUsersPurchasedManyZero, LocaleController.formatString("GiftPremiumUsersTwo", C2888R.string.GiftPremiumUsersTwo, UserObject.getFirstName((TLRPC.User) this.selectedUsers.get(0)), UserObject.getFirstName((TLRPC.User) this.selectedUsers.get(1))));
        } else if (size == 3) {
            string = LocaleController.formatString("GiftPremiumUsersPurchasedManyZero", C2888R.string.GiftPremiumUsersPurchasedManyZero, LocaleController.formatString("GiftPremiumUsersThree", C2888R.string.GiftPremiumUsersThree, UserObject.getFirstName((TLRPC.User) this.selectedUsers.get(0)), UserObject.getFirstName((TLRPC.User) this.selectedUsers.get(1)), UserObject.getFirstName((TLRPC.User) this.selectedUsers.get(2))));
        } else {
            string = LocaleController.formatPluralString("GiftPremiumUsersPurchasedMany", this.selectedUsers.size() - 3, LocaleController.formatString("GiftPremiumUsersThree", C2888R.string.GiftPremiumUsersThree, UserObject.getFirstName((TLRPC.User) this.selectedUsers.get(0)), UserObject.getFirstName((TLRPC.User) this.selectedUsers.get(1)), UserObject.getFirstName((TLRPC.User) this.selectedUsers.get(2))));
        }
        this.subtitleView.setText(AndroidUtilities.replaceTags(string));
        this.subtitleView.append("\n");
        this.subtitleView.append("\n");
        if (this.selectedUsers.size() == 1) {
            this.subtitleView.append(AndroidUtilities.replaceTags(LocaleController.formatString("GiftPremiumGiftsSentStatusForUser", C2888R.string.GiftPremiumGiftsSentStatusForUser, UserObject.getFirstName((TLRPC.User) this.selectedUsers.get(0)))));
        } else {
            this.subtitleView.append(AndroidUtilities.replaceTags(LocaleController.getString("GiftPremiumGiftsSentStatus", C2888R.string.GiftPremiumGiftsSentStatus)));
        }
    }

    static class AvatarHolderView extends FrameLayout {
        private final Paint bgPaint;
        public boolean drawCycle;
        AvatarDrawable fromAvatarDrawable;
        protected final AdditionalCounterView iconView;
        private final BackupImageView imageView;
        public TLRPC.User user;

        public static View createAvatarsContainer(Context context, List list) {
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setClipChildren(false);
            FrameLayout frameLayout2 = new FrameLayout(context);
            frameLayout2.setClipChildren(false);
            if (list.size() == 1) {
                frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, 94.0f, 0, 0.0f, 0.0f, 0.0f, 0.0f));
                AvatarHolderView avatarHolderView = new AvatarHolderView(context, 47.0f);
                avatarHolderView.drawCycle = false;
                avatarHolderView.setUser((TLRPC.User) list.get(0));
                frameLayout2.addView(avatarHolderView, 0, LayoutHelper.createFrame(94, 94, 17));
                return frameLayout;
            }
            frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, 83.0f, 0, 0.0f, 0.0f, 0.0f, 0.0f));
            int i = 0;
            for (int i2 = 0; i2 < list.size(); i2++) {
                TLRPC.User user = (TLRPC.User) list.get(i2);
                AvatarHolderView avatarHolderView2 = new AvatarHolderView(context, 41.5f);
                avatarHolderView2.setUser(user);
                frameLayout2.addView(avatarHolderView2, 0, LayoutHelper.createFrame(83, 83, 17));
                avatarHolderView2.setTranslationX((-i2) * AndroidUtilities.m1124dp(29.0f));
                if (i2 == 0 && list.size() > 3) {
                    avatarHolderView2.iconView.setAlpha(1.0f);
                    avatarHolderView2.iconView.count = list.size() - 3;
                }
                i++;
                if (i2 == 2) {
                    break;
                }
            }
            frameLayout.setTranslationX(AndroidUtilities.m1124dp(14.5f) * (i - 1));
            return frameLayout;
        }

        public AvatarHolderView(Context context, float f) {
            super(context);
            Paint paint = new Paint(1);
            this.bgPaint = paint;
            this.drawCycle = true;
            this.fromAvatarDrawable = new AvatarDrawable();
            BackupImageView backupImageView = new BackupImageView(getContext());
            this.imageView = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.m1124dp(f));
            AdditionalCounterView additionalCounterView = new AdditionalCounterView(context);
            this.iconView = additionalCounterView;
            additionalCounterView.setAlpha(0.0f);
            addView(backupImageView, LayoutHelper.createFrame(-1, -1.0f, 0, 5.0f, 5.0f, 5.0f, 5.0f));
            addView(additionalCounterView, LayoutHelper.createFrame(26, 26.0f, 85, 0.0f, 0.0f, 1.0f, 3.0f));
            paint.setColor(Theme.getColor(Theme.key_windowBackgroundGray));
        }

        public void setUser(TLRPC.User user) {
            this.user = user;
            this.fromAvatarDrawable.setInfo(user);
            this.imageView.setForUserOrChat(user, this.fromAvatarDrawable);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            if (this.drawCycle) {
                canvas.drawCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, (getMeasuredHeight() / 2.0f) - AndroidUtilities.m1124dp(2.0f), this.bgPaint);
            }
            super.dispatchDraw(canvas);
        }
    }

    static class AdditionalCounterView extends View {
        int count;
        TextPaint paint;

        public AdditionalCounterView(Context context) {
            super(context);
            TextPaint textPaint = new TextPaint(1);
            this.paint = textPaint;
            textPaint.setTextAlign(Paint.Align.CENTER);
            this.paint.setColor(Theme.getColor(Theme.key_windowBackgroundGray));
            this.paint.setTextSize(AndroidUtilities.m1124dp(11.5f));
            this.paint.setTypeface(AndroidUtilities.bold());
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float measuredWidth = getMeasuredWidth() / 2.0f;
            float measuredHeight = getMeasuredHeight() / 2.0f;
            canvas.drawCircle(measuredWidth, measuredHeight, getMeasuredWidth() / 2.0f, this.paint);
            PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, getMeasuredWidth(), getMeasuredHeight(), -AndroidUtilities.m1124dp(10.0f), 0.0f);
            canvas.drawCircle(measuredWidth, measuredHeight, (getMeasuredWidth() / 2.0f) - AndroidUtilities.m1124dp(1.5f), PremiumGradient.getInstance().getMainGradientPaint());
            canvas.drawText("+" + this.count, measuredWidth, (int) (measuredHeight - ((this.paint.descent() + this.paint.ascent()) / 2.0f)), this.paint);
        }
    }

    private void init() {
        updateRows();
        this.useBackgroundTopPadding = false;
        setApplyTopPadding(false);
        this.backgroundPaddingTop = 0;
        ActionBtnCell actionBtnCell = new ActionBtnCell(getContext(), this.resourcesProvider);
        actionBtnCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftSentBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$init$0(view);
            }
        });
        actionBtnCell.setCloseStyle(true);
        this.containerView.addView(actionBtnCell, LayoutHelper.createFrame(-1, 64.0f, 80, 0.0f, 0.0f, 0.0f, 0.0f));
        RecyclerListView recyclerListView = this.recyclerListView;
        int i = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i, 0, i, AndroidUtilities.m1124dp(64.0f));
        this.overrideTitleIcon = AvatarHolderView.createAvatarsContainer(getContext(), this.selectedUsers);
        fixNavigationBar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$0(View view) {
        lambda$new$0();
    }

    @Override // org.telegram.p029ui.Components.Premium.PremiumPreviewBottomSheet
    protected void afterCellCreated(int i, View view) {
        if (i == 0) {
            view.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftSentBottomSheet.1
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view2, Outline outline) {
                    float fM1124dp = AndroidUtilities.m1124dp(12.0f);
                    outline.setRoundRect(0, 0, view2.getWidth(), (int) (view2.getHeight() + fM1124dp), fM1124dp);
                }
            });
            view.setClipToOutline(true);
            view.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray, this.resourcesProvider));
            ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).topMargin = -AndroidUtilities.m1124dp(6.0f);
        }
    }

    @Override // org.telegram.p029ui.Components.Premium.PremiumPreviewBottomSheet
    protected void attachIconContainer(LinearLayout linearLayout) {
        linearLayout.addView(this.overrideTitleIcon, LayoutHelper.createLinear(-1, this.selectedUsers.size() == 1 ? 94 : 83, 0.0f, this.selectedUsers.size() == 1 ? 28.0f : 34.0f, 0.0f, this.selectedUsers.size() == 1 ? 9.0f : 14.0f));
    }
}
