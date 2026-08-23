package org.telegram.ui.ActionBar;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.SpannableString;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import me.vkryl.android.animator.ListAnimator;
import me.vkryl.android.animator.ReplaceAnimator;
import me.vkryl.core.lambda.Destroyable;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EllipsizeSpanAnimator;
import org.telegram.ui.Components.LayoutHelper;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"ViewConstructor"})
public abstract class ActionBarAnimatedSubtitleOverlayContainer extends FrameLayout implements ReplaceAnimator.Callback {
    private final EllipsizeSpanAnimator ellipsizeSpanAnimator;
    private final Theme.ResourcesProvider resourcesProvider;
    private final ReplaceAnimator<SimpleTextViewReplaceable> titleOverlayAnimator;

    public ActionBarAnimatedSubtitleOverlayContainer(Context context, Theme.ResourcesProvider resourcesProvider, EllipsizeSpanAnimator ellipsizeSpanAnimator) {
        super(context);
        this.titleOverlayAnimator = new ReplaceAnimator<>(this, CubicBezierInterpolator.EASE_OUT_QUINT, 350L);
        this.resourcesProvider = resourcesProvider;
        this.ellipsizeSpanAnimator = ellipsizeSpanAnimator;
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
    public void setText(CharSequence charSequence, boolean z) {
        boolean z2;
        CharSequence charSequence2;
        if (TextUtils.isEmpty(charSequence)) {
            this.titleOverlayAnimator.clear(z);
            return;
        }
        int iIndexOf = TextUtils.indexOf(charSequence, "...");
        if (iIndexOf >= 0) {
            SpannableString spannableStringValueOf = SpannableString.valueOf(charSequence);
            this.ellipsizeSpanAnimator.wrap(spannableStringValueOf, iIndexOf);
            z2 = true;
            charSequence2 = spannableStringValueOf;
        } else {
            z2 = false;
            charSequence2 = charSequence;
        }
        SimpleTextViewReplaceable simpleTextViewReplaceable = new SimpleTextViewReplaceable(getContext());
        int i = Theme.key_telegram_color_dialogsLogo;
        simpleTextViewReplaceable.setTextColor(Theme.getColor(i, this.resourcesProvider));
        simpleTextViewReplaceable.setLinkTextColor(Theme.getColor(i, this.resourcesProvider));
        simpleTextViewReplaceable.setTextSize(1, 14.0f);
        simpleTextViewReplaceable.setAlpha(0.0f);
        simpleTextViewReplaceable.setText(charSequence2);
        if (z2) {
            this.ellipsizeSpanAnimator.addView(simpleTextViewReplaceable);
        }
        addView(simpleTextViewReplaceable, LayoutHelper.createFrame(-2, -2.0f));
        this.titleOverlayAnimator.replace(simpleTextViewReplaceable, z);
    }

    private void checkUi_titleOverlayTextAnimation() {
        for (ListAnimator.Entry<SimpleTextViewReplaceable> entry : this.titleOverlayAnimator) {
            float visibility = entry.getVisibility();
            float fLerp = AndroidUtilities.lerp(0.85f, 1.0f, visibility);
            entry.item.setAlpha(visibility);
            entry.item.setScaleX(fLerp);
            entry.item.setScaleY(fLerp);
            entry.item.setTranslationY(AndroidUtilities.lerp(AndroidUtilities.dp(entry.isAffectingList() ? 9.0f : -9.0f), 0, visibility));
        }
    }

    public void updateColors() {
        for (ListAnimator.Entry<SimpleTextViewReplaceable> entry : this.titleOverlayAnimator) {
            SimpleTextViewReplaceable simpleTextViewReplaceable = entry.item;
            int i = Theme.key_telegram_color_dialogsLogo;
            simpleTextViewReplaceable.setTextColor(Theme.getColor(i, this.resourcesProvider));
            entry.item.setLinkTextColor(Theme.getColor(i, this.resourcesProvider));
        }
    }

    public void onItemChanged(ReplaceAnimator<?> replaceAnimator) {
        checkUi_titleOverlayTextAnimation();
    }

    public float getTotalVisibility() {
        return this.titleOverlayAnimator.getMetadata().getTotalVisibility();
    }

    /* JADX INFO: loaded from: classes6.dex */
    public class SimpleTextViewReplaceable extends TextView implements Destroyable {
        public SimpleTextViewReplaceable(Context context) {
            super(context);
        }

        @Override // me.vkryl.core.lambda.Destroyable
        public void performDestroy() {
            AndroidUtilities.removeFromParent(this);
            ActionBarAnimatedSubtitleOverlayContainer.this.ellipsizeSpanAnimator.removeView(this);
        }
    }
}
