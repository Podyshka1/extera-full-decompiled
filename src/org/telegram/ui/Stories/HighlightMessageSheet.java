package org.telegram.ui.Stories;

import android.content.Context;
import android.text.Spannable;
import android.text.TextPaint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.cast.MediaError;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.stream.Collectors;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesController$$ExternalSyntheticLambda456;
import org.telegram.messenger.MessagesController$$ExternalSyntheticLambda500;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.TextHelper;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Stars.StarsReactionsSheet;
import org.telegram.ui.Stories.LiveCommentsView;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes3.dex */
public abstract class HighlightMessageSheet {
    public static int TIER_COLOR1 = 3;
    public static int TIER_COLOR2 = 4;
    public static int TIER_COLOR_BACKGROUND = 5;
    public static int TIER_EMOJIS = 2;
    public static int TIER_LENGTH = 1;
    public static int TIER_PERIOD;

    public static int[] getDefaultTiers() {
        return new int[]{10000, 3600, MediaError.DetailedErrorCode.MANIFEST_UNKNOWN, 20, -10787210, -8681059, -14341066, CastStatusCodes.AUTHENTICATION_FAILED, 1800, 280, 10, -2013375, -1482439, -7666429, MediaError.DetailedErrorCode.SEGMENT_UNKNOWN, 900, 200, 7, -1214690, -1214690, -6606592, 250, MediaError.DetailedErrorCode.TEXT_UNKNOWN, 150, 4, -1926647, -1926647, -6668800, 100, 300, 110, 3, -12539616, -12539616, -15244800, 50, 120, 80, 2, -12147733, -12147733, -16756594, 10, 60, 60, 1, -6988581, -6988581, -11991141, 0, 30, 30, 0, -6988581, -6988581, -11991141};
    }

    public static int[] parseTiers(TLRPC.TL_jsonArray tL_jsonArray) {
        int[] iArr = new int[tL_jsonArray.value.size() * 7];
        for (int i = 0; i < tL_jsonArray.value.size(); i++) {
            TLRPC.JSONValue jSONValue = tL_jsonArray.value.get(i);
            if (jSONValue instanceof TLRPC.TL_jsonObject) {
                ArrayList<TLRPC.TL_jsonObjectValue> arrayList = ((TLRPC.TL_jsonObject) jSONValue).value;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    TLRPC.TL_jsonObjectValue tL_jsonObjectValue = arrayList.get(i2);
                    i2++;
                    TLRPC.TL_jsonObjectValue tL_jsonObjectValue2 = tL_jsonObjectValue;
                    TLRPC.JSONValue jSONValue2 = tL_jsonObjectValue2.value;
                    int i3 = -1;
                    if (jSONValue2 instanceof TLRPC.TL_jsonNumber) {
                        int i4 = (int) ((TLRPC.TL_jsonNumber) jSONValue2).value;
                        String str = tL_jsonObjectValue2.key;
                        str.getClass();
                        switch (str) {
                            case "text_length_max":
                                break;
                            case "pin_period":
                                break;
                            case "stars":
                                break;
                            case "emoji_max":
                                break;
                            default:
                                break;
                        }
                        if (r9 >= 0) {
                            iArr[(i * 7) + r9] = i4;
                        }
                    } else if (jSONValue2 instanceof TLRPC.TL_jsonString) {
                        String str2 = ((TLRPC.TL_jsonString) jSONValue2).value;
                        String str3 = tL_jsonObjectValue2.key;
                        str3.getClass();
                        switch (str3) {
                            case "color1":
                                i3 = 4;
                                break;
                            case "color2":
                                i3 = 5;
                                break;
                            case "color_bg":
                                i3 = 6;
                                break;
                        }
                        if (i3 >= 0) {
                            try {
                                iArr[(i * 7) + i3] = (int) Long.parseLong("FF" + str2, 16);
                            } catch (Exception e) {
                                FileLog.m992e(e);
                            }
                        }
                    }
                }
            }
        }
        return iArr;
    }

    public static boolean tiersEqual(int[] iArr, int[] iArr2) {
        if (iArr == null && iArr2 == null) {
            return true;
        }
        if (iArr == null || iArr2 == null || iArr.length != iArr2.length) {
            return false;
        }
        for (int i = 0; i < iArr.length; i++) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static int[] parseTiersString(String str) {
        if (str == null || str.length() == 0) {
            return getDefaultTiers();
        }
        try {
            return Arrays.stream(str.split(",")).mapToInt(new MessagesController$$ExternalSyntheticLambda500()).toArray();
        } catch (Exception e) {
            FileLog.m992e(e);
            return getDefaultTiers();
        }
    }

    public static String tiersToString(int[] iArr) {
        return (String) Arrays.stream(iArr).mapToObj(new MessagesController$$ExternalSyntheticLambda456()).collect(Collectors.joining(","));
    }

    public static int getTierOption(int i, int i2, int i3) {
        int[] iArr = MessagesController.getInstance(i).starsGroupcallMessageLimits;
        for (int i4 = 0; i4 < iArr.length / 7; i4++) {
            int i5 = i4 * 7;
            if (i2 >= iArr[i5]) {
                return iArr[i5 + 1 + i3];
            }
        }
        return 0;
    }

    public static int getMaxLength(int i) {
        int[] iArr = MessagesController.getInstance(i).starsGroupcallMessageLimits;
        if (iArr == null) {
            return MediaError.DetailedErrorCode.MANIFEST_UNKNOWN;
        }
        int length = iArr.length;
        int i2 = TIER_LENGTH;
        return length <= i2 + 1 ? MediaError.DetailedErrorCode.MANIFEST_UNKNOWN : iArr[i2 + 1];
    }

    public static void open(Context context, final int i, long j, String str, TLRPC.TL_textWithEntities tL_textWithEntities, long j2, long j3, final Utilities.Callback<Long> callback, Theme.ResourcesProvider resourcesProvider) {
        int length;
        int i2;
        LinearLayout linearLayout;
        int i3 = 0;
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        builder.setApplyBottomPadding(false);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        builder.setCustomView(linearLayout2);
        int[] iArr = MessagesController.getInstance(i).starsGroupcallMessageLimits;
        CharSequence textWithEntities = MessageObject.formatTextWithEntities(tL_textWithEntities, false, new TextPaint());
        if (textWithEntities instanceof Spannable) {
            Spannable spannable = (Spannable) textWithEntities;
            length = ((AnimatedEmojiSpan[]) spannable.getSpans(0, textWithEntities.length(), AnimatedEmojiSpan.class)).length + ((Emoji.EmojiSpan[]) spannable.getSpans(0, textWithEntities.length(), Emoji.EmojiSpan.class)).length;
        } else {
            length = 0;
        }
        int iMax = (int) Math.max(j2, j3 <= 0 ? 100L : j3);
        int length2 = (iArr.length / 7) - 1;
        while (true) {
            if (length2 < 0) {
                i2 = i3;
                break;
            }
            int i4 = length2 * 7;
            int i5 = iArr[i4];
            int i6 = i4 + 1;
            i2 = i3;
            int i7 = iArr[i6 + TIER_LENGTH];
            if (length <= iArr[i6 + TIER_EMOJIS] && textWithEntities.length() <= i7) {
                iMax = Math.max(iMax, i5);
                break;
            } else {
                length2--;
                i3 = i2;
            }
        }
        final long[] jArr = new long[1];
        jArr[i2] = iMax;
        final ColoredImageSpan[] coloredImageSpanArr = new ColoredImageSpan[1];
        final ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, null);
        final LiveCommentsView.Message message = new LiveCommentsView.Message();
        message.dialogId = j;
        message.text = tL_textWithEntities;
        message.stars = jArr[i2];
        final LiveCommentsView.LiveCommentView liveCommentView = new LiveCommentsView.LiveCommentView(context, i, true);
        LinearLayout linearLayout3 = new LinearLayout(context);
        linearLayout3.setOrientation(i2);
        final TierValueView tierValueView = new TierValueView(context, LocaleController.getString(C2665R.string.LiveStoryHighlightFeaturePin), resourcesProvider);
        linearLayout3.addView(tierValueView, LayoutHelper.createLinear(-1, -1, 1.0f, 112, 0, 0, 5, 0));
        final TierValueView tierValueView2 = new TierValueView(context, LocaleController.getString(C2665R.string.LiveStoryHighlightFeatureLength), resourcesProvider);
        linearLayout3.addView(tierValueView2, LayoutHelper.createLinear(-1, -1, 1.0f, 112, 5, 0, 5, 0));
        final TierValueView tierValueView3 = new TierValueView(context, LocaleController.getString(C2665R.string.LiveStoryHighlightFeatureEmoji), resourcesProvider);
        linearLayout3.addView(tierValueView3, LayoutHelper.createLinear(-1, -1, 1.0f, 112, 5, 0, 0, 0));
        final StarsReactionsSheet.StarsSlider starsSlider = new StarsReactionsSheet.StarsSlider(context, resourcesProvider) { // from class: org.telegram.ui.Stories.HighlightMessageSheet.1
            @Override // org.telegram.ui.Stars.StarsReactionsSheet.StarsSlider
            public void onValueChanged(int i8) {
                callbackArr[0].run(Integer.valueOf(i8));
            }
        };
        final boolean[] zArr = {true};
        final Utilities.Callback[] callbackArr = {new Utilities.Callback() { // from class: org.telegram.ui.Stories.HighlightMessageSheet$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                HighlightMessageSheet.$r8$lambda$AMz9hzLpiy1t41hnyTvTz8oks24(jArr, buttonWithCounterView, coloredImageSpanArr, message, liveCommentView, i, tierValueView, tierValueView2, tierValueView3, starsSlider, zArr, (Integer) obj);
            }
        }};
        liveCommentView.set(message);
        int i8 = 9;
        int[] iArr2 = {1, 50, 100, MediaError.DetailedErrorCode.SEGMENT_UNKNOWN, 1000, CastStatusCodes.AUTHENTICATION_FAILED, 5000, 7500, 10000};
        int i9 = MessagesController.getInstance(i).starsGroupcallMessageAmountMax;
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (true) {
            if (i10 >= i8) {
                linearLayout = linearLayout2;
                break;
            }
            linearLayout = linearLayout2;
            if (iArr2[i10] >= j2) {
                if (i10 > 0 && arrayList.isEmpty() && iArr2[i10] > j2) {
                    arrayList.add(Integer.valueOf((int) j2));
                }
                int i11 = iArr2[i10];
                if (i11 > i9) {
                    arrayList.add(Integer.valueOf(i9));
                    break;
                } else {
                    arrayList.add(Integer.valueOf(i11));
                    if (iArr2[i10] == i9) {
                        break;
                    }
                }
            }
            i10++;
            linearLayout2 = linearLayout;
            i8 = 9;
        }
        if (arrayList.isEmpty() || ((Integer) arrayList.get(arrayList.size() - 1)).intValue() < i9) {
            arrayList.add(Integer.valueOf(i9));
        }
        int[] iArr3 = new int[arrayList.size()];
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            iArr3[i12] = ((Integer) arrayList.get(i12)).intValue();
        }
        starsSlider.setSteps(100, iArr3);
        starsSlider.setValue((int) jArr[0]);
        ViewGroup viewGroup = linearLayout;
        viewGroup.addView(starsSlider, LayoutHelper.createLinear(-1, -2, 0.0f, -52.0f, 0.0f, -42.0f));
        callbackArr[0].run(Integer.valueOf((int) jArr[0]));
        viewGroup.addView(linearLayout3, LayoutHelper.createLinear(-1, 56, 16.0f, 0.0f, 16.0f, 0.0f));
        int i13 = Theme.key_dialogTextBlack;
        TextView textViewMakeTextView = TextHelper.makeTextView(context, 20.0f, i13, true, resourcesProvider);
        textViewMakeTextView.setGravity(17);
        textViewMakeTextView.setText(LocaleController.getString(C2665R.string.LiveStoryHighlightTitle));
        viewGroup.addView(textViewMakeTextView, LayoutHelper.createLinear(-1, -2, 42.0f, 18.0f, 42.0f, 9.0f));
        TextView textViewMakeTextView2 = TextHelper.makeTextView(context, 14.0f, i13, false, resourcesProvider);
        textViewMakeTextView2.setGravity(17);
        textViewMakeTextView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.LiveStoryHighlightText, str)));
        viewGroup.addView(textViewMakeTextView2, LayoutHelper.createLinear(-1, -2, 42.0f, 0.0f, 42.0f, 0.0f));
        viewGroup.addView(liveCommentView, LayoutHelper.createLinear(-2, -2, 17, 42, 22, 42, 20));
        viewGroup.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 16.0f, 0.0f, 16.0f, 12.0f));
        final BottomSheet bottomSheetShow = builder.show();
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.HighlightMessageSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HighlightMessageSheet.m20403$r8$lambda$TYVdgVFeZEkw19HNzSwaGbMGQ(callback, jArr, bottomSheetShow, view);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$AMz9hzLpiy1t41hnyTvTz8oks24(long[] jArr, ButtonWithCounterView buttonWithCounterView, ColoredImageSpan[] coloredImageSpanArr, LiveCommentsView.Message message, LiveCommentsView.LiveCommentView liveCommentView, int i, TierValueView tierValueView, TierValueView tierValueView2, TierValueView tierValueView3, StarsReactionsSheet.StarsSlider starsSlider, boolean[] zArr, Integer num) {
        long jIntValue = num.intValue();
        jArr[0] = jIntValue;
        buttonWithCounterView.setText(StarsIntroActivity.replaceStars(LocaleController.formatString(C2665R.string.StarsAddHighlightedMessage, LocaleController.formatNumber(jIntValue, ',')), coloredImageSpanArr), true);
        message.stars = jArr[0];
        liveCommentView.set(message);
        int tierOption = getTierOption(i, num.intValue(), TIER_PERIOD);
        int tierOption2 = getTierOption(i, num.intValue(), TIER_LENGTH);
        int tierOption3 = getTierOption(i, num.intValue(), TIER_EMOJIS);
        tierValueView.set(tierOption >= 60 ? LocaleController.formatString(C2665R.string.SlowmodeMinutes, Integer.valueOf(tierOption / 60)) : LocaleController.formatString(C2665R.string.SlowmodeSeconds, Integer.valueOf(tierOption)));
        tierValueView2.set(LocaleController.formatNumber(tierOption2, ','));
        tierValueView3.set(LocaleController.formatNumber(tierOption3, ','));
        starsSlider.setColor(getTierOption(i, num.intValue(), TIER_COLOR1), getTierOption(i, num.intValue(), TIER_COLOR2), !zArr[0]);
        zArr[0] = false;
    }

    /* JADX INFO: renamed from: $r8$lambda$TYVdgVFeZEkw19-HNzSwaGb-MGQ, reason: not valid java name */
    public static /* synthetic */ void m20403$r8$lambda$TYVdgVFeZEkw19HNzSwaGbMGQ(Utilities.Callback callback, long[] jArr, BottomSheet bottomSheet, View view) {
        callback.run(Long.valueOf(jArr[0]));
        bottomSheet.lambda$new$0();
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class TierValueView extends FrameLayout {
        private final TextView subtitleTextView;
        private final AnimatedTextView titleTextView;

        public TierValueView(Context context, CharSequence charSequence, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            int iDp = AndroidUtilities.dp(12.0f);
            int i = Theme.key_dialogTextBlack;
            setBackground(Theme.createRoundRectDrawable(iDp, Theme.multAlpha(Theme.getColor(i, resourcesProvider), 0.06f)));
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f, 17, 6.0f, 0.0f, 6.0f, 0.0f));
            AnimatedTextView animatedTextView = new AnimatedTextView(context, false, true, true);
            this.titleTextView = animatedTextView;
            animatedTextView.setAnimationProperties(0.6f, 0L, 450L, CubicBezierInterpolator.EASE_OUT_QUINT);
            animatedTextView.setTextSize(AndroidUtilities.dp(17.0f));
            animatedTextView.setTextColor(Theme.getColor(i, resourcesProvider));
            animatedTextView.setScaleProperty(0.7f);
            animatedTextView.setGravity(17);
            animatedTextView.setTypeface(AndroidUtilities.bold());
            animatedTextView.setAllowCancel(true);
            linearLayout.addView(animatedTextView, LayoutHelper.createLinear(-1, 20, 0.0f, 0.0f, 0.0f, 1.66f));
            TextView textView = new TextView(context);
            this.subtitleTextView = textView;
            textView.setTextSize(1, 11.0f);
            textView.setTextColor(Theme.getColor(i, resourcesProvider));
            textView.setGravity(17);
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 0.0f));
            textView.setText(charSequence);
        }

        public void set(CharSequence charSequence) {
            this.titleTextView.setText(charSequence, true);
        }
    }
}
