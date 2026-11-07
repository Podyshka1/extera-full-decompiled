package com.exteragram.messenger.plugins.ui.components;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.chaquo.python.internal.Common;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.ScaleStateListAnimator;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u001d\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\u000b\u001a\u00020\f2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eJ\u0018\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\tH\u0014J0\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\tH\u0014J\u0010\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\tH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;", "Landroid/view/ViewGroup;", "context", "Landroid/content/Context;", "resourcesProvider", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "<init>", "(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V", "itemSpacing", _UrlKt.FRAGMENT_ENCODE_SET, "lineSpacing", "setRequirements", _UrlKt.FRAGMENT_ENCODE_SET, Common.ASSET_REQUIREMENTS, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "onLayout", "changed", _UrlKt.FRAGMENT_ENCODE_SET, "l", "t", "r", "b", "getThemedColor", PluginsConstants.Settings.KEY, "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginRequirementsView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginRequirementsView.kt\ncom/exteragram/messenger/plugins/ui/components/PluginRequirementsView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,156:1\n297#2:157\n297#2:158\n1#3:159\n*S KotlinDebug\n*F\n+ 1 PluginRequirementsView.kt\ncom/exteragram/messenger/plugins/ui/components/PluginRequirementsView\n*L\n83#1:157\n116#1:158\n*E\n"})
public final class PluginRequirementsView extends ViewGroup {
    private final int itemSpacing;
    private final int lineSpacing;
    private final Theme.ResourcesProvider resourcesProvider;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Regex NAME_PATTERN = new Regex("[A-Za-z0-9][A-Za-z0-9._-]*");
    private static final Regex EXTRAS_PATTERN = new Regex("\\[[A-Za-z0-9,._\\s-]*]");

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public PluginRequirementsView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
    }

    @JvmStatic
    public static final String requirementName(String str) {
        return INSTANCE.requirementName(str);
    }

    @JvmStatic
    public static final String requirementUrl(String str) {
        return INSTANCE.requirementUrl(str);
    }

    public /* synthetic */ PluginRequirementsView(Context context, Theme.ResourcesProvider resourcesProvider, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : resourcesProvider);
    }

    @JvmOverloads
    public PluginRequirementsView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        this.itemSpacing = AndroidUtilities.dp(4.0f);
        this.lineSpacing = AndroidUtilities.dp(4.0f);
    }

    public final void setRequirements(List<String> requirements) {
        removeAllViews();
        List<String> list = requirements;
        if (list == null || list.isEmpty()) {
            setVisibility(8);
            return;
        }
        setVisibility(0);
        for (final String str : requirements) {
            final TextView textView = new TextView(getContext());
            textView.setText(str);
            textView.setTextSize(1, 12.0f);
            int themedColor = getThemedColor(Theme.key_featuredStickers_addButton);
            textView.setTextColor(themedColor);
            textView.setTypeface(AndroidUtilities.regular());
            textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(6.0f), ColorUtils.setAlphaComponent(themedColor, 30)));
            textView.setPadding(AndroidUtilities.dp(6.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(2.0f));
            ScaleStateListAnimator.apply(textView);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.PluginRequirementsView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PluginRequirementsView.m3153$r8$lambda$AK1KYC4qaDW5pgXJLeqVBXRMjA(str, textView, view);
                }
            });
            addView(textView);
        }
        requestLayout();
    }

    /* JADX INFO: renamed from: $r8$lambda$AK1KYC4qaDW5pgXJL-eqVBXRMjA, reason: not valid java name */
    public static void m3153$r8$lambda$AK1KYC4qaDW5pgXJLeqVBXRMjA(String str, TextView textView, View view) {
        String strRequirementUrl = INSTANCE.requirementUrl(str);
        if (strRequirementUrl != null) {
            Browser.openUrl(textView.getContext(), strRequirementUrl);
        }
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        int iMax = 0;
        int iMax2 = 0;
        int i = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, widthMeasureSpec, heightMeasureSpec);
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (i + measuredWidth > paddingLeft) {
                    paddingTop += iMax + this.lineSpacing;
                    iMax = 0;
                    i = 0;
                }
                i += measuredWidth + this.itemSpacing;
                iMax = Math.max(iMax, measuredHeight);
                iMax2 = Math.max(iMax2, i - this.itemSpacing);
            }
        }
        int paddingBottom = paddingTop + iMax + getPaddingBottom();
        if (mode != 1073741824) {
            size = iMax2 + getPaddingRight() + getPaddingLeft();
        }
        setMeasuredDimension(size, paddingBottom);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int l, int t, int r, int b2) {
        int i = r - l;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        int iMax = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (paddingLeft + measuredWidth > i - getPaddingRight()) {
                    paddingLeft = getPaddingLeft();
                    paddingTop += iMax + this.lineSpacing;
                    iMax = 0;
                }
                childAt.layout(paddingLeft, paddingTop, paddingLeft + measuredWidth, paddingTop + measuredHeight);
                paddingLeft += measuredWidth + this.itemSpacing;
                iMax = Math.max(iMax, measuredHeight);
            }
        }
    }

    private final int getThemedColor(int key) {
        return Theme.getColor(key, this.resourcesProvider);
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0007J\u0012\u0010\n\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\bH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "NAME_PATTERN", "Lkotlin/text/Regex;", "EXTRAS_PATTERN", "requirementName", _UrlKt.FRAGMENT_ENCODE_SET, "requirement", "requirementUrl", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final String requirementName(String requirement) {
            String value;
            String string = StringsKt.trim((CharSequence) requirement).toString();
            MatchResult matchResultMatchAt = PluginRequirementsView.NAME_PATTERN.matchAt(string, 0);
            if (matchResultMatchAt == null || (value = matchResultMatchAt.getValue()) == null) {
                return string;
            }
            MatchResult matchResultMatchAt2 = PluginRequirementsView.EXTRAS_PATTERN.matchAt(string, value.length());
            String value2 = matchResultMatchAt2 != null ? matchResultMatchAt2.getValue() : null;
            if (value2 == null) {
                value2 = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            return value.concat(value2);
        }

        @JvmStatic
        public final String requirementUrl(String requirement) {
            MatchResult matchResultMatchAt;
            String value;
            String string = StringsKt.trim((CharSequence) requirement).toString();
            if (StringsKt.contains$default((CharSequence) string, (CharSequence) "://", false, 2, (Object) null) || (matchResultMatchAt = PluginRequirementsView.NAME_PATTERN.matchAt(string, 0)) == null || (value = matchResultMatchAt.getValue()) == null) {
                return null;
            }
            return "https://pypi.org/project/" + value + "/";
        }
    }
}
