package androidx.fragment.app;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import androidx.core.view.OneShotPreDrawListener;
import androidx.fragment.R$animator;
import androidx.fragment.R$id;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
abstract class FragmentAnim {
    /* JADX WARN: Removed duplicated region for block: B:34:0x0071 A[Catch: RuntimeException -> 0x0077, TRY_LEAVE, TryCatch #0 {RuntimeException -> 0x0077, blocks: (B:32:0x006b, B:34:0x0071), top: B:45:0x006b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static AnimationOrAnimator loadAnimation(Context context, Fragment fragment, boolean z, boolean z2) {
        Animator animatorLoadAnimator;
        int nextTransition = fragment.getNextTransition();
        int nextAnim = getNextAnim(fragment, z, z2);
        fragment.setAnimations(0, 0, 0, 0);
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && viewGroup.getTag(R$id.visible_removing_fragment_view_tag) != null) {
            fragment.mContainer.setTag(R$id.visible_removing_fragment_view_tag, null);
        }
        ViewGroup viewGroup2 = fragment.mContainer;
        if (viewGroup2 != null && viewGroup2.getLayoutTransition() != null) {
            return null;
        }
        Animation animationOnCreateAnimation = fragment.onCreateAnimation(nextTransition, z, nextAnim);
        if (animationOnCreateAnimation != null) {
            return new AnimationOrAnimator(animationOnCreateAnimation);
        }
        Animator animatorOnCreateAnimator = fragment.onCreateAnimator(nextTransition, z, nextAnim);
        if (animatorOnCreateAnimator != null) {
            return new AnimationOrAnimator(animatorOnCreateAnimator);
        }
        if (nextAnim == 0 && nextTransition != 0) {
            nextAnim = transitToAnimResourceId(context, nextTransition, z);
        }
        if (nextAnim != 0) {
            boolean zEquals = "anim".equals(context.getResources().getResourceTypeName(nextAnim));
            if (zEquals) {
                try {
                    Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, nextAnim);
                    if (animationLoadAnimation != null) {
                        return new AnimationOrAnimator(animationLoadAnimation);
                    }
                } catch (Resources.NotFoundException e) {
                    throw e;
                } catch (RuntimeException unused) {
                    try {
                        animatorLoadAnimator = AnimatorInflater.loadAnimator(context, nextAnim);
                        if (animatorLoadAnimator != null) {
                        }
                    } catch (RuntimeException e2) {
                        if (zEquals) {
                            throw e2;
                        }
                        Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, nextAnim);
                        if (animationLoadAnimation2 != null) {
                            return new AnimationOrAnimator(animationLoadAnimation2);
                        }
                    }
                }
            } else {
                animatorLoadAnimator = AnimatorInflater.loadAnimator(context, nextAnim);
                if (animatorLoadAnimator != null) {
                    return new AnimationOrAnimator(animatorLoadAnimator);
                }
            }
        }
        return null;
    }

    private static int getNextAnim(Fragment fragment, boolean z, boolean z2) {
        if (z2) {
            if (z) {
                return fragment.getPopEnterAnim();
            }
            return fragment.getPopExitAnim();
        }
        if (z) {
            return fragment.getEnterAnim();
        }
        return fragment.getExitAnim();
    }

    private static int transitToAnimResourceId(Context context, int i, boolean z) {
        if (i == 4097) {
            return z ? R$animator.fragment_open_enter : R$animator.fragment_open_exit;
        }
        if (i == 8194) {
            return z ? R$animator.fragment_close_enter : R$animator.fragment_close_exit;
        }
        if (i == 8197) {
            if (z) {
                return toActivityTransitResId(context, R.attr.activityCloseEnterAnimation);
            }
            return toActivityTransitResId(context, R.attr.activityCloseExitAnimation);
        }
        if (i == 4099) {
            return z ? R$animator.fragment_fade_enter : R$animator.fragment_fade_exit;
        }
        if (i != 4100) {
            return -1;
        }
        if (z) {
            return toActivityTransitResId(context, R.attr.activityOpenEnterAnimation);
        }
        return toActivityTransitResId(context, R.attr.activityOpenExitAnimation);
    }

    private static int toActivityTransitResId(Context context, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(R.style.Animation.Activity, new int[]{i});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    public static class AnimationOrAnimator {
        public final Animation animation;
        public final Animator animator;

        public AnimationOrAnimator(Animation animation) {
            this.animation = animation;
            this.animator = null;
            if (animation != null) {
                return;
            }
            Segment$$ExternalSyntheticBUOutline1.m848m("Animation cannot be null");
            throw null;
        }

        public AnimationOrAnimator(Animator animator) {
            this.animation = null;
            this.animator = animator;
            if (animator != null) {
                return;
            }
            Segment$$ExternalSyntheticBUOutline1.m848m("Animator cannot be null");
            throw null;
        }
    }

    public static class EndViewTransitionAnimation extends AnimationSet implements Runnable {
        private boolean mAnimating;
        private final View mChild;
        private boolean mEnded;
        private final ViewGroup mParent;
        private boolean mTransitionEnded;

        public EndViewTransitionAnimation(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.mAnimating = true;
            this.mParent = viewGroup;
            this.mChild = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation) {
            this.mAnimating = true;
            if (this.mEnded) {
                return !this.mTransitionEnded;
            }
            if (!super.getTransformation(j, transformation)) {
                this.mEnded = true;
                OneShotPreDrawListener.add(this.mParent, this);
            }
            return true;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation, float f) {
            this.mAnimating = true;
            if (this.mEnded) {
                return !this.mTransitionEnded;
            }
            if (!super.getTransformation(j, transformation, f)) {
                this.mEnded = true;
                OneShotPreDrawListener.add(this.mParent, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.mEnded && this.mAnimating) {
                this.mAnimating = false;
                this.mParent.post(this);
            } else {
                this.mParent.endViewTransition(this.mChild);
                this.mTransitionEnded = true;
            }
        }
    }
}
