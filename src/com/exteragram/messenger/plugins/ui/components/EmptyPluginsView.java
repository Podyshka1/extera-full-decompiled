package com.exteragram.messenger.plugins.ui.components;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.EffectsTextView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.ViewHelper;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0016\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J \u0010\u0017\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0019J\b\u0010\u001a\u001a\u00020\u001bH\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001c"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "resourcesProvider", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "<init>", "(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V", "textView", "Lorg/telegram/ui/Components/EffectsTextView;", "titleView", "Landroid/widget/TextView;", "button", "Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;", "backupImageView", "Lorg/telegram/ui/Components/BackupImageView;", "getBackupImageView", "()Lorg/telegram/ui/Components/BackupImageView;", "setText", _UrlKt.FRAGMENT_ENCODE_SET, "text", _UrlKt.FRAGMENT_ENCODE_SET, "setTitle", "setButton", "onClick", "Lkotlin/Function0;", "hasOverlappingRendering", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SuppressLint({"ClickableViewAccessibility"})
public final class EmptyPluginsView extends FrameLayout {
    private final BackupImageView backupImageView;
    private final ButtonWithCounterView button;
    private final EffectsTextView textView;
    private final TextView titleView;

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public EmptyPluginsView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public /* synthetic */ EmptyPluginsView(Context context, Theme.ResourcesProvider resourcesProvider, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : resourcesProvider);
    }

    @JvmOverloads
    public EmptyPluginsView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        LinearLayout linearLayout = new LinearLayout(context);
        ViewHelper.setPadding(linearLayout, 20.0f, 0.0f, 20.0f, 0.0f);
        linearLayout.setGravity(1);
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        linearLayout.setOrientation(1);
        BackupImageView backupImageView = new BackupImageView(context);
        this.backupImageView = backupImageView;
        linearLayout.addView(backupImageView, LayoutHelper.createLinear(100, 100, 17, 0.0f, 0.0f, 0.0f, 20.0f));
        TextView textView = new TextView(context);
        textView.setTextSize(1, 20.0f);
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        textView.setTypeface(AndroidUtilities.bold());
        textView.setGravity(17);
        textView.setVisibility(8);
        this.titleView = textView;
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 17, 0.0f, 0.0f, 0.0f, 8.0f));
        EffectsTextView effectsTextView = new EffectsTextView(context);
        effectsTextView.setTextSize(1, 14.0f);
        effectsTextView.setTextColor(Theme.getColor(Theme.key_emptyListPlaceholder, resourcesProvider));
        effectsTextView.setGravity(1);
        effectsTextView.setText(LocaleController.getString(C2807R.string.NoResult));
        effectsTextView.setTypeface(AndroidUtilities.regular());
        effectsTextView.setMaxWidth(AndroidUtilities.dp(272.0f));
        effectsTextView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
        effectsTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        effectsTextView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText));
        this.textView = effectsTextView;
        linearLayout.addView(effectsTextView, LayoutHelper.createLinear(-2, -2, 17));
        ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
        round.setVisibility(8);
        this.button = round;
        linearLayout.addView(round, LayoutHelper.createLinear(256, 48, 17, 0.0f, 20.0f, 0.0f, 0.0f));
        addView(linearLayout, LayoutHelper.createFrame(-2, -2, 17));
        setOnTouchListener(new View.OnTouchListener() { // from class: com.exteragram.messenger.plugins.ui.components.EmptyPluginsView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return EmptyPluginsView.$r8$lambda$j1w4OOkCkJYpqotqI3ML7YsvF0I(view, motionEvent);
            }
        });
    }

    public final BackupImageView getBackupImageView() {
        return this.backupImageView;
    }

    public static boolean $r8$lambda$j1w4OOkCkJYpqotqI3ML7YsvF0I(View view, MotionEvent motionEvent) {
        return true;
    }

    public final void setText(CharSequence text) {
        this.textView.setText(text);
    }

    public final void setTitle(CharSequence text) {
        this.titleView.setText(text);
        this.titleView.setVisibility((text == null || text.length() == 0) ? 8 : 0);
    }

    public final void setButton(CharSequence text, final Function0<Unit> onClick) {
        if (text == null || text.length() == 0 || onClick == null) {
            this.button.setVisibility(8);
            this.button.setOnClickListener(null);
        } else {
            this.button.setText(text, false);
            this.button.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.EmptyPluginsView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    onClick.invoke();
                }
            });
            this.button.setVisibility(0);
        }
    }
}
