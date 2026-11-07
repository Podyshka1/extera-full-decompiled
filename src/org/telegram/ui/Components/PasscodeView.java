package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.SystemClock;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.Property;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.biometric.BiometricManager;
import androidx.biometric.BiometricPrompt;
import androidx.core.content.ContextCompat;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.GlassOutlineStyle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import me.vkryl.core.reference.ReferenceList;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FingerprintController;
import org.telegram.messenger.GenericProvider;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.support.fingerprint.FingerprintManagerCompat;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceBitmap;
import org.telegram.ui.Components.chat.ViewPositionWatcher;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.QrShare.QrGlass;
import org.telegram.ui.QrShare.QrRender;
import org.telegram.ui.Stories.recorder.KeyboardNotifier;

/* JADX INFO: loaded from: classes7.dex */
public class PasscodeView extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private static final int[] ids = {C2807R.id.passcode_btn_0, C2807R.id.passcode_btn_1, C2807R.id.passcode_btn_2, C2807R.id.passcode_btn_3, C2807R.id.passcode_btn_4, C2807R.id.passcode_btn_5, C2807R.id.passcode_btn_6, C2807R.id.passcode_btn_7, C2807R.id.passcode_btn_8, C2807R.id.passcode_btn_9, C2807R.id.passcode_btn_backspace, C2807R.id.passcode_btn_fingerprint};
    private final int BUTTON_SIZE;
    private final int BUTTON_X_MARGIN;
    private final int BUTTON_Y_MARGIN;
    private SpringAnimation backgroundAnimationSpring;
    private Drawable backgroundDrawable;
    private FrameLayout backgroundFrameLayout;
    private int backgroundFrameLayoutColor;
    private LinkedList<Boolean> backgroundSpringNextQueue;
    private LinkedList<Runnable> backgroundSpringQueue;
    private View border;
    private ImageView checkImage;
    private Runnable checkRunnable;
    private PasscodeViewDelegate delegate;
    private boolean dismissing;
    private ImageView fingerprintImage;
    private PasscodeButton fingerprintView;
    private Bitmap glassBitmap;
    private Canvas glassCanvas;
    private final BlurredBackgroundDrawableViewFactory glassFactory;
    private final BlurredBackgroundSourceBitmap glassSource;
    private final ReferenceList<View> glassViews;
    private ValueAnimator hideAnimator;
    private AnimatorSet imageAnimator;
    private RLottieImageView imageView;
    private int imageY;
    private ArrayList<InnerAnimator> innerAnimators;
    private int keyboardHeight;
    private KeyboardNotifier keyboardNotifier;
    private int lastValue;
    private ArrayList<FrameLayout> numberFrameLayouts;
    private FrameLayout numbersContainer;
    public FrameLayout numbersFrameLayout;
    private FrameLayout numbersTitleContainer;
    private TextView passcodeTextView;
    private EditTextBoldCursor passwordEditText;
    private AnimatingTextView passwordEditText2;
    private FrameLayout passwordFrameLayout;
    private ValueAnimator pinAnimator;
    private boolean pinShown;
    private int[] pos;
    private Rect rect;
    int resumeCount;
    private TextView retryTextView;
    private int shiftDp;
    private AnimatorSet showAnimator;
    private float shownT;
    private final String subtitle;
    private TextView subtitleView;
    private final String title;

    public interface PasscodeViewDelegate {
        void didAcceptedPassword(PasscodeView passcodeView);
    }

    public boolean isAppLock() {
        return true;
    }

    public void onAnimationUpdate(float f) {
    }

    public void onHidden() {
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.didGenerateFingerprintKeyPair) {
            checkFingerprintButton();
            if (((Boolean) objArr[0]).booleanValue() && SharedConfig.appLocked) {
                checkFingerprint();
                return;
            }
            return;
        }
        if (i == NotificationCenter.passcodeDismissed && isAppLock() && objArr[0] != this) {
            setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkTitle() {
        AnimatingTextView animatingTextView = this.passwordEditText2;
        boolean z = animatingTextView == null || animatingTextView.length() > 0;
        FrameLayout frameLayout = this.numbersTitleContainer;
        if (frameLayout != null) {
            frameLayout.animate().cancel();
            this.numbersTitleContainer.animate().alpha(z ? 0.0f : 1.0f).scaleX(z ? 0.8f : 1.0f).scaleY(z ? 0.8f : 1.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(320L).start();
        }
    }

    public class AnimatingTextView extends FrameLayout {
        private ArrayList<TextView> characterTextViews;
        private AnimatorSet currentAnimation;
        private Runnable dotRunnable;
        private ArrayList<TextView> dotTextViews;
        private StringBuilder stringBuilder;

        public AnimatingTextView(Context context) {
            super(context);
            this.characterTextViews = new ArrayList<>(4);
            this.dotTextViews = new ArrayList<>(4);
            this.stringBuilder = new StringBuilder(4);
            for (int i = 0; i < 4; i++) {
                TextView textView = new TextView(context);
                textView.setTextColor(-1);
                textView.setTypeface(AndroidUtilities.bold());
                textView.setTextSize(1, 36.0f);
                textView.setGravity(17);
                textView.setAlpha(0.0f);
                textView.setPivotX(AndroidUtilities.dp(25.0f));
                textView.setPivotY(AndroidUtilities.dp(25.0f));
                addView(textView, LayoutHelper.createFrame(50, 50, 51));
                this.characterTextViews.add(textView);
                TextView textView2 = new TextView(context);
                textView2.setTextColor(-1);
                textView2.setTypeface(AndroidUtilities.bold());
                textView2.setTextSize(1, 36.0f);
                textView2.setGravity(17);
                textView2.setAlpha(0.0f);
                textView2.setText("•");
                textView2.setPivotX(AndroidUtilities.dp(25.0f));
                textView2.setPivotY(AndroidUtilities.dp(25.0f));
                addView(textView2, LayoutHelper.createFrame(50, 50, 51));
                this.dotTextViews.add(textView2);
            }
        }

        private int getXForTextView(int i) {
            return (((getMeasuredWidth() - (this.stringBuilder.length() * AndroidUtilities.dp(30.0f))) / 2) + (i * AndroidUtilities.dp(30.0f))) - AndroidUtilities.dp(10.0f);
        }

        public void appendCharacter(String str) {
            if (this.stringBuilder.length() == 4) {
                return;
            }
            try {
                performHapticFeedback(3);
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
            ArrayList arrayList = new ArrayList();
            final int length = this.stringBuilder.length();
            this.stringBuilder.append(str);
            TextView textView = this.characterTextViews.get(length);
            textView.setText(str);
            textView.setTranslationX(getXForTextView(length));
            Property property = View.SCALE_X;
            arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property, 0.0f, 1.0f));
            Property property2 = View.SCALE_Y;
            arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property2, 0.0f, 1.0f));
            Property property3 = View.ALPHA;
            arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property3, 0.0f, 1.0f));
            Property property4 = View.TRANSLATION_Y;
            arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property4, AndroidUtilities.dp(20.0f), 0.0f));
            TextView textView2 = this.dotTextViews.get(length);
            textView2.setTranslationX(getXForTextView(length));
            textView2.setAlpha(0.0f);
            arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property, 0.0f, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property2, 0.0f, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property4, AndroidUtilities.dp(20.0f), 0.0f));
            for (int i = length + 1; i < 4; i++) {
                TextView textView3 = this.characterTextViews.get(i);
                if (textView3.getAlpha() != 0.0f) {
                    arrayList.add(ObjectAnimator.ofFloat(textView3, (Property<TextView, Float>) property, 0.0f));
                    arrayList.add(ObjectAnimator.ofFloat(textView3, (Property<TextView, Float>) property2, 0.0f));
                    arrayList.add(ObjectAnimator.ofFloat(textView3, (Property<TextView, Float>) property3, 0.0f));
                }
                TextView textView4 = this.dotTextViews.get(i);
                if (textView4.getAlpha() != 0.0f) {
                    arrayList.add(ObjectAnimator.ofFloat(textView4, (Property<TextView, Float>) property, 0.0f));
                    arrayList.add(ObjectAnimator.ofFloat(textView4, (Property<TextView, Float>) property2, 0.0f));
                    arrayList.add(ObjectAnimator.ofFloat(textView4, (Property<TextView, Float>) property3, 0.0f));
                }
            }
            Runnable runnable = this.dotRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.PasscodeView.AnimatingTextView.1
                @Override // java.lang.Runnable
                public void run() {
                    if (AnimatingTextView.this.dotRunnable != this) {
                        return;
                    }
                    ArrayList arrayList2 = new ArrayList();
                    TextView textView5 = (TextView) AnimatingTextView.this.characterTextViews.get(length);
                    Property property5 = View.SCALE_X;
                    arrayList2.add(ObjectAnimator.ofFloat(textView5, (Property<TextView, Float>) property5, 0.0f));
                    Property property6 = View.SCALE_Y;
                    arrayList2.add(ObjectAnimator.ofFloat(textView5, (Property<TextView, Float>) property6, 0.0f));
                    Property property7 = View.ALPHA;
                    arrayList2.add(ObjectAnimator.ofFloat(textView5, (Property<TextView, Float>) property7, 0.0f));
                    TextView textView6 = (TextView) AnimatingTextView.this.dotTextViews.get(length);
                    arrayList2.add(ObjectAnimator.ofFloat(textView6, (Property<TextView, Float>) property5, 1.0f));
                    arrayList2.add(ObjectAnimator.ofFloat(textView6, (Property<TextView, Float>) property6, 1.0f));
                    arrayList2.add(ObjectAnimator.ofFloat(textView6, (Property<TextView, Float>) property7, 1.0f));
                    AnimatingTextView.this.currentAnimation = new AnimatorSet();
                    AnimatingTextView.this.currentAnimation.setDuration(150L);
                    AnimatingTextView.this.currentAnimation.playTogether(arrayList2);
                    AnimatingTextView.this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.AnimatingTextView.1.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (AnimatingTextView.this.currentAnimation == null || !AnimatingTextView.this.currentAnimation.equals(animator)) {
                                return;
                            }
                            AnimatingTextView.this.currentAnimation = null;
                        }
                    });
                    AnimatingTextView.this.currentAnimation.start();
                }
            };
            this.dotRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 1500L);
            for (int i2 = 0; i2 < length; i2++) {
                TextView textView5 = this.characterTextViews.get(i2);
                Property property5 = View.TRANSLATION_X;
                arrayList.add(ObjectAnimator.ofFloat(textView5, (Property<TextView, Float>) property5, getXForTextView(i2)));
                arrayList.add(ObjectAnimator.ofFloat(textView5, (Property<TextView, Float>) property, 0.0f));
                arrayList.add(ObjectAnimator.ofFloat(textView5, (Property<TextView, Float>) property2, 0.0f));
                arrayList.add(ObjectAnimator.ofFloat(textView5, (Property<TextView, Float>) property3, 0.0f));
                arrayList.add(ObjectAnimator.ofFloat(textView5, (Property<TextView, Float>) property4, 0.0f));
                TextView textView6 = this.dotTextViews.get(i2);
                arrayList.add(ObjectAnimator.ofFloat(textView6, (Property<TextView, Float>) property5, getXForTextView(i2)));
                arrayList.add(ObjectAnimator.ofFloat(textView6, (Property<TextView, Float>) property, 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(textView6, (Property<TextView, Float>) property2, 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(textView6, (Property<TextView, Float>) property3, 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(textView6, (Property<TextView, Float>) property4, 0.0f));
            }
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.currentAnimation = animatorSet2;
            animatorSet2.setDuration(150L);
            this.currentAnimation.playTogether(arrayList);
            this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.AnimatingTextView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (AnimatingTextView.this.currentAnimation == null || !AnimatingTextView.this.currentAnimation.equals(animator)) {
                        return;
                    }
                    AnimatingTextView.this.currentAnimation = null;
                }
            });
            this.currentAnimation.start();
            PasscodeView.this.checkTitle();
        }

        public String getString() {
            return this.stringBuilder.toString();
        }

        public int length() {
            return this.stringBuilder.length();
        }

        public boolean eraseLastCharacter() {
            Property property;
            if (this.stringBuilder.length() == 0) {
                return false;
            }
            try {
                performHapticFeedback(3);
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
            ArrayList arrayList = new ArrayList();
            int length = this.stringBuilder.length() - 1;
            if (length != 0) {
                this.stringBuilder.deleteCharAt(length);
            }
            int i = length;
            while (true) {
                property = View.TRANSLATION_X;
                if (i >= 4) {
                    break;
                }
                TextView textView = this.characterTextViews.get(i);
                float alpha = textView.getAlpha();
                Property property2 = View.TRANSLATION_Y;
                Property property3 = View.ALPHA;
                Property property4 = View.SCALE_Y;
                Property property5 = View.SCALE_X;
                if (alpha != 0.0f) {
                    arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property5, 0.0f));
                    arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property4, 0.0f));
                    arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property3, 0.0f));
                    arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property2, 0.0f));
                    arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property, getXForTextView(i)));
                }
                TextView textView2 = this.dotTextViews.get(i);
                if (textView2.getAlpha() != 0.0f) {
                    arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property5, 0.0f));
                    arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property4, 0.0f));
                    arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property3, 0.0f));
                    arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property2, 0.0f));
                    arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property, getXForTextView(i)));
                }
                i++;
            }
            if (length == 0) {
                this.stringBuilder.deleteCharAt(length);
            }
            for (int i2 = 0; i2 < length; i2++) {
                arrayList.add(ObjectAnimator.ofFloat(this.characterTextViews.get(i2), (Property<TextView, Float>) property, getXForTextView(i2)));
                arrayList.add(ObjectAnimator.ofFloat(this.dotTextViews.get(i2), (Property<TextView, Float>) property, getXForTextView(i2)));
            }
            Runnable runnable = this.dotRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.dotRunnable = null;
            }
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.currentAnimation = animatorSet2;
            animatorSet2.setDuration(150L);
            this.currentAnimation.playTogether(arrayList);
            this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.AnimatingTextView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (AnimatingTextView.this.currentAnimation == null || !AnimatingTextView.this.currentAnimation.equals(animator)) {
                        return;
                    }
                    AnimatingTextView.this.currentAnimation = null;
                }
            });
            this.currentAnimation.start();
            PasscodeView.this.checkTitle();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void eraseAllCharacters(boolean z) {
            if (this.stringBuilder.length() == 0) {
                return;
            }
            Runnable runnable = this.dotRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.dotRunnable = null;
            }
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.currentAnimation = null;
            }
            StringBuilder sb = this.stringBuilder;
            sb.delete(0, sb.length());
            if (z) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < 4; i++) {
                    TextView textView = this.characterTextViews.get(i);
                    float alpha = textView.getAlpha();
                    Property property = View.ALPHA;
                    Property property2 = View.SCALE_Y;
                    Property property3 = View.SCALE_X;
                    if (alpha != 0.0f) {
                        arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property3, 0.0f));
                        arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property2, 0.0f));
                        arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property, 0.0f));
                    }
                    TextView textView2 = this.dotTextViews.get(i);
                    if (textView2.getAlpha() != 0.0f) {
                        arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property3, 0.0f));
                        arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property2, 0.0f));
                        arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property, 0.0f));
                    }
                }
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.currentAnimation = animatorSet2;
                animatorSet2.setDuration(150L);
                this.currentAnimation.playTogether(arrayList);
                this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.AnimatingTextView.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (AnimatingTextView.this.currentAnimation == null || !AnimatingTextView.this.currentAnimation.equals(animator)) {
                            return;
                        }
                        AnimatingTextView.this.currentAnimation = null;
                    }
                });
                this.currentAnimation.start();
            } else {
                for (int i2 = 0; i2 < 4; i2++) {
                    this.characterTextViews.get(i2).setAlpha(0.0f);
                    this.dotTextViews.get(i2).setAlpha(0.0f);
                }
            }
            PasscodeView.this.checkTitle();
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            Runnable runnable = this.dotRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.dotRunnable = null;
            }
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.currentAnimation = null;
            }
            for (int i5 = 0; i5 < 4; i5++) {
                int length = this.stringBuilder.length();
                ArrayList<TextView> arrayList = this.characterTextViews;
                if (i5 < length) {
                    TextView textView = arrayList.get(i5);
                    textView.setAlpha(0.0f);
                    textView.setScaleX(1.0f);
                    textView.setScaleY(1.0f);
                    textView.setTranslationY(0.0f);
                    textView.setTranslationX(getXForTextView(i5));
                    TextView textView2 = this.dotTextViews.get(i5);
                    textView2.setAlpha(1.0f);
                    textView2.setScaleX(1.0f);
                    textView2.setScaleY(1.0f);
                    textView2.setTranslationY(0.0f);
                    textView2.setTranslationX(getXForTextView(i5));
                } else {
                    arrayList.get(i5).setAlpha(0.0f);
                    this.dotTextViews.get(i5).setAlpha(0.0f);
                }
            }
            super.onLayout(z, i, i2, i3, i4);
        }
    }

    public static class InnerAnimator {
        private AnimatorSet animatorSet;
        private float startRadius;

        private InnerAnimator() {
        }
    }

    public PasscodeView(Context context) {
        this(context, LocaleController.getString(C2807R.string.UnlockToUse), null);
    }

    public PasscodeView(Context context, String str, String str2) {
        int i;
        super(context);
        this.BUTTON_X_MARGIN = 28;
        this.BUTTON_Y_MARGIN = 16;
        this.BUTTON_SIZE = 60;
        this.keyboardHeight = 0;
        BlurredBackgroundSourceBitmap blurredBackgroundSourceBitmap = new BlurredBackgroundSourceBitmap();
        this.glassSource = blurredBackgroundSourceBitmap;
        BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceBitmap);
        this.glassFactory = blurredBackgroundDrawableViewFactory;
        ReferenceList<View> referenceList = new ReferenceList<>();
        this.glassViews = referenceList;
        this.rect = new Rect();
        this.backgroundSpringQueue = new LinkedList<>();
        this.backgroundSpringNextQueue = new LinkedList<>();
        this.innerAnimators = new ArrayList<>();
        this.shiftDp = -12;
        this.checkRunnable = new Runnable() { // from class: org.telegram.ui.Components.PasscodeView.6
            @Override // java.lang.Runnable
            public void run() {
                PasscodeView.this.checkRetryTextView();
            }
        };
        this.resumeCount = 0;
        this.pinShown = true;
        this.pos = new int[2];
        this.title = str;
        this.subtitle = str2;
        setWillNotDraw(false);
        setVisibility(8);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.PasscodeView.1
            private Paint paint = new Paint();

            @Override // android.view.View
            public void onSizeChanged(int i2, int i3, int i4, int i5) {
                super.onSizeChanged(i2, i3, i4, i5);
                if (i2 <= 0 || i3 <= 0) {
                    return;
                }
                PasscodeView.this.glassBitmap = Bitmap.createBitmap(54, Math.max(1, Math.round((i3 * 54) / i2)), Bitmap.Config.ARGB_8888);
                PasscodeView.this.glassCanvas = new Canvas(PasscodeView.this.glassBitmap);
                PasscodeView.this.glassSource.setBitmap(PasscodeView.this.glassBitmap);
                PasscodeView.this.glassSource.setParentSize(i2, i3, 0);
            }

            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                drawBackground(canvas);
                if (PasscodeView.this.glassBitmap == null || PasscodeView.this.glassCanvas == null || getMeasuredWidth() <= 0 || getMeasuredHeight() <= 0) {
                    return;
                }
                PasscodeView.this.glassBitmap.eraseColor(0);
                PasscodeView.this.glassCanvas.save();
                PasscodeView.this.glassCanvas.scale(PasscodeView.this.glassBitmap.getWidth() / getMeasuredWidth(), PasscodeView.this.glassBitmap.getHeight() / getMeasuredHeight());
                drawBackground(PasscodeView.this.glassCanvas);
                PasscodeView.this.glassCanvas.restore();
                PasscodeView.this.glassFactory.invalidateAllLinkedViews();
            }

            private void drawBackground(Canvas canvas) {
                if (PasscodeView.this.backgroundDrawable != null) {
                    if ((PasscodeView.this.backgroundDrawable instanceof MotionBackgroundDrawable) || (PasscodeView.this.backgroundDrawable instanceof ColorDrawable) || (PasscodeView.this.backgroundDrawable instanceof GradientDrawable)) {
                        PasscodeView.this.backgroundDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                        PasscodeView.this.backgroundDrawable.draw(canvas);
                    } else {
                        float fMax = Math.max(getMeasuredWidth() / PasscodeView.this.backgroundDrawable.getIntrinsicWidth(), (getMeasuredHeight() + PasscodeView.this.keyboardHeight) / PasscodeView.this.backgroundDrawable.getIntrinsicHeight());
                        int iCeil = (int) Math.ceil(PasscodeView.this.backgroundDrawable.getIntrinsicWidth() * fMax);
                        int iCeil2 = (int) Math.ceil(PasscodeView.this.backgroundDrawable.getIntrinsicHeight() * fMax);
                        int measuredWidth = (getMeasuredWidth() - iCeil) / 2;
                        int measuredHeight = ((getMeasuredHeight() - iCeil2) + PasscodeView.this.keyboardHeight) / 2;
                        PasscodeView.this.backgroundDrawable.setBounds(measuredWidth, measuredHeight, iCeil + measuredWidth, iCeil2 + measuredHeight);
                        PasscodeView.this.backgroundDrawable.draw(canvas);
                    }
                } else {
                    super.onDraw(canvas);
                }
                canvas.drawRect(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), this.paint);
            }

            @Override // android.view.View
            public void setBackgroundColor(int i2) {
                this.paint.setColor(i2);
            }
        };
        this.backgroundFrameLayout = frameLayout;
        frameLayout.setWillNotDraw(false);
        addView(this.backgroundFrameLayout, LayoutHelper.createFrame(-1, -1.0f));
        blurredBackgroundDrawableViewFactory.setSourceRootView(new ViewPositionWatcher(this.backgroundFrameLayout), this.backgroundFrameLayout);
        blurredBackgroundDrawableViewFactory.setLinkedViewsRef(referenceList);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.imageView = rLottieImageView;
        rLottieImageView.setAnimation(C2807R.raw.passcode_lock, 58, 58);
        this.imageView.setAutoRepeat(false);
        addView(this.imageView, LayoutHelper.createFrame(58, 58, 51));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.passwordFrameLayout = frameLayout2;
        this.backgroundFrameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, -1.0f));
        TextView textView = new TextView(context);
        this.passcodeTextView = textView;
        textView.setTextColor(-1);
        this.passcodeTextView.setTextSize(1, 18.33f);
        this.passcodeTextView.setGravity(1);
        this.passcodeTextView.setTypeface(AndroidUtilities.bold());
        this.passcodeTextView.setAlpha(0.0f);
        this.passwordFrameLayout.addView(this.passcodeTextView, LayoutHelper.createFrame(-2, -2.0f, 81, 0.0f, 0.0f, 0.0f, 128.0f));
        TextView textView2 = new TextView(context);
        this.retryTextView = textView2;
        textView2.setTextColor(-1);
        this.retryTextView.setTextSize(1, 15.0f);
        this.retryTextView.setGravity(1);
        this.retryTextView.setVisibility(4);
        this.backgroundFrameLayout.addView(this.retryTextView, LayoutHelper.createFrame(-2, -2, 17));
        AnimatingTextView animatingTextView = new AnimatingTextView(context);
        this.passwordEditText2 = animatingTextView;
        this.passwordFrameLayout.addView(animatingTextView, LayoutHelper.createFrame(-1, -2.0f, 81, 70.0f, 0.0f, 70.0f, 46.0f));
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
        this.passwordEditText = editTextBoldCursor;
        editTextBoldCursor.setTextSize(1, 36.0f);
        this.passwordEditText.setTextColor(-1);
        this.passwordEditText.setMaxLines(1);
        this.passwordEditText.setLines(1);
        this.passwordEditText.setGravity(1);
        this.passwordEditText.setSingleLine(true);
        this.passwordEditText.setImeOptions(6);
        this.passwordEditText.setTypeface(Typeface.DEFAULT);
        this.passwordEditText.setBackgroundDrawable(null);
        this.passwordEditText.setCursorColor(-1);
        this.passwordEditText.setCursorSize(AndroidUtilities.dp(32.0f));
        this.passwordFrameLayout.addView(this.passwordEditText, LayoutHelper.createFrame(-1, -2.0f, 81, 70.0f, 0.0f, 70.0f, 0.0f));
        this.passwordEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda2
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView3, int i2, KeyEvent keyEvent) {
                return this.f$0.lambda$new$0(textView3, i2, keyEvent);
            }
        });
        this.passwordEditText.addTextChangedListener(new C42322());
        this.passwordEditText.setCustomSelectionActionModeCallback(new ActionMode.Callback() { // from class: org.telegram.ui.Components.PasscodeView.3
            @Override // android.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                return false;
            }

            @Override // android.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                return false;
            }

            @Override // android.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
            }

            @Override // android.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                return false;
            }
        });
        ImageView imageView = new ImageView(context);
        this.checkImage = imageView;
        imageView.setImageResource(C2807R.drawable.passcode_check);
        ImageView imageView2 = this.checkImage;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        imageView2.setScaleType(scaleType);
        this.checkImage.setBackgroundResource(C2807R.drawable.bar_selector_lock);
        this.passwordFrameLayout.addView(this.checkImage, LayoutHelper.createFrame(60, 60.0f, 85, 0.0f, 0.0f, 10.0f, 4.0f));
        this.checkImage.setContentDescription(LocaleController.getString(C2807R.string.Done));
        this.checkImage.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        ImageView imageView3 = new ImageView(context);
        this.fingerprintImage = imageView3;
        imageView3.setImageResource(C2807R.drawable.fingerprint);
        this.fingerprintImage.setScaleType(scaleType);
        this.fingerprintImage.setBackgroundResource(C2807R.drawable.bar_selector_lock);
        this.passwordFrameLayout.addView(this.fingerprintImage, LayoutHelper.createFrame(60, 60.0f, 83, 10.0f, 0.0f, 0.0f, 4.0f));
        this.fingerprintImage.setContentDescription(LocaleController.getString(C2807R.string.AccDescrFingerprint));
        this.fingerprintImage.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(view);
            }
        });
        View view = new View(context);
        this.border = view;
        view.setBackgroundColor(822083583);
        this.passwordFrameLayout.addView(this.border, LayoutHelper.createFrame(-1.0f, 1.0f / AndroidUtilities.density, 87));
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.numbersContainer = frameLayout3;
        frameLayout3.setClipChildren(false);
        this.backgroundFrameLayout.addView(this.numbersContainer, LayoutHelper.createFrame(-1, -1, 51));
        FrameLayout frameLayout4 = new FrameLayout(context) { // from class: org.telegram.ui.Components.PasscodeView.4
            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
                super.onLayout(z, i2, i3, i4, i5);
                if (getParent() instanceof View) {
                    float fMin = Math.min(((View) getParent()).getHeight() / getHeight(), 1.0f);
                    setPivotX(getWidth() / 2.0f);
                    setPivotY(((FrameLayout.LayoutParams) getLayoutParams()).gravity == 17 ? getHeight() / 2.0f : 0.0f);
                    setScaleX(fMin);
                    setScaleY(fMin);
                }
            }
        };
        this.numbersFrameLayout = frameLayout4;
        frameLayout4.setClipChildren(false);
        this.numbersContainer.addView(this.numbersFrameLayout, LayoutHelper.createFrame(-2, -2, 17));
        FrameLayout frameLayout5 = new FrameLayout(context);
        this.numbersTitleContainer = frameLayout5;
        this.numbersFrameLayout.addView(frameLayout5, LayoutHelper.createFrame(-2, -2, 49));
        TextView textView3 = new TextView(context);
        textView3.setTextSize(1, 15.0f);
        textView3.setTypeface(AndroidUtilities.bold());
        textView3.setTextColor(-1);
        textView3.setText(str);
        this.numbersTitleContainer.addView(textView3, LayoutHelper.createFrame(-2, -2.0f, 49, 0.0f, 0.0f, 0.0f, 0.0f));
        TextView textView4 = new TextView(context);
        this.subtitleView = textView4;
        textView4.setTextSize(1, 14.0f);
        this.subtitleView.setTextColor(-1);
        this.subtitleView.setText(str2);
        this.numbersTitleContainer.addView(this.subtitleView, LayoutHelper.createFrame(-2, -2.0f, 49, 0.0f, 23.0f, 0.0f, 0.0f));
        this.numberFrameLayouts = new ArrayList<>(10);
        int i2 = 0;
        while (true) {
            if (i2 >= 12) {
                break;
            }
            PasscodeButton passcodeButton = new PasscodeButton(context);
            ScaleStateListAnimator.apply(passcodeButton, 0.15f, 1.5f);
            passcodeButton.setTag(Integer.valueOf(i2));
            if (i2 == 11) {
                passcodeButton.setBackground(createGlass(passcodeButton));
                passcodeButton.setForeground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(30.0f), 0, 654311423));
                passcodeButton.setImage(C2807R.drawable.filled_clear);
                passcodeButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda5
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view2) {
                        return this.f$0.lambda$new$3(view2);
                    }
                });
                passcodeButton.setContentDescription(LocaleController.getString(C2807R.string.AccDescrBackspace));
                setNextFocus(passcodeButton, C2807R.id.passcode_btn_0);
            } else if (i2 == 10) {
                this.fingerprintView = passcodeButton;
                passcodeButton.setBackground(createGlass(passcodeButton));
                passcodeButton.setForeground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(30.0f), 0, 654311423));
                passcodeButton.setContentDescription(LocaleController.getString(C2807R.string.AccDescrFingerprint));
                passcodeButton.setImage(C2807R.drawable.fingerprint);
                setNextFocus(passcodeButton, C2807R.id.passcode_btn_1);
            } else {
                passcodeButton.setBackground(createGlass(passcodeButton));
                passcodeButton.setForeground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(30.0f), 0, 654311423));
                passcodeButton.setContentDescription(i2 + _UrlKt.FRAGMENT_ENCODE_SET);
                passcodeButton.setNum(i2);
                if (i2 == 0) {
                    setNextFocus(passcodeButton, C2807R.id.passcode_btn_backspace);
                } else if (i2 == 9) {
                    if (hasFingerprint()) {
                        setNextFocus(passcodeButton, C2807R.id.passcode_btn_fingerprint);
                    } else {
                        setNextFocus(passcodeButton, C2807R.id.passcode_btn_0);
                    }
                } else {
                    setNextFocus(passcodeButton, ids[i2 + 1]);
                }
            }
            passcodeButton.setId(ids[i2]);
            passcodeButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$6(view2);
                }
            });
            this.numberFrameLayouts.add(passcodeButton);
            i2++;
        }
        for (i = 11; i >= 0; i--) {
            this.numbersFrameLayout.addView(this.numberFrameLayouts.get(i), LayoutHelper.createFrame(60, 60, 51));
        }
        checkFingerprintButton();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$0(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        processDone(false);
        return true;
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.PasscodeView$2 */
    public class C42322 implements TextWatcher {
        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public C42322() {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            final boolean z;
            if (PasscodeView.this.backgroundDrawable instanceof MotionBackgroundDrawable) {
                final MotionBackgroundDrawable motionBackgroundDrawable = (MotionBackgroundDrawable) PasscodeView.this.backgroundDrawable;
                motionBackgroundDrawable.setAnimationProgressProvider(null);
                float posAnimationProgress = motionBackgroundDrawable.getPosAnimationProgress();
                int i4 = 0;
                boolean z2 = true;
                if (i2 == 0 && i3 == 1) {
                    motionBackgroundDrawable.switchToNextPosition(true);
                    z = true;
                } else if (i2 == 1 && i3 == 0) {
                    motionBackgroundDrawable.switchToPrevPosition(true);
                    z = false;
                } else {
                    z = false;
                    z2 = false;
                }
                if (z2) {
                    PasscodeView passcodeView = PasscodeView.this;
                    if (posAnimationProgress >= 1.0f) {
                        passcodeView.animateBackground(motionBackgroundDrawable);
                        return;
                    }
                    passcodeView.backgroundSpringQueue.offer(new Runnable() { // from class: org.telegram.ui.Components.PasscodeView$2$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$beforeTextChanged$0(z, motionBackgroundDrawable);
                        }
                    });
                    PasscodeView.this.backgroundSpringNextQueue.offer(Boolean.valueOf(z));
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (int i5 = 0; i5 < PasscodeView.this.backgroundSpringQueue.size(); i5++) {
                        Runnable runnable = (Runnable) PasscodeView.this.backgroundSpringQueue.get(i5);
                        if (((Boolean) PasscodeView.this.backgroundSpringNextQueue.get(i5)).booleanValue() != z) {
                            arrayList.add(runnable);
                            arrayList2.add(Integer.valueOf(i5));
                        }
                    }
                    int size = arrayList.size();
                    int i6 = 0;
                    while (i6 < size) {
                        Object obj = arrayList.get(i6);
                        i6++;
                        PasscodeView.this.backgroundSpringQueue.remove((Runnable) obj);
                    }
                    int size2 = arrayList2.size();
                    while (i4 < size2) {
                        Object obj2 = arrayList2.get(i4);
                        i4++;
                        int iIntValue = ((Integer) obj2).intValue();
                        if (iIntValue < PasscodeView.this.backgroundSpringNextQueue.size()) {
                            PasscodeView.this.backgroundSpringNextQueue.remove(iIntValue);
                        }
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$beforeTextChanged$0(boolean z, MotionBackgroundDrawable motionBackgroundDrawable) {
            if (z) {
                motionBackgroundDrawable.switchToNextPosition(true);
            } else {
                motionBackgroundDrawable.switchToPrevPosition(true);
            }
            PasscodeView.this.animateBackground(motionBackgroundDrawable);
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (PasscodeView.this.passwordEditText.length() == 4 && SharedConfig.passcodeType == 0) {
                PasscodeView.this.processDone(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        processDone(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        checkFingerprint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$3(View view) {
        this.passwordEditText.setText(_UrlKt.FRAGMENT_ENCODE_SET);
        this.passwordEditText2.eraseAllCharacters(true);
        Drawable drawable = this.backgroundDrawable;
        if (drawable instanceof MotionBackgroundDrawable) {
            ((MotionBackgroundDrawable) drawable).switchToPrevPosition(true);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public /* synthetic */ void lambda$new$6(View view) {
        boolean zEraseLastCharacter;
        final boolean z;
        if (!this.pinShown || this.dismissing) {
            return;
        }
        int iIntValue = ((Integer) view.getTag()).intValue();
        switch (iIntValue) {
            case 0:
                this.passwordEditText2.appendCharacter(MVEL.VERSION_SUB);
                zEraseLastCharacter = false;
                break;
            case 1:
                this.passwordEditText2.appendCharacter("1");
                zEraseLastCharacter = false;
                break;
            case 2:
                this.passwordEditText2.appendCharacter("2");
                zEraseLastCharacter = false;
                break;
            case 3:
                this.passwordEditText2.appendCharacter("3");
                zEraseLastCharacter = false;
                break;
            case 4:
                this.passwordEditText2.appendCharacter("4");
                zEraseLastCharacter = false;
                break;
            case 5:
                this.passwordEditText2.appendCharacter("5");
                zEraseLastCharacter = false;
                break;
            case 6:
                this.passwordEditText2.appendCharacter("6");
                zEraseLastCharacter = false;
                break;
            case 7:
                this.passwordEditText2.appendCharacter("7");
                zEraseLastCharacter = false;
                break;
            case 8:
                this.passwordEditText2.appendCharacter("8");
                zEraseLastCharacter = false;
                break;
            case 9:
                this.passwordEditText2.appendCharacter("9");
                zEraseLastCharacter = false;
                break;
            case 10:
                checkFingerprint();
                zEraseLastCharacter = false;
                break;
            case 11:
                zEraseLastCharacter = this.passwordEditText2.eraseLastCharacter();
                break;
            default:
                zEraseLastCharacter = false;
                break;
        }
        if (iIntValue != 11) {
            Drawable drawable = this.backgroundDrawable;
            if (drawable instanceof MotionBackgroundDrawable) {
                final MotionBackgroundDrawable motionBackgroundDrawable = (MotionBackgroundDrawable) drawable;
                motionBackgroundDrawable.setAnimationProgressProvider(null);
                float posAnimationProgress = motionBackgroundDrawable.getPosAnimationProgress();
                boolean z2 = true;
                if (iIntValue == 10) {
                    if (zEraseLastCharacter) {
                        motionBackgroundDrawable.switchToPrevPosition(true);
                    } else {
                        z2 = false;
                    }
                    z = false;
                } else {
                    motionBackgroundDrawable.switchToNextPosition(true);
                    z = true;
                }
                if (z2) {
                    if (posAnimationProgress >= 1.0f) {
                        animateBackground(motionBackgroundDrawable);
                    } else {
                        this.backgroundSpringQueue.offer(new Runnable() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda12
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$new$4(z, motionBackgroundDrawable);
                            }
                        });
                        this.backgroundSpringNextQueue.offer(Boolean.valueOf(z));
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        for (int i = 0; i < this.backgroundSpringQueue.size(); i++) {
                            Runnable runnable = this.backgroundSpringQueue.get(i);
                            Boolean bool = this.backgroundSpringNextQueue.get(i);
                            if (bool != null && bool.booleanValue() != z) {
                                arrayList.add(runnable);
                                arrayList2.add(Integer.valueOf(i));
                            }
                        }
                        int size = arrayList.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            this.backgroundSpringQueue.remove((Runnable) obj);
                        }
                        Collections.sort(arrayList2, new Comparator() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda13
                            @Override // java.util.Comparator
                            public final int compare(Object obj2, Object obj3) {
                                return PasscodeView.$r8$lambda$XwH3rO00AdjVez4H4tXn9ep16PU((Integer) obj2, (Integer) obj3);
                            }
                        });
                        int size2 = arrayList2.size();
                        int i3 = 0;
                        while (i3 < size2) {
                            Object obj2 = arrayList2.get(i3);
                            i3++;
                            this.backgroundSpringNextQueue.remove(((Integer) obj2).intValue());
                        }
                    }
                }
            }
        }
        if (this.passwordEditText2.length() == 4) {
            processDone(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(boolean z, MotionBackgroundDrawable motionBackgroundDrawable) {
        if (z) {
            motionBackgroundDrawable.switchToNextPosition(true);
        } else {
            motionBackgroundDrawable.switchToPrevPosition(true);
        }
        animateBackground(motionBackgroundDrawable);
    }

    public static /* synthetic */ int $r8$lambda$XwH3rO00AdjVez4H4tXn9ep16PU(Integer num, Integer num2) {
        return num2.intValue() - num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateBackground(final MotionBackgroundDrawable motionBackgroundDrawable) {
        SpringAnimation springAnimation = this.backgroundAnimationSpring;
        if (springAnimation != null && springAnimation.isRunning()) {
            this.backgroundAnimationSpring.cancel();
        }
        final FloatValueHolder floatValueHolder = new FloatValueHolder(0.0f);
        motionBackgroundDrawable.setAnimationProgressProvider(new GenericProvider() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda15
            @Override // org.telegram.messenger.GenericProvider
            public final Object provide(Object obj) {
                return Float.valueOf(floatValueHolder.getValue() / 100.0f);
            }
        });
        SpringAnimation spring = new SpringAnimation(floatValueHolder).setSpring(new SpringForce(100.0f).setStiffness(300.0f).setDampingRatio(1.0f));
        this.backgroundAnimationSpring = spring;
        spring.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda16
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                this.f$0.lambda$animateBackground$8(motionBackgroundDrawable, dynamicAnimation, z, f, f2);
            }
        });
        this.backgroundAnimationSpring.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda17
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                motionBackgroundDrawable.updateAnimation();
            }
        });
        this.backgroundAnimationSpring.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateBackground$8(MotionBackgroundDrawable motionBackgroundDrawable, DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        this.backgroundAnimationSpring = null;
        motionBackgroundDrawable.setAnimationProgressProvider(null);
        if (z) {
            return;
        }
        motionBackgroundDrawable.setPosAnimationProgress(1.0f);
        if (this.backgroundSpringQueue.isEmpty()) {
            return;
        }
        this.backgroundSpringQueue.poll().run();
        this.backgroundSpringNextQueue.poll();
    }

    private void rotateBackgroundBack(final MotionBackgroundDrawable motionBackgroundDrawable) {
        this.backgroundSpringQueue.clear();
        this.backgroundSpringNextQueue.clear();
        SpringAnimation springAnimation = this.backgroundAnimationSpring;
        if (springAnimation != null && springAnimation.isRunning()) {
            this.backgroundSpringQueue.offer(new Runnable() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    motionBackgroundDrawable.rotatePreview(true);
                }
            });
            this.backgroundSpringNextQueue.offer(Boolean.FALSE);
        } else {
            motionBackgroundDrawable.rotatePreview(true);
        }
    }

    private Drawable createGlass(View view) {
        BlurredBackgroundProviderBuilder strokeColorFull = new BlurredBackgroundProviderBuilder(null).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda8
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider, boolean z) {
                return QrGlass.controlFill();
            }
        }).setStrokeColorFull(654311423, 654311423);
        if (!QrRender.hasNodes()) {
            strokeColorFull.setStrokeColorTop(1308622847, 1308622847).setStrokeColorBottom(452984831, 452984831).setStrokeWidth(AndroidUtilities.dpf2(1.0f), AndroidUtilities.dpf2(0.6666667f));
        }
        return new QrGlassButton(this.glassFactory.create(view, strokeColorFull.build(), true).setRadius(AndroidUtilities.dp(30.0f)));
    }

    public static class QrGlassButton extends Drawable implements Drawable.Callback {
        private final Drawable blur;
        private final RectF bounds = new RectF();
        private int alpha = 255;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        public QrGlassButton(Drawable drawable) {
            this.blur = drawable;
            drawable.setCallback(this);
        }

        @Override // android.graphics.drawable.Drawable
        public void onBoundsChange(Rect rect) {
            this.blur.setBounds(rect);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            this.blur.draw(canvas);
            if (ExteraConfig.getGlassOutlineStyle() != GlassOutlineStyle.GLARE) {
                return;
            }
            this.bounds.set(getBounds());
            float fMin = Math.min(this.bounds.width(), this.bounds.height()) / 2.0f;
            float f = this.alpha / 255.0f;
            QrGlass.drawSheenRound(canvas, this.bounds, fMin, false, f);
            QrGlass.drawRim(canvas, this.bounds, fMin, 0, f);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.alpha = i;
            this.blur.setAlpha(i);
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.blur.setColorFilter(colorFilter);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            unscheduleSelf(runnable);
        }
    }

    private void setNextFocus(View view, int i) {
        view.setNextFocusForwardId(i);
        view.setAccessibilityTraversalBefore(i);
    }

    public void setDelegate(PasscodeViewDelegate passcodeViewDelegate) {
        this.delegate = passcodeViewDelegate;
    }

    public void processDone(boolean z) {
        String string;
        if (this.dismissing || getVisibility() != 0) {
            return;
        }
        if (!z) {
            if (SharedConfig.passcodeRetryInMs > 0) {
                return;
            }
            int i = SharedConfig.passcodeType;
            if (i == 0) {
                string = this.passwordEditText2.getString();
            } else {
                string = i == 1 ? this.passwordEditText.getText().toString() : _UrlKt.FRAGMENT_ENCODE_SET;
            }
            if (string.length() == 0) {
                onPasscodeError();
                return;
            }
            if (!SharedConfig.checkPasscode(string)) {
                SharedConfig.increaseBadPasscodeTries();
                if (SharedConfig.passcodeRetryInMs > 0) {
                    checkRetryTextView();
                }
                this.passwordEditText.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                this.passwordEditText2.eraseAllCharacters(true);
                onPasscodeError();
                Drawable drawable = this.backgroundDrawable;
                if (drawable instanceof MotionBackgroundDrawable) {
                    rotateBackgroundBack((MotionBackgroundDrawable) drawable);
                    return;
                }
                return;
            }
        }
        this.dismissing = true;
        onPause();
        SharedConfig.badPasscodeTries = 0;
        this.passwordEditText.clearFocus();
        AndroidUtilities.hideKeyboard(this.passwordEditText);
        if (isAppLock() && FingerprintController.isKeyReady() && FingerprintController.checkDeviceFingerprintsChanged()) {
            FingerprintController.deleteInvalidKey();
        }
        if (isAppLock()) {
            SharedConfig.appLocked = false;
        }
        SharedConfig.saveConfig();
        if (isAppLock()) {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didSetPasscode, new Object[0]);
        }
        setOnTouchListener(null);
        PasscodeViewDelegate passcodeViewDelegate = this.delegate;
        if (passcodeViewDelegate != null) {
            passcodeViewDelegate.didAcceptedPassword(this);
        }
        hide(true);
    }

    private void hide(boolean z) {
        AnimatorSet animatorSet = this.showAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.showAnimator = null;
        }
        AnimatorSet animatorSet2 = this.imageAnimator;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
            this.imageAnimator = null;
        }
        RLottieImageView rLottieImageView = this.imageView;
        if (z) {
            rLottieImageView.getAnimatedDrawable().setCustomEndFrame(71);
            this.imageView.getAnimatedDrawable().setCurrentFrame(37, false);
            this.imageView.playAnimation();
        } else {
            rLottieImageView.stopAnimation();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$hide$13();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hide$13() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.shownT, 0.0f);
        this.hideAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda14
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$hide$12(valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PasscodeView.this.hideAnimator = null;
                PasscodeView.this.passwordEditText.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                PasscodeView.this.passwordEditText2.eraseAllCharacters(false);
                PasscodeView.this.setVisibility(8);
                PasscodeView passcodeView = PasscodeView.this;
                passcodeView.shownT = 0.0f;
                passcodeView.onAnimationUpdate(0.0f);
                PasscodeView.this.setAlpha(0.0f);
                PasscodeView.this.onHidden();
            }
        });
        valueAnimatorOfFloat.setDuration(420L);
        valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        valueAnimatorOfFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hide$12(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.shownT = fFloatValue;
        onAnimationUpdate(fFloatValue);
        setAlpha(this.shownT);
    }

    private void shakeTextView(float f, int i) {
        if (i == 6) {
            return;
        }
        FrameLayout frameLayout = this.numbersTitleContainer;
        int i2 = -this.shiftDp;
        this.shiftDp = i2;
        AndroidUtilities.shakeViewSpring(frameLayout, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkRetryTextView() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime > SharedConfig.lastUptimeMillis) {
            long j = SharedConfig.passcodeRetryInMs - (jElapsedRealtime - SharedConfig.lastUptimeMillis);
            SharedConfig.passcodeRetryInMs = j;
            if (j < 0) {
                SharedConfig.passcodeRetryInMs = 0L;
            }
        }
        SharedConfig.lastUptimeMillis = jElapsedRealtime;
        SharedConfig.saveConfig();
        long j2 = SharedConfig.passcodeRetryInMs;
        if (j2 > 0) {
            int iMax = Math.max(1, (int) Math.ceil(j2 / 1000.0d));
            if (iMax != this.lastValue) {
                this.retryTextView.setText(LocaleController.formatString(C2807R.string.TooManyTries, LocaleController.formatPluralString("Seconds", iMax, new Object[0])));
                this.lastValue = iMax;
            }
            if (this.retryTextView.getVisibility() != 0) {
                this.retryTextView.setVisibility(0);
                this.passwordFrameLayout.setVisibility(4);
                showPin(false);
                AndroidUtilities.hideKeyboard(this.passwordEditText);
            }
            AndroidUtilities.cancelRunOnUIThread(this.checkRunnable);
            AndroidUtilities.runOnUIThread(this.checkRunnable, 100L);
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(this.checkRunnable);
        if (this.retryTextView.getVisibility() == 0) {
            this.retryTextView.setVisibility(4);
            this.passwordFrameLayout.setVisibility(0);
            showPin(true);
            if (SharedConfig.passcodeType == 1) {
                AndroidUtilities.showKeyboard(this.passwordEditText);
            }
        }
    }

    private void onPasscodeError() {
        BotWebViewVibrationEffect.NOTIFICATION_ERROR.vibrate();
        shakeTextView(2.0f, 0);
    }

    public void onResume() {
        if (this.dismissing) {
            return;
        }
        checkRetryTextView();
        if (this.retryTextView.getVisibility() != 0) {
            if (SharedConfig.passcodeType == 1) {
                EditTextBoldCursor editTextBoldCursor = this.passwordEditText;
                if (editTextBoldCursor != null) {
                    editTextBoldCursor.requestFocus();
                    AndroidUtilities.showKeyboard(this.passwordEditText);
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onResume$14();
                    }
                }, 200L);
            }
            checkFingerprint();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$14() {
        EditTextBoldCursor editTextBoldCursor;
        if (this.dismissing || !isAttachedToWindow() || this.retryTextView.getVisibility() == 0 || (editTextBoldCursor = this.passwordEditText) == null) {
            return;
        }
        editTextBoldCursor.requestFocus();
        AndroidUtilities.showKeyboard(this.passwordEditText);
    }

    public boolean onBackPressed() {
        KeyboardNotifier keyboardNotifier = this.keyboardNotifier;
        if (keyboardNotifier == null || !keyboardNotifier.keyboardVisible()) {
            return true;
        }
        AndroidUtilities.hideKeyboard(this.passwordEditText);
        return false;
    }

    public void onPause() {
        AndroidUtilities.cancelRunOnUIThread(this.checkRunnable);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isAppLock()) {
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didGenerateFingerprintKeyPair);
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.passcodeDismissed);
        }
        if (this.keyboardNotifier == null && (getParent() instanceof View)) {
            this.keyboardNotifier = new KeyboardNotifier((View) getParent(), new Utilities.Callback() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onAttachedToWindow$15((Integer) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAttachedToWindow$15(Integer num) {
        float height;
        if (getContext() == null) {
            return;
        }
        boolean z = getContext().getResources().getConfiguration().orientation == 2;
        int iIntValue = num.intValue() - AndroidUtilities.navigationBarHeight;
        if (SharedConfig.passcodeType == 1) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = this.passwordFrameLayout.animate();
            if (iIntValue <= AndroidUtilities.dp(20.0f)) {
                height = 0.0f;
            } else {
                height = (((getHeight() - iIntValue) / 2.0f) - (this.passwordFrameLayout.getHeight() / (z ? 1.0f : 2.0f))) - this.passwordFrameLayout.getTop();
            }
            ViewPropertyAnimator duration = viewPropertyAnimatorAnimate.translationY(height).setDuration(320L);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            duration.setInterpolator(cubicBezierInterpolator).start();
            this.imageView.animate().alpha(iIntValue > AndroidUtilities.dp(20.0f) ? 0.0f : 1.0f).setDuration(320L).setInterpolator(cubicBezierInterpolator);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        onPause();
        this.dismissing = true;
        AnimatorSet animatorSet = this.showAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = this.imageAnimator;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        ValueAnimator valueAnimator = this.hideAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.hideAnimator.cancel();
            this.hideAnimator = null;
        }
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didGenerateFingerprintKeyPair);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.passcodeDismissed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPin(final boolean z) {
        ValueAnimator valueAnimator = this.pinAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.pinShown = z;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.numbersFrameLayout.getAlpha(), z ? 1.0f : 0.0f);
        this.pinAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$showPin$16(valueAnimator2);
            }
        });
        this.pinAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                float f = z ? 1.0f : 0.0f;
                PasscodeView.this.numbersFrameLayout.setScaleX(AndroidUtilities.lerp(0.8f, 1.0f, f));
                PasscodeView.this.numbersFrameLayout.setScaleY(AndroidUtilities.lerp(0.8f, 1.0f, f));
                PasscodeView.this.numbersFrameLayout.setAlpha(AndroidUtilities.lerp(0.0f, 1.0f, f));
                PasscodeView.this.passcodeTextView.setScaleX(AndroidUtilities.lerp(1.0f, 0.9f, f));
                PasscodeView.this.passcodeTextView.setScaleY(AndroidUtilities.lerp(1.0f, 0.9f, f));
                PasscodeView.this.passcodeTextView.setAlpha(AndroidUtilities.lerp(1.0f, 0.0f, f));
                PasscodeView.this.passwordEditText2.setAlpha(AndroidUtilities.lerp(0.0f, 1.0f, f));
            }
        });
        this.pinAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.pinAnimator.setDuration(320L);
        this.pinAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPin$16(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.numbersFrameLayout.setScaleX(AndroidUtilities.lerp(0.8f, 1.0f, fFloatValue));
        this.numbersFrameLayout.setScaleY(AndroidUtilities.lerp(0.8f, 1.0f, fFloatValue));
        this.numbersFrameLayout.setAlpha(AndroidUtilities.lerp(0.0f, 1.0f, fFloatValue));
        this.passcodeTextView.setScaleX(AndroidUtilities.lerp(1.0f, 0.9f, fFloatValue));
        this.passcodeTextView.setScaleY(AndroidUtilities.lerp(1.0f, 0.9f, fFloatValue));
        this.passcodeTextView.setAlpha(AndroidUtilities.lerp(1.0f, 0.0f, fFloatValue));
        this.passwordEditText2.setAlpha(AndroidUtilities.lerp(0.0f, 1.0f, fFloatValue));
    }

    public void checkFingerprint() {
        Activity activityFindActivity;
        if (this.dismissing || (activityFindActivity = AndroidUtilities.findActivity(getContext())) == null || this.fingerprintView.getVisibility() != 0 || ApplicationLoader.mainInterfacePaused) {
            return;
        }
        if (!(activityFindActivity instanceof LaunchActivity) || ((LaunchActivity) activityFindActivity).allowShowFingerprintDialog(this)) {
            try {
                if (BiometricManager.from(getContext()).canAuthenticate(15) == 0 && FingerprintController.isKeyReady() && !FingerprintController.checkDeviceFingerprintsChanged()) {
                    new BiometricPrompt(LaunchActivity.instance, ContextCompat.getMainExecutor(getContext()), new BiometricPrompt.AuthenticationCallback() { // from class: org.telegram.ui.Components.PasscodeView.8
                        @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
                        public void onAuthenticationError(int i, CharSequence charSequence) {
                            FileLog.m1037d("PasscodeView onAuthenticationError " + i + " \"" + ((Object) charSequence) + "\"");
                            PasscodeView.this.showPin(true);
                        }

                        @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
                        public void onAuthenticationSucceeded(BiometricPrompt.AuthenticationResult authenticationResult) {
                            FileLog.m1037d("PasscodeView onAuthenticationSucceeded");
                            PasscodeView.this.processDone(true);
                        }

                        @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
                        public void onAuthenticationFailed() {
                            FileLog.m1037d("PasscodeView onAuthenticationFailed");
                            PasscodeView.this.showPin(true);
                        }
                    }).authenticate(new BiometricPrompt.PromptInfo.Builder().setTitle(LocaleController.getString(C2807R.string.UnlockToUse)).setNegativeButtonText(LocaleController.getString(C2807R.string.UsePIN)).setAllowedAuthenticators(15).build());
                    showPin(false);
                }
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }
    }

    public void onShow(boolean z, boolean z2) {
        onShow(z, z2, -1, -1, null, null);
    }

    public boolean hasFingerprint() {
        if (AndroidUtilities.findActivity(getContext()) != null && SharedConfig.useFingerprintLock) {
            try {
                FingerprintManagerCompat fingerprintManagerCompatFrom = FingerprintManagerCompat.from(ApplicationLoader.applicationContext);
                if (fingerprintManagerCompatFrom.isHardwareDetected() && fingerprintManagerCompatFrom.hasEnrolledFingerprints() && FingerprintController.isKeyReady()) {
                    if (!FingerprintController.checkDeviceFingerprintsChanged()) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                FileLog.m1040e(th);
            }
        }
        return false;
    }

    private void checkFingerprintButton() {
        int i;
        boolean zHasFingerprint = hasFingerprint();
        this.fingerprintView.setVisibility(zHasFingerprint ? 0 : 8);
        if (SharedConfig.passcodeType == 1) {
            this.fingerprintImage.setVisibility(this.fingerprintView.getVisibility());
        }
        TextView textView = this.subtitleView;
        String string = this.subtitle;
        if (string == null) {
            if (SharedConfig.passcodeType == 1) {
                i = C2807R.string.EnterPassword;
            } else {
                i = zHasFingerprint ? C2807R.string.EnterPINorFingerprint : C2807R.string.EnterPIN;
            }
            string = LocaleController.getString(i);
        }
        textView.setText(string);
    }

    public void onShow(boolean z, boolean z2, int i, int i2, Runnable runnable, Runnable runnable2) {
        View currentFocus;
        boolean z3;
        EditTextBoldCursor editTextBoldCursor;
        if (getVisibility() != 0) {
            this.dismissing = false;
        }
        checkFingerprintButton();
        checkRetryTextView();
        Activity activityFindActivity = AndroidUtilities.findActivity(getContext());
        if (SharedConfig.passcodeType == 1) {
            if (!z2 && this.retryTextView.getVisibility() != 0 && (editTextBoldCursor = this.passwordEditText) != null) {
                editTextBoldCursor.requestFocus();
                AndroidUtilities.showKeyboard(this.passwordEditText);
            }
        } else if (activityFindActivity != null && (currentFocus = activityFindActivity.getCurrentFocus()) != null) {
            currentFocus.clearFocus();
            AndroidUtilities.hideKeyboard(activityFindActivity.getCurrentFocus());
        }
        if (getVisibility() == 0) {
            return;
        }
        setTranslationY(0.0f);
        this.backgroundDrawable = null;
        this.backgroundFrameLayoutColor = 0;
        if (Theme.getCachedWallpaper() instanceof MotionBackgroundDrawable) {
            z3 = !Theme.isCurrentThemeDark();
            this.backgroundDrawable = Theme.getCachedWallpaper();
            FrameLayout frameLayout = this.backgroundFrameLayout;
            this.backgroundFrameLayoutColor = -1090519040;
            frameLayout.setBackgroundColor(-1090519040);
        } else {
            if (Theme.isCustomTheme() && !"CJz3BZ6YGEYBAAAABboWp6SAv04".equals(Theme.getSelectedBackgroundSlug()) && !"qeZWES8rGVIEAAAARfWlK1lnfiI".equals(Theme.getSelectedBackgroundSlug())) {
                BackgroundGradientDrawable currentGradientWallpaper = Theme.getCurrentGradientWallpaper();
                this.backgroundDrawable = currentGradientWallpaper;
                if (currentGradientWallpaper == null) {
                    this.backgroundDrawable = Theme.getCachedWallpaper();
                }
                boolean z4 = this.backgroundDrawable instanceof BackgroundGradientDrawable;
                FrameLayout frameLayout2 = this.backgroundFrameLayout;
                if (z4) {
                    this.backgroundFrameLayoutColor = 570425344;
                    frameLayout2.setBackgroundColor(570425344);
                } else {
                    this.backgroundFrameLayoutColor = -1090519040;
                    frameLayout2.setBackgroundColor(-1090519040);
                }
            } else if ("d".equals(Theme.getSelectedBackgroundSlug()) || Theme.isPatternWallpaper()) {
                FrameLayout frameLayout3 = this.backgroundFrameLayout;
                this.backgroundFrameLayoutColor = -11436898;
                frameLayout3.setBackgroundColor(-11436898);
            } else {
                Drawable cachedWallpaper = Theme.getCachedWallpaper();
                this.backgroundDrawable = cachedWallpaper;
                if (cachedWallpaper instanceof BackgroundGradientDrawable) {
                    FrameLayout frameLayout4 = this.backgroundFrameLayout;
                    this.backgroundFrameLayoutColor = 570425344;
                    frameLayout4.setBackgroundColor(570425344);
                } else {
                    FrameLayout frameLayout5 = this.backgroundFrameLayout;
                    if (cachedWallpaper != null) {
                        this.backgroundFrameLayoutColor = -1090519040;
                        frameLayout5.setBackgroundColor(-1090519040);
                    } else {
                        this.backgroundFrameLayoutColor = -11436898;
                        frameLayout5.setBackgroundColor(-11436898);
                    }
                }
            }
            z3 = false;
        }
        Drawable drawable = this.backgroundDrawable;
        if (drawable instanceof MotionBackgroundDrawable) {
            MotionBackgroundDrawable motionBackgroundDrawable = (MotionBackgroundDrawable) drawable;
            int[] colors = motionBackgroundDrawable.getColors();
            if (z3) {
                int[] iArr = new int[colors.length];
                for (int i3 = 0; i3 < colors.length; i3++) {
                    iArr[i3] = Theme.adaptHSV(colors[i3], 0.14f, 0.0f);
                }
                colors = iArr;
            }
            this.backgroundDrawable = new MotionBackgroundDrawable(colors[0], colors[1], colors[2], colors[3], false);
            if (motionBackgroundDrawable.hasPattern() && motionBackgroundDrawable.getIntensity() < 0) {
                FrameLayout frameLayout6 = this.backgroundFrameLayout;
                this.backgroundFrameLayoutColor = 2130706432;
                frameLayout6.setBackgroundColor(2130706432);
            } else {
                FrameLayout frameLayout7 = this.backgroundFrameLayout;
                this.backgroundFrameLayoutColor = 570425344;
                frameLayout7.setBackgroundColor(570425344);
            }
            ((MotionBackgroundDrawable) this.backgroundDrawable).setParentView(this.backgroundFrameLayout);
        }
        this.passcodeTextView.setText(isAppLock() ? LocaleController.getString(C2807R.string.AppLocked) : this.title);
        int i4 = SharedConfig.passcodeType;
        if (i4 == 0) {
            if (this.retryTextView.getVisibility() != 0) {
                this.numbersFrameLayout.setVisibility(0);
            }
            this.passwordEditText.setVisibility(8);
            this.passwordEditText2.setVisibility(0);
            this.checkImage.setVisibility(8);
            this.fingerprintImage.setVisibility(8);
        } else if (i4 == 1) {
            this.passwordEditText.setFilters(new InputFilter[0]);
            this.passwordEditText.setInputType(129);
            this.numbersFrameLayout.setVisibility(8);
            this.passwordEditText.setFocusable(true);
            this.passwordEditText.setFocusableInTouchMode(true);
            this.passwordEditText.setVisibility(0);
            this.passwordEditText2.setVisibility(8);
            this.checkImage.setVisibility(0);
            this.fingerprintImage.setVisibility(this.fingerprintView.getVisibility());
        }
        setVisibility(0);
        this.passwordEditText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        this.passwordEditText.setText(_UrlKt.FRAGMENT_ENCODE_SET);
        this.passwordEditText2.eraseAllCharacters(false);
        if (z2) {
            setAlpha(0.0f);
            getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC42399(i, i2, runnable));
            requestLayout();
        } else {
            setAlpha(1.0f);
            this.shownT = 1.0f;
            onAnimationUpdate(1.0f);
            this.imageView.setScaleX(1.0f);
            this.imageView.setScaleY(1.0f);
            this.imageView.stopAnimation();
            this.imageView.getAnimatedDrawable().setCurrentFrame(38, false);
            if (runnable != null) {
                runnable.run();
            }
        }
        setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda11
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return PasscodeView.m13291$r8$lambda$_paTLqhtdqqUlTrfLAxVaK_bKU(view, motionEvent);
            }
        });
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.PasscodeView$9 */
    public class ViewTreeObserverOnGlobalLayoutListenerC42399 implements ViewTreeObserver.OnGlobalLayoutListener {
        final /* synthetic */ Runnable val$onShow;
        final /* synthetic */ int val$x;
        final /* synthetic */ int val$y;

        public ViewTreeObserverOnGlobalLayoutListenerC42399(int i, int i2, Runnable runnable) {
            this.val$x = i;
            this.val$y = i2;
            this.val$onShow = runnable;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            PasscodeView passcodeView;
            float f;
            int iDp;
            final AnimatorSet animatorSet;
            PasscodeView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            if (PasscodeView.this.dismissing || !PasscodeView.this.isAttachedToWindow()) {
                return;
            }
            float f2 = 1.0f;
            PasscodeView.this.setAlpha(1.0f);
            char c2 = 0;
            PasscodeView.this.imageView.getAnimatedDrawable().setCurrentFrame(0, false);
            PasscodeView.this.imageView.getAnimatedDrawable().setCustomEndFrame(37);
            PasscodeView.this.imageView.playAnimation();
            int i = 1;
            PasscodeView.this.showPin(true);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.PasscodeView$9$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onGlobalLayout$0();
                }
            }, 350L);
            PasscodeView passcodeView2 = PasscodeView.this;
            AnimatorSet animatorSet2 = new AnimatorSet();
            passcodeView2.showAnimator = animatorSet2;
            ArrayList arrayList = new ArrayList();
            int measuredWidth = PasscodeView.this.isAppLock() ? AndroidUtilities.displaySize.x : PasscodeView.this.getMeasuredWidth();
            int measuredHeight = PasscodeView.this.isAppLock() ? AndroidUtilities.displaySize.y + AndroidUtilities.statusBarHeight : PasscodeView.this.getMeasuredHeight();
            int i2 = this.val$x;
            int i3 = (measuredWidth - i2) * (measuredWidth - i2);
            int i4 = this.val$y;
            double dSqrt = Math.sqrt(i3 + ((measuredHeight - i4) * (measuredHeight - i4)));
            int i5 = this.val$x;
            int i6 = this.val$y;
            double dSqrt2 = Math.sqrt((i5 * i5) + ((measuredHeight - i6) * (measuredHeight - i6)));
            int i7 = this.val$x;
            int i8 = this.val$y;
            double dSqrt3 = Math.sqrt((i7 * i7) + (i8 * i8));
            int i9 = this.val$x;
            int i10 = (measuredWidth - i9) * (measuredWidth - i9);
            int i11 = this.val$y;
            final double dMax = Math.max(Math.max(Math.max(dSqrt, dSqrt2), dSqrt3), Math.sqrt(i10 + (i11 * i11)));
            PasscodeView.this.innerAnimators.clear();
            int childCount = PasscodeView.this.numbersFrameLayout.getChildCount();
            int i12 = 0;
            while (true) {
                passcodeView = PasscodeView.this;
                if (i12 >= childCount) {
                    break;
                }
                View childAt = passcodeView.numbersFrameLayout.getChildAt(i12);
                childAt.setScaleX(0.7f);
                childAt.setScaleY(0.7f);
                childAt.setAlpha(0.0f);
                InnerAnimator innerAnimator = new InnerAnimator();
                float f3 = f2;
                childAt.getLocationInWindow(PasscodeView.this.pos);
                int measuredWidth2 = PasscodeView.this.pos[c2] + (childAt.getMeasuredWidth() / 2);
                char c3 = c2;
                int measuredHeight2 = PasscodeView.this.pos[i] + (childAt.getMeasuredHeight() / 2);
                int i13 = this.val$x;
                int i14 = (i13 - measuredWidth2) * (i13 - measuredWidth2);
                int i15 = this.val$y;
                innerAnimator.startRadius = ((float) Math.sqrt(i14 + ((i15 - measuredHeight2) * (i15 - measuredHeight2)))) - AndroidUtilities.dp(40.0f);
                if (i12 != -1) {
                    animatorSet = new AnimatorSet();
                    Property property = View.SCALE_X;
                    float[] fArr = new float[i];
                    fArr[c3] = f3;
                    ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(childAt, (Property<View, Float>) property, fArr);
                    Property property2 = View.SCALE_Y;
                    float[] fArr2 = new float[i];
                    fArr2[c3] = f3;
                    ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(childAt, (Property<View, Float>) property2, fArr2);
                    Animator[] animatorArr = new Animator[2];
                    animatorArr[c3] = objectAnimatorOfFloat;
                    animatorArr[i] = objectAnimatorOfFloat2;
                    animatorSet.playTogether(animatorArr);
                    animatorSet.setDuration(140L);
                    animatorSet.setInterpolator(new DecelerateInterpolator());
                } else {
                    animatorSet = null;
                }
                innerAnimator.animatorSet = new AnimatorSet();
                AnimatorSet animatorSet3 = innerAnimator.animatorSet;
                Property property3 = View.SCALE_X;
                int i16 = i;
                float f4 = i12 == -1 ? 0.9f : 0.6f;
                float f5 = i12 == -1 ? f3 : 1.04f;
                float[] fArr3 = new float[2];
                fArr3[c3] = f4;
                fArr3[i16] = f5;
                ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(childAt, (Property<View, Float>) property3, fArr3);
                Property property4 = View.SCALE_Y;
                float f6 = i12 != -1 ? 0.6f : 0.9f;
                float f7 = i12 == -1 ? f3 : 1.04f;
                float[] fArr4 = new float[2];
                fArr4[c3] = f6;
                fArr4[i16] = f7;
                ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(childAt, (Property<View, Float>) property4, fArr4);
                ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(childAt, (Property<View, Float>) View.ALPHA, 0.0f, 1.0f);
                Animator[] animatorArr2 = new Animator[3];
                animatorArr2[c3] = objectAnimatorOfFloat3;
                animatorArr2[i16] = objectAnimatorOfFloat4;
                animatorArr2[2] = objectAnimatorOfFloat5;
                animatorSet3.playTogether(animatorArr2);
                innerAnimator.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.9.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        AnimatorSet animatorSet4 = animatorSet;
                        if (animatorSet4 != null) {
                            animatorSet4.start();
                        }
                    }
                });
                innerAnimator.animatorSet.setDuration(i12 == -1 ? 232L : 200L);
                innerAnimator.animatorSet.setInterpolator(new DecelerateInterpolator());
                PasscodeView.this.innerAnimators.add(innerAnimator);
                i12++;
                f2 = f3;
                c2 = c3;
                i = i16;
            }
            float f8 = f2;
            char c4 = c2;
            int i17 = i;
            arrayList.add(ObjectAnimator.ofFloat(passcodeView.backgroundFrameLayout, (Property<FrameLayout, Float>) View.ALPHA, 0.0f, 1.0f));
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            arrayList.add(valueAnimatorOfFloat);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PasscodeView$9$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$onGlobalLayout$1(dMax, valueAnimator);
                }
            });
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            animatorSet2.setInterpolator(cubicBezierInterpolator);
            animatorSet2.setDuration(500L);
            float[] fArr5 = new float[2];
            fArr5[c4] = PasscodeView.this.shownT;
            fArr5[i17] = f8;
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(fArr5);
            valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PasscodeView$9$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$onGlobalLayout$2(valueAnimator);
                }
            });
            valueAnimatorOfFloat2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.9.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (PasscodeView.this.dismissing) {
                        return;
                    }
                    PasscodeView passcodeView3 = PasscodeView.this;
                    passcodeView3.shownT = 1.0f;
                    passcodeView3.onAnimationUpdate(1.0f);
                }
            });
            valueAnimatorOfFloat2.setDuration(420L);
            valueAnimatorOfFloat2.setInterpolator(cubicBezierInterpolator);
            arrayList.add(valueAnimatorOfFloat2);
            animatorSet2.playTogether(arrayList);
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.9.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (PasscodeView.this.dismissing) {
                        return;
                    }
                    Runnable runnable = ViewTreeObserverOnGlobalLayoutListenerC42399.this.val$onShow;
                    if (runnable != null) {
                        runnable.run();
                    }
                    if (SharedConfig.passcodeType != 1 || PasscodeView.this.retryTextView.getVisibility() == 0 || PasscodeView.this.passwordEditText == null) {
                        return;
                    }
                    PasscodeView.this.passwordEditText.requestFocus();
                    AndroidUtilities.showKeyboard(PasscodeView.this.passwordEditText);
                }
            });
            animatorSet2.start();
            PasscodeView passcodeView3 = PasscodeView.this;
            AnimatorSet animatorSet4 = new AnimatorSet();
            passcodeView3.imageAnimator = animatorSet4;
            animatorSet4.setDuration(332L);
            if (!AndroidUtilities.isTablet() && PasscodeView.this.getContext().getResources().getConfiguration().orientation == 2) {
                f = (SharedConfig.passcodeType == 0 ? measuredWidth / 2.0f : measuredWidth) / 2.0f;
                iDp = AndroidUtilities.dp(30.0f);
            } else {
                f = measuredWidth / 2.0f;
                iDp = AndroidUtilities.dp(29.0f);
            }
            float f9 = f - iDp;
            RLottieImageView rLottieImageView = PasscodeView.this.imageView;
            Property property5 = View.TRANSLATION_X;
            float[] fArr6 = new float[2];
            fArr6[c4] = this.val$x - AndroidUtilities.dp(29.0f);
            fArr6[i17] = f9;
            ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(rLottieImageView, (Property<RLottieImageView, Float>) property5, fArr6);
            RLottieImageView rLottieImageView2 = PasscodeView.this.imageView;
            Property property6 = View.TRANSLATION_Y;
            float fDp = this.val$y - AndroidUtilities.dp(29.0f);
            float f10 = PasscodeView.this.imageY;
            float[] fArr7 = new float[2];
            fArr7[c4] = fDp;
            fArr7[i17] = f10;
            ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(rLottieImageView2, (Property<RLottieImageView, Float>) property6, fArr7);
            ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(PasscodeView.this.imageView, (Property<RLottieImageView, Float>) View.SCALE_X, 0.5f, 1.0f);
            ObjectAnimator objectAnimatorOfFloat9 = ObjectAnimator.ofFloat(PasscodeView.this.imageView, (Property<RLottieImageView, Float>) View.SCALE_Y, 0.5f, 1.0f);
            Animator[] animatorArr3 = new Animator[4];
            animatorArr3[c4] = objectAnimatorOfFloat6;
            animatorArr3[i17] = objectAnimatorOfFloat7;
            animatorArr3[2] = objectAnimatorOfFloat8;
            animatorArr3[3] = objectAnimatorOfFloat9;
            animatorSet4.playTogether(animatorArr3);
            animatorSet4.setInterpolator(CubicBezierInterpolator.EASE_OUT);
            animatorSet4.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onGlobalLayout$0() {
            try {
                PasscodeView.this.imageView.performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onGlobalLayout$1(double d, ValueAnimator valueAnimator) {
            double animatedFraction = d * ((double) valueAnimator.getAnimatedFraction());
            int i = 0;
            while (i < PasscodeView.this.innerAnimators.size()) {
                InnerAnimator innerAnimator = (InnerAnimator) PasscodeView.this.innerAnimators.get(i);
                if (innerAnimator.startRadius <= animatedFraction) {
                    innerAnimator.animatorSet.start();
                    PasscodeView.this.innerAnimators.remove(i);
                    i--;
                }
                i++;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onGlobalLayout$2(ValueAnimator valueAnimator) {
            PasscodeView passcodeView = PasscodeView.this;
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            passcodeView.shownT = fFloatValue;
            passcodeView.onAnimationUpdate(fFloatValue);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$_paTLqhtdqqU-lTrfLAxVaK_bKU, reason: not valid java name */
    public static /* synthetic */ boolean m13291$r8$lambda$_paTLqhtdqqUlTrfLAxVaK_bKU(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int iDp;
        float f;
        float f2;
        int size = View.MeasureSpec.getSize(i);
        int iDp2 = AndroidUtilities.displaySize.y;
        if (!isAppLock()) {
            iDp2 = View.MeasureSpec.getSize(i2);
        }
        int iDp3 = AndroidUtilities.dp(28.0f);
        int iDp4 = AndroidUtilities.dp(16.0f);
        int iDp5 = AndroidUtilities.dp(60.0f);
        int i3 = 0;
        boolean z = !AndroidUtilities.isTablet() && getContext().getResources().getConfiguration().orientation == 2;
        View view = this.border;
        if (view != null) {
            view.setVisibility(SharedConfig.passcodeType == 1 ? 0 : 8);
        }
        RLottieImageView rLottieImageView = this.imageView;
        if (z) {
            if (SharedConfig.passcodeType == 0) {
                f = 40.0f;
                f2 = size / 2.0f;
            } else {
                f = 40.0f;
                f2 = size;
            }
            rLottieImageView.setTranslationX((f2 / 2.0f) - AndroidUtilities.dp(29.0f));
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.passwordFrameLayout.getLayoutParams();
            layoutParams.width = SharedConfig.passcodeType == 0 ? size / 2 : size;
            layoutParams.height = AndroidUtilities.dp(180.0f);
            layoutParams.topMargin = ((iDp2 - AndroidUtilities.dp(140.0f)) / 2) + (SharedConfig.passcodeType == 0 ? AndroidUtilities.dp(f) : 0);
            this.passwordFrameLayout.setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.numbersContainer.getLayoutParams();
            layoutParams2.height = iDp2;
            int i4 = size / 2;
            layoutParams2.leftMargin = i4;
            layoutParams2.topMargin = AndroidUtilities.statusBarHeight;
            layoutParams2.width = i4;
            this.numbersContainer.setLayoutParams(layoutParams2);
            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.numbersFrameLayout.getLayoutParams();
            layoutParams3.height = AndroidUtilities.dp(82.0f) + (iDp5 * 4) + (Math.max(0, 3) * iDp4);
            layoutParams3.width = (iDp5 * 3) + (Math.max(0, 2) * iDp3);
            layoutParams3.gravity = 17;
            this.numbersFrameLayout.setLayoutParams(layoutParams3);
        } else {
            rLottieImageView.setTranslationX((size / 2.0f) - AndroidUtilities.dp(29.0f));
            int iDp6 = AndroidUtilities.statusBarHeight;
            if (AndroidUtilities.isTablet()) {
                if (size > AndroidUtilities.dp(498.0f)) {
                    iDp = (size - AndroidUtilities.dp(498.0f)) / 2;
                    size = AndroidUtilities.dp(498.0f);
                } else {
                    iDp = 0;
                }
                if (iDp2 > AndroidUtilities.dp(528.0f)) {
                    iDp6 = (iDp2 - AndroidUtilities.dp(528.0f)) / 2;
                    iDp2 = AndroidUtilities.dp(528.0f);
                }
            } else {
                iDp = 0;
            }
            FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) this.passwordFrameLayout.getLayoutParams();
            layoutParams4.height = (iDp2 / 3) + (SharedConfig.passcodeType == 0 ? AndroidUtilities.dp(40.0f) : 0);
            layoutParams4.width = size;
            layoutParams4.topMargin = iDp6;
            layoutParams4.leftMargin = iDp;
            this.passwordFrameLayout.setTag(Integer.valueOf(iDp6));
            this.passwordFrameLayout.setLayoutParams(layoutParams4);
            int i5 = layoutParams4.topMargin + layoutParams4.height;
            FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) this.numbersFrameLayout.getLayoutParams();
            layoutParams5.height = AndroidUtilities.dp(82.0f) + (iDp5 * 4) + (Math.max(0, 3) * iDp4);
            layoutParams5.width = (iDp5 * 3) + (Math.max(0, 2) * iDp3);
            if (AndroidUtilities.isTablet()) {
                layoutParams5.gravity = 17;
            } else {
                layoutParams5.gravity = 49;
            }
            this.numbersFrameLayout.setLayoutParams(layoutParams5);
            int i6 = iDp2 - layoutParams5.height;
            FrameLayout.LayoutParams layoutParams6 = (FrameLayout.LayoutParams) this.numbersContainer.getLayoutParams();
            layoutParams6.leftMargin = iDp;
            if (AndroidUtilities.isTablet()) {
                layoutParams6.topMargin = (iDp2 - i6) / 2;
            } else {
                layoutParams6.topMargin = i5;
            }
            layoutParams6.width = size;
            layoutParams6.height = -1;
            this.numbersContainer.setLayoutParams(layoutParams6);
        }
        int iDp7 = AndroidUtilities.dp(z ? 52.0f : 82.0f);
        while (i3 < 12) {
            int i7 = 10;
            if (i3 != 0) {
                i7 = i3 == 10 ? 11 : i3 == 11 ? 9 : i3 - 1;
            }
            FrameLayout frameLayout = this.numberFrameLayouts.get(i3);
            FrameLayout.LayoutParams layoutParams7 = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
            layoutParams7.topMargin = ((iDp5 + iDp4) * (i7 / 3)) + iDp7;
            layoutParams7.leftMargin = (iDp5 + iDp3) * (i7 % 3);
            frameLayout.setLayoutParams(layoutParams7);
            i3++;
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View rootView = getRootView();
        int height = (rootView.getHeight() - AndroidUtilities.statusBarHeight) - AndroidUtilities.getViewInset(rootView);
        getWindowVisibleDisplayFrame(this.rect);
        Rect rect = this.rect;
        this.keyboardHeight = height - (rect.bottom - rect.top);
        if (SharedConfig.passcodeType == 1 && (AndroidUtilities.isTablet() || getContext().getResources().getConfiguration().orientation != 2)) {
            int iIntValue = this.passwordFrameLayout.getTag() != null ? ((Integer) this.passwordFrameLayout.getTag()).intValue() : 0;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.passwordFrameLayout.getLayoutParams();
            layoutParams.topMargin = ((iIntValue + layoutParams.height) - (this.keyboardHeight / 2)) - AndroidUtilities.statusBarHeight;
            this.passwordFrameLayout.setLayoutParams(layoutParams);
        }
        super.onLayout(z, i, i2, i3, i4);
        this.passcodeTextView.getLocationInWindow(this.pos);
        if (!AndroidUtilities.isTablet() && getContext().getResources().getConfiguration().orientation == 2) {
            RLottieImageView rLottieImageView = this.imageView;
            int iDp = this.pos[1] - AndroidUtilities.dp(100.0f);
            this.imageY = iDp;
            rLottieImageView.setTranslationY(iDp);
            return;
        }
        RLottieImageView rLottieImageView2 = this.imageView;
        int iDp2 = this.pos[1] - AndroidUtilities.dp(100.0f);
        this.imageY = iDp2;
        rLottieImageView2.setTranslationY(iDp2);
    }

    public static class PasscodeButton extends FrameLayout {
        private final ImageView imageView;
        private final TextView textView1;
        private final TextView textView2;

        public PasscodeButton(Context context) {
            super(context);
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setImageResource(C2807R.drawable.fingerprint);
            addView(imageView, LayoutHelper.createFrame(-1, -1, 119));
            TextView textView = new TextView(context);
            this.textView1 = textView;
            textView.setTypeface(AndroidUtilities.bold());
            textView.setTextColor(-1);
            textView.setTextSize(1, 26.0f);
            textView.setGravity(17);
            addView(textView, LayoutHelper.createFrame(-1, -2.0f, 17, 0.0f, -5.33f, 0.0f, 0.0f));
            TextView textView2 = new TextView(context);
            this.textView2 = textView2;
            textView2.setTypeface(AndroidUtilities.bold());
            textView2.setTextSize(1, 10.0f);
            textView2.setTextColor(Integer.MAX_VALUE);
            textView2.setGravity(17);
            addView(textView2, LayoutHelper.createFrame(-1, -2.0f, 17, 0.0f, 14.0f, 0.0f, 0.0f));
        }

        public void setImage(int i) {
            this.imageView.setVisibility(0);
            this.textView1.setVisibility(8);
            this.textView2.setVisibility(8);
            this.imageView.setImageResource(i);
        }

        public void setNum(int i) {
            this.imageView.setVisibility(8);
            this.textView1.setVisibility(0);
            this.textView2.setVisibility(0);
            this.textView1.setText(_UrlKt.FRAGMENT_ENCODE_SET + i);
            this.textView2.setText(letter(i));
        }

        public static String letter(int i) {
            if (i == 0) {
                return "+";
            }
            switch (i) {
                case 2:
                    return "ABC";
                case 3:
                    return "DEF";
                case 4:
                    return "GHI";
                case 5:
                    return "JKL";
                case 6:
                    return "MNO";
                case 7:
                    return "PQRS";
                case 8:
                    return "TUV";
                case 9:
                    return "WXYZ";
                default:
                    return _UrlKt.FRAGMENT_ENCODE_SET;
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("android.widget.Button");
        }
    }
}
