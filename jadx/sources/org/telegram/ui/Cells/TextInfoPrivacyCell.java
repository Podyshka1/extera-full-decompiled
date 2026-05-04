package org.telegram.ui.Cells;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.AbsoluteSizeSpan;
import android.util.Property;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkSpanDrawable;

/* JADX INFO: loaded from: classes3.dex */
public class TextInfoPrivacyCell extends FrameLayout {
    private int bottomPadding;
    private int fixedSize;
    private boolean isRTL;
    private int linkTextColorKey;
    private Integer linkTextRippleColor;
    private LinkSpanDrawable.LinkCollector links;
    private final Theme.ResourcesProvider resourcesProvider;
    private CharSequence text;
    private LinkSpanDrawable.LinksTextView textView;
    private int topPadding;

    protected void afterTextDraw() {
    }

    protected void onTextDraw() {
    }

    public TextInfoPrivacyCell(Context context) {
        this(context, 24, null);
    }

    public TextInfoPrivacyCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        this(context, 24, resourcesProvider);
    }

    public TextInfoPrivacyCell(Context context, int i) {
        this(context, i, null);
    }

    public TextInfoPrivacyCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.linkTextColorKey = Theme.key_windowBackgroundWhiteLinkText;
        this.topPadding = 10;
        this.bottomPadding = 17;
        this.resourcesProvider = resourcesProvider;
        LinkSpanDrawable.LinkCollector linkCollector = new LinkSpanDrawable.LinkCollector(this);
        this.links = linkCollector;
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, linkCollector, resourcesProvider) { // from class: org.telegram.ui.Cells.TextInfoPrivacyCell.1
            @Override // org.telegram.ui.Components.LinkSpanDrawable.LinksTextView, android.widget.TextView, android.view.View
            protected void onDraw(Canvas canvas) {
                TextInfoPrivacyCell.this.onTextDraw();
                super.onDraw(canvas);
                TextInfoPrivacyCell.this.afterTextDraw();
            }

            @Override // org.telegram.ui.Components.LinkSpanDrawable.LinksTextView
            public int overrideColor() {
                if (TextInfoPrivacyCell.this.linkTextRippleColor != null) {
                    return TextInfoPrivacyCell.this.linkTextRippleColor.intValue();
                }
                return super.overrideColor();
            }
        };
        this.textView = linksTextView;
        linksTextView.setTextSize(1, 14.0f);
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
        this.textView.setGravity(LocaleController.isRTL ? 5 : 3);
        this.textView.setPadding(0, AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(17.0f));
        this.textView.setMovementMethod(LinkMovementMethod.getInstance());
        LinkSpanDrawable.LinksTextView linksTextView2 = this.textView;
        int i2 = Theme.key_windowBackgroundWhiteGrayText4;
        linksTextView2.setTextColor(getThemedColor(i2));
        this.textView.setEmojiColor(getThemedColor(i2));
        this.textView.setLinkTextColor(getThemedColor(this.linkTextColorKey));
        this.textView.setImportantForAccessibility(2);
        float f = i;
        addView(this.textView, LayoutHelper.createFrame(-1, -2.0f, (LocaleController.isRTL ? 5 : 3) | 48, f, 0.0f, f, 0.0f));
        this.isRTL = LocaleController.isRTL;
        setWillNotDraw(false);
    }

    public void updateRTL() {
        boolean z = this.isRTL;
        boolean z2 = LocaleController.isRTL;
        if (z == z2) {
            return;
        }
        this.isRTL = z2;
        this.textView.setGravity(z2 ? 5 : 3);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.textView.getLayoutParams();
        layoutParams.gravity = (LocaleController.isRTL ? 5 : 3) | 48;
        this.textView.setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.links != null) {
            canvas.save();
            canvas.translate(this.textView.getLeft(), this.textView.getTop());
            if (this.links.draw(canvas)) {
                invalidate();
            }
            canvas.restore();
        }
        super.onDraw(canvas);
    }

    public void setLinkTextColorKey(int i) {
        this.linkTextColorKey = i;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = this.fixedSize;
        if (i3 == -1) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(0, TLObject.FLAG_30));
        } else if (i3 != 0) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(this.fixedSize), TLObject.FLAG_30));
        } else {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(0, 0));
        }
    }

    public void setTopPadding(int i) {
        this.topPadding = i;
    }

    public void setBottomPadding(int i) {
        this.bottomPadding = i;
    }

    public void setFixedSize(int i) {
        this.fixedSize = i;
    }

    public int getFixedSize() {
        return this.fixedSize;
    }

    public CharSequence getText() {
        return this.textView.getText();
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
    public void setText(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.text)) {
            return;
        }
        this.text = charSequence;
        if (charSequence == null) {
            this.textView.setPadding(0, AndroidUtilities.dp(2.0f), 0, 0);
        } else {
            this.textView.setPadding(0, AndroidUtilities.dp(this.topPadding), 0, AndroidUtilities.dp(this.bottomPadding));
        }
        SpannableString spannableString = null;
        if (charSequence != null) {
            int length = charSequence.length();
            for (int i = 0; i < length - 1; i++) {
                if (charSequence.charAt(i) == '\n') {
                    int i2 = i + 1;
                    if (charSequence.charAt(i2) == '\n') {
                        if (spannableString == null) {
                            spannableString = new SpannableString(charSequence);
                        }
                        spannableString.setSpan(new AbsoluteSizeSpan(10, true), i2, i + 2, 33);
                    }
                }
            }
        }
        LinkSpanDrawable.LinksTextView linksTextView = this.textView;
        if (spannableString != null) {
            charSequence = spannableString;
        }
        linksTextView.setText(charSequence);
    }

    public void setTextColor(int i) {
        this.textView.setTextColor(i);
    }

    public void setTextColorByKey(int i) {
        this.textView.setTextColor(getThemedColor(i));
        this.textView.setTag(Integer.valueOf(i));
    }

    public LinkSpanDrawable.LinksTextView getTextView() {
        return this.textView;
    }

    public void setLinkTextRippleColor(Integer num) {
        this.linkTextRippleColor = num;
    }

    public int length() {
        return this.textView.length();
    }

    public void setEnabled(boolean z, ArrayList arrayList) {
        if (arrayList != null) {
            arrayList.add(ObjectAnimator.ofFloat(this.textView, (Property<LinkSpanDrawable.LinksTextView, Float>) View.ALPHA, z ? 1.0f : 0.5f));
        } else {
            this.textView.setAlpha(z ? 1.0f : 0.5f);
        }
    }

    public void setTextGravity(int i) {
        this.textView.setGravity(i);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(TextView.class.getName());
        accessibilityNodeInfo.setText(this.text);
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
