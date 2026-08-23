package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.HeaderCell;
import org.telegram.p029ui.Cells.TextCheckCell;
import org.telegram.p029ui.Cells.TextInfoPrivacyCell;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class JoinToSendSettingsView extends LinearLayout {
    private TLRPC.Chat currentChat;
    public boolean isJoinRequest;
    public boolean isJoinToSend;
    public HeaderCell joinHeaderCell;
    public TextCheckCell joinRequestCell;
    public TextInfoPrivacyCell joinRequestInfoCell;
    public TextCheckCell joinToSendCell;
    public TextInfoPrivacyCell joinToSendInfoCell;
    public Runnable onVisibilityChanged;
    private ValueAnimator toggleAnimator;
    private float toggleValue;

    public boolean onJoinRequestToggle(boolean z, Runnable runnable) {
        return true;
    }

    public boolean onJoinToSendToggle(boolean z, Runnable runnable) {
        return true;
    }

    public JoinToSendSettingsView(Context context, TLRPC.Chat chat) {
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        TLRPC.TL_chatAdminRights tL_chatAdminRights2;
        super(context);
        this.currentChat = chat;
        this.isJoinToSend = chat.join_to_send;
        this.isJoinRequest = chat.join_request;
        boolean z = true;
        setOrientation(1);
        HeaderCell headerCell = new HeaderCell(context, 20);
        this.joinHeaderCell = headerCell;
        headerCell.setText(LocaleController.getString(C2888R.string.ChannelSettingsJoinTitle));
        this.joinHeaderCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        addView(this.joinHeaderCell);
        TextCheckCell textCheckCell = new TextCheckCell(context, 20);
        this.joinToSendCell = textCheckCell;
        String string = LocaleController.getString(C2888R.string.ChannelSettingsJoinToSend);
        boolean z2 = this.isJoinToSend;
        textCheckCell.setTextAndCheck(string, z2, z2);
        this.joinToSendCell.setEnabled(chat.creator || ((tL_chatAdminRights2 = chat.admin_rights) != null && tL_chatAdminRights2.ban_users));
        this.joinToSendCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.JoinToSendSettingsView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(view);
            }
        });
        addView(this.joinToSendCell);
        TextCheckCell textCheckCell2 = new TextCheckCell(context, 20);
        this.joinRequestCell = textCheckCell2;
        textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.ChannelSettingsJoinRequest), this.isJoinRequest, false);
        this.joinRequestCell.setPivotY(0.0f);
        TextCheckCell textCheckCell3 = this.joinRequestCell;
        if (!chat.creator && ((tL_chatAdminRights = chat.admin_rights) == null || !tL_chatAdminRights.ban_users)) {
            z = false;
        }
        textCheckCell3.setEnabled(z);
        this.joinRequestCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.JoinToSendSettingsView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$5(view);
            }
        });
        addView(this.joinRequestCell);
        TextInfoPrivacyCell textInfoPrivacyCell = new TextInfoPrivacyCell(context, 12);
        this.joinToSendInfoCell = textInfoPrivacyCell;
        textInfoPrivacyCell.setText(LocaleController.getString(C2888R.string.ChannelSettingsJoinToSendInfo));
        addView(this.joinToSendInfoCell);
        TextInfoPrivacyCell textInfoPrivacyCell2 = new TextInfoPrivacyCell(context, 12);
        this.joinRequestInfoCell = textInfoPrivacyCell2;
        textInfoPrivacyCell2.setText(LocaleController.getString(C2888R.string.ChannelSettingsJoinRequestInfo));
        addView(this.joinRequestInfoCell);
        boolean z3 = this.isJoinToSend;
        this.toggleValue = z3 ? 1.0f : 0.0f;
        this.joinRequestCell.setVisibility(z3 ? 0 : 8);
        updateToggleValue(this.toggleValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        final boolean z = this.isJoinToSend;
        boolean z2 = !z;
        final boolean z3 = this.isJoinRequest;
        if (onJoinToSendToggle(z2, new Runnable() { // from class: org.telegram.ui.Components.JoinToSendSettingsView$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1(z3, z);
            }
        })) {
            lambda$new$3(false);
            setJoinToSend(z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(final boolean z, final boolean z2) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.JoinToSendSettingsView$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0(z, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(boolean z, boolean z2) {
        lambda$new$3(z);
        setJoinToSend(z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(View view) {
        final boolean z = this.isJoinRequest;
        boolean z2 = !z;
        if (onJoinRequestToggle(z2, new Runnable() { // from class: org.telegram.ui.Components.JoinToSendSettingsView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$4(z);
            }
        })) {
            lambda$new$3(z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(final boolean z) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.JoinToSendSettingsView$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$3(z);
            }
        });
    }

    public float getBottomInfoMargin() {
        return (this.joinToSendInfoCell.getAlpha() * this.joinToSendInfoCell.getHeight()) + (this.joinRequestInfoCell.getAlpha() * this.joinRequestInfoCell.getHeight());
    }

    public void setChat(TLRPC.Chat chat) {
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        TLRPC.TL_chatAdminRights tL_chatAdminRights2;
        this.currentChat = chat;
        boolean z = true;
        this.joinToSendCell.setEnabled(chat.creator || ((tL_chatAdminRights2 = chat.admin_rights) != null && tL_chatAdminRights2.ban_users));
        TextCheckCell textCheckCell = this.joinRequestCell;
        TLRPC.Chat chat2 = this.currentChat;
        if (!chat2.creator && ((tL_chatAdminRights = chat2.admin_rights) == null || !tL_chatAdminRights.ban_users)) {
            z = false;
        }
        textCheckCell.setEnabled(z);
    }

    private void updateToggleValue(float f) {
        this.toggleValue = f;
        this.joinRequestCell.setAlpha(f);
        float f2 = 1.0f - f;
        this.joinRequestCell.setTranslationY((-AndroidUtilities.m1124dp(16.0f)) * f2);
        this.joinRequestCell.setScaleY(1.0f - (0.1f * f2));
        int iM1124dp = this.joinRequestCell.getMeasuredHeight() <= 0 ? AndroidUtilities.m1124dp(50.0f) : this.joinRequestCell.getMeasuredHeight();
        this.joinToSendInfoCell.setAlpha(f2);
        float f3 = (-iM1124dp) * f2;
        this.joinToSendInfoCell.setTranslationY(((-AndroidUtilities.m1124dp(4.0f)) * f) + f3);
        this.joinRequestInfoCell.setAlpha(f);
        this.joinRequestInfoCell.setTranslationY(f3 + (AndroidUtilities.m1124dp(4.0f) * f2));
        requestLayout();
    }

    public void showJoinToSend(boolean z) {
        this.joinToSendCell.setVisibility(z ? 0 : 8);
        if (!z) {
            this.isJoinToSend = true;
            this.joinRequestCell.setVisibility(0);
            updateToggleValue(1.0f);
        }
        requestLayout();
    }

    /* JADX INFO: renamed from: setJoinRequest, reason: merged with bridge method [inline-methods] */
    public void lambda$new$3(boolean z) {
        this.isJoinRequest = z;
        this.joinRequestCell.setChecked(z);
    }

    public void setJoinToSend(boolean z) {
        this.isJoinToSend = z;
        this.joinToSendCell.setChecked(z);
        this.joinToSendCell.setDivider(this.isJoinToSend);
        this.joinRequestCell.setChecked(this.isJoinRequest);
        ValueAnimator valueAnimator = this.toggleAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.toggleValue, this.isJoinToSend ? 1.0f : 0.0f);
        this.toggleAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(200L);
        this.toggleAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.toggleAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.JoinToSendSettingsView$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$setJoinToSend$6(valueAnimator2);
            }
        });
        this.toggleAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.JoinToSendSettingsView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                JoinToSendSettingsView joinToSendSettingsView = JoinToSendSettingsView.this;
                if (joinToSendSettingsView.isJoinToSend) {
                    return;
                }
                joinToSendSettingsView.joinRequestCell.setVisibility(8);
                Runnable runnable = JoinToSendSettingsView.this.onVisibilityChanged;
                if (runnable != null) {
                    runnable.run();
                }
            }
        });
        if (this.isJoinToSend) {
            this.joinRequestCell.setVisibility(0);
            Runnable runnable = this.onVisibilityChanged;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.toggleAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setJoinToSend$6(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.toggleValue = fFloatValue;
        updateToggleValue(fFloatValue);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int iM1124dp;
        int i5 = i3 - i;
        int iLayoutChild = layoutChild(this.joinHeaderCell, 0, i5);
        if (this.joinToSendCell.getVisibility() == 0) {
            iLayoutChild += layoutChild(this.joinToSendCell, iLayoutChild, i5);
        }
        if (this.joinRequestCell.getVisibility() == 0) {
            iM1124dp = iLayoutChild + layoutChild(this.joinRequestCell, iLayoutChild, i5);
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.joinRequestCell.getLayoutParams();
            iM1124dp = iLayoutChild + AndroidUtilities.m1124dp(50.0f) + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        }
        layoutChild(this.joinToSendInfoCell, iM1124dp, i5);
        layoutChild(this.joinRequestInfoCell, iM1124dp, i5);
    }

    private int layoutChild(View view, int i, int i2) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i3 = i + marginLayoutParams.topMargin;
        view.layout(marginLayoutParams.leftMargin, i3, i2 - marginLayoutParams.rightMargin, view.getMeasuredHeight() + i3);
        return view.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    private int calcHeight() {
        float measuredHeight;
        float measuredHeight2 = this.joinHeaderCell.getMeasuredHeight();
        if (this.joinToSendCell.getVisibility() == 0) {
            measuredHeight = this.joinToSendCell.getMeasuredHeight() + (this.joinRequestCell.getMeasuredHeight() * this.toggleValue);
        } else {
            measuredHeight = this.joinRequestCell.getMeasuredHeight();
        }
        return (int) (measuredHeight2 + measuredHeight + AndroidUtilities.lerp(this.joinToSendInfoCell.getMeasuredHeight(), this.joinRequestInfoCell.getMeasuredHeight(), this.toggleValue));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        measureChildWithMargins(this.joinHeaderCell, i, 0, i2, 0);
        measureChildWithMargins(this.joinToSendCell, i, 0, i2, 0);
        measureChildWithMargins(this.joinRequestCell, i, 0, i2, 0);
        measureChildWithMargins(this.joinToSendInfoCell, i, 0, i2, 0);
        measureChildWithMargins(this.joinRequestInfoCell, i, 0, i2, 0);
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(calcHeight(), TLObject.FLAG_30));
    }
}
