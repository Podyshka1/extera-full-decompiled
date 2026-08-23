package com.exteragram.messenger.plugins.ui.components;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.ScaleStateListAnimator;

/* JADX INFO: loaded from: classes4.dex */
public class PluginRequirementsView extends ViewGroup {
    private static final Pattern REQUIREMENT_PATTERN = Pattern.compile("^([a-zA-Z0-9_\\-.]+)");
    private final int itemSpacing;
    private final int lineSpacing;
    private final Theme.ResourcesProvider resourcesProvider;

    public PluginRequirementsView(Context context) {
        this(context, null);
    }

    public PluginRequirementsView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.itemSpacing = AndroidUtilities.dp(4.0f);
        this.lineSpacing = AndroidUtilities.dp(4.0f);
        this.resourcesProvider = resourcesProvider;
    }

    public void setRequirements(List<String> list) {
        removeAllViews();
        if (list == null || list.isEmpty()) {
            setVisibility(8);
            return;
        }
        setVisibility(0);
        for (final String str : list) {
            TextView textView = new TextView(getContext());
            textView.setText(str);
            textView.setTextSize(1, 12.0f);
            int themedColor = getThemedColor(Theme.key_featuredStickers_addButton);
            textView.setTextColor(themedColor);
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
            textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(6.0f), ColorUtils.setAlphaComponent(themedColor, 30)));
            textView.setPadding(AndroidUtilities.dp(6.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(2.0f));
            ScaleStateListAnimator.apply(textView);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.PluginRequirementsView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$setRequirements$0(str, view);
                }
            });
            addView(textView);
        }
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setRequirements$0(String str, View view) {
        Matcher matcher = REQUIREMENT_PATTERN.matcher(str);
        if (matcher.find()) {
            String strGroup = matcher.group(1);
            Browser.openUrl(getContext(), "https://pypi.org/project/" + strGroup + "/");
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int paddingTop = getPaddingTop();
        int iMax = 0;
        int iMax2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i, i2);
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (i3 + measuredWidth > paddingLeft) {
                    paddingTop += iMax + this.lineSpacing;
                    iMax = 0;
                    i3 = 0;
                }
                i3 += measuredWidth + this.itemSpacing;
                iMax = Math.max(iMax, measuredHeight);
                iMax2 = Math.max(iMax2, i3 - this.itemSpacing);
            }
        }
        int paddingBottom = paddingTop + iMax + getPaddingBottom();
        if (mode != 1073741824) {
            size = iMax2 + getPaddingRight() + getPaddingLeft();
        }
        setMeasuredDimension(size, paddingBottom);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int iMax = 0;
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (paddingLeft + measuredWidth > i5 - getPaddingRight()) {
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

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
