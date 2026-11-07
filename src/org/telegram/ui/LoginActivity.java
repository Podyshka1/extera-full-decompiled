package org.telegram.ui;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.telephony.PhoneNumberUtils;
import android.telephony.SignalStrength;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.text.style.ReplacementSpan;
import android.util.Base64;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewPropertyAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Space;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewSwitcher;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.util.Consumer;
import androidx.dynamicanimation.animation.DynamicAnimation;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.components.QrCodeLoginView;
import com.exteragram.messenger.utils.ui.FabUiHelper;
import com.exteragram.messenger.utils.ui.UIUtil;
import com.google.android.gms.auth.api.R$drawable;
import com.google.android.gms.auth.api.identity.GetPhoneNumberHintIntentRequest;
import com.google.android.gms.auth.api.identity.Identity;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.material.timepicker.TimeModel;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Function;
import java.util.function.Predicate;
import okhttp3.internal.url._UrlKt;
import org.json.JSONObject;
import org.mvel2.MVEL;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.AuthTokensHelper;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.CallReceiver;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.GenericProvider;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.PasskeysController;
import org.telegram.messenger.PushListenerController;
import org.telegram.messenger.SRPHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.utils.ViewOutlineProviderImpl;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.tgnet.tl.TL_update;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Cells.CheckBoxCell;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.AnimatedPhoneNumberEditText;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.CustomPhoneKeyboardView;
import org.telegram.ui.Components.Easings;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.FragmentFloatingButton;
import org.telegram.ui.Components.ImageUpdater;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkPath;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.LoadingDrawable;
import org.telegram.ui.Components.LoginOrView;
import org.telegram.ui.Components.OutlineTextContainerView;
import org.telegram.ui.Components.Premium.GLIcon.GLIconRenderer;
import org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView;
import org.telegram.ui.Components.Premium.StarParticlesView;
import org.telegram.ui.Components.ProxyDrawable;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.RLottieImageView;
import org.telegram.ui.Components.RadialProgressView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.SimpleThemeDescription;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.SlideView;
import org.telegram.ui.Components.TextStyleSpan;
import org.telegram.ui.Components.TextViewSwitcher;
import org.telegram.ui.Components.TransformableLoginButtonView;
import org.telegram.ui.Components.URLSpanNoUnderline;
import org.telegram.ui.Components.VerticalPositionAutoAnimator;
import org.telegram.ui.Components.chat.ViewPositionWatcher;
import org.telegram.ui.Components.spoilers.SpoilersTextView;
import org.telegram.ui.CountrySelectActivity;
import org.telegram.ui.LoginActivity;
import org.telegram.ui.PhotoViewer;
import org.telegram.ui.Stars.ExplainStarsSheet;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.bots.BotWebViewSheet;

/* JADX INFO: loaded from: classes6.dex */
@SuppressLint({"HardwareIds"})
public class LoginActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private static final int SHOW_DELAY;
    private int activityMode;
    private Runnable animationFinishCallback;
    private ImageView backButtonView;
    private View cachedFragmentView;
    private AlertDialog cancelDeleteProgressDialog;
    private TLRPC.TL_auth_sentCode cancelDeletionCode;
    private Bundle cancelDeletionParams;
    private String cancelDeletionPhone;
    private boolean checkPermissions;
    private int currentConnectionState;
    private int currentDoneType;
    private TLRPC.TL_help_termsOfService currentTermsOfService;
    private int currentViewNum;
    private boolean customKeyboardWasVisible;
    private boolean[] doneButtonVisible;
    private AnimatorSet doneItemAnimation;
    private boolean[] doneProgressVisible;
    private Runnable[] editDoneCallback;
    private Runnable emailChangeFinishCallback;
    private boolean emailChangeIsSuggestion;
    private boolean emailChangeNonSkippable;
    private TextView emailChangeSkipButton;
    private Runnable emailChangeSkipCallback;
    private VerticalPositionAutoAnimator floatingAutoAnimator;
    private FragmentFloatingButton floatingButton;
    private TransformableLoginButtonView floatingButtonIcon;
    private boolean forceDisableSafetyNet;
    private View introView;
    private boolean isAnimatingIntro;
    private boolean isRequestingFirebaseSms;
    private ValueAnimator keyboardAnimator;
    private Runnable keyboardHideCallback;
    private LinearLayout keyboardLinearLayout;
    private CustomPhoneKeyboardView keyboardView;
    private ItemOptions loginOptionsMenu;
    private ProxyDrawable loginOptionsProxyDrawable;
    private ActionBarMenuSubItem loginOptionsProxyItem;
    private boolean newAccount;
    private boolean paid;
    private boolean pendingSwitchingAccount;
    private Dialog permissionsDialog;
    private ArrayList<String> permissionsItems;
    private PhoneNumberConfirmView phoneNumberConfirmView;
    private boolean[] postedEditDoneCallback;
    private int progressRequestId;
    private ImageView proxyButtonView;
    private boolean proxyButtonVisible;
    private ProxyDrawable proxyDrawable;
    private RadialProgressView radialProgressView;
    private boolean restoringState;
    private AnimatorSet[] showDoneAnimation;
    private Runnable showProxyButtonDelayed;
    private SizeNotifierFrameLayout sizeNotifierFrameLayout;
    private FrameLayout slideViewsContainer;
    private TextView startMessagingButton;
    private boolean syncContacts;
    private boolean testBackend;
    private final SlideView[] views;

    public static class ProgressView extends View {
    }

    public LoginActivity setIntroView(View view, TextView textView) {
        return this;
    }

    static {
        SHOW_DELAY = SharedConfig.getDevicePerformanceClass() <= 1 ? 150 : 100;
    }

    public LoginActivity() {
        this.views = new SlideView[20];
        this.permissionsItems = new ArrayList<>();
        this.checkPermissions = true;
        this.syncContacts = false;
        this.testBackend = false;
        this.activityMode = 0;
        this.showDoneAnimation = new AnimatorSet[2];
        this.doneButtonVisible = new boolean[]{true, false};
        this.customKeyboardWasVisible = false;
        this.doneProgressVisible = new boolean[2];
        this.editDoneCallback = new Runnable[2];
        this.postedEditDoneCallback = new boolean[2];
    }

    public LoginActivity(int i) {
        this.views = new SlideView[20];
        this.permissionsItems = new ArrayList<>();
        this.checkPermissions = true;
        this.syncContacts = false;
        this.testBackend = false;
        this.activityMode = 0;
        this.showDoneAnimation = new AnimatorSet[2];
        this.doneButtonVisible = new boolean[]{true, false};
        this.customKeyboardWasVisible = false;
        this.doneProgressVisible = new boolean[2];
        this.editDoneCallback = new Runnable[2];
        this.postedEditDoneCallback = new boolean[2];
        this.currentAccount = i;
        this.newAccount = true;
    }

    public LoginActivity changeEmail(Runnable runnable) {
        this.activityMode = 3;
        this.currentViewNum = 12;
        this.emailChangeFinishCallback = runnable;
        return this;
    }

    public LoginActivity changeEmail(Runnable runnable, Runnable runnable2, boolean z) {
        this.activityMode = 3;
        this.currentViewNum = 12;
        this.emailChangeFinishCallback = runnable;
        this.emailChangeSkipCallback = runnable2;
        this.emailChangeNonSkippable = z;
        this.emailChangeIsSuggestion = true;
        return this;
    }

    public LoginActivity cancelAccountDeletion(String str, Bundle bundle, TLRPC.TL_auth_sentCode tL_auth_sentCode) {
        this.cancelDeletionPhone = str;
        this.cancelDeletionParams = bundle;
        this.cancelDeletionCode = tL_auth_sentCode;
        this.activityMode = 1;
        return this;
    }

    public LoginActivity changePhoneNumber() {
        this.activityMode = 2;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInCancelAccountDeletionMode() {
        return this.activityMode == 1;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public int getNavigationBarColor() {
        return getThemedColor(Theme.key_windowBackgroundWhite);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void setNavigationBarColor(int i) {
        super.setNavigationBarColor(getNavigationBarColor());
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        int i = 0;
        while (true) {
            SlideView[] slideViewArr = this.views;
            if (i >= slideViewArr.length) {
                break;
            }
            SlideView slideView = slideViewArr[i];
            if (slideView != null) {
                slideView.onDestroyActivity();
            }
            i++;
        }
        AlertDialog alertDialog = this.cancelDeleteProgressDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.cancelDeleteProgressDialog = null;
        }
        for (Runnable runnable : this.editDoneCallback) {
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
        }
        ItemOptions itemOptions = this.loginOptionsMenu;
        if (itemOptions != null) {
            itemOptions.dismiss();
        }
        clearLoginOptionsMenuReferences();
        getNotificationCenter().removeObserver(this, NotificationCenter.didUpdateConnectionState);
        getNotificationCenter().removeObserver(this, NotificationCenter.newSuggestionsAvailable);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.proxySettingsChanged);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.didUpdateConnectionState);
        getNotificationCenter().addObserver(this, NotificationCenter.newSuggestionsAvailable);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.proxySettingsChanged);
        return super.onFragmentCreate();
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0468  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0475 A[ADDED_TO_REGION, REMOVE] */
    @Override // org.telegram.ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View createView(Context context) {
        boolean z;
        Bundle bundle;
        int i;
        View view = this.cachedFragmentView;
        if (view != null) {
            this.fragmentView = view;
            this.cachedFragmentView = null;
            return view;
        }
        this.actionBar.setAddToContainer(false);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.LoginActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == 1) {
                    LoginActivity.this.onDoneButtonPressed();
                } else if (i2 == -1 && LoginActivity.this.onBackPressed(true)) {
                    LoginActivity.this.finishFragment();
                }
            }
        });
        this.currentDoneType = 0;
        boolean[] zArr = this.doneButtonVisible;
        zArr[0] = true;
        zArr[1] = false;
        SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.LoginActivity.2
            @Override // android.widget.FrameLayout, android.view.View
            public void onMeasure(int i2, int i3) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) LoginActivity.this.floatingButton.getLayoutParams();
                int iDp = LoginActivity.this.isCustomKeyboardVisible() ? AndroidUtilities.dp(226.0f) : 0;
                if (LoginActivity.this.isCustomKeyboardVisible() && measureKeyboardHeight() > AndroidUtilities.dp(20.0f)) {
                    iDp -= measureKeyboardHeight();
                }
                if (Bulletin.getVisibleBulletin() != null && Bulletin.getVisibleBulletin().isShowing()) {
                    super.onMeasure(i2, i3);
                    marginLayoutParams.bottomMargin = ((AndroidUtilities.dp(FabUiHelper.getFabBottomMarginDp()) + Bulletin.getVisibleBulletin().getLayout().getMeasuredHeight()) - AndroidUtilities.dp(10.0f)) + iDp;
                } else {
                    marginLayoutParams.bottomMargin = AndroidUtilities.dp(FabUiHelper.getFabBottomMarginDp()) + iDp;
                }
                int i4 = AndroidUtilities.isTablet() ? 0 : AndroidUtilities.statusBarHeight;
                ((ViewGroup.MarginLayoutParams) LoginActivity.this.backButtonView.getLayoutParams()).topMargin = AndroidUtilities.dp(16.0f) + i4;
                ((ViewGroup.MarginLayoutParams) LoginActivity.this.proxyButtonView.getLayoutParams()).topMargin = AndroidUtilities.dp(16.0f) + i4;
                ((ViewGroup.MarginLayoutParams) LoginActivity.this.radialProgressView.getLayoutParams()).topMargin = AndroidUtilities.dp(16.0f) + i4;
                if (LoginActivity.this.emailChangeSkipButton != null) {
                    ((ViewGroup.MarginLayoutParams) LoginActivity.this.emailChangeSkipButton.getLayoutParams()).topMargin = AndroidUtilities.dp(16.0f) + i4;
                }
                if (measureKeyboardHeight() > AndroidUtilities.dp(20.0f) && LoginActivity.this.keyboardView.getVisibility() != 8 && !LoginActivity.this.isCustomKeyboardForceDisabled() && !LoginActivity.this.customKeyboardWasVisible) {
                    if (LoginActivity.this.keyboardAnimator != null) {
                        LoginActivity.this.keyboardAnimator.cancel();
                    }
                    LoginActivity.this.keyboardView.setVisibility(8);
                }
                super.onMeasure(i2, i3);
            }
        };
        this.sizeNotifierFrameLayout = sizeNotifierFrameLayout;
        sizeNotifierFrameLayout.setDelegate(new SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate
            public final void onSizeChanged(int i2, boolean z2) {
                this.f$0.lambda$createView$0(i2, z2);
            }
        });
        this.fragmentView = this.sizeNotifierFrameLayout;
        ScrollView scrollView = new ScrollView(context) { // from class: org.telegram.ui.LoginActivity.3
            @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.ViewParent
            public boolean requestChildRectangleOnScreen(View view2, Rect rect, boolean z2) {
                if (LoginActivity.this.currentViewNum == 1 || LoginActivity.this.currentViewNum == 2 || LoginActivity.this.currentViewNum == 4) {
                    rect.bottom += AndroidUtilities.dp(40.0f);
                }
                return super.requestChildRectangleOnScreen(view2, rect, z2);
            }
        };
        scrollView.setFillViewport(true);
        this.sizeNotifierFrameLayout.addView(scrollView, LayoutHelper.createFrame(-1, -1.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        this.keyboardLinearLayout = linearLayout;
        linearLayout.setOrientation(1);
        scrollView.addView(this.keyboardLinearLayout, LayoutHelper.createScroll(-1, -2, 51));
        Space space = new Space(context);
        space.setMinimumHeight(AndroidUtilities.isTablet() ? 0 : AndroidUtilities.statusBarHeight);
        this.keyboardLinearLayout.addView(space);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.LoginActivity.4
            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
                super.onLayout(z2, i2, i3, i4, i5);
                for (SlideView slideView : LoginActivity.this.views) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) slideView.getLayoutParams();
                    int height = getHeight() + AndroidUtilities.dp(16.0f);
                    if (!slideView.hasCustomKeyboard() && LoginActivity.this.keyboardView.getVisibility() == 0) {
                        height += AndroidUtilities.dp(230.0f);
                    }
                    slideView.layout(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, getWidth() - marginLayoutParams.rightMargin, height);
                }
            }

            @Override // android.widget.FrameLayout, android.view.View
            public void onMeasure(int i2, int i3) {
                super.onMeasure(i2, i3);
                int measuredWidth = getMeasuredWidth();
                int measuredHeight = getMeasuredHeight();
                for (SlideView slideView : LoginActivity.this.views) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) slideView.getLayoutParams();
                    int iDp = (measuredHeight - marginLayoutParams.topMargin) + AndroidUtilities.dp(16.0f);
                    if (!slideView.hasCustomKeyboard() && LoginActivity.this.keyboardView.getVisibility() == 0) {
                        iDp += AndroidUtilities.dp(230.0f);
                    }
                    slideView.measure(View.MeasureSpec.makeMeasureSpec((measuredWidth - marginLayoutParams.rightMargin) - marginLayoutParams.leftMargin, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(iDp, TLObject.FLAG_30));
                }
            }
        };
        this.slideViewsContainer = frameLayout;
        this.keyboardLinearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, 0, 1.0f));
        CustomPhoneKeyboardView customPhoneKeyboardView = new CustomPhoneKeyboardView(context);
        this.keyboardView = customPhoneKeyboardView;
        customPhoneKeyboardView.setViewToFindFocus(this.slideViewsContainer);
        this.keyboardLinearLayout.addView(this.keyboardView, LayoutHelper.createLinear(-1, 230));
        this.views[0] = new PhoneView(context);
        this.views[1] = new LoginActivitySmsView(context, 1);
        this.views[2] = new LoginActivitySmsView(context, 2);
        this.views[3] = new LoginActivitySmsView(context, 3);
        this.views[4] = new LoginActivitySmsView(context, 4);
        this.views[5] = new LoginActivityRegisterView(context);
        this.views[6] = new LoginActivityPasswordView(context);
        this.views[7] = new LoginActivityRecoverView(context);
        this.views[8] = new LoginActivityResetWaitView(context);
        this.views[9] = new LoginActivityNewPasswordView(context, 0);
        this.views[10] = new LoginActivityNewPasswordView(context, 1);
        this.views[11] = new LoginActivitySmsView(context, 11);
        this.views[12] = new LoginActivitySetupEmail(context);
        this.views[13] = new LoginActivityEmailCodeView(context, true);
        this.views[14] = new LoginActivityEmailCodeView(context, false);
        this.views[15] = new LoginActivitySmsView(context, 15);
        this.views[16] = new LoginActivityPhraseView(context, 16);
        this.views[17] = new LoginActivityPhraseView(context, 17);
        this.views[18] = new LoginActivityQrView(context);
        this.views[19] = new LoginPayView(context);
        int i2 = 0;
        while (true) {
            SlideView[] slideViewArr = this.views;
            if (i2 >= slideViewArr.length) {
                break;
            }
            slideViewArr[i2].setVisibility(i2 == 0 ? 0 : 8);
            this.slideViewsContainer.addView(this.views[i2], LayoutHelper.createFrame(-1, -1.0f, 17, AndroidUtilities.isTablet() ? 26.0f : 18.0f, i2 != 19 ? 30.0f : 0.0f, AndroidUtilities.isTablet() ? 26.0f : 18.0f, 0.0f));
            i2++;
        }
        Bundle bundleLoadCurrentState = this.activityMode == 0 ? loadCurrentState(this.newAccount, this.currentAccount) : null;
        if (bundleLoadCurrentState != null && ((i = bundleLoadCurrentState.getInt("currentViewNum", 0)) < 0 || i >= this.views.length)) {
            bundleLoadCurrentState = null;
        }
        if (bundleLoadCurrentState != null) {
            this.currentViewNum = bundleLoadCurrentState.getInt("currentViewNum", 0);
            this.syncContacts = bundleLoadCurrentState.getInt("syncContacts", 0) == 1;
            int i3 = this.currentViewNum;
            if (i3 >= 1 && i3 <= 4) {
                int i4 = bundleLoadCurrentState.getInt("open");
                if (i4 != 0 && Math.abs((System.currentTimeMillis() / 1000) - ((long) i4)) >= 86400) {
                    this.currentViewNum = 0;
                    clearCurrentState();
                    bundle = null;
                }
                bundle = bundleLoadCurrentState;
            } else if (i3 == 6) {
                if (((LoginActivityPasswordView) this.views[6]).currentPassword == null) {
                    this.currentViewNum = 0;
                    clearCurrentState();
                    bundle = null;
                }
                bundle = bundleLoadCurrentState;
            } else if (i3 == 7) {
                if (((LoginActivityRecoverView) this.views[7]).passwordString == null) {
                    this.currentViewNum = 0;
                    clearCurrentState();
                    bundle = null;
                }
                bundle = bundleLoadCurrentState;
            } else if (i3 == 18) {
                this.currentViewNum = 0;
                clearCurrentState();
                bundleLoadCurrentState = null;
            }
            bundleLoadCurrentState = bundle;
        }
        FragmentFloatingButton fragmentFloatingButton = new FragmentFloatingButton(context, this.resourceProvider);
        this.floatingButton = fragmentFloatingButton;
        fragmentFloatingButton.setButtonVisible(this.doneButtonVisible[0], false);
        this.floatingAutoAnimator = VerticalPositionAutoAnimator.attach(this.floatingButton);
        this.sizeNotifierFrameLayout.addView(this.floatingButton, FragmentFloatingButton.createDefaultLayoutParamsBig());
        this.floatingButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$1(view2);
            }
        });
        this.floatingAutoAnimator.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda3
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                this.f$0.lambda$createView$2(dynamicAnimation, f, f2);
            }
        });
        ImageView imageView = new ImageView(context);
        this.backButtonView = imageView;
        imageView.setImageResource(C2807R.drawable.ic_ab_back);
        this.backButtonView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$3(view2);
            }
        });
        this.backButtonView.setContentDescription(LocaleController.getString(C2807R.string.AccDescrGoBack));
        int iDp = AndroidUtilities.dp(4.0f);
        this.backButtonView.setPadding(iDp, iDp, iDp, iDp);
        this.sizeNotifierFrameLayout.addView(this.backButtonView, LayoutHelper.createFrame(32, 32.0f, 51, 16.0f, 16.0f, 0.0f, 0.0f));
        if (this.emailChangeSkipCallback != null && !this.emailChangeNonSkippable && this.emailChangeIsSuggestion) {
            TextView textView = new TextView(context);
            this.emailChangeSkipButton = textView;
            textView.setGravity(19);
            this.emailChangeSkipButton.setTextSize(1, 15.0f);
            this.emailChangeSkipButton.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.emailChangeSkipButton.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), 0);
            this.emailChangeSkipButton.setText(LocaleController.getString(C2807R.string.YourEmailSkip));
            this.emailChangeSkipButton.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4));
            this.sizeNotifierFrameLayout.addView(this.emailChangeSkipButton, LayoutHelper.createFrame(-2, 30.0f, 53, 0.0f, 16.0f, 16.0f, 0.0f));
            this.emailChangeSkipButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$createView$4(view2);
                }
            });
        }
        ImageView imageView2 = new ImageView(context);
        this.proxyButtonView = imageView2;
        imageView2.setImageResource(C2807R.drawable.ic_ab_other);
        this.proxyButtonView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$5(view2);
            }
        });
        this.proxyButtonView.setContentDescription(LocaleController.getString(C2807R.string.AccDescrMoreOptions));
        this.proxyButtonView.setPadding(iDp, iDp, iDp, iDp);
        this.proxyButtonView.setAlpha(1.0f);
        this.proxyButtonView.setVisibility(0);
        this.sizeNotifierFrameLayout.addView(this.proxyButtonView, LayoutHelper.createFrame(32, 32.0f, 53, 16.0f, 16.0f, 16.0f, 16.0f));
        RadialProgressView radialProgressView = new RadialProgressView(context);
        this.radialProgressView = radialProgressView;
        radialProgressView.setSize(AndroidUtilities.dp(20.0f));
        this.radialProgressView.setAlpha(0.0f);
        this.radialProgressView.setScaleX(0.1f);
        this.radialProgressView.setScaleY(0.1f);
        this.sizeNotifierFrameLayout.addView(this.radialProgressView, LayoutHelper.createFrame(32, 32.0f, 53, 0.0f, 16.0f, 16.0f, 0.0f));
        TransformableLoginButtonView transformableLoginButtonView = new TransformableLoginButtonView(context);
        this.floatingButtonIcon = transformableLoginButtonView;
        transformableLoginButtonView.setTransformType(0);
        this.floatingButtonIcon.setProgress(1.0f);
        this.floatingButtonIcon.setDrawBackground(false);
        this.floatingButton.setContentDescription(LocaleController.getString(C2807R.string.Done));
        this.floatingButton.addView(this.floatingButtonIcon, LayoutHelper.createFrame(56, 56, 17));
        this.floatingButton.addAdditionalView(this.floatingButtonIcon);
        if (bundleLoadCurrentState != null) {
            this.restoringState = true;
        }
        int i5 = 0;
        while (true) {
            SlideView[] slideViewArr2 = this.views;
            if (i5 >= slideViewArr2.length) {
                break;
            }
            SlideView slideView = slideViewArr2[i5];
            if (bundleLoadCurrentState != null && (i5 < 1 || i5 > 4 || i5 == this.currentViewNum)) {
                slideView.restoreStateParams(bundleLoadCurrentState);
            }
            if (this.currentViewNum == i5) {
                this.backButtonView.setVisibility((slideView.needBackButton() || this.newAccount || this.activityMode == 2) ? 0 : 8);
                slideView.setVisibility(0);
                slideView.onShow();
                setCustomKeyboardVisible(slideView.hasCustomKeyboard(), false);
                this.currentDoneType = 0;
                if (i5 != 0 && i5 != 5 && i5 != 6) {
                    if (i5 != 9) {
                        if (i5 != 10 && i5 != 12) {
                            z = false;
                        }
                        showDoneButton(z, false);
                        if (i5 == 1 || i5 == 2) {
                            this.currentDoneType = 1;
                        } else if (i5 == 3 || i5 == 4) {
                            this.currentDoneType = 1;
                        }
                    }
                    z = true;
                    showDoneButton(z, false);
                    if (i5 == 1) {
                    }
                    this.currentDoneType = 1;
                }
                z = true;
                showDoneButton(z, false);
                if (i5 == 1) {
                }
                this.currentDoneType = 1;
            } else if (slideView.getVisibility() != 8) {
                slideView.setVisibility(8);
                slideView.onHide();
            }
            i5++;
        }
        this.restoringState = false;
        updateColors();
        if (isInCancelAccountDeletionMode()) {
            fillNextCodeParams(this.cancelDeletionParams, this.cancelDeletionCode, false);
        }
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(int i, boolean z) {
        Runnable runnable;
        if (i > AndroidUtilities.dp(20.0f) && isCustomKeyboardVisible()) {
            AndroidUtilities.hideKeyboard(this.fragmentView);
        }
        if (i > AndroidUtilities.dp(20.0f) || (runnable = this.keyboardHideCallback) == null) {
            return;
        }
        runnable.run();
        this.keyboardHideCallback = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view) {
        onDoneButtonPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(DynamicAnimation dynamicAnimation, float f, float f2) {
        PhoneNumberConfirmView phoneNumberConfirmView = this.phoneNumberConfirmView;
        if (phoneNumberConfirmView != null) {
            phoneNumberConfirmView.updateFabPosition();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(View view) {
        if (onBackPressed(true)) {
            finishFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(View view) {
        Runnable runnable = this.emailChangeSkipCallback;
        if (runnable != null) {
            runnable.run();
        }
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(View view) {
        showLoginOptionsMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCustomKeyboardForceDisabled() {
        return AndroidUtilities.isAccessibilityTouchExplorationEnabled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCustomKeyboardVisible() {
        return this.views[this.currentViewNum].hasCustomKeyboard() && !isCustomKeyboardForceDisabled();
    }

    private void setCustomKeyboardVisible(boolean z, boolean z2) {
        if (this.customKeyboardWasVisible == z && z2) {
            return;
        }
        this.customKeyboardWasVisible = z;
        if (isCustomKeyboardForceDisabled()) {
            z = false;
        }
        if (z) {
            AndroidUtilities.hideKeyboard(this.fragmentView);
            AndroidUtilities.requestAltFocusable(getParentActivity(), this.classGuid);
            if (z2) {
                ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(300L);
                this.keyboardAnimator = duration;
                duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
                this.keyboardAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda8
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$setCustomKeyboardVisible$6(valueAnimator);
                    }
                });
                this.keyboardAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.LoginActivity.5
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        LoginActivity.this.keyboardView.setVisibility(0);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (LoginActivity.this.keyboardAnimator == animator) {
                            LoginActivity.this.keyboardAnimator = null;
                        }
                    }
                });
                this.keyboardAnimator.start();
                return;
            }
            this.keyboardView.setVisibility(0);
            return;
        }
        AndroidUtilities.removeAltFocusable(getParentActivity(), this.classGuid);
        if (z2) {
            ValueAnimator duration2 = ValueAnimator.ofFloat(1.0f, 0.0f).setDuration(300L);
            this.keyboardAnimator = duration2;
            duration2.setInterpolator(Easings.easeInOutQuad);
            this.keyboardAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda9
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$setCustomKeyboardVisible$7(valueAnimator);
                }
            });
            this.keyboardAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.LoginActivity.6
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    LoginActivity.this.keyboardView.setVisibility(8);
                    if (LoginActivity.this.keyboardAnimator == animator) {
                        LoginActivity.this.keyboardAnimator = null;
                    }
                }
            });
            this.keyboardAnimator.start();
            return;
        }
        this.keyboardView.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCustomKeyboardVisible$6(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.keyboardView.setAlpha(fFloatValue);
        this.keyboardView.setTranslationY((1.0f - fFloatValue) * AndroidUtilities.dp(230.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCustomKeyboardVisible$7(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.keyboardView.setAlpha(fFloatValue);
        this.keyboardView.setTranslationY((1.0f - fFloatValue) * AndroidUtilities.dp(230.0f));
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        if (this.newAccount) {
            ConnectionsManager.getInstance(this.currentAccount).setAppPaused(true, false);
        }
        AndroidUtilities.removeAltFocusable(getParentActivity(), this.classGuid);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        SlideView slideView;
        int i;
        super.onResume();
        if (this.newAccount) {
            ConnectionsManager.getInstance(this.currentAccount).setAppPaused(false, false);
        }
        AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
        View view = this.fragmentView;
        if (view != null) {
            view.requestLayout();
        }
        try {
            int i2 = this.currentViewNum;
            if (i2 >= 1 && i2 <= 4) {
                SlideView slideView2 = this.views[i2];
                if ((slideView2 instanceof LoginActivitySmsView) && (i = ((LoginActivitySmsView) slideView2).openTime) != 0 && Math.abs((System.currentTimeMillis() / 1000) - ((long) i)) >= 86400) {
                    this.views[this.currentViewNum].onBackPressed(true);
                    setPage(0, false, null, true);
                }
            }
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
        int i3 = this.currentViewNum;
        if (i3 == 0 && (slideView = this.views[i3]) != null) {
            slideView.onShow();
        }
        if (isCustomKeyboardVisible()) {
            AndroidUtilities.hideKeyboard(this.fragmentView);
            AndroidUtilities.requestAltFocusable(getParentActivity(), this.classGuid);
        }
        int i4 = this.currentViewNum;
        if (i4 >= 0) {
            SlideView[] slideViewArr = this.views;
            if (i4 < slideViewArr.length) {
                slideViewArr[i4].onResume();
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onConfigurationChanged(Configuration configuration) {
        setCustomKeyboardVisible(this.views[this.currentViewNum].hasCustomKeyboard(), false);
        PhoneNumberConfirmView phoneNumberConfirmView = this.phoneNumberConfirmView;
        if (phoneNumberConfirmView != null) {
            phoneNumberConfirmView.dismiss();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        if (strArr.length == 0 || iArr.length == 0) {
            return;
        }
        boolean z = iArr[0] == 0;
        if (i == 6) {
            this.checkPermissions = false;
            int i2 = this.currentViewNum;
            if (i2 == 0) {
                ((PhoneView) this.views[i2]).confirmedNumber = true;
                this.views[this.currentViewNum].lambda$onNextPressed$17(null);
                return;
            }
            return;
        }
        if (i == 20) {
            if (z) {
                ((LoginActivityRegisterView) this.views[5]).imageUpdater.openCamera();
            }
        } else if (i == 151 && z) {
            final LoginActivityRegisterView loginActivityRegisterView = (LoginActivityRegisterView) this.views[5];
            loginActivityRegisterView.post(new Runnable() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    loginActivityRegisterView.imageUpdater.openGallery();
                }
            });
        }
    }

    public static Bundle loadCurrentState(boolean z, int i) {
        try {
            Bundle bundle = new Bundle();
            Context context = ApplicationLoader.applicationContext;
            String str = z ? "_" + i : _UrlKt.FRAGMENT_ENCODE_SET;
            for (Map.Entry<String, ?> entry : context.getSharedPreferences("logininfo2".concat(str), 0).getAll().entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                String[] strArrSplit = key.split("_\\|_");
                if (strArrSplit.length == 1) {
                    if (value instanceof String) {
                        bundle.putString(key, (String) value);
                    } else if (value instanceof Integer) {
                        bundle.putInt(key, ((Integer) value).intValue());
                    } else if (value instanceof Boolean) {
                        bundle.putBoolean(key, ((Boolean) value).booleanValue());
                    }
                } else if (strArrSplit.length == 2) {
                    Bundle bundle2 = bundle.getBundle(strArrSplit[0]);
                    if (bundle2 == null) {
                        bundle2 = new Bundle();
                        bundle.putBundle(strArrSplit[0], bundle2);
                    }
                    if (value instanceof String) {
                        bundle2.putString(strArrSplit[1], (String) value);
                    } else if (value instanceof Integer) {
                        bundle2.putInt(strArrSplit[1], ((Integer) value).intValue());
                    } else if (value instanceof Boolean) {
                        bundle2.putBoolean(strArrSplit[1], ((Boolean) value).booleanValue());
                    }
                }
            }
            return bundle;
        } catch (Exception e) {
            FileLog.m1040e(e);
            return null;
        }
    }

    private void clearCurrentState() {
        String str;
        Context context = ApplicationLoader.applicationContext;
        if (this.newAccount) {
            str = "_" + this.currentAccount;
        } else {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("logininfo2".concat(str), 0).edit();
        editorEdit.clear();
        editorEdit.apply();
    }

    private void putBundleToEditor(Bundle bundle, SharedPreferences.Editor editor, String str) {
        for (String str2 : bundle.keySet()) {
            Object obj = bundle.get(str2);
            if (obj instanceof String) {
                if (str != null) {
                    editor.putString(str + "_|_" + str2, (String) obj);
                } else {
                    editor.putString(str2, (String) obj);
                }
            } else if (obj instanceof Integer) {
                if (str != null) {
                    editor.putInt(str + "_|_" + str2, ((Integer) obj).intValue());
                } else {
                    editor.putInt(str2, ((Integer) obj).intValue());
                }
            } else if (obj instanceof Boolean) {
                if (str != null) {
                    editor.putBoolean(str + "_|_" + str2, ((Boolean) obj).booleanValue());
                } else {
                    editor.putBoolean(str2, ((Boolean) obj).booleanValue());
                }
            } else if (obj instanceof Bundle) {
                putBundleToEditor((Bundle) obj, editor, str2);
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onDialogDismiss(Dialog dialog) {
        if (dialog != this.permissionsDialog || this.permissionsItems.isEmpty() || getParentActivity() == null) {
            return;
        }
        try {
            getParentActivity().requestPermissions((String[]) this.permissionsItems.toArray(new String[0]), 6);
        } catch (Exception unused) {
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return !this.emailChangeIsSuggestion;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        int i = 0;
        if (this.emailChangeIsSuggestion && this.currentViewNum == 12) {
            return false;
        }
        int i2 = this.currentViewNum;
        if (i2 == 0 || (this.activityMode == 3 && i2 == 12)) {
            if (z) {
                while (true) {
                    SlideView[] slideViewArr = this.views;
                    if (i >= slideViewArr.length) {
                        break;
                    }
                    SlideView slideView = slideViewArr[i];
                    if (slideView != null) {
                        slideView.onDestroyActivity();
                    }
                    i++;
                }
                clearCurrentState();
            }
            return true;
        }
        if (i2 == 6) {
            if (z) {
                this.views[i2].onBackPressed(true);
                setPage(0, true, null, true);
            }
        } else if (i2 == 7 || i2 == 8) {
            if (z) {
                this.views[i2].onBackPressed(true);
                setPage(6, true, null, true);
            }
        } else if ((i2 >= 1 && i2 <= 4) || i2 == 11 || i2 == 15) {
            if (z && this.views[i2].onBackPressed(false)) {
                setPage(0, true, null, true);
            }
        } else if (i2 == 5) {
            if (z) {
                ((LoginActivityRegisterView) this.views[i2]).wrongNumber.callOnClick();
            }
        } else if (i2 == 9) {
            if (z) {
                this.views[i2].onBackPressed(true);
                setPage(7, true, null, true);
            }
        } else if (i2 == 10) {
            if (z) {
                this.views[i2].onBackPressed(true);
                setPage(9, true, null, true);
            }
        } else if (i2 == 13) {
            if (z) {
                this.views[i2].onBackPressed(true);
                setPage(12, true, null, true);
            }
        } else if (z && this.views[i2].onBackPressed(true)) {
            setPage(0, true, null, true);
        }
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        int i3;
        super.onActivityResultFragment(i, i2, intent);
        if (i == 201 && (i3 = this.currentViewNum) == 0) {
            SlideView slideView = this.views[i3];
            if (slideView instanceof PhoneView) {
                ((PhoneView) slideView).handlePhoneNumberHintResult(i2, intent);
                return;
            }
        }
        LoginActivityRegisterView loginActivityRegisterView = (LoginActivityRegisterView) this.views[5];
        if (loginActivityRegisterView != null) {
            loginActivityRegisterView.imageUpdater.onActivityResult(i, i2, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void needShowAlert(String str, String str2) {
        if (str2 == null || getParentActivity() == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(str);
        builder.setMessage(str2);
        builder.setPositiveButton(LocaleController.getString("OK", C2807R.string.OK), null);
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFieldError(final View view, boolean z) {
        try {
            view.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        AndroidUtilities.shakeViewSpring(view, 3.5f);
        if (z && (view instanceof OutlineTextContainerView)) {
            Runnable runnable = (Runnable) view.getTag(C2807R.id.timeout_callback);
            if (runnable != null) {
                view.removeCallbacks(runnable);
            }
            final OutlineTextContainerView outlineTextContainerView = (OutlineTextContainerView) view;
            AtomicReference atomicReference = new AtomicReference();
            final EditText attachedEditText = outlineTextContainerView.getAttachedEditText();
            final C53307 c53307 = new C53307(attachedEditText, atomicReference);
            outlineTextContainerView.animateError(1.0f);
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    LoginActivity.$r8$lambda$cQkMCWgAqzo6ZDsWrEi6MDVV9mY(outlineTextContainerView, view, attachedEditText, c53307);
                }
            };
            atomicReference.set(runnable2);
            view.postDelayed(runnable2, 2000L);
            view.setTag(C2807R.id.timeout_callback, runnable2);
            if (attachedEditText != null) {
                attachedEditText.addTextChangedListener(c53307);
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.LoginActivity$7 */
    public class C53307 implements TextWatcher {
        final /* synthetic */ EditText val$editText;
        final /* synthetic */ AtomicReference val$timeoutCallbackRef;

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public C53307(EditText editText, AtomicReference atomicReference) {
            this.val$editText = editText;
            this.val$timeoutCallbackRef = atomicReference;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            final EditText editText = this.val$editText;
            final AtomicReference atomicReference = this.val$timeoutCallbackRef;
            editText.post(new Runnable() { // from class: org.telegram.ui.LoginActivity$7$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$beforeTextChanged$0(editText, atomicReference);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$beforeTextChanged$0(EditText editText, AtomicReference atomicReference) {
            editText.removeTextChangedListener(this);
            editText.removeCallbacks((Runnable) atomicReference.get());
            ((Runnable) atomicReference.get()).run();
        }
    }

    public static /* synthetic */ void $r8$lambda$cQkMCWgAqzo6ZDsWrEi6MDVV9mY(OutlineTextContainerView outlineTextContainerView, View view, final EditText editText, final TextWatcher textWatcher) {
        outlineTextContainerView.animateError(0.0f);
        view.setTag(C2807R.id.timeout_callback, null);
        if (editText != null) {
            editText.post(new Runnable() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() {
                    editText.removeTextChangedListener(textWatcher);
                }
            });
        }
    }

    public static void needShowInvalidAlert(BaseFragment baseFragment, String str, boolean z) {
        needShowInvalidAlert(baseFragment, str, null, z);
    }

    public static void needShowInvalidAlert(final BaseFragment baseFragment, final String str, PhoneInputData phoneInputData, final boolean z) {
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity());
        if (z) {
            builder.setTitle(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle));
            builder.setMessage(LocaleController.getString("BannedPhoneNumber", C2807R.string.BannedPhoneNumber));
        } else if (phoneInputData != null && phoneInputData.patterns != null && !phoneInputData.patterns.isEmpty() && phoneInputData.country != null) {
            Iterator it = phoneInputData.patterns.iterator();
            int i = Integer.MAX_VALUE;
            while (it.hasNext()) {
                int length = ((String) it.next()).replace(" ", _UrlKt.FRAGMENT_ENCODE_SET).length();
                if (length < i) {
                    i = length;
                }
            }
            if (PhoneFormat.stripExceptNumbers(str).length() - phoneInputData.country.code.length() < i) {
                builder.setTitle(LocaleController.getString(C2807R.string.WrongNumberFormat));
                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("ShortNumberInfo", C2807R.string.ShortNumberInfo, phoneInputData.country.name, phoneInputData.phoneNumber)));
            } else {
                builder.setTitle(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle));
                builder.setMessage(LocaleController.getString(C2807R.string.InvalidPhoneNumber));
            }
        } else {
            builder.setTitle(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle));
            builder.setMessage(LocaleController.getString(C2807R.string.InvalidPhoneNumber));
        }
        builder.setNeutralButton(LocaleController.getString("BotHelp", C2807R.string.BotHelp), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda21
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                LoginActivity.$r8$lambda$R2yhBlqZCtlt_AN9IAaAV6oV4EQ(z, str, baseFragment, alertDialog, i2);
            }
        });
        builder.setPositiveButton(LocaleController.getString("OK", C2807R.string.OK), null);
        baseFragment.showDialog(builder.create());
    }

    public static /* synthetic */ void $r8$lambda$R2yhBlqZCtlt_AN9IAaAV6oV4EQ(boolean z, String str, BaseFragment baseFragment, AlertDialog alertDialog, int i) {
        try {
            PackageInfo packageInfo = ApplicationLoader.applicationContext.getPackageManager().getPackageInfo(ApplicationLoader.applicationContext.getPackageName(), 0);
            String str2 = String.format(Locale.US, "%s (%d)", packageInfo.versionName, Integer.valueOf(packageInfo.versionCode));
            Intent intent = new Intent("android.intent.action.SENDTO");
            intent.setData(Uri.parse("mailto:"));
            String[] strArr = new String[1];
            strArr[0] = z ? "recover@telegram.org" : "login@stel.com";
            intent.putExtra("android.intent.extra.EMAIL", strArr);
            if (z) {
                intent.putExtra("android.intent.extra.SUBJECT", "Banned phone number: " + str);
                intent.putExtra("android.intent.extra.TEXT", "I'm trying to use my mobile phone number: " + str + "\nBut Telegram says it's banned. Please help.\n\nApp version: " + str2 + "\nOS version: SDK " + Build.VERSION.SDK_INT + "\nDevice Name: " + Build.MANUFACTURER + Build.MODEL + "\nLocale: " + Locale.getDefault());
            } else {
                intent.putExtra("android.intent.extra.SUBJECT", "Invalid phone number: " + str);
                intent.putExtra("android.intent.extra.TEXT", "I'm trying to use my mobile phone number: " + str + "\nBut Telegram says it's invalid. Please help.\n\nApp version: " + str2 + "\nOS version: SDK " + Build.VERSION.SDK_INT + "\nDevice Name: " + Build.MANUFACTURER + Build.MODEL + "\nLocale: " + Locale.getDefault());
            }
            baseFragment.getParentActivity().startActivity(Intent.createChooser(intent, "Send email..."));
        } catch (Exception unused) {
            AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity());
            builder.setTitle(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle));
            builder.setMessage(LocaleController.getString("NoMailInstalled", C2807R.string.NoMailInstalled));
            builder.setPositiveButton(LocaleController.getString("OK", C2807R.string.OK), null);
            baseFragment.showDialog(builder.create());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDoneButton(final boolean z, boolean z2) {
        TimeInterpolator timeInterpolator;
        int i = this.currentDoneType;
        final boolean z3 = i == 0;
        if (this.doneButtonVisible[i] == z) {
            return;
        }
        AnimatorSet animatorSet = this.showDoneAnimation[i];
        if (animatorSet != null) {
            if (z2) {
                animatorSet.removeAllListeners();
            }
            this.showDoneAnimation[this.currentDoneType].cancel();
        }
        boolean[] zArr = this.doneButtonVisible;
        int i2 = this.currentDoneType;
        zArr[i2] = z;
        if (z2) {
            this.showDoneAnimation[i2] = new AnimatorSet();
            if (z) {
                if (z3) {
                    if (this.floatingButton.getVisibility() != 0) {
                        this.floatingAutoAnimator.setOffsetY(AndroidUtilities.dpf2(70.0f));
                        this.floatingButton.setVisibility(0);
                    }
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.floatingAutoAnimator.getOffsetY(), 0.0f);
                    valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda13
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$showDoneButton$12(valueAnimator);
                        }
                    });
                    this.showDoneAnimation[this.currentDoneType].play(valueAnimatorOfFloat);
                }
            } else if (z3) {
                ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(this.floatingAutoAnimator.getOffsetY(), AndroidUtilities.dpf2(70.0f));
                valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda14
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$showDoneButton$13(valueAnimator);
                    }
                });
                this.showDoneAnimation[this.currentDoneType].play(valueAnimatorOfFloat2);
            }
            this.showDoneAnimation[this.currentDoneType].addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.LoginActivity.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (LoginActivity.this.showDoneAnimation[!z3 ? 1 : 0] == null || !LoginActivity.this.showDoneAnimation[!z3 ? 1 : 0].equals(animator) || z) {
                        return;
                    }
                    if (z3) {
                        LoginActivity.this.floatingButton.setVisibility(8);
                    }
                    if (!z3 || LoginActivity.this.floatingButtonIcon.getAlpha() == 1.0f) {
                        return;
                    }
                    LoginActivity.this.floatingButtonIcon.setAlpha(1.0f);
                    LoginActivity.this.floatingButtonIcon.setScaleX(1.0f);
                    LoginActivity.this.floatingButtonIcon.setScaleY(1.0f);
                    LoginActivity.this.floatingButtonIcon.setVisibility(0);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    if (LoginActivity.this.showDoneAnimation[!z3 ? 1 : 0] == null || !LoginActivity.this.showDoneAnimation[!z3 ? 1 : 0].equals(animator)) {
                        return;
                    }
                    LoginActivity.this.showDoneAnimation[!z3 ? 1 : 0] = null;
                }
            });
            int i3 = 150;
            if (!z3) {
                timeInterpolator = null;
            } else if (z) {
                timeInterpolator = AndroidUtilities.decelerateInterpolator;
                i3 = 200;
            } else {
                timeInterpolator = AndroidUtilities.accelerateInterpolator;
            }
            this.showDoneAnimation[this.currentDoneType].setDuration(i3);
            this.showDoneAnimation[this.currentDoneType].setInterpolator(timeInterpolator);
            this.showDoneAnimation[this.currentDoneType].start();
            return;
        }
        VerticalPositionAutoAnimator verticalPositionAutoAnimator = this.floatingAutoAnimator;
        if (z) {
            verticalPositionAutoAnimator.setOffsetY(0.0f);
            this.floatingButton.setAlpha(1.0f);
            this.floatingButton.setVisibility(0);
        } else {
            verticalPositionAutoAnimator.setOffsetY(AndroidUtilities.dpf2(70.0f));
            this.floatingButton.setAlpha(0.0f);
            this.floatingButton.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDoneButton$12(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.floatingAutoAnimator.setOffsetY(fFloatValue);
        this.floatingButton.setAlpha(1.0f - (fFloatValue / AndroidUtilities.dpf2(70.0f)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDoneButton$13(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.floatingAutoAnimator.setOffsetY(fFloatValue);
        this.floatingButton.setAlpha(1.0f - (fFloatValue / AndroidUtilities.dpf2(70.0f)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDoneButtonPressed() {
        if (this.doneButtonVisible[this.currentDoneType]) {
            if (this.radialProgressView.getTag() != null) {
                if (getParentActivity() == null) {
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                builder.setTitle(LocaleController.getString("StopLoadingTitle", C2807R.string.StopLoadingTitle));
                builder.setMessage(LocaleController.getString("StopLoading", C2807R.string.StopLoading));
                builder.setPositiveButton(LocaleController.getString("WaitMore", C2807R.string.WaitMore), null);
                builder.setNegativeButton(LocaleController.getString("Stop", C2807R.string.Stop), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda22
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        this.f$0.lambda$onDoneButtonPressed$14(alertDialog, i);
                    }
                });
                showDialog(builder.create());
                return;
            }
            this.views[this.currentViewNum].lambda$onNextPressed$17(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDoneButtonPressed$14(AlertDialog alertDialog, int i) {
        this.views[this.currentViewNum].onCancelPressed();
        needHideProgress(true);
    }

    private void showEditDoneProgress(boolean z, boolean z2) {
        lambda$showEditDoneProgress$15(z, z2, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showEditDoneProgress, reason: merged with bridge method [inline-methods] */
    public void lambda$showEditDoneProgress$15(final boolean z, final boolean z2, final boolean z3) {
        if (z2 && this.doneProgressVisible[this.currentDoneType] == z && !z3) {
            return;
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showEditDoneProgress$15(z, z2, z3);
                }
            });
            return;
        }
        final int i = this.currentDoneType;
        boolean z4 = i == 0;
        if (!z3 && !z4) {
            this.doneProgressVisible[i] = z;
            if (z2) {
                if (this.postedEditDoneCallback[i]) {
                    AndroidUtilities.cancelRunOnUIThread(this.editDoneCallback[i]);
                    this.postedEditDoneCallback[this.currentDoneType] = false;
                    return;
                } else if (z) {
                    Runnable[] runnableArr = this.editDoneCallback;
                    Runnable runnable = new Runnable() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda16
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$showEditDoneProgress$16(i, z, z2);
                        }
                    };
                    runnableArr[i] = runnable;
                    AndroidUtilities.runOnUIThread(runnable, 2000L);
                    this.postedEditDoneCallback[this.currentDoneType] = true;
                    return;
                }
            }
        } else {
            this.postedEditDoneCallback[i] = false;
            this.doneProgressVisible[i] = z;
        }
        AnimatorSet animatorSet = this.doneItemAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        if (z4) {
            this.floatingButton.setProgressVisible(z, z2);
            return;
        }
        if (z2) {
            this.doneItemAnimation = new AnimatorSet();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
            valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.LoginActivity.9
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    if (z) {
                        LoginActivity.this.radialProgressView.setVisibility(0);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (!z) {
                        LoginActivity.this.radialProgressView.setVisibility(4);
                    }
                    if (LoginActivity.this.doneItemAnimation == null || !LoginActivity.this.doneItemAnimation.equals(animator)) {
                        return;
                    }
                    LoginActivity.this.doneItemAnimation = null;
                }
            });
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda17
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$showEditDoneProgress$17(valueAnimator);
                }
            });
            this.doneItemAnimation.playTogether(valueAnimatorOfFloat);
            this.doneItemAnimation.setDuration(150L);
            this.doneItemAnimation.start();
            return;
        }
        RadialProgressView radialProgressView = this.radialProgressView;
        if (z) {
            radialProgressView.setVisibility(0);
            this.radialProgressView.setScaleX(1.0f);
            this.radialProgressView.setScaleY(1.0f);
            this.radialProgressView.setAlpha(1.0f);
            return;
        }
        radialProgressView.setTag(null);
        this.radialProgressView.setVisibility(4);
        this.radialProgressView.setScaleX(0.1f);
        this.radialProgressView.setScaleY(0.1f);
        this.radialProgressView.setAlpha(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showEditDoneProgress$16(int i, boolean z, boolean z2) {
        int i2 = this.currentDoneType;
        this.currentDoneType = i;
        lambda$showEditDoneProgress$15(z, z2, true);
        this.currentDoneType = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showEditDoneProgress$17(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float f = (0.9f * fFloatValue) + 0.1f;
        this.radialProgressView.setScaleX(f);
        this.radialProgressView.setScaleY(f);
        this.radialProgressView.setAlpha(fFloatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void needShowProgress(int i) {
        needShowProgress(i, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void needShowProgress(int i, boolean z) {
        if (isInCancelAccountDeletionMode() && i == 0) {
            if (this.cancelDeleteProgressDialog != null || getParentActivity() == null || getParentActivity().isFinishing()) {
                return;
            }
            AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
            this.cancelDeleteProgressDialog = alertDialog;
            alertDialog.setCanCancel(false);
            this.cancelDeleteProgressDialog.show();
            return;
        }
        this.progressRequestId = i;
        showEditDoneProgress(true, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void needHideProgress(boolean z) {
        needHideProgress(z, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void needHideProgress(boolean z, boolean z2) {
        AlertDialog alertDialog;
        if (this.progressRequestId != 0) {
            if (z) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.progressRequestId, true);
            }
            this.progressRequestId = 0;
        }
        if (isInCancelAccountDeletionMode() && (alertDialog = this.cancelDeleteProgressDialog) != null) {
            alertDialog.dismiss();
            this.cancelDeleteProgressDialog = null;
        }
        showEditDoneProgress(false, z2);
    }

    public void setPage(int i, boolean z, Bundle bundle, boolean z2) {
        final boolean z3 = i == 0 || i == 5 || i == 6 || i == 9 || i == 10 || i == 12 || i == 17 || i == 16;
        if (i == this.currentViewNum) {
            z = false;
        }
        if (z3) {
            if (i == 0) {
                this.checkPermissions = true;
            }
            this.currentDoneType = 1;
            showDoneButton(false, z);
            showEditDoneProgress(false, z);
            this.currentDoneType = 0;
            showEditDoneProgress(false, z);
            if (!z) {
                showDoneButton(true, false);
            }
        } else {
            this.currentDoneType = 0;
            showDoneButton(false, z);
            showEditDoneProgress(false, z);
            if (i != 8) {
                this.currentDoneType = 1;
            }
        }
        if (z) {
            SlideView[] slideViewArr = this.views;
            final SlideView slideView = slideViewArr[this.currentViewNum];
            SlideView slideView2 = slideViewArr[i];
            this.currentViewNum = i;
            this.backButtonView.setVisibility((slideView2.needBackButton() || this.newAccount) ? 0 : 8);
            this.proxyButtonView.setVisibility(this.currentViewNum == 0 ? 0 : 8);
            slideView2.setParams(bundle, false);
            setParentActivityTitle(slideView2.getHeaderName());
            slideView2.onShow();
            int i2 = AndroidUtilities.displaySize.x;
            if (z2) {
                i2 = -i2;
            }
            slideView2.setX(i2);
            slideView2.setVisibility(0);
            if (this.currentDoneType == 0 && z3) {
                showDoneButton(true, true);
            }
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.LoginActivity.10
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (LoginActivity.this.currentDoneType == 0 && z3) {
                        LoginActivity.this.showDoneButton(true, true);
                    }
                    slideView.setVisibility(8);
                    slideView.onHide();
                    slideView.setX(0.0f);
                }
            });
            Property property = View.TRANSLATION_X;
            animatorSet.playTogether(ObjectAnimator.ofFloat(slideView, (Property<SlideView, Float>) property, z2 ? AndroidUtilities.displaySize.x : -AndroidUtilities.displaySize.x), ObjectAnimator.ofFloat(slideView2, (Property<SlideView, Float>) property, 0.0f));
            animatorSet.setDuration(300L);
            animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
            animatorSet.start();
            setCustomKeyboardVisible(slideView2.hasCustomKeyboard(), true);
            return;
        }
        this.backButtonView.setVisibility((this.views[i].needBackButton() || this.newAccount) ? 0 : 8);
        this.proxyButtonView.setVisibility(i == 0 ? 0 : 8);
        this.views[this.currentViewNum].setVisibility(8);
        this.views[this.currentViewNum].onHide();
        this.currentViewNum = i;
        this.views[i].setParams(bundle, false);
        this.views[i].setVisibility(0);
        setParentActivityTitle(this.views[i].getHeaderName());
        this.views[i].onShow();
        setCustomKeyboardVisible(this.views[i].hasCustomKeyboard(), false);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void saveSelfArgs(Bundle bundle) {
        try {
            Bundle bundle2 = new Bundle();
            bundle2.putInt("currentViewNum", this.currentViewNum);
            bundle2.putInt("syncContacts", this.syncContacts ? 1 : 0);
            for (int i = 0; i <= this.currentViewNum; i++) {
                SlideView slideView = this.views[i];
                if (slideView != null) {
                    slideView.saveStateParams(bundle2);
                }
            }
            Context context = ApplicationLoader.applicationContext;
            StringBuilder sb = new StringBuilder();
            sb.append("logininfo2");
            sb.append(this.newAccount ? "_" + this.currentAccount : _UrlKt.FRAGMENT_ENCODE_SET);
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(sb.toString(), 0).edit();
            editorEdit.clear();
            putBundleToEditor(bundle2, editorEdit, null);
            editorEdit.apply();
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    private void needFinishActivity(final boolean z, boolean z2, int i) {
        if (getParentActivity() != null) {
            AndroidUtilities.setLightStatusBar(getParentActivity(), false);
        }
        clearCurrentState();
        if (getParentActivity() instanceof LaunchActivity) {
            if (this.newAccount) {
                this.newAccount = false;
                this.pendingSwitchingAccount = true;
                ((LaunchActivity) getParentActivity()).switchToAccount(this.currentAccount, true, new GenericProvider() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda25
                    @Override // org.telegram.messenger.GenericProvider
                    public final Object provide(Object obj) {
                        return LoginActivity.$r8$lambda$fQjuG1p1jelJBTD3_0GqFA5uieM(z, (Void) obj);
                    }
                });
                this.pendingSwitchingAccount = false;
                finishFragment();
                return;
            }
            if (z && z2) {
                TwoStepVerificationSetupActivity twoStepVerificationSetupActivity = new TwoStepVerificationSetupActivity(6, null);
                twoStepVerificationSetupActivity.setBlockingAlert(i);
                twoStepVerificationSetupActivity.setFromRegistration(true);
                presentFragment(twoStepVerificationSetupActivity, true);
            } else {
                Bundle bundle = new Bundle();
                bundle.putBoolean("afterSignup", z);
                MainTabsActivity mainTabsActivity = new MainTabsActivity();
                mainTabsActivity.prepareDialogsActivity(bundle);
                presentFragment(mainTabsActivity, true);
            }
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
            LocaleController.getInstance().loadRemoteLanguages(this.currentAccount);
            RestrictedLanguagesSelectActivity.checkRestrictedLanguages(true);
            return;
        }
        if (getParentActivity() instanceof ExternalActionActivity) {
            ((ExternalActionActivity) getParentActivity()).onFinishLogin();
        }
    }

    public static /* synthetic */ MainTabsActivity $r8$lambda$fQjuG1p1jelJBTD3_0GqFA5uieM(boolean z, Void r2) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("afterSignup", z);
        MainTabsActivity mainTabsActivity = new MainTabsActivity();
        mainTabsActivity.prepareDialogsActivity(bundle);
        return mainTabsActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAuthSuccess(TLRPC.TL_auth_authorization tL_auth_authorization) {
        onAuthSuccess(tL_auth_authorization, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAuthSuccess(TLRPC.TL_auth_authorization tL_auth_authorization, boolean z) {
        MessagesController.getInstance(this.currentAccount).cleanup();
        ConnectionsManager.getInstance(this.currentAccount).setUserId(tL_auth_authorization.user.id);
        UserConfig.getInstance(this.currentAccount).clearConfig();
        MessagesController.getInstance(this.currentAccount).cleanup();
        UserConfig.getInstance(this.currentAccount).syncContacts = this.syncContacts;
        UserConfig.getInstance(this.currentAccount).setCurrentUser(tL_auth_authorization.user);
        UserConfig.getInstance(this.currentAccount).saveConfig(true);
        MessagesStorage.getInstance(this.currentAccount).cleanup(true);
        ArrayList arrayList = new ArrayList();
        arrayList.add(tL_auth_authorization.user);
        MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(arrayList, null, true, true);
        MessagesController.getInstance(this.currentAccount).putUser(tL_auth_authorization.user, false);
        ContactsController.getInstance(this.currentAccount).checkAppAccount();
        MessagesController.getInstance(this.currentAccount).checkPromoInfo(true);
        ConnectionsManager.getInstance(this.currentAccount).updateDcSettings();
        MessagesController.getInstance(this.currentAccount).loadAppConfig();
        MessagesController.getInstance(this.currentAccount).lambda$removeWebBrowserException$522();
        MessagesController.getInstance(this.currentAccount).checkPeerColors(false);
        if (tL_auth_authorization.future_auth_token != null) {
            AuthTokensHelper.saveLogInToken(tL_auth_authorization);
        } else {
            FileLog.m1037d("onAuthSuccess future_auth_token is empty");
        }
        if (z) {
            MessagesController.getInstance(this.currentAccount).putDialogsEndReachedAfterRegistration();
        }
        MediaDataController.getInstance(this.currentAccount).loadStickersByEmojiOrName(AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME, false, true);
        needFinishActivity(z, tL_auth_authorization.setup_password_required, tL_auth_authorization.otherwise_relogin_days);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillNextCodeParams(Bundle bundle, TL_account.sentEmailCode sentemailcode) {
        bundle.putString("emailPattern", sentemailcode.email_pattern);
        bundle.putInt("length", sentemailcode.length);
        setPage(13, true, bundle, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillNextCodeParams(Bundle bundle, TLRPC.auth_SentCode auth_sentcode) {
        fillNextCodeParams(bundle, auth_sentcode, true);
    }

    public void open(String str, TLRPC.auth_SentCode auth_sentcode) {
        this.paid = true;
        Bundle bundle = new Bundle();
        bundle.putString("phone", "+" + str);
        bundle.putString("ephone", "+" + str);
        bundle.putString("phoneFormated", str);
        fillNextCodeParams(bundle, auth_sentcode, true);
    }

    private void fillNextCodeParams(Bundle bundle, TLRPC.auth_SentCode auth_sentcode, boolean z) {
        if (auth_sentcode instanceof TLRPC.TL_auth_sentCodePaymentRequired) {
            TLRPC.TL_auth_sentCodePaymentRequired tL_auth_sentCodePaymentRequired = (TLRPC.TL_auth_sentCodePaymentRequired) auth_sentcode;
            bundle.putString("product", tL_auth_sentCodePaymentRequired.store_product);
            bundle.putString("phoneHash", tL_auth_sentCodePaymentRequired.phone_code_hash);
            bundle.putString("support_email_address", tL_auth_sentCodePaymentRequired.support_email_address);
            bundle.putString("support_email_subject", tL_auth_sentCodePaymentRequired.support_email_subject);
            bundle.putString("currency", tL_auth_sentCodePaymentRequired.currency);
            bundle.putInt("premium_days", tL_auth_sentCodePaymentRequired.premium_days);
            bundle.putLong("amount", tL_auth_sentCodePaymentRequired.amount);
            setPage(19, true, bundle, true);
            return;
        }
        bundle.putString("phoneHash", auth_sentcode.phone_code_hash);
        TLRPC.auth_CodeType auth_codetype = auth_sentcode.next_type;
        if (auth_codetype instanceof TLRPC.TL_auth_codeTypeCall) {
            bundle.putInt("nextType", 4);
        } else if (auth_codetype instanceof TLRPC.TL_auth_codeTypeFlashCall) {
            bundle.putInt("nextType", 3);
        } else if (auth_codetype instanceof TLRPC.TL_auth_codeTypeSms) {
            bundle.putInt("nextType", 2);
        } else if (auth_codetype instanceof TLRPC.TL_auth_codeTypeMissedCall) {
            bundle.putInt("nextType", 11);
        } else if (auth_codetype instanceof TLRPC.TL_auth_codeTypeFragmentSms) {
            bundle.putInt("nextType", 15);
        }
        if (auth_sentcode.type instanceof TLRPC.TL_auth_sentCodeTypeApp) {
            bundle.putInt("type", 1);
            bundle.putInt("length", auth_sentcode.type.length);
            setPage(1, z, bundle, false);
            return;
        }
        if (auth_sentcode.timeout == 0) {
            auth_sentcode.timeout = BuildVars.DEBUG_PRIVATE_VERSION ? 5 : 60;
        }
        bundle.putInt("timeout", auth_sentcode.timeout * 1000);
        TLRPC.auth_SentCodeType auth_sentcodetype = auth_sentcode.type;
        if (auth_sentcodetype instanceof TLRPC.TL_auth_sentCodeTypeCall) {
            bundle.putInt("type", 4);
            bundle.putInt("length", auth_sentcode.type.length);
            setPage(4, z, bundle, false);
            return;
        }
        if (auth_sentcodetype instanceof TLRPC.TL_auth_sentCodeTypeFlashCall) {
            bundle.putInt("type", 3);
            bundle.putString("pattern", auth_sentcode.type.pattern);
            setPage(3, z, bundle, false);
            return;
        }
        if ((auth_sentcodetype instanceof TLRPC.TL_auth_sentCodeTypeSms) || (auth_sentcodetype instanceof TLRPC.TL_auth_sentCodeTypeFirebaseSms)) {
            bundle.putInt("type", 2);
            bundle.putInt("length", auth_sentcode.type.length);
            bundle.putBoolean("firebase", auth_sentcode.type instanceof TLRPC.TL_auth_sentCodeTypeFirebaseSms);
            setPage(2, z, bundle, false);
            return;
        }
        if (auth_sentcodetype instanceof TLRPC.TL_auth_sentCodeTypeFragmentSms) {
            bundle.putInt("type", 15);
            bundle.putString("url", auth_sentcode.type.url);
            bundle.putInt("length", auth_sentcode.type.length);
            setPage(15, z, bundle, false);
            return;
        }
        if (auth_sentcodetype instanceof TLRPC.TL_auth_sentCodeTypeMissedCall) {
            bundle.putInt("type", 11);
            bundle.putInt("length", auth_sentcode.type.length);
            bundle.putString("prefix", auth_sentcode.type.prefix);
            setPage(11, z, bundle, false);
            return;
        }
        if (auth_sentcodetype instanceof TLRPC.TL_auth_sentCodeTypeSetUpEmailRequired) {
            bundle.putBoolean("googleSignInAllowed", auth_sentcodetype.google_signin_allowed);
            setPage(12, z, bundle, false);
            return;
        }
        if (auth_sentcodetype instanceof TLRPC.TL_auth_sentCodeTypeEmailCode) {
            bundle.putBoolean("googleSignInAllowed", auth_sentcodetype.google_signin_allowed);
            bundle.putString("emailPattern", auth_sentcode.type.email_pattern);
            bundle.putInt("length", auth_sentcode.type.length);
            bundle.putInt("nextPhoneLoginDate", auth_sentcode.type.next_phone_login_date);
            bundle.putInt("resetAvailablePeriod", auth_sentcode.type.reset_available_period);
            bundle.putInt("resetPendingDate", auth_sentcode.type.reset_pending_date);
            setPage(14, z, bundle, false);
            return;
        }
        if (auth_sentcodetype instanceof TLRPC.TL_auth_sentCodeTypeSmsWord) {
            String str = auth_sentcodetype.beginning;
            if (str != null) {
                bundle.putString("beginning", str);
            }
            setPage(16, z, bundle, false);
            return;
        }
        if (auth_sentcodetype instanceof TLRPC.TL_auth_sentCodeTypeSmsPhrase) {
            String str2 = auth_sentcodetype.beginning;
            if (str2 != null) {
                bundle.putString("beginning", str2);
            }
            setPage(17, z, bundle, false);
        }
    }

    public class PhoneView extends SlideView implements AdapterView.OnItemSelectedListener, NotificationCenter.NotificationCenterDelegate {
        private Runnable cancelRequestingPasskey;
        private ImageView chevronRight;
        private View codeDividerView;
        private AnimatedPhoneNumberEditText codeField;
        private HashMap<String, List<CountrySelectActivity.Country>> codesMap;
        private boolean confirmedNumber;
        private ArrayList<CountrySelectActivity.Country> countriesArray;
        private TextViewSwitcher countryButton;
        private String countryCodeForHint;
        private OutlineTextContainerView countryOutlineView;
        private int countryState;
        private CountrySelectActivity.Country currentCountry;
        private boolean ignoreOnPhoneChange;
        private boolean ignoreOnPhoneChangePaste;
        private boolean ignoreOnTextChange;
        private boolean ignoreSelection;
        private long lastTitleClick;
        private Toast lastTitleToast;
        private boolean nextPressed;
        private boolean numberFilled;
        private AnimatedPhoneNumberEditText phoneField;
        private HashMap<String, List<String>> phoneFormatMap;
        private final ImageView phoneNumberHintButton;
        private OutlineTextContainerView phoneOutlineView;
        private TextView plusTextView;
        private boolean requestedPasskey;
        private boolean requestingPasskey;
        private boolean requestingPhoneNumberHint;
        private LinkSpanDrawable.LinksTextView subtitleView;
        private CheckBoxCell syncContactsBox;
        private CheckBoxCell testBackendCheckBox;
        private int titleClickCount;
        private TextView titleView;
        private int wasCountryHintIndex;

        @Override // org.telegram.ui.Components.SlideView
        public boolean hasCustomKeyboard() {
            return true;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }

        private void showDebugMenu() {
            new AlertDialog.Builder(getContext()).setTitle(LocaleController.getString(C2807R.string.SettingsDebug)).setItems(new String[]{LocaleController.getString(BuildVars.LOGS_ENABLED ? C2807R.string.DebugMenuDisableLogs : C2807R.string.DebugMenuEnableLogs), LocaleController.getString(C2807R.string.DebugSendLogs)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda23
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.lambda$showDebugMenu$0(dialogInterface, i);
                }
            }).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showDebugMenu$0(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                BuildVars.LOGS_ENABLED = !BuildVars.LOGS_ENABLED;
                ApplicationLoader.applicationContext.getSharedPreferences("systemConfig", 0).edit().putBoolean("logsEnabled", BuildVars.LOGS_ENABLED).commit();
                BulletinFactory.of(LoginActivity.this).createSimpleBulletin(C2807R.raw.chats_infotip, BuildVars.LOGS_ENABLED ? "Logs enabled." : "Logs disabled.").show();
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m1037d("app start time = " + ApplicationLoader.startTime);
                    try {
                        FileLog.m1037d("buildVersion = " + ApplicationLoader.applicationContext.getPackageManager().getPackageInfo(ApplicationLoader.applicationContext.getPackageName(), 0).versionCode);
                        return;
                    } catch (Exception e) {
                        FileLog.m1040e(e);
                        return;
                    }
                }
                return;
            }
            ProfileActivity.sendLogs(LoginActivity.this.getParentActivity(), false);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(30:0|2|(1:4)(1:5)|6|(1:8)(1:9)|10|(1:16)(1:15)|17|(1:23)(1:22)|24|(1:29)(1:28)|30|(1:41)(3:34|(1:39)(1:38)|40)|42|(3:46|(1:51)|52)|(1:56)|57|94|58|(11:59|(7:61|(2:63|(1:67))|70|(1:72)|73|(2:75|99)(1:100)|76)(1:98)|80|96|81|85|(1:87)|88|(1:90)(1:91)|92|93)|77|80|96|81|85|(0)|88|(0)(0)|92|93) */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x0506, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x0507, code lost:
        
            org.telegram.messenger.FileLog.m1040e(r0);
         */
        /* JADX WARN: Removed duplicated region for block: B:87:0x0529  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x053b  */
        /* JADX WARN: Removed duplicated region for block: B:91:0x054a  */
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
        public PhoneView(final Context context) {
            int i;
            BufferedReader bufferedReader;
            super(context);
            this.countryState = 0;
            this.countriesArray = new ArrayList<>();
            this.codesMap = new HashMap<>();
            this.phoneFormatMap = new HashMap<>();
            this.ignoreSelection = false;
            this.ignoreOnTextChange = false;
            this.ignoreOnPhoneChange = false;
            this.ignoreOnPhoneChangePaste = false;
            this.nextPressed = false;
            this.confirmedNumber = false;
            this.titleClickCount = 0;
            this.lastTitleClick = 0L;
            this.wasCountryHintIndex = -1;
            this.requestedPasskey = false;
            this.requestingPasskey = false;
            setOrientation(1);
            setGravity(17);
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextSize(1, 18.0f);
            this.titleView.setTypeface(AndroidUtilities.bold());
            this.titleView.setText(LocaleController.getString(LoginActivity.this.activityMode == 2 ? C2807R.string.ChangePhoneNewNumber : C2807R.string.YourNumber));
            this.titleView.setGravity(17);
            this.titleView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            addView(this.titleView, LayoutHelper.createFrame(-1, -2.0f, 1, 32.0f, 0.0f, 32.0f, 0.0f));
            this.titleView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$1(context, view);
                }
            });
            LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
            this.subtitleView = linksTextView;
            linksTextView.setText(LocaleController.getString(LoginActivity.this.activityMode == 2 ? C2807R.string.ChangePhoneHelp : C2807R.string.StartText));
            this.subtitleView.setTextSize(1, 14.0f);
            this.subtitleView.setGravity(17);
            this.subtitleView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            addView(this.subtitleView, LayoutHelper.createLinear(-1, -2, 1, 32, 8, 32, 0));
            TextViewSwitcher textViewSwitcher = new TextViewSwitcher(context);
            this.countryButton = textViewSwitcher;
            textViewSwitcher.setFactory(new ViewSwitcher.ViewFactory() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda7
                @Override // android.widget.ViewSwitcher.ViewFactory
                public final View makeView() {
                    return LoginActivity.PhoneView.$r8$lambda$H3QknSvHpPSXjvO9NWPeRB8o_IM(context);
                }
            });
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, C2807R.anim.text_in);
            animationLoadAnimation.setInterpolator(Easings.easeInOutQuad);
            this.countryButton.setInAnimation(animationLoadAnimation);
            ImageView imageView = new ImageView(context);
            this.chevronRight = imageView;
            imageView.setImageResource(C2807R.drawable.msg_inputarrow);
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(0);
            linearLayout.setGravity(16);
            linearLayout.addView(this.countryButton, LayoutHelper.createLinear(0, -2, 1.0f, 0, 0, 0, 0));
            linearLayout.addView(this.chevronRight, LayoutHelper.createLinearRelatively(24.0f, 24.0f, 0, 0.0f, 0.0f, 14.0f, 0.0f));
            OutlineTextContainerView outlineTextContainerView = new OutlineTextContainerView(context);
            this.countryOutlineView = outlineTextContainerView;
            outlineTextContainerView.setText(LocaleController.getString(C2807R.string.Country));
            this.countryOutlineView.addView(linearLayout, LayoutHelper.createFrame(-1, -1.0f, 48, 0.0f, 0.0f, 0.0f, 0.0f));
            this.countryOutlineView.setForceUseCenter(true);
            this.countryOutlineView.setFocusable(true);
            this.countryOutlineView.setContentDescription(LocaleController.getString(C2807R.string.Country));
            this.countryOutlineView.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda8
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z) {
                    this.f$0.lambda$new$3(view, z);
                }
            });
            addView(this.countryOutlineView, LayoutHelper.createLinear(-1, 58, 16.0f, 24.0f, 16.0f, 14.0f));
            this.countryOutlineView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$6(view);
                }
            });
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout2.setOrientation(0);
            OutlineTextContainerView outlineTextContainerView2 = new OutlineTextContainerView(context);
            this.phoneOutlineView = outlineTextContainerView2;
            outlineTextContainerView2.setClipChildren(false);
            this.phoneOutlineView.setClipToPadding(false);
            this.phoneOutlineView.addView(linearLayout2, LayoutHelper.createFrame(-1, 36.0f, 16, 16.0f, 8.0f, 16.0f, 8.0f));
            this.phoneOutlineView.setText(LocaleController.getString(C2807R.string.PhoneNumber));
            addView(this.phoneOutlineView, LayoutHelper.createLinear(-1, 58, 16.0f, 8.0f, 16.0f, 8.0f));
            TextView textView2 = new TextView(context);
            this.plusTextView = textView2;
            textView2.setText("+");
            this.plusTextView.setTextSize(1, 16.0f);
            this.plusTextView.setFocusable(false);
            linearLayout2.addView(this.plusTextView, LayoutHelper.createLinear(-2, -2));
            AnimatedPhoneNumberEditText animatedPhoneNumberEditText = new AnimatedPhoneNumberEditText(context) { // from class: org.telegram.ui.LoginActivity.PhoneView.1
                @Override // org.telegram.ui.Components.EditTextBoldCursor, com.exteragram.messenger.components.ReceiveContentEditText, android.widget.TextView, android.view.View
                public void onFocusChanged(boolean z, int i2, Rect rect) {
                    super.onFocusChanged(z, i2, rect);
                    PhoneView.this.phoneOutlineView.animateSelection((z || PhoneView.this.phoneField.isFocused()) ? 1.0f : 0.0f);
                    if (z) {
                        LoginActivity.this.keyboardView.setEditText(this);
                    }
                }
            };
            this.codeField = animatedPhoneNumberEditText;
            animatedPhoneNumberEditText.setInputType(3);
            this.codeField.setCursorSize(AndroidUtilities.dp(20.0f));
            this.codeField.setCursorWidth(1.5f);
            this.codeField.setPadding(AndroidUtilities.dp(10.0f), 0, 0, 0);
            this.codeField.setTextSize(1, 16.0f);
            this.codeField.setMaxLines(1);
            this.codeField.setGravity(19);
            this.codeField.setImeOptions(268435461);
            this.codeField.setBackground(null);
            this.codeField.setShowSoftInputOnFocus(!hasCustomKeyboard() || LoginActivity.this.isCustomKeyboardForceDisabled());
            this.codeField.setContentDescription(LocaleController.getString(C2807R.string.LoginAccessibilityCountryCode));
            linearLayout2.addView(this.codeField, LayoutHelper.createLinear(55, 36, -9.0f, 0.0f, 0.0f, 0.0f));
            this.codeField.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.LoginActivity.PhoneView.2
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    String str;
                    boolean z;
                    CountrySelectActivity.Country country;
                    CountrySelectActivity.Country country2;
                    if (PhoneView.this.ignoreOnTextChange) {
                        return;
                    }
                    PhoneView.this.ignoreOnTextChange = true;
                    String strStripExceptNumbers = PhoneFormat.stripExceptNumbers(PhoneView.this.codeField.getText().toString());
                    PhoneView.this.codeField.setText(strStripExceptNumbers);
                    if (strStripExceptNumbers.length() == 0) {
                        PhoneView.this.setCountryButtonText(null);
                        PhoneView.this.phoneField.setHintText((String) null);
                        PhoneView.this.countryState = 1;
                    } else {
                        int i2 = 4;
                        if (strStripExceptNumbers.length() > 4) {
                            while (true) {
                                if (i2 < 1) {
                                    str = null;
                                    z = false;
                                    break;
                                }
                                String strSubstring = strStripExceptNumbers.substring(0, i2);
                                List list = (List) PhoneView.this.codesMap.get(strSubstring);
                                if (list == null) {
                                    country2 = null;
                                } else if (list.size() > 1) {
                                    String string = MessagesController.getGlobalMainSettings().getString("phone_code_last_matched_".concat(strSubstring), null);
                                    country2 = (CountrySelectActivity.Country) list.get(list.size() - 1);
                                    if (string != null) {
                                        ArrayList arrayList = PhoneView.this.countriesArray;
                                        int size = arrayList.size();
                                        int i3 = 0;
                                        while (true) {
                                            if (i3 >= size) {
                                                break;
                                            }
                                            Object obj = arrayList.get(i3);
                                            i3++;
                                            CountrySelectActivity.Country country3 = (CountrySelectActivity.Country) obj;
                                            if (Objects.equals(country3.shortname, string)) {
                                                country2 = country3;
                                                break;
                                            }
                                        }
                                    }
                                } else {
                                    country2 = (CountrySelectActivity.Country) list.get(0);
                                }
                                if (country2 != null) {
                                    String str2 = strStripExceptNumbers.substring(i2) + PhoneView.this.phoneField.getText().toString();
                                    PhoneView.this.codeField.setText(strSubstring);
                                    str = str2;
                                    strStripExceptNumbers = strSubstring;
                                    z = true;
                                    break;
                                }
                                i2--;
                            }
                            if (!z) {
                                str = strStripExceptNumbers.substring(1) + PhoneView.this.phoneField.getText().toString();
                                AnimatedPhoneNumberEditText animatedPhoneNumberEditText2 = PhoneView.this.codeField;
                                strStripExceptNumbers = strStripExceptNumbers.substring(0, 1);
                                animatedPhoneNumberEditText2.setText(strStripExceptNumbers);
                            }
                        } else {
                            str = null;
                            z = false;
                        }
                        ArrayList arrayList2 = PhoneView.this.countriesArray;
                        int size2 = arrayList2.size();
                        CountrySelectActivity.Country country4 = null;
                        int i4 = 0;
                        int i5 = 0;
                        while (i5 < size2) {
                            Object obj2 = arrayList2.get(i5);
                            i5++;
                            CountrySelectActivity.Country country5 = (CountrySelectActivity.Country) obj2;
                            if (country5.code.startsWith(strStripExceptNumbers)) {
                                int i6 = i4 + 1;
                                if (country5.code.equals(strStripExceptNumbers)) {
                                    if (country4 == null || !country4.code.equals(country5.code)) {
                                        i4 = i6;
                                    }
                                    country4 = country5;
                                } else {
                                    i4 = i6;
                                }
                            }
                        }
                        if (i4 == 1 && country4 != null && str == null) {
                            str = strStripExceptNumbers.substring(country4.code.length()) + PhoneView.this.phoneField.getText().toString();
                            AnimatedPhoneNumberEditText animatedPhoneNumberEditText3 = PhoneView.this.codeField;
                            String str3 = country4.code;
                            animatedPhoneNumberEditText3.setText(str3);
                            strStripExceptNumbers = str3;
                        }
                        List list2 = (List) PhoneView.this.codesMap.get(strStripExceptNumbers);
                        if (list2 == null) {
                            country = null;
                        } else if (list2.size() > 1) {
                            String string2 = MessagesController.getGlobalMainSettings().getString("phone_code_last_matched_" + strStripExceptNumbers, null);
                            country = (CountrySelectActivity.Country) list2.get(list2.size() - 1);
                            if (string2 != null) {
                                ArrayList arrayList3 = PhoneView.this.countriesArray;
                                int size3 = arrayList3.size();
                                int i7 = 0;
                                while (true) {
                                    if (i7 >= size3) {
                                        break;
                                    }
                                    Object obj3 = arrayList3.get(i7);
                                    i7++;
                                    CountrySelectActivity.Country country6 = (CountrySelectActivity.Country) obj3;
                                    if (Objects.equals(country6.shortname, string2)) {
                                        country = country6;
                                        break;
                                    }
                                }
                            }
                        } else {
                            country = (CountrySelectActivity.Country) list2.get(0);
                        }
                        PhoneView phoneView = PhoneView.this;
                        if (country != null) {
                            phoneView.ignoreSelection = true;
                            PhoneView.this.currentCountry = country;
                            PhoneView.this.setCountryHint(strStripExceptNumbers, country);
                            PhoneView.this.countryState = 0;
                        } else {
                            phoneView.setCountryButtonText(null);
                            PhoneView.this.phoneField.setHintText((String) null);
                            PhoneView.this.countryState = 2;
                        }
                        if (!z) {
                            PhoneView.this.codeField.setSelection(PhoneView.this.codeField.getText().length());
                        }
                        if (str != null) {
                            PhoneView.this.phoneField.requestFocus();
                            PhoneView.this.phoneField.setText(str);
                            PhoneView.this.phoneField.setSelection(PhoneView.this.phoneField.length());
                        }
                    }
                    PhoneView.this.ignoreOnTextChange = false;
                }
            });
            this.codeField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda10
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView3, int i2, KeyEvent keyEvent) {
                    return this.f$0.lambda$new$7(textView3, i2, keyEvent);
                }
            });
            this.codeDividerView = new View(context);
            LinearLayout.LayoutParams layoutParamsCreateLinear = LayoutHelper.createLinear(0, -1, 4.0f, 8.0f, 12.0f, 8.0f);
            layoutParamsCreateLinear.width = Math.max(2, AndroidUtilities.dp(0.5f));
            linearLayout2.addView(this.codeDividerView, layoutParamsCreateLinear);
            AnimatedPhoneNumberEditText animatedPhoneNumberEditText2 = new AnimatedPhoneNumberEditText(context) { // from class: org.telegram.ui.LoginActivity.PhoneView.3
                @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
                public boolean onKeyDown(int i2, KeyEvent keyEvent) {
                    if (i2 == 67 && PhoneView.this.phoneField.length() == 0) {
                        PhoneView.this.codeField.requestFocus();
                        PhoneView.this.codeField.setSelection(PhoneView.this.codeField.length());
                        PhoneView.this.codeField.dispatchKeyEvent(keyEvent);
                    }
                    return super.onKeyDown(i2, keyEvent);
                }

                @Override // org.telegram.ui.Components.EditTextBoldCursor, com.exteragram.messenger.components.ReceiveContentEditText, android.widget.TextView, android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0 && !LoginActivity.this.showKeyboard(this)) {
                        clearFocus();
                        requestFocus();
                    }
                    return super.onTouchEvent(motionEvent);
                }

                @Override // org.telegram.ui.Components.EditTextBoldCursor, com.exteragram.messenger.components.ReceiveContentEditText, android.widget.TextView, android.view.View
                public void onFocusChanged(boolean z, int i2, Rect rect) {
                    super.onFocusChanged(z, i2, rect);
                    PhoneView.this.phoneOutlineView.animateSelection((z || PhoneView.this.codeField.isFocused()) ? 1.0f : 0.0f);
                    PhoneView phoneView = PhoneView.this;
                    if (z) {
                        LoginActivity.this.keyboardView.setEditText(this);
                        LoginActivity.this.keyboardView.setDispatchBackWhenEmpty(true);
                        if (PhoneView.this.countryState == 2) {
                            PhoneView.this.setCountryButtonText(LocaleController.getString(C2807R.string.WrongCountry));
                            return;
                        }
                        return;
                    }
                    if (phoneView.countryState == 2) {
                        PhoneView.this.setCountryButtonText(null);
                    }
                }
            };
            this.phoneField = animatedPhoneNumberEditText2;
            animatedPhoneNumberEditText2.setInputType(3);
            this.phoneField.setPadding(0, 0, 0, 0);
            this.phoneField.setCursorSize(AndroidUtilities.dp(20.0f));
            this.phoneField.setCursorWidth(1.5f);
            this.phoneField.setTextSize(1, 16.0f);
            this.phoneField.setMaxLines(1);
            this.phoneField.setGravity(19);
            this.phoneField.setImeOptions(268435461);
            this.phoneField.setBackground(null);
            this.phoneField.setShowSoftInputOnFocus(!hasCustomKeyboard() || LoginActivity.this.isCustomKeyboardForceDisabled());
            this.phoneField.setContentDescription(LocaleController.getString(C2807R.string.PhoneNumber));
            linearLayout2.addView(this.phoneField, LayoutHelper.createLinear(0, 36, 1.0f));
            this.phoneField.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.LoginActivity.PhoneView.4
                private int actionPosition;
                private int characterAction = -1;

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                    if (i3 == 0 && i4 == 1) {
                        this.characterAction = 1;
                        return;
                    }
                    if (i3 == 1 && i4 == 0) {
                        if (charSequence.charAt(i2) == ' ' && i2 > 0) {
                            this.characterAction = 3;
                            this.actionPosition = i2 - 1;
                            return;
                        } else {
                            this.characterAction = 2;
                            return;
                        }
                    }
                    this.characterAction = -1;
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    int i2;
                    int i3;
                    if (PhoneView.this.ignoreOnPhoneChange) {
                        return;
                    }
                    int selectionStart = PhoneView.this.phoneField.getSelectionStart();
                    String string = PhoneView.this.phoneField.getText().toString();
                    if (this.characterAction == 3) {
                        string = string.substring(0, this.actionPosition).concat(string.substring(this.actionPosition + 1));
                        selectionStart--;
                    }
                    StringBuilder sb = new StringBuilder(string.length());
                    int i4 = 0;
                    while (i4 < string.length()) {
                        int i5 = i4 + 1;
                        String strSubstring = string.substring(i4, i5);
                        if ("0123456789".contains(strSubstring)) {
                            sb.append(strSubstring);
                        }
                        i4 = i5;
                    }
                    PhoneView.this.ignoreOnPhoneChange = true;
                    String hintText = PhoneView.this.phoneField.getHintText();
                    if (hintText != null) {
                        int i6 = 0;
                        while (true) {
                            if (i6 >= sb.length()) {
                                break;
                            }
                            if (i6 < hintText.length()) {
                                if (hintText.charAt(i6) == ' ') {
                                    sb.insert(i6, ' ');
                                    i6++;
                                    if (selectionStart == i6 && (i3 = this.characterAction) != 2 && i3 != 3) {
                                        selectionStart++;
                                    }
                                }
                                i6++;
                            } else {
                                sb.insert(i6, ' ');
                                if (selectionStart == i6 + 1 && (i2 = this.characterAction) != 2 && i2 != 3) {
                                    selectionStart++;
                                }
                            }
                        }
                    }
                    editable.replace(0, editable.length(), sb);
                    if (selectionStart >= 0) {
                        PhoneView.this.phoneField.setSelection(Math.min(selectionStart, PhoneView.this.phoneField.length()));
                    }
                    PhoneView.this.phoneField.onTextChange();
                    PhoneView.this.invalidateCountryHint();
                    PhoneView.this.ignoreOnPhoneChange = false;
                }
            });
            this.phoneField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda11
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView3, int i2, KeyEvent keyEvent) {
                    return this.f$0.lambda$new$8(textView3, i2, keyEvent);
                }
            });
            ImageView imageView2 = new ImageView(context);
            this.phoneNumberHintButton = imageView2;
            imageView2.setImageResource(C2807R.drawable.menu_phone);
            imageView2.setScaleType(ImageView.ScaleType.CENTER);
            imageView2.setContentDescription(LocaleController.getString(C2807R.string.PhoneNumber));
            imageView2.setVisibility((LoginActivity.this.activityMode == 0 && PushListenerController.GooglePushListenerServiceProvider.INSTANCE.hasServices()) ? 0 : 8);
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda12
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$9(view);
                }
            });
            linearLayout2.addView(imageView2, LayoutHelper.createLinear(36, 36, 8.0f, 0.0f, -8.0f, 0.0f));
            if (LoginActivity.this.newAccount && LoginActivity.this.activityMode == 0) {
                CheckBoxCell checkBoxCell = new CheckBoxCell(context, 2);
                this.syncContactsBox = checkBoxCell;
                checkBoxCell.setText(LocaleController.getString("SyncContacts", C2807R.string.SyncContacts), _UrlKt.FRAGMENT_ENCODE_SET, LoginActivity.this.syncContacts, false);
                addView(this.syncContactsBox, LayoutHelper.createLinear(-2, -1, 51, 16, 0, 16 + ((LocaleController.isRTL && AndroidUtilities.isSmallScreen()) ? 56 : 0), 0));
                this.syncContactsBox.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda13
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$10(view);
                    }
                });
                i = 48;
            } else {
                i = 72;
            }
            if (LoginActivity.this.activityMode == 0 && UserConfig.getActivatedAccountsCount() > 0) {
                CheckBoxCell checkBoxCell2 = new CheckBoxCell(context, 2);
                this.testBackendCheckBox = checkBoxCell2;
                String string = LocaleController.getString(C2807R.string.TestBackend);
                boolean zIsTestBackend = LoginActivity.this.getConnectionsManager().isTestBackend();
                LoginActivity.this.testBackend = zIsTestBackend;
                checkBoxCell2.setText(string, _UrlKt.FRAGMENT_ENCODE_SET, zIsTestBackend, false);
                addView(this.testBackendCheckBox, LayoutHelper.createLinear(-2, -1, 51, 16, 0, 16 + ((LocaleController.isRTL && AndroidUtilities.isSmallScreen()) ? 56 : 0), 0));
                i -= 24;
                this.testBackendCheckBox.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda14
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$11(view);
                    }
                });
            }
            if (i > 0 && !AndroidUtilities.isSmallScreen()) {
                Space space = new Space(context);
                space.setMinimumHeight(AndroidUtilities.dp(i));
                addView(space, LayoutHelper.createLinear(-2, -2));
            }
            final HashMap map = new HashMap();
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(getResources().getAssets().open("countries.txt")));
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                String[] strArrSplit = line.split(";");
                CountrySelectActivity.Country country = new CountrySelectActivity.Country();
                country.name = strArrSplit[2];
                String str = strArrSplit[0];
                country.code = str;
                country.shortname = strArrSplit[1];
                if (!TextUtils.equals(str, "FT")) {
                    String countryName = LocaleController.getCountryName(country.shortname);
                    if (!TextUtils.isEmpty(countryName) && !TextUtils.equals(country.shortname, countryName)) {
                        country.defaultName = country.name;
                        country.name = countryName;
                    }
                }
                this.countriesArray.add(0, country);
                List<CountrySelectActivity.Country> list = this.codesMap.get(strArrSplit[0]);
                if (list == null) {
                    HashMap<String, List<CountrySelectActivity.Country>> map2 = this.codesMap;
                    String str2 = strArrSplit[0];
                    ArrayList arrayList = new ArrayList();
                    map2.put(str2, arrayList);
                    list = arrayList;
                }
                list.add(country);
                if (strArrSplit.length > 3) {
                    this.phoneFormatMap.put(strArrSplit[0], Collections.singletonList(strArrSplit[3]));
                }
                map.put(strArrSplit[1], strArrSplit[2]);
                Collections.sort(this.countriesArray, Comparator.comparing(new Function() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda15
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((CountrySelectActivity.Country) obj).name;
                    }
                }));
                LoginActivity.this.getAccountInstance().getConnectionsManager().sendRequest(new TLRPC.TL_help_getNearestDc(), new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda6
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$new$14(map, tLObject, tL_error);
                    }
                }, 10);
                if (this.codeField.length() == 0) {
                    setCountryButtonText(null);
                    this.phoneField.setHintText((String) null);
                    this.countryState = 1;
                }
                if (this.codeField.length() == 0) {
                    this.phoneField.requestFocus();
                    AnimatedPhoneNumberEditText animatedPhoneNumberEditText3 = this.phoneField;
                    animatedPhoneNumberEditText3.setSelection(animatedPhoneNumberEditText3.length());
                } else {
                    this.codeField.requestFocus();
                }
                loadCountries();
            }
            bufferedReader.close();
            Collections.sort(this.countriesArray, Comparator.comparing(new Function() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda15
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((CountrySelectActivity.Country) obj).name;
                }
            }));
            LoginActivity.this.getAccountInstance().getConnectionsManager().sendRequest(new TLRPC.TL_help_getNearestDc(), new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda6
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$new$14(map, tLObject, tL_error);
                }
            }, 10);
            if (this.codeField.length() == 0) {
            }
            if (this.codeField.length() == 0) {
            }
            loadCountries();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(Context context, View view) {
            Toast toast = this.lastTitleToast;
            if (toast != null) {
                toast.cancel();
                this.lastTitleToast = null;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.titleClickCount > 0 && jCurrentTimeMillis - this.lastTitleClick > 1500) {
                this.titleClickCount = 0;
            }
            int i = this.titleClickCount + 1;
            this.titleClickCount = i;
            this.lastTitleClick = jCurrentTimeMillis;
            if (i >= 5) {
                this.titleClickCount = 0;
                this.lastTitleClick = 0L;
                showDebugMenu();
            } else if (i > 1) {
                Toast toastMakeText = Toast.makeText(context, LocaleController.formatPluralString("DebugMenuLoginToast", 5 - i, new Object[0]), 0);
                this.lastTitleToast = toastMakeText;
                toastMakeText.show();
            }
        }

        public static /* synthetic */ View $r8$lambda$H3QknSvHpPSXjvO9NWPeRB8o_IM(Context context) {
            TextView textView = new TextView(context);
            textView.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(12.0f));
            textView.setTextSize(1, 16.0f);
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            textView.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText));
            textView.setMaxLines(1);
            textView.setSingleLine(true);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setGravity((LocaleController.isRTL ? 5 : 3) | 1);
            return textView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(View view, boolean z) {
            this.countryOutlineView.animateSelection(z ? 1.0f : 0.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$6(View view) {
            CountrySelectActivity countrySelectActivity = new CountrySelectActivity(true, this.countriesArray);
            countrySelectActivity.setCountrySelectActivityDelegate(new CountrySelectActivity.CountrySelectActivityDelegate() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda21
                @Override // org.telegram.ui.CountrySelectActivity.CountrySelectActivityDelegate
                public final void didSelectCountry(CountrySelectActivity.Country country) {
                    this.f$0.lambda$new$5(country);
                }
            });
            LoginActivity.this.presentFragment(countrySelectActivity);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$5(CountrySelectActivity.Country country) {
            selectCountry(country);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$4();
                }
            }, 300L);
            this.phoneField.requestFocus();
            AnimatedPhoneNumberEditText animatedPhoneNumberEditText = this.phoneField;
            animatedPhoneNumberEditText.setSelection(animatedPhoneNumberEditText.length());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4() {
            LoginActivity.this.showKeyboard(this.phoneField);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$new$7(TextView textView, int i, KeyEvent keyEvent) {
            if (i != 5) {
                return false;
            }
            this.phoneField.requestFocus();
            AnimatedPhoneNumberEditText animatedPhoneNumberEditText = this.phoneField;
            animatedPhoneNumberEditText.setSelection(animatedPhoneNumberEditText.length());
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$new$8(TextView textView, int i, KeyEvent keyEvent) {
            if (i != 5) {
                return false;
            }
            if (LoginActivity.this.phoneNumberConfirmView != null) {
                LoginActivity.this.phoneNumberConfirmView.fabButton.callOnClick();
                return true;
            }
            lambda$onNextPressed$17(null);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$9(View view) {
            requestPhoneNumberHint();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$10(View view) {
            if (LoginActivity.this.getParentActivity() == null) {
                return;
            }
            LoginActivity.this.syncContacts = !r0.syncContacts;
            ((CheckBoxCell) view).setChecked(LoginActivity.this.syncContacts, true);
            boolean z = LoginActivity.this.syncContacts;
            LoginActivity loginActivity = LoginActivity.this;
            if (z) {
                BulletinFactory.of(loginActivity.slideViewsContainer, null).createSimpleBulletin(C2807R.raw.contacts_sync_on, LocaleController.getString("SyncContactsOn", C2807R.string.SyncContactsOn)).show();
            } else {
                BulletinFactory.of(loginActivity.slideViewsContainer, null).createSimpleBulletin(C2807R.raw.contacts_sync_off, LocaleController.getString("SyncContactsOff", C2807R.string.SyncContactsOff)).show();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$11(View view) {
            if (LoginActivity.this.getParentActivity() == null) {
                return;
            }
            LoginActivity.this.testBackend = !r0.testBackend;
            ((CheckBoxCell) view).setChecked(LoginActivity.this.testBackend, true);
            if (LoginActivity.this.getConnectionsManager().isTestBackend() != LoginActivity.this.testBackend) {
                LoginActivity.this.getConnectionsManager().switchBackend(false);
            }
            loadCountries();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$14(final HashMap map, final TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$13(tLObject, map);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$13(TLObject tLObject, HashMap map) {
            if (tLObject == null) {
                return;
            }
            TLRPC.TL_nearestDc tL_nearestDc = (TLRPC.TL_nearestDc) tLObject;
            if (this.codeField.length() == 0) {
                setCountry(map, tL_nearestDc.country.toUpperCase());
            }
        }

        private void loadCountries() {
            TLRPC.TL_help_getCountriesList tL_help_getCountriesList = new TLRPC.TL_help_getCountriesList();
            tL_help_getCountriesList.lang_code = LocaleController.getInstance().getCurrentLocaleInfo() != null ? LocaleController.getInstance().getCurrentLocaleInfo().getLangCode() : Locale.getDefault().getCountry();
            LoginActivity.this.getConnectionsManager().sendRequest(tL_help_getCountriesList, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda20
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadCountries$16(tLObject, tL_error);
                }
            }, 10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadCountries$16(final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadCountries$15(tL_error, tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadCountries$15(TLRPC.TL_error tL_error, TLObject tLObject) {
            CountrySelectActivity.Country country;
            if (tL_error == null) {
                this.countriesArray.clear();
                this.codesMap.clear();
                this.phoneFormatMap.clear();
                TLRPC.TL_help_countriesList tL_help_countriesList = (TLRPC.TL_help_countriesList) tLObject;
                for (int i = 0; i < tL_help_countriesList.countries.size(); i++) {
                    TLRPC.TL_help_country tL_help_country = tL_help_countriesList.countries.get(i);
                    for (int i2 = 0; i2 < tL_help_country.country_codes.size(); i2++) {
                        TLRPC.TL_help_countryCode tL_help_countryCode = tL_help_country.country_codes.get(i2);
                        if (tL_help_countryCode != null) {
                            CountrySelectActivity.Country country2 = new CountrySelectActivity.Country();
                            String str = tL_help_country.name;
                            country2.name = str;
                            String str2 = tL_help_country.default_name;
                            country2.defaultName = str2;
                            if (str == null && str2 != null) {
                                country2.name = str2;
                            }
                            country2.code = tL_help_countryCode.country_code;
                            country2.shortname = tL_help_country.iso2;
                            this.countriesArray.add(country2);
                            List<CountrySelectActivity.Country> list = this.codesMap.get(tL_help_countryCode.country_code);
                            if (list == null) {
                                HashMap<String, List<CountrySelectActivity.Country>> map = this.codesMap;
                                String str3 = tL_help_countryCode.country_code;
                                ArrayList arrayList = new ArrayList();
                                map.put(str3, arrayList);
                                list = arrayList;
                            }
                            list.add(country2);
                            if (tL_help_countryCode.patterns.size() > 0) {
                                this.phoneFormatMap.put(tL_help_countryCode.country_code, tL_help_countryCode.patterns);
                            }
                        }
                    }
                }
                if (LoginActivity.this.activityMode == 2) {
                    String strStripExceptNumbers = PhoneFormat.stripExceptNumbers(UserConfig.getInstance(((BaseFragment) LoginActivity.this).currentAccount).getClientPhone());
                    if (!TextUtils.isEmpty(strStripExceptNumbers)) {
                        int i3 = 4;
                        if (strStripExceptNumbers.length() > 4) {
                            while (true) {
                                if (i3 >= 1) {
                                    String strSubstring = strStripExceptNumbers.substring(0, i3);
                                    List<CountrySelectActivity.Country> list2 = this.codesMap.get(strSubstring);
                                    CountrySelectActivity.Country country3 = null;
                                    if (list2 != null) {
                                        if (list2.size() > 1) {
                                            String string = MessagesController.getGlobalMainSettings().getString("phone_code_last_matched_".concat(strSubstring), null);
                                            if (string != null) {
                                                country = list2.get(list2.size() - 1);
                                                ArrayList<CountrySelectActivity.Country> arrayList2 = this.countriesArray;
                                                int size = arrayList2.size();
                                                int i4 = 0;
                                                while (true) {
                                                    if (i4 >= size) {
                                                        break;
                                                    }
                                                    CountrySelectActivity.Country country4 = arrayList2.get(i4);
                                                    i4++;
                                                    CountrySelectActivity.Country country5 = country4;
                                                    if (Objects.equals(country5.shortname, string)) {
                                                        country = country5;
                                                        break;
                                                    }
                                                }
                                            } else {
                                                country = list2.get(list2.size() - 1);
                                            }
                                            country3 = country;
                                        } else {
                                            country3 = list2.get(0);
                                        }
                                    }
                                    if (country3 != null) {
                                        this.codeField.setText(strSubstring);
                                        break;
                                    }
                                    i3--;
                                } else {
                                    this.codeField.setText(strStripExceptNumbers.substring(0, 1));
                                    break;
                                }
                            }
                        }
                    }
                }
                CountrySelectActivity.Country country6 = new CountrySelectActivity.Country();
                country6.name = "Test Backend";
                country6.code = "999";
                country6.shortname = "EX";
                this.countriesArray.add(country6);
                List<CountrySelectActivity.Country> list3 = this.codesMap.get(country6.code);
                if (list3 == null) {
                    HashMap<String, List<CountrySelectActivity.Country>> map2 = this.codesMap;
                    String str4 = country6.code;
                    ArrayList arrayList3 = new ArrayList();
                    map2.put(str4, arrayList3);
                    list3 = arrayList3;
                }
                list3.add(country6);
                this.phoneFormatMap.put(country6.code, Collections.singletonList("66 X XXXX"));
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void updateColors() {
            this.titleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            this.subtitleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText6));
            this.subtitleView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn));
            for (int i = 0; i < this.countryButton.getChildCount(); i++) {
                TextView textView = (TextView) this.countryButton.getChildAt(i);
                textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
                textView.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText));
            }
            ImageView imageView = this.chevronRight;
            int i2 = Theme.key_windowBackgroundWhiteHintText;
            imageView.setColorFilter(Theme.getColor(i2));
            ImageView imageView2 = this.chevronRight;
            LoginActivity loginActivity = LoginActivity.this;
            int i3 = Theme.key_listSelector;
            imageView2.setBackground(Theme.createSelectorDrawable(loginActivity.getThemedColor(i3), 1));
            TextView textView2 = this.plusTextView;
            int i4 = Theme.key_windowBackgroundWhiteBlackText;
            textView2.setTextColor(Theme.getColor(i4));
            this.codeField.setTextColor(Theme.getColor(i4));
            AnimatedPhoneNumberEditText animatedPhoneNumberEditText = this.codeField;
            int i5 = Theme.key_windowBackgroundWhiteInputFieldActivated;
            animatedPhoneNumberEditText.setCursorColor(Theme.getColor(i5));
            this.codeDividerView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhiteInputField));
            this.phoneField.setTextColor(Theme.getColor(i4));
            this.phoneField.setHintTextColor(Theme.getColor(i2));
            this.phoneField.setCursorColor(Theme.getColor(i5));
            ImageView imageView3 = this.phoneNumberHintButton;
            if (imageView3 != null) {
                imageView3.setColorFilter(Theme.getColor(i2));
                this.phoneNumberHintButton.setBackground(Theme.createSelectorDrawable(LoginActivity.this.getThemedColor(i3), 1));
            }
            CheckBoxCell checkBoxCell = this.syncContactsBox;
            if (checkBoxCell != null) {
                checkBoxCell.setSquareCheckBoxColor(Theme.key_checkboxSquareUnchecked, Theme.key_checkboxSquareBackground, Theme.key_checkboxSquareCheck);
                this.syncContactsBox.updateTextColor();
            }
            CheckBoxCell checkBoxCell2 = this.testBackendCheckBox;
            if (checkBoxCell2 != null) {
                checkBoxCell2.setSquareCheckBoxColor(Theme.key_checkboxSquareUnchecked, Theme.key_checkboxSquareBackground, Theme.key_checkboxSquareCheck);
                this.testBackendCheckBox.updateTextColor();
            }
            this.phoneOutlineView.updateColor();
            this.countryOutlineView.updateColor();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        }

        public void selectCountry(CountrySelectActivity.Country country) {
            this.ignoreOnTextChange = true;
            String str = country.code;
            this.codeField.setText(str);
            setCountryHint(str, country);
            this.currentCountry = country;
            this.countryState = 0;
            this.ignoreOnTextChange = false;
            MessagesController.getGlobalMainSettings().edit().putString("phone_code_last_matched_" + country.code, country.shortname).apply();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCountryHint(String str, CountrySelectActivity.Country country) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            String languageFlag = LocaleController.getLanguageFlag(country.shortname);
            if (languageFlag != null) {
                spannableStringBuilder.append((CharSequence) languageFlag).append((CharSequence) " ");
                spannableStringBuilder.setSpan(new ReplacementSpan() { // from class: org.telegram.ui.LoginActivity.PhoneView.5
                    @Override // android.text.style.ReplacementSpan
                    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
                    }

                    @Override // android.text.style.ReplacementSpan
                    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
                        return AndroidUtilities.dp(16.0f);
                    }
                }, languageFlag.length(), languageFlag.length() + 1, 0);
            }
            spannableStringBuilder.append((CharSequence) country.name);
            setCountryButtonText(Emoji.replaceEmoji(spannableStringBuilder, this.countryButton.getCurrentView().getPaint().getFontMetricsInt(), false));
            this.countryCodeForHint = str;
            this.wasCountryHintIndex = -1;
            invalidateCountryHint();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void invalidateCountryHint() {
            int i;
            String str = this.countryCodeForHint;
            String strReplace = this.phoneField.getText() != null ? this.phoneField.getText().toString().replace(" ", _UrlKt.FRAGMENT_ENCODE_SET) : _UrlKt.FRAGMENT_ENCODE_SET;
            if (this.phoneFormatMap.get(str) != null && !this.phoneFormatMap.get(str).isEmpty()) {
                List<String> list = this.phoneFormatMap.get(str);
                if (strReplace.isEmpty()) {
                    i = -1;
                } else {
                    i = 0;
                    while (i < list.size()) {
                        if (strReplace.startsWith(list.get(i).replace(" ", _UrlKt.FRAGMENT_ENCODE_SET).replace("X", _UrlKt.FRAGMENT_ENCODE_SET).replace(MVEL.VERSION_SUB, _UrlKt.FRAGMENT_ENCODE_SET))) {
                            break;
                        } else {
                            i++;
                        }
                    }
                    i = -1;
                }
                if (i == -1) {
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        String str2 = list.get(i2);
                        if (str2.startsWith("X") || str2.startsWith(MVEL.VERSION_SUB)) {
                            i = i2;
                            break;
                        }
                    }
                    if (i == -1) {
                        i = 0;
                    }
                }
                if (this.wasCountryHintIndex != i) {
                    String str3 = this.phoneFormatMap.get(str).get(i);
                    int selectionStart = this.phoneField.getSelectionStart();
                    int selectionEnd = this.phoneField.getSelectionEnd();
                    this.phoneField.setHintText(str3 != null ? str3.replace('X', '0') : null);
                    AnimatedPhoneNumberEditText animatedPhoneNumberEditText = this.phoneField;
                    animatedPhoneNumberEditText.setSelection(Math.max(0, Math.min(animatedPhoneNumberEditText.length(), selectionStart)), Math.max(0, Math.min(this.phoneField.length(), selectionEnd)));
                    this.wasCountryHintIndex = i;
                    return;
                }
                return;
            }
            if (this.wasCountryHintIndex != -1) {
                int selectionStart2 = this.phoneField.getSelectionStart();
                int selectionEnd2 = this.phoneField.getSelectionEnd();
                this.phoneField.setHintText((String) null);
                this.phoneField.setSelection(selectionStart2, selectionEnd2);
                this.wasCountryHintIndex = -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCountryButtonText(CharSequence charSequence) {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(ApplicationLoader.applicationContext, (this.countryButton.getCurrentView().getText() == null || charSequence != null) ? C2807R.anim.text_out : C2807R.anim.text_out_down);
            animationLoadAnimation.setInterpolator(Easings.easeInOutQuad);
            this.countryButton.setOutAnimation(animationLoadAnimation);
            CharSequence text = this.countryButton.getCurrentView().getText();
            this.countryButton.setText(charSequence, ((TextUtils.isEmpty(charSequence) && TextUtils.isEmpty(text)) || Objects.equals(text, charSequence)) ? false : true);
            this.countryOutlineView.animateSelection(charSequence != null ? 1.0f : 0.0f);
        }

        private void setCountry(HashMap<String, String> map, String str) {
            CountrySelectActivity.Country country;
            if (map.get(str) == null || this.countriesArray == null) {
                return;
            }
            int i = 0;
            while (true) {
                if (i >= this.countriesArray.size()) {
                    country = null;
                    break;
                } else {
                    if (this.countriesArray.get(i) != null && this.countriesArray.get(i).name.equals(str)) {
                        country = this.countriesArray.get(i);
                        break;
                    }
                    i++;
                }
            }
            if (country != null) {
                this.codeField.setText(country.code);
                this.countryState = 0;
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onCancelPressed() {
            this.nextPressed = false;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (this.ignoreSelection) {
                this.ignoreSelection = false;
                return;
            }
            this.ignoreOnTextChange = true;
            this.codeField.setText(this.countriesArray.get(i).code);
            this.ignoreOnTextChange = false;
        }

        @Override // org.telegram.ui.Components.SlideView
        /* JADX INFO: renamed from: onNextPressed, reason: merged with bridge method [inline-methods] */
        public void lambda$onNextPressed$17(final String str) {
            TLObject tLObject;
            if (LoginActivity.this.getParentActivity() == null || this.nextPressed || LoginActivity.this.isRequestingFirebaseSms) {
                return;
            }
            TelephonyManager telephonyManager = (TelephonyManager) ApplicationLoader.applicationContext.getSystemService("phone");
            if (BuildVars.DEBUG_VERSION) {
                FileLog.m1037d("sim status = " + telephonyManager.getSimState());
            }
            if (this.codeField.length() == 0 || this.phoneField.length() == 0) {
                LoginActivity.this.onFieldError(this.phoneOutlineView, false);
                return;
            }
            String str2 = "+" + ((Object) this.codeField.getText()) + " " + ((Object) this.phoneField.getText());
            if (!this.confirmedNumber) {
                Point point = AndroidUtilities.displaySize;
                if (point.x > point.y && !LoginActivity.this.isCustomKeyboardVisible() && LoginActivity.this.sizeNotifierFrameLayout.measureKeyboardHeight() > AndroidUtilities.dp(20.0f)) {
                    LoginActivity.this.keyboardHideCallback = new Runnable() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onNextPressed$18(str);
                        }
                    };
                    AndroidUtilities.hideKeyboard(LoginActivity.this.fragmentView);
                    return;
                }
                LoginActivity loginActivity = LoginActivity.this;
                Context context = LoginActivity.this.fragmentView.getContext();
                LoginActivity loginActivity2 = LoginActivity.this;
                loginActivity.phoneNumberConfirmView = new PhoneNumberConfirmView(context, (ViewGroup) loginActivity2.fragmentView, loginActivity2.floatingButton, str2, new C54586(str));
                LoginActivity.this.phoneNumberConfirmView.show();
                return;
            }
            this.confirmedNumber = false;
            if (LoginActivity.this.phoneNumberConfirmView != null) {
                LoginActivity.this.phoneNumberConfirmView.dismiss();
            }
            boolean zIsSimAvailable = AndroidUtilities.isSimAvailable();
            int i = this.countryState;
            if (i == 1) {
                LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("ChooseCountry", C2807R.string.ChooseCountry));
                LoginActivity.this.needHideProgress(false);
                return;
            }
            if (i == 2 && !LoginActivity.this.testBackend) {
                LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("WrongCountry", C2807R.string.WrongCountry));
                LoginActivity.this.needHideProgress(false);
                return;
            }
            final String strStripExceptNumbers = PhoneFormat.stripExceptNumbers(_UrlKt.FRAGMENT_ENCODE_SET + ((Object) this.codeField.getText()) + ((Object) this.phoneField.getText()));
            if (LoginActivity.this.activityMode == 0) {
                if (!LoginActivity.this.testBackend && "999".equals(this.codeField.getText().toString())) {
                    LoginActivity.this.testBackend = true;
                    CheckBoxCell checkBoxCell = this.testBackendCheckBox;
                    if (checkBoxCell != null) {
                        checkBoxCell.setChecked(true, true);
                    }
                }
                boolean zIsTestBackend = LoginActivity.this.getConnectionsManager().isTestBackend();
                if (zIsTestBackend != LoginActivity.this.testBackend) {
                    LoginActivity.this.getConnectionsManager().switchBackend(false);
                    zIsTestBackend = LoginActivity.this.testBackend;
                }
                if (LoginActivity.this.getParentActivity() instanceof LaunchActivity) {
                    for (final int i2 = 0; i2 < 16; i2++) {
                        UserConfig userConfig = UserConfig.getInstance(i2);
                        if (userConfig.isClientActivated() && PhoneNumberUtils.compare(strStripExceptNumbers, userConfig.getCurrentUser().phone) && ConnectionsManager.getInstance(i2).isTestBackend() == zIsTestBackend) {
                            AlertDialog.Builder builder = new AlertDialog.Builder(LoginActivity.this.getParentActivity());
                            builder.setTitle(LocaleController.getString(C2807R.string.AppName));
                            builder.setMessage(LocaleController.getString("AccountAlreadyLoggedIn", C2807R.string.AccountAlreadyLoggedIn));
                            builder.setPositiveButton(LocaleController.getString("AccountSwitch", C2807R.string.AccountSwitch), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda2
                                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                public final void onClick(AlertDialog alertDialog, int i3) {
                                    this.f$0.lambda$onNextPressed$19(i2, alertDialog, i3);
                                }
                            });
                            builder.setNegativeButton(LocaleController.getString("OK", C2807R.string.OK), null);
                            LoginActivity.this.showDialog(builder.create());
                            LoginActivity.this.needHideProgress(false);
                            return;
                        }
                    }
                }
            }
            TLRPC.TL_codeSettings tL_codeSettings = new TLRPC.TL_codeSettings();
            tL_codeSettings.allow_flashcall = zIsSimAvailable;
            tL_codeSettings.allow_missed_call = zIsSimAvailable;
            boolean zHasServices = PushListenerController.GooglePushListenerServiceProvider.INSTANCE.hasServices();
            tL_codeSettings.allow_firebase = zHasServices;
            tL_codeSettings.allow_app_hash = zHasServices;
            if (LoginActivity.this.forceDisableSafetyNet || TextUtils.isEmpty(BuildVars.SAFETYNET_KEY)) {
                tL_codeSettings.allow_firebase = false;
            }
            ArrayList<TLRPC.TL_auth_authorization> savedLogInTokens = AuthTokensHelper.getSavedLogInTokens();
            if (savedLogInTokens != null) {
                for (int i3 = 0; i3 < savedLogInTokens.size(); i3++) {
                    if (savedLogInTokens.get(i3).future_auth_token != null) {
                        if (tL_codeSettings.logout_tokens == null) {
                            tL_codeSettings.logout_tokens = new ArrayList<>();
                        }
                        if (BuildVars.DEBUG_VERSION) {
                            FileLog.m1037d("login token to check ".concat(new String(savedLogInTokens.get(i3).future_auth_token, StandardCharsets.UTF_8)));
                        }
                        tL_codeSettings.logout_tokens.add(savedLogInTokens.get(i3).future_auth_token);
                        if (tL_codeSettings.logout_tokens.size() >= 20) {
                            break;
                        }
                    }
                }
            }
            ArrayList<TLRPC.TL_auth_loggedOut> savedLogOutTokens = AuthTokensHelper.getSavedLogOutTokens();
            if (savedLogOutTokens != null) {
                for (int i4 = 0; i4 < savedLogOutTokens.size(); i4++) {
                    if (tL_codeSettings.logout_tokens == null) {
                        tL_codeSettings.logout_tokens = new ArrayList<>();
                    }
                    tL_codeSettings.logout_tokens.add(savedLogOutTokens.get(i4).future_auth_token);
                    if (tL_codeSettings.logout_tokens.size() >= 20) {
                        break;
                    }
                }
                AuthTokensHelper.saveLogOutTokens(savedLogOutTokens);
            }
            if (tL_codeSettings.logout_tokens != null) {
                tL_codeSettings.flags |= 64;
            }
            SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0);
            sharedPreferences.edit().remove("sms_hash_code").apply();
            if (tL_codeSettings.allow_app_hash) {
                sharedPreferences.edit().putString("sms_hash", BuildVars.getSmsHash()).apply();
            } else {
                sharedPreferences.edit().remove("sms_hash").apply();
            }
            if (tL_codeSettings.allow_flashcall) {
                try {
                    HashSet userPhoneNumbers = LoginActivity.this.getUserPhoneNumbers(false);
                    if (!userPhoneNumbers.isEmpty()) {
                        tL_codeSettings.unknown_number = false;
                        tL_codeSettings.current_number = userPhoneNumbers.stream().anyMatch(new Predicate() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda3
                            @Override // java.util.function.Predicate
                            public final boolean test(Object obj) {
                                return PhoneNumberUtils.compare(strStripExceptNumbers, (String) obj);
                            }
                        });
                    } else {
                        tL_codeSettings.unknown_number = true;
                        if (UserConfig.getActivatedAccountsCount() > 0) {
                            tL_codeSettings.allow_flashcall = false;
                        } else {
                            tL_codeSettings.current_number = false;
                        }
                    }
                } catch (Exception e) {
                    tL_codeSettings.unknown_number = true;
                    FileLog.m1040e(e);
                }
            }
            if (LoginActivity.this.activityMode != 2) {
                ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).cleanup(false);
                TLRPC.TL_auth_sendCode tL_auth_sendCode = new TLRPC.TL_auth_sendCode();
                tL_auth_sendCode.api_hash = BuildVars.getExteraAppHash();
                tL_auth_sendCode.api_id = BuildVars.getExteraAppId();
                tL_auth_sendCode.phone_number = strStripExceptNumbers;
                tL_auth_sendCode.settings = tL_codeSettings;
                tLObject = tL_auth_sendCode;
            } else {
                TL_account.sendChangePhoneCode sendchangephonecode = new TL_account.sendChangePhoneCode();
                sendchangephonecode.phone_number = strStripExceptNumbers;
                sendchangephonecode.settings = tL_codeSettings;
                tLObject = sendchangephonecode;
            }
            final TLObject tLObject2 = tLObject;
            final Bundle bundle = new Bundle();
            bundle.putString("phone", "+" + ((Object) this.codeField.getText()) + " " + ((Object) this.phoneField.getText()));
            try {
                bundle.putString("ephone", "+" + PhoneFormat.stripExceptNumbers(this.codeField.getText().toString()) + " " + PhoneFormat.stripExceptNumbers(this.phoneField.getText().toString()));
            } catch (Exception e2) {
                FileLog.m1040e(e2);
                bundle.putString("ephone", "+" + strStripExceptNumbers);
            }
            bundle.putString("phoneFormated", strStripExceptNumbers);
            CountrySelectActivity.Country country = this.currentCountry;
            if (country != null) {
                bundle.putString("country", country.code);
            }
            this.nextPressed = true;
            final PhoneInputData phoneInputData = new PhoneInputData();
            phoneInputData.phoneNumber = "+" + ((Object) this.codeField.getText()) + " " + ((Object) this.phoneField.getText());
            phoneInputData.country = this.currentCountry;
            phoneInputData.patterns = this.phoneFormatMap.get(this.codeField.getText().toString());
            LoginActivity.this.needShowProgress(ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(tLObject2, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda4
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject3, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$onNextPressed$24(bundle, strStripExceptNumbers, phoneInputData, tLObject2, tLObject3, tL_error);
                }
            }, 27));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$18(final String str) {
            postDelayed(new Runnable() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNextPressed$17(str);
                }
            }, 200L);
        }

        /* JADX INFO: renamed from: org.telegram.ui.LoginActivity$PhoneView$6 */
        public class C54586 implements PhoneNumberConfirmView.IConfirmDialogCallback {
            final /* synthetic */ String val$code;

            public C54586(String str) {
                this.val$code = str;
            }

            @Override // org.telegram.ui.LoginActivity.PhoneNumberConfirmView.IConfirmDialogCallback
            public void onFabPressed(PhoneNumberConfirmView phoneNumberConfirmView, TransformableLoginButtonView transformableLoginButtonView) {
                onConfirm(phoneNumberConfirmView);
            }

            @Override // org.telegram.ui.LoginActivity.PhoneNumberConfirmView.IConfirmDialogCallback
            public void onEditPressed(PhoneNumberConfirmView phoneNumberConfirmView, TextView textView) {
                phoneNumberConfirmView.dismiss();
            }

            @Override // org.telegram.ui.LoginActivity.PhoneNumberConfirmView.IConfirmDialogCallback
            public void onConfirmPressed(PhoneNumberConfirmView phoneNumberConfirmView, TextView textView) {
                onConfirm(phoneNumberConfirmView);
            }

            @Override // org.telegram.ui.LoginActivity.PhoneNumberConfirmView.IConfirmDialogCallback
            public void onDismiss(PhoneNumberConfirmView phoneNumberConfirmView) {
                LoginActivity.this.phoneNumberConfirmView = null;
            }

            private void onConfirm(final PhoneNumberConfirmView phoneNumberConfirmView) {
                PhoneView.this.confirmedNumber = true;
                LoginActivity.this.currentDoneType = 0;
                LoginActivity.this.needShowProgress(0, false);
                final String str = this.val$code;
                phoneNumberConfirmView.animateProgress(new Runnable() { // from class: org.telegram.ui.LoginActivity$PhoneView$6$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onConfirm$1(phoneNumberConfirmView, str);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onConfirm$1(final PhoneNumberConfirmView phoneNumberConfirmView, final String str) {
                phoneNumberConfirmView.dismiss();
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$PhoneView$6$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onConfirm$0(str, phoneNumberConfirmView);
                    }
                }, 150L);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onConfirm$0(String str, PhoneNumberConfirmView phoneNumberConfirmView) {
                PhoneView.this.lambda$onNextPressed$17(str);
                LoginActivity.this.floatingButton.progressView.sync(phoneNumberConfirmView.fabButton.progressView);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$19(int i, AlertDialog alertDialog, int i2) {
            if (UserConfig.selectedAccount != i) {
                ((LaunchActivity) LoginActivity.this.getParentActivity()).switchToAccount(i, true);
            }
            LoginActivity.this.finishFragment();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$24(final Bundle bundle, final String str, final PhoneInputData phoneInputData, final TLObject tLObject, final TLObject tLObject2, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNextPressed$23(tL_error, tLObject2, bundle, str, phoneInputData, tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$23(TLRPC.TL_error tL_error, TLObject tLObject, Bundle bundle, final String str, PhoneInputData phoneInputData, TLObject tLObject2) {
            this.nextPressed = false;
            if (tL_error == null) {
                if (tLObject instanceof TLRPC.TL_auth_sentCodeSuccess) {
                    TLRPC.auth_Authorization auth_authorization = ((TLRPC.TL_auth_sentCodeSuccess) tLObject).authorization;
                    if (auth_authorization instanceof TLRPC.TL_auth_authorizationSignUpRequired) {
                        TLRPC.TL_help_termsOfService tL_help_termsOfService = ((TLRPC.TL_auth_authorizationSignUpRequired) auth_authorization).terms_of_service;
                        if (tL_help_termsOfService != null) {
                            LoginActivity.this.currentTermsOfService = tL_help_termsOfService;
                        }
                        LoginActivity.this.setPage(5, true, bundle, false);
                    } else {
                        LoginActivity.this.onAuthSuccess((TLRPC.TL_auth_authorization) auth_authorization);
                    }
                } else {
                    LoginActivity.this.fillNextCodeParams(bundle, (TLRPC.auth_SentCode) tLObject);
                }
            } else {
                String str2 = tL_error.text;
                if (str2 != null) {
                    if (str2.contains("SESSION_PASSWORD_NEEDED")) {
                        ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda25
                            @Override // org.telegram.tgnet.RequestDelegate
                            public final void run(TLObject tLObject3, TLRPC.TL_error tL_error2) {
                                this.f$0.lambda$onNextPressed$22(str, tLObject3, tL_error2);
                            }
                        }, 10);
                    } else if (tL_error.text.contains("PHONE_NUMBER_INVALID")) {
                        LoginActivity.needShowInvalidAlert(LoginActivity.this, str, phoneInputData, false);
                    } else if (tL_error.text.contains("PHONE_PASSWORD_FLOOD")) {
                        LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("FloodWait", C2807R.string.FloodWait));
                    } else if (tL_error.text.contains("PHONE_NUMBER_FLOOD")) {
                        LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("PhoneNumberFlood", C2807R.string.PhoneNumberFlood));
                    } else if (tL_error.text.contains("PHONE_NUMBER_BANNED")) {
                        LoginActivity.needShowInvalidAlert(LoginActivity.this, str, phoneInputData, true);
                    } else if (tL_error.text.contains("PHONE_CODE_EMPTY") || tL_error.text.contains("PHONE_CODE_INVALID")) {
                        LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.InvalidCode));
                    } else if (tL_error.text.contains("PHONE_CODE_EXPIRED")) {
                        onBackPressed(true);
                        LoginActivity.this.setPage(0, true, null, true);
                        LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("CodeExpired", C2807R.string.CodeExpired));
                    } else if (tL_error.text.startsWith("FLOOD_WAIT")) {
                        LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("FloodWait", C2807R.string.FloodWait));
                    } else if (tL_error.code != -1000) {
                        AlertsCreator.processError(((BaseFragment) LoginActivity.this).currentAccount, tL_error, LoginActivity.this, tLObject2, phoneInputData.phoneNumber);
                    }
                }
            }
            if (LoginActivity.this.isRequestingFirebaseSms) {
                return;
            }
            LoginActivity.this.needHideProgress(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$22(final String str, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda30
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNextPressed$21(tL_error, tLObject, str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$21(TLRPC.TL_error tL_error, TLObject tLObject, String str) {
            this.nextPressed = false;
            LoginActivity.this.showDoneButton(false, true);
            if (tL_error == null) {
                TL_account.Password password = (TL_account.Password) tLObject;
                if (!TwoStepVerificationActivity.canHandleCurrentPassword(password, true)) {
                    AlertsCreator.showUpdateAppAlert(LoginActivity.this.getParentActivity(), LocaleController.getString("UpdateAppAlert", C2807R.string.UpdateAppAlert), true);
                    return;
                }
                Bundle bundle = new Bundle();
                SerializedData serializedData = new SerializedData(password.getObjectSize());
                password.serializeToStream(serializedData);
                bundle.putString("password", Utilities.bytesToHex(serializedData.toByteArray()));
                bundle.putString("phoneFormated", str);
                LoginActivity.this.setPage(6, true, bundle, false);
                return;
            }
            LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), tL_error.text);
        }

        private void fillNumberInternal(String str) {
            boolean z;
            CountrySelectActivity.Country country;
            this.codeField.setAlpha(0.0f);
            this.phoneField.setAlpha(0.0f);
            if (!TextUtils.isEmpty(str)) {
                int i = 4;
                String strSubstring = null;
                if (str.length() > 4) {
                    while (true) {
                        if (i < 1) {
                            z = false;
                            break;
                        }
                        String strSubstring2 = str.substring(0, i);
                        List<CountrySelectActivity.Country> list = this.codesMap.get(strSubstring2);
                        if (list == null) {
                            country = null;
                        } else if (list.size() > 1) {
                            String string = MessagesController.getGlobalMainSettings().getString("phone_code_last_matched_".concat(strSubstring2), null);
                            country = list.get(list.size() - 1);
                            if (string != null) {
                                ArrayList<CountrySelectActivity.Country> arrayList = this.countriesArray;
                                int size = arrayList.size();
                                int i2 = 0;
                                while (true) {
                                    if (i2 >= size) {
                                        break;
                                    }
                                    CountrySelectActivity.Country country2 = arrayList.get(i2);
                                    i2++;
                                    CountrySelectActivity.Country country3 = country2;
                                    if (Objects.equals(country3.shortname, string)) {
                                        country = country3;
                                        break;
                                    }
                                }
                            }
                        } else {
                            country = list.get(0);
                        }
                        if (country != null) {
                            strSubstring = str.substring(i);
                            this.codeField.setText(strSubstring2);
                            z = true;
                            break;
                        }
                        i--;
                    }
                    if (!z) {
                        strSubstring = str.substring(1);
                        this.codeField.setText(str.substring(0, 1));
                    }
                }
                if (strSubstring != null) {
                    this.phoneField.requestFocus();
                    this.phoneField.setText(strSubstring);
                    AnimatedPhoneNumberEditText animatedPhoneNumberEditText = this.phoneField;
                    animatedPhoneNumberEditText.setSelection(animatedPhoneNumberEditText.length());
                }
            }
            if (this.phoneField.length() > 0) {
                AnimatorSet duration = new AnimatorSet().setDuration(300L);
                Property property = View.ALPHA;
                duration.playTogether(ObjectAnimator.ofFloat(this.codeField, (Property<AnimatedPhoneNumberEditText, Float>) property, 1.0f), ObjectAnimator.ofFloat(this.phoneField, (Property<AnimatedPhoneNumberEditText, Float>) property, 1.0f));
                duration.start();
                this.numberFilled = true;
                this.confirmedNumber = true;
                return;
            }
            this.codeField.setAlpha(1.0f);
            this.phoneField.setAlpha(1.0f);
        }

        public void requestPhoneNumberHint() {
            if (this.requestingPhoneNumberHint || LoginActivity.this.activityMode != 0 || LoginActivity.this.getParentActivity() == null) {
                return;
            }
            try {
                if (PushListenerController.GooglePushListenerServiceProvider.INSTANCE.hasServices()) {
                    this.requestingPhoneNumberHint = true;
                    Identity.getSignInClient(LoginActivity.this.getParentActivity()).getPhoneNumberHintIntent(GetPhoneNumberHintIntentRequest.builder().build()).addOnSuccessListener(new OnSuccessListener() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda16
                        @Override // com.google.android.gms.tasks.OnSuccessListener
                        public final void onSuccess(Object obj) {
                            this.f$0.lambda$requestPhoneNumberHint$25((PendingIntent) obj);
                        }
                    }).addOnFailureListener(new OnFailureListener() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda17
                        @Override // com.google.android.gms.tasks.OnFailureListener
                        public final void onFailure(Exception exc) {
                            this.f$0.lambda$requestPhoneNumberHint$26(exc);
                        }
                    });
                }
            } catch (Exception e) {
                this.requestingPhoneNumberHint = false;
                FileLog.m1040e(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$requestPhoneNumberHint$25(PendingIntent pendingIntent) {
            if (LoginActivity.this.getParentActivity() == null || LoginActivity.this.currentViewNum != 0) {
                this.requestingPhoneNumberHint = false;
                return;
            }
            try {
                AndroidUtilities.hideKeyboard(LoginActivity.this.fragmentView);
                LoginActivity.this.getParentActivity().startIntentSenderForResult(pendingIntent.getIntentSender(), 201, null, 0, 0, 0);
            } catch (IntentSender.SendIntentException e) {
                this.requestingPhoneNumberHint = false;
                FileLog.m1040e(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$requestPhoneNumberHint$26(Exception exc) {
            this.requestingPhoneNumberHint = false;
            FileLog.m1040e(exc);
        }

        public void handlePhoneNumberHintResult(int i, Intent intent) {
            this.requestingPhoneNumberHint = false;
            if (i != -1 || intent == null || LoginActivity.this.getParentActivity() == null) {
                return;
            }
            try {
                String strStripExceptNumbers = PhoneFormat.stripExceptNumbers(Identity.getSignInClient(LoginActivity.this.getParentActivity()).getPhoneNumberFromIntent(intent));
                if (TextUtils.isEmpty(strStripExceptNumbers)) {
                    return;
                }
                fillNumberInternal(strStripExceptNumbers);
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onShow() {
            super.onShow();
            CheckBoxCell checkBoxCell = this.syncContactsBox;
            if (checkBoxCell != null) {
                checkBoxCell.setChecked(LoginActivity.this.syncContacts, false);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onShow$27();
                }
            }, LoginActivity.SHOW_DELAY);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onShow$27() {
            if (this.phoneField != null) {
                if (this.codeField.length() != 0) {
                    this.phoneField.requestFocus();
                    if (!this.numberFilled) {
                        AnimatedPhoneNumberEditText animatedPhoneNumberEditText = this.phoneField;
                        animatedPhoneNumberEditText.setSelection(animatedPhoneNumberEditText.length());
                    }
                    LoginActivity.this.showKeyboard(this.phoneField);
                } else {
                    this.codeField.requestFocus();
                    LoginActivity.this.showKeyboard(this.codeField);
                }
            }
            if (LoginActivity.this.activityMode == 0) {
                requestPasskey(false);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onDestroyActivity() {
            super.onDestroyActivity();
            Runnable runnable = this.cancelRequestingPasskey;
            if (runnable != null) {
                runnable.run();
                this.cancelRequestingPasskey = null;
            }
        }

        private void requestPasskey(boolean z) {
            if (LoginActivity.this.activityMode == 0 && Build.VERSION.SDK_INT >= 28 && BuildVars.SUPPORTS_PASSKEYS && !this.requestingPasskey) {
                if (z || !this.requestedPasskey) {
                    this.requestingPasskey = true;
                    this.requestedPasskey = true;
                    this.cancelRequestingPasskey = PasskeysController.login(getContext(), ((BaseFragment) LoginActivity.this).currentAccount, z, new Utilities.Callback3() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda26
                        @Override // org.telegram.messenger.Utilities.Callback3
                        public final void run(Object obj, Object obj2, Object obj3) {
                            this.f$0.lambda$requestPasskey$31((Long) obj, (TLRPC.auth_Authorization) obj2, (String) obj3);
                        }
                    });
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$requestPasskey$31(Long l, TLRPC.auth_Authorization auth_authorization, String str) {
            this.cancelRequestingPasskey = null;
            this.requestingPasskey = false;
            if (str != null && ("EMPTY".equals(str) || "CANCELLED".equals(str))) {
                if (this.subtitleView == null || !"CANCELLED".equals(str)) {
                    return;
                }
                this.subtitleView.setText(AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2807R.string.StartTextPasskey), new Runnable() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda28
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$requestPasskey$28();
                    }
                }), true));
                return;
            }
            if (l.longValue() != 0 && (LoginActivity.this.getParentActivity() instanceof LaunchActivity)) {
                for (int i = 0; i < 16; i++) {
                    UserConfig userConfig = UserConfig.getInstance(i);
                    if (userConfig.isClientActivated() && userConfig.getClientUserId() == l.longValue() && ConnectionsManager.getInstance(i).isTestBackend() == LoginActivity.this.testBackend) {
                        if (UserConfig.selectedAccount != i) {
                            ((LaunchActivity) LoginActivity.this.getParentActivity()).switchToAccount(i, true);
                        }
                        LoginActivity.this.finishFragment();
                        LoginActivity.this.needHideProgress(false);
                        return;
                    }
                }
            }
            if (str != null && str.contains("SESSION_PASSWORD_NEEDED")) {
                ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda29
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$requestPasskey$30(tLObject, tL_error);
                    }
                }, 10);
            } else if (str != null) {
                if (BuildVars.DEBUG_VERSION) {
                    BulletinFactory.of(LoginActivity.this).showForError(str);
                    return;
                }
                return;
            }
            if (auth_authorization instanceof TLRPC.TL_auth_authorization) {
                LoginActivity.this.onAuthSuccess((TLRPC.TL_auth_authorization) auth_authorization);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$requestPasskey$28() {
            requestPasskey(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$requestPasskey$30(final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda31
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$requestPasskey$29(tL_error, tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$requestPasskey$29(TLRPC.TL_error tL_error, TLObject tLObject) {
            this.nextPressed = false;
            LoginActivity.this.showDoneButton(false, true);
            if (tL_error == null) {
                TL_account.Password password = (TL_account.Password) tLObject;
                if (!TwoStepVerificationActivity.canHandleCurrentPassword(password, true)) {
                    AlertsCreator.showUpdateAppAlert(LoginActivity.this.getParentActivity(), LocaleController.getString("UpdateAppAlert", C2807R.string.UpdateAppAlert), true);
                    return;
                }
                Bundle bundle = new Bundle();
                SerializedData serializedData = new SerializedData(password.getObjectSize());
                password.serializeToStream(serializedData);
                bundle.putString("password", Utilities.bytesToHex(serializedData.toByteArray()));
                LoginActivity.this.setPage(6, true, bundle, false);
                return;
            }
            LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), tL_error.text);
        }

        @Override // org.telegram.ui.Components.SlideView
        public String getHeaderName() {
            return LocaleController.getString("YourPhone", C2807R.string.YourPhone);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void saveStateParams(Bundle bundle) {
            String string = this.codeField.getText().toString();
            if (string.length() != 0) {
                bundle.putString("phoneview_code", string);
            }
            String string2 = this.phoneField.getText().toString();
            if (string2.length() != 0) {
                bundle.putString("phoneview_phone", string2);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void restoreStateParams(Bundle bundle) {
            String string = bundle.getString("phoneview_code");
            if (string != null) {
                this.codeField.setText(string);
            }
            String string2 = bundle.getString("phoneview_phone");
            if (string2 != null) {
                this.phoneField.setText(string2);
            }
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.emojiLoaded) {
                this.countryButton.getCurrentView().invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashSet<String> getUserPhoneNumbers(boolean z) {
        HashSet<String> hashSet = new HashSet<>();
        try {
            String line1Number = ((TelephonyManager) ApplicationLoader.applicationContext.getSystemService("phone")).getLine1Number();
            if (!TextUtils.isEmpty(line1Number)) {
                if (z) {
                    line1Number = PhoneFormat.stripExceptNumbers(line1Number);
                }
                hashSet.add(line1Number);
            }
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
        try {
            SubscriptionManager subscriptionManagerFrom = SubscriptionManager.from(getContext());
            int i = Build.VERSION.SDK_INT;
            List<SubscriptionInfo> completeActiveSubscriptionInfoList = i >= 30 ? subscriptionManagerFrom.getCompleteActiveSubscriptionInfoList() : null;
            if ((completeActiveSubscriptionInfoList == null || completeActiveSubscriptionInfoList.isEmpty()) && i >= 28) {
                completeActiveSubscriptionInfoList = subscriptionManagerFrom.getAccessibleSubscriptionInfoList();
            }
            if (completeActiveSubscriptionInfoList == null || completeActiveSubscriptionInfoList.isEmpty()) {
                completeActiveSubscriptionInfoList = subscriptionManagerFrom.getActiveSubscriptionInfoList();
            }
            if (completeActiveSubscriptionInfoList != null) {
                for (int i2 = 0; i2 < completeActiveSubscriptionInfoList.size(); i2++) {
                    String number = completeActiveSubscriptionInfoList.get(i2).getNumber();
                    if (!TextUtils.isEmpty(number)) {
                        if (z) {
                            number = PhoneFormat.stripExceptNumbers(number);
                        }
                        hashSet.add(number);
                    }
                }
            }
        } catch (Exception e2) {
            FileLog.m1040e(e2);
        }
        return hashSet;
    }

    public class LoginActivitySmsView extends SlideView implements NotificationCenter.NotificationCenterDelegate {
        private RLottieImageView blueImageView;
        private FrameLayout bottomContainer;
        private String catchedPhone;
        private CodeFieldContainer codeFieldContainer;
        private int codeTime;
        private Timer codeTimer;
        private TextView confirmTextView;
        private Bundle currentParams;
        private int currentType;
        private RLottieDrawable dotsDrawable;
        private RLottieDrawable dotsToStarsDrawable;
        private String emailPhone;
        private Runnable errorColorTimeout;
        private ViewSwitcher errorViewSwitcher;
        RLottieDrawable hintDrawable;
        private boolean isDotsAnimationVisible;
        private boolean isResendingCode;
        private double lastCodeTime;
        private double lastCurrentTime;
        private String lastError;
        private int length;
        private ImageView missedCallArrowIcon;
        private TextView missedCallDescriptionSubtitle;
        private TextView missedCallDescriptionSubtitle2;
        private ImageView missedCallPhoneIcon;
        private TLRPC.TL_auth_sentCode nextCodeAuth;
        private Bundle nextCodeParams;
        private boolean nextPressed;
        private int nextType;
        private LinearLayout openFragmentButton;
        private TextView openFragmentButtonText;
        private RLottieImageView openFragmentImageView;
        private int openTime;
        private String pattern;
        private String phone;
        private String phoneHash;
        private boolean postedErrorColorTimeout;
        private String prefix;
        private TextView prefixTextView;
        private int prevType;
        private TextView prevTypeTextView;
        private FrameLayout problemFrame;
        private LoadingTextView problemText;
        private String requestPhone;
        private RLottieDrawable starsToDotsDrawable;
        private int time;
        private LoadingTextView timeText;
        private Timer timeTimer;
        private final Object timerSync;
        private TextView titleTextView;
        private String url;
        private boolean waitingForEvent;
        private TextView wrongCode;

        public static /* synthetic */ void $r8$lambda$gKyVJVXs5FXqCJwgMxzY5MPqX6U(TLObject tLObject, TLRPC.TL_error tL_error) {
        }

        /* JADX INFO: renamed from: -$$Nest$fgetprogressView, reason: not valid java name */
        public static /* bridge */ /* synthetic */ ProgressView m17641$$Nest$fgetprogressView(LoginActivitySmsView loginActivitySmsView) {
            loginActivitySmsView.getClass();
            return null;
        }

        @Override // org.telegram.ui.Components.SlideView
        public boolean needBackButton() {
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            int i = 0;
            this.postedErrorColorTimeout = false;
            while (true) {
                CodeNumberField[] codeNumberFieldArr = this.codeFieldContainer.codeField;
                if (i >= codeNumberFieldArr.length) {
                    break;
                }
                codeNumberFieldArr[i].animateErrorProgress(0.0f);
                i++;
            }
            if (this.errorViewSwitcher.getCurrentView() != (this.currentType == 15 ? this.openFragmentButton : this.problemFrame)) {
                this.errorViewSwitcher.showNext();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:62:0x03b1  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x03d3  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x04a2  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x050a  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x062e  */
        /* JADX WARN: Removed duplicated region for block: B:77:0x065d  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x067b  */
        /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public LoginActivitySmsView(final Context context, int i) {
            ViewGroup viewGroup;
            super(context);
            this.timerSync = new Object();
            this.time = 60000;
            this.codeTime = 15000;
            this.lastError = _UrlKt.FRAGMENT_ENCODE_SET;
            this.isResendingCode = false;
            this.pattern = "*";
            this.prefix = _UrlKt.FRAGMENT_ENCODE_SET;
            this.errorColorTimeout = new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            };
            this.currentType = i;
            setOrientation(1);
            TextView textView = new TextView(context);
            this.confirmTextView = textView;
            textView.setTextSize(1, 14.0f);
            this.confirmTextView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            TextView textView2 = new TextView(context);
            this.titleTextView = textView2;
            textView2.setTextSize(1, 18.0f);
            this.titleTextView.setTypeface(AndroidUtilities.bold());
            this.titleTextView.setGravity(LocaleController.isRTL ? 5 : 3);
            this.titleTextView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.titleTextView.setGravity(49);
            String string = LoginActivity.this.activityMode != 1 ? null : LocaleController.getString(C2807R.string.CancelAccountReset);
            int i2 = this.currentType;
            if (i2 == 11) {
                this.titleTextView.setText(string == null ? LocaleController.getString(C2807R.string.MissedCallDescriptionTitle) : string);
                FrameLayout frameLayout = new FrameLayout(context);
                this.missedCallArrowIcon = new ImageView(context);
                this.missedCallPhoneIcon = new ImageView(context);
                frameLayout.addView(this.missedCallArrowIcon);
                frameLayout.addView(this.missedCallPhoneIcon);
                this.missedCallArrowIcon.setImageResource(C2807R.drawable.login_arrow1);
                this.missedCallPhoneIcon.setImageResource(C2807R.drawable.login_phone1);
                addView(frameLayout, LayoutHelper.createLinear(64, 64, 1, 0, 16, 0, 0));
                addView(this.titleTextView, LayoutHelper.createLinear(-2, -2, 49, 0, 8, 0, 0));
                TextView textView3 = new TextView(context);
                this.missedCallDescriptionSubtitle = textView3;
                textView3.setTextSize(1, 14.0f);
                this.missedCallDescriptionSubtitle.setGravity(1);
                this.missedCallDescriptionSubtitle.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
                this.missedCallDescriptionSubtitle.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.MissedCallDescriptionSubtitle)));
                addView(this.missedCallDescriptionSubtitle, LayoutHelper.createLinear(-1, -2, 49, 36, 16, 36, 0));
                this.codeFieldContainer = new CodeFieldContainer(context) { // from class: org.telegram.ui.LoginActivity.LoginActivitySmsView.1
                    @Override // org.telegram.ui.CodeFieldContainer
                    public void processNextPressed() {
                        LoginActivitySmsView.this.lambda$onNextPressed$17(null);
                    }
                };
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(0);
                TextView textView4 = new TextView(context);
                this.prefixTextView = textView4;
                textView4.setTextSize(1, 20.0f);
                this.prefixTextView.setMaxLines(1);
                this.prefixTextView.setTypeface(AndroidUtilities.bold());
                this.prefixTextView.setPadding(0, 0, 0, 0);
                this.prefixTextView.setGravity(16);
                linearLayout.addView(this.prefixTextView, LayoutHelper.createLinear(-2, -1, 16, 0, 0, 4, 0));
                linearLayout.addView(this.codeFieldContainer, LayoutHelper.createLinear(-2, -1));
                addView(linearLayout, LayoutHelper.createLinear(-2, 34, 1, 0, 28, 0, 0));
                TextView textView5 = new TextView(context);
                this.missedCallDescriptionSubtitle2 = textView5;
                textView5.setTextSize(1, 14.0f);
                this.missedCallDescriptionSubtitle2.setGravity(1);
                this.missedCallDescriptionSubtitle2.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
                this.missedCallDescriptionSubtitle2.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.MissedCallDescriptionSubtitle2)));
                addView(this.missedCallDescriptionSubtitle2, LayoutHelper.createLinear(-1, -2, 49, 36, 28, 36, 12));
            } else {
                TextView textView6 = this.confirmTextView;
                if (i2 == 3) {
                    textView6.setGravity(1);
                    ViewGroup frameLayout2 = new FrameLayout(context);
                    addView(frameLayout2, LayoutHelper.createLinear(-1, 0, 1.0f));
                    LinearLayout linearLayout2 = new LinearLayout(context);
                    linearLayout2.setOrientation(1);
                    linearLayout2.setGravity(1);
                    frameLayout2.addView(linearLayout2, LayoutHelper.createFrame(-1, -2, 17));
                    ((FrameLayout.LayoutParams) linearLayout2.getLayoutParams()).bottomMargin = AndroidUtilities.isTablet() ? 0 : AndroidUtilities.statusBarHeight;
                    FrameLayout frameLayout3 = new FrameLayout(context);
                    linearLayout2.addView(frameLayout3, LayoutHelper.createFrame(-2, -2, 1));
                    this.blueImageView = new RLottieImageView(context);
                    RLottieDrawable rLottieDrawable = new RLottieDrawable(C2807R.raw.phone_flash_call, AndroidUtilities.dp(64.0f), AndroidUtilities.dp(64.0f), true, null);
                    this.hintDrawable = rLottieDrawable;
                    this.blueImageView.setAnimation(rLottieDrawable);
                    frameLayout3.addView(this.blueImageView, LayoutHelper.createFrame(64, 64.0f));
                    this.titleTextView.setText(string == null ? LocaleController.getString(C2807R.string.YourCode) : string);
                    linearLayout2.addView(this.titleTextView, LayoutHelper.createLinear(-2, -2, 1, 0, 16, 0, 0));
                    linearLayout2.addView(this.confirmTextView, LayoutHelper.createLinear(-2, -2, 1, 0, 8, 0, 0));
                    viewGroup = frameLayout2;
                    if (this.currentType != 11) {
                        CodeFieldContainer codeFieldContainer = new CodeFieldContainer(context) { // from class: org.telegram.ui.LoginActivity.LoginActivitySmsView.2
                            @Override // org.telegram.ui.CodeFieldContainer
                            public void processNextPressed() {
                                LoginActivitySmsView.this.lambda$onNextPressed$17(null);
                            }
                        };
                        this.codeFieldContainer = codeFieldContainer;
                        addView(codeFieldContainer, LayoutHelper.createLinear(-2, 42, 1, 0, 32, 0, 0));
                    }
                    if (this.currentType == 3) {
                        this.codeFieldContainer.setVisibility(8);
                    }
                    LoadingTextView loadingTextView = LoginActivity.this.new LoadingTextView(context);
                    this.prevTypeTextView = loadingTextView;
                    int i3 = Theme.key_windowBackgroundWhiteValueText;
                    loadingTextView.setLinkTextColor(Theme.getColor(i3));
                    this.prevTypeTextView.setTextColor(LoginActivity.this.getThemedColor(i3));
                    this.prevTypeTextView.setTextSize(1, 14.0f);
                    this.prevTypeTextView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
                    this.prevTypeTextView.setPadding(AndroidUtilities.dp(14.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(16.0f));
                    this.prevTypeTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$new$1(view);
                        }
                    });
                    addView(this.prevTypeTextView, LayoutHelper.createLinear(-2, -2, 1, 0, 18, 0, 0));
                    this.prevTypeTextView.setVisibility(8);
                    this.problemFrame = new FrameLayout(context);
                    LoadingTextView loadingTextView2 = new LoadingTextView(context) { // from class: org.telegram.ui.LoginActivity.LoginActivitySmsView.3
                        {
                            LoginActivity loginActivity = LoginActivity.this;
                        }

                        @Override // org.telegram.ui.LoginActivity.LoadingTextView
                        public boolean isResendingCode() {
                            return LoginActivitySmsView.this.isResendingCode;
                        }

                        @Override // org.telegram.ui.LoginActivity.LoadingTextView
                        public boolean isRippleEnabled() {
                            if (getVisibility() == 0) {
                                return LoginActivitySmsView.this.time <= 0 || LoginActivitySmsView.this.timeTimer == null;
                            }
                            return false;
                        }
                    };
                    this.timeText = loadingTextView2;
                    loadingTextView2.setLinkTextColor(Theme.getColor(i3));
                    this.timeText.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
                    this.timeText.setPadding(AndroidUtilities.dp(14.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(16.0f));
                    this.timeText.setTextSize(1, 15.0f);
                    this.timeText.setGravity(51);
                    this.timeText.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$new$5(view);
                        }
                    });
                    this.problemFrame.addView(this.timeText, LayoutHelper.createFrame(-2, -2, 49));
                    this.errorViewSwitcher = new ViewSwitcher(context) { // from class: org.telegram.ui.LoginActivity.LoginActivitySmsView.4
                        @Override // android.widget.FrameLayout, android.view.View
                        public void onMeasure(int i4, int i5) {
                            super.onMeasure(i4, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(100.0f), Integer.MIN_VALUE));
                        }
                    };
                    if (this.currentType == 15) {
                        Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, C2807R.anim.text_in);
                        Interpolator interpolator = Easings.easeInOutQuad;
                        animationLoadAnimation.setInterpolator(interpolator);
                        this.errorViewSwitcher.setInAnimation(animationLoadAnimation);
                        Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, C2807R.anim.text_out);
                        animationLoadAnimation2.setInterpolator(interpolator);
                        this.errorViewSwitcher.setOutAnimation(animationLoadAnimation2);
                        LoadingTextView loadingTextView3 = new LoadingTextView(context) { // from class: org.telegram.ui.LoginActivity.LoginActivitySmsView.5
                            {
                                LoginActivity loginActivity = LoginActivity.this;
                            }

                            @Override // org.telegram.ui.LoginActivity.LoadingTextView
                            public boolean isResendingCode() {
                                return LoginActivitySmsView.this.isResendingCode;
                            }

                            @Override // org.telegram.ui.LoginActivity.LoadingTextView
                            public boolean isRippleEnabled() {
                                if (isClickable() && getVisibility() == 0 && !LoginActivitySmsView.this.nextPressed) {
                                    return (LoginActivitySmsView.this.timeText == null || LoginActivitySmsView.this.timeText.getVisibility() == 8) && !LoginActivitySmsView.this.isResendingCode;
                                }
                                return false;
                            }
                        };
                        this.problemText = loadingTextView3;
                        loadingTextView3.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
                        this.problemText.setTextSize(1, 15.0f);
                        this.problemText.setGravity(49);
                        this.problemText.setPadding(AndroidUtilities.dp(14.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(16.0f));
                        this.problemFrame.addView(this.problemText, LayoutHelper.createFrame(-1, -2, 17));
                        this.errorViewSwitcher.addView(this.problemFrame, LayoutHelper.createFrame(-2, -2, 17));
                    } else {
                        Animation animationLoadAnimation3 = AnimationUtils.loadAnimation(context, C2807R.anim.scale_in);
                        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
                        animationLoadAnimation3.setInterpolator(cubicBezierInterpolator);
                        this.errorViewSwitcher.setInAnimation(animationLoadAnimation3);
                        Animation animationLoadAnimation4 = AnimationUtils.loadAnimation(context, C2807R.anim.scale_out);
                        animationLoadAnimation4.setInterpolator(cubicBezierInterpolator);
                        this.errorViewSwitcher.setOutAnimation(animationLoadAnimation4);
                        LinearLayout linearLayout3 = new LinearLayout(context);
                        this.openFragmentButton = linearLayout3;
                        linearLayout3.setOrientation(0);
                        this.openFragmentButton.setGravity(17);
                        this.openFragmentButton.setPadding(AndroidUtilities.dp(34.0f), 0, AndroidUtilities.dp(34.0f), 0);
                        this.openFragmentButton.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(6.0f), Theme.getColor(Theme.key_changephoneinfo_image2), Theme.getColor(Theme.key_chats_actionPressedBackground)));
                        this.openFragmentButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$6(view);
                            }
                        });
                        this.errorViewSwitcher.addView(this.openFragmentButton, LayoutHelper.createFrame(-1, 52.0f));
                        RLottieImageView rLottieImageView = new RLottieImageView(context);
                        this.openFragmentImageView = rLottieImageView;
                        rLottieImageView.setAnimation(C2807R.raw.fragment, 36, 36);
                        RLottieImageView rLottieImageView2 = this.openFragmentImageView;
                        int i4 = Theme.key_featuredStickers_buttonText;
                        rLottieImageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i4), PorterDuff.Mode.SRC_IN));
                        this.openFragmentButton.addView(this.openFragmentImageView, LayoutHelper.createLinear(36, 36, 16, 0, 0, 2, 0));
                        TextView textView7 = new TextView(context);
                        this.openFragmentButtonText = textView7;
                        textView7.setText(LocaleController.getString(C2807R.string.OpenFragment));
                        this.openFragmentButtonText.setTextColor(Theme.getColor(i4));
                        this.openFragmentButtonText.setTextSize(1, 15.0f);
                        this.openFragmentButtonText.setGravity(17);
                        this.openFragmentButtonText.setTypeface(AndroidUtilities.bold());
                        this.openFragmentButton.addView(this.openFragmentButtonText);
                    }
                    TextView textView8 = new TextView(context);
                    this.wrongCode = textView8;
                    textView8.setText(LocaleController.getString(C2807R.string.WrongCode));
                    this.wrongCode.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
                    this.wrongCode.setTextSize(1, 15.0f);
                    this.wrongCode.setGravity(49);
                    this.wrongCode.setPadding(0, AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f));
                    this.errorViewSwitcher.addView(this.wrongCode, LayoutHelper.createFrame(-2, -2, 17));
                    if (viewGroup != null) {
                        FrameLayout frameLayout4 = new FrameLayout(context);
                        this.bottomContainer = frameLayout4;
                        frameLayout4.addView(this.errorViewSwitcher, LayoutHelper.createFrame(this.currentType == 15 ? -1 : -2, -2.0f, 81, 0.0f, 0.0f, 0.0f, 32.0f));
                        addView(this.bottomContainer, LayoutHelper.createLinear(-1, 0, 1.0f));
                    } else {
                        viewGroup.addView(this.errorViewSwitcher, LayoutHelper.createFrame(-2, -2.0f, 81, 0.0f, 0.0f, 0.0f, 32.0f));
                    }
                    VerticalPositionAutoAnimator.attach(this.errorViewSwitcher);
                    if (this.currentType == 15) {
                        this.problemText.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$9(context, view);
                            }
                        });
                        return;
                    }
                    return;
                }
                textView6.setGravity(49);
                FrameLayout frameLayout5 = new FrameLayout(context);
                addView(frameLayout5, LayoutHelper.createLinear(-2, -2, 49, 0, 16, 0, 0));
                int i5 = this.currentType;
                int i6 = i5 == 1 ? 128 : 64;
                if (i5 == 1) {
                    float f = i6;
                    this.hintDrawable = new RLottieDrawable(C2807R.raw.code_laptop, AndroidUtilities.dp(f), AndroidUtilities.dp(f), true, null);
                } else {
                    float f2 = i6;
                    this.hintDrawable = new RLottieDrawable(C2807R.raw.sms_incoming_info, AndroidUtilities.dp(f2), AndroidUtilities.dp(f2), true, null);
                    this.starsToDotsDrawable = new RLottieDrawable(C2807R.raw.phone_stars_to_dots, AndroidUtilities.dp(f2), AndroidUtilities.dp(f2), true, null);
                    this.dotsDrawable = new RLottieDrawable(C2807R.raw.phone_dots, AndroidUtilities.dp(f2), AndroidUtilities.dp(f2), true, null);
                    this.dotsToStarsDrawable = new RLottieDrawable(C2807R.raw.phone_dots_to_stars, AndroidUtilities.dp(f2), AndroidUtilities.dp(f2), true, null);
                }
                RLottieImageView rLottieImageView3 = new RLottieImageView(context);
                this.blueImageView = rLottieImageView3;
                rLottieImageView3.setAnimation(this.hintDrawable);
                if (this.currentType == 1 && !AndroidUtilities.isSmallScreen()) {
                    this.blueImageView.setTranslationY(-AndroidUtilities.dp(24.0f));
                }
                frameLayout5.addView(this.blueImageView, LayoutHelper.createFrame(i6, i6, 51, 0.0f, 0.0f, 0.0f, (this.currentType != 1 || AndroidUtilities.isSmallScreen()) ? 0.0f : -AndroidUtilities.dp(16.0f)));
                TextView textView9 = this.titleTextView;
                if (string == null) {
                    string = LocaleController.getString(this.currentType == 1 ? C2807R.string.SentAppCodeTitle : C2807R.string.SentSmsCodeTitle);
                }
                textView9.setText(string);
                addView(this.titleTextView, LayoutHelper.createLinear(-2, -2, 49, 0, 18, 0, 0));
                int i7 = this.currentType == 15 ? 16 : 0;
                addView(this.confirmTextView, LayoutHelper.createLinear(-2, -2, 49, i7, 17, i7, 0));
            }
            viewGroup = null;
            if (this.currentType != 11) {
            }
            if (this.currentType == 3) {
            }
            LoadingTextView loadingTextView4 = LoginActivity.this.new LoadingTextView(context);
            this.prevTypeTextView = loadingTextView4;
            int i32 = Theme.key_windowBackgroundWhiteValueText;
            loadingTextView4.setLinkTextColor(Theme.getColor(i32));
            this.prevTypeTextView.setTextColor(LoginActivity.this.getThemedColor(i32));
            this.prevTypeTextView.setTextSize(1, 14.0f);
            this.prevTypeTextView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.prevTypeTextView.setPadding(AndroidUtilities.dp(14.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(16.0f));
            this.prevTypeTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$1(view);
                }
            });
            addView(this.prevTypeTextView, LayoutHelper.createLinear(-2, -2, 1, 0, 18, 0, 0));
            this.prevTypeTextView.setVisibility(8);
            this.problemFrame = new FrameLayout(context);
            LoadingTextView loadingTextView22 = new LoadingTextView(context) { // from class: org.telegram.ui.LoginActivity.LoginActivitySmsView.3
                {
                    LoginActivity loginActivity = LoginActivity.this;
                }

                @Override // org.telegram.ui.LoginActivity.LoadingTextView
                public boolean isResendingCode() {
                    return LoginActivitySmsView.this.isResendingCode;
                }

                @Override // org.telegram.ui.LoginActivity.LoadingTextView
                public boolean isRippleEnabled() {
                    if (getVisibility() == 0) {
                        return LoginActivitySmsView.this.time <= 0 || LoginActivitySmsView.this.timeTimer == null;
                    }
                    return false;
                }
            };
            this.timeText = loadingTextView22;
            loadingTextView22.setLinkTextColor(Theme.getColor(i32));
            this.timeText.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.timeText.setPadding(AndroidUtilities.dp(14.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(16.0f));
            this.timeText.setTextSize(1, 15.0f);
            this.timeText.setGravity(51);
            this.timeText.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$5(view);
                }
            });
            this.problemFrame.addView(this.timeText, LayoutHelper.createFrame(-2, -2, 49));
            this.errorViewSwitcher = new ViewSwitcher(context) { // from class: org.telegram.ui.LoginActivity.LoginActivitySmsView.4
                @Override // android.widget.FrameLayout, android.view.View
                public void onMeasure(int i42, int i52) {
                    super.onMeasure(i42, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(100.0f), Integer.MIN_VALUE));
                }
            };
            if (this.currentType == 15) {
            }
            TextView textView82 = new TextView(context);
            this.wrongCode = textView82;
            textView82.setText(LocaleController.getString(C2807R.string.WrongCode));
            this.wrongCode.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.wrongCode.setTextSize(1, 15.0f);
            this.wrongCode.setGravity(49);
            this.wrongCode.setPadding(0, AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f));
            this.errorViewSwitcher.addView(this.wrongCode, LayoutHelper.createFrame(-2, -2, 17));
            if (viewGroup != null) {
            }
            VerticalPositionAutoAnimator.attach(this.errorViewSwitcher);
            if (this.currentType == 15) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            onBackPressed(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$5(View view) {
            if (this.time <= 0 || this.timeTimer == null) {
                this.isResendingCode = true;
                this.timeText.invalidate();
                this.timeText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteValueText));
                int i = this.nextType;
                if (i != 4 && i != 2 && i != 17 && i != 16 && i != 11 && i != 15) {
                    if (i == 3) {
                        AndroidUtilities.setWaitingForSms(false);
                        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didReceiveSmsCode);
                        this.waitingForEvent = false;
                        destroyCodeTimer();
                        this.isResendingCode = false;
                        resendCode();
                        return;
                    }
                    return;
                }
                if (i == 4 || i == 11) {
                    this.timeText.setText(LocaleController.getString(C2807R.string.Calling));
                } else {
                    this.timeText.setText(LocaleController.getString(C2807R.string.SendingSms));
                }
                final Bundle bundle = new Bundle();
                bundle.putString("phone", this.phone);
                bundle.putString("ephone", this.emailPhone);
                bundle.putString("phoneFormated", this.requestPhone);
                bundle.putInt("prevType", this.currentType);
                createCodeTimer();
                TLRPC.TL_auth_resendCode tL_auth_resendCode = new TLRPC.TL_auth_resendCode();
                tL_auth_resendCode.phone_number = this.requestPhone;
                tL_auth_resendCode.phone_code_hash = this.phoneHash;
                ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(tL_auth_resendCode, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda19
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$new$4(bundle, tLObject, tL_error);
                    }
                }, 10);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4(final Bundle bundle, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            if (tLObject != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda25
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$2(bundle, tLObject);
                    }
                });
            } else {
                if (tL_error == null || tL_error.text == null) {
                    return;
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda26
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$3(tL_error);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(Bundle bundle, TLObject tLObject) {
            this.nextCodeParams = bundle;
            TLRPC.TL_auth_sentCode tL_auth_sentCode = (TLRPC.TL_auth_sentCode) tLObject;
            this.nextCodeAuth = tL_auth_sentCode;
            TLRPC.auth_SentCodeType auth_sentcodetype = tL_auth_sentCode.type;
            if (auth_sentcodetype instanceof TLRPC.TL_auth_sentCodeTypeSmsPhrase) {
                this.nextType = 17;
            } else if (auth_sentcodetype instanceof TLRPC.TL_auth_sentCodeTypeSmsWord) {
                this.nextType = 16;
            }
            LoginActivity.this.fillNextCodeParams(bundle, tL_auth_sentCode);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(TLRPC.TL_error tL_error) {
            this.lastError = tL_error.text;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$6(View view) {
            try {
                getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.url)));
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$9(final Context context, View view) {
            TLRPC.TL_auth_sentCode tL_auth_sentCode;
            Bundle bundle = this.nextCodeParams;
            if (bundle != null && (tL_auth_sentCode = this.nextCodeAuth) != null) {
                LoginActivity.this.fillNextCodeParams(bundle, tL_auth_sentCode);
                return;
            }
            if (this.nextPressed) {
                return;
            }
            LoadingTextView loadingTextView = this.timeText;
            if ((loadingTextView == null || loadingTextView.getVisibility() == 8) && !this.isResendingCode) {
                if (this.nextType != 0) {
                    if (LoginActivity.this.radialProgressView.getTag() != null) {
                        return;
                    }
                    resendCode();
                    return;
                }
                TLRPC.TL_auth_reportMissingCode tL_auth_reportMissingCode = new TLRPC.TL_auth_reportMissingCode();
                tL_auth_reportMissingCode.phone_number = this.requestPhone;
                tL_auth_reportMissingCode.phone_code_hash = this.phoneHash;
                tL_auth_reportMissingCode.mnc = _UrlKt.FRAGMENT_ENCODE_SET;
                try {
                    String networkOperator = ((TelephonyManager) ApplicationLoader.applicationContext.getSystemService("phone")).getNetworkOperator();
                    if (!TextUtils.isEmpty(networkOperator)) {
                        networkOperator.substring(0, 3);
                        tL_auth_reportMissingCode.mnc = networkOperator.substring(3);
                    }
                } catch (Exception e) {
                    FileLog.m1040e(e);
                }
                LoginActivity.this.getConnectionsManager().sendRequest(tL_auth_reportMissingCode, null, 8);
                new AlertDialog.Builder(context).setTitle(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.DidNotGetTheCodeInfo, this.phone))).setNeutralButton(LocaleController.getString(C2807R.string.DidNotGetTheCodeHelpButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda17
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        this.f$0.lambda$new$7(context, alertDialog, i);
                    }
                }).setPositiveButton(LocaleController.getString(C2807R.string.Close), null).setNegativeButton(LocaleController.getString(C2807R.string.DidNotGetTheCodeEditNumberButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda18
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        this.f$0.lambda$new$8(alertDialog, i);
                    }
                }).show();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$7(Context context, AlertDialog alertDialog, int i) {
            String str;
            try {
                PackageInfo packageInfo = ApplicationLoader.applicationContext.getPackageManager().getPackageInfo(ApplicationLoader.applicationContext.getPackageName(), 0);
                String str2 = String.format(Locale.US, "%s (%d)", packageInfo.versionName, Integer.valueOf(packageInfo.versionCode));
                Intent intent = new Intent("android.intent.action.SENDTO");
                intent.setData(Uri.parse("mailto:"));
                intent.putExtra("android.intent.extra.EMAIL", new String[]{"sms@telegram.org"});
                StringBuilder sb = new StringBuilder();
                sb.append(this.emailPhone);
                sb.append(" Android Registration/Login Issue ");
                sb.append(str2);
                sb.append(LoginActivity.this.paid ? " #paidauth" : _UrlKt.FRAGMENT_ENCODE_SET);
                intent.putExtra("android.intent.extra.SUBJECT", sb.toString());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Technical Details (PLEASE DO NOT EDIT OR REMOVE)\n");
                sb2.append("Device: ");
                sb2.append(Build.MANUFACTURER);
                sb2.append(" ");
                sb2.append(Build.MODEL);
                sb2.append("\n");
                sb2.append("OS version: SDK ");
                int i2 = Build.VERSION.SDK_INT;
                sb2.append(i2);
                sb2.append("\n");
                sb2.append("Locale: ");
                sb2.append(Locale.getDefault());
                sb2.append("\n");
                sb2.append("\n");
                sb2.append("Target Phone: +");
                sb2.append(this.requestPhone);
                sb2.append("\n");
                sb2.append("\n");
                try {
                    SubscriptionManager subscriptionManagerFrom = SubscriptionManager.from(getContext());
                    List<SubscriptionInfo> completeActiveSubscriptionInfoList = i2 >= 30 ? subscriptionManagerFrom.getCompleteActiveSubscriptionInfoList() : null;
                    if ((completeActiveSubscriptionInfoList == null || completeActiveSubscriptionInfoList.isEmpty()) && i2 >= 28) {
                        completeActiveSubscriptionInfoList = subscriptionManagerFrom.getAccessibleSubscriptionInfoList();
                    }
                    if (completeActiveSubscriptionInfoList == null || completeActiveSubscriptionInfoList.isEmpty()) {
                        completeActiveSubscriptionInfoList = subscriptionManagerFrom.getActiveSubscriptionInfoList();
                    }
                    if (completeActiveSubscriptionInfoList != null) {
                        for (SubscriptionInfo subscriptionInfo : completeActiveSubscriptionInfoList) {
                            String number = subscriptionInfo.getNumber();
                            if (!TextUtils.isEmpty(number)) {
                                String str3 = "SIM" + subscriptionInfo.getSimSlotIndex();
                                sb2.append(str3);
                                sb2.append(".Phone: ");
                                sb2.append(number);
                                sb2.append("\n");
                                sb2.append(str3);
                                sb2.append(".MCC: ");
                                sb2.append(subscriptionInfo.getMcc());
                                sb2.append("\n");
                                sb2.append(str3);
                                sb2.append(".MNC: ");
                                sb2.append(subscriptionInfo.getMnc());
                                sb2.append("\n");
                                sb2.append(str3);
                                sb2.append(".Carrier: ");
                                sb2.append(TextUtils.isEmpty(subscriptionInfo.getCarrierName()) ? "unknown" : subscriptionInfo.getCarrierName());
                                sb2.append("\n\n");
                            }
                        }
                    }
                } catch (Exception e) {
                    FileLog.m1040e(e);
                }
                if (Build.VERSION.SDK_INT >= 29) {
                    try {
                        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(TelephonyManager.class);
                        SignalStrength signalStrength = telephonyManager.getSignalStrength();
                        if (signalStrength != null) {
                            sb2.append("Signal: ");
                            sb2.append(signalStrength.getLevel());
                            sb2.append("/4\n");
                        } else {
                            sb2.append("Signal: unknown\n");
                        }
                    } catch (Exception e2) {
                        FileLog.m1040e(e2);
                    }
                } else {
                    sb2.append("Signal: unknown\n");
                }
                sb2.append("Wi-Fi: ");
                sb2.append(AndroidUtilities.isWifiEnabled(context));
                sb2.append("\n");
                sb2.append("Airplane Mode: ");
                sb2.append(AndroidUtilities.isInAirplaneMode(context));
                sb2.append("\n");
                sb2.append("\n");
                sb2.append("App: ");
                sb2.append(BuildVars.getExteraAppId());
                sb2.append("\n");
                int i3 = packageInfo.versionCode % 10;
                if (i3 == 1 || i3 == 2) {
                    str = "store";
                } else if (BuildVars.isBetaApp()) {
                    str = "beta";
                } else {
                    str = "universal";
                }
                sb2.append("App version: ");
                sb2.append(str2);
                sb2.append(" ");
                sb2.append(str);
                sb2.append("\n");
                sb2.append("\n");
                sb2.append("Issue: ");
                sb2.append(LoginActivity.this.paid ? "no_otp" : "no_otp_paid");
                sb2.append("\n");
                if (!TextUtils.isEmpty(this.lastError)) {
                    sb2.append("Error: ");
                    sb2.append(this.lastError);
                    sb2.append("\n");
                }
                sb2.append("\n\n================================================\n");
                sb2.append("WRITE YOUR COMMENT HERE:\n");
                sb2.append("\n");
                sb2.append("\n");
                intent.putExtra("android.intent.extra.TEXT", sb2.toString());
                getContext().startActivity(Intent.createChooser(intent, "Send email..."));
            } catch (Exception unused) {
                LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.AppName), LocaleController.getString("NoMailInstalled", C2807R.string.NoMailInstalled));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$8(AlertDialog alertDialog, int i) {
            LoginActivity.this.setPage(0, true, null, true);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void updateColors() {
            this.confirmTextView.setTextColor(Theme.getColor(LoginActivity.this.isInCancelAccountDeletionMode() ? Theme.key_windowBackgroundWhiteBlackText : Theme.key_windowBackgroundWhiteGrayText6));
            this.confirmTextView.setLinkTextColor(Theme.getColor(Theme.key_chats_actionBackground));
            TextView textView = this.titleTextView;
            int i = Theme.key_windowBackgroundWhiteBlackText;
            textView.setTextColor(Theme.getColor(i));
            if (this.currentType == 11) {
                TextView textView2 = this.missedCallDescriptionSubtitle;
                int i2 = Theme.key_windowBackgroundWhiteGrayText;
                textView2.setTextColor(Theme.getColor(i2));
                this.missedCallDescriptionSubtitle2.setTextColor(Theme.getColor(i2));
                ImageView imageView = this.missedCallArrowIcon;
                int color = Theme.getColor(Theme.key_windowBackgroundWhiteInputFieldActivated);
                PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
                imageView.setColorFilter(new PorterDuffColorFilter(color, mode));
                this.missedCallPhoneIcon.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), mode));
                this.prefixTextView.setTextColor(Theme.getColor(i));
            }
            applyLottieColors(this.hintDrawable);
            applyLottieColors(this.starsToDotsDrawable);
            applyLottieColors(this.dotsDrawable);
            applyLottieColors(this.dotsToStarsDrawable);
            CodeFieldContainer codeFieldContainer = this.codeFieldContainer;
            if (codeFieldContainer != null) {
                codeFieldContainer.invalidate();
            }
            Integer numValueOf = (Integer) this.timeText.getTag();
            if (numValueOf == null) {
                numValueOf = Integer.valueOf(Theme.key_windowBackgroundWhiteGrayText6);
            }
            this.timeText.setTextColor(Theme.getColor(numValueOf.intValue()));
            if (this.currentType != 15) {
                this.problemText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4));
            }
            this.wrongCode.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }

        private void applyLottieColors(RLottieDrawable rLottieDrawable) {
            if (rLottieDrawable != null) {
                rLottieDrawable.setLayerColor("Bubble", Theme.getColor(Theme.key_chats_actionBackground));
                int i = Theme.key_windowBackgroundWhiteBlackText;
                rLottieDrawable.setLayerColor("Phone", Theme.getColor(i));
                rLottieDrawable.setLayerColor("Note", Theme.getColor(i));
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public boolean hasCustomKeyboard() {
            return this.currentType != 3;
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onCancelPressed() {
            this.nextPressed = false;
        }

        private void resendCode() {
            if (this.nextPressed || this.isResendingCode || LoginActivity.this.isRequestingFirebaseSms) {
                return;
            }
            this.isResendingCode = true;
            this.timeText.invalidate();
            this.problemText.invalidate();
            final Bundle bundle = new Bundle();
            bundle.putString("phone", this.phone);
            bundle.putString("ephone", this.emailPhone);
            bundle.putString("phoneFormated", this.requestPhone);
            bundle.putInt("prevType", this.currentType);
            this.nextPressed = true;
            TLRPC.TL_auth_resendCode tL_auth_resendCode = new TLRPC.TL_auth_resendCode();
            tL_auth_resendCode.phone_number = this.requestPhone;
            tL_auth_resendCode.phone_code_hash = this.phoneHash;
            tryShowProgress(ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(tL_auth_resendCode, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda31
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$resendCode$11(bundle, tLObject, tL_error);
                }
            }, 10));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$resendCode$11(final Bundle bundle, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda34
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$resendCode$10(tL_error, bundle, tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$resendCode$10(TLRPC.TL_error tL_error, Bundle bundle, TLObject tLObject) {
            this.nextPressed = false;
            if (tL_error == null) {
                this.nextCodeParams = bundle;
                if (tLObject instanceof TLRPC.TL_auth_sentCode) {
                    TLRPC.TL_auth_sentCode tL_auth_sentCode = (TLRPC.TL_auth_sentCode) tLObject;
                    this.nextCodeAuth = tL_auth_sentCode;
                    TLRPC.auth_SentCodeType auth_sentcodetype = tL_auth_sentCode.type;
                    if (auth_sentcodetype instanceof TLRPC.TL_auth_sentCodeTypeSmsPhrase) {
                        this.nextType = 17;
                    } else if (auth_sentcodetype instanceof TLRPC.TL_auth_sentCodeTypeSmsWord) {
                        this.nextType = 16;
                    }
                    LoginActivity.this.fillNextCodeParams(bundle, tL_auth_sentCode);
                } else if (tLObject instanceof TLRPC.TL_auth_sentCodePaymentRequired) {
                    TLRPC.TL_auth_sentCodePaymentRequired tL_auth_sentCodePaymentRequired = (TLRPC.TL_auth_sentCodePaymentRequired) tLObject;
                    bundle.putString("product", tL_auth_sentCodePaymentRequired.store_product);
                    bundle.putString("phoneHash", tL_auth_sentCodePaymentRequired.phone_code_hash);
                    bundle.putString("support_email_address", tL_auth_sentCodePaymentRequired.support_email_address);
                    bundle.putString("support_email_subject", tL_auth_sentCodePaymentRequired.support_email_subject);
                    bundle.putString("currency", tL_auth_sentCodePaymentRequired.currency);
                    bundle.putInt("premium_days", tL_auth_sentCodePaymentRequired.premium_days);
                    bundle.putLong("amount", tL_auth_sentCodePaymentRequired.amount);
                    LoginActivity.this.setPage(19, true, bundle, true);
                }
            } else {
                String str = tL_error.text;
                if (str != null) {
                    if (str.contains("PHONE_NUMBER_INVALID")) {
                        LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.InvalidPhoneNumber));
                    } else if (tL_error.text.contains("PHONE_CODE_EMPTY") || tL_error.text.contains("PHONE_CODE_INVALID")) {
                        LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.InvalidCode));
                    } else if (tL_error.text.contains("PHONE_CODE_EXPIRED")) {
                        onBackPressed(true);
                        LoginActivity.this.setPage(0, true, null, true);
                        LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.CodeExpired));
                    } else if (tL_error.text.startsWith("FLOOD_WAIT")) {
                        LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.FloodWait));
                    } else if (tL_error.code != -1000) {
                        LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.ErrorOccurred) + "\n" + tL_error.text);
                    }
                }
            }
            tryHideProgress(false);
        }

        @Override // android.view.View
        public void onConfigurationChanged(Configuration configuration) {
            CodeNumberField[] codeNumberFieldArr;
            super.onConfigurationChanged(configuration);
            CodeFieldContainer codeFieldContainer = this.codeFieldContainer;
            if (codeFieldContainer == null || (codeNumberFieldArr = codeFieldContainer.codeField) == null) {
                return;
            }
            for (CodeNumberField codeNumberField : codeNumberFieldArr) {
                codeNumberField.setShowSoftInputOnFocusCompat(!hasCustomKeyboard() || LoginActivity.this.isCustomKeyboardForceDisabled());
            }
        }

        private void tryShowProgress(int i) {
            lambda$tryShowProgress$12(i, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: tryShowProgress, reason: merged with bridge method [inline-methods] */
        public void lambda$tryShowProgress$12(final int i, final boolean z) {
            if (this.starsToDotsDrawable != null) {
                if (this.isDotsAnimationVisible) {
                    return;
                }
                this.isDotsAnimationVisible = true;
                if (this.hintDrawable.getCurrentFrame() != this.hintDrawable.getFramesCount() - 1) {
                    this.hintDrawable.setOnAnimationEndListener(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda20
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$tryShowProgress$13(i, z);
                        }
                    });
                    return;
                }
                this.starsToDotsDrawable.setOnAnimationEndListener(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda21
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$tryShowProgress$15();
                    }
                });
                this.blueImageView.setAutoRepeat(false);
                this.starsToDotsDrawable.setCurrentFrame(0, false);
                this.blueImageView.setAnimation(this.starsToDotsDrawable);
                this.blueImageView.playAnimation();
                return;
            }
            LoginActivity.this.needShowProgress(i, z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$tryShowProgress$13(final int i, final boolean z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda33
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$tryShowProgress$12(i, z);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$tryShowProgress$15() {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$tryShowProgress$14();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$tryShowProgress$14() {
            this.blueImageView.setAutoRepeat(true);
            this.dotsDrawable.setCurrentFrame(0, false);
            this.dotsDrawable.setAutoRepeat(1);
            this.blueImageView.setAnimation(this.dotsDrawable);
            this.blueImageView.playAnimation();
        }

        private void tryHideProgress(boolean z) {
            tryHideProgress(z, true);
        }

        private void tryHideProgress(boolean z, boolean z2) {
            if (this.starsToDotsDrawable != null) {
                if (this.isDotsAnimationVisible) {
                    this.isDotsAnimationVisible = false;
                    this.blueImageView.setAutoRepeat(false);
                    this.dotsDrawable.setAutoRepeat(0);
                    this.dotsDrawable.setOnFinishCallback(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda14
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$tryHideProgress$19();
                        }
                    }, this.dotsDrawable.getFramesCount() - 1);
                    return;
                }
                return;
            }
            LoginActivity.this.needHideProgress(z, z2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$tryHideProgress$19() {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda32
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$tryHideProgress$18();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$tryHideProgress$17() {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda44
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$tryHideProgress$16();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$tryHideProgress$18() {
            this.dotsToStarsDrawable.setOnAnimationEndListener(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda41
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$tryHideProgress$17();
                }
            });
            this.blueImageView.setAutoRepeat(false);
            this.dotsToStarsDrawable.setCurrentFrame(0, false);
            this.blueImageView.setAnimation(this.dotsToStarsDrawable);
            this.blueImageView.playAnimation();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$tryHideProgress$16() {
            this.blueImageView.setAutoRepeat(false);
            this.blueImageView.setAnimation(this.hintDrawable);
        }

        @Override // org.telegram.ui.Components.SlideView
        public String getHeaderName() {
            int i = this.currentType;
            if (i == 3 || i == 11) {
                return this.phone;
            }
            return LocaleController.getString("YourCode", C2807R.string.YourCode);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$21(View view, boolean z) {
            if (z) {
                LoginActivity.this.keyboardView.setEditText((EditText) view);
                LoginActivity.this.keyboardView.setDispatchBackWhenEmpty(true);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:180:0x0468  */
        /* JADX WARN: Removed duplicated region for block: B:182:0x046b  */
        /* JADX WARN: Removed duplicated region for block: B:183:0x0476  */
        /* JADX WARN: Removed duplicated region for block: B:195:0x048f  */
        /* JADX WARN: Removed duplicated region for block: B:248:0x055e  */
        /* JADX WARN: Removed duplicated region for block: B:271:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:74:0x029b  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x02e9  */
        /* JADX WARN: Removed duplicated region for block: B:91:0x02fe  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x0318  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x0329  */
        @Override // org.telegram.ui.Components.SlideView
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void setParams(Bundle bundle, boolean z) {
            CharSequence charSequenceReplaceTags;
            SpannableStringBuilder spannableStringBuilderReplaceTags;
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            String strSubstring;
            String string;
            int i8;
            float f = 1.0f;
            if (bundle == null) {
                if (this.nextCodeParams == null || this.nextCodeAuth == null) {
                    return;
                }
                setProblemTextVisible(true);
                this.timeText.setVisibility(8);
                LoadingTextView loadingTextView = this.problemText;
                if (loadingTextView != null) {
                    loadingTextView.setVisibility(0);
                    this.problemText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteValueText));
                    int i9 = this.nextType;
                    if (i9 == 17) {
                        i8 = C2807R.string.ReturnEnteringPhrase;
                    } else if (i9 == 16) {
                        i8 = C2807R.string.ReturnEnteringWord;
                    } else {
                        i8 = C2807R.string.ReturnEnteringSMS;
                    }
                    this.problemText.setText(AndroidUtilities.replaceArrows(LocaleController.getString(i8), true, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f)));
                    return;
                }
                return;
            }
            this.waitingForEvent = true;
            int i10 = this.currentType;
            if (i10 == 15) {
                NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didReceiveSmsCode);
            } else if (i10 == 2) {
                AndroidUtilities.setWaitingForSms(true);
                NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didReceiveSmsCode);
            } else if (i10 == 3) {
                AndroidUtilities.setWaitingForCall(true);
                NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didReceiveCall);
                if (z) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            CallReceiver.checkLastReceivedCall();
                        }
                    });
                }
            }
            this.currentParams = bundle;
            this.phone = bundle.getString("phone");
            this.emailPhone = bundle.getString("ephone");
            this.requestPhone = bundle.getString("phoneFormated");
            this.phoneHash = bundle.getString("phoneHash");
            this.time = bundle.getInt("timeout");
            this.openTime = (int) (System.currentTimeMillis() / 1000);
            this.nextType = bundle.getInt("nextType");
            this.pattern = bundle.getString("pattern");
            this.prefix = bundle.getString("prefix");
            this.length = bundle.getInt("length");
            this.prevType = bundle.getInt("prevType", 0);
            if (this.length == 0) {
                this.length = 5;
            }
            this.url = bundle.getString("url");
            this.nextCodeParams = null;
            this.nextCodeAuth = null;
            this.codeFieldContainer.setNumbersCount(this.length, this.currentType);
            CodeNumberField[] codeNumberFieldArr = this.codeFieldContainer.codeField;
            int length = codeNumberFieldArr.length;
            int i11 = 0;
            while (i11 < length) {
                float f2 = f;
                CodeNumberField codeNumberField = codeNumberFieldArr[i11];
                codeNumberField.setShowSoftInputOnFocusCompat(!hasCustomKeyboard() || LoginActivity.this.isCustomKeyboardForceDisabled());
                codeNumberField.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.LoginActivity.LoginActivitySmsView.6
                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i12, int i13, int i14) {
                    }

                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i12, int i13, int i14) {
                        if (LoginActivitySmsView.this.postedErrorColorTimeout) {
                            LoginActivitySmsView loginActivitySmsView = LoginActivitySmsView.this;
                            loginActivitySmsView.removeCallbacks(loginActivitySmsView.errorColorTimeout);
                            LoginActivitySmsView.this.errorColorTimeout.run();
                        }
                    }
                });
                codeNumberField.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda7
                    @Override // android.view.View.OnFocusChangeListener
                    public final void onFocusChange(View view, boolean z2) {
                        this.f$0.lambda$setParams$21(view, z2);
                    }
                });
                i11++;
                f = f2;
            }
            float f3 = f;
            int i12 = this.prevType;
            if (i12 == 17) {
                this.prevTypeTextView.setVisibility(0);
                this.prevTypeTextView.setText(AndroidUtilities.replaceArrows(LocaleController.getString(C2807R.string.BackEnteringPhrase), true, AndroidUtilities.dp(-1.0f), AndroidUtilities.dp(f3)));
            } else {
                TextView textView = this.prevTypeTextView;
                if (i12 == 16) {
                    textView.setVisibility(0);
                    this.prevTypeTextView.setText(AndroidUtilities.replaceArrows(LocaleController.getString(C2807R.string.BackEnteringWord), true, AndroidUtilities.dp(-1.0f), AndroidUtilities.dp(f3)));
                } else {
                    textView.setVisibility(8);
                }
            }
            if (this.phone == null) {
                return;
            }
            String str = PhoneFormat.getInstance().format(this.phone);
            if (LoginActivity.this.isInCancelAccountDeletionMode()) {
                spannableStringBuilderReplaceTags = new SpannableStringBuilder(AndroidUtilities.replaceTags(LocaleController.formatString("CancelAccountResetInfo2", C2807R.string.CancelAccountResetInfo2, PhoneFormat.getInstance().format("+" + str))));
                int iIndexOf = TextUtils.indexOf((CharSequence) spannableStringBuilderReplaceTags, '*');
                int iLastIndexOf = TextUtils.lastIndexOf(spannableStringBuilderReplaceTags, '*');
                if (iIndexOf != -1 && iLastIndexOf != -1 && iIndexOf != iLastIndexOf) {
                    this.confirmTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
                    spannableStringBuilderReplaceTags.replace(iLastIndexOf, iLastIndexOf + 1, (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET);
                    spannableStringBuilderReplaceTags.replace(iIndexOf, iIndexOf + 1, (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET);
                    spannableStringBuilderReplaceTags.setSpan(new URLSpanNoUnderline("tg://settings/change_number"), iIndexOf, iLastIndexOf - 1, 33);
                }
            } else {
                int i13 = this.currentType;
                if (i13 == 1) {
                    spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString("SentAppCodeWithPhone", C2807R.string.SentAppCodeWithPhone, LocaleController.addNbsp(str)));
                } else if (i13 == 2) {
                    spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString("SentSmsCode", C2807R.string.SentSmsCode, LocaleController.addNbsp(str)));
                } else if (i13 == 3) {
                    spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString("SentCallCode", C2807R.string.SentCallCode, LocaleController.addNbsp(str)));
                } else if (i13 == 4) {
                    spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString("SentCallOnly", C2807R.string.SentCallOnly, LocaleController.addNbsp(str)));
                } else {
                    charSequenceReplaceTags = i13 == 15 ? AndroidUtilities.replaceTags(LocaleController.formatString("SentFragmentCode", C2807R.string.SentFragmentCode, LocaleController.addNbsp(str))) : _UrlKt.FRAGMENT_ENCODE_SET;
                    this.confirmTextView.setText(charSequenceReplaceTags);
                    i = this.currentType;
                    if (i != 15) {
                        if (i == 1) {
                            int i14 = this.nextType;
                            if (i14 == 3 || i14 == 4 || i14 == 11) {
                                this.problemText.setText(LocaleController.getString(C2807R.string.DidNotGetTheCodePhone));
                            } else if (i14 == 15) {
                                this.problemText.setText(LocaleController.getString(C2807R.string.DidNotGetTheCodeFragment));
                            } else {
                                LoadingTextView loadingTextView2 = this.problemText;
                                if (i14 == 0) {
                                    loadingTextView2.setText(LocaleController.getString(C2807R.string.DidNotGetTheCode));
                                } else {
                                    loadingTextView2.setText(LocaleController.getString(C2807R.string.DidNotGetTheCodeSms));
                                }
                            }
                        } else {
                            this.problemText.setText(LocaleController.getString(C2807R.string.DidNotGetTheCode));
                        }
                    }
                    if (this.currentType == 3) {
                        LoginActivity.this.showKeyboard(this.codeFieldContainer.codeField[0]);
                        this.codeFieldContainer.codeField[0].requestFocus();
                    } else {
                        AndroidUtilities.hideKeyboard(this.codeFieldContainer.codeField[0]);
                    }
                    destroyTimer();
                    destroyCodeTimer();
                    this.lastCurrentTime = System.currentTimeMillis();
                    i2 = this.currentType;
                    if (i2 != 1) {
                        setProblemTextVisible(true);
                        this.timeText.setVisibility(8);
                        LoadingTextView loadingTextView3 = this.problemText;
                        if (loadingTextView3 != null) {
                            loadingTextView3.setVisibility(0);
                        }
                    } else if (i2 == 3) {
                        int i15 = this.nextType;
                        if (i15 == 4 || i15 == 2 || i15 == 17 || i15 == 16 || i15 == 11) {
                            setProblemTextVisible(false);
                            this.timeText.setVisibility(0);
                            this.problemText.setVisibility(8);
                            int i16 = this.nextType;
                            if (i16 == 4 || i16 == 11) {
                                this.timeText.setText(LocaleController.formatString("CallAvailableIn", C2807R.string.CallAvailableIn, 1, 0));
                            } else if (i16 == 2 || i16 == 17 || i16 == 16) {
                                this.timeText.setText(LocaleController.formatString("SmsAvailableIn", C2807R.string.SmsAvailableIn, 1, 0));
                            }
                        } else {
                            this.timeText.setVisibility(8);
                        }
                        String strObtainLoginPhoneCall = z ? AndroidUtilities.obtainLoginPhoneCall(this.pattern) : null;
                        if (strObtainLoginPhoneCall != null) {
                            lambda$onNextPressed$17(strObtainLoginPhoneCall);
                        } else {
                            String str2 = this.catchedPhone;
                            if (str2 != null) {
                                lambda$onNextPressed$17(str2);
                            } else {
                                int i17 = this.nextType;
                                if (i17 == 4 || i17 == 2 || i17 == 17 || i17 == 16 || i17 == 11) {
                                    createTimer();
                                }
                            }
                        }
                    } else {
                        if (i2 == 2) {
                            int i18 = this.nextType;
                            if (i18 != 2) {
                                i7 = 17;
                                i6 = 16;
                                i3 = (i18 == 17 || i18 == 16 || i18 == 4 || i18 == 3) ? 4 : 4;
                            } else {
                                i6 = 16;
                                i7 = 17;
                            }
                            if (i18 != 2 && i18 != i7 && i18 != i6) {
                                this.timeText.setText(LocaleController.formatString("CallAvailableIn", C2807R.string.CallAvailableIn, 2, 0));
                            } else {
                                this.timeText.setText(LocaleController.formatString("SmsAvailableIn", C2807R.string.SmsAvailableIn, 1, 0));
                            }
                            setProblemTextVisible(this.time < 1000);
                            this.timeText.setVisibility(this.time < 1000 ? 8 : 0);
                            LoadingTextView loadingTextView4 = this.problemText;
                            if (loadingTextView4 != null) {
                                loadingTextView4.setVisibility(this.time < 1000 ? 0 : 8);
                            }
                            SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0);
                            String string2 = sharedPreferences.getString("sms_hash", null);
                            if (TextUtils.isEmpty(string2) || (string = sharedPreferences.getString("sms_hash_code", null)) == null) {
                                strSubstring = null;
                                if (strSubstring == null) {
                                    this.codeFieldContainer.setCode(strSubstring);
                                    lambda$onNextPressed$17(null);
                                } else {
                                    createTimer();
                                }
                            } else {
                                if (string.contains(string2 + "|") && !LoginActivity.this.newAccount) {
                                    strSubstring = string.substring(string.indexOf(124) + 1);
                                }
                                if (strSubstring == null) {
                                }
                            }
                        }
                        if (i2 == i3) {
                            int i19 = this.nextType;
                            if (i19 != 2) {
                                i5 = 17;
                                if (i19 == 17 || i19 == 11) {
                                    i4 = 16;
                                } else {
                                    i4 = 16;
                                    if (i19 == 16) {
                                    }
                                }
                            } else {
                                i4 = 16;
                                i5 = 17;
                            }
                            if (i19 != 2 && i19 != i5 && i19 != i4) {
                                this.timeText.setText(LocaleController.formatString("CallAvailableIn", C2807R.string.CallAvailableIn, 2, 0));
                            } else {
                                this.timeText.setText(LocaleController.formatString("SmsAvailableIn", C2807R.string.SmsAvailableIn, 1, 0));
                            }
                            setProblemTextVisible(this.time < 1000);
                            this.timeText.setVisibility(this.time < 1000 ? 8 : 0);
                            LoadingTextView loadingTextView5 = this.problemText;
                            if (loadingTextView5 != null) {
                                loadingTextView5.setVisibility(this.time < 1000 ? 0 : 8);
                            }
                            createTimer();
                        } else if (i2 == 11) {
                            int i20 = this.nextType;
                            if (i20 == 4 || i20 == 2 || i20 == 17 || i20 == 16 || i20 == 11) {
                                setProblemTextVisible(false);
                                this.timeText.setVisibility(0);
                                this.problemText.setVisibility(8);
                                int i21 = this.nextType;
                                if (i21 == 4 || i21 == 11) {
                                    this.timeText.setText(LocaleController.formatString("CallAvailableIn", C2807R.string.CallAvailableIn, 1, 0));
                                } else if (i21 == 2 || i21 == 17 || i21 == 16) {
                                    this.timeText.setText(LocaleController.formatString("SmsAvailableIn", C2807R.string.SmsAvailableIn, 1, 0));
                                }
                                createTimer();
                            }
                        } else {
                            this.timeText.setVisibility(8);
                            LoadingTextView loadingTextView6 = this.problemText;
                            if (loadingTextView6 != null) {
                                loadingTextView6.setVisibility(0);
                            }
                            setProblemTextVisible(false);
                            createCodeTimer();
                        }
                    }
                    if (this.currentType != 11) {
                        String str3 = this.prefix;
                        for (int i22 = 0; i22 < this.length; i22++) {
                            str3 = str3 + MVEL.VERSION_SUB;
                        }
                        String strSubstring2 = PhoneFormat.getInstance().format("+" + str3);
                        for (int i23 = 0; i23 < this.length; i23++) {
                            int iLastIndexOf2 = strSubstring2.lastIndexOf(MVEL.VERSION_SUB);
                            if (iLastIndexOf2 >= 0) {
                                strSubstring2 = strSubstring2.substring(0, iLastIndexOf2);
                            }
                        }
                        this.prefixTextView.setText(strSubstring2.replaceAll("\\)", _UrlKt.FRAGMENT_ENCODE_SET).replaceAll("\\(", _UrlKt.FRAGMENT_ENCODE_SET));
                        return;
                    }
                    return;
                }
            }
            charSequenceReplaceTags = spannableStringBuilderReplaceTags;
            this.confirmTextView.setText(charSequenceReplaceTags);
            i = this.currentType;
            if (i != 15) {
            }
            if (this.currentType == 3) {
            }
            destroyTimer();
            destroyCodeTimer();
            this.lastCurrentTime = System.currentTimeMillis();
            i2 = this.currentType;
            if (i2 != 1) {
            }
            if (this.currentType != 11) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProblemTextVisible(boolean z) {
            LoadingTextView loadingTextView = this.problemText;
            if (loadingTextView == null) {
                return;
            }
            float f = z ? 1.0f : 0.0f;
            if (loadingTextView.getAlpha() != f) {
                this.problemText.animate().cancel();
                this.problemText.animate().alpha(f).setDuration(150L).start();
            }
        }

        private void createCodeTimer() {
            if (this.codeTimer != null) {
                return;
            }
            this.codeTime = 15000;
            int i = this.time;
            if (i > 15000) {
                this.codeTime = i;
            }
            this.codeTimer = new Timer();
            this.lastCodeTime = System.currentTimeMillis();
            this.codeTimer.schedule(new C54477(), 0L, 1000L);
        }

        /* JADX INFO: renamed from: org.telegram.ui.LoginActivity$LoginActivitySmsView$7 */
        public class C54477 extends TimerTask {
            public C54477() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$7$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$0();
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0() {
                double dCurrentTimeMillis = System.currentTimeMillis();
                double d = dCurrentTimeMillis - LoginActivitySmsView.this.lastCodeTime;
                LoginActivitySmsView.this.lastCodeTime = dCurrentTimeMillis;
                LoginActivitySmsView loginActivitySmsView = LoginActivitySmsView.this;
                loginActivitySmsView.codeTime = (int) (((double) loginActivitySmsView.codeTime) - d);
                if (LoginActivitySmsView.this.codeTime <= 1000) {
                    LoginActivitySmsView.this.setProblemTextVisible(true);
                    LoginActivitySmsView.this.timeText.setVisibility(8);
                    if (LoginActivitySmsView.this.problemText != null) {
                        LoginActivitySmsView.this.problemText.setVisibility(0);
                    }
                    LoginActivitySmsView.this.destroyCodeTimer();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void destroyCodeTimer() {
            try {
                synchronized (this.timerSync) {
                    try {
                        Timer timer = this.codeTimer;
                        if (timer != null) {
                            timer.cancel();
                            this.codeTimer = null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }

        private void createTimer() {
            if (this.timeTimer != null) {
                return;
            }
            LoadingTextView loadingTextView = this.timeText;
            int i = Theme.key_windowBackgroundWhiteGrayText6;
            loadingTextView.setTextColor(Theme.getColor(i));
            this.timeText.setTag(C2807R.id.color_key_tag, Integer.valueOf(i));
            Timer timer = new Timer();
            this.timeTimer = timer;
            timer.schedule(new C54488(), 0L, 1000L);
        }

        /* JADX INFO: renamed from: org.telegram.ui.LoginActivity$LoginActivitySmsView$8 */
        public class C54488 extends TimerTask {
            public C54488() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (LoginActivitySmsView.this.timeTimer == null) {
                    return;
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$8$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$0();
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0() {
                double dCurrentTimeMillis = System.currentTimeMillis();
                double d = dCurrentTimeMillis - LoginActivitySmsView.this.lastCurrentTime;
                LoginActivitySmsView.this.lastCurrentTime = dCurrentTimeMillis;
                LoginActivitySmsView loginActivitySmsView = LoginActivitySmsView.this;
                loginActivitySmsView.time = (int) (((double) loginActivitySmsView.time) - d);
                int i = LoginActivitySmsView.this.time;
                LoginActivitySmsView loginActivitySmsView2 = LoginActivitySmsView.this;
                if (i >= 1000) {
                    int i2 = (loginActivitySmsView2.time / 1000) / 60;
                    int i3 = (LoginActivitySmsView.this.time / 1000) - (i2 * 60);
                    if (LoginActivitySmsView.this.nextType == 4 || LoginActivitySmsView.this.nextType == 3 || LoginActivitySmsView.this.nextType == 11) {
                        LoginActivitySmsView.this.timeText.setText(LocaleController.formatString("CallAvailableIn", C2807R.string.CallAvailableIn, Integer.valueOf(i2), Integer.valueOf(i3)));
                    } else if (LoginActivitySmsView.this.currentType == 2 && (LoginActivitySmsView.this.nextType == 2 || LoginActivitySmsView.this.nextType == 17 || LoginActivitySmsView.this.nextType == 16)) {
                        LoginActivitySmsView.this.timeText.setText(LocaleController.formatString("ResendSmsAvailableIn", C2807R.string.ResendSmsAvailableIn, Integer.valueOf(i2), Integer.valueOf(i3)));
                    } else if (LoginActivitySmsView.this.nextType == 2 || LoginActivitySmsView.this.nextType == 17 || LoginActivitySmsView.this.nextType == 16) {
                        LoginActivitySmsView.this.timeText.setText(LocaleController.formatString("SmsAvailableIn", C2807R.string.SmsAvailableIn, Integer.valueOf(i2), Integer.valueOf(i3)));
                    }
                    LoginActivitySmsView.m17641$$Nest$fgetprogressView(LoginActivitySmsView.this);
                    return;
                }
                loginActivitySmsView2.destroyTimer();
                if (LoginActivitySmsView.this.nextType == 3 || LoginActivitySmsView.this.nextType == 4 || LoginActivitySmsView.this.nextType == 2 || LoginActivitySmsView.this.nextType == 17 || LoginActivitySmsView.this.nextType == 16 || LoginActivitySmsView.this.nextType == 11) {
                    int i4 = LoginActivitySmsView.this.nextType;
                    LoginActivitySmsView loginActivitySmsView3 = LoginActivitySmsView.this;
                    if (i4 == 4) {
                        loginActivitySmsView3.timeText.setText(LocaleController.getString("RequestCallButton", C2807R.string.RequestCallButton));
                    } else if (loginActivitySmsView3.nextType == 11 || LoginActivitySmsView.this.nextType == 3) {
                        LoginActivitySmsView.this.timeText.setText(LocaleController.getString(C2807R.string.RequestMissedCall));
                    } else {
                        LoginActivitySmsView.this.timeText.setText(LocaleController.getString("RequestSmsButton", C2807R.string.RequestSmsButton));
                    }
                    LoadingTextView loadingTextView = LoginActivitySmsView.this.timeText;
                    int i5 = Theme.key_chats_actionBackground;
                    loadingTextView.setTextColor(Theme.getColor(i5));
                    LoginActivitySmsView.this.timeText.setTag(C2807R.id.color_key_tag, Integer.valueOf(i5));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void destroyTimer() {
            LoadingTextView loadingTextView = this.timeText;
            int i = Theme.key_windowBackgroundWhiteGrayText6;
            loadingTextView.setTextColor(Theme.getColor(i));
            this.timeText.setTag(C2807R.id.color_key_tag, Integer.valueOf(i));
            try {
                synchronized (this.timerSync) {
                    try {
                        Timer timer = this.timeTimer;
                        if (timer != null) {
                            timer.cancel();
                            this.timeTimer = null;
                        }
                    } finally {
                    }
                }
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        /* JADX INFO: renamed from: onNextPressed */
        public void lambda$onNextPressed$17(String str) {
            int i = LoginActivity.this.currentViewNum;
            boolean z = this.nextPressed;
            if (i == 11) {
                if (z) {
                    return;
                }
            } else {
                if (z) {
                    return;
                }
                if ((LoginActivity.this.currentViewNum < 1 || LoginActivity.this.currentViewNum > 4) && LoginActivity.this.currentViewNum != 15) {
                    return;
                }
            }
            if (str == null) {
                str = this.codeFieldContainer.getCode();
            }
            boolean zIsEmpty = TextUtils.isEmpty(str);
            LoginActivity loginActivity = LoginActivity.this;
            int i2 = 0;
            if (zIsEmpty) {
                loginActivity.onFieldError(this.codeFieldContainer, false);
                return;
            }
            if (loginActivity.currentViewNum < 1 || LoginActivity.this.currentViewNum > 4 || !this.codeFieldContainer.isFocusSuppressed) {
                this.nextPressed = true;
                int i3 = this.currentType;
                if (i3 == 15) {
                    NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didReceiveSmsCode);
                } else if (i3 == 2) {
                    AndroidUtilities.setWaitingForSms(false);
                    NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didReceiveSmsCode);
                } else if (i3 == 3) {
                    NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didReceiveCall);
                }
                this.waitingForEvent = false;
                int i4 = LoginActivity.this.activityMode;
                if (i4 == 1) {
                    this.requestPhone = LoginActivity.this.cancelDeletionPhone;
                    final TL_account.confirmPhone confirmphone = new TL_account.confirmPhone();
                    confirmphone.phone_code = str;
                    confirmphone.phone_code_hash = this.phoneHash;
                    destroyTimer();
                    CodeFieldContainer codeFieldContainer = this.codeFieldContainer;
                    codeFieldContainer.isFocusSuppressed = true;
                    CodeNumberField[] codeNumberFieldArr = codeFieldContainer.codeField;
                    int length = codeNumberFieldArr.length;
                    while (i2 < length) {
                        codeNumberFieldArr[i2].animateFocusedProgress(0.0f);
                        i2++;
                    }
                    tryShowProgress(ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(confirmphone, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda9
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$onNextPressed$29(confirmphone, tLObject, tL_error);
                        }
                    }, 2));
                    return;
                }
                if (i4 == 2) {
                    TL_account.changePhone changephone = new TL_account.changePhone();
                    changephone.phone_number = this.requestPhone;
                    changephone.phone_code = str;
                    changephone.phone_code_hash = this.phoneHash;
                    destroyTimer();
                    CodeFieldContainer codeFieldContainer2 = this.codeFieldContainer;
                    codeFieldContainer2.isFocusSuppressed = true;
                    CodeNumberField[] codeNumberFieldArr2 = codeFieldContainer2.codeField;
                    int length2 = codeNumberFieldArr2.length;
                    while (i2 < length2) {
                        codeNumberFieldArr2[i2].animateFocusedProgress(0.0f);
                        i2++;
                    }
                    lambda$tryShowProgress$12(ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(changephone, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda8
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$onNextPressed$25(tLObject, tL_error);
                        }
                    }, 2), true);
                    LoginActivity.this.showDoneButton(true, true);
                    return;
                }
                final TLRPC.TL_auth_signIn tL_auth_signIn = new TLRPC.TL_auth_signIn();
                tL_auth_signIn.phone_number = this.requestPhone;
                tL_auth_signIn.phone_code = str;
                tL_auth_signIn.phone_code_hash = this.phoneHash;
                tL_auth_signIn.flags |= 1;
                destroyTimer();
                CodeFieldContainer codeFieldContainer3 = this.codeFieldContainer;
                codeFieldContainer3.isFocusSuppressed = true;
                CodeNumberField[] codeNumberFieldArr3 = codeFieldContainer3.codeField;
                int length3 = codeNumberFieldArr3.length;
                while (i2 < length3) {
                    codeNumberFieldArr3[i2].animateFocusedProgress(0.0f);
                    i2++;
                }
                lambda$tryShowProgress$12(ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(tL_auth_signIn, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda10
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$onNextPressed$37(tL_auth_signIn, tLObject, tL_error);
                    }
                }, 10), true);
                LoginActivity.this.showDoneButton(true, true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$25(final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNextPressed$24(tL_error, tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$24(TLRPC.TL_error tL_error, TLObject tLObject) {
            int i;
            int i2;
            int i3;
            tryHideProgress(false, true);
            this.nextPressed = false;
            if (tL_error == null) {
                TLRPC.User user = (TLRPC.User) tLObject;
                destroyTimer();
                destroyCodeTimer();
                UserConfig.getInstance(((BaseFragment) LoginActivity.this).currentAccount).setCurrentUser(user);
                UserConfig.getInstance(((BaseFragment) LoginActivity.this).currentAccount).saveConfig(true);
                ArrayList arrayList = new ArrayList();
                arrayList.add(user);
                MessagesStorage.getInstance(((BaseFragment) LoginActivity.this).currentAccount).putUsersAndChats(arrayList, null, true, true);
                MessagesController.getInstance(((BaseFragment) LoginActivity.this).currentAccount).putUser(user, false);
                NotificationCenter.getInstance(((BaseFragment) LoginActivity.this).currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
                LoginActivity.this.getMessagesController().removeSuggestion(0L, "VALIDATE_PHONE_NUMBER");
                if (this.currentType == 3) {
                    AndroidUtilities.endIncomingCall();
                }
                animateSuccess(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda24
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onNextPressed$23();
                    }
                });
                return;
            }
            this.lastError = tL_error.text;
            this.nextPressed = false;
            LoginActivity.this.showDoneButton(false, true);
            int i4 = this.currentType;
            if ((i4 == 3 && ((i3 = this.nextType) == 4 || i3 == 2 || i3 == 17 || i3 == 16)) || ((i4 == 2 && ((i2 = this.nextType) == 4 || i2 == 3)) || (i4 == 4 && ((i = this.nextType) == 2 || i == 17 || i == 16)))) {
                createTimer();
            }
            int i5 = this.currentType;
            if (i5 == 15) {
                NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didReceiveSmsCode);
            } else if (i5 == 2) {
                AndroidUtilities.setWaitingForSms(true);
                NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didReceiveSmsCode);
            } else if (i5 == 3) {
                AndroidUtilities.setWaitingForCall(true);
                NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didReceiveCall);
            }
            this.waitingForEvent = true;
            if (this.currentType == 3) {
                return;
            }
            if (tL_error.text.contains("PHONE_NUMBER_INVALID")) {
                LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("InvalidPhoneNumber", C2807R.string.InvalidPhoneNumber));
            } else {
                if (tL_error.text.contains("PHONE_CODE_EMPTY") || tL_error.text.contains("PHONE_CODE_INVALID")) {
                    shakeWrongCode();
                    return;
                }
                if (tL_error.text.contains("PHONE_CODE_EXPIRED")) {
                    onBackPressed(true);
                    LoginActivity.this.setPage(0, true, null, true);
                    LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("CodeExpired", C2807R.string.CodeExpired));
                } else {
                    boolean zStartsWith = tL_error.text.startsWith("FLOOD_WAIT");
                    LoginActivity loginActivity = LoginActivity.this;
                    if (zStartsWith) {
                        loginActivity.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("FloodWait", C2807R.string.FloodWait));
                    } else {
                        loginActivity.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("ErrorOccurred", C2807R.string.ErrorOccurred) + "\n" + tL_error.text);
                    }
                }
            }
            int i6 = 0;
            while (true) {
                CodeFieldContainer codeFieldContainer = this.codeFieldContainer;
                CodeNumberField[] codeNumberFieldArr = codeFieldContainer.codeField;
                if (i6 < codeNumberFieldArr.length) {
                    codeNumberFieldArr[i6].setText(_UrlKt.FRAGMENT_ENCODE_SET);
                    i6++;
                } else {
                    codeFieldContainer.isFocusSuppressed = false;
                    codeNumberFieldArr[0].requestFocus();
                    return;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$23() {
            try {
                LoginActivity.this.fragmentView.performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            new AlertDialog.Builder(getContext()).setTitle(LocaleController.getString(C2807R.string.YourPasswordSuccess)).setMessage(LocaleController.formatString(C2807R.string.ChangePhoneNumberSuccessWithPhone, PhoneFormat.getInstance().format("+" + this.requestPhone))).setPositiveButton(LocaleController.getString(C2807R.string.OK), null).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda40
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.f$0.lambda$onNextPressed$22(dialogInterface);
                }
            }).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$22(DialogInterface dialogInterface) {
            LoginActivity.this.finishFragment();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$29(final TL_account.confirmPhone confirmphone, TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNextPressed$28(tL_error, confirmphone);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$28(TLRPC.TL_error tL_error, TL_account.confirmPhone confirmphone) {
            int i;
            int i2;
            int i3;
            tryHideProgress(false);
            this.nextPressed = false;
            if (tL_error == null) {
                final Activity parentActivity = LoginActivity.this.getParentActivity();
                if (parentActivity == null) {
                    return;
                }
                animateSuccess(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda23
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onNextPressed$27(parentActivity);
                    }
                });
                return;
            }
            this.lastError = tL_error.text;
            int i4 = this.currentType;
            if ((i4 == 3 && ((i3 = this.nextType) == 4 || i3 == 2 || i3 == 17 || i3 == 16)) || ((i4 == 2 && ((i2 = this.nextType) == 4 || i2 == 3)) || (i4 == 4 && ((i = this.nextType) == 2 || i == 17 || i == 16)))) {
                createTimer();
            }
            int i5 = this.currentType;
            if (i5 == 15) {
                NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didReceiveSmsCode);
            } else if (i5 == 2) {
                AndroidUtilities.setWaitingForSms(true);
                NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didReceiveSmsCode);
            } else if (i5 == 3) {
                AndroidUtilities.setWaitingForCall(true);
                NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didReceiveCall);
            }
            this.waitingForEvent = true;
            if (this.currentType != 3) {
                AlertsCreator.processError(((BaseFragment) LoginActivity.this).currentAccount, tL_error, LoginActivity.this, confirmphone, new Object[0]);
            }
            if (tL_error.text.contains("PHONE_CODE_EMPTY") || tL_error.text.contains("PHONE_CODE_INVALID")) {
                shakeWrongCode();
            } else if (tL_error.text.contains("PHONE_CODE_EXPIRED")) {
                onBackPressed(true);
                LoginActivity.this.setPage(0, true, null, true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$27(Activity activity) {
            new AlertDialog.Builder(activity).setTitle(LocaleController.getString(C2807R.string.CancelLinkSuccessTitle)).setMessage(LocaleController.formatString("CancelLinkSuccess", C2807R.string.CancelLinkSuccess, PhoneFormat.getInstance().format("+" + this.phone))).setPositiveButton(LocaleController.getString(C2807R.string.Close), null).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda37
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.f$0.lambda$onNextPressed$26(dialogInterface);
                }
            }).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$26(DialogInterface dialogInterface) {
            LoginActivity.this.finishFragment();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$37(final TLRPC.TL_auth_signIn tL_auth_signIn, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNextPressed$36(tL_error, tLObject, tL_auth_signIn);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$36(TLRPC.TL_error tL_error, final TLObject tLObject, final TLRPC.TL_auth_signIn tL_auth_signIn) {
            int i;
            int i2;
            int i3;
            tryHideProgress(false, true);
            if (tL_error == null) {
                this.nextPressed = false;
                LoginActivity.this.showDoneButton(false, true);
                destroyTimer();
                destroyCodeTimer();
                if (tLObject instanceof TLRPC.TL_auth_authorizationSignUpRequired) {
                    TLRPC.TL_help_termsOfService tL_help_termsOfService = ((TLRPC.TL_auth_authorizationSignUpRequired) tLObject).terms_of_service;
                    if (tL_help_termsOfService != null) {
                        LoginActivity.this.currentTermsOfService = tL_help_termsOfService;
                    }
                    final Bundle bundle = new Bundle();
                    bundle.putString("phoneFormated", this.requestPhone);
                    bundle.putString("phoneHash", this.phoneHash);
                    bundle.putString("code", tL_auth_signIn.phone_code);
                    animateSuccess(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda27
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onNextPressed$30(bundle);
                        }
                    });
                } else {
                    animateSuccess(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda28
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onNextPressed$31(tLObject);
                        }
                    });
                }
            } else {
                String str = tL_error.text;
                this.lastError = str;
                if (str.contains("SESSION_PASSWORD_NEEDED")) {
                    ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda29
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                            this.f$0.lambda$onNextPressed$34(tL_auth_signIn, tLObject2, tL_error2);
                        }
                    }, 10);
                    destroyTimer();
                    destroyCodeTimer();
                } else {
                    this.nextPressed = false;
                    LoginActivity.this.showDoneButton(false, true);
                    int i4 = this.currentType;
                    if ((i4 == 3 && ((i3 = this.nextType) == 4 || i3 == 2 || i3 == 17 || i3 == 16)) || ((i4 == 2 && ((i2 = this.nextType) == 4 || i2 == 3)) || (i4 == 4 && ((i = this.nextType) == 2 || i == 17 || i == 16)))) {
                        createTimer();
                    }
                    int i5 = this.currentType;
                    if (i5 == 15) {
                        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didReceiveSmsCode);
                    } else if (i5 == 2) {
                        AndroidUtilities.setWaitingForSms(true);
                        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didReceiveSmsCode);
                    } else if (i5 == 3) {
                        AndroidUtilities.setWaitingForCall(true);
                        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didReceiveCall);
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda30
                            @Override // java.lang.Runnable
                            public final void run() {
                                CallReceiver.checkLastReceivedCall();
                            }
                        });
                    }
                    this.waitingForEvent = true;
                    if (this.currentType == 3) {
                        return;
                    }
                    if (tL_error.text.contains("PHONE_NUMBER_INVALID")) {
                        LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("InvalidPhoneNumber", C2807R.string.InvalidPhoneNumber));
                    } else {
                        if (tL_error.text.contains("PHONE_CODE_EMPTY") || tL_error.text.contains("PHONE_CODE_INVALID")) {
                            shakeWrongCode();
                            return;
                        }
                        if (tL_error.text.contains("PHONE_CODE_EXPIRED")) {
                            onBackPressed(true);
                            LoginActivity.this.setPage(0, true, null, true);
                            LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("CodeExpired", C2807R.string.CodeExpired));
                        } else {
                            boolean zStartsWith = tL_error.text.startsWith("FLOOD_WAIT");
                            LoginActivity loginActivity = LoginActivity.this;
                            if (zStartsWith) {
                                loginActivity.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("FloodWait", C2807R.string.FloodWait));
                            } else {
                                loginActivity.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("ErrorOccurred", C2807R.string.ErrorOccurred) + "\n" + tL_error.text);
                            }
                        }
                    }
                    int i6 = 0;
                    while (true) {
                        CodeFieldContainer codeFieldContainer = this.codeFieldContainer;
                        CodeNumberField[] codeNumberFieldArr = codeFieldContainer.codeField;
                        if (i6 < codeNumberFieldArr.length) {
                            codeNumberFieldArr[i6].setText(_UrlKt.FRAGMENT_ENCODE_SET);
                            i6++;
                        } else {
                            codeFieldContainer.isFocusSuppressed = false;
                            codeNumberFieldArr[0].requestFocus();
                            return;
                        }
                    }
                }
            }
            if (this.currentType == 3) {
                AndroidUtilities.endIncomingCall();
                AndroidUtilities.setWaitingForCall(false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$30(Bundle bundle) {
            LoginActivity.this.setPage(5, true, bundle, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$31(TLObject tLObject) {
            LoginActivity.this.onAuthSuccess((TLRPC.TL_auth_authorization) tLObject);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$34(final TLRPC.TL_auth_signIn tL_auth_signIn, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda35
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNextPressed$33(tL_error, tLObject, tL_auth_signIn);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$33(TLRPC.TL_error tL_error, TLObject tLObject, TLRPC.TL_auth_signIn tL_auth_signIn) {
            this.nextPressed = false;
            LoginActivity.this.showDoneButton(false, true);
            if (tL_error == null) {
                TL_account.Password password = (TL_account.Password) tLObject;
                if (!TwoStepVerificationActivity.canHandleCurrentPassword(password, true)) {
                    AlertsCreator.showUpdateAppAlert(LoginActivity.this.getParentActivity(), LocaleController.getString("UpdateAppAlert", C2807R.string.UpdateAppAlert), true);
                    return;
                }
                final Bundle bundle = new Bundle();
                SerializedData serializedData = new SerializedData(password.getObjectSize());
                password.serializeToStream(serializedData);
                bundle.putString("password", Utilities.bytesToHex(serializedData.toByteArray()));
                bundle.putString("phoneFormated", this.requestPhone);
                bundle.putString("phoneHash", this.phoneHash);
                bundle.putString("code", tL_auth_signIn.phone_code);
                animateSuccess(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda42
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onNextPressed$32(bundle);
                    }
                });
                return;
            }
            LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), tL_error.text);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$32(Bundle bundle) {
            LoginActivity.this.setPage(6, true, bundle, false);
        }

        private void animateSuccess(final Runnable runnable) {
            if (this.currentType == 3) {
                runnable.run();
                return;
            }
            final int i = 0;
            while (true) {
                CodeFieldContainer codeFieldContainer = this.codeFieldContainer;
                if (i < codeFieldContainer.codeField.length) {
                    codeFieldContainer.postDelayed(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda38
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$animateSuccess$38(i);
                        }
                    }, ((long) i) * 75);
                    i++;
                } else {
                    codeFieldContainer.postDelayed(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda39
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$animateSuccess$39(runnable);
                        }
                    }, (((long) this.codeFieldContainer.codeField.length) * 75) + 400);
                    return;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateSuccess$38(int i) {
            this.codeFieldContainer.codeField[i].animateSuccessProgress(1.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateSuccess$39(Runnable runnable) {
            int i = 0;
            while (true) {
                CodeNumberField[] codeNumberFieldArr = this.codeFieldContainer.codeField;
                if (i < codeNumberFieldArr.length) {
                    codeNumberFieldArr[i].animateSuccessProgress(0.0f);
                    i++;
                } else {
                    runnable.run();
                    this.codeFieldContainer.isFocusSuppressed = false;
                    return;
                }
            }
        }

        private void shakeWrongCode() {
            try {
                this.codeFieldContainer.performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            int i = 0;
            while (true) {
                CodeNumberField[] codeNumberFieldArr = this.codeFieldContainer.codeField;
                if (i >= codeNumberFieldArr.length) {
                    break;
                }
                codeNumberFieldArr[i].setText(_UrlKt.FRAGMENT_ENCODE_SET);
                this.codeFieldContainer.codeField[i].animateErrorProgress(1.0f);
                i++;
            }
            if (this.errorViewSwitcher.getCurrentView() != this.wrongCode) {
                this.errorViewSwitcher.showNext();
            }
            this.codeFieldContainer.codeField[0].requestFocus();
            AndroidUtilities.shakeViewSpring(this.codeFieldContainer, this.currentType == 11 ? 3.5f : 10.0f, new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda36
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$shakeWrongCode$41();
                }
            });
            removeCallbacks(this.errorColorTimeout);
            postDelayed(this.errorColorTimeout, 5000L);
            this.postedErrorColorTimeout = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$shakeWrongCode$41() {
            postDelayed(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda43
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$shakeWrongCode$40();
                }
            }, 150L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$shakeWrongCode$40() {
            CodeFieldContainer codeFieldContainer = this.codeFieldContainer;
            int i = 0;
            codeFieldContainer.isFocusSuppressed = false;
            codeFieldContainer.codeField[0].requestFocus();
            while (true) {
                CodeNumberField[] codeNumberFieldArr = this.codeFieldContainer.codeField;
                if (i >= codeNumberFieldArr.length) {
                    return;
                }
                codeNumberFieldArr[i].animateErrorProgress(0.0f);
                i++;
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            removeCallbacks(this.errorColorTimeout);
        }

        @Override // org.telegram.ui.Components.SlideView
        public boolean onBackPressed(boolean z) {
            if (LoginActivity.this.activityMode != 0) {
                LoginActivity.this.finishFragment();
                return false;
            }
            int i = this.prevType;
            if (i != 0) {
                LoginActivity.this.setPage(i, true, null, true);
                return false;
            }
            if (!z) {
                LoginActivity loginActivity = LoginActivity.this;
                loginActivity.showDialog(new AlertDialog.Builder(loginActivity.getParentActivity()).setTitle(LocaleController.getString(C2807R.string.EditNumber)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("EditNumberInfo", C2807R.string.EditNumberInfo, this.phone))).setPositiveButton(LocaleController.getString(C2807R.string.Close), null).setNegativeButton(LocaleController.getString(C2807R.string.Edit), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda11
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$onBackPressed$42(alertDialog, i2);
                    }
                }).create());
                return false;
            }
            this.nextPressed = false;
            tryHideProgress(true);
            TLRPC.TL_auth_cancelCode tL_auth_cancelCode = new TLRPC.TL_auth_cancelCode();
            tL_auth_cancelCode.phone_number = this.requestPhone;
            tL_auth_cancelCode.phone_code_hash = this.phoneHash;
            ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(tL_auth_cancelCode, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda12
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    LoginActivity.LoginActivitySmsView.$r8$lambda$gKyVJVXs5FXqCJwgMxzY5MPqX6U(tLObject, tL_error);
                }
            }, 10);
            destroyTimer();
            destroyCodeTimer();
            this.currentParams = null;
            int i2 = this.currentType;
            if (i2 == 15) {
                NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didReceiveSmsCode);
            } else if (i2 == 2) {
                AndroidUtilities.setWaitingForSms(false);
                NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didReceiveSmsCode);
            } else if (i2 == 3) {
                AndroidUtilities.setWaitingForCall(false);
                NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didReceiveCall);
            }
            this.waitingForEvent = false;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBackPressed$42(AlertDialog alertDialog, int i) {
            onBackPressed(true);
            LoginActivity.this.setPage(0, true, null, true);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onDestroyActivity() {
            super.onDestroyActivity();
            int i = this.currentType;
            if (i == 15) {
                NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didReceiveSmsCode);
            } else if (i == 2) {
                AndroidUtilities.setWaitingForSms(false);
                NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didReceiveSmsCode);
            } else if (i == 3) {
                AndroidUtilities.setWaitingForCall(false);
                NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didReceiveCall);
            }
            this.waitingForEvent = false;
            destroyTimer();
            destroyCodeTimer();
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onShow() {
            super.onShow();
            RLottieDrawable rLottieDrawable = this.hintDrawable;
            if (rLottieDrawable != null) {
                rLottieDrawable.setCurrentFrame(0);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onShow$44();
                }
            }, LoginActivity.SHOW_DELAY);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onShow$44() {
            CodeNumberField[] codeNumberFieldArr;
            if (this.currentType != 3 && (codeNumberFieldArr = this.codeFieldContainer.codeField) != null) {
                for (int length = codeNumberFieldArr.length - 1; length >= 0; length--) {
                    if (length == 0 || this.codeFieldContainer.codeField[length].length() != 0) {
                        this.codeFieldContainer.codeField[length].requestFocus();
                        CodeNumberField codeNumberField = this.codeFieldContainer.codeField[length];
                        codeNumberField.setSelection(codeNumberField.length());
                        LoginActivity.this.showKeyboard(this.codeFieldContainer.codeField[length]);
                        break;
                    }
                }
            }
            RLottieDrawable rLottieDrawable = this.hintDrawable;
            if (rLottieDrawable != null) {
                rLottieDrawable.start();
            }
            if (this.currentType == 15) {
                this.openFragmentImageView.getAnimatedDrawable().setCurrentFrame(0, false);
                this.openFragmentImageView.getAnimatedDrawable().start();
            }
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (this.waitingForEvent) {
                CodeFieldContainer codeFieldContainer = this.codeFieldContainer;
                if (codeFieldContainer.codeField == null) {
                    return;
                }
                if (i == NotificationCenter.didReceiveSmsCode) {
                    codeFieldContainer.setText(_UrlKt.FRAGMENT_ENCODE_SET + objArr[0]);
                    lambda$onNextPressed$17(null);
                    return;
                }
                if (i == NotificationCenter.didReceiveCall) {
                    String str = _UrlKt.FRAGMENT_ENCODE_SET + objArr[0];
                    if (AndroidUtilities.checkPhonePattern(this.pattern, str)) {
                        if (!this.pattern.equals("*")) {
                            this.catchedPhone = str;
                            AndroidUtilities.endIncomingCall();
                        }
                        lambda$onNextPressed$17(str);
                        CallReceiver.clearLastCall();
                    }
                }
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onHide() {
            Bundle bundle;
            super.onHide();
            this.isResendingCode = false;
            this.nextPressed = false;
            if (this.prevType == 0 || (bundle = this.currentParams) == null) {
                return;
            }
            bundle.putInt("timeout", this.time);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void saveStateParams(Bundle bundle) {
            String code = this.codeFieldContainer.getCode();
            if (code.length() != 0) {
                bundle.putString("smsview_code_" + this.currentType, code);
            }
            String str = this.catchedPhone;
            if (str != null) {
                bundle.putString("catchedPhone", str);
            }
            if (this.currentParams != null) {
                bundle.putBundle("smsview_params_" + this.currentType, this.currentParams);
            }
            int i = this.time;
            if (i != 0) {
                bundle.putInt("time", i);
            }
            int i2 = this.openTime;
            if (i2 != 0) {
                bundle.putInt("open", i2);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void restoreStateParams(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle("smsview_params_" + this.currentType);
            this.currentParams = bundle2;
            if (bundle2 != null) {
                setParams(bundle2, true);
            }
            String string = bundle.getString("catchedPhone");
            if (string != null) {
                this.catchedPhone = string;
            }
            String string2 = bundle.getString("smsview_code_" + this.currentType);
            if (string2 != null) {
                CodeFieldContainer codeFieldContainer = this.codeFieldContainer;
                if (codeFieldContainer.codeField != null) {
                    codeFieldContainer.setText(string2);
                }
            }
            int i = bundle.getInt("time");
            if (i != 0) {
                this.time = i;
            }
            int i2 = bundle.getInt("open");
            if (i2 != 0) {
                this.openTime = i2;
            }
        }
    }

    public class LoadingTextView extends TextView {
        public final LoadingDrawable loadingDrawable;
        private final Drawable rippleDrawable;

        public boolean isResendingCode() {
            return false;
        }

        public boolean isRippleEnabled() {
            return true;
        }

        public LoadingTextView(Context context) {
            super(context);
            Drawable drawableCreateSelectorDrawable = Theme.createSelectorDrawable(Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhiteValueText), 0.1f), 7);
            this.rippleDrawable = drawableCreateSelectorDrawable;
            LoadingDrawable loadingDrawable = new LoadingDrawable();
            this.loadingDrawable = loadingDrawable;
            drawableCreateSelectorDrawable.setCallback(this);
            loadingDrawable.setAppearByGradient(true);
            loadingDrawable.setSpeed(0.8f);
        }

        @Override // android.widget.TextView
        public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
            super.setText(charSequence, bufferType);
            updateLoadingLayout();
        }

        @Override // android.widget.TextView, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            updateLoadingLayout();
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
        private void updateLoadingLayout() {
            CharSequence text;
            Layout layout = getLayout();
            if (layout == null || (text = layout.getText()) == null) {
                return;
            }
            LinkPath linkPath = new LinkPath(true);
            linkPath.setInset(AndroidUtilities.dp(3.0f), AndroidUtilities.dp(6.0f));
            int length = text.length();
            linkPath.setCurrentLayout(layout, 0, 0.0f);
            layout.getSelectionPath(0, length, linkPath);
            RectF rectF = AndroidUtilities.rectTmp;
            linkPath.getBounds(rectF);
            this.rippleDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            this.loadingDrawable.usePath(linkPath);
            this.loadingDrawable.setRadiiDp(4.0f);
            int themedColor = LoginActivity.this.getThemedColor(Theme.key_chat_linkSelectBackground);
            this.loadingDrawable.setColors(Theme.multAlpha(themedColor, 0.85f), Theme.multAlpha(themedColor, 2.0f), Theme.multAlpha(themedColor, 3.5f), Theme.multAlpha(themedColor, 6.0f));
            this.loadingDrawable.updateBounds();
        }

        @Override // android.widget.TextView, android.view.View
        public void onDraw(Canvas canvas) {
            canvas.save();
            float paddingTop = ((getGravity() & 16) == 0 || getLayout() == null) ? getPaddingTop() : getPaddingTop() + ((((getHeight() - getPaddingTop()) - getPaddingBottom()) - getLayout().getHeight()) / 2.0f);
            canvas.translate(getPaddingLeft(), paddingTop);
            this.rippleDrawable.draw(canvas);
            canvas.restore();
            super.onDraw(canvas);
            if (isResendingCode() || this.loadingDrawable.isDisappearing()) {
                canvas.save();
                canvas.translate(getPaddingLeft(), paddingTop);
                this.loadingDrawable.draw(canvas);
                canvas.restore();
                invalidate();
            }
        }

        @Override // android.widget.TextView, android.view.View
        public boolean verifyDrawable(Drawable drawable) {
            return drawable == this.rippleDrawable || super.verifyDrawable(drawable);
        }

        @Override // android.widget.TextView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (isRippleEnabled() && motionEvent.getAction() == 0) {
                this.rippleDrawable.setHotspot(motionEvent.getX(), motionEvent.getY());
                this.rippleDrawable.setState(new int[]{R.attr.state_enabled, R.attr.state_pressed});
            } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 1) {
                this.rippleDrawable.setState(new int[0]);
            }
            return super.onTouchEvent(motionEvent);
        }
    }

    public class LoginActivityPasswordView extends SlideView {
        private TextView cancelButton;
        private EditTextBoldCursor codeField;
        private TextView confirmTextView;
        private Bundle currentParams;
        private TL_account.Password currentPassword;
        private RLottieImageView lockImageView;
        private boolean nextPressed;
        private OutlineTextContainerView outlineCodeField;
        private String passwordString;
        private String phoneCode;
        private String phoneHash;
        private String requestPhone;
        private TextView titleView;

        @Override // org.telegram.ui.Components.SlideView
        public boolean needBackButton() {
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public LoginActivityPasswordView(final Context context) {
            int i;
            super(context);
            setOrientation(1);
            FrameLayout frameLayout = new FrameLayout(context);
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            this.lockImageView = rLottieImageView;
            rLottieImageView.setAnimation(C2807R.raw.tsv_setup_intro, 120, 120);
            this.lockImageView.setAutoRepeat(false);
            frameLayout.addView(this.lockImageView, LayoutHelper.createFrame(120, 120, 1));
            if (!AndroidUtilities.isSmallScreen()) {
                Point point = AndroidUtilities.displaySize;
                i = (point.x <= point.y || AndroidUtilities.isTablet()) ? 0 : 8;
            }
            frameLayout.setVisibility(i);
            addView(frameLayout, LayoutHelper.createFrame(-1, -2, 1));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextSize(1, 18.0f);
            this.titleView.setTypeface(AndroidUtilities.bold());
            this.titleView.setText(LocaleController.getString(C2807R.string.YourPasswordHeader));
            this.titleView.setGravity(17);
            this.titleView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            addView(this.titleView, LayoutHelper.createFrame(-1, -2.0f, 1, 32.0f, 16.0f, 32.0f, 0.0f));
            TextView textView2 = new TextView(context);
            this.confirmTextView = textView2;
            textView2.setTextSize(1, 14.0f);
            this.confirmTextView.setGravity(1);
            this.confirmTextView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.confirmTextView.setText(LocaleController.getString(C2807R.string.LoginPasswordTextShort));
            addView(this.confirmTextView, LayoutHelper.createLinear(-2, -2, 1, 12, 8, 12, 0));
            OutlineTextContainerView outlineTextContainerView = new OutlineTextContainerView(context);
            this.outlineCodeField = outlineTextContainerView;
            outlineTextContainerView.setText(LocaleController.getString(C2807R.string.EnterPassword));
            EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
            this.codeField = editTextBoldCursor;
            editTextBoldCursor.setCursorSize(AndroidUtilities.dp(20.0f));
            this.codeField.setCursorWidth(1.5f);
            this.codeField.setBackground(null);
            this.codeField.setImeOptions(268435461);
            this.codeField.setTextSize(1, 18.0f);
            this.codeField.setMaxLines(1);
            int iDp = AndroidUtilities.dp(16.0f);
            this.codeField.setPadding(iDp, iDp, iDp, iDp);
            this.codeField.setInputType(129);
            this.codeField.setTransformationMethod(PasswordTransformationMethod.getInstance());
            this.codeField.setTypeface(Typeface.DEFAULT);
            this.codeField.setGravity(LocaleController.isRTL ? 5 : 3);
            this.codeField.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityPasswordView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z) {
                    this.f$0.lambda$new$0(view, z);
                }
            });
            this.outlineCodeField.attachEditText(this.codeField);
            this.outlineCodeField.addView(this.codeField, LayoutHelper.createFrame(-1, -2, 48));
            this.codeField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityPasswordView$$ExternalSyntheticLambda2
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView3, int i2, KeyEvent keyEvent) {
                    return this.f$0.lambda$new$1(textView3, i2, keyEvent);
                }
            });
            addView(this.outlineCodeField, LayoutHelper.createLinear(-1, -2, 1, 16, 32, 16, 0));
            TextView textView3 = new TextView(context);
            this.cancelButton = textView3;
            textView3.setGravity(19);
            this.cancelButton.setText(LocaleController.getString(C2807R.string.ForgotPassword));
            this.cancelButton.setTextSize(1, 15.0f);
            this.cancelButton.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.cancelButton.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), 0);
            FrameLayout frameLayout2 = new FrameLayout(context);
            frameLayout2.addView(this.cancelButton, LayoutHelper.createFrame(-1, 56.0f, 80, 0.0f, 0.0f, 0.0f, 32.0f));
            addView(frameLayout2, LayoutHelper.createLinear(-1, -1, 80));
            VerticalPositionAutoAnimator.attach(this.cancelButton);
            this.cancelButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityPasswordView$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$6(context, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view, boolean z) {
            this.outlineCodeField.animateSelection(z ? 1.0f : 0.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$new$1(TextView textView, int i, KeyEvent keyEvent) {
            if (i != 5) {
                return false;
            }
            lambda$onNextPressed$17(null);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$6(Context context, View view) {
            if (LoginActivity.this.radialProgressView.getTag() != null) {
                return;
            }
            if (this.currentPassword.has_recovery) {
                LoginActivity.this.needShowProgress(0);
                ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(new TLRPC.TL_auth_requestPasswordRecovery(), new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityPasswordView$$ExternalSyntheticLambda5
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$new$4(tLObject, tL_error);
                    }
                }, 10);
            } else {
                AndroidUtilities.hideKeyboard(this.codeField);
                new AlertDialog.Builder(context).setTitle(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle)).setMessage(LocaleController.getString(C2807R.string.RestorePasswordNoEmailText)).setPositiveButton(LocaleController.getString(C2807R.string.Close), null).setNegativeButton(LocaleController.getString(C2807R.string.ResetAccount), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityPasswordView$$ExternalSyntheticLambda6
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        this.f$0.lambda$new$5(alertDialog, i);
                    }
                }).show();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4(final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityPasswordView$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$3(tL_error, tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(TLRPC.TL_error tL_error, TLObject tLObject) {
            String pluralString;
            LoginActivity.this.needHideProgress(false);
            if (tL_error == null) {
                final TLRPC.TL_auth_passwordRecovery tL_auth_passwordRecovery = (TLRPC.TL_auth_passwordRecovery) tLObject;
                if (LoginActivity.this.getParentActivity() == null) {
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(LoginActivity.this.getParentActivity());
                String str = tL_auth_passwordRecovery.email_pattern;
                SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(str);
                int iIndexOf = str.indexOf(42);
                int iLastIndexOf = str.lastIndexOf(42);
                if (iIndexOf != iLastIndexOf && iIndexOf != -1 && iLastIndexOf != -1) {
                    TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                    textStyleRun.flags |= 256;
                    textStyleRun.start = iIndexOf;
                    int i = iLastIndexOf + 1;
                    textStyleRun.end = i;
                    spannableStringBuilderValueOf.setSpan(new TextStyleSpan(textStyleRun), iIndexOf, i, 0);
                }
                builder.setMessage(AndroidUtilities.formatSpannable(LocaleController.getString(C2807R.string.RestoreEmailSent), spannableStringBuilderValueOf));
                builder.setTitle(LocaleController.getString("RestoreEmailSentTitle", C2807R.string.RestoreEmailSentTitle));
                builder.setPositiveButton(LocaleController.getString(C2807R.string.Continue), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityPasswordView$$ExternalSyntheticLambda10
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$new$2(tL_auth_passwordRecovery, alertDialog, i2);
                    }
                });
                Dialog dialogShowDialog = LoginActivity.this.showDialog(builder.create());
                if (dialogShowDialog != null) {
                    dialogShowDialog.setCanceledOnTouchOutside(false);
                    dialogShowDialog.setCancelable(false);
                    return;
                }
                return;
            }
            if (tL_error.text.startsWith("FLOOD_WAIT")) {
                int i2 = Utilities.parseInt((CharSequence) tL_error.text);
                if (i2 < 60) {
                    pluralString = LocaleController.formatPluralString("Seconds", i2, new Object[0]);
                } else {
                    pluralString = LocaleController.formatPluralString("Minutes", i2 / 60, new Object[0]);
                }
                LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.WrongCodeTitle), LocaleController.formatString("FloodWaitTime", C2807R.string.FloodWaitTime, pluralString));
                return;
            }
            LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), tL_error.text);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(TLRPC.TL_auth_passwordRecovery tL_auth_passwordRecovery, AlertDialog alertDialog, int i) {
            Bundle bundle = new Bundle();
            bundle.putString("email_unconfirmed_pattern", tL_auth_passwordRecovery.email_pattern);
            bundle.putString("password", this.passwordString);
            bundle.putString("requestPhone", this.requestPhone);
            bundle.putString("phoneHash", this.phoneHash);
            bundle.putString("phoneCode", this.phoneCode);
            LoginActivity.this.setPage(7, true, bundle, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$5(AlertDialog alertDialog, int i) {
            LoginActivity.this.tryResetAccount(this.requestPhone, this.phoneHash, this.phoneCode);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void updateColors() {
            TextView textView = this.titleView;
            int i = Theme.key_windowBackgroundWhiteBlackText;
            textView.setTextColor(Theme.getColor(i));
            this.confirmTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText6));
            this.codeField.setTextColor(Theme.getColor(i));
            this.codeField.setCursorColor(Theme.getColor(i));
            this.codeField.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText));
            this.cancelButton.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4));
            this.outlineCodeField.updateColor();
        }

        @Override // org.telegram.ui.Components.SlideView
        public String getHeaderName() {
            return LocaleController.getString("LoginPassword", C2807R.string.LoginPassword);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onCancelPressed() {
            this.nextPressed = false;
        }

        @Override // org.telegram.ui.Components.SlideView
        public void setParams(Bundle bundle, boolean z) {
            if (bundle == null) {
                return;
            }
            boolean zIsEmpty = bundle.isEmpty();
            EditTextBoldCursor editTextBoldCursor = this.codeField;
            if (zIsEmpty) {
                AndroidUtilities.hideKeyboard(editTextBoldCursor);
                return;
            }
            editTextBoldCursor.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.currentParams = bundle;
            String string = bundle.getString("password");
            this.passwordString = string;
            if (string != null) {
                SerializedData serializedData = new SerializedData(Utilities.hexToBytes(string));
                this.currentPassword = TL_account.Password.TLdeserialize(serializedData, serializedData.readInt32(false), false);
            }
            this.requestPhone = bundle.getString("phoneFormated");
            this.phoneHash = bundle.getString("phoneHash");
            this.phoneCode = bundle.getString("code");
            TL_account.Password password = this.currentPassword;
            if (password != null && !TextUtils.isEmpty(password.hint)) {
                this.codeField.setHint(this.currentPassword.hint);
            } else {
                this.codeField.setHint((CharSequence) null);
            }
        }

        private void onPasscodeError(boolean z) {
            if (LoginActivity.this.getParentActivity() == null) {
                return;
            }
            if (z) {
                this.codeField.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            }
            LoginActivity.this.onFieldError(this.outlineCodeField, true);
        }

        @Override // org.telegram.ui.Components.SlideView
        /* JADX INFO: renamed from: onNextPressed */
        public void lambda$onNextPressed$17(String str) {
            if (this.nextPressed || this.currentPassword == null) {
                return;
            }
            final String string = this.codeField.getText().toString();
            if (string.length() == 0) {
                onPasscodeError(false);
                return;
            }
            this.nextPressed = true;
            LoginActivity.this.needShowProgress(0);
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityPasswordView$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNextPressed$12(string);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$12(String str) {
            TLRPC.PasswordKdfAlgo passwordKdfAlgo = this.currentPassword.current_algo;
            boolean z = passwordKdfAlgo instanceof TLRPC.C2911xb6caa888;
            byte[] x = z ? SRPHelper.getX(AndroidUtilities.getStringBytes(str), (TLRPC.C2911xb6caa888) passwordKdfAlgo) : null;
            RequestDelegate requestDelegate = new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityPasswordView$$ExternalSyntheticLambda7
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$onNextPressed$11(tLObject, tL_error);
                }
            };
            if (z) {
                TL_account.Password password = this.currentPassword;
                TLRPC.TL_inputCheckPasswordSRP tL_inputCheckPasswordSRPStartCheck = SRPHelper.startCheck(x, password.srp_id, password.srp_B, (TLRPC.C2911xb6caa888) passwordKdfAlgo);
                if (tL_inputCheckPasswordSRPStartCheck == null) {
                    TLRPC.TL_error tL_error = new TLRPC.TL_error();
                    tL_error.text = "PASSWORD_HASH_INVALID";
                    requestDelegate.run(null, tL_error);
                } else {
                    TLRPC.TL_auth_checkPassword tL_auth_checkPassword = new TLRPC.TL_auth_checkPassword();
                    tL_auth_checkPassword.password = tL_inputCheckPasswordSRPStartCheck;
                    ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(tL_auth_checkPassword, requestDelegate, 10);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$11(final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityPasswordView$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNextPressed$10(tL_error, tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$10(TLRPC.TL_error tL_error, final TLObject tLObject) {
            String pluralString;
            this.nextPressed = false;
            if (tL_error != null && "SRP_ID_INVALID".equals(tL_error.text)) {
                ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityPasswordView$$ExternalSyntheticLambda11
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                        this.f$0.lambda$onNextPressed$8(tLObject2, tL_error2);
                    }
                }, 8);
                return;
            }
            boolean z = tLObject instanceof TLRPC.TL_auth_authorization;
            LoginActivity loginActivity = LoginActivity.this;
            if (z) {
                loginActivity.showDoneButton(false, true);
                postDelayed(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityPasswordView$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onNextPressed$9(tLObject);
                    }
                }, 150L);
                return;
            }
            loginActivity.needHideProgress(false);
            if (tL_error.text.equals("PASSWORD_HASH_INVALID")) {
                onPasscodeError(true);
                return;
            }
            if (tL_error.text.startsWith("FLOOD_WAIT")) {
                int i = Utilities.parseInt((CharSequence) tL_error.text);
                if (i < 60) {
                    pluralString = LocaleController.formatPluralString("Seconds", i, new Object[0]);
                } else {
                    pluralString = LocaleController.formatPluralString("Minutes", i / 60, new Object[0]);
                }
                LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.formatString("FloodWaitTime", C2807R.string.FloodWaitTime, pluralString));
                return;
            }
            LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), tL_error.text);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$8(final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityPasswordView$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNextPressed$7(tL_error, tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$7(TLRPC.TL_error tL_error, TLObject tLObject) {
            if (tL_error == null) {
                this.currentPassword = (TL_account.Password) tLObject;
                lambda$onNextPressed$17(null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$9(TLObject tLObject) {
            LoginActivity.this.needHideProgress(false, false);
            AndroidUtilities.hideKeyboard(this.codeField);
            LoginActivity.this.onAuthSuccess((TLRPC.TL_auth_authorization) tLObject);
        }

        @Override // org.telegram.ui.Components.SlideView
        public boolean onBackPressed(boolean z) {
            this.nextPressed = false;
            LoginActivity.this.needHideProgress(true);
            this.currentParams = null;
            return true;
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onShow() {
            super.onShow();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityPasswordView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onShow$13();
                }
            }, LoginActivity.SHOW_DELAY);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onShow$13() {
            EditTextBoldCursor editTextBoldCursor = this.codeField;
            if (editTextBoldCursor != null) {
                editTextBoldCursor.requestFocus();
                EditTextBoldCursor editTextBoldCursor2 = this.codeField;
                editTextBoldCursor2.setSelection(editTextBoldCursor2.length());
                LoginActivity.this.showKeyboard(this.codeField);
                this.lockImageView.getAnimatedDrawable().setCurrentFrame(0, false);
                this.lockImageView.playAnimation();
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void saveStateParams(Bundle bundle) {
            String string = this.codeField.getText().toString();
            if (string.length() != 0) {
                bundle.putString("passview_code", string);
            }
            Bundle bundle2 = this.currentParams;
            if (bundle2 != null) {
                bundle.putBundle("passview_params", bundle2);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void restoreStateParams(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle("passview_params");
            this.currentParams = bundle2;
            if (bundle2 != null) {
                setParams(bundle2, true);
            }
            String string = bundle.getString("passview_code");
            if (string != null) {
                this.codeField.setText(string);
            }
        }
    }

    public class LoginActivityResetWaitView extends SlideView {
        private TextView confirmTextView;
        private Bundle currentParams;
        private String phoneCode;
        private String phoneHash;
        private String requestPhone;
        private TextView resetAccountButton;
        private TextView resetAccountText;
        private TextView resetAccountTime;
        private int startTime;
        private Runnable timeRunnable;
        private TextView titleView;
        private RLottieImageView waitImageView;
        private int waitTime;
        private Boolean wasResetButtonActive;

        @Override // org.telegram.ui.Components.SlideView
        public boolean needBackButton() {
            return true;
        }

        public LoginActivityResetWaitView(Context context) {
            super(context);
            setOrientation(1);
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            linearLayout.setGravity(17);
            FrameLayout frameLayout = new FrameLayout(context);
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            this.waitImageView = rLottieImageView;
            rLottieImageView.setAutoRepeat(true);
            this.waitImageView.setAnimation(C2807R.raw.sandclock, 120, 120);
            frameLayout.addView(this.waitImageView, LayoutHelper.createFrame(120, 120, 1));
            Point point = AndroidUtilities.displaySize;
            frameLayout.setVisibility((point.x <= point.y || AndroidUtilities.isTablet()) ? 0 : 8);
            linearLayout.addView(frameLayout, LayoutHelper.createFrame(-1, -2, 1));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextSize(1, 18.0f);
            this.titleView.setTypeface(AndroidUtilities.bold());
            this.titleView.setText(LocaleController.getString(C2807R.string.ResetAccount));
            this.titleView.setGravity(17);
            this.titleView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            linearLayout.addView(this.titleView, LayoutHelper.createFrame(-1, -2.0f, 1, 32.0f, 16.0f, 32.0f, 0.0f));
            TextView textView2 = new TextView(context);
            this.confirmTextView = textView2;
            textView2.setTextSize(1, 14.0f);
            this.confirmTextView.setGravity(1);
            this.confirmTextView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            linearLayout.addView(this.confirmTextView, LayoutHelper.createLinear(-2, -2, 1, 12, 8, 12, 0));
            addView(linearLayout, LayoutHelper.createLinear(-1, 0, 1.0f));
            TextView textView3 = new TextView(context);
            this.resetAccountText = textView3;
            textView3.setGravity(1);
            this.resetAccountText.setText(LocaleController.getString("ResetAccountStatus", C2807R.string.ResetAccountStatus));
            this.resetAccountText.setTextSize(1, 14.0f);
            this.resetAccountText.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            addView(this.resetAccountText, LayoutHelper.createLinear(-2, -2, 49, 0, 24, 0, 0));
            TextView textView4 = new TextView(context);
            this.resetAccountTime = textView4;
            textView4.setGravity(1);
            this.resetAccountTime.setTextSize(1, 20.0f);
            this.resetAccountTime.setTypeface(AndroidUtilities.bold());
            this.resetAccountTime.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            addView(this.resetAccountTime, LayoutHelper.createLinear(-2, -2, 1, 0, 8, 0, 0));
            TextView textView5 = new TextView(context);
            this.resetAccountButton = textView5;
            textView5.setGravity(17);
            this.resetAccountButton.setText(LocaleController.getString(C2807R.string.ResetAccount));
            this.resetAccountButton.setTypeface(AndroidUtilities.bold());
            this.resetAccountButton.setTextSize(1, 15.0f);
            this.resetAccountButton.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.resetAccountButton.setPadding(AndroidUtilities.dp(34.0f), 0, AndroidUtilities.dp(34.0f), 0);
            this.resetAccountButton.setTextColor(-1);
            addView(this.resetAccountButton, LayoutHelper.createLinear(-1, 50, 1, 16, 32, 16, 48));
            this.resetAccountButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityResetWaitView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$3(view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(View view) {
            if (LoginActivity.this.radialProgressView.getTag() != null) {
                return;
            }
            LoginActivity loginActivity = LoginActivity.this;
            loginActivity.showDialog(new AlertDialog.Builder(loginActivity.getParentActivity()).setTitle(LocaleController.getString("ResetMyAccountWarning", C2807R.string.ResetMyAccountWarning)).setMessage(LocaleController.getString("ResetMyAccountWarningText", C2807R.string.ResetMyAccountWarningText)).setPositiveButton(LocaleController.getString("ResetMyAccountWarningReset", C2807R.string.ResetMyAccountWarningReset), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityResetWaitView$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$new$2(alertDialog, i);
                }
            }).setNegativeButton(LocaleController.getString("Cancel", C2807R.string.Cancel), null).create());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(AlertDialog alertDialog, int i) {
            LoginActivity.this.needShowProgress(0);
            TL_account.deleteAccount deleteaccount = new TL_account.deleteAccount();
            deleteaccount.reason = "Forgot password";
            ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(deleteaccount, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityResetWaitView$$ExternalSyntheticLambda2
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$new$1(tLObject, tL_error);
                }
            }, 10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityResetWaitView$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0(tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(TLRPC.TL_error tL_error) {
            LoginActivity.this.needHideProgress(false);
            if (tL_error == null) {
                if (this.requestPhone == null || this.phoneHash == null || this.phoneCode == null) {
                    LoginActivity.this.setPage(0, true, null, true);
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putString("phoneFormated", this.requestPhone);
                bundle.putString("phoneHash", this.phoneHash);
                bundle.putString("code", this.phoneCode);
                LoginActivity.this.setPage(5, true, bundle, false);
                return;
            }
            boolean zEquals = tL_error.text.equals("2FA_RECENT_CONFIRM");
            LoginActivity loginActivity = LoginActivity.this;
            if (zEquals) {
                loginActivity.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("ResetAccountCancelledAlert", C2807R.string.ResetAccountCancelledAlert));
            } else {
                loginActivity.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), tL_error.text);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void updateColors() {
            TextView textView = this.titleView;
            int i = Theme.key_windowBackgroundWhiteBlackText;
            textView.setTextColor(Theme.getColor(i));
            this.confirmTextView.setTextColor(Theme.getColor(i));
            this.resetAccountText.setTextColor(Theme.getColor(i));
            this.resetAccountTime.setTextColor(Theme.getColor(i));
            this.resetAccountButton.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(6.0f), Theme.getColor(Theme.key_changephoneinfo_image2), Theme.getColor(Theme.key_chats_actionPressedBackground)));
        }

        @Override // org.telegram.ui.Components.SlideView
        public String getHeaderName() {
            return LocaleController.getString("ResetAccount", C2807R.string.ResetAccount);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateTimeText() {
            int iMax = Math.max(0, this.waitTime - (ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).getCurrentTime() - this.startTime));
            int i = iMax / 86400;
            int iRound = Math.round(iMax / 86400.0f);
            int i2 = iMax / 3600;
            int i3 = (iMax / 60) % 60;
            int i4 = iMax % 60;
            TextView textView = this.resetAccountTime;
            if (i >= 2) {
                textView.setText(LocaleController.formatPluralString("Days", iRound, new Object[0]));
            } else {
                textView.setText(String.format(Locale.getDefault(), "%02d:%02d:%02d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)));
            }
            boolean z = iMax == 0;
            Boolean bool = this.wasResetButtonActive;
            if (bool == null || bool.booleanValue() != z) {
                RLottieImageView rLottieImageView = this.waitImageView;
                if (!z) {
                    rLottieImageView.setAutoRepeat(true);
                    if (!this.waitImageView.isPlaying()) {
                        this.waitImageView.playAnimation();
                    }
                } else {
                    rLottieImageView.getAnimatedDrawable().setAutoRepeat(0);
                }
                this.resetAccountTime.setVisibility(z ? 4 : 0);
                this.resetAccountText.setVisibility(z ? 4 : 0);
                this.resetAccountButton.setVisibility(z ? 0 : 4);
                this.wasResetButtonActive = Boolean.valueOf(z);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void setParams(Bundle bundle, boolean z) {
            if (bundle == null) {
                return;
            }
            this.currentParams = bundle;
            this.requestPhone = bundle.getString("phoneFormated");
            this.phoneHash = bundle.getString("phoneHash");
            this.phoneCode = bundle.getString("code");
            this.startTime = bundle.getInt("startTime");
            this.waitTime = bundle.getInt("waitTime");
            this.confirmTextView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("ResetAccountInfo", C2807R.string.ResetAccountInfo, LocaleController.addNbsp(PhoneFormat.getInstance().format("+" + this.requestPhone)))));
            updateTimeText();
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.LoginActivity.LoginActivityResetWaitView.1
                @Override // java.lang.Runnable
                public void run() {
                    if (LoginActivityResetWaitView.this.timeRunnable != this) {
                        return;
                    }
                    LoginActivityResetWaitView.this.updateTimeText();
                    AndroidUtilities.runOnUIThread(LoginActivityResetWaitView.this.timeRunnable, 1000L);
                }
            };
            this.timeRunnable = runnable;
            AndroidUtilities.runOnUIThread(runnable, 1000L);
        }

        @Override // org.telegram.ui.Components.SlideView
        public boolean onBackPressed(boolean z) {
            LoginActivity.this.needHideProgress(true);
            AndroidUtilities.cancelRunOnUIThread(this.timeRunnable);
            this.timeRunnable = null;
            this.currentParams = null;
            return true;
        }

        @Override // org.telegram.ui.Components.SlideView
        public void saveStateParams(Bundle bundle) {
            Bundle bundle2 = this.currentParams;
            if (bundle2 != null) {
                bundle.putBundle("resetview_params", bundle2);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void restoreStateParams(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle("resetview_params");
            this.currentParams = bundle2;
            if (bundle2 != null) {
                setParams(bundle2, true);
            }
        }
    }

    public class LoginActivitySetupEmail extends SlideView {
        private Bundle currentParams;
        private EditTextBoldCursor emailField;
        private OutlineTextContainerView emailOutlineView;
        private String emailPhone;
        private GoogleSignInAccount googleAccount;
        private RLottieImageView inboxImageView;
        private LoginOrView loginOrView;
        private boolean nextPressed;
        private String phone;
        private String phoneHash;
        private String requestPhone;
        private TextView signInWithGoogleView;
        private TextView subtitleView;
        private TextView titleView;

        /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public LoginActivitySetupEmail(Context context) {
            int i;
            super(context);
            setOrientation(1);
            FrameLayout frameLayout = new FrameLayout(context);
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            this.inboxImageView = rLottieImageView;
            rLottieImageView.setAnimation(C2807R.raw.tsv_setup_mail, 120, 120);
            this.inboxImageView.setAutoRepeat(false);
            frameLayout.addView(this.inboxImageView, LayoutHelper.createFrame(120, 120, 1));
            if (!AndroidUtilities.isSmallScreen()) {
                Point point = AndroidUtilities.displaySize;
                i = (point.x <= point.y || AndroidUtilities.isTablet()) ? 0 : 8;
            }
            frameLayout.setVisibility(i);
            addView(frameLayout, LayoutHelper.createFrame(-1, -2, 1));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextSize(1, 18.0f);
            this.titleView.setTypeface(AndroidUtilities.bold());
            this.titleView.setText(LocaleController.getString(LoginActivity.this.activityMode == 3 ? C2807R.string.EnterNewEmail : C2807R.string.AddEmailTitle));
            this.titleView.setGravity(17);
            this.titleView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            addView(this.titleView, LayoutHelper.createFrame(-1, -2.0f, 1, 32.0f, 16.0f, 32.0f, 0.0f));
            LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
            this.subtitleView = linksTextView;
            linksTextView.setTextSize(1, 14.0f);
            this.subtitleView.setGravity(17);
            this.subtitleView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.subtitleView.setText(LocaleController.getString(C2807R.string.AddEmailSubtitle));
            addView(this.subtitleView, LayoutHelper.createLinear(-2, -2, 1, 32, 8, 32, 0));
            OutlineTextContainerView outlineTextContainerView = new OutlineTextContainerView(context);
            this.emailOutlineView = outlineTextContainerView;
            outlineTextContainerView.setText(LocaleController.getString(LoginActivity.this.activityMode == 3 ? C2807R.string.YourNewEmail : C2807R.string.YourEmail));
            EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
            this.emailField = editTextBoldCursor;
            editTextBoldCursor.setCursorSize(AndroidUtilities.dp(20.0f));
            this.emailField.setCursorWidth(1.5f);
            this.emailField.setImeOptions(268435461);
            this.emailField.setTextSize(1, 17.0f);
            this.emailField.setMaxLines(1);
            this.emailField.setInputType(33);
            this.emailField.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda3
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z) {
                    this.f$0.lambda$new$0(view, z);
                }
            });
            this.emailField.setBackground(null);
            this.emailField.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
            this.emailOutlineView.attachEditText(this.emailField);
            this.emailOutlineView.addView(this.emailField, LayoutHelper.createFrame(-1, -2, 48));
            this.emailField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda4
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView2, int i2, KeyEvent keyEvent) {
                    return this.f$0.lambda$new$1(textView2, i2, keyEvent);
                }
            });
            addView(this.emailOutlineView, LayoutHelper.createLinear(-1, 58, 16.0f, 24.0f, 16.0f, 0.0f));
            TextView textView2 = new TextView(context);
            this.signInWithGoogleView = textView2;
            textView2.setGravity(3);
            this.signInWithGoogleView.setTextSize(1, 14.0f);
            this.signInWithGoogleView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.signInWithGoogleView.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
            this.signInWithGoogleView.setMaxLines(2);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("d ");
            Drawable drawable = ContextCompat.getDrawable(context, R$drawable.googleg_standard_color_18);
            drawable.setBounds(0, AndroidUtilities.dp(9.0f), AndroidUtilities.dp(18.0f), AndroidUtilities.dp(27.0f));
            spannableStringBuilder.setSpan(new ImageSpan(drawable, 0), 0, 1, 33);
            spannableStringBuilder.setSpan(new ReplacementSpan() { // from class: org.telegram.ui.LoginActivity.LoginActivitySetupEmail.1
                @Override // android.text.style.ReplacementSpan
                public void draw(Canvas canvas, CharSequence charSequence, int i2, int i3, float f, int i4, int i5, int i6, Paint paint) {
                }

                @Override // android.text.style.ReplacementSpan
                public int getSize(Paint paint, CharSequence charSequence, int i2, int i3, Paint.FontMetricsInt fontMetricsInt) {
                    return AndroidUtilities.dp(12.0f);
                }
            }, 1, 2, 33);
            spannableStringBuilder.append((CharSequence) LocaleController.getString(C2807R.string.SignInWithGoogle));
            this.signInWithGoogleView.setText(spannableStringBuilder);
            this.loginOrView = new LoginOrView(context);
            addView(new Space(context), LayoutHelper.createLinear(0, 0, 1.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            frameLayout2.addView(this.signInWithGoogleView, LayoutHelper.createFrame(-2, -2.0f, 83, 0.0f, 0.0f, 0.0f, 24.0f));
            frameLayout2.addView(this.loginOrView, LayoutHelper.createFrame(-2, 16.0f, 83, 0.0f, 0.0f, 0.0f, 70.0f));
            this.loginOrView.setMeasureAfter(this.signInWithGoogleView);
            addView(frameLayout2, LayoutHelper.createLinear(-1, -2));
            VerticalPositionAutoAnimator.attach(frameLayout2);
            frameLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$3(view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view, boolean z) {
            this.emailOutlineView.animateSelection(z ? 1.0f : 0.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$new$1(TextView textView, int i, KeyEvent keyEvent) {
            if (i != 5) {
                return false;
            }
            lambda$onNextPressed$17(null);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(View view) {
            NotificationCenter.getGlobalInstance().addObserver(new NotificationCenter.NotificationCenterDelegate() { // from class: org.telegram.ui.LoginActivity.LoginActivitySetupEmail.2
                @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
                public void didReceivedNotification(int i, int i2, Object... objArr) {
                    int iIntValue = ((Integer) objArr[0]).intValue();
                    ((Integer) objArr[1]).getClass();
                    Intent intent = (Intent) objArr[2];
                    NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.onActivityResultReceived);
                    if (iIntValue == 200) {
                        try {
                            LoginActivitySetupEmail.this.googleAccount = GoogleSignIn.getSignedInAccountFromIntent(intent).getResult(ApiException.class);
                            LoginActivitySetupEmail.this.lambda$onNextPressed$17(null);
                        } catch (ApiException e) {
                            FileLog.m1040e(e);
                        }
                    }
                }
            }, NotificationCenter.onActivityResultReceived);
            final GoogleSignInClient client = GoogleSignIn.getClient(getContext(), new GoogleSignInOptions.Builder().requestIdToken(BuildVars.GOOGLE_AUTH_CLIENT_ID).requestEmail().build());
            client.signOut().addOnCompleteListener(new OnCompleteListener() { // from class: org.telegram.ui.LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda9
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    this.f$0.lambda$new$2(client, task);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(GoogleSignInClient googleSignInClient, Task task) {
            if (LoginActivity.this.getParentActivity() == null || LoginActivity.this.getParentActivity().isFinishing()) {
                return;
            }
            LoginActivity.this.getParentActivity().startActivityForResult(googleSignInClient.getSignInIntent(), 200);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void updateColors() {
            TextView textView = this.titleView;
            int i = Theme.key_windowBackgroundWhiteBlackText;
            textView.setTextColor(Theme.getColor(i));
            this.subtitleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText6));
            this.subtitleView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn));
            this.emailField.setTextColor(Theme.getColor(i));
            this.signInWithGoogleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4));
            this.loginOrView.updateColors();
            this.emailOutlineView.invalidate();
        }

        @Override // org.telegram.ui.Components.SlideView
        public boolean needBackButton() {
            return !LoginActivity.this.emailChangeIsSuggestion;
        }

        @Override // org.telegram.ui.Components.SlideView
        public String getHeaderName() {
            return LocaleController.getString("AddEmailTitle", C2807R.string.AddEmailTitle);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void setParams(Bundle bundle, boolean z) {
            if (bundle == null) {
                return;
            }
            this.emailField.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.currentParams = bundle;
            this.phone = bundle.getString("phone");
            this.emailPhone = this.currentParams.getString("ephone");
            this.requestPhone = this.currentParams.getString("phoneFormated");
            this.phoneHash = this.currentParams.getString("phoneHash");
            int i = (bundle.getBoolean("googleSignInAllowed") && PushListenerController.GooglePushListenerServiceProvider.INSTANCE.hasServices()) ? 0 : 8;
            this.loginOrView.setVisibility(i);
            this.signInWithGoogleView.setVisibility(i);
            LoginActivity.this.showKeyboard(this.emailField);
            this.emailField.requestFocus();
        }

        private void onPasscodeError(boolean z) {
            if (LoginActivity.this.getParentActivity() == null) {
                return;
            }
            try {
                this.emailOutlineView.performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            if (z) {
                this.emailField.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            }
            this.emailField.requestFocus();
            LoginActivity.this.onFieldError(this.emailOutlineView, true);
            postDelayed(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPasscodeError$4();
                }
            }, 300L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPasscodeError$4() {
            this.emailField.requestFocus();
        }

        @Override // org.telegram.ui.Components.SlideView
        /* JADX INFO: renamed from: onNextPressed */
        public void lambda$onNextPressed$17(String str) {
            if (this.nextPressed) {
                return;
            }
            GoogleSignInAccount googleSignInAccount = this.googleAccount;
            String email = googleSignInAccount != null ? googleSignInAccount.getEmail() : this.emailField.getText().toString();
            final Bundle bundle = new Bundle();
            bundle.putString("phone", this.phone);
            bundle.putString("ephone", this.emailPhone);
            bundle.putString("phoneFormated", this.requestPhone);
            bundle.putString("phoneHash", this.phoneHash);
            bundle.putString("email", email);
            bundle.putBoolean("setup", true);
            if (this.googleAccount != null) {
                final TL_account.verifyEmail verifyemail = new TL_account.verifyEmail();
                if (LoginActivity.this.activityMode == 3) {
                    verifyemail.purpose = new TLRPC.TL_emailVerifyPurposeLoginChange();
                } else {
                    TLRPC.TL_emailVerifyPurposeLoginSetup tL_emailVerifyPurposeLoginSetup = new TLRPC.TL_emailVerifyPurposeLoginSetup();
                    tL_emailVerifyPurposeLoginSetup.phone_number = this.requestPhone;
                    tL_emailVerifyPurposeLoginSetup.phone_code_hash = this.phoneHash;
                    verifyemail.purpose = tL_emailVerifyPurposeLoginSetup;
                }
                TLRPC.TL_emailVerificationGoogle tL_emailVerificationGoogle = new TLRPC.TL_emailVerificationGoogle();
                tL_emailVerificationGoogle.token = this.googleAccount.getIdToken();
                verifyemail.verification = tL_emailVerificationGoogle;
                this.googleAccount = null;
                ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(verifyemail, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda1
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$onNextPressed$6(bundle, verifyemail, tLObject, tL_error);
                    }
                }, 10);
                return;
            }
            if (TextUtils.isEmpty(email)) {
                onPasscodeError(false);
                return;
            }
            this.nextPressed = true;
            LoginActivity.this.needShowProgress(0);
            final TL_account.sendVerifyEmailCode sendverifyemailcode = new TL_account.sendVerifyEmailCode();
            if (LoginActivity.this.activityMode == 3) {
                sendverifyemailcode.purpose = new TLRPC.TL_emailVerifyPurposeLoginChange();
            } else {
                TLRPC.TL_emailVerifyPurposeLoginSetup tL_emailVerifyPurposeLoginSetup2 = new TLRPC.TL_emailVerifyPurposeLoginSetup();
                tL_emailVerifyPurposeLoginSetup2.phone_number = this.requestPhone;
                tL_emailVerifyPurposeLoginSetup2.phone_code_hash = this.phoneHash;
                sendverifyemailcode.purpose = tL_emailVerifyPurposeLoginSetup2;
            }
            sendverifyemailcode.email = email;
            ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(sendverifyemailcode, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda2
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$onNextPressed$8(bundle, sendverifyemailcode, tLObject, tL_error);
                }
            }, 10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$6(final Bundle bundle, final TL_account.verifyEmail verifyemail, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNextPressed$5(tLObject, bundle, tL_error, verifyemail);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$5(TLObject tLObject, Bundle bundle, TLRPC.TL_error tL_error, TL_account.verifyEmail verifyemail) {
            if ((tLObject instanceof TL_account.TL_emailVerified) && LoginActivity.this.activityMode == 3) {
                LoginActivity.this.finishFragment();
                LoginActivity.this.emailChangeFinishCallback.run();
                return;
            }
            if (tLObject instanceof TL_account.TL_emailVerifiedLogin) {
                TL_account.TL_emailVerifiedLogin tL_emailVerifiedLogin = (TL_account.TL_emailVerifiedLogin) tLObject;
                bundle.putString("email", tL_emailVerifiedLogin.email);
                LoginActivity.this.fillNextCodeParams(bundle, tL_emailVerifiedLogin.sent_code);
            } else if (tL_error != null) {
                if (tL_error.text.contains("EMAIL_NOT_ALLOWED")) {
                    LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.EmailNotAllowed));
                } else if (tL_error.text.contains("EMAIL_TOKEN_INVALID")) {
                    LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.EmailTokenInvalid));
                } else if (tL_error.code != -1000) {
                    AlertsCreator.processError(((BaseFragment) LoginActivity.this).currentAccount, tL_error, LoginActivity.this, verifyemail, new Object[0]);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$8(final Bundle bundle, final TL_account.sendVerifyEmailCode sendverifyemailcode, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNextPressed$7(tLObject, bundle, tL_error, sendverifyemailcode);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$7(TLObject tLObject, Bundle bundle, TLRPC.TL_error tL_error, TL_account.sendVerifyEmailCode sendverifyemailcode) {
            LoginActivity.this.needHideProgress(false);
            this.nextPressed = false;
            if (tLObject instanceof TL_account.sentEmailCode) {
                LoginActivity.this.fillNextCodeParams(bundle, (TL_account.sentEmailCode) tLObject);
                return;
            }
            String str = tL_error.text;
            if (str != null) {
                if (str.contains("EMAIL_INVALID")) {
                    onPasscodeError(false);
                    return;
                }
                if (tL_error.text.contains("EMAIL_NOT_ALLOWED")) {
                    LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.EmailNotAllowed));
                    return;
                }
                if (tL_error.text.contains("PHONE_PASSWORD_FLOOD")) {
                    LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("FloodWait", C2807R.string.FloodWait));
                    return;
                }
                if (tL_error.text.contains("PHONE_NUMBER_FLOOD")) {
                    LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("PhoneNumberFlood", C2807R.string.PhoneNumberFlood));
                    return;
                }
                if (tL_error.text.contains("PHONE_CODE_EMPTY") || tL_error.text.contains("PHONE_CODE_INVALID")) {
                    LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("InvalidCode", C2807R.string.InvalidCode));
                    return;
                }
                if (tL_error.text.contains("PHONE_CODE_EXPIRED")) {
                    onBackPressed(true);
                    LoginActivity.this.setPage(0, true, null, true);
                    LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("CodeExpired", C2807R.string.CodeExpired));
                } else if (tL_error.text.startsWith("FLOOD_WAIT")) {
                    LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("FloodWait", C2807R.string.FloodWait));
                } else if (tL_error.code != -1000) {
                    AlertsCreator.processError(((BaseFragment) LoginActivity.this).currentAccount, tL_error, LoginActivity.this, sendverifyemailcode, this.requestPhone);
                }
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onShow() {
            super.onShow();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onShow$9();
                }
            }, LoginActivity.SHOW_DELAY);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onShow$9() {
            this.inboxImageView.getAnimatedDrawable().setCurrentFrame(0, false);
            this.inboxImageView.playAnimation();
            this.emailField.requestFocus();
            AndroidUtilities.showKeyboard(this.emailField);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void saveStateParams(Bundle bundle) {
            String string = this.emailField.getText().toString();
            if (string != null && string.length() != 0) {
                bundle.putString("emailsetup_email", string);
            }
            Bundle bundle2 = this.currentParams;
            if (bundle2 != null) {
                bundle.putBundle("emailsetup_params", bundle2);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void restoreStateParams(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle("emailsetup_params");
            this.currentParams = bundle2;
            if (bundle2 != null) {
                setParams(bundle2, true);
            }
            String string = bundle.getString("emailsetup_email");
            if (string != null) {
                this.emailField.setText(string);
            }
        }
    }

    public class LoginActivityEmailCodeView extends SlideView {
        private FrameLayout cantAccessEmailFrameLayout;
        private TextView cantAccessEmailView;
        private CodeFieldContainer codeFieldContainer;
        private TextView confirmTextView;
        private Bundle currentParams;
        private String email;
        private String emailPhone;
        private TextView emailResetInView;
        private Runnable errorColorTimeout;
        private ViewSwitcher errorViewSwitcher;
        private GoogleSignInAccount googleAccount;
        private RLottieImageView inboxImageView;
        private boolean isFromSetup;
        private boolean isSetup;
        private int length;
        private LoginOrView loginOrView;
        private boolean nextPressed;
        private String phone;
        private String phoneHash;
        private boolean postedErrorColorTimeout;
        private String requestPhone;
        private boolean requestingEmailReset;
        private Runnable resendCodeTimeout;
        private TextView resendCodeView;
        private FrameLayout resendFrameLayout;
        private int resetAvailablePeriod;
        private int resetPendingDate;
        private boolean resetRequestPending;
        private TextView signInWithGoogleView;
        private TextView titleView;
        private Runnable updateResetPendingDateCallback;
        private TextView wrongCodeView;

        @Override // org.telegram.ui.Components.SlideView
        public boolean hasCustomKeyboard() {
            return true;
        }

        @Override // org.telegram.ui.Components.SlideView
        public boolean needBackButton() {
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            boolean z = false;
            this.postedErrorColorTimeout = false;
            int i = 0;
            while (true) {
                CodeNumberField[] codeNumberFieldArr = this.codeFieldContainer.codeField;
                if (i >= codeNumberFieldArr.length) {
                    break;
                }
                codeNumberFieldArr[i].animateErrorProgress(0.0f);
                i++;
            }
            if (this.errorViewSwitcher.getCurrentView() != this.resendFrameLayout) {
                this.errorViewSwitcher.showNext();
                FrameLayout frameLayout = this.cantAccessEmailFrameLayout;
                if (this.resendCodeView.getVisibility() != 0 && LoginActivity.this.activityMode != 3 && !this.isSetup) {
                    z = true;
                }
                AndroidUtilities.updateViewVisibilityAnimated(frameLayout, z, 1.0f, true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1() {
            showResendCodeView(true);
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0075  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public LoginActivityEmailCodeView(final Context context, boolean z) {
            int i;
            super(context);
            this.errorColorTimeout = new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            };
            this.resendCodeTimeout = new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$1();
                }
            };
            this.updateResetPendingDateCallback = new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.updateResetPendingDate();
                }
            };
            this.isSetup = z;
            setOrientation(1);
            FrameLayout frameLayout = new FrameLayout(context);
            this.inboxImageView = new RLottieImageView(context);
            if (!z || LoginActivity.this.activityMode == 3) {
                this.inboxImageView.setAnimation(C2807R.raw.email_check_inbox, 120, 120);
            } else {
                this.inboxImageView.setAnimation(C2807R.raw.email_setup_heart, 120, 120);
            }
            this.inboxImageView.setAutoRepeat(false);
            frameLayout.addView(this.inboxImageView, LayoutHelper.createFrame(120, 120, 1));
            if (!AndroidUtilities.isSmallScreen()) {
                Point point = AndroidUtilities.displaySize;
                i = (point.x <= point.y || AndroidUtilities.isTablet()) ? 0 : 8;
            }
            frameLayout.setVisibility(i);
            addView(frameLayout, LayoutHelper.createFrame(-1, -2, 1));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextSize(1, 18.0f);
            this.titleView.setTypeface(AndroidUtilities.bold());
            this.titleView.setText(LocaleController.getString(LoginActivity.this.activityMode == 3 ? C2807R.string.CheckYourNewEmail : z ? C2807R.string.VerificationCode : C2807R.string.CheckYourEmail));
            this.titleView.setGravity(17);
            this.titleView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            addView(this.titleView, LayoutHelper.createFrame(-1, -2.0f, 1, 32.0f, 16.0f, 32.0f, 0.0f));
            SpoilersTextView spoilersTextView = new SpoilersTextView(context, false);
            this.confirmTextView = spoilersTextView;
            spoilersTextView.setTextSize(1, 14.0f);
            this.confirmTextView.setGravity(17);
            this.confirmTextView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            addView(this.confirmTextView, LayoutHelper.createLinear(-2, -2, 1, 24, 8, 24, 0));
            CodeFieldContainer codeFieldContainer = new CodeFieldContainer(context) { // from class: org.telegram.ui.LoginActivity.LoginActivityEmailCodeView.1
                @Override // org.telegram.ui.CodeFieldContainer
                public void processNextPressed() {
                    LoginActivityEmailCodeView.this.lambda$onNextPressed$17(null);
                }
            };
            this.codeFieldContainer = codeFieldContainer;
            addView(codeFieldContainer, LayoutHelper.createLinear(-2, 42, 1, 0, z ? 48 : 32, 0, 0));
            TextView textView2 = new TextView(context);
            this.signInWithGoogleView = textView2;
            textView2.setGravity(17);
            this.signInWithGoogleView.setTextSize(1, 14.0f);
            this.signInWithGoogleView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.signInWithGoogleView.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
            this.signInWithGoogleView.setMaxLines(2);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("d ");
            Drawable drawable = ContextCompat.getDrawable(context, R$drawable.googleg_standard_color_18);
            drawable.setBounds(0, AndroidUtilities.dp(9.0f), AndroidUtilities.dp(18.0f), AndroidUtilities.dp(27.0f));
            spannableStringBuilder.setSpan(new ImageSpan(drawable, 0), 0, 1, 33);
            spannableStringBuilder.setSpan(new ReplacementSpan() { // from class: org.telegram.ui.LoginActivity.LoginActivityEmailCodeView.2
                @Override // android.text.style.ReplacementSpan
                public void draw(Canvas canvas, CharSequence charSequence, int i2, int i3, float f, int i4, int i5, int i6, Paint paint) {
                }

                @Override // android.text.style.ReplacementSpan
                public int getSize(Paint paint, CharSequence charSequence, int i2, int i3, Paint.FontMetricsInt fontMetricsInt) {
                    return AndroidUtilities.dp(12.0f);
                }
            }, 1, 2, 33);
            spannableStringBuilder.append((CharSequence) LocaleController.getString(C2807R.string.SignInWithGoogle));
            this.signInWithGoogleView.setText(spannableStringBuilder);
            this.signInWithGoogleView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$3(view);
                }
            });
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.cantAccessEmailFrameLayout = frameLayout2;
            AndroidUtilities.updateViewVisibilityAnimated(frameLayout2, (LoginActivity.this.activityMode == 3 || this.isSetup) ? false : true, 1.0f, false);
            TextView textView3 = new TextView(context) { // from class: org.telegram.ui.LoginActivity.LoginActivityEmailCodeView.4
                @Override // android.widget.TextView, android.view.View
                public void onMeasure(int i2, int i3) {
                    super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(100.0f), Integer.MIN_VALUE));
                }
            };
            this.cantAccessEmailView = textView3;
            textView3.setText(LocaleController.getString(C2807R.string.LoginCantAccessThisEmail));
            this.cantAccessEmailView.setGravity(17);
            this.cantAccessEmailView.setTextSize(1, 14.0f);
            this.cantAccessEmailView.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
            this.cantAccessEmailView.setMaxLines(2);
            this.cantAccessEmailView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$7(context, view);
                }
            });
            this.cantAccessEmailFrameLayout.addView(this.cantAccessEmailView);
            TextView textView4 = new TextView(context) { // from class: org.telegram.ui.LoginActivity.LoginActivityEmailCodeView.5
                @Override // android.widget.TextView, android.view.View
                public void onMeasure(int i2, int i3) {
                    super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(Math.max(View.MeasureSpec.getSize(i3), AndroidUtilities.dp(100.0f)), Integer.MIN_VALUE));
                }
            };
            this.emailResetInView = textView4;
            textView4.setGravity(17);
            this.emailResetInView.setTextSize(1, 14.0f);
            this.emailResetInView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.emailResetInView.setMaxLines(3);
            this.emailResetInView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$8(view);
                }
            });
            this.emailResetInView.setPadding(0, AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f));
            this.emailResetInView.setVisibility(8);
            this.cantAccessEmailFrameLayout.addView(this.emailResetInView);
            TextView textView5 = new TextView(context);
            this.resendCodeView = textView5;
            textView5.setGravity(17);
            this.resendCodeView.setTextSize(1, 14.0f);
            this.resendCodeView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.resendCodeView.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
            this.resendCodeView.setMaxLines(2);
            this.resendCodeView.setText(LocaleController.getString(C2807R.string.ResendCode));
            this.resendCodeView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$11(view);
                }
            });
            AndroidUtilities.updateViewVisibilityAnimated(this.resendCodeView, false, 1.0f, false);
            LoginOrView loginOrView = new LoginOrView(context);
            this.loginOrView = loginOrView;
            VerticalPositionAutoAnimator.attach(loginOrView);
            this.errorViewSwitcher = new ViewSwitcher(context) { // from class: org.telegram.ui.LoginActivity.LoginActivityEmailCodeView.6
                @Override // android.widget.FrameLayout, android.view.View
                public void onMeasure(int i2, int i3) {
                    super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(100.0f), Integer.MIN_VALUE));
                }
            };
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, C2807R.anim.text_in);
            Interpolator interpolator = Easings.easeInOutQuad;
            animationLoadAnimation.setInterpolator(interpolator);
            this.errorViewSwitcher.setInAnimation(animationLoadAnimation);
            Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, C2807R.anim.text_out);
            animationLoadAnimation2.setInterpolator(interpolator);
            this.errorViewSwitcher.setOutAnimation(animationLoadAnimation2);
            FrameLayout frameLayout3 = new FrameLayout(context);
            this.resendFrameLayout = frameLayout3;
            frameLayout3.addView(this.resendCodeView, LayoutHelper.createFrame(-2, -2, 17));
            this.errorViewSwitcher.addView(this.resendFrameLayout);
            TextView textView6 = new TextView(context);
            this.wrongCodeView = textView6;
            textView6.setText(LocaleController.getString("WrongCode", C2807R.string.WrongCode));
            this.wrongCodeView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.wrongCodeView.setTextSize(1, 15.0f);
            this.wrongCodeView.setGravity(49);
            this.wrongCodeView.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
            this.errorViewSwitcher.addView(this.wrongCodeView);
            FrameLayout frameLayout4 = new FrameLayout(context);
            ViewSwitcher viewSwitcher = this.errorViewSwitcher;
            if (z) {
                frameLayout4.addView(viewSwitcher, LayoutHelper.createFrame(-1, -2.0f, 80, 0.0f, 0.0f, 0.0f, 32.0f));
            } else {
                frameLayout4.addView(viewSwitcher, LayoutHelper.createFrame(-1, -2, 48));
                frameLayout4.addView(this.cantAccessEmailFrameLayout, LayoutHelper.createFrame(-1, -2, 48));
                frameLayout4.addView(this.loginOrView, LayoutHelper.createFrame(-1, 16.0f, 17, 0.0f, 0.0f, 0.0f, 16.0f));
                frameLayout4.addView(this.signInWithGoogleView, LayoutHelper.createFrame(-1, -2.0f, 80, 0.0f, 0.0f, 0.0f, 16.0f));
            }
            addView(frameLayout4, LayoutHelper.createLinear(-1, 0, 1.0f));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(View view) {
            NotificationCenter.getGlobalInstance().addObserver(new NotificationCenter.NotificationCenterDelegate() { // from class: org.telegram.ui.LoginActivity.LoginActivityEmailCodeView.3
                @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
                public void didReceivedNotification(int i, int i2, Object... objArr) {
                    int iIntValue = ((Integer) objArr[0]).intValue();
                    ((Integer) objArr[1]).getClass();
                    Intent intent = (Intent) objArr[2];
                    NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.onActivityResultReceived);
                    if (iIntValue == 200) {
                        try {
                            LoginActivityEmailCodeView.this.googleAccount = GoogleSignIn.getSignedInAccountFromIntent(intent).getResult(ApiException.class);
                            LoginActivityEmailCodeView.this.lambda$onNextPressed$17(null);
                        } catch (ApiException e) {
                            FileLog.m1040e(e);
                        }
                    }
                }
            }, NotificationCenter.onActivityResultReceived);
            final GoogleSignInClient client = GoogleSignIn.getClient(getContext(), new GoogleSignInOptions.Builder().requestIdToken(BuildVars.GOOGLE_AUTH_CLIENT_ID).requestEmail().build());
            client.signOut().addOnCompleteListener(new OnCompleteListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda11
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    this.f$0.lambda$new$2(client, task);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(GoogleSignInClient googleSignInClient, Task task) {
            if (LoginActivity.this.getParentActivity() == null) {
                return;
            }
            LoginActivity.this.getParentActivity().startActivityForResult(googleSignInClient.getSignInIntent(), 200);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$7(Context context, View view) {
            String string = this.currentParams.getString("emailPattern");
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
            int iIndexOf = string.indexOf(42);
            int iLastIndexOf = string.lastIndexOf(42);
            if (iIndexOf != iLastIndexOf && iIndexOf != -1 && iLastIndexOf != -1) {
                TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                textStyleRun.flags |= 256;
                textStyleRun.start = iIndexOf;
                int i = iLastIndexOf + 1;
                textStyleRun.end = i;
                spannableStringBuilder.setSpan(new TextStyleSpan(textStyleRun), iIndexOf, i, 0);
            }
            new AlertDialog.Builder(context).setTitle(LocaleController.getString(C2807R.string.LoginEmailResetTitle)).setMessage(AndroidUtilities.formatSpannable(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.LoginEmailResetMessage)), spannableStringBuilder, getTimePattern(this.resetAvailablePeriod))).setPositiveButton(LocaleController.getString(C2807R.string.LoginEmailResetButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda15
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    this.f$0.lambda$new$6(alertDialog, i2);
                }
            }).setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$6(AlertDialog alertDialog, int i) {
            final Bundle bundle = new Bundle();
            bundle.putString("phone", this.phone);
            bundle.putString("ephone", this.emailPhone);
            bundle.putString("phoneFormated", this.requestPhone);
            final TLRPC.TL_auth_resetLoginEmail tL_auth_resetLoginEmail = new TLRPC.TL_auth_resetLoginEmail();
            tL_auth_resetLoginEmail.phone_number = this.requestPhone;
            tL_auth_resetLoginEmail.phone_code_hash = this.phoneHash;
            LoginActivity.this.getConnectionsManager().sendRequest(tL_auth_resetLoginEmail, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda19
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$new$5(bundle, tL_auth_resetLoginEmail, tLObject, tL_error);
                }
            }, 10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$5(final Bundle bundle, final TLRPC.TL_auth_resetLoginEmail tL_auth_resetLoginEmail, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$4(tLObject, bundle, tL_error, tL_auth_resetLoginEmail);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4(TLObject tLObject, Bundle bundle, TLRPC.TL_error tL_error, TLRPC.TL_auth_resetLoginEmail tL_auth_resetLoginEmail) {
            String str;
            if (tLObject instanceof TLRPC.TL_auth_sentCode) {
                TLRPC.TL_auth_sentCode tL_auth_sentCode = (TLRPC.TL_auth_sentCode) tLObject;
                TLRPC.auth_SentCodeType auth_sentcodetype = tL_auth_sentCode.type;
                if (auth_sentcodetype instanceof TLRPC.TL_auth_sentCodeTypeEmailCode) {
                    auth_sentcodetype.email_pattern = this.currentParams.getString("emailPattern");
                    this.resetRequestPending = true;
                }
                LoginActivity.this.fillNextCodeParams(bundle, tL_auth_sentCode);
                return;
            }
            if (tL_error == null || (str = tL_error.text) == null) {
                return;
            }
            if (!str.contains("PHONE_CODE_EXPIRED")) {
                AlertsCreator.processError(((BaseFragment) LoginActivity.this).currentAccount, tL_error, LoginActivity.this, tL_auth_resetLoginEmail, new Object[0]);
                return;
            }
            onBackPressed(true);
            LoginActivity.this.setPage(0, true, null, true);
            LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("CodeExpired", C2807R.string.CodeExpired));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$8(View view) {
            requestEmailReset();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$11(View view) {
            if (this.resendCodeView.getVisibility() == 0 && this.resendCodeView.getAlpha() == 1.0f) {
                showResendCodeView(false);
                final TLRPC.TL_auth_resendCode tL_auth_resendCode = new TLRPC.TL_auth_resendCode();
                tL_auth_resendCode.phone_number = this.requestPhone;
                tL_auth_resendCode.phone_code_hash = this.phoneHash;
                final Bundle bundle = new Bundle();
                bundle.putString("phone", this.phone);
                bundle.putString("ephone", this.emailPhone);
                bundle.putString("phoneFormated", this.requestPhone);
                ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(tL_auth_resendCode, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda10
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$new$10(bundle, tL_auth_resendCode, tLObject, tL_error);
                    }
                }, 10);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$10(final Bundle bundle, final TLRPC.TL_auth_resendCode tL_auth_resendCode, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$9(tLObject, bundle, tL_error, tL_auth_resendCode);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$9(TLObject tLObject, Bundle bundle, TLRPC.TL_error tL_error, TLRPC.TL_auth_resendCode tL_auth_resendCode) {
            if (tLObject instanceof TLRPC.TL_auth_sentCode) {
                LoginActivity.this.fillNextCodeParams(bundle, (TLRPC.TL_auth_sentCode) tLObject);
            } else {
                if (tL_error == null || tL_error.text == null) {
                    return;
                }
                AlertsCreator.processError(((BaseFragment) LoginActivity.this).currentAccount, tL_error, LoginActivity.this, tL_auth_resendCode, new Object[0]);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void requestEmailReset() {
            if (this.requestingEmailReset) {
                return;
            }
            this.requestingEmailReset = true;
            final Bundle bundle = new Bundle();
            bundle.putString("phone", this.phone);
            bundle.putString("ephone", this.emailPhone);
            bundle.putString("phoneFormated", this.requestPhone);
            final TLRPC.TL_auth_resetLoginEmail tL_auth_resetLoginEmail = new TLRPC.TL_auth_resetLoginEmail();
            tL_auth_resetLoginEmail.phone_number = this.requestPhone;
            tL_auth_resetLoginEmail.phone_code_hash = this.phoneHash;
            LoginActivity.this.getConnectionsManager().sendRequest(tL_auth_resetLoginEmail, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda12
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestEmailReset$13(bundle, tL_auth_resetLoginEmail, tLObject, tL_error);
                }
            }, 10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$requestEmailReset$13(final Bundle bundle, final TLRPC.TL_auth_resetLoginEmail tL_auth_resetLoginEmail, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$requestEmailReset$12(tLObject, bundle, tL_error, tL_auth_resetLoginEmail);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$requestEmailReset$12(TLObject tLObject, Bundle bundle, TLRPC.TL_error tL_error, TLRPC.TL_auth_resetLoginEmail tL_auth_resetLoginEmail) {
            String str;
            if (LoginActivity.this.getParentActivity() == null) {
                return;
            }
            this.requestingEmailReset = false;
            if (tLObject instanceof TLRPC.TL_auth_sentCode) {
                LoginActivity.this.fillNextCodeParams(bundle, (TLRPC.TL_auth_sentCode) tLObject);
                return;
            }
            if (tL_error == null || (str = tL_error.text) == null) {
                return;
            }
            if (str.contains("TASK_ALREADY_EXISTS")) {
                new AlertDialog.Builder(getContext()).setTitle(LocaleController.getString(C2807R.string.LoginEmailResetPremiumRequiredTitle)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.LoginEmailResetPremiumRequiredMessage, LocaleController.addNbsp(PhoneFormat.getInstance().format("+" + this.requestPhone))))).setPositiveButton(LocaleController.getString(C2807R.string.OK), null).show();
                return;
            }
            if (!tL_error.text.contains("PHONE_CODE_EXPIRED")) {
                AlertsCreator.processError(((BaseFragment) LoginActivity.this).currentAccount, tL_error, LoginActivity.this, tL_auth_resetLoginEmail, new Object[0]);
                return;
            }
            onBackPressed(true);
            LoginActivity.this.setPage(0, true, null, true);
            LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("CodeExpired", C2807R.string.CodeExpired));
        }

        @Override // org.telegram.ui.Components.SlideView
        public void updateColors() {
            this.titleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            TextView textView = this.confirmTextView;
            int i = Theme.key_windowBackgroundWhiteGrayText6;
            textView.setTextColor(Theme.getColor(i));
            TextView textView2 = this.signInWithGoogleView;
            int i2 = Theme.key_windowBackgroundWhiteBlueText4;
            textView2.setTextColor(Theme.getColor(i2));
            this.loginOrView.updateColors();
            this.resendCodeView.setTextColor(Theme.getColor(i2));
            this.cantAccessEmailView.setTextColor(Theme.getColor(i2));
            this.emailResetInView.setTextColor(Theme.getColor(i));
            this.wrongCodeView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
            this.codeFieldContainer.invalidate();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            removeCallbacks(this.errorColorTimeout);
            removeCallbacks(this.resendCodeTimeout);
        }

        private void showResendCodeView(boolean z) {
            AndroidUtilities.updateViewVisibilityAnimated(this.resendCodeView, z);
            AndroidUtilities.updateViewVisibilityAnimated(this.cantAccessEmailFrameLayout, (z || LoginActivity.this.activityMode == 3 || this.isSetup) ? false : true);
            if (this.loginOrView.getVisibility() != 8) {
                this.loginOrView.setLayoutParams(LayoutHelper.createFrame(-1, 16.0f, 17, 0.0f, 0.0f, 0.0f, z ? 8.0f : 16.0f));
                this.loginOrView.requestLayout();
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public String getHeaderName() {
            return LocaleController.getString(C2807R.string.VerificationCode);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void setParams(Bundle bundle, boolean z) {
            if (bundle == null) {
                return;
            }
            this.currentParams = bundle;
            this.requestPhone = bundle.getString("phoneFormated");
            this.phoneHash = this.currentParams.getString("phoneHash");
            this.phone = this.currentParams.getString("phone");
            this.emailPhone = this.currentParams.getString("ephone");
            this.isFromSetup = this.currentParams.getBoolean("setup");
            this.length = this.currentParams.getInt("length");
            this.email = this.currentParams.getString("email");
            this.resetAvailablePeriod = this.currentParams.getInt("resetAvailablePeriod");
            this.resetPendingDate = this.currentParams.getInt("resetPendingDate");
            int i = 8;
            if (LoginActivity.this.activityMode == 3) {
                this.confirmTextView.setText(LocaleController.formatString(C2807R.string.CheckYourNewEmailSubtitle, this.email));
                AndroidUtilities.updateViewVisibilityAnimated(this.cantAccessEmailFrameLayout, false, 1.0f, false);
            } else if (this.isSetup) {
                this.confirmTextView.setText(LocaleController.formatString(C2807R.string.VerificationCodeSubtitle, this.email));
                AndroidUtilities.updateViewVisibilityAnimated(this.cantAccessEmailFrameLayout, false, 1.0f, false);
            } else {
                AndroidUtilities.updateViewVisibilityAnimated(this.cantAccessEmailFrameLayout, true, 1.0f, false);
                this.cantAccessEmailView.setVisibility(this.resetPendingDate == 0 ? 0 : 8);
                this.emailResetInView.setVisibility(this.resetPendingDate != 0 ? 0 : 8);
                if (this.resetPendingDate != 0) {
                    updateResetPendingDate();
                }
            }
            this.codeFieldContainer.setNumbersCount(this.length, 1);
            for (CodeNumberField codeNumberField : this.codeFieldContainer.codeField) {
                codeNumberField.setShowSoftInputOnFocusCompat(!hasCustomKeyboard() || LoginActivity.this.isCustomKeyboardForceDisabled());
                codeNumberField.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.LoginActivity.LoginActivityEmailCodeView.7
                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                    }

                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                        if (LoginActivityEmailCodeView.this.postedErrorColorTimeout) {
                            LoginActivityEmailCodeView loginActivityEmailCodeView = LoginActivityEmailCodeView.this;
                            loginActivityEmailCodeView.removeCallbacks(loginActivityEmailCodeView.errorColorTimeout);
                            LoginActivityEmailCodeView.this.errorColorTimeout.run();
                        }
                    }
                });
                codeNumberField.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnFocusChangeListener
                    public final void onFocusChange(View view, boolean z2) {
                        this.f$0.lambda$setParams$14(view, z2);
                    }
                });
            }
            this.codeFieldContainer.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            if (!this.isFromSetup && LoginActivity.this.activityMode != 3) {
                String string = this.currentParams.getString("emailPattern");
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
                int iIndexOf = string.indexOf(42);
                int iLastIndexOf = string.lastIndexOf(42);
                if (iIndexOf != iLastIndexOf && iIndexOf != -1 && iLastIndexOf != -1) {
                    TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                    textStyleRun.flags |= 256;
                    textStyleRun.start = iIndexOf;
                    int i2 = iLastIndexOf + 1;
                    textStyleRun.end = i2;
                    spannableStringBuilder.setSpan(new TextStyleSpan(textStyleRun), iIndexOf, i2, 0);
                }
                this.confirmTextView.setText(AndroidUtilities.formatSpannable(LocaleController.getString(C2807R.string.CheckYourEmailSubtitle), spannableStringBuilder));
            }
            if (bundle.getBoolean("googleSignInAllowed") && PushListenerController.GooglePushListenerServiceProvider.INSTANCE.hasServices()) {
                i = 0;
            }
            this.loginOrView.setVisibility(i);
            this.signInWithGoogleView.setVisibility(i);
            LoginActivity.this.showKeyboard(this.codeFieldContainer.codeField[0]);
            this.codeFieldContainer.requestFocus();
            if (!z && bundle.containsKey("nextType")) {
                AndroidUtilities.runOnUIThread(this.resendCodeTimeout, bundle.getInt("timeout"));
            }
            if (this.resetPendingDate != 0) {
                AndroidUtilities.runOnUIThread(this.updateResetPendingDateCallback, 1000L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$14(View view, boolean z) {
            if (z) {
                LoginActivity.this.keyboardView.setEditText((EditText) view);
                LoginActivity.this.keyboardView.setDispatchBackWhenEmpty(true);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onHide() {
            super.onHide();
            if (this.resetPendingDate != 0) {
                AndroidUtilities.cancelRunOnUIThread(this.updateResetPendingDateCallback);
            }
        }

        private String getTimePatternForTimer(int i) {
            int i2 = i / 86400;
            int i3 = i % 86400;
            int i4 = i3 / 3600;
            int i5 = i3 % 3600;
            int i6 = i5 / 60;
            int i7 = i5 % 60;
            if (i4 >= 16) {
                i2++;
            }
            if (i2 != 0) {
                return LocaleController.formatString(C2807R.string.LoginEmailResetInSinglePattern, LocaleController.formatPluralString("Days", i2, new Object[0]));
            }
            StringBuilder sb = new StringBuilder();
            sb.append(i4 != 0 ? String.format(Locale.ROOT, "%02d:", Integer.valueOf(i4)) : _UrlKt.FRAGMENT_ENCODE_SET);
            Locale locale = Locale.ROOT;
            sb.append(String.format(locale, "%02d:", Integer.valueOf(i6)));
            sb.append(String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i7)));
            return LocaleController.formatString(C2807R.string.LoginEmailResetInSinglePattern, sb.toString());
        }

        private String getTimePattern(int i) {
            int i2 = i / 86400;
            int i3 = i % 86400;
            int i4 = i3 / 3600;
            int iMax = (i3 % 3600) / 60;
            if (i2 == 0 && i4 == 0) {
                iMax = Math.max(1, iMax);
            }
            if (i2 != 0 && i4 != 0) {
                return LocaleController.formatString(C2807R.string.LoginEmailResetInDoublePattern, LocaleController.formatPluralString("Days", i2, new Object[0]), LocaleController.formatPluralString("Hours", i4, new Object[0]));
            }
            if (i4 != 0 && iMax != 0) {
                return LocaleController.formatString(C2807R.string.LoginEmailResetInDoublePattern, LocaleController.formatPluralString("Hours", i4, new Object[0]), LocaleController.formatPluralString("Minutes", iMax, new Object[0]));
            }
            if (i2 != 0) {
                return LocaleController.formatString(C2807R.string.LoginEmailResetInSinglePattern, LocaleController.formatPluralString("Days", i2, new Object[0]));
            }
            if (i4 == 0) {
                return LocaleController.formatString(C2807R.string.LoginEmailResetInSinglePattern, LocaleController.formatPluralString("Minutes", iMax, new Object[0]));
            }
            return LocaleController.formatString(C2807R.string.LoginEmailResetInSinglePattern, LocaleController.formatPluralString("Hours", i2, new Object[0]));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateResetPendingDate() {
            int iCurrentTimeMillis = (int) (((long) this.resetPendingDate) - (System.currentTimeMillis() / 1000));
            if (this.resetPendingDate <= 0 || iCurrentTimeMillis <= 0) {
                this.emailResetInView.setVisibility(0);
                this.emailResetInView.setText(LocaleController.getString(C2807R.string.LoginEmailResetPleaseWait));
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.requestEmailReset();
                    }
                }, 1000L);
                return;
            }
            String string = LocaleController.formatString(C2807R.string.LoginEmailResetInTime, getTimePatternForTimer(iCurrentTimeMillis));
            SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(string);
            int iIndexOf = string.indexOf(42);
            int iLastIndexOf = string.lastIndexOf(42);
            if (iIndexOf != iLastIndexOf && iIndexOf != -1 && iLastIndexOf != -1) {
                spannableStringBuilderValueOf.replace(iLastIndexOf, iLastIndexOf + 1, (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET);
                spannableStringBuilderValueOf.replace(iIndexOf, iIndexOf + 1, (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET);
                spannableStringBuilderValueOf.setSpan(new ForegroundColorSpan(LoginActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteBlueText4)), iIndexOf, iLastIndexOf - 1, 33);
            }
            this.emailResetInView.setText(spannableStringBuilderValueOf);
            AndroidUtilities.runOnUIThread(this.updateResetPendingDateCallback, 1000L);
        }

        private void onPasscodeError(boolean z) {
            if (LoginActivity.this.getParentActivity() == null) {
                return;
            }
            try {
                this.codeFieldContainer.performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            if (z) {
                for (CodeNumberField codeNumberField : this.codeFieldContainer.codeField) {
                    codeNumberField.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                }
            }
            for (CodeNumberField codeNumberField2 : this.codeFieldContainer.codeField) {
                codeNumberField2.animateErrorProgress(1.0f);
            }
            this.codeFieldContainer.codeField[0].requestFocus();
            AndroidUtilities.shakeViewSpring(this.codeFieldContainer, new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPasscodeError$16();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPasscodeError$16() {
            postDelayed(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPasscodeError$15();
                }
            }, 150L);
            removeCallbacks(this.errorColorTimeout);
            postDelayed(this.errorColorTimeout, 3000L);
            this.postedErrorColorTimeout = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPasscodeError$15() {
            CodeFieldContainer codeFieldContainer = this.codeFieldContainer;
            int i = 0;
            codeFieldContainer.isFocusSuppressed = false;
            codeFieldContainer.codeField[0].requestFocus();
            while (true) {
                CodeNumberField[] codeNumberFieldArr = this.codeFieldContainer.codeField;
                if (i >= codeNumberFieldArr.length) {
                    return;
                }
                codeNumberFieldArr[i].animateErrorProgress(0.0f);
                i++;
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        /* JADX INFO: renamed from: onNextPressed */
        public void lambda$onNextPressed$17(String str) {
            TLObject tLObject;
            if (this.nextPressed) {
                return;
            }
            AndroidUtilities.cancelRunOnUIThread(this.resendCodeTimeout);
            CodeFieldContainer codeFieldContainer = this.codeFieldContainer;
            codeFieldContainer.isFocusSuppressed = true;
            CodeNumberField[] codeNumberFieldArr = codeFieldContainer.codeField;
            if (codeNumberFieldArr != null) {
                for (CodeNumberField codeNumberField : codeNumberFieldArr) {
                    codeNumberField.animateFocusedProgress(0.0f);
                }
            }
            final String code = this.codeFieldContainer.getCode();
            if (code.length() == 0 && this.googleAccount == null) {
                onPasscodeError(false);
                return;
            }
            this.nextPressed = true;
            LoginActivity.this.needShowProgress(0);
            if (LoginActivity.this.activityMode == 3) {
                TL_account.verifyEmail verifyemail = new TL_account.verifyEmail();
                verifyemail.purpose = new TLRPC.TL_emailVerifyPurposeLoginChange();
                TLRPC.TL_emailVerificationCode tL_emailVerificationCode = new TLRPC.TL_emailVerificationCode();
                tL_emailVerificationCode.code = code;
                verifyemail.verification = tL_emailVerificationCode;
                tLObject = verifyemail;
            } else if (this.isFromSetup) {
                TL_account.verifyEmail verifyemail2 = new TL_account.verifyEmail();
                TLRPC.TL_emailVerifyPurposeLoginSetup tL_emailVerifyPurposeLoginSetup = new TLRPC.TL_emailVerifyPurposeLoginSetup();
                tL_emailVerifyPurposeLoginSetup.phone_number = this.requestPhone;
                tL_emailVerifyPurposeLoginSetup.phone_code_hash = this.phoneHash;
                verifyemail2.purpose = tL_emailVerifyPurposeLoginSetup;
                TLRPC.TL_emailVerificationCode tL_emailVerificationCode2 = new TLRPC.TL_emailVerificationCode();
                tL_emailVerificationCode2.code = code;
                verifyemail2.verification = tL_emailVerificationCode2;
                tLObject = verifyemail2;
            } else {
                TLRPC.TL_auth_signIn tL_auth_signIn = new TLRPC.TL_auth_signIn();
                tL_auth_signIn.phone_number = this.requestPhone;
                tL_auth_signIn.phone_code_hash = this.phoneHash;
                if (this.googleAccount != null) {
                    TLRPC.TL_emailVerificationGoogle tL_emailVerificationGoogle = new TLRPC.TL_emailVerificationGoogle();
                    tL_emailVerificationGoogle.token = this.googleAccount.getIdToken();
                    tL_auth_signIn.email_verification = tL_emailVerificationGoogle;
                } else {
                    TLRPC.TL_emailVerificationCode tL_emailVerificationCode3 = new TLRPC.TL_emailVerificationCode();
                    tL_emailVerificationCode3.code = code;
                    tL_auth_signIn.email_verification = tL_emailVerificationCode3;
                }
                tL_auth_signIn.flags |= 2;
                tLObject = tL_auth_signIn;
            }
            CodeFieldContainer codeFieldContainer2 = this.codeFieldContainer;
            codeFieldContainer2.isFocusSuppressed = true;
            CodeNumberField[] codeNumberFieldArr2 = codeFieldContainer2.codeField;
            if (codeNumberFieldArr2 != null) {
                for (CodeNumberField codeNumberField2 : codeNumberFieldArr2) {
                    codeNumberField2.animateFocusedProgress(0.0f);
                }
            }
            ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(tLObject, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$onNextPressed$23(code, tLObject2, tL_error);
                }
            }, 10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$23(final String str, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNextPressed$22(tL_error, str, tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$22(TLRPC.TL_error tL_error, final String str, final TLObject tLObject) {
            CodeNumberField[] codeNumberFieldArr;
            LoginActivity.this.needHideProgress(false);
            if (tL_error == null) {
                this.nextPressed = false;
                LoginActivity.this.showDoneButton(false, true);
                final Bundle bundle = new Bundle();
                bundle.putString("phone", this.phone);
                bundle.putString("ephone", this.emailPhone);
                bundle.putString("phoneFormated", this.requestPhone);
                bundle.putString("phoneHash", this.phoneHash);
                bundle.putString("code", str);
                if (tLObject instanceof TLRPC.TL_auth_authorizationSignUpRequired) {
                    TLRPC.TL_help_termsOfService tL_help_termsOfService = ((TLRPC.TL_auth_authorizationSignUpRequired) tLObject).terms_of_service;
                    if (tL_help_termsOfService != null) {
                        LoginActivity.this.currentTermsOfService = tL_help_termsOfService;
                    }
                    animateSuccess(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda21
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onNextPressed$17(bundle);
                        }
                    });
                } else {
                    animateSuccess(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda22
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onNextPressed$18(tLObject, bundle);
                        }
                    });
                }
            } else if (tL_error.text.contains("SESSION_PASSWORD_NEEDED")) {
                ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda23
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                        this.f$0.lambda$onNextPressed$21(str, tLObject2, tL_error2);
                    }
                }, 10);
            } else {
                this.nextPressed = false;
                LoginActivity.this.showDoneButton(false, true);
                if (tL_error.text.contains("EMAIL_ADDRESS_INVALID")) {
                    LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.EmailAddressInvalid));
                } else if (tL_error.text.contains("PHONE_NUMBER_INVALID")) {
                    LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("InvalidPhoneNumber", C2807R.string.InvalidPhoneNumber));
                } else if (tL_error.text.contains("CODE_EMPTY") || tL_error.text.contains("CODE_INVALID") || tL_error.text.contains("EMAIL_CODE_INVALID") || tL_error.text.contains("PHONE_CODE_INVALID")) {
                    shakeWrongCode();
                } else if (tL_error.text.contains("EMAIL_NOT_ALLOWED")) {
                    LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.EmailNotAllowed));
                } else if (tL_error.text.contains("EMAIL_TOKEN_INVALID")) {
                    LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.EmailTokenInvalid));
                } else if (tL_error.text.contains("EMAIL_VERIFY_EXPIRED")) {
                    onBackPressed(true);
                    LoginActivity.this.setPage(0, true, null, true);
                    LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("CodeExpired", C2807R.string.CodeExpired));
                } else {
                    boolean zStartsWith = tL_error.text.startsWith("FLOOD_WAIT");
                    LoginActivity loginActivity = LoginActivity.this;
                    if (zStartsWith) {
                        loginActivity.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("FloodWait", C2807R.string.FloodWait));
                    } else {
                        loginActivity.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("ErrorOccurred", C2807R.string.ErrorOccurred) + "\n" + tL_error.text);
                    }
                }
                if (this.codeFieldContainer.codeField != null) {
                    int i = 0;
                    while (true) {
                        codeNumberFieldArr = this.codeFieldContainer.codeField;
                        if (i >= codeNumberFieldArr.length) {
                            break;
                        }
                        codeNumberFieldArr[i].setText(_UrlKt.FRAGMENT_ENCODE_SET);
                        i++;
                    }
                    codeNumberFieldArr[0].requestFocus();
                }
                this.codeFieldContainer.isFocusSuppressed = false;
            }
            this.googleAccount = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$17(Bundle bundle) {
            LoginActivity.this.setPage(5, true, bundle, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$18(TLObject tLObject, Bundle bundle) {
            if ((tLObject instanceof TL_account.TL_emailVerified) && LoginActivity.this.activityMode == 3) {
                LoginActivity.this.finishFragment();
                LoginActivity.this.emailChangeFinishCallback.run();
            } else if (tLObject instanceof TL_account.TL_emailVerifiedLogin) {
                LoginActivity.this.fillNextCodeParams(bundle, ((TL_account.TL_emailVerifiedLogin) tLObject).sent_code);
            } else if (tLObject instanceof TLRPC.TL_auth_authorization) {
                LoginActivity.this.onAuthSuccess((TLRPC.TL_auth_authorization) tLObject);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$21(final String str, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNextPressed$20(tL_error, tLObject, str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$20(TLRPC.TL_error tL_error, TLObject tLObject, String str) {
            this.nextPressed = false;
            LoginActivity.this.showDoneButton(false, true);
            if (tL_error == null) {
                TL_account.Password password = (TL_account.Password) tLObject;
                if (!TwoStepVerificationActivity.canHandleCurrentPassword(password, true)) {
                    AlertsCreator.showUpdateAppAlert(LoginActivity.this.getParentActivity(), LocaleController.getString("UpdateAppAlert", C2807R.string.UpdateAppAlert), true);
                    return;
                }
                final Bundle bundle = new Bundle();
                SerializedData serializedData = new SerializedData(password.getObjectSize());
                password.serializeToStream(serializedData);
                bundle.putString("password", Utilities.bytesToHex(serializedData.toByteArray()));
                bundle.putString("phoneFormated", this.requestPhone);
                bundle.putString("phoneHash", this.phoneHash);
                bundle.putString("code", str);
                animateSuccess(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda29
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onNextPressed$19(bundle);
                    }
                });
                return;
            }
            LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), tL_error.text);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$19(Bundle bundle) {
            LoginActivity.this.setPage(6, true, bundle, false);
        }

        private void animateSuccess(final Runnable runnable) {
            if (this.googleAccount != null) {
                runnable.run();
                return;
            }
            final int i = 0;
            while (true) {
                CodeFieldContainer codeFieldContainer = this.codeFieldContainer;
                if (i < codeFieldContainer.codeField.length) {
                    codeFieldContainer.postDelayed(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda26
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$animateSuccess$24(i);
                        }
                    }, ((long) i) * 75);
                    i++;
                } else {
                    codeFieldContainer.postDelayed(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda27
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$animateSuccess$25(runnable);
                        }
                    }, (((long) this.codeFieldContainer.codeField.length) * 75) + 400);
                    return;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateSuccess$24(int i) {
            this.codeFieldContainer.codeField[i].animateSuccessProgress(1.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateSuccess$25(Runnable runnable) {
            int i = 0;
            while (true) {
                CodeNumberField[] codeNumberFieldArr = this.codeFieldContainer.codeField;
                if (i < codeNumberFieldArr.length) {
                    codeNumberFieldArr[i].animateSuccessProgress(0.0f);
                    i++;
                } else {
                    runnable.run();
                    this.codeFieldContainer.isFocusSuppressed = false;
                    return;
                }
            }
        }

        private void shakeWrongCode() {
            try {
                this.codeFieldContainer.performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            int i = 0;
            while (true) {
                CodeNumberField[] codeNumberFieldArr = this.codeFieldContainer.codeField;
                if (i >= codeNumberFieldArr.length) {
                    break;
                }
                codeNumberFieldArr[i].setText(_UrlKt.FRAGMENT_ENCODE_SET);
                this.codeFieldContainer.codeField[i].animateErrorProgress(1.0f);
                i++;
            }
            if (this.errorViewSwitcher.getCurrentView() == this.resendFrameLayout) {
                this.errorViewSwitcher.showNext();
                AndroidUtilities.updateViewVisibilityAnimated(this.cantAccessEmailFrameLayout, false, 1.0f, true);
            }
            this.codeFieldContainer.codeField[0].requestFocus();
            AndroidUtilities.shakeViewSpring(this.codeFieldContainer, 10.0f, new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$shakeWrongCode$27();
                }
            });
            removeCallbacks(this.errorColorTimeout);
            postDelayed(this.errorColorTimeout, 5000L);
            this.postedErrorColorTimeout = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$shakeWrongCode$27() {
            postDelayed(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda30
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$shakeWrongCode$26();
                }
            }, 150L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$shakeWrongCode$26() {
            CodeFieldContainer codeFieldContainer = this.codeFieldContainer;
            int i = 0;
            codeFieldContainer.isFocusSuppressed = false;
            codeFieldContainer.codeField[0].requestFocus();
            while (true) {
                CodeNumberField[] codeNumberFieldArr = this.codeFieldContainer.codeField;
                if (i >= codeNumberFieldArr.length) {
                    return;
                }
                codeNumberFieldArr[i].animateErrorProgress(0.0f);
                i++;
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onShow() {
            super.onShow();
            if (this.resetRequestPending) {
                this.resetRequestPending = false;
            } else {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onShow$28();
                    }
                }, LoginActivity.SHOW_DELAY);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onShow$28() {
            this.inboxImageView.getAnimatedDrawable().setCurrentFrame(0, false);
            this.inboxImageView.playAnimation();
            CodeFieldContainer codeFieldContainer = this.codeFieldContainer;
            if (codeFieldContainer == null || codeFieldContainer.codeField == null) {
                return;
            }
            codeFieldContainer.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.codeFieldContainer.codeField[0].requestFocus();
        }

        @Override // org.telegram.ui.Components.SlideView
        public void saveStateParams(Bundle bundle) {
            String code = this.codeFieldContainer.getCode();
            if (code != null && code.length() != 0) {
                bundle.putString("emailcode_code", code);
            }
            Bundle bundle2 = this.currentParams;
            if (bundle2 != null) {
                bundle.putBundle("emailcode_params", bundle2);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void restoreStateParams(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle("emailcode_params");
            this.currentParams = bundle2;
            if (bundle2 != null) {
                setParams(bundle2, true);
            }
            String string = bundle.getString("emailcode_code");
            if (string != null) {
                this.codeFieldContainer.setText(string);
            }
        }
    }

    public class LoginActivityRecoverView extends SlideView {
        private CodeFieldContainer codeFieldContainer;
        private TextView confirmTextView;
        private Bundle currentParams;
        private Runnable errorColorTimeout;
        private RLottieImageView inboxImageView;
        private boolean nextPressed;
        private String passwordString;
        private String phoneCode;
        private String phoneHash;
        private boolean postedErrorColorTimeout;
        private String requestPhone;
        private TextView titleView;
        private TextView troubleButton;

        @Override // org.telegram.ui.Components.SlideView
        public boolean hasCustomKeyboard() {
            return true;
        }

        @Override // org.telegram.ui.Components.SlideView
        public boolean needBackButton() {
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            int i = 0;
            this.postedErrorColorTimeout = false;
            while (true) {
                CodeNumberField[] codeNumberFieldArr = this.codeFieldContainer.codeField;
                if (i >= codeNumberFieldArr.length) {
                    return;
                }
                codeNumberFieldArr[i].animateErrorProgress(0.0f);
                i++;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public LoginActivityRecoverView(Context context) {
            int i;
            super(context);
            this.errorColorTimeout = new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            };
            setOrientation(1);
            FrameLayout frameLayout = new FrameLayout(context);
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            this.inboxImageView = rLottieImageView;
            rLottieImageView.setAnimation(C2807R.raw.tsv_setup_mail, 120, 120);
            this.inboxImageView.setAutoRepeat(false);
            frameLayout.addView(this.inboxImageView, LayoutHelper.createFrame(120, 120, 1));
            if (!AndroidUtilities.isSmallScreen()) {
                Point point = AndroidUtilities.displaySize;
                i = (point.x <= point.y || AndroidUtilities.isTablet()) ? 0 : 8;
            }
            frameLayout.setVisibility(i);
            addView(frameLayout, LayoutHelper.createFrame(-1, -2, 1));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextSize(1, 18.0f);
            this.titleView.setTypeface(AndroidUtilities.bold());
            this.titleView.setText(LocaleController.getString(C2807R.string.EnterCode));
            this.titleView.setGravity(17);
            this.titleView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            addView(this.titleView, LayoutHelper.createFrame(-1, -2.0f, 1, 32.0f, 16.0f, 32.0f, 0.0f));
            TextView textView2 = new TextView(context);
            this.confirmTextView = textView2;
            textView2.setTextSize(1, 14.0f);
            this.confirmTextView.setGravity(17);
            this.confirmTextView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.confirmTextView.setText(LocaleController.getString(C2807R.string.RestoreEmailSentInfo));
            addView(this.confirmTextView, LayoutHelper.createLinear(-2, -2, 1, 12, 8, 12, 0));
            CodeFieldContainer codeFieldContainer = new CodeFieldContainer(context) { // from class: org.telegram.ui.LoginActivity.LoginActivityRecoverView.1
                @Override // org.telegram.ui.CodeFieldContainer
                public void processNextPressed() {
                    LoginActivityRecoverView.this.lambda$onNextPressed$17(null);
                }
            };
            this.codeFieldContainer = codeFieldContainer;
            codeFieldContainer.setNumbersCount(6, 1);
            for (CodeNumberField codeNumberField : this.codeFieldContainer.codeField) {
                codeNumberField.setShowSoftInputOnFocusCompat(!hasCustomKeyboard() || LoginActivity.this.isCustomKeyboardForceDisabled());
                codeNumberField.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.LoginActivity.LoginActivityRecoverView.2
                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                    }

                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                        if (LoginActivityRecoverView.this.postedErrorColorTimeout) {
                            LoginActivityRecoverView loginActivityRecoverView = LoginActivityRecoverView.this;
                            loginActivityRecoverView.removeCallbacks(loginActivityRecoverView.errorColorTimeout);
                            LoginActivityRecoverView.this.errorColorTimeout.run();
                        }
                    }
                });
                codeNumberField.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnFocusChangeListener
                    public final void onFocusChange(View view, boolean z) {
                        this.f$0.lambda$new$1(view, z);
                    }
                });
            }
            addView(this.codeFieldContainer, LayoutHelper.createLinear(-2, 42, 1, 0, 32, 0, 0));
            SpoilersTextView spoilersTextView = new SpoilersTextView(context, false);
            this.troubleButton = spoilersTextView;
            spoilersTextView.setGravity(17);
            this.troubleButton.setTextSize(1, 14.0f);
            this.troubleButton.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.troubleButton.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
            this.troubleButton.setMaxLines(2);
            this.troubleButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$4(view);
                }
            });
            FrameLayout frameLayout2 = new FrameLayout(context);
            frameLayout2.addView(this.troubleButton, LayoutHelper.createFrame(-1, -2.0f, 80, 0.0f, 0.0f, 0.0f, 32.0f));
            addView(frameLayout2, LayoutHelper.createLinear(-1, 0, 1.0f));
            VerticalPositionAutoAnimator.attach(this.troubleButton);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view, boolean z) {
            if (z) {
                LoginActivity.this.keyboardView.setEditText((EditText) view);
                LoginActivity.this.keyboardView.setDispatchBackWhenEmpty(true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4(View view) {
            Dialog dialogShowDialog = LoginActivity.this.showDialog(new AlertDialog.Builder(LoginActivity.this.getParentActivity()).setTitle(LocaleController.getString("RestorePasswordNoEmailTitle", C2807R.string.RestorePasswordNoEmailTitle)).setMessage(LocaleController.getString("RestoreEmailTroubleText", C2807R.string.RestoreEmailTroubleText)).setPositiveButton(LocaleController.getString(C2807R.string.OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda6
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$new$2(alertDialog, i);
                }
            }).setNegativeButton(LocaleController.getString(C2807R.string.ResetAccount), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda7
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$new$3(alertDialog, i);
                }
            }).create());
            if (dialogShowDialog != null) {
                dialogShowDialog.setCanceledOnTouchOutside(false);
                dialogShowDialog.setCancelable(false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(AlertDialog alertDialog, int i) {
            LoginActivity.this.setPage(6, true, new Bundle(), true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(AlertDialog alertDialog, int i) {
            LoginActivity.this.tryResetAccount(this.requestPhone, this.phoneHash, this.phoneCode);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void updateColors() {
            this.titleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            this.confirmTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText6));
            this.troubleButton.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4));
            this.codeFieldContainer.invalidate();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            removeCallbacks(this.errorColorTimeout);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onCancelPressed() {
            this.nextPressed = false;
        }

        @Override // org.telegram.ui.Components.SlideView
        public String getHeaderName() {
            return LocaleController.getString("LoginPassword", C2807R.string.LoginPassword);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void setParams(Bundle bundle, boolean z) {
            if (bundle == null) {
                return;
            }
            this.codeFieldContainer.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.currentParams = bundle;
            this.passwordString = bundle.getString("password");
            this.requestPhone = this.currentParams.getString("requestPhone");
            this.phoneHash = this.currentParams.getString("phoneHash");
            this.phoneCode = this.currentParams.getString("phoneCode");
            String string = this.currentParams.getString("email_unconfirmed_pattern");
            SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(string);
            int iIndexOf = string.indexOf(42);
            int iLastIndexOf = string.lastIndexOf(42);
            if (iIndexOf != iLastIndexOf && iIndexOf != -1 && iLastIndexOf != -1) {
                TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                textStyleRun.flags |= 256;
                textStyleRun.start = iIndexOf;
                int i = iLastIndexOf + 1;
                textStyleRun.end = i;
                spannableStringBuilderValueOf.setSpan(new TextStyleSpan(textStyleRun), iIndexOf, i, 0);
            }
            this.troubleButton.setText(AndroidUtilities.formatSpannable(LocaleController.getString(C2807R.string.RestoreEmailNoAccess), spannableStringBuilderValueOf));
            LoginActivity.this.showKeyboard(this.codeFieldContainer);
            this.codeFieldContainer.requestFocus();
        }

        private void onPasscodeError(boolean z) {
            if (LoginActivity.this.getParentActivity() == null) {
                return;
            }
            try {
                this.codeFieldContainer.performHapticFeedback(3, 2);
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
            if (z) {
                for (CodeNumberField codeNumberField : this.codeFieldContainer.codeField) {
                    codeNumberField.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                }
            }
            for (CodeNumberField codeNumberField2 : this.codeFieldContainer.codeField) {
                codeNumberField2.animateErrorProgress(1.0f);
            }
            this.codeFieldContainer.codeField[0].requestFocus();
            AndroidUtilities.shakeViewSpring(this.codeFieldContainer, new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPasscodeError$6();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPasscodeError$6() {
            postDelayed(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPasscodeError$5();
                }
            }, 150L);
            removeCallbacks(this.errorColorTimeout);
            postDelayed(this.errorColorTimeout, 3000L);
            this.postedErrorColorTimeout = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPasscodeError$5() {
            CodeFieldContainer codeFieldContainer = this.codeFieldContainer;
            int i = 0;
            codeFieldContainer.isFocusSuppressed = false;
            codeFieldContainer.codeField[0].requestFocus();
            while (true) {
                CodeNumberField[] codeNumberFieldArr = this.codeFieldContainer.codeField;
                if (i >= codeNumberFieldArr.length) {
                    return;
                }
                codeNumberFieldArr[i].animateErrorProgress(0.0f);
                i++;
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        /* JADX INFO: renamed from: onNextPressed */
        public void lambda$onNextPressed$17(String str) {
            if (this.nextPressed) {
                return;
            }
            CodeFieldContainer codeFieldContainer = this.codeFieldContainer;
            codeFieldContainer.isFocusSuppressed = true;
            for (CodeNumberField codeNumberField : codeFieldContainer.codeField) {
                codeNumberField.animateFocusedProgress(0.0f);
            }
            final String code = this.codeFieldContainer.getCode();
            if (code.length() == 0) {
                onPasscodeError(false);
                return;
            }
            this.nextPressed = true;
            LoginActivity.this.needShowProgress(0);
            TLRPC.TL_auth_checkRecoveryPassword tL_auth_checkRecoveryPassword = new TLRPC.TL_auth_checkRecoveryPassword();
            tL_auth_checkRecoveryPassword.code = code;
            ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(tL_auth_checkRecoveryPassword, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda1
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$onNextPressed$8(code, tLObject, tL_error);
                }
            }, 10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$8(final String str, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNextPressed$7(tLObject, str, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$7(TLObject tLObject, String str, TLRPC.TL_error tL_error) {
            String pluralString;
            LoginActivity.this.needHideProgress(false);
            this.nextPressed = false;
            if (tLObject instanceof TLRPC.TL_boolTrue) {
                Bundle bundle = new Bundle();
                bundle.putString("emailCode", str);
                bundle.putString("password", this.passwordString);
                LoginActivity.this.setPage(9, true, bundle, false);
                return;
            }
            if (tL_error == null || tL_error.text.startsWith("CODE_INVALID")) {
                onPasscodeError(true);
                return;
            }
            if (tL_error.text.startsWith("FLOOD_WAIT")) {
                int i = Utilities.parseInt((CharSequence) tL_error.text);
                if (i < 60) {
                    pluralString = LocaleController.formatPluralString("Seconds", i, new Object[0]);
                } else {
                    pluralString = LocaleController.formatPluralString("Minutes", i / 60, new Object[0]);
                }
                LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.formatString("FloodWaitTime", C2807R.string.FloodWaitTime, pluralString));
                return;
            }
            LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), tL_error.text);
        }

        @Override // org.telegram.ui.Components.SlideView
        public boolean onBackPressed(boolean z) {
            LoginActivity.this.needHideProgress(true);
            this.currentParams = null;
            this.nextPressed = false;
            return true;
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onShow() {
            super.onShow();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onShow$9();
                }
            }, LoginActivity.SHOW_DELAY);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onShow$9() {
            this.inboxImageView.getAnimatedDrawable().setCurrentFrame(0, false);
            this.inboxImageView.playAnimation();
            CodeFieldContainer codeFieldContainer = this.codeFieldContainer;
            if (codeFieldContainer != null) {
                codeFieldContainer.codeField[0].requestFocus();
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void saveStateParams(Bundle bundle) {
            String code = this.codeFieldContainer.getCode();
            if (code != null && code.length() != 0) {
                bundle.putString("recoveryview_code", code);
            }
            Bundle bundle2 = this.currentParams;
            if (bundle2 != null) {
                bundle.putBundle("recoveryview_params", bundle2);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void restoreStateParams(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle("recoveryview_params");
            this.currentParams = bundle2;
            if (bundle2 != null) {
                setParams(bundle2, true);
            }
            String string = bundle.getString("recoveryview_code");
            if (string != null) {
                this.codeFieldContainer.setText(string);
            }
        }
    }

    public class LoginActivityNewPasswordView extends SlideView {
        private TextView cancelButton;
        private EditTextBoldCursor[] codeField;
        private TextView confirmTextView;
        private Bundle currentParams;
        private TL_account.Password currentPassword;
        private int currentStage;
        private String emailCode;
        private boolean isPasswordVisible;
        private String newPassword;
        private boolean nextPressed;
        private OutlineTextContainerView[] outlineFields;
        private ImageView passwordButton;
        private String passwordString;
        private TextView titleTextView;

        @Override // org.telegram.ui.Components.SlideView
        public boolean needBackButton() {
            return true;
        }

        public LoginActivityNewPasswordView(Context context, int i) {
            int i2;
            float f;
            super(context);
            this.currentStage = i;
            setOrientation(1);
            EditTextBoldCursor[] editTextBoldCursorArr = new EditTextBoldCursor[i == 1 ? 1 : 2];
            this.codeField = editTextBoldCursorArr;
            this.outlineFields = new OutlineTextContainerView[editTextBoldCursorArr.length];
            TextView textView = new TextView(context);
            this.titleTextView = textView;
            float f2 = 18.0f;
            textView.setTextSize(1, 18.0f);
            this.titleTextView.setTypeface(AndroidUtilities.bold());
            float f3 = 2.0f;
            this.titleTextView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.titleTextView.setGravity(49);
            this.titleTextView.setText(LocaleController.getString(C2807R.string.SetNewPassword));
            addView(this.titleTextView, LayoutHelper.createLinear(-2, -2, 1, 8, AndroidUtilities.isSmallScreen() ? 16 : 72, 8, 0));
            TextView textView2 = new TextView(context);
            this.confirmTextView = textView2;
            textView2.setTextSize(1, 16.0f);
            this.confirmTextView.setGravity(1);
            this.confirmTextView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            addView(this.confirmTextView, LayoutHelper.createLinear(-2, -2, 1, 8, 6, 8, 16));
            final int i3 = 0;
            while (i3 < this.codeField.length) {
                final OutlineTextContainerView outlineTextContainerView = new OutlineTextContainerView(context);
                this.outlineFields[i3] = outlineTextContainerView;
                if (i == 0) {
                    i2 = i3 == 0 ? C2807R.string.PleaseEnterNewFirstPasswordHint : C2807R.string.PleaseEnterNewSecondPasswordHint;
                } else {
                    i2 = C2807R.string.PasswordHintPlaceholder;
                }
                outlineTextContainerView.setText(LocaleController.getString(i2));
                this.codeField[i3] = new EditTextBoldCursor(context);
                this.codeField[i3].setCursorSize(AndroidUtilities.dp(20.0f));
                this.codeField[i3].setCursorWidth(1.5f);
                this.codeField[i3].setImeOptions(268435461);
                this.codeField[i3].setTextSize(1, f2);
                this.codeField[i3].setMaxLines(1);
                this.codeField[i3].setBackground(null);
                int iDp = AndroidUtilities.dp(16.0f);
                this.codeField[i3].setPadding(iDp, iDp, iDp, iDp);
                if (i == 0) {
                    this.codeField[i3].setInputType(129);
                    this.codeField[i3].setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
                this.codeField[i3].setTypeface(Typeface.DEFAULT);
                this.codeField[i3].setGravity(LocaleController.isRTL ? 5 : 3);
                EditTextBoldCursor editTextBoldCursor = this.codeField[i3];
                final boolean z = i3 == 0 && i == 0;
                editTextBoldCursor.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.LoginActivity.LoginActivityNewPasswordView.1
                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                        if (z) {
                            if (LoginActivityNewPasswordView.this.passwordButton.getVisibility() != 0 && !TextUtils.isEmpty(editable)) {
                                if (LoginActivityNewPasswordView.this.isPasswordVisible) {
                                    LoginActivityNewPasswordView.this.passwordButton.callOnClick();
                                }
                                AndroidUtilities.updateViewVisibilityAnimated(LoginActivityNewPasswordView.this.passwordButton, true, 0.1f, true);
                            } else {
                                if (LoginActivityNewPasswordView.this.passwordButton.getVisibility() == 8 || !TextUtils.isEmpty(editable)) {
                                    return;
                                }
                                AndroidUtilities.updateViewVisibilityAnimated(LoginActivityNewPasswordView.this.passwordButton, false, 0.1f, true);
                            }
                        }
                    }
                });
                this.codeField[i3].setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityNewPasswordView$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnFocusChangeListener
                    public final void onFocusChange(View view, boolean z2) {
                        outlineTextContainerView.animateSelection(z2 ? 1.0f : 0.0f);
                    }
                });
                if (z) {
                    LinearLayout linearLayout = new LinearLayout(context);
                    linearLayout.setOrientation(0);
                    linearLayout.setGravity(16);
                    f = f3;
                    linearLayout.addView(this.codeField[i3], LayoutHelper.createLinear(0, -2, 1.0f));
                    ImageView imageView = new ImageView(context);
                    this.passwordButton = imageView;
                    imageView.setImageResource(C2807R.drawable.msg_message);
                    AndroidUtilities.updateViewVisibilityAnimated(this.passwordButton, true, 0.1f, false);
                    this.passwordButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityNewPasswordView$$ExternalSyntheticLambda2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$new$1(view);
                        }
                    });
                    linearLayout.addView(this.passwordButton, LayoutHelper.createLinearRelatively(24.0f, 24.0f, 0, 0.0f, 0.0f, 14.0f, 0.0f));
                    outlineTextContainerView.addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f));
                } else {
                    f = f3;
                    outlineTextContainerView.addView(this.codeField[i3], LayoutHelper.createFrame(-1, -2.0f));
                }
                outlineTextContainerView.attachEditText(this.codeField[i3]);
                addView(outlineTextContainerView, LayoutHelper.createLinear(-1, -2, 1, 16, 16, 16, 0));
                this.codeField[i3].setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityNewPasswordView$$ExternalSyntheticLambda3
                    @Override // android.widget.TextView.OnEditorActionListener
                    public final boolean onEditorAction(TextView textView3, int i4, KeyEvent keyEvent) {
                        return this.f$0.lambda$new$2(i3, textView3, i4, keyEvent);
                    }
                });
                i3++;
                f3 = f;
                f2 = 18.0f;
            }
            float f4 = f3;
            TextView textView3 = this.confirmTextView;
            if (i == 0) {
                textView3.setText(LocaleController.getString("PleaseEnterNewFirstPasswordLogin", C2807R.string.PleaseEnterNewFirstPasswordLogin));
            } else {
                textView3.setText(LocaleController.getString("PasswordHintTextLogin", C2807R.string.PasswordHintTextLogin));
            }
            TextView textView4 = new TextView(context);
            this.cancelButton = textView4;
            textView4.setGravity(19);
            this.cancelButton.setTextSize(1, 15.0f);
            this.cancelButton.setLineSpacing(AndroidUtilities.dp(f4), 1.0f);
            this.cancelButton.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), 0);
            this.cancelButton.setText(LocaleController.getString(C2807R.string.YourEmailSkip));
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.addView(this.cancelButton, LayoutHelper.createFrame(-1, 56.0f, 80, 0.0f, 0.0f, 0.0f, 32.0f));
            addView(frameLayout, LayoutHelper.createLinear(-1, -1, 80));
            VerticalPositionAutoAnimator.attach(this.cancelButton);
            this.cancelButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityNewPasswordView$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$3(view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            this.isPasswordVisible = !this.isPasswordVisible;
            int i = 0;
            while (true) {
                EditTextBoldCursor[] editTextBoldCursorArr = this.codeField;
                if (i >= editTextBoldCursorArr.length) {
                    break;
                }
                int selectionStart = editTextBoldCursorArr[i].getSelectionStart();
                int selectionEnd = this.codeField[i].getSelectionEnd();
                this.codeField[i].setInputType((this.isPasswordVisible ? 144 : 128) | 1);
                this.codeField[i].setSelection(selectionStart, selectionEnd);
                i++;
            }
            this.passwordButton.setTag(Boolean.valueOf(this.isPasswordVisible));
            this.passwordButton.setColorFilter(Theme.getColor(this.isPasswordVisible ? Theme.key_windowBackgroundWhiteInputFieldActivated : Theme.key_windowBackgroundWhiteHintText));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$new$2(int i, TextView textView, int i2, KeyEvent keyEvent) {
            if (i == 0) {
                EditTextBoldCursor[] editTextBoldCursorArr = this.codeField;
                if (editTextBoldCursorArr.length == 2) {
                    editTextBoldCursorArr[1].requestFocus();
                    return true;
                }
            }
            if (i2 != 5) {
                return false;
            }
            lambda$onNextPressed$17(null);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(View view) {
            if (this.currentStage == 0) {
                recoverPassword(null, null);
            } else {
                recoverPassword(this.newPassword, null);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void updateColors() {
            this.titleTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            this.confirmTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText6));
            for (EditTextBoldCursor editTextBoldCursor : this.codeField) {
                editTextBoldCursor.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
                editTextBoldCursor.setCursorColor(Theme.getColor(Theme.key_windowBackgroundWhiteInputFieldActivated));
            }
            for (OutlineTextContainerView outlineTextContainerView : this.outlineFields) {
                outlineTextContainerView.updateColor();
            }
            this.cancelButton.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4));
            ImageView imageView = this.passwordButton;
            if (imageView != null) {
                imageView.setColorFilter(Theme.getColor(this.isPasswordVisible ? Theme.key_windowBackgroundWhiteInputFieldActivated : Theme.key_windowBackgroundWhiteHintText));
                this.passwordButton.setBackground(Theme.createSelectorDrawable(LoginActivity.this.getThemedColor(Theme.key_listSelector), 1));
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onCancelPressed() {
            this.nextPressed = false;
        }

        @Override // org.telegram.ui.Components.SlideView
        public String getHeaderName() {
            return LocaleController.getString("NewPassword", C2807R.string.NewPassword);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void setParams(Bundle bundle, boolean z) {
            if (bundle == null) {
                return;
            }
            int i = 0;
            while (true) {
                EditTextBoldCursor[] editTextBoldCursorArr = this.codeField;
                if (i >= editTextBoldCursorArr.length) {
                    break;
                }
                editTextBoldCursorArr[i].setText(_UrlKt.FRAGMENT_ENCODE_SET);
                i++;
            }
            this.currentParams = bundle;
            this.emailCode = bundle.getString("emailCode");
            String string = this.currentParams.getString("password");
            this.passwordString = string;
            if (string != null) {
                SerializedData serializedData = new SerializedData(Utilities.hexToBytes(string));
                TL_account.Password passwordTLdeserialize = TL_account.Password.TLdeserialize(serializedData, serializedData.readInt32(false), false);
                this.currentPassword = passwordTLdeserialize;
                TwoStepVerificationActivity.initPasswordNewAlgo(passwordTLdeserialize);
            }
            this.newPassword = this.currentParams.getString("new_password");
            LoginActivity.this.showKeyboard(this.codeField[0]);
            this.codeField[0].requestFocus();
        }

        private void onPasscodeError(boolean z, int i) {
            if (LoginActivity.this.getParentActivity() == null) {
                return;
            }
            try {
                this.codeField[i].performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            AndroidUtilities.shakeView(this.codeField[i]);
        }

        @Override // org.telegram.ui.Components.SlideView
        /* JADX INFO: renamed from: onNextPressed */
        public void lambda$onNextPressed$17(String str) {
            if (this.nextPressed) {
                return;
            }
            String string = this.codeField[0].getText().toString();
            if (string.length() == 0) {
                onPasscodeError(false, 0);
                return;
            }
            if (this.currentStage == 0) {
                if (!string.equals(this.codeField[1].getText().toString())) {
                    onPasscodeError(false, 1);
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putString("emailCode", this.emailCode);
                bundle.putString("new_password", string);
                bundle.putString("password", this.passwordString);
                LoginActivity.this.setPage(10, true, bundle, false);
                return;
            }
            this.nextPressed = true;
            LoginActivity.this.needShowProgress(0);
            recoverPassword(this.newPassword, string);
        }

        private void recoverPassword(final String str, final String str2) {
            final TLRPC.TL_auth_recoverPassword tL_auth_recoverPassword = new TLRPC.TL_auth_recoverPassword();
            tL_auth_recoverPassword.code = this.emailCode;
            if (!TextUtils.isEmpty(str)) {
                tL_auth_recoverPassword.flags |= 1;
                TL_account.passwordInputSettings passwordinputsettings = new TL_account.passwordInputSettings();
                tL_auth_recoverPassword.new_settings = passwordinputsettings;
                passwordinputsettings.flags |= 1;
                passwordinputsettings.hint = str2 != null ? str2 : _UrlKt.FRAGMENT_ENCODE_SET;
                passwordinputsettings.new_algo = this.currentPassword.new_algo;
            }
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityNewPasswordView$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$recoverPassword$9(str, str2, tL_auth_recoverPassword);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$recoverPassword$9(final String str, final String str2, TLRPC.TL_auth_recoverPassword tL_auth_recoverPassword) {
            byte[] stringBytes = str != null ? AndroidUtilities.getStringBytes(str) : null;
            RequestDelegate requestDelegate = new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityNewPasswordView$$ExternalSyntheticLambda6
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$recoverPassword$8(str, str2, tLObject, tL_error);
                }
            };
            TLRPC.PasswordKdfAlgo passwordKdfAlgo = this.currentPassword.new_algo;
            if (passwordKdfAlgo instanceof TLRPC.C2911xb6caa888) {
                if (str != null) {
                    tL_auth_recoverPassword.new_settings.new_password_hash = SRPHelper.getVBytes(stringBytes, (TLRPC.C2911xb6caa888) passwordKdfAlgo);
                    if (tL_auth_recoverPassword.new_settings.new_password_hash == null) {
                        TLRPC.TL_error tL_error = new TLRPC.TL_error();
                        tL_error.text = "ALGO_INVALID";
                        requestDelegate.run(null, tL_error);
                    }
                }
                ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(tL_auth_recoverPassword, requestDelegate, 10);
                return;
            }
            TLRPC.TL_error tL_error2 = new TLRPC.TL_error();
            tL_error2.text = "PASSWORD_HASH_INVALID";
            requestDelegate.run(null, tL_error2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$recoverPassword$8(final String str, final String str2, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityNewPasswordView$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$recoverPassword$7(tL_error, str, str2, tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$recoverPassword$7(TLRPC.TL_error tL_error, final String str, final String str2, final TLObject tLObject) {
            String pluralString;
            if (tL_error != null && ("SRP_ID_INVALID".equals(tL_error.text) || "NEW_SALT_INVALID".equals(tL_error.text))) {
                ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityNewPasswordView$$ExternalSyntheticLambda8
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                        this.f$0.lambda$recoverPassword$5(str, str2, tLObject2, tL_error2);
                    }
                }, 8);
                return;
            }
            LoginActivity.this.needHideProgress(false);
            if (tLObject instanceof TLRPC.auth_Authorization) {
                AlertDialog.Builder builder = new AlertDialog.Builder(LoginActivity.this.getParentActivity());
                builder.setPositiveButton(LocaleController.getString(C2807R.string.Continue), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityNewPasswordView$$ExternalSyntheticLambda9
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        this.f$0.lambda$recoverPassword$6(tLObject, alertDialog, i);
                    }
                });
                if (TextUtils.isEmpty(str)) {
                    builder.setMessage(LocaleController.getString(C2807R.string.YourPasswordReset));
                } else {
                    builder.setMessage(LocaleController.getString(C2807R.string.YourPasswordChangedSuccessText));
                }
                builder.setTitle(LocaleController.getString(C2807R.string.TwoStepVerificationTitle));
                Dialog dialogShowDialog = LoginActivity.this.showDialog(builder.create());
                if (dialogShowDialog != null) {
                    dialogShowDialog.setCanceledOnTouchOutside(false);
                    dialogShowDialog.setCancelable(false);
                    return;
                }
                return;
            }
            if (tL_error != null) {
                this.nextPressed = false;
                if (tL_error.text.startsWith("FLOOD_WAIT")) {
                    int i = Utilities.parseInt((CharSequence) tL_error.text);
                    if (i < 60) {
                        pluralString = LocaleController.formatPluralString("Seconds", i, new Object[0]);
                    } else {
                        pluralString = LocaleController.formatPluralString("Minutes", i / 60, new Object[0]);
                    }
                    LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.formatString("FloodWaitTime", C2807R.string.FloodWaitTime, pluralString));
                    return;
                }
                LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), tL_error.text);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$recoverPassword$5(final String str, final String str2, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityNewPasswordView$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$recoverPassword$4(tL_error, tLObject, str, str2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$recoverPassword$4(TLRPC.TL_error tL_error, TLObject tLObject, String str, String str2) {
            if (tL_error == null) {
                TL_account.Password password = (TL_account.Password) tLObject;
                this.currentPassword = password;
                TwoStepVerificationActivity.initPasswordNewAlgo(password);
                recoverPassword(str, str2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$recoverPassword$6(TLObject tLObject, AlertDialog alertDialog, int i) {
            LoginActivity.this.onAuthSuccess((TLRPC.TL_auth_authorization) tLObject);
        }

        @Override // org.telegram.ui.Components.SlideView
        public boolean onBackPressed(boolean z) {
            LoginActivity.this.needHideProgress(true);
            this.currentParams = null;
            this.nextPressed = false;
            return true;
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onShow() {
            super.onShow();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityNewPasswordView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onShow$10();
                }
            }, LoginActivity.SHOW_DELAY);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onShow$10() {
            EditTextBoldCursor[] editTextBoldCursorArr = this.codeField;
            if (editTextBoldCursorArr != null) {
                editTextBoldCursorArr[0].requestFocus();
                EditTextBoldCursor editTextBoldCursor = this.codeField[0];
                editTextBoldCursor.setSelection(editTextBoldCursor.length());
                AndroidUtilities.showKeyboard(this.codeField[0]);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void saveStateParams(Bundle bundle) {
            if (this.currentParams != null) {
                bundle.putBundle("recoveryview_params" + this.currentStage, this.currentParams);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void restoreStateParams(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle("recoveryview_params" + this.currentStage);
            this.currentParams = bundle2;
            if (bundle2 != null) {
                setParams(bundle2, true);
            }
        }
    }

    public class LoginActivityRegisterView extends SlideView implements ImageUpdater.ImageUpdaterDelegate {
        private TLRPC.FileLocation avatar;
        private AnimatorSet avatarAnimation;
        private TLRPC.FileLocation avatarBig;
        private AvatarDrawable avatarDrawable;
        private RLottieImageView avatarEditor;
        private BackupImageView avatarImage;
        private View avatarOverlay;
        private RadialProgressView avatarProgressView;
        private RLottieDrawable cameraDrawable;
        private RLottieDrawable cameraWaitDrawable;
        private Bundle currentParams;
        private TextView descriptionTextView;
        private FrameLayout editTextContainer;
        private EditTextBoldCursor firstNameField;
        private OutlineTextContainerView firstNameOutlineView;
        private ImageUpdater imageUpdater;
        private boolean isCameraWaitAnimationAllowed;
        private EditTextBoldCursor lastNameField;
        private OutlineTextContainerView lastNameOutlineView;
        private boolean nextPressed;
        private String phoneHash;
        private TextView privacyView;
        private String requestPhone;
        private TextView titleTextView;
        private TextView wrongNumber;

        @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
        public /* bridge */ /* synthetic */ PhotoViewer.PlaceProviderObject getCloseIntoObject() {
            return super.getCloseIntoObject();
        }

        @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
        public /* bridge */ /* synthetic */ String getInitialSearchString() {
            return super.getInitialSearchString();
        }

        @Override // org.telegram.ui.Components.SlideView
        public boolean needBackButton() {
            return true;
        }

        public class LinkSpan extends ClickableSpan {
            public LinkSpan() {
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                super.updateDrawState(textPaint);
                textPaint.setUnderlineText(false);
            }

            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                LoginActivityRegisterView.this.showTermsOfService(false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void showTermsOfService(boolean z) {
            if (LoginActivity.this.currentTermsOfService == null) {
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(LoginActivity.this.getParentActivity());
            builder.setTitle(LocaleController.getString("TermsOfService", C2807R.string.TermsOfService));
            if (z) {
                builder.setPositiveButton(LocaleController.getString("Accept", C2807R.string.Accept), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda10
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        this.f$0.lambda$showTermsOfService$0(alertDialog, i);
                    }
                });
                builder.setNegativeButton(LocaleController.getString("Decline", C2807R.string.Decline), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda11
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        this.f$0.lambda$showTermsOfService$3(alertDialog, i);
                    }
                });
            } else {
                builder.setPositiveButton(LocaleController.getString("OK", C2807R.string.OK), null);
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LoginActivity.this.currentTermsOfService.text);
            MessageObject.addEntitiesToText(spannableStringBuilder, LoginActivity.this.currentTermsOfService.entities, false, false, false, false);
            builder.setMessage(spannableStringBuilder);
            LoginActivity.this.showDialog(builder.create());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showTermsOfService$0(AlertDialog alertDialog, int i) {
            LoginActivity.this.currentTermsOfService.popup = false;
            lambda$onNextPressed$17(null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showTermsOfService$3(AlertDialog alertDialog, int i) {
            AlertDialog.Builder builder = new AlertDialog.Builder(LoginActivity.this.getParentActivity());
            builder.setTitle(LocaleController.getString("TermsOfService", C2807R.string.TermsOfService));
            builder.setMessage(LocaleController.getString("TosDecline", C2807R.string.TosDecline));
            builder.setPositiveButton(LocaleController.getString("SignUp", C2807R.string.SignUp), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda15
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog2, int i2) {
                    this.f$0.lambda$showTermsOfService$1(alertDialog2, i2);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Decline", C2807R.string.Decline), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda16
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog2, int i2) {
                    this.f$0.lambda$showTermsOfService$2(alertDialog2, i2);
                }
            });
            LoginActivity.this.showDialog(builder.create());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showTermsOfService$1(AlertDialog alertDialog, int i) {
            LoginActivity.this.currentTermsOfService.popup = false;
            lambda$onNextPressed$17(null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showTermsOfService$2(AlertDialog alertDialog, int i) {
            onBackPressed(true);
            LoginActivity.this.setPage(0, true, null, true);
        }

        public LoginActivityRegisterView(Context context) {
            super(context);
            this.nextPressed = false;
            this.isCameraWaitAnimationAllowed = true;
            setOrientation(1);
            ImageUpdater imageUpdater = new ImageUpdater(false, 0, false);
            this.imageUpdater = imageUpdater;
            imageUpdater.setOpenWithFrontfaceCamera(true);
            this.imageUpdater.setSearchAvailable(false);
            this.imageUpdater.setUploadAfterSelect(false);
            ImageUpdater imageUpdater2 = this.imageUpdater;
            imageUpdater2.parentFragment = LoginActivity.this;
            imageUpdater2.setDelegate(this);
            FrameLayout frameLayout = new FrameLayout(context);
            addView(frameLayout, LayoutHelper.createLinear(78, 78, 1));
            this.avatarDrawable = new AvatarDrawable();
            BackupImageView backupImageView = new BackupImageView(context) { // from class: org.telegram.ui.LoginActivity.LoginActivityRegisterView.1
                @Override // android.view.View
                public void invalidate() {
                    if (LoginActivityRegisterView.this.avatarOverlay != null) {
                        LoginActivityRegisterView.this.avatarOverlay.invalidate();
                    }
                    super.invalidate();
                }

                @Override // android.view.View
                public void invalidate(int i, int i2, int i3, int i4) {
                    if (LoginActivityRegisterView.this.avatarOverlay != null) {
                        LoginActivityRegisterView.this.avatarOverlay.invalidate();
                    }
                    super.invalidate(i, i2, i3, i4);
                }
            };
            this.avatarImage = backupImageView;
            backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(78.0f));
            this.avatarDrawable.setAvatarType(13);
            this.avatarDrawable.setInfo(5L, null, null);
            this.avatarImage.setImageDrawable(this.avatarDrawable);
            frameLayout.addView(this.avatarImage, LayoutHelper.createFrame(-1, -1.0f));
            final Paint paint = new Paint(1);
            paint.setColor(1426063360);
            View view = new View(context) { // from class: org.telegram.ui.LoginActivity.LoginActivityRegisterView.2
                @Override // android.view.View
                public void onDraw(Canvas canvas) {
                    if (LoginActivityRegisterView.this.avatarImage == null || LoginActivityRegisterView.this.avatarProgressView.getVisibility() != 0) {
                        return;
                    }
                    paint.setAlpha((int) (LoginActivityRegisterView.this.avatarImage.getImageReceiver().getCurrentAlpha() * 85.0f * LoginActivityRegisterView.this.avatarProgressView.getAlpha()));
                    canvas.drawRoundRect(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), ExteraConfig.getAvatarCorners(getMeasuredWidth(), true), ExteraConfig.getAvatarCorners(getMeasuredWidth(), true), paint);
                }
            };
            this.avatarOverlay = view;
            frameLayout.addView(view, LayoutHelper.createFrame(-1, -1.0f));
            this.avatarOverlay.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$7(view2);
                }
            });
            this.cameraDrawable = new RLottieDrawable(C2807R.raw.camera, AndroidUtilities.dp(70.0f), AndroidUtilities.dp(70.0f), false, null);
            this.cameraWaitDrawable = new RLottieDrawable(C2807R.raw.camera_wait, AndroidUtilities.dp(70.0f), AndroidUtilities.dp(70.0f), false, null);
            RLottieImageView rLottieImageView = new RLottieImageView(context) { // from class: org.telegram.ui.LoginActivity.LoginActivityRegisterView.3
                @Override // android.view.View
                public void invalidate(int i, int i2, int i3, int i4) {
                    super.invalidate(i, i2, i3, i4);
                    LoginActivityRegisterView.this.avatarOverlay.invalidate();
                }

                @Override // android.view.View
                public void invalidate() {
                    super.invalidate();
                    LoginActivityRegisterView.this.avatarOverlay.invalidate();
                }
            };
            this.avatarEditor = rLottieImageView;
            rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
            this.avatarEditor.setAnimation(this.cameraDrawable);
            this.avatarEditor.setEnabled(false);
            this.avatarEditor.setClickable(false);
            frameLayout.addView(this.avatarEditor, LayoutHelper.createFrame(-1, -1.0f));
            this.avatarEditor.addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC54284(LoginActivity.this));
            RadialProgressView radialProgressView = new RadialProgressView(context) { // from class: org.telegram.ui.LoginActivity.LoginActivityRegisterView.5
                @Override // org.telegram.ui.Components.RadialProgressView, android.view.View
                public void setAlpha(float f) {
                    super.setAlpha(f);
                    LoginActivityRegisterView.this.avatarOverlay.invalidate();
                }
            };
            this.avatarProgressView = radialProgressView;
            radialProgressView.setSize(AndroidUtilities.dp(30.0f));
            this.avatarProgressView.setProgressColor(-1);
            frameLayout.addView(this.avatarProgressView, LayoutHelper.createFrame(-1, -1.0f));
            showAvatarProgress(false, false);
            TextView textView = new TextView(context);
            this.titleTextView = textView;
            textView.setText(LocaleController.getString(C2807R.string.RegistrationProfileInfo));
            this.titleTextView.setTextSize(1, 18.0f);
            this.titleTextView.setTypeface(AndroidUtilities.bold());
            this.titleTextView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.titleTextView.setGravity(1);
            addView(this.titleTextView, LayoutHelper.createLinear(-2, -2, 1, 8, 12, 8, 0));
            TextView textView2 = new TextView(context);
            this.descriptionTextView = textView2;
            textView2.setText(LocaleController.getString("RegisterText2", C2807R.string.RegisterText2));
            this.descriptionTextView.setGravity(1);
            this.descriptionTextView.setTextSize(1, 14.0f);
            this.descriptionTextView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            addView(this.descriptionTextView, LayoutHelper.createLinear(-2, -2, 1, 8, 6, 8, 0));
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.editTextContainer = frameLayout2;
            addView(frameLayout2, LayoutHelper.createLinear(-1, -2, 8.0f, 21.0f, 8.0f, 0.0f));
            OutlineTextContainerView outlineTextContainerView = new OutlineTextContainerView(context);
            this.firstNameOutlineView = outlineTextContainerView;
            outlineTextContainerView.setText(LocaleController.getString(C2807R.string.FirstName));
            EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
            this.firstNameField = editTextBoldCursor;
            editTextBoldCursor.setCursorSize(AndroidUtilities.dp(20.0f));
            this.firstNameField.setCursorWidth(1.5f);
            this.firstNameField.setImeOptions(268435461);
            this.firstNameField.setTextSize(1, 17.0f);
            this.firstNameField.setMaxLines(1);
            this.firstNameField.setInputType(8192);
            this.firstNameField.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda3
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view2, boolean z) {
                    this.f$0.lambda$new$8(view2, z);
                }
            });
            this.firstNameField.setBackground(null);
            this.firstNameField.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
            this.firstNameOutlineView.attachEditText(this.firstNameField);
            this.firstNameOutlineView.addView(this.firstNameField, LayoutHelper.createFrame(-1, -2, 48));
            this.firstNameField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda4
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView3, int i, KeyEvent keyEvent) {
                    return this.f$0.lambda$new$9(textView3, i, keyEvent);
                }
            });
            OutlineTextContainerView outlineTextContainerView2 = new OutlineTextContainerView(context);
            this.lastNameOutlineView = outlineTextContainerView2;
            outlineTextContainerView2.setText(LocaleController.getString(C2807R.string.LastName));
            EditTextBoldCursor editTextBoldCursor2 = new EditTextBoldCursor(context);
            this.lastNameField = editTextBoldCursor2;
            editTextBoldCursor2.setCursorSize(AndroidUtilities.dp(20.0f));
            this.lastNameField.setCursorWidth(1.5f);
            this.lastNameField.setImeOptions(268435462);
            this.lastNameField.setTextSize(1, 17.0f);
            this.lastNameField.setMaxLines(1);
            this.lastNameField.setInputType(8192);
            this.lastNameField.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda5
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view2, boolean z) {
                    this.f$0.lambda$new$10(view2, z);
                }
            });
            this.lastNameField.setBackground(null);
            this.lastNameField.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
            this.lastNameOutlineView.attachEditText(this.lastNameField);
            this.lastNameOutlineView.addView(this.lastNameField, LayoutHelper.createFrame(-1, -2, 48));
            this.lastNameField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda6
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView3, int i, KeyEvent keyEvent) {
                    return this.f$0.lambda$new$11(textView3, i, keyEvent);
                }
            });
            buildEditTextLayout(AndroidUtilities.isSmallScreen());
            TextView textView3 = new TextView(context);
            this.wrongNumber = textView3;
            textView3.setText(LocaleController.getString("CancelRegistration", C2807R.string.CancelRegistration));
            this.wrongNumber.setGravity((LocaleController.isRTL ? 5 : 3) | 1);
            this.wrongNumber.setTextSize(1, 14.0f);
            this.wrongNumber.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.wrongNumber.setPadding(0, AndroidUtilities.dp(24.0f), 0, 0);
            this.wrongNumber.setVisibility(8);
            addView(this.wrongNumber, LayoutHelper.createLinear(-2, -2, (LocaleController.isRTL ? 5 : 3) | 48, 0, 20, 0, 0));
            this.wrongNumber.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$12(view2);
                }
            });
            FrameLayout frameLayout3 = new FrameLayout(context);
            addView(frameLayout3, LayoutHelper.createLinear(-1, -1, 83));
            TextView textView4 = new TextView(context);
            this.privacyView = textView4;
            textView4.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
            this.privacyView.setTextSize(1, AndroidUtilities.isSmallScreen() ? 13.0f : 14.0f);
            this.privacyView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            this.privacyView.setGravity(16);
            frameLayout3.addView(this.privacyView, LayoutHelper.createFrame(-2, 56.0f, 83, 14.0f, 0.0f, 70.0f, 32.0f));
            VerticalPositionAutoAnimator.attach(this.privacyView);
            String string = LocaleController.getString("TermsOfServiceLogin", C2807R.string.TermsOfServiceLogin);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
            int iIndexOf = string.indexOf(42);
            int iLastIndexOf = string.lastIndexOf(42);
            if (iIndexOf != -1 && iLastIndexOf != -1 && iIndexOf != iLastIndexOf) {
                spannableStringBuilder.replace(iLastIndexOf, iLastIndexOf + 1, (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET);
                spannableStringBuilder.replace(iIndexOf, iIndexOf + 1, (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET);
                spannableStringBuilder.setSpan(new LinkSpan(), iIndexOf, iLastIndexOf - 1, 33);
            }
            this.privacyView.setText(spannableStringBuilder);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$7(View view) {
            this.imageUpdater.openMenu(this.avatar != null, new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$4();
                }
            }, new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda13
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.f$0.lambda$new$6(dialogInterface);
                }
            }, 0);
            this.isCameraWaitAnimationAllowed = false;
            this.avatarEditor.setAnimation(this.cameraDrawable);
            this.cameraDrawable.setCurrentFrame(0);
            this.cameraDrawable.setCustomEndFrame(43);
            this.avatarEditor.playAnimation();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4() {
            this.avatar = null;
            this.avatarBig = null;
            showAvatarProgress(false, true);
            this.avatarImage.setImage((ImageLocation) null, (String) null, this.avatarDrawable, (Object) null);
            this.avatarEditor.setAnimation(this.cameraDrawable);
            this.cameraDrawable.setCurrentFrame(0);
            this.isCameraWaitAnimationAllowed = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$6(DialogInterface dialogInterface) {
            boolean zIsUploadingImage = this.imageUpdater.isUploadingImage();
            RLottieImageView rLottieImageView = this.avatarEditor;
            if (!zIsUploadingImage) {
                rLottieImageView.setAnimation(this.cameraDrawable);
                this.cameraDrawable.setCustomEndFrame(86);
                this.avatarEditor.setOnAnimationEndListener(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda18
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$5();
                    }
                });
                this.avatarEditor.playAnimation();
                return;
            }
            rLottieImageView.setAnimation(this.cameraDrawable);
            this.cameraDrawable.setCurrentFrame(0, false);
            this.isCameraWaitAnimationAllowed = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$5() {
            this.isCameraWaitAnimationAllowed = true;
        }

        /* JADX INFO: renamed from: org.telegram.ui.LoginActivity$LoginActivityRegisterView$4 */
        public class ViewOnAttachStateChangeListenerC54284 implements View.OnAttachStateChangeListener {
            private boolean isAttached;
            final /* synthetic */ LoginActivity val$this$0;
            private long lastRun = System.currentTimeMillis();
            private Runnable cameraWaitCallback = new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$$2();
                }
            };

            public ViewOnAttachStateChangeListenerC54284(LoginActivity loginActivity) {
                this.val$this$0 = loginActivity;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$$2() {
                if (this.isAttached) {
                    if (LoginActivityRegisterView.this.isCameraWaitAnimationAllowed && System.currentTimeMillis() - this.lastRun >= NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS) {
                        LoginActivityRegisterView.this.avatarEditor.setAnimation(LoginActivityRegisterView.this.cameraWaitDrawable);
                        LoginActivityRegisterView.this.cameraWaitDrawable.setCurrentFrame(0, false);
                        LoginActivityRegisterView.this.cameraWaitDrawable.setOnAnimationEndListener(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$4$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$$1();
                            }
                        });
                        LoginActivityRegisterView.this.avatarEditor.playAnimation();
                        this.lastRun = System.currentTimeMillis();
                    }
                    LoginActivityRegisterView.this.avatarEditor.postDelayed(this.cameraWaitCallback, 1000L);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$$1() {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$4$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$$0();
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$$0() {
                LoginActivityRegisterView.this.cameraDrawable.setCurrentFrame(0, false);
                LoginActivityRegisterView.this.avatarEditor.setAnimation(LoginActivityRegisterView.this.cameraDrawable);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                this.isAttached = true;
                view.post(this.cameraWaitCallback);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                this.isAttached = false;
                view.removeCallbacks(this.cameraWaitCallback);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$8(View view, boolean z) {
            this.firstNameOutlineView.animateSelection(z ? 1.0f : 0.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$new$9(TextView textView, int i, KeyEvent keyEvent) {
            if (i != 5) {
                return false;
            }
            this.lastNameField.requestFocus();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$10(View view, boolean z) {
            this.lastNameOutlineView.animateSelection(z ? 1.0f : 0.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$new$11(TextView textView, int i, KeyEvent keyEvent) {
            if (i != 6 && i != 5) {
                return false;
            }
            lambda$onNextPressed$17(null);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$12(View view) {
            if (LoginActivity.this.radialProgressView.getTag() != null) {
                return;
            }
            onBackPressed(false);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void updateColors() {
            this.avatarDrawable.invalidateSelf();
            TextView textView = this.titleTextView;
            int i = Theme.key_windowBackgroundWhiteBlackText;
            textView.setTextColor(Theme.getColor(i));
            TextView textView2 = this.descriptionTextView;
            int i2 = Theme.key_windowBackgroundWhiteGrayText6;
            textView2.setTextColor(Theme.getColor(i2));
            this.firstNameField.setTextColor(Theme.getColor(i));
            EditTextBoldCursor editTextBoldCursor = this.firstNameField;
            int i3 = Theme.key_windowBackgroundWhiteInputFieldActivated;
            editTextBoldCursor.setCursorColor(Theme.getColor(i3));
            this.lastNameField.setTextColor(Theme.getColor(i));
            this.lastNameField.setCursorColor(Theme.getColor(i3));
            this.wrongNumber.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4));
            this.privacyView.setTextColor(Theme.getColor(i2));
            this.privacyView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText));
            this.firstNameOutlineView.updateColor();
            this.lastNameOutlineView.updateColor();
        }

        private void buildEditTextLayout(boolean z) {
            boolean zHasFocus = this.firstNameField.hasFocus();
            boolean zHasFocus2 = this.lastNameField.hasFocus();
            this.editTextContainer.removeAllViews();
            if (z) {
                LinearLayout linearLayout = new LinearLayout(LoginActivity.this.getParentActivity());
                linearLayout.setOrientation(0);
                this.firstNameOutlineView.setText(LocaleController.getString(C2807R.string.FirstNameSmall));
                this.lastNameOutlineView.setText(LocaleController.getString(C2807R.string.LastNameSmall));
                linearLayout.addView(this.firstNameOutlineView, LayoutHelper.createLinear(0, -2, 1.0f, 0, 0, 8, 0));
                linearLayout.addView(this.lastNameOutlineView, LayoutHelper.createLinear(0, -2, 1.0f, 8, 0, 0, 0));
                this.editTextContainer.addView(linearLayout);
                if (zHasFocus) {
                    this.firstNameField.requestFocus();
                    AndroidUtilities.showKeyboard(this.firstNameField);
                    return;
                } else {
                    if (zHasFocus2) {
                        this.lastNameField.requestFocus();
                        AndroidUtilities.showKeyboard(this.lastNameField);
                        return;
                    }
                    return;
                }
            }
            this.firstNameOutlineView.setText(LocaleController.getString(C2807R.string.FirstName));
            this.lastNameOutlineView.setText(LocaleController.getString(C2807R.string.LastName));
            this.editTextContainer.addView(this.firstNameOutlineView, LayoutHelper.createFrame(-1, -2.0f, 48, 8.0f, 0.0f, 8.0f, 0.0f));
            this.editTextContainer.addView(this.lastNameOutlineView, LayoutHelper.createFrame(-1, -2.0f, 48, 8.0f, 82.0f, 8.0f, 0.0f));
        }

        @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
        public void didUploadPhoto(TLRPC.InputFile inputFile, TLRPC.InputFile inputFile2, double d, String str, final TLRPC.PhotoSize photoSize, final TLRPC.PhotoSize photoSize2, boolean z, TLRPC.VideoSize videoSize) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$didUploadPhoto$13(photoSize2, photoSize);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didUploadPhoto$13(TLRPC.PhotoSize photoSize, TLRPC.PhotoSize photoSize2) {
            TLRPC.FileLocation fileLocation = photoSize.location;
            this.avatar = fileLocation;
            this.avatarBig = photoSize2.location;
            this.avatarImage.setImage(ImageLocation.getForLocal(fileLocation), "50_50", this.avatarDrawable, (Object) null);
        }

        private void showAvatarProgress(final boolean z, boolean z2) {
            if (this.avatarEditor == null) {
                return;
            }
            AnimatorSet animatorSet = this.avatarAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.avatarAnimation = null;
            }
            if (z2) {
                this.avatarAnimation = new AnimatorSet();
                Property property = View.ALPHA;
                if (z) {
                    this.avatarProgressView.setVisibility(0);
                    this.avatarAnimation.playTogether(ObjectAnimator.ofFloat(this.avatarEditor, (Property<RLottieImageView, Float>) property, 0.0f), ObjectAnimator.ofFloat(this.avatarProgressView, (Property<RadialProgressView, Float>) property, 1.0f));
                } else {
                    this.avatarEditor.setVisibility(0);
                    this.avatarAnimation.playTogether(ObjectAnimator.ofFloat(this.avatarEditor, (Property<RLottieImageView, Float>) property, 1.0f), ObjectAnimator.ofFloat(this.avatarProgressView, (Property<RadialProgressView, Float>) property, 0.0f));
                }
                this.avatarAnimation.setDuration(180L);
                this.avatarAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.LoginActivity.LoginActivityRegisterView.6
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (LoginActivityRegisterView.this.avatarAnimation == null || LoginActivityRegisterView.this.avatarEditor == null) {
                            return;
                        }
                        boolean z3 = z;
                        LoginActivityRegisterView loginActivityRegisterView = LoginActivityRegisterView.this;
                        if (z3) {
                            loginActivityRegisterView.avatarEditor.setVisibility(4);
                        } else {
                            loginActivityRegisterView.avatarProgressView.setVisibility(4);
                        }
                        LoginActivityRegisterView.this.avatarAnimation = null;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        LoginActivityRegisterView.this.avatarAnimation = null;
                    }
                });
                this.avatarAnimation.start();
                return;
            }
            RLottieImageView rLottieImageView = this.avatarEditor;
            if (z) {
                rLottieImageView.setAlpha(1.0f);
                this.avatarEditor.setVisibility(4);
                this.avatarProgressView.setAlpha(1.0f);
                this.avatarProgressView.setVisibility(0);
                return;
            }
            rLottieImageView.setAlpha(1.0f);
            this.avatarEditor.setVisibility(0);
            this.avatarProgressView.setAlpha(0.0f);
            this.avatarProgressView.setVisibility(4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBackPressed$14(AlertDialog alertDialog, int i) {
            onBackPressed(true);
            LoginActivity.this.setPage(0, true, null, true);
            hidePrivacyView();
        }

        @Override // org.telegram.ui.Components.SlideView
        public boolean onBackPressed(boolean z) {
            LoginActivity loginActivity = LoginActivity.this;
            if (!z) {
                AlertDialog.Builder builder = new AlertDialog.Builder(loginActivity.getParentActivity());
                builder.setTitle(LocaleController.getString(C2807R.string.Warning));
                builder.setMessage(LocaleController.getString("AreYouSureRegistration", C2807R.string.AreYouSureRegistration));
                builder.setNegativeButton(LocaleController.getString("Stop", C2807R.string.Stop), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda0
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        this.f$0.lambda$onBackPressed$14(alertDialog, i);
                    }
                });
                builder.setPositiveButton(LocaleController.getString("Continue", C2807R.string.Continue), null);
                LoginActivity.this.showDialog(builder.create());
                return false;
            }
            loginActivity.needHideProgress(true);
            this.nextPressed = false;
            this.currentParams = null;
            return true;
        }

        @Override // org.telegram.ui.Components.SlideView
        public String getHeaderName() {
            return LocaleController.getString("YourName", C2807R.string.YourName);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onCancelPressed() {
            this.nextPressed = false;
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onShow() {
            super.onShow();
            if (this.privacyView != null) {
                boolean z = LoginActivity.this.restoringState;
                TextView textView = this.privacyView;
                if (z) {
                    textView.setAlpha(1.0f);
                } else {
                    textView.setAlpha(0.0f);
                    this.privacyView.animate().alpha(1.0f).setDuration(200L).setStartDelay(300L).setInterpolator(AndroidUtilities.decelerateInterpolator).start();
                }
            }
            EditTextBoldCursor editTextBoldCursor = this.firstNameField;
            if (editTextBoldCursor != null) {
                editTextBoldCursor.requestFocus();
                EditTextBoldCursor editTextBoldCursor2 = this.firstNameField;
                editTextBoldCursor2.setSelection(editTextBoldCursor2.length());
                AndroidUtilities.showKeyboard(this.firstNameField);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onShow$15();
                }
            }, LoginActivity.SHOW_DELAY);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onShow$15() {
            EditTextBoldCursor editTextBoldCursor = this.firstNameField;
            if (editTextBoldCursor != null) {
                editTextBoldCursor.requestFocus();
                EditTextBoldCursor editTextBoldCursor2 = this.firstNameField;
                editTextBoldCursor2.setSelection(editTextBoldCursor2.length());
                AndroidUtilities.showKeyboard(this.firstNameField);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void setParams(Bundle bundle, boolean z) {
            if (bundle == null) {
                return;
            }
            this.firstNameField.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.lastNameField.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.requestPhone = bundle.getString("phoneFormated");
            this.phoneHash = bundle.getString("phoneHash");
            this.currentParams = bundle;
        }

        @Override // org.telegram.ui.Components.SlideView
        /* JADX INFO: renamed from: onNextPressed */
        public void lambda$onNextPressed$17(String str) {
            if (this.nextPressed) {
                return;
            }
            if (LoginActivity.this.currentTermsOfService != null && LoginActivity.this.currentTermsOfService.popup) {
                showTermsOfService(true);
                return;
            }
            if (this.firstNameField.length() == 0) {
                LoginActivity.this.onFieldError(this.firstNameOutlineView, true);
                return;
            }
            this.nextPressed = true;
            TLRPC.TL_auth_signUp tL_auth_signUp = new TLRPC.TL_auth_signUp();
            tL_auth_signUp.phone_code_hash = this.phoneHash;
            tL_auth_signUp.phone_number = this.requestPhone;
            tL_auth_signUp.first_name = this.firstNameField.getText().toString();
            tL_auth_signUp.last_name = this.lastNameField.getText().toString();
            LoginActivity.this.needShowProgress(0);
            ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(tL_auth_signUp, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda8
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$onNextPressed$19(tLObject, tL_error);
                }
            }, 10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$19(final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNextPressed$18(tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$18(final TLObject tLObject, TLRPC.TL_error tL_error) {
            this.nextPressed = false;
            if (tLObject instanceof TLRPC.TL_auth_authorization) {
                hidePrivacyView();
                LoginActivity.this.showDoneButton(false, true);
                postDelayed(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda17
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onNextPressed$17(tLObject);
                    }
                }, 150L);
                return;
            }
            LoginActivity.this.needHideProgress(false);
            if (tL_error.text.contains("PHONE_NUMBER_INVALID")) {
                LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("InvalidPhoneNumber", C2807R.string.InvalidPhoneNumber));
                return;
            }
            if (tL_error.text.contains("PHONE_CODE_EMPTY") || tL_error.text.contains("PHONE_CODE_INVALID")) {
                LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("InvalidCode", C2807R.string.InvalidCode));
                return;
            }
            if (tL_error.text.contains("PHONE_CODE_EXPIRED")) {
                onBackPressed(true);
                LoginActivity.this.setPage(0, true, null, true);
                LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("CodeExpired", C2807R.string.CodeExpired));
            } else {
                if (tL_error.text.contains("FIRSTNAME_INVALID")) {
                    LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("InvalidFirstName", C2807R.string.InvalidFirstName));
                    return;
                }
                boolean zContains = tL_error.text.contains("LASTNAME_INVALID");
                LoginActivity loginActivity = LoginActivity.this;
                if (zContains) {
                    loginActivity.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("InvalidLastName", C2807R.string.InvalidLastName));
                } else {
                    loginActivity.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), tL_error.text);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$17(TLObject tLObject) {
            LoginActivity.this.needHideProgress(false, false);
            AndroidUtilities.hideKeyboard(LoginActivity.this.fragmentView.findFocus());
            LoginActivity.this.onAuthSuccess((TLRPC.TL_auth_authorization) tLObject, true);
            final TLRPC.FileLocation fileLocation = this.avatarBig;
            if (fileLocation != null) {
                Utilities.cacheClearQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda19
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onNextPressed$16(fileLocation);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$16(TLRPC.FileLocation fileLocation) {
            MessagesController.getInstance(((BaseFragment) LoginActivity.this).currentAccount).uploadAndApplyUserAvatar(fileLocation);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void saveStateParams(Bundle bundle) {
            String string = this.firstNameField.getText().toString();
            if (string.length() != 0) {
                bundle.putString("registerview_first", string);
            }
            String string2 = this.lastNameField.getText().toString();
            if (string2.length() != 0) {
                bundle.putString("registerview_last", string2);
            }
            if (LoginActivity.this.currentTermsOfService != null) {
                SerializedData serializedData = new SerializedData(LoginActivity.this.currentTermsOfService.getObjectSize());
                LoginActivity.this.currentTermsOfService.serializeToStream(serializedData);
                bundle.putString("terms", Base64.encodeToString(serializedData.toByteArray(), 0));
                serializedData.cleanup();
            }
            Bundle bundle2 = this.currentParams;
            if (bundle2 != null) {
                bundle.putBundle("registerview_params", bundle2);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void restoreStateParams(Bundle bundle) {
            byte[] bArrDecode;
            Bundle bundle2 = bundle.getBundle("registerview_params");
            this.currentParams = bundle2;
            if (bundle2 != null) {
                setParams(bundle2, true);
            }
            try {
                String string = bundle.getString("terms");
                if (string != null && (bArrDecode = Base64.decode(string, 0)) != null) {
                    SerializedData serializedData = new SerializedData(bArrDecode);
                    LoginActivity.this.currentTermsOfService = TLRPC.TL_help_termsOfService.TLdeserialize(serializedData, serializedData.readInt32(false), false);
                    serializedData.cleanup();
                }
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
            String string2 = bundle.getString("registerview_first");
            if (string2 != null) {
                this.firstNameField.setText(string2);
            }
            String string3 = bundle.getString("registerview_last");
            if (string3 != null) {
                this.lastNameField.setText(string3);
            }
        }

        private void hidePrivacyView() {
            this.privacyView.animate().alpha(0.0f).setDuration(150L).setStartDelay(0L).setInterpolator(AndroidUtilities.accelerateInterpolator).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean showKeyboard(View view) {
        if (isCustomKeyboardVisible()) {
            return true;
        }
        return AndroidUtilities.showKeyboard(view);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public AnimatorSet onCustomTransitionAnimation(boolean z, final Runnable runnable) {
        if (!z || this.introView == null) {
            return null;
        }
        if (this.fragmentView.getParent() instanceof View) {
            ((View) this.fragmentView.getParent()).setTranslationX(0.0f);
        }
        final TransformableLoginButtonView transformableLoginButtonView = new TransformableLoginButtonView(this.fragmentView.getContext());
        transformableLoginButtonView.setButtonText(this.startMessagingButton.getPaint(), this.startMessagingButton.getText().toString());
        final int width = this.startMessagingButton.getWidth();
        final int height = this.startMessagingButton.getHeight();
        final int i = this.floatingButtonIcon.getLayoutParams().width;
        final FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(width, height);
        transformableLoginButtonView.setLayoutParams(layoutParams);
        int[] iArr = new int[2];
        this.fragmentView.getLocationInWindow(iArr);
        int i2 = iArr[0];
        int i3 = iArr[1];
        this.startMessagingButton.getLocationInWindow(iArr);
        final float f = iArr[0] - i2;
        final float f2 = iArr[1] - i3;
        transformableLoginButtonView.setTranslationX(f);
        transformableLoginButtonView.setTranslationY(f2);
        final int width2 = (((getParentLayout().getView().getWidth() - this.floatingButtonIcon.getLayoutParams().width) - AndroidUtilities.dp(20.0f)) - getParentLayout().getView().getPaddingLeft()) - getParentLayout().getView().getPaddingRight();
        final int height2 = ((((getParentLayout().getView().getHeight() - this.floatingButtonIcon.getLayoutParams().height) - AndroidUtilities.dp(14.0f)) - (isCustomKeyboardVisible() ? AndroidUtilities.dp(230.0f) : 0)) - getParentLayout().getView().getPaddingTop()) - getParentLayout().getView().getPaddingBottom();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.LoginActivity.11
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                LoginActivity.this.floatingButton.setButtonVisible(false, false);
                LoginActivity.this.keyboardLinearLayout.setAlpha(0.0f);
                LoginActivity.this.fragmentView.setBackgroundColor(0);
                LoginActivity.this.startMessagingButton.setVisibility(4);
                ((FrameLayout) LoginActivity.this.fragmentView).addView(transformableLoginButtonView);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                LoginActivity.this.keyboardLinearLayout.setAlpha(1.0f);
                LoginActivity.this.startMessagingButton.setVisibility(0);
                LoginActivity.this.fragmentView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                LoginActivity.this.floatingButton.setButtonVisible(true, false);
                ((FrameLayout) LoginActivity.this.fragmentView).removeView(transformableLoginButtonView);
                if (LoginActivity.this.animationFinishCallback != null) {
                    AndroidUtilities.runOnUIThread(LoginActivity.this.animationFinishCallback);
                    LoginActivity.this.animationFinishCallback = null;
                }
                LoginActivity.this.isAnimatingIntro = false;
                runnable.run();
            }
        });
        final int color = Theme.getColor(Theme.key_windowBackgroundWhite);
        final int iAlpha = Color.alpha(color);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda11
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$onCustomTransitionAnimation$19(color, iAlpha, layoutParams, width, i, height, transformableLoginButtonView, f, width2, f2, height2, valueAnimator);
            }
        });
        valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(300L);
        animatorSet.playTogether(valueAnimatorOfFloat);
        animatorSet.start();
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCustomTransitionAnimation$19(int i, int i2, ViewGroup.MarginLayoutParams marginLayoutParams, int i3, int i4, int i5, TransformableLoginButtonView transformableLoginButtonView, float f, int i6, float f2, int i7, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.keyboardLinearLayout.setAlpha(fFloatValue);
        this.fragmentView.setBackgroundColor(ColorUtils.setAlphaComponent(i, (int) (i2 * fFloatValue)));
        float f3 = 1.0f - fFloatValue;
        this.slideViewsContainer.setTranslationY(AndroidUtilities.dp(20.0f) * f3);
        if (!isCustomKeyboardForceDisabled()) {
            this.keyboardView.setTranslationY(r4.getLayoutParams().height * f3);
            this.floatingButton.setTranslationY(this.keyboardView.getLayoutParams().height * f3);
        }
        this.introView.setTranslationY((-AndroidUtilities.dp(20.0f)) * fFloatValue);
        float f4 = (f3 * 0.05f) + 0.95f;
        this.introView.setScaleX(f4);
        this.introView.setScaleY(f4);
        marginLayoutParams.width = (int) (i3 + ((i4 - i3) * fFloatValue));
        marginLayoutParams.height = (int) (i5 + ((i4 - i5) * fFloatValue));
        transformableLoginButtonView.requestLayout();
        transformableLoginButtonView.setProgress(fFloatValue);
        transformableLoginButtonView.setTranslationX(f + ((i6 - f) * fFloatValue));
        transformableLoginButtonView.setTranslationY(f2 + ((i7 - f2) * fFloatValue));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColors() {
        ViewOutlineProvider viewOutlineProviderBoundsWithPaddingRoundRect;
        this.fragmentView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        this.backButtonView.setColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        ImageView imageView = this.backButtonView;
        int i = Theme.key_listSelector;
        imageView.setBackground(Theme.createSelectorDrawable(Theme.getColor(i)));
        this.proxyButtonView.setColorFilter(Theme.getColor(Theme.key_actionBarDefaultIcon));
        this.proxyButtonView.setBackground(Theme.createSelectorDrawable(Theme.getColor(i)));
        RadialProgressView radialProgressView = this.radialProgressView;
        int i2 = Theme.key_chats_actionBackground;
        radialProgressView.setProgressColor(Theme.getColor(i2));
        this.floatingButton.updateColors();
        this.floatingButton.setBackground(UIUtil.createFabBackground(56, Theme.getColor(Theme.key_featuredStickers_addButton), Theme.getColor(Theme.key_featuredStickers_addButtonPressed)));
        FragmentFloatingButton fragmentFloatingButton = this.floatingButton;
        if (ExteraConfig.getSquareFab()) {
            viewOutlineProviderBoundsWithPaddingRoundRect = ViewOutlineProviderImpl.boundsWithPaddingRoundRect(0, AndroidUtilities.dp(16.0f));
        } else {
            viewOutlineProviderBoundsWithPaddingRoundRect = ViewOutlineProviderImpl.BOUNDS_OVAL;
        }
        fragmentFloatingButton.setOutlineProvider(viewOutlineProviderBoundsWithPaddingRoundRect);
        this.floatingButtonIcon.setColor(Theme.getColor(Theme.key_chats_actionIcon));
        this.floatingButtonIcon.setBackgroundColor(Theme.getColor(i2));
        for (SlideView slideView : this.views) {
            slideView.updateColors();
        }
        this.keyboardView.updateColors();
        PhoneNumberConfirmView phoneNumberConfirmView = this.phoneNumberConfirmView;
        if (phoneNumberConfirmView != null) {
            phoneNumberConfirmView.updateColors();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        return SimpleThemeDescription.createThemeDescriptions(new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.updateColors();
            }
        }, Theme.key_windowBackgroundWhiteBlackText, Theme.key_windowBackgroundWhiteGrayText6, Theme.key_windowBackgroundWhiteHintText, Theme.key_listSelector, Theme.key_chats_actionBackground, Theme.key_chats_actionIcon, Theme.key_windowBackgroundWhiteInputField, Theme.key_windowBackgroundWhiteInputFieldActivated, Theme.key_windowBackgroundWhiteValueText, Theme.key_text_RedBold, Theme.key_windowBackgroundWhiteGrayText, Theme.key_checkbox, Theme.key_windowBackgroundWhiteBlueText4, Theme.key_changephoneinfo_image2, Theme.key_chats_actionPressedBackground, Theme.key_text_RedRegular, Theme.key_windowBackgroundWhiteLinkText, Theme.key_checkboxSquareUnchecked, Theme.key_checkboxSquareBackground, Theme.key_checkboxSquareCheck, Theme.key_dialogBackground, Theme.key_dialogTextGray2, Theme.key_dialogTextBlack, Theme.key_actionBarDefaultIcon, Theme.key_featuredStickers_addButton, Theme.key_featuredStickers_addButtonPressed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryResetAccount(final String str, final String str2, final String str3) {
        if (this.radialProgressView.getTag() != null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setMessage(LocaleController.getString("ResetMyAccountWarningText", C2807R.string.ResetMyAccountWarningText));
        builder.setTitle(LocaleController.getString("ResetMyAccountWarning", C2807R.string.ResetMyAccountWarning));
        builder.setPositiveButton(LocaleController.getString("ResetMyAccountWarningReset", C2807R.string.ResetMyAccountWarningReset), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda26
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$tryResetAccount$22(str, str2, str3, alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C2807R.string.Cancel), null);
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$tryResetAccount$22(final String str, final String str2, final String str3, AlertDialog alertDialog, int i) {
        needShowProgress(0);
        TL_account.deleteAccount deleteaccount = new TL_account.deleteAccount();
        deleteaccount.reason = "Forgot password";
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(deleteaccount, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda27
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$tryResetAccount$21(str, str2, str3, tLObject, tL_error);
            }
        }, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$tryResetAccount$21(final String str, final String str2, final String str3, TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$tryResetAccount$20(tL_error, str, str2, str3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$tryResetAccount$20(TLRPC.TL_error tL_error, String str, String str2, String str3) {
        needHideProgress(false);
        if (tL_error == null) {
            if (str == null || str2 == null || str3 == null) {
                setPage(0, true, null, true);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("phoneFormated", str);
            bundle.putString("phoneHash", str2);
            bundle.putString("code", str3);
            setPage(5, true, bundle, false);
            return;
        }
        if (tL_error.text.equals("2FA_RECENT_CONFIRM")) {
            needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("ResetAccountCancelledAlert", C2807R.string.ResetAccountCancelledAlert));
            return;
        }
        if (tL_error.text.startsWith("2FA_CONFIRM_WAIT_")) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("phoneFormated", str);
            bundle2.putString("phoneHash", str2);
            bundle2.putString("code", str3);
            bundle2.putInt("startTime", ConnectionsManager.getInstance(this.currentAccount).getCurrentTime());
            bundle2.putInt("waitTime", Utilities.parseInt((CharSequence) tL_error.text.replace("2FA_CONFIRM_WAIT_", _UrlKt.FRAGMENT_ENCODE_SET)));
            setPage(8, true, bundle2, false);
            return;
        }
        needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), tL_error.text);
    }

    public static final class PhoneNumberConfirmView extends FrameLayout {
        private View blurredView;
        private IConfirmDialogCallback callback;
        private TextView confirmMessageView;
        private TextView confirmTextView;
        private View dimmView;
        private boolean dismissed;
        private TextView editTextView;
        private FragmentFloatingButton fabButton;
        private View fabContainer;
        private TransformableLoginButtonView fabTransform;
        private ViewGroup fragmentView;
        private TextView numberView;
        private final PointF pointF;
        private FrameLayout popupLayout;

        public interface IConfirmDialogCallback {
            void onConfirmPressed(PhoneNumberConfirmView phoneNumberConfirmView, TextView textView);

            void onDismiss(PhoneNumberConfirmView phoneNumberConfirmView);

            void onEditPressed(PhoneNumberConfirmView phoneNumberConfirmView, TextView textView);

            void onFabPressed(PhoneNumberConfirmView phoneNumberConfirmView, TransformableLoginButtonView transformableLoginButtonView);
        }

        private PhoneNumberConfirmView(Context context, ViewGroup viewGroup, View view, String str, final IConfirmDialogCallback iConfirmDialogCallback) {
            super(context);
            this.pointF = new PointF();
            this.fragmentView = viewGroup;
            this.fabContainer = view;
            this.callback = iConfirmDialogCallback;
            View view2 = new View(getContext());
            this.blurredView = view2;
            view2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$PhoneNumberConfirmView$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    this.f$0.lambda$new$0(view3);
                }
            });
            addView(this.blurredView, LayoutHelper.createFrame(-1, -1.0f));
            View view3 = new View(getContext());
            this.dimmView = view3;
            view3.setBackgroundColor(TLObject.FLAG_30);
            this.dimmView.setAlpha(0.0f);
            addView(this.dimmView, LayoutHelper.createFrame(-1, -1.0f));
            TransformableLoginButtonView transformableLoginButtonView = new TransformableLoginButtonView(getContext());
            this.fabTransform = transformableLoginButtonView;
            transformableLoginButtonView.setTransformType(1);
            this.fabTransform.setDrawBackground(false);
            FragmentFloatingButton fragmentFloatingButton = new FragmentFloatingButton(context, null);
            this.fabButton = fragmentFloatingButton;
            fragmentFloatingButton.addView(this.fabTransform, LayoutHelper.createFrame(56, 56, 17));
            this.fabButton.addAdditionalView(this.fabTransform);
            this.fabButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$PhoneNumberConfirmView$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    this.f$0.lambda$new$1(iConfirmDialogCallback, view4);
                }
            });
            this.fabButton.setContentDescription(LocaleController.getString(C2807R.string.Done));
            addView(this.fabButton, LayoutHelper.createFrame(56, 56, 51));
            FrameLayout frameLayout = new FrameLayout(context);
            this.popupLayout = frameLayout;
            addView(frameLayout, LayoutHelper.createFrame(-1, 140.0f, 49, 24.0f, 0.0f, 24.0f, 0.0f));
            TextView textView = new TextView(context);
            this.confirmMessageView = textView;
            textView.setText(LocaleController.getString(C2807R.string.ConfirmCorrectNumber));
            this.confirmMessageView.setTextSize(1, 14.0f);
            this.confirmMessageView.setSingleLine();
            this.popupLayout.addView(this.confirmMessageView, LayoutHelper.createFrame(-1, -2.0f, LocaleController.isRTL ? 5 : 3, 24.0f, 20.0f, 24.0f, 0.0f));
            TextView textView2 = new TextView(context);
            this.numberView = textView2;
            textView2.setText(str);
            this.numberView.setTextSize(1, 18.0f);
            this.numberView.setTypeface(AndroidUtilities.bold());
            this.numberView.setSingleLine();
            this.popupLayout.addView(this.numberView, LayoutHelper.createFrame(-1, -2.0f, LocaleController.isRTL ? 5 : 3, 24.0f, 48.0f, 24.0f, 0.0f));
            int iDp = AndroidUtilities.dp(16.0f);
            TextView textView3 = new TextView(context);
            this.editTextView = textView3;
            textView3.setText(LocaleController.getString(C2807R.string.Edit));
            this.editTextView.setSingleLine();
            this.editTextView.setTextSize(1, 16.0f);
            TextView textView4 = this.editTextView;
            int iDp2 = AndroidUtilities.dp(6.0f);
            int i = Theme.key_changephoneinfo_image2;
            textView4.setBackground(Theme.getRoundRectSelectorDrawable(iDp2, Theme.getColor(i)));
            this.editTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$PhoneNumberConfirmView$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    this.f$0.lambda$new$2(iConfirmDialogCallback, view4);
                }
            });
            TextView textView5 = this.editTextView;
            Typeface typeface = Typeface.DEFAULT_BOLD;
            textView5.setTypeface(typeface);
            int i2 = iDp / 2;
            this.editTextView.setPadding(iDp, i2, iDp, i2);
            this.popupLayout.addView(this.editTextView, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 5 : 3) | 80, 8.0f, 8.0f, 8.0f, 8.0f));
            TextView textView6 = new TextView(context);
            this.confirmTextView = textView6;
            textView6.setText(LocaleController.getString(C2807R.string.CheckPhoneNumberYes));
            this.confirmTextView.setSingleLine();
            this.confirmTextView.setTextSize(1, 16.0f);
            this.confirmTextView.setBackground(Theme.getRoundRectSelectorDrawable(AndroidUtilities.dp(6.0f), Theme.getColor(i)));
            this.confirmTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$PhoneNumberConfirmView$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    this.f$0.lambda$new$3(iConfirmDialogCallback, view4);
                }
            });
            this.confirmTextView.setTypeface(typeface);
            this.confirmTextView.setPadding(iDp, i2, iDp, i2);
            this.popupLayout.addView(this.confirmTextView, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 3 : 5) | 80, 8.0f, 8.0f, 8.0f, 8.0f));
            updateFabPosition();
            updateColors();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(IConfirmDialogCallback iConfirmDialogCallback, View view) {
            iConfirmDialogCallback.onFabPressed(this, this.fabTransform);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(IConfirmDialogCallback iConfirmDialogCallback, View view) {
            iConfirmDialogCallback.onEditPressed(this, this.editTextView);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(IConfirmDialogCallback iConfirmDialogCallback, View view) {
            iConfirmDialogCallback.onConfirmPressed(this, this.confirmTextView);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateFabPosition() {
            ViewPositionWatcher.computeCoordinatesInParent(this.fabContainer, this.fragmentView, this.pointF);
            this.fabButton.setTranslationX(this.pointF.x);
            this.fabButton.setTranslationY(this.pointF.y);
            requestLayout();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateColors() {
            this.fabTransform.setColor(Theme.getColor(Theme.key_chats_actionIcon));
            this.fabTransform.setBackgroundColor(Theme.getColor(Theme.key_chats_actionBackground));
            this.popupLayout.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(12.0f), Theme.getColor(Theme.key_dialogBackground)));
            this.confirmMessageView.setTextColor(Theme.getColor(Theme.key_dialogTextGray2));
            this.numberView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
            TextView textView = this.editTextView;
            int i = Theme.key_changephoneinfo_image2;
            textView.setTextColor(Theme.getColor(i));
            this.confirmTextView.setTextColor(Theme.getColor(i));
            this.fabButton.updateColors();
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            int measuredHeight = this.popupLayout.getMeasuredHeight();
            int translationY = (int) (this.fabButton.getTranslationY() - AndroidUtilities.dp(32.0f));
            FrameLayout frameLayout = this.popupLayout;
            frameLayout.layout(frameLayout.getLeft(), translationY - measuredHeight, this.popupLayout.getRight(), translationY);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void show() {
            ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(250L);
            duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.LoginActivity.PhoneNumberConfirmView.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    PhoneNumberConfirmView.this.fabContainer.setVisibility(8);
                    int measuredWidth = (int) (PhoneNumberConfirmView.this.fragmentView.getMeasuredWidth() / 10.0f);
                    int measuredHeight = (int) (PhoneNumberConfirmView.this.fragmentView.getMeasuredHeight() / 10.0f);
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    canvas.scale(0.1f, 0.1f);
                    canvas.drawColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    PhoneNumberConfirmView.this.fragmentView.draw(canvas);
                    Utilities.stackBlurBitmap(bitmapCreateBitmap, Math.max(8, Math.max(measuredWidth, measuredHeight) / 150));
                    PhoneNumberConfirmView.this.blurredView.setBackground(new BitmapDrawable(PhoneNumberConfirmView.this.getContext().getResources(), bitmapCreateBitmap));
                    PhoneNumberConfirmView.this.blurredView.setAlpha(0.0f);
                    PhoneNumberConfirmView.this.blurredView.setVisibility(0);
                    PhoneNumberConfirmView.this.fragmentView.addView(PhoneNumberConfirmView.this);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (AndroidUtilities.isAccessibilityTouchExplorationEnabled()) {
                        PhoneNumberConfirmView.this.fabButton.requestFocus();
                    }
                }
            });
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.LoginActivity$PhoneNumberConfirmView$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$show$4(valueAnimator);
                }
            });
            duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
            duration.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$show$4(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.fabTransform.setProgress(fFloatValue);
            this.blurredView.setAlpha(fFloatValue);
            this.dimmView.setAlpha(fFloatValue);
            this.popupLayout.setAlpha(fFloatValue);
            float f = (fFloatValue * 0.5f) + 0.5f;
            this.popupLayout.setScaleX(f);
            this.popupLayout.setScaleY(f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void animateProgress(Runnable runnable) {
            this.fabButton.setProgressVisible(true, true);
            AndroidUtilities.runOnUIThread(runnable, 400L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dismiss() {
            if (this.dismissed) {
                return;
            }
            this.dismissed = true;
            this.callback.onDismiss(this);
            ValueAnimator duration = ValueAnimator.ofFloat(1.0f, 0.0f).setDuration(250L);
            duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.LoginActivity.PhoneNumberConfirmView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (PhoneNumberConfirmView.this.getParent() instanceof ViewGroup) {
                        ((ViewGroup) PhoneNumberConfirmView.this.getParent()).removeView(PhoneNumberConfirmView.this);
                    }
                    PhoneNumberConfirmView.this.fabContainer.setVisibility(0);
                }
            });
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.LoginActivity$PhoneNumberConfirmView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$dismiss$5(valueAnimator);
                }
            });
            duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
            duration.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dismiss$5(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.blurredView.setAlpha(fFloatValue);
            this.dimmView.setAlpha(fFloatValue);
            this.fabTransform.setProgress(fFloatValue);
            this.popupLayout.setAlpha(fFloatValue);
            float f = (fFloatValue * 0.5f) + 0.5f;
            this.popupLayout.setScaleX(f);
            this.popupLayout.setScaleY(f);
        }
    }

    public static final class PhoneInputData {
        private CountrySelectActivity.Country country;
        private List<String> patterns;
        private String phoneNumber;

        private PhoneInputData() {
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return ColorUtils.calculateLuminance(Theme.getColor(Theme.key_windowBackgroundWhite, null, true)) > 0.699999988079071d;
    }

    public class LoginActivityQrView extends QrCodeLoginView implements NotificationCenter.NotificationCenterDelegate {
        private Runnable applyTokenRunnable;
        private int exportRequestId;
        private boolean exportRequestedAfterCurrent;
        private boolean firstQrToken;
        private int importRequestId;
        private int passwordRequestId;
        private long qrShowStartTimeMs;
        private Runnable refreshRunnable;
        private boolean waitingForEvent;

        public LoginActivityQrView(Context context) {
            super(context);
        }

        @Override // org.telegram.ui.Components.SlideView
        public boolean onBackPressed(boolean z) {
            LoginActivity.this.setPage(0, true, null, true);
            return false;
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onDestroyActivity() {
            removeObserver();
            cancelPendingRequests();
            super.onDestroyActivity();
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onShow() {
            super.onShow();
            this.waitingForEvent = true;
            this.firstQrToken = true;
            this.qrShowStartTimeMs = System.currentTimeMillis();
            clear();
            exportLoginToken(true);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onHide() {
            removeObserver();
            cancelPendingRequests();
            super.onHide();
            this.firstQrToken = true;
            clear(false);
        }

        private void removeObserver() {
            this.waitingForEvent = false;
            this.exportRequestedAfterCurrent = false;
            LoginActivity.this.getNotificationCenter().removeObserver(this, NotificationCenter.onUpdateLoginToken);
            Runnable runnable = this.refreshRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.refreshRunnable = null;
            }
            Runnable runnable2 = this.applyTokenRunnable;
            if (runnable2 != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable2);
                this.applyTokenRunnable = null;
            }
        }

        private void cancelPendingRequests() {
            if (this.exportRequestId != 0) {
                LoginActivity.this.getConnectionsManager().cancelRequest(this.exportRequestId, true);
                this.exportRequestId = 0;
            }
            if (this.importRequestId != 0) {
                LoginActivity.this.getConnectionsManager().cancelRequest(this.importRequestId, true);
                this.importRequestId = 0;
            }
            if (this.passwordRequestId != 0) {
                LoginActivity.this.getConnectionsManager().cancelRequest(this.passwordRequestId, true);
                this.passwordRequestId = 0;
            }
        }

        private boolean isQrViewActive() {
            return this.waitingForEvent && LoginActivity.this.currentViewNum == 18;
        }

        private void exportLoginToken(boolean z) {
            if (!this.waitingForEvent || getContext() == null) {
                return;
            }
            if (this.exportRequestId != 0) {
                this.exportRequestedAfterCurrent = true;
                return;
            }
            this.exportRequestedAfterCurrent = false;
            if (z) {
                LoginActivity.this.getNotificationCenter().addObserver(this, NotificationCenter.onUpdateLoginToken);
                if (LoginActivity.this.getConnectionsManager().isTestBackend() != LoginActivity.this.testBackend) {
                    LoginActivity.this.getConnectionsManager().switchBackend(false);
                }
                LoginActivity.this.getConnectionsManager().cleanup(false);
            }
            TLRPC.TL_auth_exportLoginToken tL_auth_exportLoginToken = new TLRPC.TL_auth_exportLoginToken();
            tL_auth_exportLoginToken.api_hash = BuildVars.getExteraAppHash();
            tL_auth_exportLoginToken.api_id = BuildVars.getExteraAppId();
            for (int i = 0; i < 16; i++) {
                UserConfig userConfig = UserConfig.getInstance(i);
                if (userConfig.isClientActivated()) {
                    tL_auth_exportLoginToken.except_ids.add(Long.valueOf(userConfig.getClientUserId()));
                }
            }
            this.exportRequestId = LoginActivity.this.getConnectionsManager().sendRequest(tL_auth_exportLoginToken, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$exportLoginToken$7(tLObject, tL_error);
                }
            }, 27);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$exportLoginToken$7(final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$exportLoginToken$6(tL_error, tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$exportLoginToken$6(TLRPC.TL_error tL_error, final TLObject tLObject) {
            this.exportRequestId = 0;
            boolean z = this.exportRequestedAfterCurrent;
            this.exportRequestedAfterCurrent = false;
            if (isQrViewActive()) {
                if (tL_error == null) {
                    if (tLObject instanceof TLRPC.TL_auth_loginToken) {
                        TLRPC.TL_auth_loginToken tL_auth_loginToken = (TLRPC.TL_auth_loginToken) tLObject;
                        final String str = "tg://login?token=" + Base64.encodeToString(tL_auth_loginToken.token, 11);
                        if (this.firstQrToken) {
                            clear(true);
                            Runnable runnable = this.applyTokenRunnable;
                            if (runnable != null) {
                                AndroidUtilities.cancelRunOnUIThread(runnable);
                            }
                            this.applyTokenRunnable = new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$exportLoginToken$0(str);
                                }
                            };
                            AndroidUtilities.runOnUIThread(this.applyTokenRunnable, Math.max(0L, 380 - Math.max(0L, System.currentTimeMillis() - this.qrShowStartTimeMs)));
                        } else {
                            setData(str);
                        }
                        long currentTime = tL_auth_loginToken.expires - LoginActivity.this.getConnectionsManager().getCurrentTime();
                        if (currentTime < 0) {
                            currentTime = 20;
                        }
                        Runnable runnable2 = this.refreshRunnable;
                        if (runnable2 != null) {
                            AndroidUtilities.cancelRunOnUIThread(runnable2);
                        }
                        Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda3
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$exportLoginToken$1();
                            }
                        };
                        this.refreshRunnable = runnable3;
                        AndroidUtilities.runOnUIThread(runnable3, currentTime * 1000);
                    } else if (tLObject instanceof TLRPC.TL_auth_loginTokenSuccess) {
                        removeObserver();
                        postDelayed(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$exportLoginToken$2(tLObject);
                            }
                        }, 150L);
                    } else if (tLObject instanceof TLRPC.TL_auth_loginTokenMigrateTo) {
                        removeObserver();
                        LoginActivity.this.showDoneButton(true, true);
                        TLRPC.TL_auth_loginTokenMigrateTo tL_auth_loginTokenMigrateTo = (TLRPC.TL_auth_loginTokenMigrateTo) tLObject;
                        LoginActivity.this.getConnectionsManager().setDefaultDatacenterId(tL_auth_loginTokenMigrateTo.dc_id);
                        TLRPC.TL_auth_importLoginToken tL_auth_importLoginToken = new TLRPC.TL_auth_importLoginToken();
                        tL_auth_importLoginToken.token = tL_auth_loginTokenMigrateTo.token;
                        this.importRequestId = LoginActivity.this.getConnectionsManager().sendRequest(tL_auth_importLoginToken, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda5
                            @Override // org.telegram.tgnet.RequestDelegate
                            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                                this.f$0.lambda$exportLoginToken$5(tLObject2, tL_error2);
                            }
                        }, 27);
                    }
                } else {
                    clear(true);
                    removeObserver();
                    handleError(!TextUtils.isEmpty(tL_error.text) ? tL_error.text : LocaleController.getString(C2807R.string.UnknownError));
                }
                if (z && isQrViewActive() && this.exportRequestId == 0) {
                    exportLoginToken(false);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$exportLoginToken$0(String str) {
            this.applyTokenRunnable = null;
            if (isQrViewActive()) {
                setData(str);
                this.firstQrToken = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$exportLoginToken$1() {
            exportLoginToken(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$exportLoginToken$2(TLObject tLObject) {
            LoginActivity.this.onAuthSuccess((TLRPC.TL_auth_authorization) ((TLRPC.TL_auth_loginTokenSuccess) tLObject).authorization);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$exportLoginToken$5(final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$exportLoginToken$4(tL_error, tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$exportLoginToken$4(TLRPC.TL_error tL_error, final TLObject tLObject) {
            this.importRequestId = 0;
            if (LoginActivity.this.currentViewNum != 18) {
                return;
            }
            if (tL_error == null) {
                if (tLObject instanceof TLRPC.TL_auth_loginTokenSuccess) {
                    postDelayed(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$exportLoginToken$3(tLObject);
                        }
                    }, 150L);
                }
            } else {
                LoginActivity.this.showDoneButton(false, true);
                clear(true);
                removeObserver();
                handleError(!TextUtils.isEmpty(tL_error.text) ? tL_error.text : LocaleController.getString(C2807R.string.UnknownError));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$exportLoginToken$3(TLObject tLObject) {
            LoginActivity.this.showDoneButton(false, true);
            LoginActivity.this.onAuthSuccess((TLRPC.TL_auth_authorization) ((TLRPC.TL_auth_loginTokenSuccess) tLObject).authorization);
        }

        private void handleError(String str) {
            if (str.contains("SESSION_PASSWORD_NEEDED")) {
                this.passwordRequestId = LoginActivity.this.getConnectionsManager().sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda7
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$handleError$9(tLObject, tL_error);
                    }
                }, 10);
                return;
            }
            boolean zStartsWith = str.startsWith("FLOOD_WAIT");
            LoginActivity loginActivity = LoginActivity.this;
            if (zStartsWith) {
                loginActivity.needShowAlert(LocaleController.getString(C2807R.string.AppName), LocaleController.getString(C2807R.string.FloodWait));
            } else {
                loginActivity.needShowAlert(LocaleController.getString(C2807R.string.AppName), str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$handleError$9(final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$handleError$8(tL_error, tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$handleError$8(TLRPC.TL_error tL_error, TLObject tLObject) {
            this.passwordRequestId = 0;
            if (LoginActivity.this.currentViewNum == 18 || LoginActivity.this.currentViewNum == 6) {
                LoginActivity.this.showDoneButton(false, true);
                if (tL_error == null) {
                    TL_account.Password password = (TL_account.Password) tLObject;
                    if (!TwoStepVerificationActivity.canHandleCurrentPassword(password, true)) {
                        AlertsCreator.showUpdateAppAlert(LoginActivity.this.getParentActivity(), LocaleController.getString(C2807R.string.UpdateAppAlert), true);
                        return;
                    }
                    Bundle bundle = new Bundle();
                    SerializedData serializedData = new SerializedData(password.getObjectSize());
                    password.serializeToStream(serializedData);
                    bundle.putString("password", Utilities.bytesToHex(serializedData.toByteArray()));
                    LoginActivity.this.setPage(6, true, bundle, false);
                    return;
                }
                LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.AppName), tL_error.text);
            }
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.onUpdateLoginToken) {
                exportLoginToken(false);
            }
        }
    }

    private void showLoginOptionsMenu() {
        int i;
        if (this.proxyButtonView == null || getContext() == null) {
            return;
        }
        ItemOptions itemOptions = this.loginOptionsMenu;
        if (itemOptions != null && itemOptions.isShown()) {
            this.loginOptionsMenu.dismiss();
        }
        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0);
        boolean z = true;
        boolean z2 = sharedPreferences.getBoolean("proxy_enabled", false) && !TextUtils.isEmpty(sharedPreferences.getString("proxy_ip", _UrlKt.FRAGMENT_ENCODE_SET));
        boolean z3 = z2 || (getMessagesController().blockedCountry && !SharedConfig.proxyList.isEmpty());
        int connectionState = getConnectionsManager().getConnectionState();
        boolean z4 = connectionState == 3 || connectionState == 5;
        if (connectionState != 1 && connectionState != 2 && connectionState != 4) {
            z = false;
        }
        ProxyDrawable proxyDrawable = new ProxyDrawable(getContext());
        int i2 = Theme.key_actionBarDefaultSubmenuItemIcon;
        int themedColor = getThemedColor(i2);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        proxyDrawable.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
        proxyDrawable.setConnected(z2, z4, false);
        final ItemOptions itemOptionsTranslate = ItemOptions.makeOptions(this, this.proxyButtonView).setGravity(5).setOnTopOfScrim().translate(AndroidUtilities.dp(6.0f), -AndroidUtilities.dp(12.0f));
        int i3 = Theme.key_actionBarDefaultSubmenuItem;
        itemOptionsTranslate.setColors(getThemedColor(i3), getThemedColor(i2));
        ActionBarMenuSubItem actionBarMenuSubItemAdd = itemOptionsTranslate.add();
        actionBarMenuSubItemAdd.setTextAndIcon(LocaleController.getString(C2807R.string.ProxySettings), 0, proxyDrawable);
        actionBarMenuSubItemAdd.setTextColor(getThemedColor(i3));
        actionBarMenuSubItemAdd.setIconColor(themedColor, mode);
        String string = null;
        if (z3) {
            if (z4) {
                i = C2807R.string.MenuProxyConnected;
            } else if (z) {
                i = C2807R.string.MenuProxyConnecting;
            }
            string = LocaleController.getString(i);
        }
        actionBarMenuSubItemAdd.setSubtext(string);
        actionBarMenuSubItemAdd.setItemHeight(z3 ? 56 : 48);
        actionBarMenuSubItemAdd.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showLoginOptionsMenu$23(itemOptionsTranslate, view);
            }
        });
        ActionBarMenuSubItem actionBarMenuSubItemAdd2 = itemOptionsTranslate.add();
        actionBarMenuSubItemAdd2.setTextAndIcon(LocaleController.getString(C2807R.string.LoginQrTitle), C2807R.drawable.msg_qrcode);
        actionBarMenuSubItemAdd2.setTextColor(getThemedColor(i3));
        actionBarMenuSubItemAdd2.setIconColor(getThemedColor(i2), mode);
        actionBarMenuSubItemAdd2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda19
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showLoginOptionsMenu$24(itemOptionsTranslate, view);
            }
        });
        this.loginOptionsMenu = itemOptionsTranslate;
        this.loginOptionsProxyItem = actionBarMenuSubItemAdd;
        this.loginOptionsProxyDrawable = proxyDrawable;
        itemOptionsTranslate.setOnDismiss(new Runnable() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.clearLoginOptionsMenuReferences();
            }
        });
        updateLoginOptionsProxyItem(false);
        itemOptionsTranslate.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showLoginOptionsMenu$23(ItemOptions itemOptions, View view) {
        itemOptions.dismiss();
        presentFragment(new ProxyListActivity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showLoginOptionsMenu$24(ItemOptions itemOptions, View view) {
        this.proxyButtonView.clearAnimation();
        this.proxyButtonView.animate().cancel();
        this.proxyButtonView.setVisibility(8);
        itemOptions.dismiss();
        setPage(18, true, null, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearLoginOptionsMenuReferences() {
        this.loginOptionsMenu = null;
        this.loginOptionsProxyItem = null;
        this.loginOptionsProxyDrawable = null;
    }

    private void updateLoginOptionsProxyItem(boolean z) {
        int i;
        ItemOptions itemOptions = this.loginOptionsMenu;
        if (itemOptions == null || !itemOptions.isShown() || this.loginOptionsProxyItem == null || this.loginOptionsProxyDrawable == null) {
            return;
        }
        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0);
        boolean z2 = sharedPreferences.getBoolean("proxy_enabled", false) && !TextUtils.isEmpty(sharedPreferences.getString("proxy_ip", _UrlKt.FRAGMENT_ENCODE_SET));
        boolean z3 = z2 || (getMessagesController().blockedCountry && !SharedConfig.proxyList.isEmpty());
        int connectionState = getConnectionsManager().getConnectionState();
        boolean z4 = connectionState == 3 || connectionState == 5;
        boolean z5 = connectionState == 1 || connectionState == 2 || connectionState == 4;
        int themedColor = getThemedColor(Theme.key_actionBarDefaultSubmenuItemIcon);
        ProxyDrawable proxyDrawable = this.loginOptionsProxyDrawable;
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        proxyDrawable.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
        this.loginOptionsProxyDrawable.setConnected(z2, z4, z);
        this.loginOptionsProxyItem.setTextColor(getThemedColor(Theme.key_actionBarDefaultSubmenuItem));
        this.loginOptionsProxyItem.setIconColor(themedColor, mode);
        ActionBarMenuSubItem actionBarMenuSubItem = this.loginOptionsProxyItem;
        String string = null;
        if (z3) {
            if (z4) {
                i = C2807R.string.MenuProxyConnected;
            } else if (z5) {
                i = C2807R.string.MenuProxyConnecting;
            }
            string = LocaleController.getString(i);
        }
        actionBarMenuSubItem.setSubtext(string);
        this.loginOptionsProxyItem.setItemHeight(z3 ? 56 : 48);
        this.loginOptionsProxyItem.requestLayout();
        this.loginOptionsProxyItem.invalidate();
    }

    private void updateProxyButton(boolean z, boolean z2) {
        if (this.proxyDrawable == null) {
            return;
        }
        int connectionState = getConnectionsManager().getConnectionState();
        if (this.currentConnectionState != connectionState || z2) {
            this.currentConnectionState = connectionState;
            SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0);
            boolean z3 = sharedPreferences.getBoolean("proxy_enabled", false) && !TextUtils.isEmpty(sharedPreferences.getString("proxy_ip", _UrlKt.FRAGMENT_ENCODE_SET));
            int i = this.currentConnectionState;
            boolean z4 = i == 3 || i == 5;
            boolean z5 = i == 1 || i == 2 || i == 4;
            if (z3) {
                this.proxyDrawable.setConnected(true, z4, z);
                showProxyButton(true, z);
            } else if ((getMessagesController().blockedCountry && !SharedConfig.proxyList.isEmpty()) || z5) {
                this.proxyDrawable.setConnected(true, z4, z);
                showProxyButtonDelayed();
            } else {
                showProxyButton(false, z);
            }
        }
    }

    private void showProxyButtonDelayed() {
        if (this.proxyButtonVisible) {
            return;
        }
        Runnable runnable = this.showProxyButtonDelayed;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        this.proxyButtonVisible = true;
        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showProxyButtonDelayed$25();
            }
        };
        this.showProxyButtonDelayed = runnable2;
        AndroidUtilities.runOnUIThread(runnable2, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showProxyButtonDelayed$25() {
        this.proxyButtonVisible = false;
        showProxyButton(true, true);
    }

    private void showProxyButton(final boolean z, boolean z2) {
        if (z == this.proxyButtonVisible) {
            return;
        }
        Runnable runnable = this.showProxyButtonDelayed;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.showProxyButtonDelayed = null;
        }
        this.proxyButtonVisible = z;
        this.proxyButtonView.clearAnimation();
        ImageView imageView = this.proxyButtonView;
        if (z2) {
            imageView.setVisibility(0);
            this.proxyButtonView.animate().alpha(z ? 1.0f : 0.0f).withEndAction(new Runnable() { // from class: org.telegram.ui.LoginActivity$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showProxyButton$26(z);
                }
            }).start();
        } else {
            imageView.setVisibility(z ? 0 : 8);
            this.proxyButtonView.setAlpha(z ? 1.0f : 0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showProxyButton$26(boolean z) {
        if (z) {
            return;
        }
        this.proxyButtonView.setVisibility(8);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.didUpdateConnectionState) {
            updateProxyButton(true, false);
            updateLoginOptionsProxyItem(true);
        } else if (i == NotificationCenter.proxySettingsChanged) {
            updateProxyButton(false, true);
            updateLoginOptionsProxyItem(false);
        } else if (i == NotificationCenter.newSuggestionsAvailable && this.emailChangeIsSuggestion && !getMessagesController().hasSetupEmailSuggestion()) {
            finishFragment();
        }
    }

    public class LoginActivityPhraseView extends SlideView {
        private String beginning;
        private final Runnable checkPasteRunnable;
        private final EditTextBoldCursor codeField;
        private int codeTime;
        private final TextView confirmTextView;
        private Bundle currentParams;
        private final int currentType;
        private final Runnable dismissField;
        private String emailPhone;
        private boolean errorShown;
        private final TextView errorTextView;
        private final LinearLayout fieldContainer;
        private final RLottieImageView imageView;
        private final FrameLayout infoContainer;
        private final TextView infoTextView;
        private boolean isResendingCode;
        private double lastCurrentTime;
        private String lastError;
        private TLRPC.TL_auth_sentCode nextCodeAuth;
        private Bundle nextCodeParams;
        private boolean nextPressed;
        private int nextType;
        private final OutlineTextContainerView outlineField;
        private boolean pasteShown;
        private final TextView pasteTextView;
        private boolean pasted;
        private boolean pasting;
        private String phone;
        private String phoneHash;
        private int prevType;
        private final TextView prevTypeTextView;
        private String requestPhone;
        private float shiftDp;
        private int time;
        private final LoadingTextView timeText;
        private Timer timeTimer;
        private final Object timerSync;
        private final TextView titleTextView;
        private boolean waitingForEvent;

        @Override // org.telegram.ui.Components.SlideView
        public boolean needBackButton() {
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public LoginActivityPhraseView(Context context, int i) {
            boolean z;
            super(context);
            this.pasteShown = true;
            this.errorShown = false;
            this.pasting = false;
            this.pasted = false;
            this.timerSync = new Object();
            this.time = 60000;
            this.codeTime = 15000;
            this.lastError = _UrlKt.FRAGMENT_ENCODE_SET;
            this.checkPasteRunnable = new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$7();
                }
            };
            this.dismissField = new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$8();
                }
            };
            this.shiftDp = -3.0f;
            this.currentType = i;
            boolean z2 = i != 16;
            setOrientation(1);
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            this.imageView = rLottieImageView;
            rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
            rLottieImageView.setAnimation(C2807R.raw.bubble, 95, 95);
            if (!AndroidUtilities.isSmallScreen()) {
                Point point = AndroidUtilities.displaySize;
                z = point.x > point.y && !AndroidUtilities.isTablet();
            }
            rLottieImageView.setVisibility(z ? 8 : 0);
            addView(rLottieImageView, LayoutHelper.createLinear(95, 95, 1, 0, 10, 0, 5));
            TextView textView = new TextView(context);
            this.titleTextView = textView;
            textView.setTextSize(1, 18.0f);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            textView.setGravity(49);
            textView.setText(LocaleController.getString(!z2 ? C2807R.string.SMSWordTitle : C2807R.string.SMSPhraseTitle));
            addView(textView, LayoutHelper.createLinear(-2, -2, 1, 8, z ? 25 : 0, 8, 0));
            TextView textView2 = new TextView(context);
            this.confirmTextView = textView2;
            textView2.setTextSize(1, 14.0f);
            textView2.setGravity(1);
            textView2.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            addView(textView2, LayoutHelper.createLinear(-2, -2, 1, 8, 5, 8, 16));
            OutlineTextContainerView outlineTextContainerView = new OutlineTextContainerView(context);
            this.outlineField = outlineTextContainerView;
            outlineTextContainerView.setText(LocaleController.getString(!z2 ? C2807R.string.SMSWord : C2807R.string.SMSPhrase));
            C53971 c53971 = new C53971(context, LoginActivity.this);
            this.codeField = c53971;
            c53971.setSingleLine();
            c53971.setLines(1);
            c53971.setCursorSize(AndroidUtilities.dp(20.0f));
            c53971.setCursorWidth(1.5f);
            c53971.setImeOptions(268435461);
            c53971.setTextSize(1, 18.0f);
            c53971.setMaxLines(1);
            c53971.setBackground(null);
            c53971.setHint(LocaleController.getString(!z2 ? C2807R.string.SMSWordHint : C2807R.string.SMSPhraseHint));
            c53971.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.LoginActivity.LoginActivityPhraseView.2
                private boolean ignoreTextChange;
                private int trimmedLength;

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                    if (this.ignoreTextChange || charSequence == null || LoginActivityPhraseView.this.beginning == null) {
                        return;
                    }
                    this.trimmedLength = LoginActivityPhraseView.this.trimLeft(charSequence.toString()).length();
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    if (this.ignoreTextChange) {
                        return;
                    }
                    LoginActivityPhraseView.this.checkPaste(true);
                    AndroidUtilities.cancelRunOnUIThread(LoginActivityPhraseView.this.dismissField);
                    LoginActivityPhraseView.this.animateError(false);
                    if (TextUtils.isEmpty(editable)) {
                        LoginActivityPhraseView.this.pasted = false;
                    }
                    if (LoginActivityPhraseView.this.beginsOk(editable.toString())) {
                        return;
                    }
                    LoginActivityPhraseView.this.onInputError(true);
                    this.ignoreTextChange = true;
                    boolean z3 = LoginActivityPhraseView.this.codeField.getSelectionEnd() >= LoginActivityPhraseView.this.codeField.getText().length();
                    if (!LoginActivityPhraseView.this.pasted) {
                        LoginActivityPhraseView.this.codeField.setText(LoginActivityPhraseView.this.beginning.substring(0, Utilities.clamp(this.trimmedLength, LoginActivityPhraseView.this.beginning.length(), 0)));
                        if (z3) {
                            LoginActivityPhraseView.this.codeField.setSelection(LoginActivityPhraseView.this.codeField.getText().length());
                        }
                    }
                    this.ignoreTextChange = false;
                }
            });
            c53971.setEllipsizeByGradient(true);
            c53971.setInputType(1);
            c53971.setTypeface(Typeface.DEFAULT);
            c53971.setGravity(LocaleController.isRTL ? 5 : 3);
            c53971.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda3
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z3) {
                    this.f$0.lambda$new$0(view, z3);
                }
            });
            TextView textView3 = new TextView(context);
            this.pasteTextView = textView3;
            textView3.setTextSize(1, 12.0f);
            textView3.setTypeface(AndroidUtilities.bold());
            textView3.setText(LocaleController.getString(C2807R.string.Paste));
            textView3.setPadding(AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f), 0);
            textView3.setGravity(17);
            int color = Theme.getColor(Theme.key_windowBackgroundWhiteBlueText2, ((BaseFragment) LoginActivity.this).resourceProvider);
            textView3.setTextColor(color);
            textView3.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(6.0f), Theme.multAlpha(color, 0.12f), Theme.multAlpha(color, 0.15f)));
            ScaleStateListAnimator.apply(textView3, 0.1f, 1.5f);
            c53971.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(13.34f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(13.34f));
            textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$1(view);
                }
            });
            outlineTextContainerView.addView(c53971, LayoutHelper.createFrame(-1, -2.0f, 119, 0.0f, 0.0f, 0.0f, 0.0f));
            outlineTextContainerView.attachEditText(c53971);
            outlineTextContainerView.addView(textView3, LayoutHelper.createFrame(-2, 26.0f, 21, 0.0f, 0.0f, 10.0f, 0.0f));
            LinearLayout linearLayout = new LinearLayout(context);
            this.fieldContainer = linearLayout;
            linearLayout.setOrientation(1);
            linearLayout.addView(outlineTextContainerView, LayoutHelper.createLinear(-1, -2, 1));
            addView(linearLayout, LayoutHelper.createLinear(-1, -2, 1, 16, 3, 16, 0));
            c53971.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda5
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView4, int i2, KeyEvent keyEvent) {
                    return this.f$0.lambda$new$2(textView4, i2, keyEvent);
                }
            });
            FrameLayout frameLayout = new FrameLayout(context);
            this.infoContainer = frameLayout;
            linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2));
            LoadingTextView loadingTextView = LoginActivity.this.new LoadingTextView(context);
            this.prevTypeTextView = loadingTextView;
            int i2 = Theme.key_windowBackgroundWhiteValueText;
            loadingTextView.setLinkTextColor(Theme.getColor(i2));
            loadingTextView.setTextColor(LoginActivity.this.getThemedColor(i2));
            loadingTextView.setTextSize(1, 14.0f);
            loadingTextView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            loadingTextView.setPadding(AndroidUtilities.dp(14.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(16.0f));
            loadingTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$3(view);
                }
            });
            addView(loadingTextView, LayoutHelper.createLinear(-2, -2, 1, 0, 18, 0, 0));
            loadingTextView.setVisibility(8);
            TextView textView4 = new TextView(context);
            this.errorTextView = textView4;
            textView4.setPivotX(0.0f);
            textView4.setPivotY(0.0f);
            textView4.setText(LocaleController.getString(!z2 ? C2807R.string.SMSWordError : C2807R.string.SMSPhraseError));
            textView4.setTextColor(LoginActivity.this.getThemedColor(Theme.key_text_RedRegular));
            textView4.setTextSize(1, 13.0f);
            frameLayout.addView(textView4, LayoutHelper.createFrame(-1, -2.0f, 119, 16.0f, 8.0f, 16.0f, 8.0f));
            textView4.setAlpha(0.0f);
            textView4.setScaleX(0.8f);
            textView4.setScaleY(0.8f);
            textView4.setTranslationY(-AndroidUtilities.dp(4.0f));
            TextView textView5 = new TextView(context);
            this.infoTextView = textView5;
            textView5.setPivotX(0.0f);
            textView5.setPivotY(0.0f);
            textView5.setText(LocaleController.getString(!z2 ? C2807R.string.SMSWordPasteHint : C2807R.string.SMSPhrasePasteHint));
            textView5.setTextColor(LoginActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
            textView5.setTextSize(1, 13.0f);
            frameLayout.addView(textView5, LayoutHelper.createFrame(-1, -2.0f, 119, 16.0f, 8.0f, 16.0f, 8.0f));
            LoadingTextView loadingTextView2 = new LoadingTextView(context) { // from class: org.telegram.ui.LoginActivity.LoginActivityPhraseView.3
                {
                    LoginActivity loginActivity = LoginActivity.this;
                }

                @Override // org.telegram.ui.LoginActivity.LoadingTextView
                public boolean isResendingCode() {
                    return LoginActivityPhraseView.this.isResendingCode;
                }

                @Override // org.telegram.ui.LoginActivity.LoadingTextView
                public boolean isRippleEnabled() {
                    if (getVisibility() == 0) {
                        return LoginActivityPhraseView.this.time <= 0 || LoginActivityPhraseView.this.timeTimer == null;
                    }
                    return false;
                }
            };
            this.timeText = loadingTextView2;
            loadingTextView2.setLinkTextColor(Theme.getColor(i2));
            loadingTextView2.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
            loadingTextView2.setPadding(AndroidUtilities.dp(14.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(16.0f));
            loadingTextView2.setTextSize(1, 15.0f);
            loadingTextView2.setGravity(19);
            loadingTextView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$6(view);
                }
            });
            FrameLayout frameLayout2 = new FrameLayout(context);
            frameLayout2.addView(loadingTextView2, LayoutHelper.createFrame(-1, 56.0f, 80, 6.0f, 0.0f, 60.0f, 28.0f));
            addView(frameLayout2, LayoutHelper.createLinear(-1, -1, 80));
            VerticalPositionAutoAnimator.attach(loadingTextView2);
        }

        /* JADX INFO: renamed from: org.telegram.ui.LoginActivity$LoginActivityPhraseView$1 */
        public class C53971 extends EditTextBoldCursor {
            final /* synthetic */ LoginActivity val$this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C53971(Context context, LoginActivity loginActivity) {
                super(context);
                this.val$this$0 = loginActivity;
            }

            @Override // org.telegram.ui.Components.EditTextBoldCursor, com.exteragram.messenger.components.ReceiveContentEditText, android.widget.EditText, android.widget.TextView
            public boolean onTextContextMenuItem(int i) {
                if (i == 16908322 || i == 16908337) {
                    LoginActivityPhraseView loginActivityPhraseView = LoginActivityPhraseView.this;
                    loginActivityPhraseView.pasted = true;
                    loginActivityPhraseView.pasting = true;
                    postDelayed(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onTextContextMenuItem$0();
                        }
                    }, 1000L);
                }
                return super.onTextContextMenuItem(i);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onTextContextMenuItem$0() {
                LoginActivityPhraseView.this.pasting = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view, boolean z) {
            this.outlineField.animateSelection(z ? 1.0f : 0.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            CharSequence charSequenceCoerceToText;
            try {
                charSequenceCoerceToText = ((ClipboardManager) getContext().getSystemService("clipboard")).getPrimaryClip().getItemAt(0).coerceToText(getContext());
            } catch (Exception e) {
                FileLog.m1040e(e);
                charSequenceCoerceToText = null;
            }
            if (charSequenceCoerceToText != null) {
                Editable text = this.codeField.getText();
                this.pasted = true;
                this.pasting = true;
                if (text != null) {
                    int iMax = Math.max(0, this.codeField.getSelectionStart());
                    text.replace(iMax, Math.max(iMax, this.codeField.getSelectionEnd()), charSequenceCoerceToText);
                }
                this.pasting = false;
            }
            checkPaste(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$new$2(TextView textView, int i, KeyEvent keyEvent) {
            if (i != 5) {
                return false;
            }
            lambda$onNextPressed$17(null);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(View view) {
            onBackPressed(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$6(View view) {
            TLRPC.TL_auth_sentCode tL_auth_sentCode;
            if (this.time <= 0 || this.timeTimer == null) {
                Bundle bundle = this.nextCodeParams;
                if (bundle != null && (tL_auth_sentCode = this.nextCodeAuth) != null) {
                    LoginActivity.this.fillNextCodeParams(bundle, tL_auth_sentCode);
                    return;
                }
                int i = this.nextType;
                if (i != 4 && i != 2 && i != 11 && i != 15) {
                    if (i == 3) {
                        AndroidUtilities.setWaitingForSms(false);
                        this.waitingForEvent = false;
                        resendCode();
                        return;
                    }
                    return;
                }
                this.isResendingCode = true;
                this.timeText.invalidate();
                this.timeText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteValueText));
                this.timeText.setTextSize(1, 15.0f);
                int i2 = this.nextType;
                if (i2 == 4 || i2 == 11) {
                    this.timeText.setText(LocaleController.getString(C2807R.string.Calling));
                } else {
                    this.timeText.setText(LocaleController.getString(C2807R.string.SendingSms));
                }
                final Bundle bundle2 = new Bundle();
                bundle2.putString("phone", this.phone);
                bundle2.putString("ephone", this.emailPhone);
                bundle2.putString("phoneFormated", this.requestPhone);
                bundle2.putInt("prevType", this.currentType);
                TLRPC.TL_auth_resendCode tL_auth_resendCode = new TLRPC.TL_auth_resendCode();
                tL_auth_resendCode.phone_number = this.requestPhone;
                tL_auth_resendCode.phone_code_hash = this.phoneHash;
                ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(tL_auth_resendCode, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda10
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$new$5(bundle2, tLObject, tL_error);
                    }
                }, 10);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$5(final Bundle bundle, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$4(tLObject, bundle, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4(TLObject tLObject, Bundle bundle, TLRPC.TL_error tL_error) {
            String str;
            this.isResendingCode = false;
            this.timeText.invalidate();
            if (tLObject != null) {
                this.nextCodeParams = bundle;
                TLRPC.TL_auth_sentCode tL_auth_sentCode = (TLRPC.TL_auth_sentCode) tLObject;
                this.nextCodeAuth = tL_auth_sentCode;
                LoginActivity.this.fillNextCodeParams(bundle, tL_auth_sentCode);
                return;
            }
            if (tL_error == null || (str = tL_error.text) == null) {
                return;
            }
            if (str.contains("PHONE_NUMBER_INVALID")) {
                LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.InvalidPhoneNumber));
            } else if (tL_error.text.contains("PHONE_CODE_EMPTY") || tL_error.text.contains("PHONE_CODE_INVALID")) {
                LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.InvalidCode));
            } else if (tL_error.text.contains("PHONE_CODE_EXPIRED")) {
                onBackPressed(true);
                LoginActivity.this.setPage(0, true, null, true);
                LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.CodeExpired));
            } else if (tL_error.text.startsWith("FLOOD_WAIT")) {
                LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.FloodWait));
            } else if (tL_error.code != -1000) {
                LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.ErrorOccurred) + "\n" + tL_error.text);
            }
            this.lastError = tL_error.text;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$7() {
            checkPaste(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void checkPaste(boolean z) {
            AndroidUtilities.cancelRunOnUIThread(this.checkPasteRunnable);
            ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
            boolean z2 = TextUtils.isEmpty(this.codeField.getText()) && clipboardManager != null && clipboardManager.hasPrimaryClip();
            if (this.pasteShown != z2) {
                this.pasteShown = z2;
                TextView textView = this.pasteTextView;
                float f = 0.9f;
                float fDp = 0.0f;
                if (z) {
                    ViewPropertyAnimator viewPropertyAnimatorScaleY = textView.animate().alpha(z2 ? 1.0f : 0.0f).scaleX(z2 ? 1.0f : 0.7f).scaleY(z2 ? 1.0f : 0.7f);
                    CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
                    viewPropertyAnimatorScaleY.setInterpolator(cubicBezierInterpolator).setDuration(300L).start();
                    ViewPropertyAnimator viewPropertyAnimatorScaleX = this.infoTextView.animate().scaleX((!this.pasteShown || this.errorShown) ? 0.9f : 1.0f);
                    if (this.pasteShown && !this.errorShown) {
                        f = 1.0f;
                    }
                    ViewPropertyAnimator viewPropertyAnimatorAlpha = viewPropertyAnimatorScaleX.scaleY(f).alpha((!this.pasteShown || this.errorShown) ? 0.0f : 1.0f);
                    if (!this.pasteShown || this.errorShown) {
                        fDp = AndroidUtilities.dp(this.errorShown ? 5.0f : -5.0f);
                    }
                    viewPropertyAnimatorAlpha.translationY(fDp).setInterpolator(cubicBezierInterpolator).setDuration(300L).start();
                } else {
                    textView.setAlpha(z2 ? 1.0f : 0.0f);
                    this.pasteTextView.setScaleX(z2 ? 1.0f : 0.7f);
                    this.pasteTextView.setScaleY(z2 ? 1.0f : 0.7f);
                    this.infoTextView.setScaleX((!this.pasteShown || this.errorShown) ? 0.9f : 1.0f);
                    TextView textView2 = this.infoTextView;
                    if (this.pasteShown && !this.errorShown) {
                        f = 1.0f;
                    }
                    textView2.setScaleY(f);
                    this.infoTextView.setAlpha((!this.pasteShown || this.errorShown) ? 0.0f : 1.0f);
                    TextView textView3 = this.infoTextView;
                    if (!this.pasteShown || this.errorShown) {
                        fDp = AndroidUtilities.dp(this.errorShown ? 5.0f : -5.0f);
                    }
                    textView3.setTranslationY(fDp);
                }
            }
            AndroidUtilities.runOnUIThread(this.checkPasteRunnable, 5000L);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void updateColors() {
            TextView textView = this.titleTextView;
            LoginActivity loginActivity = LoginActivity.this;
            int i = Theme.key_windowBackgroundWhiteBlackText;
            textView.setTextColor(loginActivity.getThemedColor(i));
            this.confirmTextView.setTextColor(LoginActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteGrayText6));
            this.codeField.setTextColor(LoginActivity.this.getThemedColor(i));
            this.codeField.setCursorColor(LoginActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteInputFieldActivated));
            this.codeField.setHintTextColor(LoginActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteHintText));
            this.outlineField.updateColor();
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onCancelPressed() {
            this.nextPressed = false;
        }

        @Override // org.telegram.ui.Components.SlideView
        public String getHeaderName() {
            return LocaleController.getString("NewPassword", C2807R.string.NewPassword);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void setParams(Bundle bundle, boolean z) {
            int i;
            if (bundle == null) {
                if (this.nextCodeParams == null || this.nextCodeAuth == null) {
                    return;
                }
                this.timeText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteValueText));
                int i2 = this.nextType;
                if (i2 == 17) {
                    i = C2807R.string.ReturnEnteringPhrase;
                } else if (i2 == 16) {
                    i = C2807R.string.ReturnEnteringWord;
                } else if (i2 == 3) {
                    i = C2807R.string.ReturnPhoneCall;
                } else {
                    i = C2807R.string.ReturnEnteringSMS;
                }
                this.timeText.setText(AndroidUtilities.replaceArrows(LocaleController.getString(i), true, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f)));
                return;
            }
            this.codeField.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.currentParams = bundle;
            this.beginning = null;
            this.nextType = bundle.getInt("nextType");
            this.prevType = bundle.getInt("prevType", 0);
            this.emailPhone = bundle.getString("ephone");
            if (this.currentParams.containsKey("beginning")) {
                this.beginning = this.currentParams.getString("beginning");
            }
            this.requestPhone = bundle.getString("phoneFormated");
            this.phoneHash = bundle.getString("phoneHash");
            this.phone = this.currentParams.getString("phone");
            this.time = bundle.getInt("timeout");
            int i3 = this.prevType;
            if (i3 == 17) {
                this.prevTypeTextView.setVisibility(0);
                this.prevTypeTextView.setText(AndroidUtilities.replaceArrows(LocaleController.getString(C2807R.string.BackEnteringPhrase), true, AndroidUtilities.dp(-1.0f), AndroidUtilities.dp(1.0f)));
            } else if (i3 == 16) {
                this.prevTypeTextView.setVisibility(0);
                this.prevTypeTextView.setText(AndroidUtilities.replaceArrows(LocaleController.getString(C2807R.string.BackEnteringWord), true, AndroidUtilities.dp(-1.0f), AndroidUtilities.dp(1.0f)));
            } else if (i3 == 1 || i3 == 2 || i3 == 4 || i3 == 3 || i3 == 15) {
                this.prevTypeTextView.setVisibility(0);
                this.prevTypeTextView.setText(AndroidUtilities.replaceArrows(LocaleController.getString(C2807R.string.BackEnteringCode), true, AndroidUtilities.dp(-1.0f), AndroidUtilities.dp(1.0f)));
            } else {
                this.prevTypeTextView.setVisibility(8);
            }
            this.nextCodeParams = null;
            this.nextCodeAuth = null;
            this.nextPressed = false;
            this.isResendingCode = false;
            LoginActivity.this.isRequestingFirebaseSms = false;
            this.timeText.invalidate();
            boolean z2 = this.currentType != 16;
            String str = "+" + PhoneFormat.getInstance().format(PhoneFormat.stripExceptNumbers(this.phone));
            String str2 = this.beginning;
            TextView textView = this.confirmTextView;
            if (str2 == null) {
                textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString(!z2 ? C2807R.string.SMSWordText : C2807R.string.SMSPhraseText, str)));
            } else {
                textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString(!z2 ? C2807R.string.SMSWordBeginningText : C2807R.string.SMSPhraseBeginningText, str, str2)));
            }
            LoginActivity.this.showKeyboard(this.codeField);
            this.codeField.requestFocus();
            if (this.imageView.getAnimatedDrawable() != null) {
                this.imageView.getAnimatedDrawable().setCurrentFrame(0, false);
            }
            final RLottieImageView rLottieImageView = this.imageView;
            Objects.requireNonNull(rLottieImageView);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    rLottieImageView.playAnimation();
                }
            }, 500L);
            checkPaste(false);
            animateError(false);
            this.lastCurrentTime = System.currentTimeMillis();
            this.timeText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
            int i4 = this.nextType;
            if (i4 == 2 || i4 == 4 || i4 == 3) {
                createTimer();
            } else {
                this.timeText.setVisibility(8);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void animateError(boolean z) {
            this.errorShown = z;
            float f = 0.0f;
            float f2 = z ? 1.0f : 0.0f;
            this.outlineField.animateError(f2);
            float f3 = (f2 * 0.1f) + 0.9f;
            ViewPropertyAnimator viewPropertyAnimatorTranslationY = this.errorTextView.animate().scaleX(f3).scaleY(f3).alpha(f2).translationY((1.0f - f2) * AndroidUtilities.dp(-5.0f));
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            viewPropertyAnimatorTranslationY.setInterpolator(cubicBezierInterpolator).setDuration(290L).start();
            if (this.pasteShown && !this.errorShown) {
                f = 1.0f;
            }
            float f4 = (0.1f * f) + 0.9f;
            this.infoTextView.animate().scaleX(f4).scaleY(f4).alpha(f).translationY((1.0f - f) * AndroidUtilities.dp(this.errorShown ? 5.0f : -5.0f)).setInterpolator(cubicBezierInterpolator).setDuration(290L).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$8() {
            animateError(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onInputError(boolean z) {
            if (LoginActivity.this.getParentActivity() == null) {
                return;
            }
            try {
                this.codeField.performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            boolean z2 = this.currentType != 16;
            if (z) {
                this.errorTextView.setText(LocaleController.getString(!z2 ? C2807R.string.SMSWordBeginningError : C2807R.string.SMSPhraseBeginningError));
            } else {
                boolean zIsEmpty = TextUtils.isEmpty(this.codeField.getText());
                TextView textView = this.errorTextView;
                if (zIsEmpty) {
                    textView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                } else {
                    textView.setText(LocaleController.getString(!z2 ? C2807R.string.SMSWordError : C2807R.string.SMSPhraseError));
                }
            }
            if (!this.errorShown && !this.pasted) {
                AndroidUtilities.shakeViewSpring(this.codeField, this.shiftDp);
                AndroidUtilities.shakeViewSpring(this.errorTextView, this.shiftDp);
            }
            AndroidUtilities.cancelRunOnUIThread(this.dismissField);
            animateError(true);
            AndroidUtilities.runOnUIThread(this.dismissField, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
            this.shiftDp = -this.shiftDp;
        }

        @Override // org.telegram.ui.Components.SlideView
        /* JADX INFO: renamed from: onNextPressed */
        public void lambda$onNextPressed$17(String str) {
            if (this.nextPressed) {
                return;
            }
            String string = this.codeField.getText().toString();
            if (string.length() == 0) {
                onInputError(false);
                return;
            }
            if (!beginsOk(string)) {
                onInputError(true);
                return;
            }
            this.nextPressed = true;
            final TLRPC.TL_auth_signIn tL_auth_signIn = new TLRPC.TL_auth_signIn();
            tL_auth_signIn.phone_number = this.requestPhone;
            tL_auth_signIn.phone_code = string;
            tL_auth_signIn.phone_code_hash = this.phoneHash;
            tL_auth_signIn.flags |= 1;
            LoginActivity.this.needShowProgress(LoginActivity.this.getConnectionsManager().sendRequest(tL_auth_signIn, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$onNextPressed$13(tL_auth_signIn, tLObject, tL_error);
                }
            }, 10), true);
            LoginActivity.this.showDoneButton(true, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$13(final TLRPC.TL_auth_signIn tL_auth_signIn, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNextPressed$12(tL_error, tLObject, tL_auth_signIn);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$12(TLRPC.TL_error tL_error, TLObject tLObject, final TLRPC.TL_auth_signIn tL_auth_signIn) {
            LoginActivity.this.needHideProgress(false, true);
            if (tL_error == null) {
                this.nextPressed = false;
                LoginActivity.this.showDoneButton(false, true);
                destroyTimer();
                if (tLObject instanceof TLRPC.TL_auth_authorizationSignUpRequired) {
                    TLRPC.TL_help_termsOfService tL_help_termsOfService = ((TLRPC.TL_auth_authorizationSignUpRequired) tLObject).terms_of_service;
                    if (tL_help_termsOfService != null) {
                        LoginActivity.this.currentTermsOfService = tL_help_termsOfService;
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("phoneFormated", this.requestPhone);
                    bundle.putString("phoneHash", this.phoneHash);
                    bundle.putString("code", tL_auth_signIn.phone_code);
                    LoginActivity.this.setPage(5, true, bundle, false);
                } else {
                    LoginActivity.this.onAuthSuccess((TLRPC.TL_auth_authorization) tLObject);
                }
            } else {
                String str = tL_error.text;
                this.lastError = str;
                if (str.contains("SESSION_PASSWORD_NEEDED")) {
                    ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda14
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                            this.f$0.lambda$onNextPressed$10(tL_auth_signIn, tLObject2, tL_error2);
                        }
                    }, 10);
                    destroyTimer();
                } else {
                    this.nextPressed = false;
                    if (this.currentType != 3) {
                        if (tL_error.text.contains("PHONE_NUMBER_INVALID")) {
                            LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("InvalidPhoneNumber", C2807R.string.InvalidPhoneNumber));
                        } else {
                            if (tL_error.text.contains("PHONE_CODE_EMPTY") || tL_error.text.contains("PHONE_CODE_INVALID")) {
                                onInputError(false);
                                this.codeField.post(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda15
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$onNextPressed$11();
                                    }
                                });
                                return;
                            }
                            if (tL_error.text.contains("PHONE_CODE_EXPIRED")) {
                                onBackPressed(true);
                                LoginActivity.this.setPage(0, true, null, true);
                                LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("CodeExpired", C2807R.string.CodeExpired));
                            } else {
                                boolean zStartsWith = tL_error.text.startsWith("FLOOD_WAIT");
                                LoginActivity loginActivity = LoginActivity.this;
                                if (zStartsWith) {
                                    loginActivity.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("FloodWait", C2807R.string.FloodWait));
                                } else {
                                    loginActivity.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString("ErrorOccurred", C2807R.string.ErrorOccurred) + "\n" + tL_error.text);
                                }
                            }
                        }
                        this.codeField.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                        this.codeField.requestFocus();
                        return;
                    }
                    return;
                }
            }
            if (this.currentType == 3) {
                AndroidUtilities.endIncomingCall();
                AndroidUtilities.setWaitingForCall(false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$10(final TLRPC.TL_auth_signIn tL_auth_signIn, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNextPressed$9(tL_error, tLObject, tL_auth_signIn);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$9(TLRPC.TL_error tL_error, TLObject tLObject, TLRPC.TL_auth_signIn tL_auth_signIn) {
            this.nextPressed = false;
            LoginActivity.this.showDoneButton(false, true);
            if (tL_error == null) {
                TL_account.Password password = (TL_account.Password) tLObject;
                if (!TwoStepVerificationActivity.canHandleCurrentPassword(password, true)) {
                    AlertsCreator.showUpdateAppAlert(LoginActivity.this.getParentActivity(), LocaleController.getString("UpdateAppAlert", C2807R.string.UpdateAppAlert), true);
                    return;
                }
                Bundle bundle = new Bundle();
                SerializedData serializedData = new SerializedData(password.getObjectSize());
                password.serializeToStream(serializedData);
                bundle.putString("password", Utilities.bytesToHex(serializedData.toByteArray()));
                bundle.putString("phoneFormated", this.requestPhone);
                bundle.putString("phoneHash", this.phoneHash);
                bundle.putString("code", tL_auth_signIn.phone_code);
                LoginActivity.this.setPage(6, true, bundle, false);
                return;
            }
            LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), tL_error.text);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNextPressed$11() {
            this.codeField.requestFocus();
            String str = this.beginning;
            if (str != null) {
                if (str.length() > 1) {
                    String string = this.codeField.getText().toString();
                    int iTrimLeftLen = trimLeftLen(string) + this.beginning.length();
                    this.codeField.setSelection(Utilities.clamp(iTrimLeftLen + ((iTrimLeftLen < 0 || iTrimLeftLen >= string.length() || string.charAt(iTrimLeftLen) != ' ') ? 0 : 1), string.length(), 0), this.codeField.getText().length());
                    return;
                }
            }
            EditTextBoldCursor editTextBoldCursor = this.codeField;
            editTextBoldCursor.setSelection(0, editTextBoldCursor.getText().length());
        }

        private void resendCode() {
            if (this.nextPressed || this.isResendingCode || LoginActivity.this.isRequestingFirebaseSms) {
                return;
            }
            this.isResendingCode = true;
            this.timeText.invalidate();
            this.timeText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteValueText));
            final Bundle bundle = new Bundle();
            bundle.putString("phone", this.phone);
            bundle.putString("ephone", this.emailPhone);
            bundle.putString("phoneFormated", this.requestPhone);
            this.nextPressed = true;
            TLRPC.TL_auth_resendCode tL_auth_resendCode = new TLRPC.TL_auth_resendCode();
            tL_auth_resendCode.phone_number = this.requestPhone;
            tL_auth_resendCode.phone_code_hash = this.phoneHash;
            LoginActivity.this.needShowProgress(ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(tL_auth_resendCode, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda12
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$resendCode$15(bundle, tLObject, tL_error);
                }
            }, 10));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$resendCode$15(final Bundle bundle, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$resendCode$14(tL_error, bundle, tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$resendCode$14(TLRPC.TL_error tL_error, Bundle bundle, TLObject tLObject) {
            this.nextPressed = false;
            if (tL_error == null) {
                LoginActivity.this.fillNextCodeParams(bundle, (TLRPC.TL_auth_sentCode) tLObject);
            } else {
                String str = tL_error.text;
                if (str != null) {
                    if (str.contains("PHONE_NUMBER_INVALID")) {
                        LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.InvalidPhoneNumber));
                    } else if (tL_error.text.contains("PHONE_CODE_EMPTY") || tL_error.text.contains("PHONE_CODE_INVALID")) {
                        LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.InvalidCode));
                    } else if (tL_error.text.contains("PHONE_CODE_EXPIRED")) {
                        onBackPressed(true);
                        LoginActivity.this.setPage(0, true, null, true);
                        LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.CodeExpired));
                    } else if (tL_error.text.startsWith("FLOOD_WAIT")) {
                        LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.FloodWait));
                    } else if (tL_error.code != -1000) {
                        LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.ErrorOccurred) + "\n" + tL_error.text);
                    }
                }
            }
            LoginActivity.this.needHideProgress(false);
        }

        @Override // org.telegram.ui.Components.SlideView
        public boolean onBackPressed(boolean z) {
            LoginActivity.this.needHideProgress(true);
            int i = this.prevType;
            if (i != 0) {
                LoginActivity.this.setPage(i, true, null, true);
                return false;
            }
            this.currentParams = null;
            this.nextPressed = false;
            return true;
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onResume() {
            super.onResume();
            checkPaste(true);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onShow() {
            super.onShow();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onShow$16();
                }
            }, LoginActivity.SHOW_DELAY);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onShow$16() {
            EditTextBoldCursor editTextBoldCursor = this.codeField;
            if (editTextBoldCursor != null) {
                editTextBoldCursor.requestFocus();
                EditTextBoldCursor editTextBoldCursor2 = this.codeField;
                editTextBoldCursor2.setSelection(editTextBoldCursor2.length());
                AndroidUtilities.showKeyboard(this.codeField);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onHide() {
            super.onHide();
            AndroidUtilities.cancelRunOnUIThread(this.checkPasteRunnable);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void saveStateParams(Bundle bundle) {
            if (this.currentParams != null) {
                bundle.putBundle("recoveryview_word" + this.currentType, this.currentParams);
            }
        }

        @Override // org.telegram.ui.Components.SlideView
        public void restoreStateParams(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle("recoveryview_word" + this.currentType);
            this.currentParams = bundle2;
            if (bundle2 != null) {
                setParams(bundle2, true);
            }
        }

        private void createTimer() {
            if (this.timeTimer != null) {
                return;
            }
            LoadingTextView loadingTextView = this.timeText;
            int i = Theme.key_windowBackgroundWhiteGrayText;
            loadingTextView.setTextColor(Theme.getColor(i));
            this.timeText.setTag(C2807R.id.color_key_tag, Integer.valueOf(i));
            Timer timer = new Timer();
            this.timeTimer = timer;
            timer.schedule(new C54014(), 0L, 1000L);
        }

        /* JADX INFO: renamed from: org.telegram.ui.LoginActivity$LoginActivityPhraseView$4 */
        public class C54014 extends TimerTask {
            public C54014() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (LoginActivityPhraseView.this.timeTimer == null) {
                    return;
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginActivityPhraseView$4$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$0();
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0() {
                double dCurrentTimeMillis = System.currentTimeMillis();
                double d = dCurrentTimeMillis - LoginActivityPhraseView.this.lastCurrentTime;
                LoginActivityPhraseView.this.lastCurrentTime = dCurrentTimeMillis;
                LoginActivityPhraseView loginActivityPhraseView = LoginActivityPhraseView.this;
                loginActivityPhraseView.time = (int) (((double) loginActivityPhraseView.time) - d);
                int i = LoginActivityPhraseView.this.time;
                LoginActivityPhraseView loginActivityPhraseView2 = LoginActivityPhraseView.this;
                if (i >= 1000) {
                    int i2 = (loginActivityPhraseView2.time / 1000) / 60;
                    int i3 = (LoginActivityPhraseView.this.time / 1000) - (i2 * 60);
                    LoginActivityPhraseView.this.timeText.setTextSize(1, 13.0f);
                    if (LoginActivityPhraseView.this.nextType == 4 || LoginActivityPhraseView.this.nextType == 3 || LoginActivityPhraseView.this.nextType == 11) {
                        LoginActivityPhraseView.this.timeText.setText(LocaleController.formatString(C2807R.string.CallAvailableIn2, Integer.valueOf(i2), Integer.valueOf(i3)));
                        return;
                    } else {
                        if (LoginActivityPhraseView.this.nextType == 2) {
                            LoginActivityPhraseView.this.timeText.setText(LocaleController.formatString(C2807R.string.SmsAvailableIn2, Integer.valueOf(i2), Integer.valueOf(i3)));
                            return;
                        }
                        return;
                    }
                }
                loginActivityPhraseView2.destroyTimer();
                if (LoginActivityPhraseView.this.nextType == 3 || LoginActivityPhraseView.this.nextType == 4 || LoginActivityPhraseView.this.nextType == 2 || LoginActivityPhraseView.this.nextType == 11) {
                    LoginActivityPhraseView.this.timeText.setTextSize(1, 15.0f);
                    int i4 = LoginActivityPhraseView.this.nextType;
                    LoginActivityPhraseView loginActivityPhraseView3 = LoginActivityPhraseView.this;
                    if (i4 == 4) {
                        loginActivityPhraseView3.timeText.setText(LocaleController.getString(C2807R.string.RequestCallButton));
                    } else {
                        int i5 = loginActivityPhraseView3.nextType;
                        LoginActivityPhraseView loginActivityPhraseView4 = LoginActivityPhraseView.this;
                        if (i5 == 15) {
                            loginActivityPhraseView4.timeText.setText(LocaleController.getString(C2807R.string.DidNotGetTheCodeFragment));
                        } else if (loginActivityPhraseView4.nextType == 11 || LoginActivityPhraseView.this.nextType == 3) {
                            LoginActivityPhraseView.this.timeText.setText(LocaleController.getString(C2807R.string.RequestMissedCall));
                        } else {
                            LoginActivityPhraseView.this.timeText.setText(AndroidUtilities.replaceArrows(LocaleController.getString(C2807R.string.RequestAnotherSMS), true, 0.0f, 0.0f));
                        }
                    }
                    LoadingTextView loadingTextView = LoginActivityPhraseView.this.timeText;
                    int i6 = Theme.key_chats_actionBackground;
                    loadingTextView.setTextColor(Theme.getColor(i6));
                    LoginActivityPhraseView.this.timeText.setTag(C2807R.id.color_key_tag, Integer.valueOf(i6));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void destroyTimer() {
            LoadingTextView loadingTextView = this.timeText;
            int i = Theme.key_windowBackgroundWhiteGrayText;
            loadingTextView.setTextColor(Theme.getColor(i));
            this.timeText.setTag(C2807R.id.color_key_tag, Integer.valueOf(i));
            try {
                synchronized (this.timerSync) {
                    try {
                        Timer timer = this.timeTimer;
                        if (timer != null) {
                            timer.cancel();
                            this.timeTimer = null;
                        }
                    } finally {
                    }
                }
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean beginsOk(String str) {
            if (this.beginning == null) {
                return true;
            }
            String lowerCase = trimLeft(str).toLowerCase();
            String lowerCase2 = this.beginning.toLowerCase();
            int iMin = Math.min(lowerCase.length(), lowerCase2.length());
            if (iMin <= 0) {
                return true;
            }
            return TextUtils.equals(lowerCase.substring(0, iMin), lowerCase2.substring(0, iMin));
        }

        private int trimLeftLen(String str) {
            int length = str.length();
            int i = 0;
            while (i < length && str.charAt(i) <= ' ') {
                i++;
            }
            return i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String trimLeft(String str) {
            int length = str.length();
            int i = 0;
            while (i < length && str.charAt(i) <= ' ') {
                i++;
            }
            return (i > 0 || length < str.length()) ? str.substring(i, length) : str;
        }
    }

    public class LoginPayView extends SlideView {
        private ButtonWithCounterView button;
        private ExplainStarsSheet.FeatureCell[] cells;
        private String lastError;
        private ImageView optionsButton;
        private Bundle params;
        private boolean polling;
        private long pollingFormId;
        private String pollingPhoneCodeHash;
        private String pollingPhoneNumber;
        private int pollingRequestId;
        private StarParticlesView starParticlesView;

        public LoginPayView(Context context) {
            super(context);
            this.cells = new ExplainStarsSheet.FeatureCell[3];
            this.pollingRequestId = -1;
            setOrientation(1);
            setClipChildren(false);
            setClipToPadding(false);
            setPadding(0, 0, 0, AndroidUtilities.dp(16.0f));
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setClipChildren(false);
            frameLayout.setClipToPadding(false);
            addView(frameLayout, LayoutHelper.createLinear(-1, 200));
            StarParticlesView starParticlesView = new StarParticlesView(context) { // from class: org.telegram.ui.LoginActivity.LoginPayView.1
                @Override // org.telegram.ui.Components.Premium.StarParticlesView, android.view.View
                public void onMeasure(int i, int i2) {
                    super.onMeasure(i, i2);
                    this.drawable.rect2.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight() - AndroidUtilities.dp(52.0f));
                }

                @Override // org.telegram.ui.Components.Premium.StarParticlesView
                public void configure() {
                    StarParticlesView.Drawable drawable = this.drawable;
                    drawable.useGradient = true;
                    drawable.useBlur = false;
                    drawable.checkBounds = true;
                    drawable.isCircle = true;
                    drawable.centerOffsetY = AndroidUtilities.dp(-14.0f);
                    StarParticlesView.Drawable drawable2 = this.drawable;
                    drawable2.minLifeTime = 2000L;
                    drawable2.randLifeTime = 3000;
                    drawable2.size1 = 16;
                    drawable2.useRotate = false;
                    drawable2.type = 28;
                    drawable2.colorKey = Theme.key_premiumGradient2;
                    drawable2.init();
                }
            };
            this.starParticlesView = starParticlesView;
            frameLayout.addView(starParticlesView, LayoutHelper.createFrame(-1, 200, 119));
            ImageView imageView = new ImageView(context);
            this.optionsButton = imageView;
            imageView.setImageResource(C2807R.drawable.ic_ab_other);
            this.optionsButton.setScaleType(ImageView.ScaleType.CENTER);
            ImageView imageView2 = this.optionsButton;
            int i = Theme.key_windowBackgroundWhiteBlackText;
            imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i, ((BaseFragment) LoginActivity.this).resourceProvider), PorterDuff.Mode.SRC_IN));
            this.optionsButton.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector)));
            frameLayout.addView(this.optionsButton, LayoutHelper.createFrame(32, 32.0f, 53, 0.0f, 16.0f, -2.0f, 0.0f));
            GLIconTextureView gLIconTextureView = new GLIconTextureView(context, 1, 1) { // from class: org.telegram.ui.LoginActivity.LoginPayView.2
                @Override // org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView, android.view.TextureView, android.view.View
                public void onAttachedToWindow() {
                    super.onAttachedToWindow();
                    setPaused(false);
                }

                @Override // org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView, android.view.View
                public void onDetachedFromWindow() {
                    super.onDetachedFromWindow();
                    setPaused(true);
                }
            };
            gLIconTextureView.setStarParticlesView(this.starParticlesView);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(50, 50, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            int i2 = Theme.key_premiumGradient2;
            canvas.drawColor(ColorUtils.blendARGB(Theme.getColor(i2), Theme.getColor(Theme.key_dialogBackground), 0.5f));
            gLIconTextureView.setBackgroundBitmap(bitmapCreateBitmap);
            GLIconRenderer gLIconRenderer = gLIconTextureView.mRenderer;
            gLIconRenderer.colorKey1 = i2;
            gLIconRenderer.colorKey2 = Theme.key_premiumGradient1;
            gLIconRenderer.updateColors();
            frameLayout.addView(gLIconTextureView, LayoutHelper.createFrame(160, 160, 1));
            TextView textView = new TextView(context);
            textView.setText(LocaleController.getString(C2807R.string.SMSFeeTitle));
            textView.setTextColor(Theme.getColor(i));
            textView.setTextSize(1, 20.0f);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setGravity(17);
            frameLayout.addView(textView, LayoutHelper.createFrame(-1, -2.0f, 49, 16.0f, 152.0f, 16.0f, 0.0f));
            this.cells[0] = new ExplainStarsSheet.FeatureCell(context, 1, ((BaseFragment) LoginActivity.this).resourceProvider);
            this.cells[0].set(C2807R.drawable.menu_high_price, LocaleController.getString(C2807R.string.SMSFee1Title), LocaleController.getString(C2807R.string.SMSFee1Text));
            addView(this.cells[0], LayoutHelper.createLinear(-1, -2, 55, 0, 0, 0, 6));
            this.cells[1] = new ExplainStarsSheet.FeatureCell(context, 1, ((BaseFragment) LoginActivity.this).resourceProvider);
            this.cells[1].set(C2807R.drawable.menu_feature_code, LocaleController.getString(C2807R.string.SMSFee2Title), LocaleController.getString(C2807R.string.SMSFee2Text));
            addView(this.cells[1], LayoutHelper.createLinear(-1, -2, 55, 0, 0, 0, 6));
            this.cells[2] = new ExplainStarsSheet.FeatureCell(context, 1, ((BaseFragment) LoginActivity.this).resourceProvider);
            this.cells[2].set(C2807R.drawable.menu_feature_hands, AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2807R.string.SMSFee3Title), new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            }), true, AndroidUtilities.dp(2.6666667f), AndroidUtilities.dp(1.0f)), LocaleController.getString(C2807R.string.SMSFee3Text));
            addView(this.cells[2], LayoutHelper.createLinear(-1, -2, 55, 0, 0, 0, 6));
            addView(new Space(context), LayoutHelper.createLinear(0, 0, 1.0f, 119));
            ButtonWithCounterView round = new ButtonWithCounterView(context, null).setRound();
            this.button = round;
            round.setLoading(true);
            addView(this.button, LayoutHelper.createLinear(-1, 48, 7, 0, 16, 0, 16));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            PremiumPreviewFragment premiumPreviewFragment = new PremiumPreviewFragment("sms");
            premiumPreviewFragment.setCurrentAccount(((BaseFragment) LoginActivity.this).currentAccount);
            LoginActivity.this.presentFragment(premiumPreviewFragment);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void setParams(Bundle bundle, boolean z) {
            super.setParams(bundle, z);
            this.params = bundle;
            String countryName = LocaleController.getCountryName(bundle == null ? null : bundle.getString("country"));
            String string = bundle == null ? null : bundle.getString("product");
            final String string2 = bundle == null ? null : bundle.getString("phoneFormated");
            final String string3 = bundle == null ? null : bundle.getString("phoneHash");
            final String string4 = bundle == null ? null : bundle.getString("support_email_email");
            final String string5 = bundle == null ? null : bundle.getString("support_email_subject");
            String string6 = bundle == null ? null : bundle.getString("currency");
            long j = bundle == null ? 0L : bundle.getLong("amount");
            int i = bundle == null ? 0 : bundle.getInt("premium_days");
            boolean zIsEmpty = TextUtils.isEmpty(countryName);
            ExplainStarsSheet.FeatureCell[] featureCellArr = this.cells;
            if (zIsEmpty) {
                featureCellArr[0].subtitleView.setText(LocaleController.getString(C2807R.string.SMSFee1Text));
            } else {
                featureCellArr[0].subtitleView.setText(LocaleController.formatString(C2807R.string.SMSFee1TextCountry, countryName));
            }
            this.cells[2].setSubtitle(i == 7 ? LocaleController.getString(C2807R.string.SMSFee3Text) : LocaleController.formatPluralStringComma("SMSFee3TextDays", i));
            this.optionsButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$setParams$2(string4, string5, string2, view);
                }
            });
            this.button.setEnabled(true);
            this.button.setOnClickListener(null);
            if (BuildVars.useInvoiceBilling()) {
                if (!TextUtils.isEmpty(string6) && j > 0) {
                    this.button.setVisibility(0);
                    this.button.setLoading(false);
                    this.button.setText(LocaleController.formatString(C2807R.string.SMSFeePurchaseTitle, BillingController.getInstance().formatCurrency(j, string6)), false);
                    this.button.setSubText(i == 7 ? LocaleController.getString(C2807R.string.SMSFeePurchaseText) : LocaleController.formatPluralStringComma("SMSFeePurchaseTextDays", i), false);
                    final int i2 = i;
                    final String str = string6;
                    final long j2 = j;
                    this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda7
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$setParams$12(str, j2, string3, string2, i2, view);
                        }
                    });
                    return;
                }
                this.button.setVisibility(0);
                this.button.setLoading(false);
                this.button.setEnabled(false);
                this.button.setText(LocaleController.getString(C2807R.string.Unavailable), false);
                return;
            }
            final String str2 = string3;
            final int i3 = i;
            boolean zIsEmpty2 = TextUtils.isEmpty(string);
            ButtonWithCounterView buttonWithCounterView = this.button;
            if (zIsEmpty2) {
                buttonWithCounterView.setVisibility(8);
                return;
            }
            buttonWithCounterView.setVisibility(0);
            this.button.setLoading(true);
            final String str3 = string;
            final String str4 = string2;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setParams$30(str3, str2, str4, i3);
                }
            };
            if (!BillingController.getInstance().isReady()) {
                BillingController.getInstance().whenSetuped(runnable);
            } else {
                runnable.run();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$2(final String str, final String str2, final String str3, View view) {
            ItemOptions.makeOptions(LoginActivity.this, this.optionsButton).add(C2807R.drawable.msg_help, LocaleController.getString(C2807R.string.SettingsHelp), new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setParams$1(str, str2, str3);
                }
            }).setGravity(5).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$1(String str, String str2, String str3) {
            try {
                PackageInfo packageInfo = ApplicationLoader.applicationContext.getPackageManager().getPackageInfo(ApplicationLoader.applicationContext.getPackageName(), 0);
                String str4 = String.format(Locale.US, "%s (%d)", packageInfo.versionName, Integer.valueOf(packageInfo.versionCode));
                Intent intent = new Intent("android.intent.action.SENDTO");
                intent.setData(Uri.parse("mailto:"));
                if (!TextUtils.isEmpty(str)) {
                    intent.putExtra("android.intent.extra.EMAIL", new String[]{str});
                } else {
                    intent.putExtra("android.intent.extra.EMAIL", new String[]{"sms@telegram.org"});
                }
                if (!TextUtils.isEmpty(str2)) {
                    intent.putExtra("android.intent.extra.SUBJECT", str2);
                } else {
                    intent.putExtra("android.intent.extra.SUBJECT", "Android Registration/Login Billing Issue #billing_issue");
                }
                StringBuilder sb = new StringBuilder();
                sb.append("Technical Details (PLEASE DO NOT EDIT OR REMOVE)\n");
                sb.append("Device: ");
                sb.append(Build.MANUFACTURER);
                sb.append(" ");
                sb.append(Build.MODEL);
                sb.append("\n");
                sb.append("OS version: SDK ");
                int i = Build.VERSION.SDK_INT;
                sb.append(i);
                sb.append("\n");
                sb.append("Locale: ");
                sb.append(Locale.getDefault());
                sb.append("\n");
                sb.append("\n");
                sb.append("Target Phone: +");
                sb.append(str3);
                sb.append("\n");
                sb.append("\n");
                try {
                    SubscriptionManager subscriptionManagerFrom = SubscriptionManager.from(getContext());
                    List<SubscriptionInfo> completeActiveSubscriptionInfoList = i >= 30 ? subscriptionManagerFrom.getCompleteActiveSubscriptionInfoList() : null;
                    if ((completeActiveSubscriptionInfoList == null || completeActiveSubscriptionInfoList.isEmpty()) && i >= 28) {
                        completeActiveSubscriptionInfoList = subscriptionManagerFrom.getAccessibleSubscriptionInfoList();
                    }
                    if (completeActiveSubscriptionInfoList == null || completeActiveSubscriptionInfoList.isEmpty()) {
                        completeActiveSubscriptionInfoList = subscriptionManagerFrom.getActiveSubscriptionInfoList();
                    }
                    if (completeActiveSubscriptionInfoList != null) {
                        for (SubscriptionInfo subscriptionInfo : completeActiveSubscriptionInfoList) {
                            String number = subscriptionInfo.getNumber();
                            if (!TextUtils.isEmpty(number)) {
                                String str5 = "SIM" + subscriptionInfo.getSimSlotIndex();
                                sb.append(str5);
                                sb.append(".Phone: ");
                                sb.append(number);
                                sb.append("\n");
                                sb.append(str5);
                                sb.append(".MCC: ");
                                sb.append(subscriptionInfo.getMcc());
                                sb.append("\n");
                                sb.append(str5);
                                sb.append(".MNC: ");
                                sb.append(subscriptionInfo.getMnc());
                                sb.append("\n");
                                sb.append(str5);
                                sb.append(".Carrier: ");
                                sb.append(TextUtils.isEmpty(subscriptionInfo.getCarrierName()) ? "unknown" : subscriptionInfo.getCarrierName());
                                sb.append("\n\n");
                            }
                        }
                    }
                } catch (Exception e) {
                    FileLog.m1040e(e);
                }
                if (Build.VERSION.SDK_INT >= 29) {
                    try {
                        TelephonyManager telephonyManager = (TelephonyManager) getContext().getSystemService(TelephonyManager.class);
                        SignalStrength signalStrength = telephonyManager.getSignalStrength();
                        if (signalStrength != null) {
                            sb.append("Signal: ");
                            sb.append(signalStrength.getLevel());
                            sb.append("/4\n");
                        } else {
                            sb.append("Signal: unknown\n");
                        }
                    } catch (Exception e2) {
                        FileLog.m1040e(e2);
                    }
                } else {
                    sb.append("Signal: unknown\n");
                }
                sb.append("Wi-Fi: ");
                sb.append(AndroidUtilities.isWifiEnabled(getContext()));
                sb.append("\n");
                sb.append("Airplane Mode: ");
                sb.append(AndroidUtilities.isInAirplaneMode(getContext()));
                sb.append("\n");
                sb.append("\n");
                sb.append("App: ");
                sb.append(BuildVars.getExteraAppId());
                sb.append("\n");
                sb.append("App version: ");
                sb.append(str4);
                sb.append("\n");
                sb.append("\n");
                sb.append("Issue: ");
                sb.append("billing_issue");
                sb.append("\n");
                if (!TextUtils.isEmpty(this.lastError)) {
                    sb.append("Error: ");
                    sb.append(this.lastError);
                    sb.append("\n");
                }
                sb.append("\n\n================================================\n");
                sb.append("WRITE YOUR COMMENT HERE:\n");
                sb.append("\n");
                sb.append("\n");
                intent.putExtra("android.intent.extra.TEXT", sb.toString());
                getContext().startActivity(Intent.createChooser(intent, "Send email..."));
            } catch (Exception unused) {
                LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.AppName), LocaleController.getString("NoMailInstalled", C2807R.string.NoMailInstalled));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$12(String str, long j, String str2, String str3, int i, View view) {
            if (this.button.isLoading()) {
                return;
            }
            this.button.setLoading(true);
            final TLRPC.TL_inputStorePaymentAuthCode tL_inputStorePaymentAuthCode = new TLRPC.TL_inputStorePaymentAuthCode();
            tL_inputStorePaymentAuthCode.currency = str;
            tL_inputStorePaymentAuthCode.amount = j;
            if (TextUtils.isEmpty(str2)) {
                str2 = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            tL_inputStorePaymentAuthCode.phone_code_hash = str2;
            tL_inputStorePaymentAuthCode.phone_number = str3;
            tL_inputStorePaymentAuthCode.premium_days = i;
            final TLRPC.TL_inputInvoicePremiumAuthCode tL_inputInvoicePremiumAuthCode = new TLRPC.TL_inputInvoicePremiumAuthCode();
            tL_inputInvoicePremiumAuthCode.purpose = tL_inputStorePaymentAuthCode;
            TLRPC.TL_payments_getPaymentForm tL_payments_getPaymentForm = new TLRPC.TL_payments_getPaymentForm();
            tL_payments_getPaymentForm.invoice = tL_inputInvoicePremiumAuthCode;
            JSONObject jSONObjectMakeThemeParams = BotWebViewSheet.makeThemeParams(null);
            if (jSONObjectMakeThemeParams != null) {
                TLRPC.TL_dataJSON tL_dataJSON = new TLRPC.TL_dataJSON();
                tL_payments_getPaymentForm.theme_params = tL_dataJSON;
                tL_dataJSON.data = jSONObjectMakeThemeParams.toString();
                tL_payments_getPaymentForm.flags |= 1;
            }
            LoginActivity.this.getConnectionsManager().sendRequest(tL_payments_getPaymentForm, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda11
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$setParams$11(tL_inputInvoicePremiumAuthCode, tL_inputStorePaymentAuthCode, tLObject, tL_error);
                }
            }, 74);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$11(final TLRPC.TL_inputInvoicePremiumAuthCode tL_inputInvoicePremiumAuthCode, final TLRPC.TL_inputStorePaymentAuthCode tL_inputStorePaymentAuthCode, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setParams$10(tLObject, tL_inputInvoicePremiumAuthCode, tL_inputStorePaymentAuthCode, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$10(TLObject tLObject, TLRPC.TL_inputInvoicePremiumAuthCode tL_inputInvoicePremiumAuthCode, final TLRPC.TL_inputStorePaymentAuthCode tL_inputStorePaymentAuthCode, TLRPC.TL_error tL_error) {
            this.button.setLoading(false);
            if (tLObject instanceof TLRPC.PaymentForm) {
                final TLRPC.PaymentForm paymentForm = (TLRPC.PaymentForm) tLObject;
                LoginActivity.this.getMessagesController().putUsers(paymentForm.users, false);
                PaymentFormActivity paymentFormActivity = new PaymentFormActivity(paymentForm, (TLRPC.InputInvoice) tL_inputInvoicePremiumAuthCode, true, (BaseFragment) LoginActivity.this);
                paymentFormActivity.setCustomResultReceiver(new Utilities.Callback() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda16
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$setParams$4(tL_inputStorePaymentAuthCode, paymentForm, (TLRPC.TL_payments_paymentResult) obj);
                    }
                });
                paymentFormActivity.setCustomAnyResultReceiver(new Utilities.Callback() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda17
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$setParams$6(tL_inputStorePaymentAuthCode, paymentForm, (TLRPC.payments_PaymentResult) obj);
                    }
                });
                paymentFormActivity.setCustomErrorReceiver(new Utilities.CallbackReturn() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda18
                    @Override // org.telegram.messenger.Utilities.CallbackReturn
                    public final Object run(Object obj) {
                        return this.f$0.lambda$setParams$8((TLRPC.TL_error) obj);
                    }
                });
                LoginActivity.this.presentFragment(paymentFormActivity);
                return;
            }
            if (tL_error != null) {
                if ("PHONE_CODE_EXPIRED".equalsIgnoreCase(tL_error.text)) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda19
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$setParams$9();
                        }
                    });
                    return;
                } else {
                    this.lastError = tL_error.text;
                    BulletinFactory.of(LoginActivity.this.slideViewsContainer, null).createSimpleBulletin(C2807R.raw.error, LocaleController.formatString(C2807R.string.UnknownErrorCode, tL_error.text));
                    return;
                }
            }
            BulletinFactory.of(LoginActivity.this.slideViewsContainer, null).createSimpleBulletin(C2807R.raw.error, LocaleController.getString(C2807R.string.UnknownError));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$4(final TLRPC.TL_inputStorePaymentAuthCode tL_inputStorePaymentAuthCode, final TLRPC.PaymentForm paymentForm, TLRPC.TL_payments_paymentResult tL_payments_paymentResult) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setParams$3(tL_inputStorePaymentAuthCode, paymentForm);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$3(TLRPC.TL_inputStorePaymentAuthCode tL_inputStorePaymentAuthCode, TLRPC.PaymentForm paymentForm) {
            startPoll(tL_inputStorePaymentAuthCode.phone_number, tL_inputStorePaymentAuthCode.phone_code_hash, paymentForm.form_id);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$6(final TLRPC.TL_inputStorePaymentAuthCode tL_inputStorePaymentAuthCode, final TLRPC.PaymentForm paymentForm, TLRPC.payments_PaymentResult payments_paymentresult) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setParams$5(tL_inputStorePaymentAuthCode, paymentForm);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$5(TLRPC.TL_inputStorePaymentAuthCode tL_inputStorePaymentAuthCode, TLRPC.PaymentForm paymentForm) {
            startPoll(tL_inputStorePaymentAuthCode.phone_number, tL_inputStorePaymentAuthCode.phone_code_hash, paymentForm.form_id);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Boolean lambda$setParams$8(TLRPC.TL_error tL_error) {
            if (tL_error != null && "PHONE_CODE_EXPIRED".equalsIgnoreCase(tL_error.text)) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda21
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setParams$7();
                    }
                });
                return Boolean.TRUE;
            }
            return Boolean.FALSE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$7() {
            onBackPressed(true);
            LoginActivity.this.setPage(0, true, null, true);
            LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.CodeExpired));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$9() {
            onBackPressed(true);
            LoginActivity.this.setPage(0, true, null, true);
            LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.CodeExpired));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$30(final String str, final String str2, final String str3, final int i) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(QueryProductDetailsParams.Product.newBuilder().setProductType("inapp").setProductId(str).build());
            FileLog.m1037d("LoginBilling querying \"" + str + "\" product");
            BillingController.getInstance().queryProductDetails(arrayList, new BillingController.ProductDetailsResponseListenerLegacy() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda10
                @Override // org.telegram.messenger.BillingController.ProductDetailsResponseListenerLegacy
                public final void onProductDetailsResponse(BillingResult billingResult, List list) {
                    this.f$0.lambda$setParams$29(str, str2, str3, i, billingResult, list);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$29(final String str, final String str2, final String str3, final int i, final BillingResult billingResult, final List list) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setParams$28(str, billingResult, list, str2, str3, i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$28(final String str, BillingResult billingResult, List list, String str2, String str3, final int i) {
            FileLog.m1037d("LoginBilling queried \"" + str + "\" product: " + BillingController.getResponseCodeString(billingResult.getResponseCode()));
            if (billingResult.getResponseCode() != 0) {
                this.lastError = "BILLING_" + BillingController.getResponseCodeString(billingResult.getResponseCode());
                BulletinFactory.of(LoginActivity.this.slideViewsContainer, null).createSimpleBulletin(C2807R.raw.error, LocaleController.formatString(C2807R.string.UnknownErrorCode, BillingController.getResponseCodeString(billingResult.getResponseCode())));
                return;
            }
            if (list != null && !list.isEmpty()) {
                final ProductDetails productDetails = (ProductDetails) list.get(0);
                final ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = productDetails.getOneTimePurchaseOfferDetails();
                final TLRPC.TL_inputStorePaymentAuthCode tL_inputStorePaymentAuthCode = new TLRPC.TL_inputStorePaymentAuthCode();
                tL_inputStorePaymentAuthCode.currency = oneTimePurchaseOfferDetails.getPriceCurrencyCode();
                tL_inputStorePaymentAuthCode.amount = (long) ((oneTimePurchaseOfferDetails.getPriceAmountMicros() / Math.pow(10.0d, 6.0d)) * Math.pow(10.0d, BillingController.getInstance().getCurrencyExp(tL_inputStorePaymentAuthCode.currency)));
                tL_inputStorePaymentAuthCode.phone_code_hash = TextUtils.isEmpty(str2) ? _UrlKt.FRAGMENT_ENCODE_SET : str2;
                tL_inputStorePaymentAuthCode.phone_number = str3;
                tL_inputStorePaymentAuthCode.premium_days = i;
                FileLog.m1037d("LoginBilling found \"" + str + "\" product, with currency=" + tL_inputStorePaymentAuthCode.currency + " amount=" + tL_inputStorePaymentAuthCode.amount + "; phone=" + str3 + ", phone_code_hash=" + str2);
                final TLRPC.TL_payments_canPurchaseStore tL_payments_canPurchaseStore = new TLRPC.TL_payments_canPurchaseStore();
                tL_payments_canPurchaseStore.purpose = tL_inputStorePaymentAuthCode;
                ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(tL_payments_canPurchaseStore, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda15
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$setParams$27(oneTimePurchaseOfferDetails, i, productDetails, tL_inputStorePaymentAuthCode, str, tL_payments_canPurchaseStore, tLObject, tL_error);
                    }
                }, 10);
                return;
            }
            this.lastError = "PRODUCT_NOT_FOUND";
            BulletinFactory.of(LoginActivity.this.slideViewsContainer, null).createSimpleBulletin(C2807R.raw.error, LocaleController.formatString(C2807R.string.UnknownErrorCode, "PRODUCT_NOT_FOUND"));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$27(final ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails, final int i, final ProductDetails productDetails, final TLRPC.TL_inputStorePaymentAuthCode tL_inputStorePaymentAuthCode, final String str, final TLRPC.TL_payments_canPurchaseStore tL_payments_canPurchaseStore, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setParams$26(tLObject, tL_error, oneTimePurchaseOfferDetails, i, productDetails, tL_inputStorePaymentAuthCode, str, tL_payments_canPurchaseStore);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$26(TLObject tLObject, TLRPC.TL_error tL_error, ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails, int i, final ProductDetails productDetails, final TLRPC.TL_inputStorePaymentAuthCode tL_inputStorePaymentAuthCode, final String str, final TLRPC.TL_payments_canPurchaseStore tL_payments_canPurchaseStore) {
            FileLog.m1037d("LoginBilling canPurchaseStore returned " + tLObject + " " + tL_error);
            if (tLObject instanceof TLRPC.TL_boolTrue) {
                this.button.setText(LocaleController.formatString(C2807R.string.SMSFeePurchaseTitle, oneTimePurchaseOfferDetails.getFormattedPrice()), false);
                this.button.setSubText(i == 7 ? LocaleController.getString(C2807R.string.SMSFeePurchaseText) : LocaleController.formatPluralStringComma("SMSFeePurchaseTextDays", i), false);
                this.button.setLoading(false);
                this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda25
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$setParams$25(productDetails, tL_inputStorePaymentAuthCode, str, tL_payments_canPurchaseStore, view);
                    }
                });
                return;
            }
            if (tLObject instanceof TLRPC.TL_boolFalse) {
                this.lastError = "RESPONSE_FALSE";
                BulletinFactory.of(LoginActivity.this.slideViewsContainer, null).createSimpleBulletin(C2807R.raw.error, LocaleController.formatString(C2807R.string.UnknownErrorCode, "RESPONSE_FALSE"));
            } else if (tL_error != null) {
                this.lastError = tL_error.text;
                BulletinFactory.of(LoginActivity.this.slideViewsContainer, null).showForError(tL_error);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$25(final ProductDetails productDetails, final TLRPC.TL_inputStorePaymentAuthCode tL_inputStorePaymentAuthCode, final String str, final TLRPC.TL_payments_canPurchaseStore tL_payments_canPurchaseStore, View view) {
            if (this.button.isLoading()) {
                return;
            }
            this.button.setLoading(true);
            final Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda27
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$setParams$13((String) obj);
                }
            };
            FileLog.m1037d("LoginBilling, querying done purchases...");
            final Runnable runnable = new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setParams$18(productDetails, callback, tL_inputStorePaymentAuthCode);
                }
            };
            BillingController.getInstance().queryPurchases("inapp", new PurchasesResponseListener() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda29
                @Override // com.android.billingclient.api.PurchasesResponseListener
                public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                    this.f$0.lambda$setParams$24(str, tL_inputStorePaymentAuthCode, tL_payments_canPurchaseStore, runnable, billingResult, list);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$13(String str) {
            FileLog.m1037d("LoginBilling purchased done " + str);
            if ("CANCELLED".equalsIgnoreCase(str)) {
                this.button.setLoading(false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$18(ProductDetails productDetails, final Utilities.Callback callback, TLRPC.TL_inputStorePaymentAuthCode tL_inputStorePaymentAuthCode) {
            LoginActivity.this.paid = true;
            BillingController.getInstance().addResultListener(productDetails.getProductId(), new Consumer() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda31
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    LoginActivity.LoginPayView.$r8$lambda$pAGp1uDnxfAJNNKcngfU5B1nZnE(callback, (BillingResult) obj);
                }
            });
            BillingController.getInstance().setOnCanceled(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda32
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            callback.run("CANCELLED");
                        }
                    });
                }
            });
            BillingController.getInstance().launchBillingFlow(LoginActivity.this.getParentActivity(), AccountInstance.getInstance(((BaseFragment) LoginActivity.this).currentAccount), tL_inputStorePaymentAuthCode, Collections.singletonList(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(productDetails).build()));
        }

        public static /* synthetic */ void $r8$lambda$pAGp1uDnxfAJNNKcngfU5B1nZnE(final Utilities.Callback callback, BillingResult billingResult) {
            final String responseCodeString = billingResult.getResponseCode() == 0 ? null : BillingController.getResponseCodeString(billingResult.getResponseCode());
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(responseCodeString);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$24(final String str, final TLRPC.TL_inputStorePaymentAuthCode tL_inputStorePaymentAuthCode, final TLRPC.TL_payments_canPurchaseStore tL_payments_canPurchaseStore, final Runnable runnable, final BillingResult billingResult, final List list) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda33
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setParams$23(billingResult, list, str, tL_inputStorePaymentAuthCode, tL_payments_canPurchaseStore, runnable);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$23(BillingResult billingResult, List list, String str, final TLRPC.TL_inputStorePaymentAuthCode tL_inputStorePaymentAuthCode, final TLRPC.TL_payments_canPurchaseStore tL_payments_canPurchaseStore, final Runnable runnable) {
            if (billingResult.getResponseCode() == 0 && list != null && !list.isEmpty()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    final Purchase purchase = (Purchase) it.next();
                    if (purchase.getProducts().contains(str)) {
                        TLRPC.TL_payments_assignPlayMarketTransaction tL_payments_assignPlayMarketTransaction = new TLRPC.TL_payments_assignPlayMarketTransaction();
                        TLRPC.TL_dataJSON tL_dataJSON = new TLRPC.TL_dataJSON();
                        tL_payments_assignPlayMarketTransaction.receipt = tL_dataJSON;
                        tL_dataJSON.data = purchase.getOriginalJson();
                        tL_inputStorePaymentAuthCode.restore = true;
                        tL_payments_assignPlayMarketTransaction.purpose = tL_inputStorePaymentAuthCode;
                        LoginActivity.this.getConnectionsManager().sendRequest(tL_payments_assignPlayMarketTransaction, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda0
                            @Override // org.telegram.tgnet.RequestDelegate
                            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                this.f$0.lambda$setParams$22(tL_inputStorePaymentAuthCode, purchase, tL_payments_canPurchaseStore, runnable, tLObject, tL_error);
                            }
                        }, 74);
                        return;
                    }
                }
            }
            runnable.run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$22(final TLRPC.TL_inputStorePaymentAuthCode tL_inputStorePaymentAuthCode, Purchase purchase, TLRPC.TL_payments_canPurchaseStore tL_payments_canPurchaseStore, final Runnable runnable, TLObject tLObject, TLRPC.TL_error tL_error) {
            if (!(tLObject instanceof TLRPC.Updates)) {
                if (tL_error != null) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            runnable.run();
                        }
                    });
                    return;
                }
                return;
            }
            TLRPC.Updates updates = (TLRPC.Updates) tLObject;
            ArrayList arrayListFindUpdatesAndRemove = MessagesController.findUpdatesAndRemove(updates, TL_update.TL_updateSentPhoneCode.class);
            int size = arrayListFindUpdatesAndRemove.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayListFindUpdatesAndRemove.get(i);
                i++;
                final TL_update.TL_updateSentPhoneCode tL_updateSentPhoneCode = (TL_update.TL_updateSentPhoneCode) obj;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setParams$19(tL_inputStorePaymentAuthCode, tL_updateSentPhoneCode);
                    }
                });
            }
            LoginActivity.this.getMessagesController().processUpdates(updates, false);
            BillingController.getInstance().consumeGiftPurchase(purchase, tL_payments_canPurchaseStore.purpose, null);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setParams$20();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$19(TLRPC.TL_inputStorePaymentAuthCode tL_inputStorePaymentAuthCode, TL_update.TL_updateSentPhoneCode tL_updateSentPhoneCode) {
            LoginActivity.this.paid = true;
            LoginActivity loginActivity = (LoginActivity) LaunchActivity.findFragment(LoginActivity.class);
            if (loginActivity == null) {
                loginActivity = new LoginActivity(((BaseFragment) LoginActivity.this).currentAccount);
                BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                if (safeLastFragment != null) {
                    safeLastFragment.presentFragment(loginActivity);
                }
            }
            loginActivity.open(tL_inputStorePaymentAuthCode.phone_number, tL_updateSentPhoneCode.sent_code);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setParams$20() {
            this.button.setLoading(false);
        }

        private void closeAllPaymentFormActivities() {
            INavigationLayout parentLayout = LoginActivity.this.getParentLayout();
            if (parentLayout == null || parentLayout.getFragmentStack() == null) {
                return;
            }
            List<BaseFragment> fragmentStack = parentLayout.getFragmentStack();
            BaseFragment baseFragment = fragmentStack.isEmpty() ? null : fragmentStack.get(fragmentStack.size() - 1);
            ArrayList arrayList = new ArrayList(fragmentStack);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                BaseFragment baseFragment2 = (BaseFragment) obj;
                if ((baseFragment2 instanceof PaymentFormActivity) && baseFragment2 != baseFragment) {
                    baseFragment2.removeSelfFromStack();
                }
            }
            if (baseFragment instanceof PaymentFormActivity) {
                parentLayout.closeLastFragment(true);
            }
        }

        private void startPoll(String str, String str2, long j) {
            if (this.polling) {
                return;
            }
            this.polling = true;
            this.pollingPhoneNumber = str;
            this.pollingPhoneCodeHash = str2;
            this.pollingFormId = j;
            this.button.setLoading(true);
            poll();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void poll() {
            if (this.polling) {
                TLRPC.TL_checkPaidAuth tL_checkPaidAuth = new TLRPC.TL_checkPaidAuth();
                tL_checkPaidAuth.form_id = this.pollingFormId;
                tL_checkPaidAuth.phone_number = this.pollingPhoneNumber;
                tL_checkPaidAuth.phone_code_hash = this.pollingPhoneCodeHash;
                this.pollingRequestId = ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).sendRequest(tL_checkPaidAuth, new RequestDelegate() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda24
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$poll$32(tLObject, tL_error);
                    }
                }, 1096);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$poll$32(final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$poll$31(tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$poll$31(TLObject tLObject, TLRPC.TL_error tL_error) {
            this.pollingRequestId = -1;
            if (tLObject instanceof TLRPC.auth_SentCode) {
                this.polling = false;
                this.button.setLoading(false);
                closeAllPaymentFormActivities();
                LoginActivity.this.fillNextCodeParams(this.params, (TLRPC.auth_SentCode) tLObject);
                return;
            }
            if (tL_error != null) {
                String str = tL_error.text;
                if (str != null && str.startsWith("FLOOD_WAIT_")) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LoginActivity$LoginPayView$$ExternalSyntheticLambda30
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.poll();
                        }
                    }, Integer.parseInt(tL_error.text.substring(11)) * 1000);
                    return;
                }
                String str2 = tL_error.text;
                if (str2 != null && "PHONE_CODE_EXPIRED".equalsIgnoreCase(str2)) {
                    onBackPressed(true);
                    LoginActivity.this.setPage(0, true, null, true);
                    LoginActivity.this.needShowAlert(LocaleController.getString(C2807R.string.RestorePasswordNoEmailTitle), LocaleController.getString(C2807R.string.CodeExpired));
                } else {
                    this.lastError = tL_error.text;
                    this.polling = false;
                    this.button.setLoading(false);
                    BulletinFactory.of(LoginActivity.this.slideViewsContainer, null).createSimpleBulletin(C2807R.raw.error, LocaleController.formatString(C2807R.string.UnknownErrorCode, tL_error.text));
                }
            }
        }

        private void stopPoll() {
            if (this.pollingRequestId >= 0) {
                ConnectionsManager.getInstance(((BaseFragment) LoginActivity.this).currentAccount).cancelRequest(this.pollingRequestId, true);
                this.pollingRequestId = -1;
            }
            this.polling = false;
            this.button.setLoading(false);
        }

        @Override // org.telegram.ui.Components.SlideView
        public void onHide() {
            super.onHide();
            stopPoll();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void clearViews() {
        View view = this.fragmentView;
        if (view != null) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                try {
                    onRemoveFromParent();
                    BaseFragment.removeViewFromParent(viewGroup, this.fragmentView);
                } catch (Exception e) {
                    FileLog.m1040e(e);
                }
            }
            if (this.pendingSwitchingAccount) {
                this.cachedFragmentView = this.fragmentView;
            }
            this.fragmentView = null;
        }
        ActionBar actionBar = this.actionBar;
        if (actionBar != null && !this.pendingSwitchingAccount) {
            ViewGroup viewGroup2 = (ViewGroup) actionBar.getParent();
            if (viewGroup2 != null) {
                try {
                    BaseFragment.removeViewFromParent(viewGroup2, this.actionBar);
                } catch (Exception e2) {
                    FileLog.m1040e(e2);
                }
            }
            this.actionBar = null;
        }
        clearSheets();
        this.parentLayout = null;
    }
}
