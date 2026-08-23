package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.collection.ArrayMap;
import androidx.core.os.CancellationSignal;
import androidx.core.util.Preconditions;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupCompat;
import androidx.fragment.app.FragmentAnim;
import androidx.fragment.app.SpecialEffectsController;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
class DefaultSpecialEffectsController extends SpecialEffectsController {
    DefaultSpecialEffectsController(ViewGroup viewGroup) {
        super(viewGroup);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a9  */
    @Override // androidx.fragment.app.SpecialEffectsController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void executeOperations(List list, boolean z) {
        int i;
        Iterator it = list.iterator();
        SpecialEffectsController.Operation operation = null;
        SpecialEffectsController.Operation operation2 = null;
        while (it.hasNext()) {
            SpecialEffectsController.Operation operation3 = (SpecialEffectsController.Operation) it.next();
            SpecialEffectsController.Operation.State stateFrom = SpecialEffectsController.Operation.State.from(operation3.getFragment().mView);
            int i2 = C059210.f55xe493b431[operation3.getFinalState().ordinal()];
            if (i2 == 1 || i2 == 2 || i2 == 3) {
                if (stateFrom == SpecialEffectsController.Operation.State.VISIBLE && operation == null) {
                    operation = operation3;
                }
            } else if (i2 == 4 && stateFrom != SpecialEffectsController.Operation.State.VISIBLE) {
                operation2 = operation3;
            }
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Executing operations from " + operation + " to " + operation2);
        }
        List arrayList = new ArrayList();
        List arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList(list);
        syncAnimations(list);
        Iterator it2 = list.iterator();
        while (true) {
            i = 0;
            z = false;
            boolean z2 = false;
            if (!it2.hasNext()) {
                break;
            }
            final SpecialEffectsController.Operation operation4 = (SpecialEffectsController.Operation) it2.next();
            CancellationSignal cancellationSignal = new CancellationSignal();
            operation4.markStartedSpecialEffect(cancellationSignal);
            arrayList.add(new AnimationInfo(operation4, cancellationSignal, z));
            CancellationSignal cancellationSignal2 = new CancellationSignal();
            operation4.markStartedSpecialEffect(cancellationSignal2);
            if (z) {
                if (operation4 == operation) {
                    z2 = true;
                }
            } else if (operation4 == operation2) {
            }
            arrayList2.add(new TransitionInfo(operation4, cancellationSignal2, z, z2));
            operation4.addCompletionListener(new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.1
                @Override // java.lang.Runnable
                public void run() {
                    if (arrayList3.contains(operation4)) {
                        arrayList3.remove(operation4);
                        DefaultSpecialEffectsController.this.applyContainerChanges(operation4);
                    }
                }
            });
        }
        Map mapStartTransitions = startTransitions(arrayList2, arrayList3, z, operation, operation2);
        startAnimations(arrayList, arrayList3, mapStartTransitions.containsValue(Boolean.TRUE), mapStartTransitions);
        int size = arrayList3.size();
        while (i < size) {
            Object obj = arrayList3.get(i);
            i++;
            applyContainerChanges((SpecialEffectsController.Operation) obj);
        }
        arrayList3.clear();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Completed executing operations from " + operation + " to " + operation2);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.DefaultSpecialEffectsController$10 */
    static /* synthetic */ class C059210 {

        /* JADX INFO: renamed from: $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State */
        static final /* synthetic */ int[] f55xe493b431;

        static {
            int[] iArr = new int[SpecialEffectsController.Operation.State.values().length];
            f55xe493b431 = iArr;
            try {
                iArr[SpecialEffectsController.Operation.State.GONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f55xe493b431[SpecialEffectsController.Operation.State.INVISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f55xe493b431[SpecialEffectsController.Operation.State.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f55xe493b431[SpecialEffectsController.Operation.State.VISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private void syncAnimations(List list) {
        Fragment fragment = ((SpecialEffectsController.Operation) list.get(list.size() - 1)).getFragment();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            SpecialEffectsController.Operation operation = (SpecialEffectsController.Operation) it.next();
            operation.getFragment().mAnimationInfo.mEnterAnim = fragment.mAnimationInfo.mEnterAnim;
            operation.getFragment().mAnimationInfo.mExitAnim = fragment.mAnimationInfo.mExitAnim;
            operation.getFragment().mAnimationInfo.mPopEnterAnim = fragment.mAnimationInfo.mPopEnterAnim;
            operation.getFragment().mAnimationInfo.mPopExitAnim = fragment.mAnimationInfo.mPopExitAnim;
        }
    }

    private void startAnimations(List list, List list2, boolean z, Map map) {
        final SpecialEffectsController.Operation operation;
        final AnimationInfo animationInfo;
        final View view;
        final ViewGroup container = getContainer();
        Context context = container.getContext();
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        int i = 0;
        boolean z2 = false;
        while (it.hasNext()) {
            final AnimationInfo animationInfo2 = (AnimationInfo) it.next();
            if (animationInfo2.isVisibilityUnchanged()) {
                animationInfo2.completeSpecialEffect();
            } else {
                FragmentAnim.AnimationOrAnimator animation = animationInfo2.getAnimation(context);
                if (animation == null) {
                    animationInfo2.completeSpecialEffect();
                } else {
                    final Animator animator = animation.animator;
                    if (animator == null) {
                        arrayList.add(animationInfo2);
                    } else {
                        final SpecialEffectsController.Operation operation2 = animationInfo2.getOperation();
                        Fragment fragment = operation2.getFragment();
                        if (Boolean.TRUE.equals(map.get(operation2))) {
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v("FragmentManager", "Ignoring Animator set on " + fragment + " as this Fragment was involved in a Transition.");
                            }
                            animationInfo2.completeSpecialEffect();
                        } else {
                            final boolean z3 = operation2.getFinalState() == SpecialEffectsController.Operation.State.GONE;
                            if (z3) {
                                list2.remove(operation2);
                            }
                            final View view2 = fragment.mView;
                            container.startViewTransition(view2);
                            final ViewGroup viewGroup = container;
                            container = viewGroup;
                            animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.2
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator2) {
                                    viewGroup.endViewTransition(view2);
                                    if (z3) {
                                        operation2.getFinalState().applyState(view2);
                                    }
                                    animationInfo2.completeSpecialEffect();
                                    if (FragmentManager.isLoggingEnabled(2)) {
                                        Log.v("FragmentManager", "Animator from operation " + operation2 + " has ended.");
                                    }
                                }
                            });
                            animator.setTarget(view2);
                            animator.start();
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v("FragmentManager", "Animator from operation " + operation2 + " has started.");
                            }
                            animationInfo2.getSignal().setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.3
                                @Override // androidx.core.os.CancellationSignal.OnCancelListener
                                public void onCancel() {
                                    animator.end();
                                    if (FragmentManager.isLoggingEnabled(2)) {
                                        Log.v("FragmentManager", "Animator from operation " + operation2 + " has been canceled.");
                                    }
                                }
                            });
                            z2 = true;
                        }
                    }
                }
            }
        }
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            AnimationInfo animationInfo3 = (AnimationInfo) obj;
            SpecialEffectsController.Operation operation3 = animationInfo3.getOperation();
            Fragment fragment2 = operation3.getFragment();
            if (z) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + fragment2 + " as Animations cannot run alongside Transitions.");
                }
                animationInfo3.completeSpecialEffect();
            } else if (z2) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + fragment2 + " as Animations cannot run alongside Animators.");
                }
                animationInfo3.completeSpecialEffect();
            } else {
                View view3 = fragment2.mView;
                Animation animation2 = (Animation) Preconditions.checkNotNull(((FragmentAnim.AnimationOrAnimator) Preconditions.checkNotNull(animationInfo3.getAnimation(context))).animation);
                if (operation3.getFinalState() != SpecialEffectsController.Operation.State.REMOVED) {
                    view3.startAnimation(animation2);
                    animationInfo3.completeSpecialEffect();
                    operation = operation3;
                    animationInfo = animationInfo3;
                    view = view3;
                } else {
                    container.startViewTransition(view3);
                    FragmentAnim.EndViewTransitionAnimation endViewTransitionAnimation = new FragmentAnim.EndViewTransitionAnimation(animation2, container, view3);
                    operation = operation3;
                    animationInfo = animationInfo3;
                    view = view3;
                    endViewTransitionAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.4
                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationRepeat(Animation animation3) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationStart(Animation animation3) {
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v("FragmentManager", "Animation from operation " + operation + " has reached onAnimationStart.");
                            }
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation3) {
                            container.post(new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.4.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnimationAnimationListenerC05954 animationAnimationListenerC05954 = AnimationAnimationListenerC05954.this;
                                    container.endViewTransition(view);
                                    animationInfo.completeSpecialEffect();
                                }
                            });
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v("FragmentManager", "Animation from operation " + operation + " has ended.");
                            }
                        }
                    });
                    view.startAnimation(endViewTransitionAnimation);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Animation from operation " + operation + " has started.");
                    }
                }
                CancellationSignal signal = animationInfo.getSignal();
                final AnimationInfo animationInfo4 = animationInfo;
                final SpecialEffectsController.Operation operation4 = operation;
                final View view4 = view;
                signal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.5
                    @Override // androidx.core.os.CancellationSignal.OnCancelListener
                    public void onCancel() {
                        view4.clearAnimation();
                        container.endViewTransition(view4);
                        animationInfo4.completeSpecialEffect();
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "Animation from operation " + operation4 + " has been cancelled.");
                        }
                    }
                });
            }
        }
    }

    private Map startTransitions(List list, List list2, boolean z, final SpecialEffectsController.Operation operation, final SpecialEffectsController.Operation operation2) {
        String str;
        ArrayList arrayList;
        String str2;
        ArrayList arrayList2;
        View view;
        View view2;
        Object objMergeTransitionsTogether;
        Object objMergeTransitionsTogether2;
        String str3;
        ArrayList arrayList3;
        ArrayList arrayList4;
        Object obj;
        Rect rect;
        SpecialEffectsController.Operation operation3;
        View view3;
        Rect rect2;
        ArrayList arrayList5;
        ArrayMap arrayMap;
        View view4;
        ArrayList arrayList6;
        int i;
        final View view5;
        final boolean z2 = z;
        HashMap map = new HashMap();
        Iterator it = list.iterator();
        final FragmentTransitionImpl fragmentTransitionImpl = null;
        while (it.hasNext()) {
            TransitionInfo transitionInfo = (TransitionInfo) it.next();
            if (!transitionInfo.isVisibilityUnchanged()) {
                FragmentTransitionImpl handlingImpl = transitionInfo.getHandlingImpl();
                if (fragmentTransitionImpl == null) {
                    fragmentTransitionImpl = handlingImpl;
                } else if (handlingImpl != null && fragmentTransitionImpl != handlingImpl) {
                    throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + transitionInfo.getOperation().getFragment() + " returned Transition " + transitionInfo.getTransition() + " which uses a different Transition  type than other Fragments.");
                }
            }
        }
        if (fragmentTransitionImpl == null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                TransitionInfo transitionInfo2 = (TransitionInfo) it2.next();
                map.put(transitionInfo2.getOperation(), Boolean.FALSE);
                transitionInfo2.completeSpecialEffect();
            }
        } else {
            View view6 = new View(getContainer().getContext());
            final Rect rect3 = new Rect();
            ArrayList arrayList7 = new ArrayList();
            ArrayList arrayList8 = new ArrayList();
            ArrayMap arrayMap2 = new ArrayMap();
            Iterator it3 = list.iterator();
            Object obj2 = null;
            View view7 = null;
            boolean z3 = false;
            while (true) {
                str = "FragmentManager";
                if (!it3.hasNext()) {
                    break;
                }
                TransitionInfo transitionInfo3 = (TransitionInfo) it3.next();
                if (!transitionInfo3.hasSharedElementTransition() || operation == null || operation2 == null) {
                    view3 = view6;
                    rect2 = rect3;
                    arrayList5 = arrayList7;
                    arrayMap = arrayMap2;
                    view4 = view7;
                    arrayList6 = arrayList8;
                } else {
                    Object objWrapTransitionInSet = fragmentTransitionImpl.wrapTransitionInSet(fragmentTransitionImpl.cloneTransition(transitionInfo3.getSharedElementTransition()));
                    ArrayList<String> sharedElementSourceNames = operation2.getFragment().getSharedElementSourceNames();
                    ArrayList<String> sharedElementSourceNames2 = operation.getFragment().getSharedElementSourceNames();
                    ArrayList<String> sharedElementTargetNames = operation.getFragment().getSharedElementTargetNames();
                    int i2 = 0;
                    while (i2 < sharedElementTargetNames.size()) {
                        int iIndexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i2));
                        ArrayList<String> arrayList9 = sharedElementTargetNames;
                        if (iIndexOf != -1) {
                            sharedElementSourceNames.set(iIndexOf, sharedElementSourceNames2.get(i2));
                        }
                        i2++;
                        sharedElementTargetNames = arrayList9;
                    }
                    ArrayList<String> sharedElementTargetNames2 = operation2.getFragment().getSharedElementTargetNames();
                    if (!z2) {
                        operation.getFragment().getExitTransitionCallback();
                        operation2.getFragment().getEnterTransitionCallback();
                    } else {
                        operation.getFragment().getEnterTransitionCallback();
                        operation2.getFragment().getExitTransitionCallback();
                    }
                    int i3 = 0;
                    for (int size = sharedElementSourceNames.size(); i3 < size; size = size) {
                        arrayMap2.put(sharedElementSourceNames.get(i3), sharedElementTargetNames2.get(i3));
                        i3++;
                    }
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", ">>> entering view names <<<");
                        int i4 = 0;
                        for (int size2 = sharedElementTargetNames2.size(); i4 < size2; size2 = size2) {
                            String str4 = sharedElementTargetNames2.get(i4);
                            Log.v("FragmentManager", "Name: " + str4);
                            i4++;
                        }
                        Log.v("FragmentManager", ">>> exiting view names <<<");
                        int i5 = 0;
                        for (int size3 = sharedElementSourceNames.size(); i5 < size3; size3 = size3) {
                            String str5 = sharedElementSourceNames.get(i5);
                            Log.v("FragmentManager", "Name: " + str5);
                            i5++;
                        }
                    }
                    ArrayMap arrayMap3 = new ArrayMap();
                    findNamedViews(arrayMap3, operation.getFragment().mView);
                    arrayMap3.retainAll(sharedElementSourceNames);
                    arrayMap2.retainAll(arrayMap3.keySet());
                    final ArrayMap arrayMap4 = new ArrayMap();
                    findNamedViews(arrayMap4, operation2.getFragment().mView);
                    arrayMap4.retainAll(sharedElementTargetNames2);
                    arrayMap4.retainAll(arrayMap2.values());
                    FragmentTransition.retainValues(arrayMap2, arrayMap4);
                    retainMatchingViews(arrayMap3, arrayMap2.keySet());
                    retainMatchingViews(arrayMap4, arrayMap2.values());
                    if (arrayMap2.isEmpty()) {
                        arrayList7.clear();
                        arrayList8.clear();
                        view3 = view6;
                        rect2 = rect3;
                        arrayList5 = arrayList7;
                        arrayMap = arrayMap2;
                        arrayList6 = arrayList8;
                        obj2 = null;
                        z2 = z;
                        arrayList7 = arrayList5;
                        arrayList8 = arrayList6;
                        arrayMap2 = arrayMap;
                        rect3 = rect2;
                        view6 = view3;
                    } else {
                        arrayMap = arrayMap2;
                        FragmentTransition.callSharedElementStartEnd(operation2.getFragment(), operation.getFragment(), z2, arrayMap3, true);
                        view4 = view7;
                        OneShotPreDrawListener.add(getContainer(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.6
                            @Override // java.lang.Runnable
                            public void run() {
                                FragmentTransition.callSharedElementStartEnd(operation2.getFragment(), operation.getFragment(), z2, arrayMap4, false);
                            }
                        });
                        arrayList7.addAll(arrayMap3.values());
                        if (sharedElementSourceNames.isEmpty()) {
                            i = 0;
                        } else {
                            i = 0;
                            View view8 = (View) arrayMap3.get((String) sharedElementSourceNames.get(0));
                            fragmentTransitionImpl.setEpicenter(objWrapTransitionInSet, view8);
                            view4 = view8;
                        }
                        arrayList8.addAll(arrayMap4.values());
                        if (!sharedElementTargetNames2.isEmpty() && (view5 = (View) arrayMap4.get((String) sharedElementTargetNames2.get(i))) != null) {
                            OneShotPreDrawListener.add(getContainer(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.7
                                @Override // java.lang.Runnable
                                public void run() {
                                    fragmentTransitionImpl.getBoundsOnScreen(view5, rect3);
                                }
                            });
                            z3 = true;
                        }
                        fragmentTransitionImpl.setSharedElementTargets(objWrapTransitionInSet, view6, arrayList7);
                        rect2 = rect3;
                        ArrayList arrayList10 = arrayList7;
                        view3 = view6;
                        fragmentTransitionImpl.scheduleRemoveTargets(objWrapTransitionInSet, null, null, null, null, objWrapTransitionInSet, arrayList8);
                        arrayList6 = arrayList8;
                        Boolean bool = Boolean.TRUE;
                        map.put(operation, bool);
                        map.put(operation2, bool);
                        arrayList5 = arrayList10;
                        obj2 = objWrapTransitionInSet;
                    }
                }
                view7 = view4;
                z2 = z;
                arrayList7 = arrayList5;
                arrayList8 = arrayList6;
                arrayMap2 = arrayMap;
                rect3 = rect2;
                view6 = view3;
            }
            SpecialEffectsController.Operation operation4 = operation;
            SpecialEffectsController.Operation operation5 = operation2;
            View view9 = view6;
            ArrayList arrayList11 = arrayList7;
            ArrayMap arrayMap5 = arrayMap2;
            View view10 = view7;
            Rect rect4 = rect3;
            ArrayList arrayList12 = arrayList8;
            ArrayList arrayList13 = new ArrayList();
            Iterator it4 = list.iterator();
            Object obj3 = null;
            Object obj4 = null;
            while (it4.hasNext()) {
                TransitionInfo transitionInfo4 = (TransitionInfo) it4.next();
                if (transitionInfo4.isVisibilityUnchanged()) {
                    map.put(transitionInfo4.getOperation(), Boolean.FALSE);
                    transitionInfo4.completeSpecialEffect();
                } else {
                    Object objCloneTransition = fragmentTransitionImpl.cloneTransition(transitionInfo4.getTransition());
                    SpecialEffectsController.Operation operation6 = transitionInfo4.getOperation();
                    boolean z4 = obj2 != null && (operation6 == operation4 || operation6 == operation5);
                    if (objCloneTransition == null) {
                        if (!z4) {
                            map.put(operation6, Boolean.FALSE);
                            transitionInfo4.completeSpecialEffect();
                        }
                        view = view9;
                        arrayList4 = arrayList11;
                        arrayList2 = arrayList12;
                        rect = rect4;
                        view2 = view10;
                        str3 = str;
                        arrayList3 = arrayList13;
                    } else {
                        Rect rect5 = rect4;
                        final ArrayList arrayList14 = new ArrayList();
                        ArrayList arrayList15 = arrayList13;
                        captureTransitioningViews(arrayList14, operation6.getFragment().mView);
                        if (z4) {
                            if (operation6 == operation4) {
                                arrayList14.removeAll(arrayList11);
                            } else {
                                arrayList14.removeAll(arrayList12);
                            }
                        }
                        if (arrayList14.isEmpty()) {
                            fragmentTransitionImpl.addTarget(objCloneTransition, view9);
                            view = view9;
                            arrayList2 = arrayList12;
                            objMergeTransitionsTogether2 = obj3;
                            objMergeTransitionsTogether = obj4;
                            operation3 = operation6;
                            view2 = view10;
                            str3 = str;
                            arrayList3 = arrayList15;
                            arrayList4 = arrayList11;
                            obj = objCloneTransition;
                            rect = rect5;
                        } else {
                            fragmentTransitionImpl.addTargets(objCloneTransition, arrayList14);
                            arrayList2 = arrayList12;
                            view = view9;
                            view2 = view10;
                            objMergeTransitionsTogether = obj4;
                            objMergeTransitionsTogether2 = obj3;
                            str3 = str;
                            arrayList3 = arrayList15;
                            arrayList4 = arrayList11;
                            obj = objCloneTransition;
                            rect = rect5;
                            fragmentTransitionImpl.scheduleRemoveTargets(obj, objCloneTransition, arrayList14, null, null, null, null);
                            if (operation6.getFinalState() == SpecialEffectsController.Operation.State.GONE) {
                                operation3 = operation6;
                                list2.remove(operation3);
                                ArrayList arrayList16 = new ArrayList(arrayList14);
                                arrayList16.remove(operation3.getFragment().mView);
                                fragmentTransitionImpl.scheduleHideFragmentView(obj, operation3.getFragment().mView, arrayList16);
                                OneShotPreDrawListener.add(getContainer(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.8
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        FragmentTransition.setViewVisibility(arrayList14, 4);
                                    }
                                });
                            } else {
                                operation3 = operation6;
                            }
                        }
                        if (operation3.getFinalState() == SpecialEffectsController.Operation.State.VISIBLE) {
                            arrayList3.addAll(arrayList14);
                            if (z3) {
                                fragmentTransitionImpl.setEpicenter(obj, rect);
                            }
                        } else {
                            fragmentTransitionImpl.setEpicenter(obj, view2);
                        }
                        map.put(operation3, Boolean.TRUE);
                        if (transitionInfo4.isOverlapAllowed()) {
                            objMergeTransitionsTogether2 = fragmentTransitionImpl.mergeTransitionsTogether(objMergeTransitionsTogether2, obj, null);
                        } else {
                            objMergeTransitionsTogether = fragmentTransitionImpl.mergeTransitionsTogether(objMergeTransitionsTogether, obj, null);
                        }
                        obj3 = objMergeTransitionsTogether2;
                        obj4 = objMergeTransitionsTogether;
                    }
                    arrayList11 = arrayList4;
                    operation4 = operation;
                    operation5 = operation2;
                    rect4 = rect;
                    arrayList13 = arrayList3;
                    str = str3;
                    arrayList12 = arrayList2;
                    view10 = view2;
                    view9 = view;
                }
            }
            String str6 = str;
            ArrayList arrayList17 = arrayList11;
            ArrayList arrayList18 = arrayList12;
            ArrayList arrayList19 = arrayList13;
            Object objMergeTransitionsInSequence = fragmentTransitionImpl.mergeTransitionsInSequence(obj3, obj4, obj2);
            if (objMergeTransitionsInSequence != null) {
                Iterator it5 = list.iterator();
                while (it5.hasNext()) {
                    final TransitionInfo transitionInfo5 = (TransitionInfo) it5.next();
                    if (!transitionInfo5.isVisibilityUnchanged()) {
                        Object transition = transitionInfo5.getTransition();
                        final SpecialEffectsController.Operation operation7 = transitionInfo5.getOperation();
                        boolean z5 = obj2 != null && (operation7 == operation || operation7 == operation2);
                        if (transition == null && !z5) {
                            str2 = str6;
                        } else if (!ViewCompat.isLaidOut(getContainer())) {
                            if (FragmentManager.isLoggingEnabled(2)) {
                                str2 = str6;
                                Log.v(str2, "SpecialEffectsController: Container " + getContainer() + " has not been laid out. Completing operation " + operation7);
                            } else {
                                str2 = str6;
                            }
                            transitionInfo5.completeSpecialEffect();
                        } else {
                            str2 = str6;
                            fragmentTransitionImpl.setListenerForTransitionEnd(transitionInfo5.getOperation().getFragment(), objMergeTransitionsInSequence, transitionInfo5.getSignal(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.9
                                @Override // java.lang.Runnable
                                public void run() {
                                    transitionInfo5.completeSpecialEffect();
                                    if (FragmentManager.isLoggingEnabled(2)) {
                                        Log.v("FragmentManager", "Transition for operation " + operation7 + "has completed");
                                    }
                                }
                            });
                        }
                        str6 = str2;
                    }
                }
                String str7 = str6;
                if (ViewCompat.isLaidOut(getContainer())) {
                    FragmentTransition.setViewVisibility(arrayList19, 4);
                    ArrayList arrayListPrepareSetNameOverridesReordered = fragmentTransitionImpl.prepareSetNameOverridesReordered(arrayList18);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(str7, ">>>>> Beginning transition <<<<<");
                        Log.v(str7, ">>>>> SharedElementFirstOutViews <<<<<");
                        int size4 = arrayList17.size();
                        int i6 = 0;
                        while (i6 < size4) {
                            Object obj5 = arrayList17.get(i6);
                            i6++;
                            View view11 = (View) obj5;
                            Log.v(str7, "View: " + view11 + " Name: " + ViewCompat.getTransitionName(view11));
                        }
                        arrayList = arrayList17;
                        Log.v(str7, ">>>>> SharedElementLastInViews <<<<<");
                        int size5 = arrayList18.size();
                        int i7 = 0;
                        while (i7 < size5) {
                            Object obj6 = arrayList18.get(i7);
                            i7++;
                            View view12 = (View) obj6;
                            Log.v(str7, "View: " + view12 + " Name: " + ViewCompat.getTransitionName(view12));
                        }
                    } else {
                        arrayList = arrayList17;
                    }
                    fragmentTransitionImpl.beginDelayedTransition(getContainer(), objMergeTransitionsInSequence);
                    ArrayList arrayList20 = arrayList;
                    fragmentTransitionImpl.setNameOverridesReordered(getContainer(), arrayList20, arrayList18, arrayListPrepareSetNameOverridesReordered, arrayMap5);
                    FragmentTransition.setViewVisibility(arrayList19, 0);
                    fragmentTransitionImpl.swapSharedElementTargets(obj2, arrayList20, arrayList18);
                    return map;
                }
            }
        }
        return map;
    }

    void retainMatchingViews(ArrayMap arrayMap, Collection collection) {
        Iterator it = arrayMap.entrySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(ViewCompat.getTransitionName((View) ((Map.Entry) it.next()).getValue()))) {
                it.remove();
            }
        }
    }

    void captureTransitioningViews(ArrayList arrayList, View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (ViewGroupCompat.isTransitionGroup(viewGroup)) {
                if (arrayList.contains(view)) {
                    return;
                }
                arrayList.add(viewGroup);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    captureTransitioningViews(arrayList, childAt);
                }
            }
            return;
        }
        if (arrayList.contains(view)) {
            return;
        }
        arrayList.add(view);
    }

    void findNamedViews(Map map, View view) {
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            map.put(transitionName, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    findNamedViews(map, childAt);
                }
            }
        }
    }

    void applyContainerChanges(SpecialEffectsController.Operation operation) {
        operation.getFinalState().applyState(operation.getFragment().mView);
    }

    private static class SpecialEffectsInfo {
        private final SpecialEffectsController.Operation mOperation;
        private final CancellationSignal mSignal;

        SpecialEffectsInfo(SpecialEffectsController.Operation operation, CancellationSignal cancellationSignal) {
            this.mOperation = operation;
            this.mSignal = cancellationSignal;
        }

        SpecialEffectsController.Operation getOperation() {
            return this.mOperation;
        }

        CancellationSignal getSignal() {
            return this.mSignal;
        }

        boolean isVisibilityUnchanged() {
            SpecialEffectsController.Operation.State stateFrom = SpecialEffectsController.Operation.State.from(this.mOperation.getFragment().mView);
            SpecialEffectsController.Operation.State finalState = this.mOperation.getFinalState();
            if (stateFrom == finalState) {
                return true;
            }
            SpecialEffectsController.Operation.State state = SpecialEffectsController.Operation.State.VISIBLE;
            return (stateFrom == state || finalState == state) ? false : true;
        }

        void completeSpecialEffect() {
            this.mOperation.completeSpecialEffect(this.mSignal);
        }
    }

    private static class AnimationInfo extends SpecialEffectsInfo {
        private FragmentAnim.AnimationOrAnimator mAnimation;
        private boolean mIsPop;
        private boolean mLoadedAnim;

        AnimationInfo(SpecialEffectsController.Operation operation, CancellationSignal cancellationSignal, boolean z) {
            super(operation, cancellationSignal);
            this.mLoadedAnim = false;
            this.mIsPop = z;
        }

        FragmentAnim.AnimationOrAnimator getAnimation(Context context) {
            if (this.mLoadedAnim) {
                return this.mAnimation;
            }
            FragmentAnim.AnimationOrAnimator animationOrAnimatorLoadAnimation = FragmentAnim.loadAnimation(context, getOperation().getFragment(), getOperation().getFinalState() == SpecialEffectsController.Operation.State.VISIBLE, this.mIsPop);
            this.mAnimation = animationOrAnimatorLoadAnimation;
            this.mLoadedAnim = true;
            return animationOrAnimatorLoadAnimation;
        }
    }

    private static class TransitionInfo extends SpecialEffectsInfo {
        private final boolean mOverlapAllowed;
        private final Object mSharedElementTransition;
        private final Object mTransition;

        TransitionInfo(SpecialEffectsController.Operation operation, CancellationSignal cancellationSignal, boolean z, boolean z2) {
            Object exitTransition;
            Object enterTransition;
            boolean allowEnterTransitionOverlap;
            super(operation, cancellationSignal);
            if (operation.getFinalState() == SpecialEffectsController.Operation.State.VISIBLE) {
                if (z) {
                    enterTransition = operation.getFragment().getReenterTransition();
                } else {
                    enterTransition = operation.getFragment().getEnterTransition();
                }
                this.mTransition = enterTransition;
                if (z) {
                    allowEnterTransitionOverlap = operation.getFragment().getAllowReturnTransitionOverlap();
                } else {
                    allowEnterTransitionOverlap = operation.getFragment().getAllowEnterTransitionOverlap();
                }
                this.mOverlapAllowed = allowEnterTransitionOverlap;
            } else {
                if (z) {
                    exitTransition = operation.getFragment().getReturnTransition();
                } else {
                    exitTransition = operation.getFragment().getExitTransition();
                }
                this.mTransition = exitTransition;
                this.mOverlapAllowed = true;
            }
            if (!z2) {
                this.mSharedElementTransition = null;
            } else if (z) {
                this.mSharedElementTransition = operation.getFragment().getSharedElementReturnTransition();
            } else {
                this.mSharedElementTransition = operation.getFragment().getSharedElementEnterTransition();
            }
        }

        Object getTransition() {
            return this.mTransition;
        }

        boolean isOverlapAllowed() {
            return this.mOverlapAllowed;
        }

        public boolean hasSharedElementTransition() {
            return this.mSharedElementTransition != null;
        }

        public Object getSharedElementTransition() {
            return this.mSharedElementTransition;
        }

        FragmentTransitionImpl getHandlingImpl() {
            FragmentTransitionImpl handlingImpl = getHandlingImpl(this.mTransition);
            FragmentTransitionImpl handlingImpl2 = getHandlingImpl(this.mSharedElementTransition);
            if (handlingImpl == null || handlingImpl2 == null || handlingImpl == handlingImpl2) {
                return handlingImpl != null ? handlingImpl : handlingImpl2;
            }
            throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + getOperation().getFragment() + " returned Transition " + this.mTransition + " which uses a different Transition  type than its shared element transition " + this.mSharedElementTransition);
        }

        private FragmentTransitionImpl getHandlingImpl(Object obj) {
            if (obj == null) {
                return null;
            }
            FragmentTransitionImpl fragmentTransitionImpl = FragmentTransition.PLATFORM_IMPL;
            if (fragmentTransitionImpl != null && fragmentTransitionImpl.canHandle(obj)) {
                return fragmentTransitionImpl;
            }
            FragmentTransitionImpl fragmentTransitionImpl2 = FragmentTransition.SUPPORT_IMPL;
            if (fragmentTransitionImpl2 != null && fragmentTransitionImpl2.canHandle(obj)) {
                return fragmentTransitionImpl2;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + getOperation().getFragment() + " is not a valid framework Transition or AndroidX Transition");
        }
    }
}
