package org.telegram.ui;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.Property;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SRPHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Cells.EditTextSettingsCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Cells.TextSettingsCell;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.EmptyTextProgressView;
import org.telegram.ui.Components.FragmentFloatingButton;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.OutlineTextContainerView;
import org.telegram.ui.Components.RLottieImageView;
import org.telegram.ui.Components.RadialProgressView;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.TransformableLoginButtonView;
import org.telegram.ui.Components.VerticalPositionAutoAnimator;

/* JADX INFO: loaded from: classes6.dex */
public class TwoStepVerificationActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private SimpleTextView bottomButton;
    private TextView bottomTextView;
    private TextView cancelResetButton;

    @Keep
    private int changePasswordRow;
    private int changeRecoveryEmailRow;
    private TL_account.Password currentPassword;
    private byte[] currentSecret;
    private long currentSecretId;
    private TwoStepVerificationActivityDelegate delegate;
    private int delegateType;
    private String delegateTypeString;
    private boolean destroyed;
    private int emailRow;
    private EmptyTextProgressView emptyView;
    private FragmentFloatingButton floatingButton;
    private TransformableLoginButtonView floatingButtonIcon;
    private boolean forgotPasswordOnShow;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private boolean loading;
    private RLottieImageView lockImageView;
    private EditTextBoldCursor passwordEditText;
    private int passwordEnabledDetailRow;
    private OutlineTextContainerView passwordOutlineView;
    private boolean paused;
    private boolean postedErrorColorTimeout;
    public boolean preloaded;
    private AlertDialog progressDialog;
    private RadialProgressView radialProgressView;
    private boolean resetPasswordOnShow;
    private TextView resetWaitView;
    private int rowCount;
    private ScrollView scrollView;
    private int setPasswordDetailRow;
    private int setPasswordRow;
    private int setRecoveryEmailRow;
    private TextView subtitleTextView;
    private TextView titleTextView;

    @Keep
    private int turnPasswordOffRow;
    private boolean passwordEntered = true;
    private byte[] currentPasswordHash = new byte[0];
    private Runnable errorColorTimeout = new Runnable() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda17
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$0();
        }
    };
    int otherwiseReloginDays = -1;
    private Runnable updateTimeRunnable = new Runnable() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda18
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.updateBottomButton();
        }
    };

    public interface TwoStepVerificationActivityDelegate {
        void didEnterPassword(TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP);
    }

    public static /* synthetic */ void $r8$lambda$EyZs2Vj77WIiBXIn2wQ6SmDpO2I(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.postedErrorColorTimeout = false;
        this.passwordOutlineView.animateError(0.0f);
    }

    public void setPassword(TL_account.Password password) {
        this.currentPassword = password;
        this.passwordEntered = false;
    }

    public void setCurrentPasswordParams(TL_account.Password password, byte[] bArr, long j, byte[] bArr2) {
        this.currentPassword = password;
        this.currentPasswordHash = bArr;
        this.currentSecret = bArr2;
        this.currentSecretId = j;
        this.passwordEntered = (bArr != null && bArr.length > 0) || !password.has_password;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        if (!this.preloaded) {
            preload(null);
        }
        updateRows();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.twoStepPasswordChanged);
        return true;
    }

    public void preload(Runnable runnable) {
        byte[] bArr;
        this.preloaded = false;
        TL_account.Password password = this.currentPassword;
        if (password == null || password.current_algo == null || (bArr = this.currentPasswordHash) == null || bArr.length <= 0) {
            loadPasswordInfo(true, password != null, runnable);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        AndroidUtilities.cancelRunOnUIThread(this.updateTimeRunnable);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.twoStepPasswordChanged);
        this.destroyed = true;
        AlertDialog alertDialog = this.progressDialog;
        if (alertDialog != null) {
            try {
                alertDialog.dismiss();
            } catch (Exception e) {
                FileLog.m955e(e);
            }
            this.progressDialog = null;
        }
        AndroidUtilities.removeAdjustResize(getParentActivity(), this.classGuid);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00be  */
    @Override // org.telegram.ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View createView(Context context) {
        int i;
        this.actionBar.setBackButtonImage(C2484R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(false);
        if (!this.passwordEntered || this.delegate != null) {
            this.actionBar.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            ActionBar actionBar = this.actionBar;
            int i2 = Theme.key_windowBackgroundWhiteBlackText;
            actionBar.setTitleColor(Theme.getColor(i2));
            this.actionBar.setItemsColor(Theme.getColor(i2), false);
            this.actionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarWhiteSelector), false);
            this.actionBar.setCastShadows(false);
        }
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.TwoStepVerificationActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i3) {
                if (i3 == -1) {
                    TwoStepVerificationActivity twoStepVerificationActivity = TwoStepVerificationActivity.this;
                    if (twoStepVerificationActivity.otherwiseReloginDays >= 0) {
                        twoStepVerificationActivity.showSetForcePasswordAlert();
                    } else {
                        twoStepVerificationActivity.finishFragment();
                    }
                }
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        int i3 = Theme.key_windowBackgroundWhite;
        frameLayout.setBackgroundColor(Theme.getColor(i3));
        ScrollView scrollView = new ScrollView(context);
        this.scrollView = scrollView;
        scrollView.setFillViewport(true);
        frameLayout.addView(this.scrollView, LayoutHelper.createFrame(-1, -1.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        this.scrollView.addView(linearLayout, LayoutHelper.createScroll(-1, -2, 51));
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.lockImageView = rLottieImageView;
        rLottieImageView.setAnimation(C2484R.raw.tsv_setup_intro, 100, 100);
        this.lockImageView.playAnimation();
        RLottieImageView rLottieImageView2 = this.lockImageView;
        if (!AndroidUtilities.isSmallScreen()) {
            Point point = AndroidUtilities.displaySize;
            i = (point.x <= point.y || AndroidUtilities.isTablet()) ? 0 : 8;
        }
        rLottieImageView2.setVisibility(i);
        linearLayout.addView(this.lockImageView, LayoutHelper.createLinear(100, 100, 1));
        TextView textView = new TextView(context);
        this.titleTextView = textView;
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(Theme.getColor(i4));
        this.titleTextView.setTextSize(1, 18.0f);
        this.titleTextView.setGravity(1);
        this.titleTextView.setTypeface(AndroidUtilities.bold());
        linearLayout.addView(this.titleTextView, LayoutHelper.createLinear(-2, -2, 1, 24, 8, 24, 0));
        TextView textView2 = new TextView(context);
        this.subtitleTextView = textView2;
        int i5 = Theme.key_windowBackgroundWhiteGrayText6;
        textView2.setTextColor(Theme.getColor(i5));
        this.subtitleTextView.setTextSize(1, 15.0f);
        this.subtitleTextView.setGravity(1);
        this.subtitleTextView.setVisibility(8);
        linearLayout.addView(this.subtitleTextView, LayoutHelper.createLinear(-2, -2, 1, 42, 8, 42, 0));
        OutlineTextContainerView outlineTextContainerView = new OutlineTextContainerView(context);
        this.passwordOutlineView = outlineTextContainerView;
        outlineTextContainerView.setText(LocaleController.getString(C2484R.string.EnterPassword));
        this.passwordOutlineView.animateSelection(1.0f, false);
        linearLayout.addView(this.passwordOutlineView, LayoutHelper.createLinear(-1, -2, 1, 24, 24, 24, 0));
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
        this.passwordEditText = editTextBoldCursor;
        editTextBoldCursor.setTextSize(1, 18.0f);
        this.passwordEditText.setTextColor(Theme.getColor(i4));
        this.passwordEditText.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText));
        this.passwordEditText.setBackground(null);
        this.passwordEditText.setSingleLine(true);
        this.passwordEditText.setInputType(129);
        this.passwordEditText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        this.passwordEditText.setTypeface(Typeface.DEFAULT);
        EditTextBoldCursor editTextBoldCursor2 = this.passwordEditText;
        int i6 = Theme.key_windowBackgroundWhiteInputFieldActivated;
        editTextBoldCursor2.setCursorColor(Theme.getColor(i6));
        this.passwordEditText.setCursorWidth(1.5f);
        this.passwordEditText.setContentDescription(LocaleController.getString(C2484R.string.EnterPassword));
        int iDp = AndroidUtilities.dp(16.0f);
        this.passwordEditText.setPadding(iDp, iDp, iDp, iDp);
        this.passwordOutlineView.addView(this.passwordEditText, LayoutHelper.createFrame(-1, -2.0f));
        this.passwordOutlineView.attachEditText(this.passwordEditText);
        this.passwordEditText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                this.f$0.lambda$createView$1(view, z);
            }
        });
        this.passwordEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda5
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView3, int i7, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$2(textView3, i7, keyEvent);
            }
        });
        this.passwordEditText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.TwoStepVerificationActivity.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i7, int i8, int i9) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i7, int i8, int i9) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (TwoStepVerificationActivity.this.postedErrorColorTimeout) {
                    AndroidUtilities.cancelRunOnUIThread(TwoStepVerificationActivity.this.errorColorTimeout);
                    TwoStepVerificationActivity.this.errorColorTimeout.run();
                }
            }
        });
        TextView textView3 = new TextView(context);
        this.bottomTextView = textView3;
        textView3.setTextColor(Theme.getColor(i5));
        this.bottomTextView.setTextSize(1, 14.0f);
        this.bottomTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        this.bottomTextView.setText(LocaleController.getString(C2484R.string.YourEmailInfo));
        linearLayout.addView(this.bottomTextView, LayoutHelper.createLinear(-2, -2, (LocaleController.isRTL ? 5 : 3) | 48, 40, 30, 40, 0));
        TextView textView4 = new TextView(context);
        this.resetWaitView = textView4;
        textView4.setTextColor(Theme.getColor(i5));
        this.resetWaitView.setTextSize(1, 12.0f);
        this.resetWaitView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        linearLayout.addView(this.resetWaitView, LayoutHelper.createLinear(-1, -2, 40.0f, 8.0f, 40.0f, 0.0f));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        linearLayout2.setGravity(80);
        linearLayout2.setClipChildren(false);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, 0, 1.0f));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.bottomButton = simpleTextView;
        simpleTextView.setTextSize(15);
        this.bottomButton.setGravity(19);
        this.bottomButton.setPadding(AndroidUtilities.dp(32.0f), 0, AndroidUtilities.dp(32.0f), 0);
        frameLayout.addView(this.bottomButton, LayoutHelper.createFrame(-1, 56.0f, 80, 0.0f, 0.0f, 0.0f, 16.0f));
        this.bottomButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$3(view);
            }
        });
        VerticalPositionAutoAnimator.attach(this.bottomButton);
        TextView textView5 = new TextView(context);
        this.cancelResetButton = textView5;
        textView5.setTextSize(1, 15.0f);
        this.cancelResetButton.setGravity(19);
        this.cancelResetButton.setPadding(AndroidUtilities.dp(32.0f), 0, AndroidUtilities.dp(32.0f), 0);
        this.cancelResetButton.setText(LocaleController.getString(C2484R.string.CancelReset));
        this.cancelResetButton.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4));
        this.cancelResetButton.setVisibility(8);
        frameLayout.addView(this.cancelResetButton, LayoutHelper.createFrame(-1, 56.0f, 80, 0.0f, 0.0f, 0.0f, 16.0f));
        this.cancelResetButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$4(view);
            }
        });
        VerticalPositionAutoAnimator.attach(this.cancelResetButton);
        FragmentFloatingButton fragmentFloatingButton = new FragmentFloatingButton(context, this.resourceProvider);
        this.floatingButton = fragmentFloatingButton;
        VerticalPositionAutoAnimator.attach(fragmentFloatingButton);
        this.floatingButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$5(view);
            }
        });
        TransformableLoginButtonView transformableLoginButtonView = new TransformableLoginButtonView(context);
        this.floatingButtonIcon = transformableLoginButtonView;
        transformableLoginButtonView.setTransformType(1);
        this.floatingButtonIcon.setProgress(0.0f);
        this.floatingButtonIcon.setColor(Theme.getColor(Theme.key_chats_actionIcon));
        this.floatingButtonIcon.setDrawBackground(false);
        this.floatingButton.setContentDescription(LocaleController.getString(C2484R.string.Next));
        this.floatingButton.addView(this.floatingButtonIcon, LayoutHelper.createFrame(56, 56, 17));
        this.floatingButton.addAdditionalView(this.floatingButtonIcon);
        frameLayout.addView(this.floatingButton, FragmentFloatingButton.createDefaultLayoutParams());
        EmptyTextProgressView emptyTextProgressView = new EmptyTextProgressView(context);
        this.emptyView = emptyTextProgressView;
        emptyTextProgressView.showProgress();
        frameLayout.addView(this.emptyView, LayoutHelper.createFrame(-1, -1.0f));
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setSections(true);
        this.listView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        this.listView.setEmptyView(this.emptyView);
        this.listView.setVerticalScrollBarEnabled(false);
        frameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        RecyclerListView recyclerListView2 = this.listView;
        ListAdapter listAdapter = new ListAdapter(context);
        this.listAdapter = listAdapter;
        recyclerListView2.setAdapter(listAdapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda9
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i7) {
                this.f$0.lambda$createView$7(view, i7);
            }
        });
        RadialProgressView radialProgressView = new RadialProgressView(context) { // from class: org.telegram.ui.TwoStepVerificationActivity.3
            @Override // android.view.View
            protected void onMeasure(int i7, int i8) {
                super.onMeasure(i7, i8);
                ((ViewGroup.MarginLayoutParams) getLayoutParams()).topMargin = AndroidUtilities.statusBarHeight / 2;
            }
        };
        this.radialProgressView = radialProgressView;
        radialProgressView.setSize(AndroidUtilities.dp(20.0f));
        this.radialProgressView.setAlpha(0.0f);
        this.radialProgressView.setScaleX(0.1f);
        this.radialProgressView.setScaleY(0.1f);
        this.radialProgressView.setProgressColor(Theme.getColor(i6));
        this.actionBar.addView(this.radialProgressView, LayoutHelper.createFrame(32, 32.0f, 21, 0.0f, 0.0f, 12.0f, 0.0f));
        updateRows();
        if (this.passwordEntered && this.delegate == null) {
            this.actionBar.setTitle(LocaleController.getString(C2484R.string.TwoStepVerificationTitle));
        } else {
            this.actionBar.setTitle(null);
        }
        if (this.delegate != null) {
            this.titleTextView.setText(LocaleController.getString(C2484R.string.YourPassword));
            int i7 = this.delegateType;
            if (i7 == 1) {
                this.subtitleTextView.setText(LocaleController.getString(C2484R.string.PleaseEnterCurrentPasswordWithdraw));
            } else if (i7 == 2) {
                this.subtitleTextView.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2484R.string.PleaseEnterCurrentPasswordGiftTransfer, this.delegateTypeString)));
            } else {
                this.subtitleTextView.setText(LocaleController.getString(C2484R.string.PleaseEnterCurrentPasswordTransfer));
            }
            this.subtitleTextView.setVisibility(0);
        } else {
            this.titleTextView.setText(LocaleController.getString(C2484R.string.YourPassword));
            this.subtitleTextView.setVisibility(0);
            this.subtitleTextView.setText(LocaleController.getString(C2484R.string.LoginPasswordTextShort));
        }
        if (this.passwordEntered) {
            View view = this.fragmentView;
            int i8 = Theme.key_windowBackgroundGray;
            view.setBackgroundColor(Theme.getColor(i8));
            this.fragmentView.setTag(Integer.valueOf(i8));
        } else {
            this.fragmentView.setBackgroundColor(Theme.getColor(i3));
            this.fragmentView.setTag(Integer.valueOf(i3));
        }
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view, boolean z) {
        this.passwordOutlineView.animateSelection(z ? 1.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$2(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5 && i != 6) {
            return false;
        }
        processDone();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(View view) {
        onPasswordForgot();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(View view) {
        cancelPasswordReset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(View view) {
        processDone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7(View view, int i) {
        if (i == this.setPasswordRow || i == this.changePasswordRow) {
            TwoStepVerificationSetupActivity twoStepVerificationSetupActivity = new TwoStepVerificationSetupActivity(this.currentAccount, 0, this.currentPassword);
            twoStepVerificationSetupActivity.addFragmentToClose(this);
            twoStepVerificationSetupActivity.setCurrentPasswordParams(this.currentPasswordHash, this.currentSecretId, this.currentSecret, false);
            presentFragment(twoStepVerificationSetupActivity);
            return;
        }
        if (i == this.setRecoveryEmailRow || i == this.changeRecoveryEmailRow) {
            TwoStepVerificationSetupActivity twoStepVerificationSetupActivity2 = new TwoStepVerificationSetupActivity(this.currentAccount, 3, this.currentPassword);
            twoStepVerificationSetupActivity2.addFragmentToClose(this);
            twoStepVerificationSetupActivity2.setCurrentPasswordParams(this.currentPasswordHash, this.currentSecretId, this.currentSecret, true);
            presentFragment(twoStepVerificationSetupActivity2);
            return;
        }
        if (i == this.turnPasswordOffRow) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            String string = LocaleController.getString(C2484R.string.TurnPasswordOffQuestion);
            if (this.currentPassword.has_secure_values) {
                string = string + "\n\n" + LocaleController.getString(C2484R.string.TurnPasswordOffPassport);
            }
            String string2 = LocaleController.getString(C2484R.string.TurnPasswordOffQuestionTitle);
            String string3 = LocaleController.getString(C2484R.string.Disable);
            builder.setMessage(string);
            builder.setTitle(string2);
            builder.setPositiveButton(string3, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda16
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    this.f$0.lambda$createView$6(alertDialog, i2);
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2484R.string.Cancel), null);
            AlertDialog alertDialogCreate = builder.create();
            showDialog(alertDialogCreate);
            TextView textView = (TextView) alertDialogCreate.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(AlertDialog alertDialog, int i) {
        clearPassword();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001c  */
    @Override // org.telegram.ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onConfigurationChanged(Configuration configuration) {
        int i;
        super.onConfigurationChanged(configuration);
        RLottieImageView rLottieImageView = this.lockImageView;
        if (!AndroidUtilities.isSmallScreen()) {
            Point point = AndroidUtilities.displaySize;
            i = (point.x <= point.y || AndroidUtilities.isTablet()) ? 0 : 8;
        }
        rLottieImageView.setVisibility(i);
    }

    private void cancelPasswordReset() {
        if (getParentActivity() == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setPositiveButton(LocaleController.getString(C2484R.string.CancelPasswordResetYes), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda15
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$cancelPasswordReset$10(alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2484R.string.CancelPasswordResetNo), null);
        builder.setTitle(LocaleController.getString(C2484R.string.CancelReset));
        builder.setMessage(LocaleController.getString(C2484R.string.CancelPasswordReset));
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelPasswordReset$10(AlertDialog alertDialog, int i) {
        getConnectionsManager().sendRequest(new TL_account.declinePasswordReset(), new RequestDelegate() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda25
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$cancelPasswordReset$9(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelPasswordReset$9(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cancelPasswordReset$8(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelPasswordReset$8(TLObject tLObject) {
        if (tLObject instanceof TLRPC.TL_boolTrue) {
            this.currentPassword.pending_reset_date = 0;
            updateBottomButton();
        }
    }

    public void setForgotPasswordOnShow() {
        this.forgotPasswordOnShow = true;
    }

    private void resetPassword() {
        needShowProgress(true);
        getConnectionsManager().sendRequest(new TL_account.resetPassword(), new RequestDelegate() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda10
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$resetPassword$13(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resetPassword$13(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$resetPassword$12(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resetPassword$12(TLObject tLObject) {
        String pluralString;
        needHideProgress();
        if (tLObject instanceof TL_account.resetPasswordOk) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setNegativeButton(LocaleController.getString(C2484R.string.OK), null);
            builder.setTitle(LocaleController.getString(C2484R.string.ResetPassword));
            builder.setMessage(LocaleController.getString(C2484R.string.RestorePasswordResetPasswordOk));
            showDialog(builder.create(), new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda24
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.f$0.lambda$resetPassword$11(dialogInterface);
                }
            });
            return;
        }
        if (tLObject instanceof TL_account.resetPasswordRequestedWait) {
            this.currentPassword.pending_reset_date = ((TL_account.resetPasswordRequestedWait) tLObject).until_date;
            updateBottomButton();
            return;
        }
        if (tLObject instanceof TL_account.resetPasswordFailedWait) {
            int currentTime = ((TL_account.resetPasswordFailedWait) tLObject).retry_date - getConnectionsManager().getCurrentTime();
            if (currentTime > 86400) {
                pluralString = LocaleController.formatPluralString("Days", currentTime / 86400, new Object[0]);
            } else if (currentTime > 3600) {
                pluralString = LocaleController.formatPluralString("Hours", currentTime / 86400, new Object[0]);
            } else if (currentTime > 60) {
                pluralString = LocaleController.formatPluralString("Minutes", currentTime / 60, new Object[0]);
            } else {
                pluralString = LocaleController.formatPluralString("Seconds", Math.max(1, currentTime), new Object[0]);
            }
            showAlertWithText(LocaleController.getString(C2484R.string.ResetPassword), LocaleController.formatString("ResetPasswordWait", C2484R.string.ResetPasswordWait, pluralString));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resetPassword$11(DialogInterface dialogInterface) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didSetOrRemoveTwoStepPassword, new Object[0]);
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateBottomButton() {
        String pluralString;
        if (this.passwordEntered) {
            return;
        }
        if (this.currentPassword.pending_reset_date != 0) {
            int currentTime = getConnectionsManager().getCurrentTime();
            int i = this.currentPassword.pending_reset_date;
            if (currentTime > i) {
                if (this.resetWaitView.getVisibility() != 8) {
                    this.resetWaitView.setVisibility(8);
                }
                if (this.currentPassword.pending_reset_date == 0) {
                    this.bottomButton.setText(LocaleController.getString(C2484R.string.ForgotPassword));
                    this.cancelResetButton.setVisibility(8);
                    this.bottomButton.setVisibility(0);
                } else {
                    this.bottomButton.setText(LocaleController.getString(C2484R.string.ResetPassword));
                    this.cancelResetButton.setVisibility(0);
                    this.bottomButton.setVisibility(0);
                }
                this.bottomButton.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4));
                AndroidUtilities.cancelRunOnUIThread(this.updateTimeRunnable);
            } else {
                int iMax = Math.max(1, i - getConnectionsManager().getCurrentTime());
                if (iMax > 86400) {
                    pluralString = LocaleController.formatPluralString("Days", iMax / 86400, new Object[0]);
                } else if (iMax >= 3600) {
                    pluralString = LocaleController.formatPluralString("Hours", iMax / 3600, new Object[0]);
                } else {
                    pluralString = String.format(Locale.US, "%02d:%02d", Integer.valueOf(iMax / 60), Integer.valueOf(iMax % 60));
                }
                this.resetWaitView.setText(LocaleController.formatString("RestorePasswordResetIn", C2484R.string.RestorePasswordResetIn, pluralString));
                this.resetWaitView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText6));
                if (this.bottomButton.getVisibility() != 8) {
                    this.bottomButton.setVisibility(8);
                }
                if (this.resetWaitView.getVisibility() != 0) {
                    this.resetWaitView.setVisibility(0);
                }
                this.cancelResetButton.setVisibility(0);
                AndroidUtilities.cancelRunOnUIThread(this.updateTimeRunnable);
                AndroidUtilities.runOnUIThread(this.updateTimeRunnable, 1000L);
            }
        }
        if (this.currentPassword == null || this.bottomButton == null || this.resetWaitView.getVisibility() != 0) {
            AndroidUtilities.cancelRunOnUIThread(this.updateTimeRunnable);
            TextView textView = this.cancelResetButton;
            if (textView != null) {
                textView.setVisibility(8);
            }
        }
    }

    private void onPasswordForgot() {
        TL_account.Password password = this.currentPassword;
        if (password.pending_reset_date == 0 && password.has_recovery) {
            needShowProgress(true);
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLRPC.TL_auth_requestPasswordRecovery(), new RequestDelegate() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda1
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$onPasswordForgot$15(tLObject, tL_error);
                }
            }, 10);
            return;
        }
        if (getParentActivity() == null) {
            return;
        }
        if (this.currentPassword.pending_reset_date != 0) {
            if (getConnectionsManager().getCurrentTime() > this.currentPassword.pending_reset_date) {
                AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                builder.setPositiveButton(LocaleController.getString(C2484R.string.Reset), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda2
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        this.f$0.lambda$onPasswordForgot$16(alertDialog, i);
                    }
                });
                builder.setNegativeButton(LocaleController.getString(C2484R.string.Cancel), null);
                builder.setTitle(LocaleController.getString(C2484R.string.ResetPassword));
                builder.setMessage(LocaleController.getString(C2484R.string.RestorePasswordResetPasswordText));
                AlertDialog alertDialogCreate = builder.create();
                showDialog(alertDialogCreate);
                TextView textView = (TextView) alertDialogCreate.getButton(-1);
                if (textView != null) {
                    textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                    return;
                }
                return;
            }
            cancelPasswordReset();
            return;
        }
        AlertDialog.Builder builder2 = new AlertDialog.Builder(getParentActivity());
        builder2.setPositiveButton(LocaleController.getString(C2484R.string.Reset), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$onPasswordForgot$17(alertDialog, i);
            }
        });
        builder2.setNegativeButton(LocaleController.getString(C2484R.string.Cancel), null);
        builder2.setTitle(LocaleController.getString(C2484R.string.ResetPassword));
        builder2.setMessage(LocaleController.getString(C2484R.string.RestorePasswordNoEmailText2));
        showDialog(builder2.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPasswordForgot$15(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onPasswordForgot$14(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPasswordForgot$14(TLRPC.TL_error tL_error, TLObject tLObject) {
        String pluralString;
        needHideProgress();
        if (tL_error == null) {
            TL_account.Password password = this.currentPassword;
            password.email_unconfirmed_pattern = ((TLRPC.TL_auth_passwordRecovery) tLObject).email_pattern;
            TwoStepVerificationSetupActivity twoStepVerificationSetupActivity = new TwoStepVerificationSetupActivity(this.currentAccount, 4, password) { // from class: org.telegram.ui.TwoStepVerificationActivity.4
                @Override // org.telegram.ui.TwoStepVerificationSetupActivity
                protected void onReset() {
                    TwoStepVerificationActivity.this.resetPasswordOnShow = true;
                }
            };
            twoStepVerificationSetupActivity.addFragmentToClose(this);
            twoStepVerificationSetupActivity.setCurrentPasswordParams(this.currentPasswordHash, this.currentSecretId, this.currentSecret, false);
            presentFragment(twoStepVerificationSetupActivity);
            return;
        }
        if (tL_error.text.startsWith("FLOOD_WAIT")) {
            int iIntValue = Utilities.parseInt((CharSequence) tL_error.text).intValue();
            if (iIntValue < 60) {
                pluralString = LocaleController.formatPluralString("Seconds", iIntValue, new Object[0]);
            } else {
                pluralString = LocaleController.formatPluralString("Minutes", iIntValue / 60, new Object[0]);
            }
            showAlertWithText(LocaleController.getString(C2484R.string.AppName), LocaleController.formatString("FloodWaitTime", C2484R.string.FloodWaitTime, pluralString));
            return;
        }
        showAlertWithText(LocaleController.getString(C2484R.string.AppName), tL_error.text);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPasswordForgot$16(AlertDialog alertDialog, int i) {
        resetPassword();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPasswordForgot$17(AlertDialog alertDialog, int i) {
        resetPassword();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        Object obj;
        if (i == NotificationCenter.twoStepPasswordChanged) {
            if (objArr != null && objArr.length > 0 && (obj = objArr[0]) != null) {
                this.currentPasswordHash = (byte[]) obj;
            }
            loadPasswordInfo(false, false, null);
            updateRows();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        this.paused = true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        this.paused = false;
        AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
    }

    public void setCurrentPasswordInfo(byte[] bArr, TL_account.Password password) {
        if (bArr != null) {
            this.currentPasswordHash = bArr;
        }
        this.currentPassword = password;
    }

    public void setDelegate(int i, TwoStepVerificationActivityDelegate twoStepVerificationActivityDelegate) {
        this.delegateType = i;
        this.delegate = twoStepVerificationActivityDelegate;
    }

    public void setDelegateString(String str) {
        this.delegateTypeString = str;
    }

    public static boolean canHandleCurrentPassword(TL_account.Password password, boolean z) {
        return z ? !(password.current_algo instanceof TLRPC.TL_passwordKdfAlgoUnknown) : ((password.new_algo instanceof TLRPC.TL_passwordKdfAlgoUnknown) || (password.current_algo instanceof TLRPC.TL_passwordKdfAlgoUnknown) || (password.new_secure_algo instanceof TLRPC.TL_securePasswordKdfAlgoUnknown)) ? false : true;
    }

    public static void initPasswordNewAlgo(TL_account.Password password) {
        TLRPC.PasswordKdfAlgo passwordKdfAlgo = password.new_algo;
        if (passwordKdfAlgo instanceof TLRPC.C2561xb6caa888) {
            TLRPC.C2561xb6caa888 c2561xb6caa888 = (TLRPC.C2561xb6caa888) passwordKdfAlgo;
            byte[] bArr = new byte[c2561xb6caa888.salt1.length + 32];
            Utilities.random.nextBytes(bArr);
            byte[] bArr2 = c2561xb6caa888.salt1;
            System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
            c2561xb6caa888.salt1 = bArr;
        }
        TLRPC.SecurePasswordKdfAlgo securePasswordKdfAlgo = password.new_secure_algo;
        if (securePasswordKdfAlgo instanceof TLRPC.TL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000) {
            TLRPC.TL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000 tL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000 = (TLRPC.TL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000) securePasswordKdfAlgo;
            byte[] bArr3 = new byte[tL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000.salt.length + 32];
            Utilities.random.nextBytes(bArr3);
            byte[] bArr4 = tL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000.salt;
            System.arraycopy(bArr4, 0, bArr3, 0, bArr4.length);
            tL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000.salt = bArr3;
        }
    }

    private void loadPasswordInfo(final boolean z, final boolean z2, final Runnable runnable) {
        if (!z2) {
            this.loading = true;
            ListAdapter listAdapter = this.listAdapter;
            if (listAdapter != null) {
                listAdapter.notifyDataSetChanged();
            }
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda12
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadPasswordInfo$19(z2, z, runnable, tLObject, tL_error);
            }
        }, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPasswordInfo$19(final boolean z, final boolean z2, final Runnable runnable, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadPasswordInfo$18(tL_error, tLObject, z, z2, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPasswordInfo$18(TLRPC.TL_error tL_error, TLObject tLObject, boolean z, boolean z2, Runnable runnable) {
        if (tL_error == null) {
            this.loading = false;
            TL_account.Password password = (TL_account.Password) tLObject;
            this.currentPassword = password;
            if (!canHandleCurrentPassword(password, false)) {
                AlertsCreator.showUpdateAppAlert(getParentActivity(), LocaleController.getString(C2484R.string.UpdateAppAlert), true);
                return;
            }
            if (!z || z2) {
                byte[] bArr = this.currentPasswordHash;
                this.passwordEntered = (bArr != null && bArr.length > 0) || !this.currentPassword.has_password;
            }
            initPasswordNewAlgo(this.currentPassword);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.didSetOrRemoveTwoStepPassword, this.currentPassword);
        }
        if (runnable != null) {
            runnable.run();
        }
        updateRows();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        super.onTransitionAnimationEnd(z, z2);
        if (z) {
            if (this.forgotPasswordOnShow) {
                onPasswordForgot();
                this.forgotPasswordOnShow = false;
            } else if (this.resetPasswordOnShow) {
                resetPassword();
                this.resetPasswordOnShow = false;
            }
        }
    }

    private void updateRows() {
        TL_account.Password password;
        StringBuilder sb = new StringBuilder();
        sb.append(this.setPasswordRow);
        sb.append(this.setPasswordDetailRow);
        sb.append(this.changePasswordRow);
        sb.append(this.turnPasswordOffRow);
        sb.append(this.setRecoveryEmailRow);
        sb.append(this.changeRecoveryEmailRow);
        sb.append(this.passwordEnabledDetailRow);
        sb.append(this.rowCount);
        this.rowCount = 0;
        this.setPasswordRow = -1;
        this.setPasswordDetailRow = -1;
        this.changePasswordRow = -1;
        this.turnPasswordOffRow = -1;
        this.emailRow = -1;
        this.setRecoveryEmailRow = -1;
        this.changeRecoveryEmailRow = -1;
        this.passwordEnabledDetailRow = -1;
        if (!this.loading && (password = this.currentPassword) != null && this.passwordEntered) {
            if (password.has_password) {
                this.changePasswordRow = 0;
                int i = 1 + 1;
                this.rowCount = i;
                this.turnPasswordOffRow = 1;
                this.emailRow = i;
                if (password.has_recovery) {
                    this.rowCount = i + 1;
                    this.changeRecoveryEmailRow = i;
                } else {
                    this.rowCount = i + 1;
                    this.setRecoveryEmailRow = i;
                }
                int i2 = this.rowCount;
                this.rowCount = i2 + 1;
                this.passwordEnabledDetailRow = i2;
            } else {
                this.setPasswordRow = 0;
                this.rowCount = 1 + 1;
                this.setPasswordDetailRow = 1;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.setPasswordRow);
        sb2.append(this.setPasswordDetailRow);
        sb2.append(this.changePasswordRow);
        sb2.append(this.turnPasswordOffRow);
        sb2.append(this.setRecoveryEmailRow);
        sb2.append(this.changeRecoveryEmailRow);
        sb2.append(this.passwordEnabledDetailRow);
        sb2.append(this.rowCount);
        if (this.listAdapter != null && !sb.toString().equals(sb2.toString())) {
            this.listAdapter.notifyDataSetChanged();
        }
        if (this.fragmentView != null) {
            if (this.loading || this.passwordEntered) {
                RecyclerListView recyclerListView = this.listView;
                if (recyclerListView != null) {
                    recyclerListView.setVisibility(0);
                    this.scrollView.setVisibility(4);
                    this.listView.setEmptyView(this.emptyView);
                }
                if (this.passwordEditText != null) {
                    this.floatingButton.setButtonVisible(false, false);
                    this.passwordEditText.setVisibility(4);
                    this.titleTextView.setVisibility(4);
                    this.bottomTextView.setVisibility(8);
                    this.bottomButton.setVisibility(4);
                    updateBottomButton();
                }
                View view = this.fragmentView;
                int i3 = Theme.key_windowBackgroundGray;
                view.setBackgroundColor(Theme.getColor(i3));
                this.fragmentView.setTag(Integer.valueOf(i3));
                return;
            }
            RecyclerListView recyclerListView2 = this.listView;
            if (recyclerListView2 != null) {
                recyclerListView2.setEmptyView(null);
                this.listView.setVisibility(4);
                this.scrollView.setVisibility(0);
                this.emptyView.setVisibility(4);
            }
            if (this.passwordEditText != null) {
                this.floatingButton.setButtonVisible(true, false);
                this.passwordEditText.setVisibility(0);
                View view2 = this.fragmentView;
                int i4 = Theme.key_windowBackgroundWhite;
                view2.setBackgroundColor(Theme.getColor(i4));
                this.fragmentView.setTag(Integer.valueOf(i4));
                this.titleTextView.setVisibility(0);
                this.bottomButton.setVisibility(0);
                updateBottomButton();
                this.bottomTextView.setVisibility(8);
                if (!TextUtils.isEmpty(this.currentPassword.hint)) {
                    this.passwordEditText.setHint(this.currentPassword.hint);
                } else {
                    this.passwordEditText.setHint((CharSequence) null);
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$updateRows$20();
                    }
                }, 200L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateRows$20() {
        EditTextBoldCursor editTextBoldCursor;
        if (isFinishing() || this.destroyed || (editTextBoldCursor = this.passwordEditText) == null) {
            return;
        }
        editTextBoldCursor.requestFocus();
        AndroidUtilities.showKeyboard(this.passwordEditText);
    }

    private void needShowProgress() {
        needShowProgress(false);
    }

    private void needShowProgress(boolean z) {
        if (getParentActivity() == null || getParentActivity().isFinishing() || this.progressDialog != null) {
            return;
        }
        if (!this.passwordEntered) {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ObjectAnimator.ofFloat(this.radialProgressView, (Property<RadialProgressView, Float>) View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.radialProgressView, (Property<RadialProgressView, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.radialProgressView, (Property<RadialProgressView, Float>) View.SCALE_Y, 1.0f));
            animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
            animatorSet.start();
            return;
        }
        AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
        this.progressDialog = alertDialog;
        alertDialog.setCanCancel(false);
        if (z) {
            this.progressDialog.showDelayed(300L);
        } else {
            this.progressDialog.show();
        }
    }

    public void needHideProgress() {
        if (!this.passwordEntered) {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ObjectAnimator.ofFloat(this.radialProgressView, (Property<RadialProgressView, Float>) View.ALPHA, 0.0f), ObjectAnimator.ofFloat(this.radialProgressView, (Property<RadialProgressView, Float>) View.SCALE_X, 0.1f), ObjectAnimator.ofFloat(this.radialProgressView, (Property<RadialProgressView, Float>) View.SCALE_Y, 0.1f));
            animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
            animatorSet.start();
            return;
        }
        AlertDialog alertDialog = this.progressDialog;
        if (alertDialog == null) {
            return;
        }
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m955e(e);
        }
        this.progressDialog = null;
    }

    private void showAlertWithText(String str, String str2) {
        if (getParentActivity() == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setPositiveButton(LocaleController.getString(C2484R.string.OK), null);
        builder.setTitle(str);
        builder.setMessage(str2);
        showDialog(builder.create());
    }

    private void clearPassword() {
        final TL_account.updatePasswordSettings updatepasswordsettings = new TL_account.updatePasswordSettings();
        byte[] bArr = this.currentPasswordHash;
        if (bArr == null || bArr.length == 0) {
            updatepasswordsettings.password = new TLRPC.TL_inputCheckPasswordEmpty();
        }
        updatepasswordsettings.new_settings = new TL_account.passwordInputSettings();
        UserConfig.getInstance(this.currentAccount).resetSavedPassword();
        this.currentSecret = null;
        TL_account.passwordInputSettings passwordinputsettings = updatepasswordsettings.new_settings;
        passwordinputsettings.flags = 3;
        passwordinputsettings.hint = _UrlKt.FRAGMENT_ENCODE_SET;
        passwordinputsettings.new_password_hash = new byte[0];
        passwordinputsettings.new_algo = new TLRPC.TL_passwordKdfAlgoUnknown();
        updatepasswordsettings.new_settings.email = _UrlKt.FRAGMENT_ENCODE_SET;
        needShowProgress();
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$clearPassword$27(updatepasswordsettings);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearPassword$27(TL_account.updatePasswordSettings updatepasswordsettings) {
        if (updatepasswordsettings.password == null) {
            if (this.currentPassword.current_algo == null) {
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda28
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$clearPassword$22(tLObject, tL_error);
                    }
                }, 8);
                return;
            }
            updatepasswordsettings.password = getNewSrpPassword();
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(updatepasswordsettings, new RequestDelegate() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda29
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$clearPassword$26(tLObject, tL_error);
            }
        }, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearPassword$22(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$clearPassword$21(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearPassword$21(TLRPC.TL_error tL_error, TLObject tLObject) {
        if (tL_error == null) {
            TL_account.Password password = (TL_account.Password) tLObject;
            this.currentPassword = password;
            initPasswordNewAlgo(password);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.didSetOrRemoveTwoStepPassword, this.currentPassword);
            clearPassword();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearPassword$26(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$clearPassword$25(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearPassword$25(TLRPC.TL_error tL_error, TLObject tLObject) {
        String pluralString;
        if (tL_error != null && "SRP_ID_INVALID".equals(tL_error.text)) {
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda35
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                    this.f$0.lambda$clearPassword$24(tLObject2, tL_error2);
                }
            }, 8);
            return;
        }
        needHideProgress();
        if (tL_error == null && (tLObject instanceof TLRPC.TL_boolTrue)) {
            this.currentPassword = null;
            this.currentPasswordHash = new byte[0];
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.didRemoveTwoStepPassword, new Object[0]);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.didSetOrRemoveTwoStepPassword, new Object[0]);
            finishFragment();
            return;
        }
        if (tL_error != null) {
            if (tL_error.text.startsWith("FLOOD_WAIT")) {
                int iIntValue = Utilities.parseInt((CharSequence) tL_error.text).intValue();
                if (iIntValue < 60) {
                    pluralString = LocaleController.formatPluralString("Seconds", iIntValue, new Object[0]);
                } else {
                    pluralString = LocaleController.formatPluralString("Minutes", iIntValue / 60, new Object[0]);
                }
                showAlertWithText(LocaleController.getString(C2484R.string.AppName), LocaleController.formatString("FloodWaitTime", C2484R.string.FloodWaitTime, pluralString));
                return;
            }
            showAlertWithText(LocaleController.getString(C2484R.string.AppName), tL_error.text);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearPassword$24(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$clearPassword$23(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearPassword$23(TLRPC.TL_error tL_error, TLObject tLObject) {
        if (tL_error == null) {
            TL_account.Password password = (TL_account.Password) tLObject;
            this.currentPassword = password;
            initPasswordNewAlgo(password);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.didSetOrRemoveTwoStepPassword, this.currentPassword);
            clearPassword();
        }
    }

    public TLRPC.TL_inputCheckPasswordSRP getNewSrpPassword() {
        TL_account.Password password = this.currentPassword;
        TLRPC.PasswordKdfAlgo passwordKdfAlgo = password.current_algo;
        if (!(passwordKdfAlgo instanceof TLRPC.C2561xb6caa888)) {
            return null;
        }
        return SRPHelper.startCheck(this.currentPasswordHash, password.srp_id, password.srp_B, (TLRPC.C2561xb6caa888) passwordKdfAlgo);
    }

    private boolean checkSecretValues(byte[] bArr, TL_account.passwordSettings passwordsettings) {
        byte[] bArrComputeSHA512;
        TLRPC.TL_secureSecretSettings tL_secureSecretSettings = passwordsettings.secure_settings;
        if (tL_secureSecretSettings != null) {
            this.currentSecret = tL_secureSecretSettings.secure_secret;
            TLRPC.SecurePasswordKdfAlgo securePasswordKdfAlgo = tL_secureSecretSettings.secure_algo;
            if (securePasswordKdfAlgo instanceof TLRPC.TL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000) {
                bArrComputeSHA512 = Utilities.computePBKDF2(bArr, ((TLRPC.TL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000) securePasswordKdfAlgo).salt);
            } else {
                if (!(securePasswordKdfAlgo instanceof TLRPC.TL_securePasswordKdfAlgoSHA512)) {
                    return false;
                }
                byte[] bArr2 = ((TLRPC.TL_securePasswordKdfAlgoSHA512) securePasswordKdfAlgo).salt;
                bArrComputeSHA512 = Utilities.computeSHA512(bArr2, bArr, bArr2);
            }
            this.currentSecretId = passwordsettings.secure_settings.secure_secret_id;
            byte[] bArr3 = new byte[32];
            System.arraycopy(bArrComputeSHA512, 0, bArr3, 0, 32);
            byte[] bArr4 = new byte[16];
            System.arraycopy(bArrComputeSHA512, 32, bArr4, 0, 16);
            byte[] bArr5 = this.currentSecret;
            Utilities.aesCbcEncryptionByteArraySafe(bArr5, bArr3, bArr4, 0, bArr5.length, 0, 0);
            TLRPC.TL_secureSecretSettings tL_secureSecretSettings2 = passwordsettings.secure_settings;
            if (PassportActivity.checkSecret(tL_secureSecretSettings2.secure_secret, Long.valueOf(tL_secureSecretSettings2.secure_secret_id))) {
                return true;
            }
            TL_account.updatePasswordSettings updatepasswordsettings = new TL_account.updatePasswordSettings();
            updatepasswordsettings.password = getNewSrpPassword();
            TL_account.passwordInputSettings passwordinputsettings = new TL_account.passwordInputSettings();
            updatepasswordsettings.new_settings = passwordinputsettings;
            passwordinputsettings.new_secure_settings = new TLRPC.TL_secureSecretSettings();
            TLRPC.TL_secureSecretSettings tL_secureSecretSettings3 = updatepasswordsettings.new_settings.new_secure_settings;
            tL_secureSecretSettings3.secure_secret = new byte[0];
            tL_secureSecretSettings3.secure_algo = new TLRPC.TL_securePasswordKdfAlgoUnknown();
            TL_account.passwordInputSettings passwordinputsettings2 = updatepasswordsettings.new_settings;
            passwordinputsettings2.new_secure_settings.secure_secret_id = 0L;
            passwordinputsettings2.flags |= 4;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(updatepasswordsettings, new RequestDelegate() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda37
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    TwoStepVerificationActivity.$r8$lambda$EyZs2Vj77WIiBXIn2wQ6SmDpO2I(tLObject, tL_error);
                }
            });
            this.currentSecret = null;
            this.currentSecretId = 0L;
            return true;
        }
        this.currentSecret = null;
        this.currentSecretId = 0L;
        return true;
    }

    private void processDone() {
        if (this.passwordEntered) {
            return;
        }
        String string = this.passwordEditText.getText().toString();
        if (string.length() == 0) {
            onFieldError(this.passwordOutlineView, this.passwordEditText, false);
            return;
        }
        final byte[] stringBytes = AndroidUtilities.getStringBytes(string);
        needShowProgress();
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processDone$35(stringBytes);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$35(final byte[] bArr) {
        TL_account.getPasswordSettings getpasswordsettings = new TL_account.getPasswordSettings();
        TLRPC.PasswordKdfAlgo passwordKdfAlgo = this.currentPassword.current_algo;
        final byte[] x = passwordKdfAlgo instanceof TLRPC.C2561xb6caa888 ? SRPHelper.getX(bArr, (TLRPC.C2561xb6caa888) passwordKdfAlgo) : null;
        RequestDelegate requestDelegate = new RequestDelegate() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda21
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$processDone$34(bArr, x, tLObject, tL_error);
            }
        };
        TL_account.Password password = this.currentPassword;
        TLRPC.PasswordKdfAlgo passwordKdfAlgo2 = password.current_algo;
        if (passwordKdfAlgo2 instanceof TLRPC.C2561xb6caa888) {
            TLRPC.TL_inputCheckPasswordSRP tL_inputCheckPasswordSRPStartCheck = SRPHelper.startCheck(x, password.srp_id, password.srp_B, (TLRPC.C2561xb6caa888) passwordKdfAlgo2);
            getpasswordsettings.password = tL_inputCheckPasswordSRPStartCheck;
            if (tL_inputCheckPasswordSRPStartCheck == null) {
                TLRPC.TL_error tL_error = new TLRPC.TL_error();
                tL_error.text = "ALGO_INVALID";
                requestDelegate.run(null, tL_error);
                return;
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(getpasswordsettings, requestDelegate, 10);
            return;
        }
        TLRPC.TL_error tL_error2 = new TLRPC.TL_error();
        tL_error2.text = "PASSWORD_HASH_INVALID";
        requestDelegate.run(null, tL_error2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$34(final byte[] bArr, final byte[] bArr2, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processDone$30(bArr, tLObject, bArr2);
                }
            });
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processDone$33(tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$30(byte[] bArr, TLObject tLObject, final byte[] bArr2) {
        final boolean zCheckSecretValues = checkSecretValues(bArr, (TL_account.passwordSettings) tLObject);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processDone$29(zCheckSecretValues, bArr2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$29(boolean z, byte[] bArr) {
        if (this.delegate == null || !z) {
            needHideProgress();
        }
        if (z) {
            this.currentPasswordHash = bArr;
            this.passwordEntered = true;
            if (this.delegate != null) {
                AndroidUtilities.hideKeyboard(this.passwordEditText);
                this.delegate.didEnterPassword(getNewSrpPassword());
                return;
            }
            if (!TextUtils.isEmpty(this.currentPassword.email_unconfirmed_pattern)) {
                TwoStepVerificationSetupActivity twoStepVerificationSetupActivity = new TwoStepVerificationSetupActivity(this.currentAccount, 5, this.currentPassword);
                twoStepVerificationSetupActivity.setCurrentPasswordParams(this.currentPasswordHash, this.currentSecretId, this.currentSecret, true);
                presentFragment(twoStepVerificationSetupActivity, true);
                return;
            }
            AndroidUtilities.hideKeyboard(this.passwordEditText);
            TwoStepVerificationActivity twoStepVerificationActivity = new TwoStepVerificationActivity();
            twoStepVerificationActivity.passwordEntered = true;
            twoStepVerificationActivity.currentPasswordHash = this.currentPasswordHash;
            twoStepVerificationActivity.currentPassword = this.currentPassword;
            twoStepVerificationActivity.currentSecret = this.currentSecret;
            twoStepVerificationActivity.currentSecretId = this.currentSecretId;
            presentFragment(twoStepVerificationActivity, true);
            return;
        }
        AlertsCreator.showUpdateAppAlert(getParentActivity(), LocaleController.getString(C2484R.string.UpdateAppAlert), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$33(TLRPC.TL_error tL_error) {
        String pluralString;
        if ("SRP_ID_INVALID".equals(tL_error.text)) {
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda33
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error2) {
                    this.f$0.lambda$processDone$32(tLObject, tL_error2);
                }
            }, 8);
            return;
        }
        needHideProgress();
        if ("PASSWORD_HASH_INVALID".equals(tL_error.text)) {
            onFieldError(this.passwordOutlineView, this.passwordEditText, true);
            return;
        }
        if (tL_error.text.startsWith("FLOOD_WAIT")) {
            int iIntValue = Utilities.parseInt((CharSequence) tL_error.text).intValue();
            if (iIntValue < 60) {
                pluralString = LocaleController.formatPluralString("Seconds", iIntValue, new Object[0]);
            } else {
                pluralString = LocaleController.formatPluralString("Minutes", iIntValue / 60, new Object[0]);
            }
            showAlertWithText(LocaleController.getString(C2484R.string.AppName), LocaleController.formatString("FloodWaitTime", C2484R.string.FloodWaitTime, pluralString));
            return;
        }
        showAlertWithText(LocaleController.getString(C2484R.string.AppName), tL_error.text);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$32(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processDone$31(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$31(TLRPC.TL_error tL_error, TLObject tLObject) {
        if (tL_error == null) {
            TL_account.Password password = (TL_account.Password) tLObject;
            this.currentPassword = password;
            initPasswordNewAlgo(password);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.didSetOrRemoveTwoStepPassword, this.currentPassword);
            processDone();
        }
    }

    private void onFieldError(OutlineTextContainerView outlineTextContainerView, TextView textView, boolean z) {
        if (getParentActivity() == null) {
            return;
        }
        outlineTextContainerView.performHapticFeedback(3, 2);
        if (z) {
            textView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
        }
        outlineTextContainerView.animateError(1.0f);
        AndroidUtilities.shakeViewSpring(outlineTextContainerView, 5.0f, new Runnable() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onFieldError$36();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFieldError$36() {
        AndroidUtilities.cancelRunOnUIThread(this.errorColorTimeout);
        AndroidUtilities.runOnUIThread(this.errorColorTimeout, 1500L);
        this.postedErrorColorTimeout = true;
    }

    private class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (TwoStepVerificationActivity.this.loading || TwoStepVerificationActivity.this.currentPassword == null) {
                return 0;
            }
            return TwoStepVerificationActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View textSettingsCell;
            if (i == 0) {
                textSettingsCell = new TextSettingsCell(this.mContext);
                textSettingsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else {
                textSettingsCell = new TextInfoPrivacyCell(this.mContext);
            }
            return new RecyclerListView.Holder(textSettingsCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    return;
                }
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                if (i == TwoStepVerificationActivity.this.setPasswordDetailRow) {
                    textInfoPrivacyCell.setText(LocaleController.getString(C2484R.string.SetAdditionalPasswordInfo));
                    return;
                } else {
                    if (i == TwoStepVerificationActivity.this.passwordEnabledDetailRow) {
                        textInfoPrivacyCell.setText(LocaleController.getString(C2484R.string.EnabledPasswordText));
                        return;
                    }
                    return;
                }
            }
            TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
            int i2 = Theme.key_windowBackgroundWhiteBlackText;
            textSettingsCell.setTag(Integer.valueOf(i2));
            textSettingsCell.setTextColor(Theme.getColor(i2));
            if (i == TwoStepVerificationActivity.this.changePasswordRow) {
                textSettingsCell.setText(LocaleController.getString(C2484R.string.ChangePassword), true);
                return;
            }
            if (i == TwoStepVerificationActivity.this.setPasswordRow) {
                textSettingsCell.setText(LocaleController.getString(C2484R.string.SetAdditionalPassword), true);
                return;
            }
            if (i == TwoStepVerificationActivity.this.turnPasswordOffRow) {
                textSettingsCell.setText(LocaleController.getString(C2484R.string.TurnPasswordOff), true);
            } else if (i == TwoStepVerificationActivity.this.changeRecoveryEmailRow) {
                textSettingsCell.setText(LocaleController.getString(C2484R.string.ChangeRecoveryEmail), false);
            } else if (i == TwoStepVerificationActivity.this.setRecoveryEmailRow) {
                textSettingsCell.setText(LocaleController.getString(C2484R.string.SetRecoveryEmail), false);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return (i == TwoStepVerificationActivity.this.setPasswordDetailRow || i == TwoStepVerificationActivity.this.passwordEnabledDetailRow) ? 1 : 0;
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        int i = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextSettingsCell.class, EditTextSettingsCell.class}, null, null, null, i));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND | ThemeDescription.FLAG_CHECKTAG, null, null, null, null, i));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND | ThemeDescription.FLAG_CHECKTAG, null, null, null, null, Theme.key_windowBackgroundGray));
        ActionBar actionBar = this.actionBar;
        int i2 = ThemeDescription.FLAG_BACKGROUND;
        int i3 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(actionBar, i2, null, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.emptyView, ThemeDescription.FLAG_PROGRESSBAR, null, null, null, null, Theme.key_progressCircle));
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_text_RedRegular));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{EditTextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        int i5 = Theme.key_windowBackgroundWhiteHintText;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_HINTTEXTCOLOR, new Class[]{EditTextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        TextView textView = this.titleTextView;
        int i6 = ThemeDescription.FLAG_TEXTCOLOR;
        int i7 = Theme.key_windowBackgroundWhiteGrayText6;
        arrayList.add(new ThemeDescription(textView, i6, null, null, null, null, i7));
        arrayList.add(new ThemeDescription(this.bottomTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i7));
        arrayList.add(new ThemeDescription(this.bottomButton, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteBlueText4));
        arrayList.add(new ThemeDescription(this.passwordEditText, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.passwordEditText, ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, i5));
        arrayList.add(new ThemeDescription(this.passwordEditText, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, Theme.key_windowBackgroundWhiteInputField));
        arrayList.add(new ThemeDescription(this.passwordEditText, ThemeDescription.FLAG_DRAWABLESELECTEDSTATE | ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, Theme.key_windowBackgroundWhiteInputFieldActivated));
        return arrayList;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        if (this.otherwiseReloginDays < 0) {
            return super.onBackPressed(z);
        }
        if (!z) {
            return false;
        }
        showSetForcePasswordAlert();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSetForcePasswordAlert() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString(C2484R.string.Warning));
        builder.setMessage(LocaleController.formatPluralString("ForceSetPasswordAlertMessageShort", this.otherwiseReloginDays, new Object[0]));
        builder.setPositiveButton(LocaleController.getString(C2484R.string.TwoStepVerificationSetPassword), null);
        builder.setNegativeButton(LocaleController.getString(C2484R.string.ForceSetPasswordCancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$showSetForcePasswordAlert$37(alertDialog, i);
            }
        });
        ((TextView) builder.show().getButton(-2)).setTextColor(Theme.getColor(Theme.key_text_RedBold));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSetForcePasswordAlert$37(AlertDialog alertDialog, int i) {
        finishFragment();
    }

    public void setBlockingAlert(int i) {
        this.otherwiseReloginDays = i;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void finishFragment() {
        if (this.otherwiseReloginDays >= 0) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("afterSignup", true);
            MainTabsActivity mainTabsActivity = new MainTabsActivity();
            mainTabsActivity.prepareDialogsActivity(bundle);
            presentFragment(mainTabsActivity, true);
            return;
        }
        super.finishFragment();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return ColorUtils.calculateLuminance(Theme.getColor(Theme.key_windowBackgroundWhite, null, true)) > 0.699999988079071d;
    }
}
