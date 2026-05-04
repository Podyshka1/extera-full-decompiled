package org.telegram.p029ui.Components.Reactions;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Stories.RoundRectOutlineProvider;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public class BackSpaceButtonView extends FrameLayout {
    private final ImageView backspaceButton;
    private boolean backspaceOnce;
    private boolean backspacePressed;
    private Utilities.Callback onBackspace;
    private final Theme.ResourcesProvider resourcesProvider;

    public static /* synthetic */ void $r8$lambda$fzY2D_3TtdN909QK9dTb1llnbDo(View view) {
    }

    public BackSpaceButtonView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        ImageView imageView = new ImageView(context) { // from class: org.telegram.ui.Components.Reactions.BackSpaceButtonView.1
            private long lastClick = 0;

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    if (System.currentTimeMillis() < this.lastClick + 350) {
                        return false;
                    }
                    this.lastClick = System.currentTimeMillis();
                    BackSpaceButtonView.this.backspacePressed = true;
                    BackSpaceButtonView.this.backspaceOnce = false;
                    BackSpaceButtonView.this.postBackspaceRunnable(350);
                } else if (motionEvent.getAction() == 3 || motionEvent.getAction() == 1) {
                    BackSpaceButtonView.this.backspacePressed = false;
                    if (!BackSpaceButtonView.this.backspaceOnce && BackSpaceButtonView.this.onBackspace != null) {
                        BackSpaceButtonView.this.onBackspace.run(Boolean.FALSE);
                        try {
                            BackSpaceButtonView.this.backspaceButton.performHapticFeedback(3);
                        } catch (Exception unused) {
                        }
                    }
                }
                super.onTouchEvent(motionEvent);
                return true;
            }
        };
        this.backspaceButton = imageView;
        imageView.setHapticFeedbackEnabled(true);
        imageView.setImageResource(C2888R.drawable.smiles_tab_clear);
        imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_emojiPanelBackspace), PorterDuff.Mode.MULTIPLY));
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setContentDescription(LocaleController.getString(C2888R.string.AccDescrBackspace));
        imageView.setFocusable(true);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Reactions.BackSpaceButtonView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BackSpaceButtonView.$r8$lambda$fzY2D_3TtdN909QK9dTb1llnbDo(view);
            }
        });
        addView(imageView, LayoutHelper.createFrame(36, 36, 17));
        imageView.setBackground(Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m1124dp(36.0f), getThemedColor(Theme.key_windowBackgroundWhite), Theme.getColor(Theme.key_listSelector)));
        imageView.setOutlineProvider(new RoundRectOutlineProvider(18));
        imageView.setElevation(AndroidUtilities.m1124dp(1.0f));
        imageView.setClipToOutline(true);
        setClickable(true);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(42.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(42.0f), TLObject.FLAG_30));
    }

    public void setOnBackspace(Utilities.Callback<Boolean> callback) {
        this.onBackspace = callback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postBackspaceRunnable(final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.BackSpaceButtonView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$postBackspaceRunnable$1(i);
            }
        }, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postBackspaceRunnable$1(int i) {
        if (this.backspacePressed) {
            Utilities.Callback callback = this.onBackspace;
            if (callback != null) {
                callback.run(Boolean.valueOf(i < 300));
                try {
                    this.backspaceButton.performHapticFeedback(3);
                } catch (Exception unused) {
                }
            }
            this.backspaceOnce = true;
            postBackspaceRunnable(Math.max(50, i - 100));
        }
    }

    private int getThemedColor(int i) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        if (resourcesProvider != null) {
            return resourcesProvider.getColor(i);
        }
        return Theme.getColor(i);
    }
}
