package org.telegram.p029ui.Components.Premium.boosts;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Point;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
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
import org.telegram.p029ui.BoostsActivity;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.Bulletin;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.EffectsTextView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.NumberPicker;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public abstract class BoostDialogs {
    public static /* synthetic */ void $r8$lambda$0sIZWlBOtXE0iTn0WiE10O0Ug48(AlertDialog alertDialog, int i) {
    }

    public static /* synthetic */ void $r8$lambda$2wdGK5T_WlSND73cS7_d6VR4A4o(AlertDialog alertDialog, int i) {
    }

    public static /* synthetic */ void $r8$lambda$EbtP9d6Znf2Ul5_6kmSvZfkI9wI(AlertDialog alertDialog, int i) {
    }

    public static /* synthetic */ void $r8$lambda$NWq1N7kPvi2Rz29fp29hJH62YP0(AlertDialog alertDialog, int i) {
    }

    public static /* synthetic */ void $r8$lambda$NpchwS3EGotSPguWejniRKo1gMw(TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$X4dQhplwJym1ddLdysLPmpadu6Q(AlertDialog alertDialog, int i) {
    }

    public static /* synthetic */ void $r8$lambda$c72RtgTgpwcfzG0p6mcFzlj_Q04(AlertDialog alertDialog, int i) {
    }

    public static /* synthetic */ void $r8$lambda$cZ5xH0mvxDzwAIYwsdC6X8hbsjA(AlertDialog alertDialog, int i) {
    }

    public static /* synthetic */ void $r8$lambda$dtW27XoeU9880emapboAQgyrSUg(AlertDialog alertDialog, int i) {
    }

    public static long getThreeDaysAfterToday() {
        return roundByFiveMinutes(new Date().getTime() + 259200000);
    }

    public static void showToastError(Context context, TLRPC.TL_error tL_error) {
        String str;
        if (tL_error == null || (str = tL_error.text) == null || TextUtils.isEmpty(str)) {
            return;
        }
        Toast.makeText(context, tL_error.text, 1).show();
    }

    public static void processApplyGiftCodeError(TLRPC.TL_error tL_error, FrameLayout frameLayout, Theme.ResourcesProvider resourcesProvider, Runnable runnable) {
        String str;
        if (tL_error == null || (str = tL_error.text) == null) {
            return;
        }
        if (str.contains("PREMIUM_SUB_ACTIVE_UNTIL_")) {
            String str2 = LocaleController.getInstance().getFormatterBoostExpired().format(new Date(Long.parseLong(tL_error.text.replace("PREMIUM_SUB_ACTIVE_UNTIL_", _UrlKt.FRAGMENT_ENCODE_SET)) * 1000));
            SpannableStringBuilder spannableStringBuilderReplaceSingleTag = AndroidUtilities.replaceSingleTag(LocaleController.getString("GiftPremiumActivateErrorText", C2888R.string.GiftPremiumActivateErrorText), Theme.key_undo_cancelColor, 0, runnable);
            BulletinFactory.m1245of(frameLayout, resourcesProvider).createSimpleBulletin(C2888R.raw.chats_infotip, LocaleController.getString(C2888R.string.GiftPremiumActivateErrorTitle), AndroidUtilities.replaceCharSequence("%1$s", spannableStringBuilderReplaceSingleTag, AndroidUtilities.replaceTags("**" + str2 + "**"))).show();
            try {
                frameLayout.performHapticFeedback(3, 2);
                return;
            } catch (Exception unused) {
                return;
            }
        }
        showToastError(frameLayout.getContext(), tL_error);
    }

    public static /* synthetic */ void $r8$lambda$7DNp19UP3N1YlcuhgNvNug5jSww(BulletinFactory bulletinFactory, boolean z, final TLRPC.Chat chat, Theme.ResourcesProvider resourcesProvider) {
        String string;
        String string2;
        int i = C2888R.raw.star_premium_2;
        if (z) {
            string = LocaleController.getString("BoostingGiveawayCreated", C2888R.string.BoostingGiveawayCreated);
        } else {
            string = LocaleController.getString("BoostingAwardsCreated", C2888R.string.BoostingAwardsCreated);
        }
        if (z) {
            string2 = LocaleController.getString(ChatObject.isChannelAndNotMegaGroup(chat) ? C2888R.string.BoostingCheckStatistic : C2888R.string.BoostingCheckStatisticGroup);
        } else {
            string2 = LocaleController.getString(ChatObject.isChannelAndNotMegaGroup(chat) ? C2888R.string.BoostingCheckGiftsStatistic : C2888R.string.BoostingCheckGiftsStatisticGroup);
        }
        bulletinFactory.createSimpleBulletin(i, string, AndroidUtilities.replaceSingleTag(string2, Theme.key_undo_cancelColor, 0, new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                BoostDialogs.m11658$r8$lambda$go7JRZCOKY9jSvHOkD6dtEM5VU(chat);
            }
        }, resourcesProvider)).setDuration(5000).show();
    }

    private static void showBulletin(final BulletinFactory bulletinFactory, final Theme.ResourcesProvider resourcesProvider, final TLRPC.Chat chat, final boolean z) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BoostDialogs.$r8$lambda$7DNp19UP3N1YlcuhgNvNug5jSww(bulletinFactory, z, chat, resourcesProvider);
            }
        }, 300L);
    }

    /* JADX INFO: renamed from: $r8$lambda$go7JRZCOKY9jSvHOkD6-dtEM5VU, reason: not valid java name */
    public static /* synthetic */ void m11658$r8$lambda$go7JRZCOKY9jSvHOkD6dtEM5VU(TLRPC.Chat chat) {
        if (chat != null) {
            BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
            bottomSheetParams.transitionFromLeft = true;
            LaunchActivity.getLastFragment().showAsSheet(new BoostsActivity(-chat.f1660id), bottomSheetParams);
        }
    }

    public static void showGiftLinkForwardedBulletin(long j) {
        final SpannableStringBuilder spannableStringBuilderReplaceTags;
        if (j == UserConfig.getInstance(UserConfig.selectedAccount).clientUserId) {
            spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.BoostingGiftLinkForwardedToSavedMsg));
        } else if (DialogObject.isChatDialog(j)) {
            spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString("BoostingGiftLinkForwardedTo", C2888R.string.BoostingGiftLinkForwardedTo, MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-j)).title));
        } else {
            spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString("BoostingGiftLinkForwardedTo", C2888R.string.BoostingGiftLinkForwardedTo, UserObject.getFirstName(MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(j)))));
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                BoostDialogs.m11654$r8$lambda$Wlhhib8TJhPesjG7DAW42R6DoM(spannableStringBuilderReplaceTags);
            }
        }, 450L);
    }

    /* JADX INFO: renamed from: $r8$lambda$Wlhhib8TJhPesjG7DAW42-R6DoM, reason: not valid java name */
    public static /* synthetic */ void m11654$r8$lambda$Wlhhib8TJhPesjG7DAW42R6DoM(CharSequence charSequence) {
        BulletinFactory bulletinFactoryGlobal = BulletinFactory.global();
        if (bulletinFactoryGlobal != null) {
            bulletinFactoryGlobal.createSimpleBulletinWithIconSize(C2888R.raw.forward, charSequence, 30).show();
        }
    }

    public static void showBulletin(BaseFragment baseFragment, TLRPC.Chat chat, boolean z) {
        if (baseFragment == null) {
            return;
        }
        showBulletin(BulletinFactory.m1246of(baseFragment), baseFragment.getResourceProvider(), chat, z);
    }

    private static long roundByFiveMinutes(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        calendar.set(14, 0);
        calendar.set(13, 0);
        int i = calendar.get(12);
        while (i % 5 != 0) {
            i++;
        }
        calendar.set(12, i);
        return calendar.getTimeInMillis();
    }

    public static void showDatePicker(Context context, long j, final AlertsCreator.ScheduleDatePickerDelegate scheduleDatePickerDelegate, Theme.ResourcesProvider resourcesProvider) {
        AlertsCreator.ScheduleDatePickerColors scheduleDatePickerColors = new AlertsCreator.ScheduleDatePickerColors(resourcesProvider);
        final BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        builder.setApplyBottomPadding(false);
        final NumberPicker numberPicker = new NumberPicker(context, resourcesProvider);
        numberPicker.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker.setTextOffset(AndroidUtilities.m1124dp(10.0f));
        numberPicker.setItemCount(5);
        final NumberPicker numberPicker2 = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs.1
            @Override // org.telegram.p029ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i) {
                return LocaleController.formatPluralString("Hours", i, new Object[0]);
            }
        };
        numberPicker2.setWrapSelectorWheel(true);
        numberPicker2.setAllItemsCount(24);
        numberPicker2.setItemCount(5);
        numberPicker2.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker2.setTextOffset(-AndroidUtilities.m1124dp(10.0f));
        numberPicker2.setTag("HOUR");
        final NumberPicker numberPicker3 = new NumberPicker(context, resourcesProvider) { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs.2
            @Override // org.telegram.p029ui.Components.NumberPicker
            protected CharSequence getContentDescription(int i) {
                return LocaleController.formatPluralString("Minutes", i, new Object[0]);
            }
        };
        numberPicker3.setWrapSelectorWheel(true);
        numberPicker3.setAllItemsCount(60);
        numberPicker3.setItemCount(5);
        numberPicker3.setTextColor(scheduleDatePickerColors.textColor);
        numberPicker3.setTextOffset(-AndroidUtilities.m1124dp(34.0f));
        final LinearLayout linearLayout = new LinearLayout(context, scheduleDatePickerColors, numberPicker, numberPicker2, numberPicker3) { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs.3
            boolean ignoreLayout = false;
            final TextPaint paint;
            final /* synthetic */ AlertsCreator.ScheduleDatePickerColors val$datePickerColors;
            final /* synthetic */ NumberPicker val$dayPicker;
            final /* synthetic */ NumberPicker val$hourPicker;
            final /* synthetic */ NumberPicker val$minutePicker;

            {
                this.val$datePickerColors = scheduleDatePickerColors;
                this.val$dayPicker = numberPicker;
                this.val$hourPicker = numberPicker2;
                this.val$minutePicker = numberPicker3;
                TextPaint textPaint = new TextPaint(1);
                this.paint = textPaint;
                setWillNotDraw(false);
                textPaint.setTextSize(AndroidUtilities.m1124dp(20.0f));
                textPaint.setTypeface(AndroidUtilities.bold());
                textPaint.setColor(scheduleDatePickerColors.textColor);
            }

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                this.ignoreLayout = true;
                Point point = AndroidUtilities.displaySize;
                int i3 = point.x > point.y ? 3 : 5;
                this.val$dayPicker.setItemCount(i3);
                this.val$hourPicker.setItemCount(i3);
                this.val$minutePicker.setItemCount(i3);
                this.val$dayPicker.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i3;
                this.val$hourPicker.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i3;
                this.val$minutePicker.getLayoutParams().height = AndroidUtilities.m1124dp(42.0f) * i3;
                this.ignoreLayout = false;
                super.onMeasure(i, i2);
            }

            @Override // android.widget.LinearLayout, android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                canvas.drawText(":", this.val$hourPicker.getRight() - AndroidUtilities.m1124dp(12.0f), (getHeight() / 2.0f) - AndroidUtilities.m1124dp(11.0f), this.paint);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 51, 22, 0, 0, 4));
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString("BoostingSelectDateTime", C2888R.string.BoostingSelectDateTime));
        textView.setTextColor(scheduleDatePickerColors.textColor);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda19
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return BoostDialogs.$r8$lambda$4xLmZwpdQSywMRE5P__abi8Bd2g(view, motionEvent);
            }
        });
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setWeightSum(1.0f);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1.0f, 0, 0, 12, 0, 12));
        final long jCurrentTimeMillis = System.currentTimeMillis();
        final Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(jCurrentTimeMillis);
        final int i = calendar.get(1);
        TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs.4
            @Override // android.widget.TextView, android.view.View
            public CharSequence getAccessibilityClassName() {
                return Button.class.getName();
            }
        };
        long jGiveawayPeriodMax = BoostRepository.giveawayPeriodMax() * 1000;
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(jGiveawayPeriodMax);
        int i2 = calendar2.get(6);
        calendar2.setTimeInMillis(System.currentTimeMillis());
        calendar2.add(14, (int) jGiveawayPeriodMax);
        final int i3 = calendar2.get(11);
        final int i4 = calendar.get(12);
        linearLayout2.addView(numberPicker, LayoutHelper.createLinear(0, 270, 0.5f));
        numberPicker.setMinValue(0);
        numberPicker.setMaxValue(i2 - 1);
        numberPicker.setWrapSelectorWheel(false);
        numberPicker.setTag("DAY");
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda20
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i5) {
                return BoostDialogs.$r8$lambda$YSGskBisETYvgyCen4zeXNwfwe4(jCurrentTimeMillis, calendar, i, i5);
            }
        });
        NumberPicker.OnValueChangeListener onValueChangeListener = new NumberPicker.OnValueChangeListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda21
            @Override // org.telegram.ui.Components.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker4, int i5, int i6) {
                BoostDialogs.$r8$lambda$EDb9agqos9CqHv0V8p9nBs0cols(linearLayout, numberPicker2, numberPicker3, i3, i4, numberPicker, numberPicker4, i5, i6);
            }
        };
        numberPicker.setOnValueChangedListener(onValueChangeListener);
        numberPicker2.setMinValue(0);
        numberPicker2.setMaxValue(23);
        linearLayout2.addView(numberPicker2, LayoutHelper.createLinear(0, 270, 0.2f));
        numberPicker2.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda22
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i5) {
                return String.valueOf(i5);
            }
        });
        numberPicker2.setOnValueChangedListener(onValueChangeListener);
        numberPicker3.setMinValue(0);
        numberPicker3.setMaxValue(11);
        numberPicker3.setValue(0);
        numberPicker3.setFormatter(new NumberPicker.Formatter() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda23
            @Override // org.telegram.ui.Components.NumberPicker.Formatter
            public final String format(int i5) {
                return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i5 * 5));
            }
        });
        linearLayout2.addView(numberPicker3, LayoutHelper.createLinear(0, 270, 0.3f));
        numberPicker3.setOnValueChangedListener(onValueChangeListener);
        if (j > 0) {
            calendar.setTimeInMillis(System.currentTimeMillis());
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            calendar.set(11, 0);
            int timeInMillis = (int) ((j - calendar.getTimeInMillis()) / 86400000);
            calendar.setTimeInMillis(j);
            numberPicker3.setValue(calendar.get(12) / 5);
            numberPicker2.setValue(calendar.get(11));
            numberPicker.setValue(timeInMillis);
            onValueChangeListener.onValueChange(numberPicker, numberPicker.getValue(), numberPicker.getValue());
            onValueChangeListener.onValueChange(numberPicker2, numberPicker2.getValue(), numberPicker2.getValue());
        }
        textView2.setPadding(AndroidUtilities.m1124dp(34.0f), 0, AndroidUtilities.m1124dp(34.0f), 0);
        textView2.setGravity(17);
        textView2.setTextColor(scheduleDatePickerColors.buttonTextColor);
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setBackground(Theme.AdaptiveRipple.filledRect(scheduleDatePickerColors.buttonBackgroundColor, 8.0f));
        textView2.setText(LocaleController.getString("BoostingConfirm", C2888R.string.BoostingConfirm));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 48, 83, 16, 15, 16, 16));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda24
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BoostDialogs.$r8$lambda$yD9c29e5n89zb_oHpompqfR8Vvc(calendar, numberPicker, numberPicker2, numberPicker3, scheduleDatePickerDelegate, builder, view);
            }
        });
        builder.setCustomView(linearLayout);
        BottomSheet bottomSheetShow = builder.show();
        bottomSheetShow.setBackgroundColor(scheduleDatePickerColors.backgroundColor);
        bottomSheetShow.fixNavigationBar(scheduleDatePickerColors.backgroundColor);
        AndroidUtilities.setLightStatusBar(bottomSheetShow.getWindow(), ColorUtils.calculateLuminance(scheduleDatePickerColors.backgroundColor) > 0.699999988079071d);
    }

    public static /* synthetic */ boolean $r8$lambda$4xLmZwpdQSywMRE5P__abi8Bd2g(View view, MotionEvent motionEvent) {
        return true;
    }

    public static /* synthetic */ String $r8$lambda$YSGskBisETYvgyCen4zeXNwfwe4(long j, Calendar calendar, int i, int i2) {
        if (i2 == 0) {
            return LocaleController.getString("MessageScheduleToday", C2888R.string.MessageScheduleToday);
        }
        long j2 = j + (((long) i2) * 86400000);
        calendar.setTimeInMillis(j2);
        if (calendar.get(1) == i) {
            return LocaleController.getInstance().getFormatterScheduleDay().format(j2);
        }
        return LocaleController.getInstance().getFormatterScheduleYear().format(j2);
    }

    public static /* synthetic */ void $r8$lambda$EDb9agqos9CqHv0V8p9nBs0cols(LinearLayout linearLayout, NumberPicker numberPicker, NumberPicker numberPicker2, int i, int i2, NumberPicker numberPicker3, NumberPicker numberPicker4, int i3, int i4) {
        try {
            linearLayout.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        if (numberPicker4.getTag() != null && numberPicker4.getTag().equals("DAY")) {
            if (numberPicker4.getValue() == numberPicker4.getMinValue()) {
                Calendar calendar = Calendar.getInstance();
                calendar.setTimeInMillis(System.currentTimeMillis());
                int i5 = calendar.get(11);
                int i6 = (calendar.get(12) / 5) + 1;
                if (i6 > 11) {
                    if (i5 == 23) {
                        numberPicker4.setMinValue(numberPicker4.getMinValue() + 1);
                        numberPicker.setMinValue(0);
                    } else {
                        numberPicker.setMinValue(i5 + 1);
                    }
                    numberPicker2.setMinValue(0);
                } else {
                    numberPicker.setMinValue(i5);
                    numberPicker2.setMinValue(i6);
                }
            } else if (numberPicker4.getValue() == numberPicker4.getMaxValue()) {
                numberPicker.setMaxValue(i);
                numberPicker2.setMaxValue(Math.min(i2 / 5, 11));
            } else {
                numberPicker.setMinValue(0);
                numberPicker2.setMinValue(0);
                numberPicker.setMaxValue(23);
                numberPicker2.setMaxValue(11);
            }
        }
        if (numberPicker4.getTag() != null && numberPicker4.getTag().equals("HOUR") && numberPicker3.getValue() == numberPicker3.getMinValue()) {
            if (numberPicker4.getValue() == numberPicker4.getMinValue()) {
                Calendar calendar2 = Calendar.getInstance();
                calendar2.setTimeInMillis(System.currentTimeMillis());
                int i7 = (calendar2.get(12) / 5) + 1;
                if (i7 > 11) {
                    numberPicker2.setMinValue(0);
                    return;
                } else {
                    numberPicker2.setMinValue(i7);
                    return;
                }
            }
            numberPicker2.setMinValue(0);
            numberPicker2.setMaxValue(11);
        }
    }

    public static /* synthetic */ void $r8$lambda$yD9c29e5n89zb_oHpompqfR8Vvc(Calendar calendar, NumberPicker numberPicker, NumberPicker numberPicker2, NumberPicker numberPicker3, AlertsCreator.ScheduleDatePickerDelegate scheduleDatePickerDelegate, BottomSheet.Builder builder, View view) {
        calendar.setTimeInMillis(System.currentTimeMillis() + (((long) numberPicker.getValue()) * 86400000));
        calendar.set(11, numberPicker2.getValue());
        calendar.set(12, numberPicker3.getValue() * 5);
        scheduleDatePickerDelegate.didSelectDate(true, (int) (calendar.getTimeInMillis() / 1000), 0);
        builder.getDismissRunnable().run();
    }

    public static void showUnsavedChanges(int i, Context context, Theme.ResourcesProvider resourcesProvider, final Runnable runnable, final Runnable runnable2) {
        String string;
        AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
        builder.setTitle(LocaleController.getString("UnsavedChanges", C2888R.string.UnsavedChanges));
        if (i == 1) {
            string = LocaleController.getString("BoostingApplyChangesUsers", C2888R.string.BoostingApplyChangesUsers);
        } else if (i == 2) {
            string = LocaleController.getString("BoostingApplyChangesChannels", C2888R.string.BoostingApplyChangesChannels);
        } else if (i == 3) {
            string = LocaleController.getString("BoostingApplyChangesCountries", C2888R.string.BoostingApplyChangesCountries);
        } else {
            string = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        builder.setMessage(string);
        builder.setPositiveButton(LocaleController.getString("ApplyTheme", C2888R.string.ApplyTheme), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda16
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                runnable.run();
            }
        });
        builder.setNegativeButton(LocaleController.getString("Discard", C2888R.string.Discard), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda17
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                runnable2.run();
            }
        });
        builder.show();
    }

    public static boolean checkReduceUsers(Context context, Theme.ResourcesProvider resourcesProvider, List list, TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption) {
        if (tL_premiumGiftCodeOption.store_product != null) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption2 = (TLRPC.TL_premiumGiftCodeOption) it.next();
            if (tL_premiumGiftCodeOption2.months == tL_premiumGiftCodeOption.months && tL_premiumGiftCodeOption2.store_product != null) {
                arrayList.add(Integer.valueOf(tL_premiumGiftCodeOption2.users));
            }
        }
        String strJoin = TextUtils.join(", ", arrayList);
        int i = tL_premiumGiftCodeOption.users;
        AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
        builder.setTitle(LocaleController.getString("BoostingReduceQuantity", C2888R.string.BoostingReduceQuantity));
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingReduceUsersTextPlural", i, strJoin)));
        builder.setPositiveButton(LocaleController.getString("OK", C2888R.string.f1606OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda27
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                BoostDialogs.$r8$lambda$0sIZWlBOtXE0iTn0WiE10O0Ug48(alertDialog, i2);
            }
        });
        builder.show();
        return true;
    }

    public static boolean checkReduceQuantity(List list, Context context, Theme.ResourcesProvider resourcesProvider, List list2, TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption, final Utilities.Callback callback) {
        if (tL_premiumGiftCodeOption.store_product != null) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption2 = (TLRPC.TL_premiumGiftCodeOption) it.next();
            if (tL_premiumGiftCodeOption2.months == tL_premiumGiftCodeOption.months && tL_premiumGiftCodeOption2.store_product != null && list.contains(Integer.valueOf(tL_premiumGiftCodeOption2.users))) {
                arrayList.add(tL_premiumGiftCodeOption2);
            }
        }
        final TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption3 = (TLRPC.TL_premiumGiftCodeOption) arrayList.get(0);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption4 = (TLRPC.TL_premiumGiftCodeOption) obj;
            int i2 = tL_premiumGiftCodeOption.users;
            int i3 = tL_premiumGiftCodeOption4.users;
            if (i2 > i3 && i3 > tL_premiumGiftCodeOption3.users) {
                tL_premiumGiftCodeOption3 = tL_premiumGiftCodeOption4;
            }
        }
        String pluralString = LocaleController.formatPluralString("GiftMonths", tL_premiumGiftCodeOption3.months, new Object[0]);
        int i4 = tL_premiumGiftCodeOption.users;
        int i5 = tL_premiumGiftCodeOption3.users;
        AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
        builder.setTitle(LocaleController.getString("BoostingReduceQuantity", C2888R.string.BoostingReduceQuantity));
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingReduceQuantityTextPlural", i4, pluralString, Integer.valueOf(i5))));
        builder.setPositiveButton(LocaleController.getString("Reduce", C2888R.string.Reduce), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda31
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i6) {
                callback.run(tL_premiumGiftCodeOption3);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C2888R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda32
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i6) {
                BoostDialogs.$r8$lambda$2wdGK5T_WlSND73cS7_d6VR4A4o(alertDialog, i6);
            }
        });
        builder.show();
        return true;
    }

    public static void showAbout(boolean z, String str, long j, TLRPC.TL_payments_giveawayInfo tL_payments_giveawayInfo, TLRPC.TL_messageMediaGiveaway tL_messageMediaGiveaway, Context context, Theme.ResourcesProvider resourcesProvider) {
        String str2;
        int i;
        int i2 = tL_messageMediaGiveaway.quantity;
        String pluralString = LocaleController.formatPluralString("BoldMonths", tL_messageMediaGiveaway.months, new Object[0]);
        String str3 = LocaleController.getInstance().getFormatterGiveawayMonthDay().format(new Date(((long) tL_messageMediaGiveaway.until_date) * 1000));
        String str4 = LocaleController.getInstance().getFormatterDay().format(new Date(((long) tL_payments_giveawayInfo.start_date) * 1000));
        String str5 = LocaleController.getInstance().getFormatterGiveawayMonthDayYear().format(new Date(((long) tL_payments_giveawayInfo.start_date) * 1000));
        boolean z2 = tL_messageMediaGiveaway.channels.size() > 1;
        boolean z3 = (tL_messageMediaGiveaway.flags & 32) != 0;
        AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
        builder.setTitle(LocaleController.getString("BoostingGiveAwayAbout", C2888R.string.BoostingGiveAwayAbout));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (z3) {
            str2 = str3;
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma(z ? "BoostingStarsGiveawayHowItWorksText" : "BoostingStarsGiveawayHowItWorksTextGroup", (int) tL_messageMediaGiveaway.stars, str)));
            i = 0;
        } else {
            str2 = str3;
            i = 0;
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString(z ? "BoostingGiveawayHowItWorksText" : "BoostingGiveawayHowItWorksTextGroup", i2, str, Integer.valueOf(i2), pluralString)));
        }
        spannableStringBuilder.append((CharSequence) "\n\n");
        String str6 = tL_messageMediaGiveaway.prize_description;
        if (str6 != null && !str6.isEmpty()) {
            String str7 = tL_messageMediaGiveaway.prize_description;
            Object[] objArr = new Object[2];
            objArr[i] = str;
            objArr[1] = str7;
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayHowItWorksIncludeText", i2, objArr)));
            spannableStringBuilder.append((CharSequence) "\n\n");
        }
        if (tL_messageMediaGiveaway.only_new_subscribers) {
            if (z2) {
                int size = tL_messageMediaGiveaway.channels.size() - 1;
                Object[] objArr2 = new Object[2];
                objArr2[i] = str4;
                objArr2[1] = str5;
                String pluralString2 = LocaleController.formatPluralString("BoostingGiveawayHowItWorksSubTextDateSeveral2", size, objArr2);
                Integer numValueOf = Integer.valueOf(i2);
                Object[] objArr3 = new Object[4];
                objArr3[i] = str2;
                objArr3[1] = numValueOf;
                objArr3[2] = str;
                objArr3[3] = pluralString2;
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayHowItWorksSubTextDateSeveral1", i2, objArr3)));
            } else {
                Integer numValueOf2 = Integer.valueOf(i2);
                Object[] objArr4 = new Object[5];
                objArr4[i] = str2;
                objArr4[1] = numValueOf2;
                objArr4[2] = str;
                objArr4[3] = str4;
                objArr4[4] = str5;
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayHowItWorksSubTextDate", i2, objArr4)));
            }
        } else if (z2) {
            int i3 = i;
            String pluralString3 = LocaleController.formatPluralString("BoostingGiveawayHowItWorksSubTextSeveral2", tL_messageMediaGiveaway.channels.size() - 1, new Object[i3]);
            Integer numValueOf3 = Integer.valueOf(i2);
            Object[] objArr5 = new Object[4];
            objArr5[i3] = str2;
            objArr5[1] = numValueOf3;
            objArr5[2] = str;
            objArr5[3] = pluralString3;
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayHowItWorksSubTextSeveral1", i2, objArr5)));
        } else {
            Integer numValueOf4 = Integer.valueOf(i2);
            Object[] objArr6 = new Object[3];
            objArr6[i] = str2;
            objArr6[1] = numValueOf4;
            objArr6[2] = str;
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayHowItWorksSubText", i2, objArr6)));
        }
        spannableStringBuilder.append((CharSequence) "\n\n");
        if (!tL_payments_giveawayInfo.participating) {
            String str8 = tL_payments_giveawayInfo.disallowed_country;
            if (str8 != null && !str8.isEmpty()) {
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.getString("BoostingGiveawayNotEligibleCountry", C2888R.string.BoostingGiveawayNotEligibleCountry)));
            } else if (tL_payments_giveawayInfo.admin_disallowed_chat_id != 0) {
                TLRPC.Chat chat = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(tL_payments_giveawayInfo.admin_disallowed_chat_id));
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(z ? C2888R.string.BoostingGiveawayNotEligibleAdmin : C2888R.string.BoostingGiveawayNotEligibleAdminGroup, chat != null ? chat.title : _UrlKt.FRAGMENT_ENCODE_SET)));
            } else if (tL_payments_giveawayInfo.joined_too_early_date != 0) {
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString("BoostingGiveawayNotEligible", C2888R.string.BoostingGiveawayNotEligible, LocaleController.getInstance().getFormatterGiveawayMonthDayYear().format(new Date(((long) tL_payments_giveawayInfo.joined_too_early_date) * 1000)))));
            } else if (z2) {
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayTakePartMultiPlural", tL_messageMediaGiveaway.channels.size() - 1, str, str2)));
            } else {
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString("BoostingGiveawayTakePart", C2888R.string.BoostingGiveawayTakePart, str, str2)));
            }
        } else if (z2) {
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayParticipantMultiPlural", tL_messageMediaGiveaway.channels.size() - 1, str)));
        } else {
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString("BoostingGiveawayParticipant", C2888R.string.BoostingGiveawayParticipant, str)));
        }
        builder.setMessage(spannableStringBuilder);
        builder.setPositiveButton(LocaleController.getString("OK", C2888R.string.f1606OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda9
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i4) {
                BoostDialogs.$r8$lambda$dtW27XoeU9880emapboAQgyrSUg(alertDialog, i4);
            }
        });
        applyDialogStyle(builder.show(), false);
    }

    public static void showAboutEnd(boolean z, String str, long j, final TLRPC.TL_payments_giveawayInfoResults tL_payments_giveawayInfoResults, TLRPC.TL_messageMediaGiveaway tL_messageMediaGiveaway, Context context, Theme.ResourcesProvider resourcesProvider) {
        String str2;
        int i;
        String string;
        if (tL_messageMediaGiveaway.until_date == 0) {
            tL_messageMediaGiveaway.until_date = tL_payments_giveawayInfoResults.finish_date;
        }
        int i2 = tL_messageMediaGiveaway.quantity;
        String pluralString = LocaleController.formatPluralString("BoldMonths", tL_messageMediaGiveaway.months, new Object[0]);
        String str3 = LocaleController.getInstance().getFormatterGiveawayMonthDay().format(new Date(((long) tL_messageMediaGiveaway.until_date) * 1000));
        String str4 = LocaleController.getInstance().getFormatterDay().format(new Date(((long) tL_payments_giveawayInfoResults.start_date) * 1000));
        String str5 = LocaleController.getInstance().getFormatterGiveawayMonthDayYear().format(new Date(((long) tL_payments_giveawayInfoResults.start_date) * 1000));
        boolean z2 = tL_messageMediaGiveaway.channels.size() > 1;
        boolean z3 = (tL_messageMediaGiveaway.flags & 32) != 0;
        AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
        builder.setTitle(LocaleController.getString("BoostingGiveawayEnd", C2888R.string.BoostingGiveawayEnd));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (z3) {
            str2 = str3;
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma(z ? "BoostingStarsGiveawayHowItWorksTextEnd" : "BoostingStarsGiveawayHowItWorksTextEndGroup", (int) tL_messageMediaGiveaway.stars, str)));
            i = 2;
        } else {
            str2 = str3;
            i = 2;
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString(z ? "BoostingGiveawayHowItWorksTextEnd" : "BoostingGiveawayHowItWorksTextEndGroup", i2, str, Integer.valueOf(i2), pluralString)));
        }
        spannableStringBuilder.append((CharSequence) "\n\n");
        String str6 = tL_messageMediaGiveaway.prize_description;
        if (str6 != null && !str6.isEmpty()) {
            String str7 = tL_messageMediaGiveaway.prize_description;
            Object[] objArr = new Object[i];
            objArr[0] = str;
            objArr[1] = str7;
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayHowItWorksIncludeText", i2, objArr)));
            spannableStringBuilder.append((CharSequence) "\n\n");
        }
        if (tL_messageMediaGiveaway.only_new_subscribers) {
            if (z2) {
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayHowItWorksSubTextDateSeveralEnd1", i2, str2, Integer.valueOf(i2), str, LocaleController.formatPluralString("BoostingGiveawayHowItWorksSubTextDateSeveral2", tL_messageMediaGiveaway.channels.size() - 1, str4, str5))));
            } else {
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayHowItWorksSubTextDateEnd", i2, str2, Integer.valueOf(i2), str, str4, str5)));
            }
        } else if (z2) {
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayHowItWorksSubTextSeveralEnd1", i2, str2, Integer.valueOf(i2), str, LocaleController.formatPluralString("BoostingGiveawayHowItWorksSubTextSeveral2", tL_messageMediaGiveaway.channels.size() - 1, new Object[0]))));
        } else {
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayHowItWorksSubTextEnd", i2, str2, Integer.valueOf(i2), str)));
        }
        spannableStringBuilder.append((CharSequence) " ");
        int i3 = tL_payments_giveawayInfoResults.activated_count;
        if (i3 > 0) {
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayUsedLinksPlural", i3, new Object[0])));
        }
        if (tL_payments_giveawayInfoResults.refunded) {
            String string2 = LocaleController.getString("BoostingGiveawayCanceledByPayment", C2888R.string.BoostingGiveawayCanceledByPayment);
            TextView textView = new TextView(context);
            textView.setTextSize(1, 14.0f);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setGravity(17);
            textView.setText(string2);
            int i4 = Theme.key_text_RedRegular;
            textView.setTextColor(Theme.getColor(i4, resourcesProvider));
            textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f), Theme.multAlpha(Theme.getColor(i4, resourcesProvider), 0.1f)));
            textView.setPadding(AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f));
            builder.addBottomView(textView);
            builder.setMessage(spannableStringBuilder);
            builder.setPositiveButton(LocaleController.getString("Close", C2888R.string.Close), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda12
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i5) {
                    BoostDialogs.$r8$lambda$NWq1N7kPvi2Rz29fp29hJH62YP0(alertDialog, i5);
                }
            });
            applyDialogStyle(builder.show(), true);
            return;
        }
        builder.setMessage(spannableStringBuilder);
        if (tL_payments_giveawayInfoResults.winner) {
            string = LocaleController.getString(C2888R.string.BoostingGiveawayYouWon);
            if ((tL_payments_giveawayInfoResults.flags & 16) == 0) {
                builder.setPositiveButton(LocaleController.getString("BoostingGiveawayViewPrize", C2888R.string.BoostingGiveawayViewPrize), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda13
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i5) {
                        BoostDialogs.$r8$lambda$e8nUNEQOAbk1f3QlMZPiBpsxQzo(tL_payments_giveawayInfoResults, alertDialog, i5);
                    }
                });
            }
            builder.setNegativeButton(LocaleController.getString("Close", C2888R.string.Close), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda14
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i5) {
                    BoostDialogs.$r8$lambda$X4dQhplwJym1ddLdysLPmpadu6Q(alertDialog, i5);
                }
            });
        } else {
            string = LocaleController.getString("BoostingGiveawayYouNotWon", C2888R.string.BoostingGiveawayYouNotWon);
            builder.setPositiveButton(LocaleController.getString("Close", C2888R.string.Close), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda15
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i5) {
                    BoostDialogs.$r8$lambda$EbtP9d6Znf2Ul5_6kmSvZfkI9wI(alertDialog, i5);
                }
            });
        }
        EffectsTextView effectsTextView = new EffectsTextView(context);
        NotificationCenter.listenEmojiLoading(effectsTextView);
        effectsTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
        effectsTextView.setTextSize(1, 14.0f);
        effectsTextView.setGravity(17);
        effectsTextView.setText(string);
        effectsTextView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), Theme.getColor(Theme.key_profile_actionPressedBackground, resourcesProvider)));
        effectsTextView.setPadding(AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(9.0f));
        builder.aboveMessageView(effectsTextView);
        applyDialogStyle(builder.show(), false);
    }

    public static /* synthetic */ void $r8$lambda$e8nUNEQOAbk1f3QlMZPiBpsxQzo(TLRPC.TL_payments_giveawayInfoResults tL_payments_giveawayInfoResults, AlertDialog alertDialog, int i) {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null) {
            return;
        }
        GiftInfoBottomSheet.show(lastFragment, tL_payments_giveawayInfoResults.gift_code_slug);
    }

    public static void applyDialogStyle(AlertDialog alertDialog, boolean z) {
        alertDialog.setTextSize(20, 14);
        alertDialog.setMessageLineSpacing(2.5f);
        if (z) {
            return;
        }
        ((ViewGroup.MarginLayoutParams) alertDialog.getButtonsLayout().getLayoutParams()).topMargin = AndroidUtilities.m1124dp(-14.0f);
    }

    public static void showPrivateChannelAlert(TLRPC.Chat chat, Context context, Theme.ResourcesProvider resourcesProvider, final Runnable runnable, final Runnable runnable2) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
        boolean zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(chat);
        builder.setTitle(LocaleController.getString(zIsChannelAndNotMegaGroup ? C2888R.string.BoostingGiveawayPrivateChannel : C2888R.string.BoostingGiveawayPrivateGroup));
        builder.setMessage(LocaleController.getString(zIsChannelAndNotMegaGroup ? C2888R.string.BoostingGiveawayPrivateChannelWarning : C2888R.string.BoostingGiveawayPrivateGroupWarning));
        builder.setPositiveButton(LocaleController.getString("Add", C2888R.string.Add), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda28
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                BoostDialogs.m11655$r8$lambda$XQXY3GnmQJl_ETJARL_GGHa3zQ(atomicBoolean, runnable2, alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C2888R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda29
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                BoostDialogs.$r8$lambda$c72RtgTgpwcfzG0p6mcFzlj_Q04(alertDialog, i);
            }
        });
        builder.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda30
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                BoostDialogs.$r8$lambda$hQzqBx4sRzdZK3tycFZNmRhRFFM(atomicBoolean, runnable, dialogInterface);
            }
        });
        builder.show();
    }

    /* JADX INFO: renamed from: $r8$lambda$XQXY-3GnmQJl_ETJARL_GGHa3zQ, reason: not valid java name */
    public static /* synthetic */ void m11655$r8$lambda$XQXY3GnmQJl_ETJARL_GGHa3zQ(AtomicBoolean atomicBoolean, Runnable runnable, AlertDialog alertDialog, int i) {
        atomicBoolean.set(true);
        runnable.run();
    }

    public static /* synthetic */ void $r8$lambda$hQzqBx4sRzdZK3tycFZNmRhRFFM(AtomicBoolean atomicBoolean, Runnable runnable, DialogInterface dialogInterface) {
        if (atomicBoolean.get()) {
            return;
        }
        runnable.run();
    }

    public static void openGiveAwayStatusDialog(MessageObject messageObject, final Browser.Progress progress, final Context context, final Theme.ResourcesProvider resourcesProvider) {
        TLRPC.TL_messageMediaGiveaway tL_messageMediaGiveaway;
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        progress.init();
        progress.onCancel(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                atomicBoolean.set(true);
            }
        });
        TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
        if (messageMedia instanceof TLRPC.TL_messageMediaGiveawayResults) {
            TLRPC.TL_messageMediaGiveawayResults tL_messageMediaGiveawayResults = (TLRPC.TL_messageMediaGiveawayResults) messageMedia;
            tL_messageMediaGiveaway = new TLRPC.TL_messageMediaGiveaway();
            tL_messageMediaGiveaway.prize_description = tL_messageMediaGiveawayResults.prize_description;
            tL_messageMediaGiveaway.months = tL_messageMediaGiveawayResults.months;
            tL_messageMediaGiveaway.quantity = tL_messageMediaGiveawayResults.winners_count + tL_messageMediaGiveawayResults.unclaimed_count;
            tL_messageMediaGiveaway.only_new_subscribers = tL_messageMediaGiveawayResults.only_new_subscribers;
            tL_messageMediaGiveaway.until_date = tL_messageMediaGiveawayResults.until_date;
            tL_messageMediaGiveaway.stars = tL_messageMediaGiveawayResults.stars;
            tL_messageMediaGiveaway.flags = tL_messageMediaGiveawayResults.flags;
        } else {
            tL_messageMediaGiveaway = (TLRPC.TL_messageMediaGiveaway) messageMedia;
        }
        final TLRPC.TL_messageMediaGiveaway tL_messageMediaGiveaway2 = tL_messageMediaGiveaway;
        final String giveawayCreatorName = getGiveawayCreatorName(messageObject);
        final boolean zIsChannel = isChannel(messageObject);
        final long j = ((long) messageObject.messageOwner.date) * 1000;
        BoostRepository.getGiveawayInfo(messageObject, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                BoostDialogs.$r8$lambda$VPq37rbydrsIqgb9Iss9McjMFtk(atomicBoolean, progress, zIsChannel, giveawayCreatorName, j, tL_messageMediaGiveaway2, context, resourcesProvider, (TLRPC.payments_GiveawayInfo) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                BoostDialogs.$r8$lambda$uiKy_Sm31gbPIi8Kcd7_Wd7f12Y(atomicBoolean, progress, (TLRPC.TL_error) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$VPq37rbydrsIqgb9Iss9McjMFtk(AtomicBoolean atomicBoolean, Browser.Progress progress, boolean z, String str, long j, TLRPC.TL_messageMediaGiveaway tL_messageMediaGiveaway, Context context, Theme.ResourcesProvider resourcesProvider, TLRPC.payments_GiveawayInfo payments_giveawayinfo) {
        if (atomicBoolean.get()) {
            return;
        }
        progress.end();
        if (payments_giveawayinfo instanceof TLRPC.TL_payments_giveawayInfo) {
            showAbout(z, str, j, (TLRPC.TL_payments_giveawayInfo) payments_giveawayinfo, tL_messageMediaGiveaway, context, resourcesProvider);
        } else if (payments_giveawayinfo instanceof TLRPC.TL_payments_giveawayInfoResults) {
            showAboutEnd(z, str, j, (TLRPC.TL_payments_giveawayInfoResults) payments_giveawayinfo, tL_messageMediaGiveaway, context, resourcesProvider);
        }
    }

    public static /* synthetic */ void $r8$lambda$uiKy_Sm31gbPIi8Kcd7_Wd7f12Y(AtomicBoolean atomicBoolean, Browser.Progress progress, TLRPC.TL_error tL_error) {
        if (atomicBoolean.get()) {
            return;
        }
        progress.end();
    }

    private static boolean isChannel(MessageObject messageObject) {
        if (messageObject == null) {
            return false;
        }
        TLRPC.Chat chat = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-messageObject.getFromChatId()));
        return chat != null && ChatObject.isChannelAndNotMegaGroup(chat);
    }

    private static String getGiveawayCreatorName(MessageObject messageObject) {
        if (messageObject == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String forwardedName = messageObject.getForwardedName();
        if (forwardedName != null) {
            return forwardedName;
        }
        TLRPC.Chat chat = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-MessageObject.getPeerId(messageObject.messageOwner.peer_id)));
        if (chat == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return chat.title;
    }

    public static void showBulletinAbout(final MessageObject messageObject) {
        if (messageObject == null || messageObject.messageOwner == null) {
            return;
        }
        BoostRepository.getGiveawayInfo(messageObject, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                BoostDialogs.m11657$r8$lambda$gpY5WECZOxGjtBvgYQyOdQKExk(messageObject, (TLRPC.payments_GiveawayInfo) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                BoostDialogs.$r8$lambda$NpchwS3EGotSPguWejniRKo1gMw((TLRPC.TL_error) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$g-pY5WECZOxGjtBvgYQyOdQKExk, reason: not valid java name */
    public static /* synthetic */ void m11657$r8$lambda$gpY5WECZOxGjtBvgYQyOdQKExk(MessageObject messageObject, final TLRPC.payments_GiveawayInfo payments_giveawayinfo) {
        TLRPC.TL_messageMediaGiveaway tL_messageMediaGiveaway;
        TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
        if (messageMedia instanceof TLRPC.TL_messageMediaGiveawayResults) {
            TLRPC.TL_messageMediaGiveawayResults tL_messageMediaGiveawayResults = (TLRPC.TL_messageMediaGiveawayResults) messageMedia;
            tL_messageMediaGiveaway = new TLRPC.TL_messageMediaGiveaway();
            tL_messageMediaGiveaway.prize_description = tL_messageMediaGiveawayResults.prize_description;
            tL_messageMediaGiveaway.months = tL_messageMediaGiveawayResults.months;
            tL_messageMediaGiveaway.quantity = tL_messageMediaGiveawayResults.winners_count + tL_messageMediaGiveawayResults.unclaimed_count;
            tL_messageMediaGiveaway.only_new_subscribers = tL_messageMediaGiveawayResults.only_new_subscribers;
            tL_messageMediaGiveaway.until_date = tL_messageMediaGiveawayResults.until_date;
            if ((tL_messageMediaGiveawayResults.flags & 32) != 0) {
                tL_messageMediaGiveaway.flags |= 32;
                tL_messageMediaGiveaway.stars = tL_messageMediaGiveawayResults.stars;
            }
        } else {
            tL_messageMediaGiveaway = (TLRPC.TL_messageMediaGiveaway) messageMedia;
        }
        final TLRPC.TL_messageMediaGiveaway tL_messageMediaGiveaway2 = tL_messageMediaGiveaway;
        final long j = ((long) messageObject.messageOwner.date) * 1000;
        final BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null) {
            return;
        }
        final String giveawayCreatorName = getGiveawayCreatorName(messageObject);
        final boolean zIsChannel = isChannel(messageObject);
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(lastFragment.getParentActivity(), lastFragment.getResourceProvider());
        if (payments_giveawayinfo instanceof TLRPC.TL_payments_giveawayInfoResults) {
            lottieLayout.setAnimation(C2888R.raw.chats_infotip, 30, 30, new String[0]);
            lottieLayout.textView.setText(LocaleController.getString(C2888R.string.BoostingGiveawayShortStatusEnded));
        } else if (payments_giveawayinfo instanceof TLRPC.TL_payments_giveawayInfo) {
            if (((TLRPC.TL_payments_giveawayInfo) payments_giveawayinfo).participating) {
                lottieLayout.setAnimation(C2888R.raw.forward, 30, 30, new String[0]);
                lottieLayout.textView.setText(LocaleController.getString(C2888R.string.BoostingGiveawayShortStatusParticipating));
            } else {
                lottieLayout.setAnimation(C2888R.raw.chats_infotip, 30, 30, new String[0]);
                lottieLayout.textView.setText(LocaleController.getString(C2888R.string.BoostingGiveawayShortStatusNotParticipating));
            }
        }
        lottieLayout.textView.setSingleLine(false);
        lottieLayout.textView.setMaxLines(2);
        lottieLayout.setButton(new Bulletin.UndoButton(lastFragment.getParentActivity(), true, lastFragment.getResourceProvider()).setText(LocaleController.getString(C2888R.string.LearnMore)).setUndoAction(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                BoostDialogs.$r8$lambda$jfoikiIAXhVcYEZJhjU0Mp9LFow(payments_giveawayinfo, zIsChannel, giveawayCreatorName, j, tL_messageMediaGiveaway2, lastFragment);
            }
        }));
        Bulletin.make(lastFragment, lottieLayout, 2750).show();
    }

    public static /* synthetic */ void $r8$lambda$jfoikiIAXhVcYEZJhjU0Mp9LFow(TLRPC.payments_GiveawayInfo payments_giveawayinfo, boolean z, String str, long j, TLRPC.TL_messageMediaGiveaway tL_messageMediaGiveaway, BaseFragment baseFragment) {
        if (payments_giveawayinfo instanceof TLRPC.TL_payments_giveawayInfo) {
            showAbout(z, str, j, (TLRPC.TL_payments_giveawayInfo) payments_giveawayinfo, tL_messageMediaGiveaway, baseFragment.getParentActivity(), baseFragment.getResourceProvider());
        } else if (payments_giveawayinfo instanceof TLRPC.TL_payments_giveawayInfoResults) {
            showAboutEnd(z, str, j, (TLRPC.TL_payments_giveawayInfoResults) payments_giveawayinfo, tL_messageMediaGiveaway, baseFragment.getParentActivity(), baseFragment.getResourceProvider());
        }
    }

    public static void showMoreBoostsNeeded(long j, final BottomSheet bottomSheet) {
        TLRPC.Chat chat = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-j));
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(lastFragment.getContext(), lastFragment.getResourceProvider());
        builder.setTitle(LocaleController.getString(C2888R.string.BoostingMoreBoostsNeeded));
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGetMoreBoostByGiftingCount", BoostRepository.boostsPerSentGift(), chat.title)));
        builder.setNegativeButton(LocaleController.getString("GiftPremium", C2888R.string.GiftPremium), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda10
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                BoostDialogs.$r8$lambda$741Yww92LdJcczmNRaaQhvdXYic(bottomSheet, alertDialog, i);
            }
        });
        builder.setPositiveButton(LocaleController.getString("Close", C2888R.string.Close), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda11
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                BoostDialogs.$r8$lambda$cZ5xH0mvxDzwAIYwsdC6X8hbsjA(alertDialog, i);
            }
        });
        builder.show();
    }

    public static /* synthetic */ void $r8$lambda$741Yww92LdJcczmNRaaQhvdXYic(BottomSheet bottomSheet, AlertDialog alertDialog, int i) {
        bottomSheet.lambda$new$0();
        UserSelectorBottomSheet.open();
    }

    public static void showFloodWait(int i) {
        String pluralString;
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null) {
            return;
        }
        if (i < 60) {
            pluralString = LocaleController.formatPluralString("Seconds", i, new Object[0]);
        } else if (i < 3600) {
            pluralString = LocaleController.formatPluralString("Minutes", i / 60, new Object[0]);
        } else {
            int i2 = (i / 60) / 60;
            if (i2 > 2) {
                pluralString = LocaleController.formatPluralString("Hours", i2, new Object[0]);
            } else {
                pluralString = LocaleController.formatPluralString("Hours", i2, new Object[0]) + " " + LocaleController.formatPluralString("Minutes", i % 60, new Object[0]);
            }
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(lastFragment.getContext(), lastFragment.getResourceProvider());
        builder.setTitle(LocaleController.getString(C2888R.string.CantBoostTooOften));
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("CantBoostTooOftenDescription", C2888R.string.CantBoostTooOftenDescription, pluralString)));
        builder.setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i3) {
                alertDialog.dismiss();
            }
        });
        builder.show();
    }

    public static void showStartGiveawayDialog(final Runnable runnable) {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(lastFragment.getContext(), lastFragment.getResourceProvider());
        builder.setTitle(LocaleController.getString(C2888R.string.BoostingStartGiveawayConfirmTitle));
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.BoostingStartGiveawayConfirmText)));
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Start), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda25
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                runnable.run();
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostDialogs$$ExternalSyntheticLambda26
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                alertDialog.dismiss();
            }
        });
        builder.show();
    }
}
