package org.telegram.ui.Wallet;

import android.app.Activity;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLMethod;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.TwoStepVerificationActivity;
import org.telegram.ui.TwoStepVerificationSetupActivity;

/* JADX INFO: loaded from: classes8.dex */
public abstract class PasswordRequest {
    public static <Result extends TLObject> void open(int i, Utilities.CallbackReturn<TLRPC.InputCheckPasswordSRP, TLMethod<Result>> callbackReturn, Utilities.Callback3<Result, TLRPC.TL_error, TLRPC.InputCheckPasswordSRP> callback3) {
        open(i, callbackReturn, callback3, false, true);
    }

    public static <Result extends TLObject> void open(int i, Utilities.CallbackReturn<TLRPC.InputCheckPasswordSRP, TLMethod<Result>> callbackReturn, Utilities.Callback3<Result, TLRPC.TL_error, TLRPC.InputCheckPasswordSRP> callback3, boolean z, boolean z2) {
        init(i, callbackReturn, null, null, null, callback3, z, z2, new RequestScope(null));
    }

    public static <Result extends TLObject> void open(int i, Utilities.Callback2<TLRPC.InputCheckPasswordSRP, Utilities.Callback<TLMethod<Result>>> callback2, Utilities.Callback3<Result, TLRPC.TL_error, TLRPC.InputCheckPasswordSRP> callback3, boolean z, boolean z2, Runnable runnable) {
        init(i, null, callback2, null, null, callback3, z, z2, new RequestScope(runnable));
    }

    public static final class RequestScope {
        final Runnable cleanup;
        boolean delivering;
        boolean finished;

        public RequestScope(Runnable runnable) {
            this.cleanup = runnable;
        }

        public void close() {
            if (this.finished) {
                return;
            }
            this.finished = true;
            Runnable runnable = this.cleanup;
            if (runnable != null) {
                runnable.run();
            }
        }

        public TwoStepVerificationActivity passwordFragment() {
            return new TwoStepVerificationActivity() { // from class: org.telegram.ui.Wallet.PasswordRequest.RequestScope.1
                @Override // org.telegram.ui.TwoStepVerificationActivity, org.telegram.ui.ActionBar.BaseFragment
                public void onFragmentDestroy() {
                    RequestScope requestScope = RequestScope.this;
                    if (requestScope.cleanup != null && !requestScope.delivering) {
                        requestScope.close();
                    }
                    super.onFragmentDestroy();
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <Result extends TLObject> void init(final int i, final Utilities.CallbackReturn<TLRPC.InputCheckPasswordSRP, TLMethod<Result>> callbackReturn, final Utilities.Callback2<TLRPC.InputCheckPasswordSRP, Utilities.Callback<TLMethod<Result>>> callback2, final TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, final TwoStepVerificationActivity twoStepVerificationActivity, final Utilities.Callback3<Result, TLRPC.TL_error, TLRPC.InputCheckPasswordSRP> callback3, final boolean z, final boolean z2, final RequestScope requestScope) {
        if (requestScope.finished) {
            return;
        }
        final BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null || safeLastFragment.getContext() == null) {
            requestScope.close();
            return;
        }
        final Activity parentActivity = safeLastFragment.getParentActivity();
        TLRPC.User currentUser = UserConfig.getInstance(i).getCurrentUser();
        if (parentActivity == null || currentUser == null) {
            requestScope.close();
            return;
        }
        final AlertDialog alertDialog = new AlertDialog(safeLastFragment.getContext(), 3);
        if (z2) {
            alertDialog.showDelayed(250L);
        }
        Utilities.Callback<TLMethod<Result>> callback = new Utilities.Callback() { // from class: org.telegram.ui.Wallet.PasswordRequest$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                PasswordRequest.$r8$lambda$39QW0wQCKCdKCgmk019U2gso7Fg(requestScope, alertDialog, i, twoStepVerificationActivity, callbackReturn, callback2, callback3, z, z2, parentActivity, safeLastFragment, inputCheckPasswordSRP, (TLMethod) obj);
            }
        };
        if (callbackReturn != null) {
            callback.run(callbackReturn.run(inputCheckPasswordSRP));
        } else if (callback2 != null) {
            callback2.run(inputCheckPasswordSRP, callback);
        }
    }

    public static /* synthetic */ void $r8$lambda$39QW0wQCKCdKCgmk019U2gso7Fg(final RequestScope requestScope, final AlertDialog alertDialog, final int i, final TwoStepVerificationActivity twoStepVerificationActivity, final Utilities.CallbackReturn callbackReturn, final Utilities.Callback2 callback2, final Utilities.Callback3 callback3, final boolean z, final boolean z2, final Activity activity, final BaseFragment baseFragment, final TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, TLMethod tLMethod) {
        if (requestScope.finished || tLMethod == null) {
            alertDialog.dismiss();
            requestScope.close();
        } else {
            ConnectionsManager.getInstance(i).sendRequestTyped(tLMethod, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.PasswordRequest$$ExternalSyntheticLambda7
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    PasswordRequest.m23165$r8$lambda$7E4P6VHS6BbE84uHrdZ1WinhXM(alertDialog, requestScope, twoStepVerificationActivity, i, callbackReturn, callback2, callback3, z, z2, activity, baseFragment, inputCheckPasswordSRP, (TLObject) obj, (TLRPC.TL_error) obj2);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$7E4P6VHS6BbE84-uHrdZ1WinhXM, reason: not valid java name */
    public static /* synthetic */ void m23165$r8$lambda$7E4P6VHS6BbE84uHrdZ1WinhXM(AlertDialog alertDialog, final RequestScope requestScope, final TwoStepVerificationActivity twoStepVerificationActivity, final int i, final Utilities.CallbackReturn callbackReturn, final Utilities.Callback2 callback2, final Utilities.Callback3 callback3, final boolean z, final boolean z2, final Activity activity, final BaseFragment baseFragment, TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, TLObject tLObject, final TLRPC.TL_error tL_error) {
        alertDialog.dismiss();
        if (requestScope.finished) {
            return;
        }
        if (tL_error != null) {
            if ("PASSWORD_MISSING".equals(tL_error.text) || tL_error.text.startsWith("PASSWORD_TOO_FRESH_") || tL_error.text.startsWith("SESSION_TOO_FRESH_")) {
                if (twoStepVerificationActivity != null) {
                    twoStepVerificationActivity.needHideProgress();
                }
                ConnectionsManager.getInstance(i).sendRequestTyped(new TL_account.getPassword(), new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.PasswordRequest$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        PasswordRequest.$r8$lambda$JP0A0RDN5eI4P4rrWHaZYh_rmUI(requestScope, i, callbackReturn, callback2, callback3, z, z2, activity, tL_error, baseFragment, twoStepVerificationActivity, (TL_account.Password) obj, (TLRPC.TL_error) obj2);
                    }
                }, 8);
                return;
            } else {
                if ("SRP_ID_INVALID".equals(tL_error.text)) {
                    ConnectionsManager.getInstance(i).sendRequestTyped(new TL_account.getPassword(), new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.PasswordRequest$$ExternalSyntheticLambda1
                        @Override // org.telegram.messenger.Utilities.Callback2
                        public final void run(Object obj, Object obj2) {
                            PasswordRequest.$r8$lambda$wcPQ016Zc40u4v7VoijyqTeoUA4(requestScope, twoStepVerificationActivity, i, callbackReturn, callback2, callback3, z, z2, (TL_account.Password) obj, (TLRPC.TL_error) obj2);
                        }
                    }, 8);
                    return;
                }
                requestScope.delivering = true;
                if (twoStepVerificationActivity != null) {
                    try {
                        twoStepVerificationActivity.needHideProgress();
                        twoStepVerificationActivity.finishFragment();
                    } finally {
                    }
                }
                callback3.run(tLObject, tL_error, inputCheckPasswordSRP);
                requestScope.close();
                return;
            }
        }
        requestScope.delivering = true;
        if (twoStepVerificationActivity != null) {
            try {
                twoStepVerificationActivity.needHideProgress();
                twoStepVerificationActivity.finishFragment();
            } finally {
            }
        }
        callback3.run(tLObject, tL_error, inputCheckPasswordSRP);
        requestScope.close();
    }

    public static /* synthetic */ void $r8$lambda$JP0A0RDN5eI4P4rrWHaZYh_rmUI(final RequestScope requestScope, final int i, final Utilities.CallbackReturn callbackReturn, final Utilities.Callback2 callback2, final Utilities.Callback3 callback3, final boolean z, final boolean z2, Activity activity, TLRPC.TL_error tL_error, final BaseFragment baseFragment, TwoStepVerificationActivity twoStepVerificationActivity, TL_account.Password password, TLRPC.TL_error tL_error2) {
        int i2;
        if (requestScope.finished) {
            return;
        }
        if (tL_error2 == null) {
            final TwoStepVerificationActivity twoStepVerificationActivityPasswordFragment = requestScope.passwordFragment();
            twoStepVerificationActivityPasswordFragment.setCurrentAccount(i);
            twoStepVerificationActivityPasswordFragment.setDelegate(1, new TwoStepVerificationActivity.TwoStepVerificationActivityDelegate() { // from class: org.telegram.ui.Wallet.PasswordRequest$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.TwoStepVerificationActivity.TwoStepVerificationActivityDelegate
                public final void didEnterPassword(TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP) {
                    PasswordRequest.init(i, callbackReturn, callback2, inputCheckPasswordSRP, twoStepVerificationActivityPasswordFragment, callback3, z, z2, requestScope);
                }
            });
            twoStepVerificationActivityPasswordFragment.setPassword(password);
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment == null || safeLastFragment.getContext() == null) {
                requestScope.close();
                return;
            }
            if (z) {
                BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
                bottomSheetParams.transitionFromLeft = true;
                bottomSheetParams.allowNestedScroll = false;
                safeLastFragment.showAsSheet(twoStepVerificationActivityPasswordFragment, bottomSheetParams);
                return;
            }
            safeLastFragment.presentFragment(twoStepVerificationActivityPasswordFragment);
            return;
        }
        requestScope.close();
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle(LocaleController.getString(C2807R.string.EditAdminTransferAlertTitle));
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setPadding(AndroidUtilities.dp(24.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(24.0f), 0);
        linearLayout.setOrientation(1);
        builder.setView(linearLayout);
        TextView textView = new TextView(activity);
        int i3 = Theme.key_dialogTextBlack;
        textView.setTextColor(Theme.getColor(i3));
        textView.setTextSize(1, 16.0f);
        textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        textView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.WithdrawChannelAlertText)));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
        LinearLayout linearLayout2 = new LinearLayout(activity);
        linearLayout2.setOrientation(0);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 0.0f, 11.0f, 0.0f, 0.0f));
        ImageView imageView = new ImageView(activity);
        imageView.setImageResource(C2807R.drawable.list_circle);
        imageView.setPadding(LocaleController.isRTL ? AndroidUtilities.dp(11.0f) : 0, AndroidUtilities.dp(9.0f), LocaleController.isRTL ? 0 : AndroidUtilities.dp(11.0f), 0);
        int color = Theme.getColor(i3);
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        imageView.setColorFilter(new PorterDuffColorFilter(color, mode));
        TextView textView2 = new TextView(activity);
        textView2.setTextColor(Theme.getColor(i3));
        textView2.setTextSize(1, 16.0f);
        textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.EditAdminTransferAlertText1)));
        if (LocaleController.isRTL) {
            linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2));
            linearLayout2.addView(imageView, LayoutHelper.createLinear(-2, -2, 5));
        } else {
            linearLayout2.addView(imageView, LayoutHelper.createLinear(-2, -2));
            linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2));
        }
        LinearLayout linearLayout3 = new LinearLayout(activity);
        linearLayout3.setOrientation(0);
        linearLayout.addView(linearLayout3, LayoutHelper.createLinear(-1, -2, 0.0f, 11.0f, 0.0f, 0.0f));
        ImageView imageView2 = new ImageView(activity);
        imageView2.setImageResource(C2807R.drawable.list_circle);
        imageView2.setPadding(LocaleController.isRTL ? AndroidUtilities.dp(11.0f) : 0, AndroidUtilities.dp(9.0f), LocaleController.isRTL ? 0 : AndroidUtilities.dp(11.0f), 0);
        imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i3), mode));
        TextView textView3 = new TextView(activity);
        textView3.setTextColor(Theme.getColor(i3));
        textView3.setTextSize(1, 16.0f);
        textView3.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        textView3.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.EditAdminTransferAlertText2)));
        if (LocaleController.isRTL) {
            linearLayout3.addView(textView3, LayoutHelper.createLinear(-1, -2));
            i2 = 5;
            linearLayout3.addView(imageView2, LayoutHelper.createLinear(-2, -2, 5));
        } else {
            i2 = 5;
            linearLayout3.addView(imageView2, LayoutHelper.createLinear(-2, -2));
            linearLayout3.addView(textView3, LayoutHelper.createLinear(-1, -2));
        }
        if ("PASSWORD_MISSING".equals(tL_error.text)) {
            builder.setPositiveButton(LocaleController.getString(C2807R.string.EditAdminTransferSetPassword), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Wallet.PasswordRequest$$ExternalSyntheticLambda3
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i4) {
                    baseFragment.presentFragment(new TwoStepVerificationSetupActivity(6, null));
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null);
        } else {
            TextView textView4 = new TextView(activity);
            textView4.setTextColor(Theme.getColor(i3));
            textView4.setTextSize(1, 16.0f);
            textView4.setGravity((LocaleController.isRTL ? i2 : 3) | 48);
            textView4.setText(LocaleController.getString(C2807R.string.EditAdminTransferAlertText3));
            linearLayout.addView(textView4, LayoutHelper.createLinear(-1, -2, 0.0f, 11.0f, 0.0f, 0.0f));
            builder.setNegativeButton(LocaleController.getString(C2807R.string.OK), null);
        }
        if (twoStepVerificationActivity != null) {
            twoStepVerificationActivity.showDialog(builder.create());
        } else {
            baseFragment.showDialog(builder.create());
        }
    }

    public static /* synthetic */ void $r8$lambda$wcPQ016Zc40u4v7VoijyqTeoUA4(final RequestScope requestScope, TwoStepVerificationActivity twoStepVerificationActivity, final int i, final Utilities.CallbackReturn callbackReturn, final Utilities.Callback2 callback2, final Utilities.Callback3 callback3, final boolean z, final boolean z2, TL_account.Password password, TLRPC.TL_error tL_error) {
        final TwoStepVerificationActivity twoStepVerificationActivityPasswordFragment;
        if (requestScope.finished) {
            return;
        }
        if (tL_error == null) {
            if (twoStepVerificationActivity == null) {
                twoStepVerificationActivityPasswordFragment = requestScope.passwordFragment();
                twoStepVerificationActivityPasswordFragment.setCurrentAccount(i);
                twoStepVerificationActivityPasswordFragment.setDelegate(1, new TwoStepVerificationActivity.TwoStepVerificationActivityDelegate() { // from class: org.telegram.ui.Wallet.PasswordRequest$$ExternalSyntheticLambda4
                    @Override // org.telegram.ui.TwoStepVerificationActivity.TwoStepVerificationActivityDelegate
                    public final void didEnterPassword(TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP) {
                        PasswordRequest.init(i, callbackReturn, callback2, inputCheckPasswordSRP, twoStepVerificationActivityPasswordFragment, callback3, z, z2, requestScope);
                    }
                });
                twoStepVerificationActivityPasswordFragment.preload(new Runnable() { // from class: org.telegram.ui.Wallet.PasswordRequest$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        PasswordRequest.m23164$r8$lambda$6HZhNws5eZHyzb73UCfgU1ZQc(requestScope, z, twoStepVerificationActivityPasswordFragment);
                    }
                });
            } else {
                twoStepVerificationActivityPasswordFragment = twoStepVerificationActivity;
            }
            twoStepVerificationActivityPasswordFragment.setCurrentPasswordInfo(null, password);
            TwoStepVerificationActivity.initPasswordNewAlgo(password);
            init(i, callbackReturn, callback2, twoStepVerificationActivityPasswordFragment.getNewSrpPassword(), twoStepVerificationActivityPasswordFragment, callback3, z, z2, requestScope);
            return;
        }
        requestScope.close();
    }

    /* JADX INFO: renamed from: $r8$lambda$-6HZhNws5e-ZHyzb73UCfgU1ZQc, reason: not valid java name */
    public static /* synthetic */ void m23164$r8$lambda$6HZhNws5eZHyzb73UCfgU1ZQc(RequestScope requestScope, boolean z, TwoStepVerificationActivity twoStepVerificationActivity) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (requestScope.finished) {
            return;
        }
        if (safeLastFragment == null) {
            requestScope.close();
            return;
        }
        if (z) {
            BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
            bottomSheetParams.transitionFromLeft = true;
            bottomSheetParams.allowNestedScroll = false;
            safeLastFragment.showAsSheet(twoStepVerificationActivity, bottomSheetParams);
            return;
        }
        safeLastFragment.presentFragment(twoStepVerificationActivity);
    }
}
