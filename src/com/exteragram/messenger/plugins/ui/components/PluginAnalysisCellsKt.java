package com.exteragram.messenger.plugins.ui.components;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.text.SpannableStringBuilder;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.ui.UIUtil;
import kotlin.Metadata;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000^\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u0006\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0003\u001a\u001a\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0000\u001a\u001a\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002\u001a \u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0001H\u0002\u001a\u0016\u0010!\u001a\u00020\"*\u00020#2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0000\u001a\u0018\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020&2\u0006\u0010\u001c\u001a\u00020\u0004H\u0002\u001a\u0012\u0010'\u001a\u00020\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0000\u001a\b\u0010(\u001a\u00020\u0004H\u0000\u001a\b\u0010)\u001a\u00020\u0004H\u0002\u001a\u0010\u0010*\u001a\u00020+2\u0006\u0010\u001c\u001a\u00020\u0004H\u0000\u001a&\u0010,\u001a\u00020\"*\u00020-2\u0006\u0010.\u001a\u00020\u00012\u0006\u0010/\u001a\u00020\u00012\b\b\u0002\u00100\u001a\u000201H\u0002\u001a\u001a\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002\u001a\"\u00106\u001a\u0002072\u0006\u00108\u001a\u0002072\b\u00109\u001a\u0004\u0018\u0001072\u0006\u0010\u001c\u001a\u00020\u0004H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u000fX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006:"}, d2 = {"CARD_PADDING", _UrlKt.FRAGMENT_ENCODE_SET, "ICON_SIZE", "GLYPH_SIZE", _UrlKt.FRAGMENT_ENCODE_SET, "TEXT_GAP", "ARROW_BOX", "ARROW_INSET", "TEXT_START", "CHIP_HEIGHT", "BLOCK_GAP", "LINE_INSET_X", "LINE_INSET_Y", "BADGE_SIZE", "MIN_CONTRAST", _UrlKt.FRAGMENT_ENCODE_SET, "BOTTOM_FADE", "TITLE_SIZE", "TITLE_LINE", "SUBTITLE_SIZE", "SUBTITLE_LINE", "CODE_SIZE", "CODE_LINE", "analysisSeverityColor", "severity", "resourcesProvider", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "readable", "color", "blendHue", "from", "to", "ratio", "setDangerColors", _UrlKt.FRAGMENT_ENCODE_SET, "Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;", "withLightnessOf", "hsl", _UrlKt.FRAGMENT_ENCODE_SET, "analysisSafeColor", "analysisInnerRadius", "analysisLineRadiusDp", "sheetBottomBackdrop", "Landroid/graphics/drawable/Drawable;", "setTextMetrics", "Landroid/widget/TextView;", "sizeDp", "lineHeightDp", "face", "Landroid/graphics/Typeface;", "arrowView", "Landroid/widget/ImageView;", "context", "Landroid/content/Context;", "withBadge", _UrlKt.FRAGMENT_ENCODE_SET, "title", "badge", "TMessagesProj"}, m910k = 2, mv = {2, 2, 0}, xi = 48)
public final class PluginAnalysisCellsKt {
    private static final float ARROW_BOX = 42.0f;
    private static final float ARROW_INSET = 11.0f;
    private static final float BADGE_SIZE = 12.0f;
    private static final float BLOCK_GAP = 8.0f;
    private static final float BOTTOM_FADE = 16.0f;
    private static final float CARD_PADDING = 12.0f;
    private static final float CHIP_HEIGHT = 32.0f;
    private static final float CODE_LINE = 18.0f;
    private static final float CODE_SIZE = 13.0f;
    private static final int GLYPH_SIZE = 20;
    private static final float ICON_SIZE = 40.0f;
    private static final float LINE_INSET_X = 6.0f;
    private static final float LINE_INSET_Y = 4.0f;
    private static final double MIN_CONTRAST = 3.0d;
    private static final float SUBTITLE_LINE = 17.0f;
    private static final float SUBTITLE_SIZE = 13.0f;
    private static final float TEXT_GAP = 4.0f;
    private static final float TEXT_START = 64.0f;
    private static final float TITLE_LINE = 20.0f;
    private static final float TITLE_SIZE = 16.0f;

    public static final int analysisSeverityColor(int i, Theme.ResourcesProvider resourcesProvider) {
        int color = Theme.getColor(Theme.key_text_RedRegular, resourcesProvider);
        int color2 = Theme.getColor(Theme.key_windowBackgroundWhiteGreenText, resourcesProvider);
        if (i == 1) {
            return readable(blendHue(color, color2, 0.38f), resourcesProvider);
        }
        if (i != 2) {
            return i != 3 ? Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon, resourcesProvider) : color;
        }
        return readable(blendHue(color, color2, 0.25f), resourcesProvider);
    }

    private static final int readable(int i, Theme.ResourcesProvider resourcesProvider) {
        int alphaComponent = ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider), 255);
        if (ColorUtils.calculateLuminance(alphaComponent) <= 0.5d) {
            return i;
        }
        float[] fArr = new float[3];
        ColorUtils.colorToHSL(i, fArr);
        while (ColorUtils.calculateContrast(i, alphaComponent) < 3.0d) {
            float f = fArr[2];
            if (f <= 0.05f) {
                break;
            }
            fArr[2] = f - 0.02f;
            i = ColorUtils.HSLToColor(fArr);
        }
        return i;
    }

    private static final int blendHue(int i, int i2, float f) {
        float[] fArr = new float[3];
        float[] fArr2 = new float[3];
        float[] fArr3 = new float[3];
        ColorUtils.colorToHSL(i, fArr);
        ColorUtils.colorToHSL(i2, fArr2);
        ColorUtils.blendHSL(fArr, fArr2, f, fArr3);
        return ColorUtils.HSLToColor(fArr3);
    }

    public static final void setDangerColors(ButtonWithCounterView buttonWithCounterView, Theme.ResourcesProvider resourcesProvider) {
        float[] fArr = new float[3];
        ColorUtils.colorToHSL(analysisSeverityColor(3, resourcesProvider), fArr);
        buttonWithCounterView.setColor(withLightnessOf(fArr, Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider)));
        buttonWithCounterView.setTextColor(withLightnessOf(fArr, Theme.getColor(Theme.key_featuredStickers_buttonText, resourcesProvider)));
    }

    private static final int withLightnessOf(float[] fArr, int i) {
        float[] fArr2 = new float[3];
        ColorUtils.colorToHSL(i, fArr2);
        return ColorUtils.setAlphaComponent(ColorUtils.HSLToColor(new float[]{fArr[0], fArr[1], fArr2[2]}), Color.alpha(i));
    }

    public static final int analysisSafeColor(Theme.ResourcesProvider resourcesProvider) {
        return Theme.getColor(Theme.key_windowBackgroundWhiteGreenText, resourcesProvider);
    }

    public static final int analysisInnerRadius() {
        return AndroidUtilities.dp(RangesKt.coerceAtLeast(ExteraConfig.getSectionRadiusDp() - 12.0f, BLOCK_GAP));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int analysisLineRadiusDp() {
        return RangesKt.coerceAtLeast(MathKt.roundToInt((ExteraConfig.getSectionRadiusDp() - 12.0f) - LINE_INSET_X), 4);
    }

    public static final Drawable sheetBottomBackdrop(int i) {
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{UIUtil.createBottomFade(i), new ColorDrawable(i)});
        layerDrawable.setLayerGravity(0, 55);
        layerDrawable.setLayerHeight(0, AndroidUtilities.dp(16.0f));
        layerDrawable.setLayerInsetTop(1, AndroidUtilities.dp(16.0f));
        return layerDrawable;
    }

    public static /* synthetic */ void setTextMetrics$default(TextView textView, float f, float f2, Typeface typeface, int i, Object obj) {
        if ((i & 4) != 0) {
            typeface = AndroidUtilities.regular();
        }
        setTextMetrics(textView, f, f2, typeface);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setTextMetrics(TextView textView, float f, float f2, Typeface typeface) {
        textView.setTypeface(typeface);
        textView.setTextSize(1, f);
        textView.setIncludeFontPadding(false);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        textView.setLineSpacing(RangesKt.coerceAtLeast(AndroidUtilities.dp(f2) - (fontMetricsInt.descent - fontMetricsInt.ascent), 0), 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImageView arrowView(Context context, Theme.ResourcesProvider resourcesProvider) {
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        int iDp = AndroidUtilities.dp(ARROW_INSET);
        imageView.setPadding(iDp, iDp, iDp, iDp);
        imageView.setImageResource(C2807R.drawable.arrow_more);
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon, resourcesProvider), PorterDuff.Mode.MULTIPLY));
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence withBadge(CharSequence charSequence, CharSequence charSequence2, int i) {
        if (charSequence2 == null || charSequence2.length() == 0) {
            return charSequence;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) StringsKt.replace$default(charSequence2.toString(), ' ', Typography.nbsp, false, 4, (Object) null));
        spannableStringBuilder.setSpan(new BadgeSpan(charSequence2.toString(), i), length, spannableStringBuilder.length(), 33);
        return spannableStringBuilder;
    }
}
