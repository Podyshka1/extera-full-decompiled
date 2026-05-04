package org.telegram.p029ui;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.exteragram.messenger.utils.p017ui.UIUtil;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.SessionCell;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RLottieImageView;
import org.telegram.p029ui.Components.Switch;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;

/* JADX INFO: loaded from: classes6.dex */
public class SessionBottomSheet extends BottomSheet {
    RLottieImageView imageView;
    BaseFragment parentFragment;
    TLRPC.TL_authorization session;

    public interface Callback {
        void onSessionTerminated(TLRPC.TL_authorization tL_authorization);
    }

    public static /* synthetic */ void $r8$lambda$vKDcJ0X1ZP1ewonnzJv9wWdCnF4(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public SessionBottomSheet(BaseFragment baseFragment, final TLRPC.TL_authorization tL_authorization, boolean z, Callback callback) {
        String dateTime;
        super(baseFragment.getParentActivity(), false);
        setOpenNoDelay(true);
        Activity parentActivity = baseFragment.getParentActivity();
        this.session = tL_authorization;
        this.parentFragment = baseFragment;
        fixNavigationBar();
        LinearLayout linearLayout = new LinearLayout(parentActivity);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f), 0);
        RLottieImageView rLottieImageView = new RLottieImageView(parentActivity);
        this.imageView = rLottieImageView;
        rLottieImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SessionBottomSheet.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SessionBottomSheet.this.imageView.isPlaying() || SessionBottomSheet.this.imageView.getAnimatedDrawable() == null) {
                    return;
                }
                SessionBottomSheet.this.imageView.getAnimatedDrawable().setCurrentFrame(40);
                SessionBottomSheet.this.imageView.playAnimation();
            }
        });
        this.imageView.setScaleType(ImageView.ScaleType.CENTER);
        linearLayout.addView(this.imageView, LayoutHelper.createLinear(70, 70, 1, 0, 16, 0, 0));
        TextView textView = new TextView(parentActivity);
        textView.setTextSize(2, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        textView.setGravity(17);
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 1, 21, 12, 21, 0));
        TextView textView2 = new TextView(parentActivity);
        textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
        textView2.setTextSize(2, 13.0f);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
        textView2.setGravity(17);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 1, 21, 4, 21, 21));
        if ((tL_authorization.flags & 1) != 0) {
            dateTime = LocaleController.getString(C2888R.string.Online);
        } else {
            dateTime = LocaleController.formatDateTime(tL_authorization.date_active, true);
        }
        textView2.setText(dateTime);
        StringBuilder sb = new StringBuilder();
        if (tL_authorization.device_model.length() != 0) {
            sb.append(tL_authorization.device_model);
        }
        if (sb.length() == 0) {
            if (tL_authorization.platform.length() != 0) {
                sb.append(tL_authorization.platform);
            }
            if (tL_authorization.system_version.length() != 0) {
                if (tL_authorization.platform.length() != 0) {
                    sb.append(" ");
                }
                sb.append(tL_authorization.system_version);
            }
        }
        textView.setText(sb);
        setAnimation(tL_authorization, this.imageView);
        ItemView itemView = new ItemView(parentActivity, false);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(tL_authorization.app_name);
        sb2.append(" ");
        sb2.append(tL_authorization.app_version);
        itemView.valueText.setText(sb2);
        Drawable drawableMutate = ContextCompat.getDrawable(parentActivity, C2888R.drawable.menu_devices).mutate();
        int i = Theme.key_windowBackgroundWhiteGrayIcon;
        int color = Theme.getColor(i);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(color, mode));
        itemView.iconView.setImageDrawable(drawableMutate);
        itemView.descriptionText.setText(LocaleController.getString(C2888R.string.Application));
        linearLayout.addView(itemView);
        if (tL_authorization.country.length() != 0) {
            ItemView itemView2 = new ItemView(parentActivity, false);
            itemView2.valueText.setText(tL_authorization.country);
            Drawable drawableMutate2 = ContextCompat.getDrawable(parentActivity, C2888R.drawable.msg_location).mutate();
            drawableMutate2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), mode));
            itemView2.iconView.setImageDrawable(drawableMutate2);
            itemView2.descriptionText.setText(LocaleController.getString(C2888R.string.Location));
            itemView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SessionBottomSheet.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SessionBottomSheet.this.copyText(tL_authorization.country);
                }
            });
            itemView2.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.SessionBottomSheet.3
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    SessionBottomSheet.this.copyText(tL_authorization.country);
                    return true;
                }
            });
            itemView2.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 2));
            linearLayout.addView(itemView2);
            itemView.needDivider = true;
            itemView = itemView2;
        }
        if (tL_authorization.f1698ip.length() != 0) {
            ItemView itemView3 = new ItemView(parentActivity, false);
            itemView3.valueText.setText(tL_authorization.f1698ip);
            Drawable drawableMutate3 = ContextCompat.getDrawable(parentActivity, C2888R.drawable.msg_language).mutate();
            drawableMutate3.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), mode));
            itemView3.iconView.setImageDrawable(drawableMutate3);
            itemView3.descriptionText.setText(LocaleController.getString(C2888R.string.IpAddress));
            itemView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SessionBottomSheet.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SessionBottomSheet.this.copyText(tL_authorization.f1698ip);
                }
            });
            itemView3.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.SessionBottomSheet.5
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    SessionBottomSheet.this.copyText(tL_authorization.country);
                    return true;
                }
            });
            itemView3.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 2));
            linearLayout.addView(itemView3);
            itemView.needDivider = true;
            itemView = itemView3;
        }
        if (secretChatsEnabled(tL_authorization)) {
            final ItemView itemView4 = new ItemView(parentActivity, true);
            itemView4.valueText.setText(LocaleController.getString(C2888R.string.AcceptSecretChats));
            Drawable drawableMutate4 = ContextCompat.getDrawable(parentActivity, C2888R.drawable.msg_secret).mutate();
            drawableMutate4.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), mode));
            itemView4.iconView.setImageDrawable(drawableMutate4);
            itemView4.switchView.setChecked(!tL_authorization.encrypted_requests_disabled, false);
            itemView4.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 7));
            itemView4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SessionBottomSheet.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    itemView4.switchView.setChecked(!r3.isChecked(), true);
                    tL_authorization.encrypted_requests_disabled = !itemView4.switchView.isChecked();
                    SessionBottomSheet.this.uploadSessionSettings();
                }
            });
            itemView.needDivider = true;
            itemView4.descriptionText.setText(LocaleController.getString(C2888R.string.AcceptSecretChatsDescription));
            linearLayout.addView(itemView4);
            itemView = itemView4;
        }
        if (acceptCallsEnabled(tL_authorization)) {
            final ItemView itemView5 = new ItemView(parentActivity, true);
            itemView5.valueText.setText(LocaleController.getString(C2888R.string.AcceptCalls));
            Drawable drawableMutate5 = ContextCompat.getDrawable(parentActivity, C2888R.drawable.msg_calls).mutate();
            drawableMutate5.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), mode));
            itemView5.iconView.setImageDrawable(drawableMutate5);
            itemView5.switchView.setChecked(!tL_authorization.call_requests_disabled, false);
            itemView5.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 7));
            itemView5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SessionBottomSheet.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    itemView5.switchView.setChecked(!r3.isChecked(), true);
                    tL_authorization.call_requests_disabled = !itemView5.switchView.isChecked();
                    SessionBottomSheet.this.uploadSessionSettings();
                }
            });
            itemView.needDivider = true;
            itemView5.descriptionText.setText(LocaleController.getString(C2888R.string.AcceptCallsChatsDescription));
            linearLayout.addView(itemView5);
        }
        if (!z) {
            ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(parentActivity, null);
            buttonWithCounterView.setText(LocaleController.getString(C2888R.string.TerminateSession), false);
            linearLayout.addView(buttonWithCounterView, LayoutHelper.createFrame(-1, 48.0f, 0, 16.0f, 15.0f, 16.0f, 16.0f));
            buttonWithCounterView.setOnClickListener(new ViewOnClickListenerC66778(callback, tL_authorization, baseFragment));
        }
        ScrollView scrollView = new ScrollView(parentActivity);
        scrollView.addView(linearLayout);
        setCustomView(scrollView);
    }

    /* JADX INFO: renamed from: org.telegram.ui.SessionBottomSheet$8 */
    class ViewOnClickListenerC66778 implements View.OnClickListener {
        final /* synthetic */ Callback val$callback;
        final /* synthetic */ BaseFragment val$fragment;
        final /* synthetic */ TLRPC.TL_authorization val$session;

        ViewOnClickListenerC66778(Callback callback, TLRPC.TL_authorization tL_authorization, BaseFragment baseFragment) {
            this.val$callback = callback;
            this.val$session = tL_authorization;
            this.val$fragment = baseFragment;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AlertDialog.Builder builder = new AlertDialog.Builder(SessionBottomSheet.this.parentFragment.getParentActivity());
            builder.setMessage(LocaleController.getString(C2888R.string.TerminateSessionText));
            builder.setTitle(LocaleController.getString(C2888R.string.AreYouSureSessionTitle));
            String string = LocaleController.getString(C2888R.string.Terminate);
            final Callback callback = this.val$callback;
            final TLRPC.TL_authorization tL_authorization = this.val$session;
            builder.setPositiveButton(string, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.SessionBottomSheet$8$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$onClick$0(callback, tL_authorization, alertDialog, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
            AlertDialog alertDialogCreate = builder.create();
            this.val$fragment.showDialog(alertDialogCreate);
            TextView textView = (TextView) alertDialogCreate.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$0(Callback callback, TLRPC.TL_authorization tL_authorization, AlertDialog alertDialog, int i) {
            callback.onSessionTerminated(tL_authorization);
            SessionBottomSheet.this.lambda$new$0();
        }
    }

    private boolean acceptCallsEnabled(TLRPC.TL_authorization tL_authorization) {
        return tL_authorization.api_id != 22;
    }

    private boolean secretChatsEnabled(TLRPC.TL_authorization tL_authorization) {
        int i = tL_authorization.api_id;
        return (i == 2040 || i == 2496) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadSessionSettings() {
        TL_account.changeAuthorizationSettings changeauthorizationsettings = new TL_account.changeAuthorizationSettings();
        TLRPC.TL_authorization tL_authorization = this.session;
        changeauthorizationsettings.encrypted_requests_disabled = tL_authorization.encrypted_requests_disabled;
        changeauthorizationsettings.call_requests_disabled = tL_authorization.call_requests_disabled;
        changeauthorizationsettings.flags = 3;
        changeauthorizationsettings.hash = tL_authorization.hash;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(changeauthorizationsettings, new RequestDelegate() { // from class: org.telegram.ui.SessionBottomSheet$$ExternalSyntheticLambda1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                SessionBottomSheet.$r8$lambda$vKDcJ0X1ZP1ewonnzJv9wWdCnF4(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void copyText(final String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setItems(new CharSequence[]{LocaleController.getString(C2888R.string.Copy)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.SessionBottomSheet$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.lambda$copyText$1(str, dialogInterface, i);
            }
        });
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$copyText$1(String str, DialogInterface dialogInterface, int i) {
        ((ClipboardManager) ApplicationLoader.applicationContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", str));
        BulletinFactory.m1245of(getContainer(), null).createCopyBulletin(LocaleController.getString(C2888R.string.TextCopied)).show();
    }

    private void setAnimation(TLRPC.TL_authorization tL_authorization, RLottieImageView rLottieImageView) {
        int i;
        int i2;
        int i3;
        String lowerCase = tL_authorization.platform.toLowerCase();
        if (lowerCase.isEmpty()) {
            lowerCase = tL_authorization.system_version.toLowerCase();
        }
        String lowerCase2 = tL_authorization.device_model.toLowerCase();
        boolean z = true;
        if (lowerCase2.contains("safari")) {
            i = C2888R.raw.safari_30;
            i2 = Theme.key_avatar_backgroundPink;
            i3 = Theme.key_avatar_background2Pink;
        } else if (lowerCase2.contains("edge")) {
            i = C2888R.raw.edge_30;
            i2 = Theme.key_avatar_backgroundPink;
            i3 = Theme.key_avatar_background2Pink;
        } else if (lowerCase2.contains("chrome")) {
            i = C2888R.raw.chrome_30;
            i2 = Theme.key_avatar_backgroundPink;
            i3 = Theme.key_avatar_background2Pink;
        } else if (lowerCase2.contains("firefox")) {
            i = C2888R.raw.firefox_30;
            i2 = Theme.key_avatar_backgroundRed;
            i3 = Theme.key_avatar_background2Red;
        } else if (lowerCase2.contains("opera") || lowerCase2.contains("firefox") || lowerCase2.contains("vivaldi")) {
            if (lowerCase2.contains("opera")) {
                i = C2888R.drawable.device_web_opera;
            } else if (lowerCase2.contains("firefox")) {
                i = C2888R.drawable.device_web_firefox;
            } else {
                i = C2888R.drawable.device_web_other;
            }
            i2 = Theme.key_avatar_backgroundPink;
            i3 = Theme.key_avatar_background2Pink;
            z = false;
        } else if (lowerCase.contains("ubuntu")) {
            i = C2888R.raw.ubuntu_30;
            i2 = Theme.key_avatar_backgroundBlue;
            i3 = Theme.key_avatar_background2Blue;
        } else if (lowerCase.contains("linux")) {
            i = C2888R.raw.linux_30;
            i2 = Theme.key_avatar_backgroundBlue;
            i3 = Theme.key_avatar_background2Blue;
        } else if (lowerCase.contains("ios")) {
            i = lowerCase2.contains("ipad") ? C2888R.raw.ipad_30 : C2888R.raw.iphone_30;
            i2 = Theme.key_avatar_backgroundBlue;
            i3 = Theme.key_avatar_background2Blue;
        } else if (lowerCase.contains("windows")) {
            i = C2888R.raw.windows_30;
            i2 = Theme.key_avatar_backgroundCyan;
            i3 = Theme.key_avatar_background2Cyan;
        } else if (lowerCase.contains("macos")) {
            i = C2888R.raw.mac_30;
            i2 = Theme.key_avatar_backgroundCyan;
            i3 = Theme.key_avatar_background2Cyan;
        } else if (lowerCase.contains("android")) {
            i = C2888R.raw.android_30;
            i2 = Theme.key_avatar_backgroundGreen;
            i3 = Theme.key_avatar_background2Green;
        } else if (tL_authorization.app_name.toLowerCase().contains("desktop")) {
            i = C2888R.raw.windows_30;
            i2 = Theme.key_avatar_backgroundCyan;
            i3 = Theme.key_avatar_background2Cyan;
        } else {
            i = C2888R.raw.chrome_30;
            i2 = Theme.key_avatar_backgroundPink;
            i3 = Theme.key_avatar_background2Pink;
        }
        boolean zContains = tL_authorization.app_name.toLowerCase().contains("exteragram");
        if (zContains) {
            rLottieImageView.setBackground(Theme.createCircleDrawable(AndroidUtilities.m1124dp(42.0f), ContextCompat.getColor(ApplicationLoader.applicationContext, C2888R.color.ic_background)));
        } else {
            rLottieImageView.setBackground(new SessionCell.CircleGradientDrawable(AndroidUtilities.m1124dp(42.0f), Theme.getColor(i2), Theme.getColor(i3)));
        }
        if (z && !zContains) {
            rLottieImageView.setAnimation(i, 50, 50, new int[]{0, Theme.getColor(i2)});
            return;
        }
        Context context = getContext();
        if (zContains) {
            i = C2888R.drawable.ic_foreground;
        }
        Drawable drawableMutate = ContextCompat.getDrawable(context, i).mutate();
        if (zContains) {
            drawableMutate = new BitmapDrawable(ApplicationLoader.applicationContext.getResources(), UIUtil.drawableToBitmap(drawableMutate, AndroidUtilities.m1124dp(70.0f), AndroidUtilities.m1124dp(70.0f)));
        }
        rLottieImageView.setImageDrawable(drawableMutate);
    }

    private static class ItemView extends FrameLayout {
        TextView descriptionText;
        ImageView iconView;
        boolean needDivider;
        Switch switchView;
        TextView valueText;

        public ItemView(Context context, boolean z) {
            super(context);
            this.needDivider = false;
            ImageView imageView = new ImageView(context);
            this.iconView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            addView(this.iconView, LayoutHelper.createFrame(32, 32.0f, 0, 12.0f, 4.0f, 0.0f, 0.0f));
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f, 0, 64.0f, 4.0f, 0.0f, 4.0f));
            TextView textView = new TextView(context);
            this.valueText = textView;
            textView.setTextSize(2, 16.0f);
            this.valueText.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
            this.valueText.setGravity(3);
            this.valueText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            linearLayout.addView(this.valueText, LayoutHelper.createLinear(-1, -2, 0, 0, 0, z ? 64 : 0, 0));
            TextView textView2 = new TextView(context);
            this.descriptionText = textView2;
            textView2.setTextSize(2, 13.0f);
            this.descriptionText.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
            this.descriptionText.setGravity(3);
            this.descriptionText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
            linearLayout.addView(this.descriptionText, LayoutHelper.createLinear(-1, -2, 0, 0, 4, z ? 64 : 0, 0));
            setPadding(0, AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f));
            if (z) {
                Switch r3 = new Switch(context);
                this.switchView = r3;
                r3.setDrawIconType(1);
                addView(this.switchView, LayoutHelper.createFrame(37, 40.0f, 21, 21.0f, 0.0f, 21.0f, 0.0f));
            }
            setClipChildren(false);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            if (this.needDivider) {
                canvas.drawRect(AndroidUtilities.m1124dp(64.0f), getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight(), Theme.dividerPaint);
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            if (this.switchView != null) {
                accessibilityNodeInfo.setClassName("android.widget.Switch");
                accessibilityNodeInfo.setCheckable(true);
                accessibilityNodeInfo.setChecked(this.switchView.isChecked());
                StringBuilder sb = new StringBuilder();
                sb.append((Object) this.valueText.getText());
                sb.append("\n");
                sb.append((Object) this.descriptionText.getText());
                sb.append("\n");
                sb.append(LocaleController.getString(this.switchView.isChecked() ? C2888R.string.NotificationsOn : C2888R.string.NotificationsOff));
                accessibilityNodeInfo.setText(sb.toString());
            }
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        this.imageView.playAnimation();
    }
}
