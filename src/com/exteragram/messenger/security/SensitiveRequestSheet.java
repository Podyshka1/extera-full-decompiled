package com.exteragram.messenger.security;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.hardware.input.InputManager;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.exteragram.messenger.inline.math.MathFormat$$ExternalSyntheticBackportWithForwarding0;
import com.exteragram.messenger.security.SensitivePaymentForms;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.TableView;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes4.dex */
public class SensitiveRequestSheet extends BottomSheet {
    private final ButtonWithCounterView allowButton;
    private boolean answered;
    private final ArrayList<Utilities.Callback<Boolean>> callbacks;
    private final CharSequence category;
    private final int constructor;
    private long[] details;
    private final Runnable enableAllowButton;
    private final String method;
    private final SensitivePaymentForms.Payment payment;
    private final TextView subtitle;
    private final TableView tableView;
    private final String[] texts;
    private boolean verifiedDown;
    private long verifiedTapTime;

    private static boolean isConfirmKey(int i) {
        return i == 23 || i == 66 || i == 62 || i == 160;
    }

    public SensitiveRequestSheet(Context context, Theme.ResourcesProvider resourcesProvider, int i, int i2, CharSequence charSequence, String str, long[] jArr, String[] strArr, Utilities.Callback<Boolean> callback) {
        super(context, false, resourcesProvider);
        this.callbacks = new ArrayList<>();
        this.currentAccount = i;
        this.constructor = i2;
        this.method = str;
        this.details = jArr != null ? jArr : new long[0];
        this.texts = strArr;
        this.category = charSequence;
        String str2 = null;
        int i3 = 0;
        long j = 0;
        while (true) {
            int i4 = i3 + 1;
            long[] jArr2 = this.details;
            if (i4 >= jArr2.length) {
                break;
            }
            long j2 = jArr2[i4];
            long j3 = jArr2[i3];
            if (j3 == 8) {
                j = j2;
            } else if (j3 == 9 && strArr != null && j2 >= 0 && j2 < strArr.length) {
                str2 = strArr[(int) j2];
            }
            i3 += 2;
        }
        this.payment = SensitivePaymentForms.get(this.currentAccount, j, str2);
        this.callbacks.add(callback);
        fixNavigationBar();
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setPadding(AndroidUtilities.dp(18.0f), AndroidUtilities.dp(18.0f), AndroidUtilities.dp(18.0f), AndroidUtilities.dp(18.0f));
        imageView.setImageResource(C2807R.drawable.sensitive_request_stop);
        imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_featuredStickers_buttonText), PorterDuff.Mode.SRC_IN));
        imageView.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(80.0f), getThemedColor(Theme.key_featuredStickers_addButton)));
        linearLayout.addView(imageView, LayoutHelper.createLinear(80, 80, 1, 0, 24, 0, 0));
        TextView textView = new TextView(context);
        textView.setGravity(1);
        textView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setText(LocaleController.getString(C2807R.string.SensitiveRequestTitle));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 0, 24, 16, 24, 0));
        TextView textView2 = new TextView(context);
        this.subtitle = textView2;
        textView2.setGravity(1);
        int i5 = Theme.key_windowBackgroundWhiteGrayText;
        textView2.setTextColor(getThemedColor(i5));
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.regular());
        textView2.setText(charSequence);
        textView2.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 0, 24, 6, 24, 0));
        TableView tableView = new TableView(context, resourcesProvider);
        this.tableView = tableView;
        fillTable();
        linearLayout.addView(tableView, LayoutHelper.createLinear(-1, -2, 0, 16, 20, 16, 0));
        TextView textView3 = new TextView(context);
        textView3.setGravity(1);
        textView3.setTextColor(getThemedColor(i5));
        textView3.setTextSize(1, 13.0f);
        textView3.setTypeface(AndroidUtilities.regular());
        textView3.setText(LocaleController.getString(C2807R.string.SensitiveRequestWarning));
        linearLayout.addView(textView3, LayoutHelper.createLinear(-1, -2, 0, 24, 14, 24, 0));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, true, resourcesProvider);
        this.allowButton = buttonWithCounterView;
        buttonWithCounterView.setRound();
        buttonWithCounterView.setText(LocaleController.getString(C2807R.string.Allow), false);
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.security.SensitiveRequestSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        this.enableAllowButton = new Runnable() { // from class: com.exteragram.messenger.security.SensitiveRequestSheet$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1();
            }
        };
        linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 0, 16, 20, 16, 8));
        ButtonWithCounterView buttonWithCounterView2 = new ButtonWithCounterView(context, false, resourcesProvider);
        buttonWithCounterView2.setRound();
        buttonWithCounterView2.setNeutral();
        buttonWithCounterView2.setText(LocaleController.getString(C2807R.string.Decline), false);
        buttonWithCounterView2.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.security.SensitiveRequestSheet$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(view);
            }
        });
        linearLayout.addView(buttonWithCounterView2, LayoutHelper.createLinear(-1, 48, 0, 16, 0, 16, 8));
        ScrollView scrollView = new ScrollView(context);
        scrollView.addView(linearLayout);
        setCustomView(scrollView);
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.exteragram.messenger.security.SensitiveRequestSheet$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$new$3(dialogInterface);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        if (consumeVerifiedTap()) {
            finish(true);
            lambda$new$0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        this.allowButton.setEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        finish(false);
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(DialogInterface dialogInterface) {
        AndroidUtilities.cancelRunOnUIThread(this.enableAllowButton);
        finish(false);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.verifiedDown = isOverAllowButton(motionEvent) && isGenuine(motionEvent);
        } else if (actionMasked == 1) {
            if (this.verifiedDown && isOverAllowButton(motionEvent) && isGenuine(motionEvent)) {
                this.verifiedTapTime = motionEvent.getEventTime();
            }
            this.verifiedDown = false;
        } else if (actionMasked == 3 || actionMasked == 5) {
            this.verifiedDown = false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && isConfirmKey(keyEvent.getKeyCode()) && this.allowButton.isFocused() && isGenuine(keyEvent)) {
            this.verifiedTapTime = keyEvent.getEventTime();
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    private boolean isOverAllowButton(MotionEvent motionEvent) {
        if (this.allowButton.isShown() && this.allowButton.isEnabled()) {
            int[] iArr = new int[2];
            this.allowButton.getLocationOnScreen(iArr);
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            if (rawX >= iArr[0] && rawX < r3 + this.allowButton.getWidth()) {
                if (rawY >= iArr[1] && rawY < r0 + this.allowButton.getHeight()) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean isGenuine(InputEvent inputEvent) {
        if (Build.VERSION.SDK_INT < 30) {
            return inputEvent instanceof MotionEvent ? inputEvent.getDeviceId() > 0 && inputEvent.isFromSource(4098) : inputEvent.getDeviceId() > 0 && inputEvent.getDeviceId() != -1;
        }
        InputManager inputManager = (InputManager) getContext().getSystemService(InputManager.class);
        return (inputManager == null || !hasSystemBinders(inputManager, "android.hardware.input.IInputManager") || inputManager.verifyInputEvent(inputEvent) == null) ? false : true;
    }

    private boolean consumeVerifiedTap() {
        long j = this.verifiedTapTime;
        this.verifiedTapTime = 0L;
        if (j != 0 && SystemClock.uptimeMillis() - j <= 1000) {
            return true;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        return (accessibilityManager == null || !hasSystemBinders(accessibilityManager, "android.view.accessibility.IAccessibilityManager") || accessibilityManager.getEnabledAccessibilityServiceList(1).isEmpty()) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean hasSystemBinders(Object obj, String str) {
        IBinder iBinderAsBinder;
        ClassLoader classLoader = Object.class.getClassLoader();
        ArrayList arrayList = new ArrayList();
        arrayList.add(obj);
        if (Build.VERSION.SDK_INT >= 34 && (obj instanceof InputManager)) {
            try {
                arrayList.add(Class.forName("android.hardware.input.InputManagerGlobal").getMethod("getInstance", null).invoke(null, null));
            } catch (Throwable unused) {
            }
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj2 = arrayList.get(i);
            i++;
            if (obj2 != null) {
                for (Class<?> superclass = obj2.getClass(); superclass != null && superclass != Object.class; superclass = superclass.getSuperclass()) {
                    try {
                        for (Field field : superclass.getDeclaredFields()) {
                            if (!Modifier.isStatic(field.getModifiers()) && str.equals(field.getType().getName())) {
                                try {
                                    field.setAccessible(true);
                                    Object obj3 = field.get(obj2);
                                    if (obj3 != null) {
                                        Class<?> cls = obj3.getClass();
                                        if (!str.concat("$Stub$Proxy").equals(cls.getName()) || cls.getClassLoader() != classLoader || !(obj3 instanceof IInterface) || (iBinderAsBinder = ((IInterface) obj3).asBinder()) == null || !"android.os.BinderProxy".equals(iBinderAsBinder.getClass().getName()) || iBinderAsBinder.getClass().getClassLoader() != classLoader) {
                                            return false;
                                        }
                                    }
                                } catch (Throwable unused2) {
                                }
                            }
                        }
                    } catch (Throwable unused3) {
                    }
                }
            }
        }
        return true;
    }

    public boolean merge(int i, int i2, long[] jArr, String[] strArr, Utilities.Callback<Boolean> callback) {
        if (this.answered || !isShowing() || i != this.currentAccount || i2 != this.constructor || !Arrays.equals(this.texts, strArr)) {
            return false;
        }
        long[] jArr2 = this.details;
        if (jArr == null) {
            jArr = new long[0];
        }
        long[] jArrMergeDetails = mergeDetails(jArr2, jArr);
        if (jArrMergeDetails == null) {
            return false;
        }
        this.details = jArrMergeDetails;
        this.callbacks.add(callback);
        this.subtitle.setText(TextUtils.isEmpty(this.category) ? String.format(Locale.US, "×%d", Integer.valueOf(this.callbacks.size())) : String.format(Locale.US, "%s ×%d", this.category, Integer.valueOf(this.callbacks.size())));
        this.subtitle.setVisibility(0);
        this.tableView.clear();
        fillTable();
        this.allowButton.setEnabled(false);
        AndroidUtilities.cancelRunOnUIThread(this.enableAllowButton);
        AndroidUtilities.runOnUIThread(this.enableAllowButton, 1000L);
        return true;
    }

    private static long[] mergeDetails(long[] jArr, long[] jArr2) {
        if (jArr.length != jArr2.length) {
            return null;
        }
        long[] jArr3 = (long[]) jArr.clone();
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i2 >= jArr.length) {
                return jArr3;
            }
            long j = jArr[i];
            if (j != jArr2[i]) {
                return null;
            }
            if (j == 5 || j == 6) {
                try {
                    jArr3[i2] = Math.addExact(jArr[i2], jArr2[i2]);
                } catch (ArithmeticException unused) {
                    return null;
                }
            } else if (jArr[i2] != jArr2[i2]) {
                return null;
            }
            i += 2;
        }
    }

    public boolean isAnswered() {
        return this.answered;
    }

    public void bringToFront() {
        Window window;
        if (this.answered || !isShowing() || (window = getWindow()) == null) {
            return;
        }
        View decorView = window.getDecorView();
        ViewGroup.LayoutParams layoutParams = decorView.getLayoutParams();
        if (!decorView.isAttachedToWindow() || layoutParams == null) {
            return;
        }
        WindowManager windowManager = window.getWindowManager();
        try {
            windowManager.removeViewImmediate(decorView);
            windowManager.addView(decorView, layoutParams);
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    private void finish(boolean z) {
        if (this.answered) {
            return;
        }
        this.answered = true;
        ArrayList arrayList = new ArrayList(this.callbacks);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((Utilities.Callback) obj).run(Boolean.valueOf(z));
        }
    }

    private void fillTable() {
        addPeerRow(this.tableView, LocaleController.getString(C2807R.string.Account), UserConfig.getInstance(this.currentAccount).getClientUserId());
        int i = 0;
        while (true) {
            int i2 = i + 1;
            long[] jArr = this.details;
            if (i2 >= jArr.length) {
                break;
            }
            addDetailRow(this.tableView, (int) jArr[i], jArr[i2], this.texts);
            i += 2;
        }
        int i3 = this.constructor;
        if (i3 == 2040056084 || i3 == 755192367) {
            int i4 = 0;
            boolean z = false;
            while (true) {
                int i5 = i4 + 1;
                long[] jArr2 = this.details;
                if (i5 >= jArr2.length) {
                    break;
                }
                z |= jArr2[i4] == 8;
                i4 += 2;
            }
            if (!z) {
                this.tableView.addRow(LocaleController.getString(C2807R.string.SensitiveRequestDebit), LocaleController.getString(C2807R.string.SensitiveRequestUnknownAmount));
            }
        }
        if (TextUtils.isEmpty(this.method)) {
            return;
        }
        this.tableView.addRowMonospaced(LocaleController.getString(C2807R.string.SensitiveRequestMethod), this.method, 13, null);
    }

    private void addDetailRow(TableView tableView, int i, long j, String[] strArr) {
        switch (i) {
            case 1:
                addPeerRow(tableView, LocaleController.getString(C2807R.string.WalletRecipient), j);
                break;
            case 2:
                addPeerRow(tableView, LocaleController.getString(C2807R.string.SensitiveRequestChat), j);
                break;
            case 3:
                addPeerRow(tableView, LocaleController.getString(C2807R.string.SensitiveRequestUser), j);
                break;
            case 4:
                addPeerRow(tableView, LocaleController.getString(C2807R.string.StarsSubscriptionBot), j);
                break;
            case 5:
                tableView.addRow(LocaleController.getString(C2807R.string.SensitiveRequestAmount), StarsIntroActivity.replaceStars(false, (CharSequence) ("XTR " + LocaleController.formatNumber(j, ',')), 0.85f));
                break;
            case 6:
                tableView.addRow(LocaleController.getString(C2807R.string.SensitiveRequestAmount), StarsIntroActivity.replaceStars(true, (CharSequence) ("XTR " + MathFormat$$ExternalSyntheticBackportWithForwarding0.m260m(BigDecimal.valueOf(j, 9)).toPlainString()), 0.85f));
                break;
            case 7:
                if (strArr != null && j >= 0 && j < strArr.length) {
                    int i2 = (int) j;
                    if (!TextUtils.isEmpty(strArr[i2])) {
                        tableView.addRow(LocaleController.getString(C2807R.string.ActionStarGift), strArr[i2]);
                    }
                    break;
                }
                break;
            case 8:
                CharSequence string = LocaleController.getString(C2807R.string.SensitiveRequestUnknownAmount);
                SensitivePaymentForms.Payment payment = this.payment;
                if (payment != null && "XTR".equals(payment.currency)) {
                    string = StarsIntroActivity.replaceStars(false, (CharSequence) ("XTR " + LocaleController.formatNumber(this.payment.amount, ',')), 0.85f);
                } else {
                    SensitivePaymentForms.Payment payment2 = this.payment;
                    if (payment2 != null && "TON".equals(payment2.currency)) {
                        string = StarsIntroActivity.replaceStars(true, (CharSequence) ("XTR " + MathFormat$$ExternalSyntheticBackportWithForwarding0.m260m(BigDecimal.valueOf(this.payment.amount, 9)).toPlainString()), 0.85f);
                    }
                }
                tableView.addRow(LocaleController.getString(C2807R.string.SensitiveRequestDebit), string);
                break;
            case 10:
                TL_stars.StarGift starGift = StarsController.getInstance(this.currentAccount).getStarGift(j);
                tableView.addRow(LocaleController.getString(C2807R.string.ActionStarGift), (starGift == null || TextUtils.isEmpty(starGift.title)) ? "ID " + j : starGift.title + " · ID " + j);
                break;
            case 11:
                tableView.addRow(LocaleController.getString(C2807R.string.SensitiveRequestAnonymous), LocaleController.getString(j != 0 ? C2807R.string.CheckPhoneNumberYes : C2807R.string.CheckPhoneNumberNo));
                break;
            case 12:
                tableView.addRow(LocaleController.getString(C2807R.string.SensitiveRequestUpgradeIncluded), LocaleController.getString(j != 0 ? C2807R.string.CheckPhoneNumberYes : C2807R.string.CheckPhoneNumberNo));
                break;
            case 13:
                tableView.addRow(LocaleController.getString(C2807R.string.SensitiveRequestGiftMessage), Long.toString(j));
                break;
            case 14:
                tableView.addRow(LocaleController.getString(C2807R.string.SensitiveRequestSavedGift), Long.toString(j));
                break;
        }
    }

    private void addPeerRow(TableView tableView, CharSequence charSequence, long j) {
        if (j == 0) {
            j = UserConfig.getInstance(this.currentAccount).getClientUserId();
        }
        long j2 = j;
        if (tableView.addRowUser(charSequence, this.currentAccount, j2, null) == null) {
            tableView.addRow(charSequence, "ID " + j2);
        }
    }
}
