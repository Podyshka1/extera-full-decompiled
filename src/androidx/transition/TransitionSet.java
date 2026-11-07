package androidx.transition;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Transition;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class TransitionSet extends Transition {
    int mCurrentListeners;
    ArrayList<Transition> mTransitions = new ArrayList<>();
    private boolean mPlayTogether = true;
    boolean mStarted = false;
    private int mChangeFlags = 0;

    @Override // androidx.transition.Transition
    public /* bridge */ /* synthetic */ Transition addTarget(Class cls) {
        return addTarget((Class<?>) cls);
    }

    @Override // androidx.transition.Transition
    public /* bridge */ /* synthetic */ Transition removeTarget(Class cls) {
        return removeTarget((Class<?>) cls);
    }

    public TransitionSet setOrdering(int i) {
        if (i == 0) {
            this.mPlayTogether = true;
            return this;
        }
        if (i == 1) {
            this.mPlayTogether = false;
            return this;
        }
        throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i);
    }

    public TransitionSet addTransition(Transition transition) {
        addTransitionInternal(transition);
        long j = this.mDuration;
        if (j >= 0) {
            transition.setDuration(j);
        }
        if ((this.mChangeFlags & 1) != 0) {
            transition.setInterpolator(getInterpolator());
        }
        if ((this.mChangeFlags & 2) != 0) {
            getPropagation();
            transition.setPropagation(null);
        }
        if ((this.mChangeFlags & 4) != 0) {
            transition.setPathMotion(getPathMotion());
        }
        if ((this.mChangeFlags & 8) != 0) {
            transition.setEpicenterCallback(getEpicenterCallback());
        }
        return this;
    }

    private void addTransitionInternal(Transition transition) {
        this.mTransitions.add(transition);
        transition.mParent = this;
    }

    public int getTransitionCount() {
        return this.mTransitions.size();
    }

    public Transition getTransitionAt(int i) {
        if (i < 0 || i >= this.mTransitions.size()) {
            return null;
        }
        return this.mTransitions.get(i);
    }

    @Override // androidx.transition.Transition
    public TransitionSet setDuration(long j) {
        ArrayList<Transition> arrayList;
        super.setDuration(j);
        if (this.mDuration >= 0 && (arrayList = this.mTransitions) != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.mTransitions.get(i).setDuration(j);
            }
        }
        return this;
    }

    @Override // androidx.transition.Transition
    public TransitionSet setStartDelay(long j) {
        return (TransitionSet) super.setStartDelay(j);
    }

    @Override // androidx.transition.Transition
    public TransitionSet setInterpolator(TimeInterpolator timeInterpolator) {
        this.mChangeFlags |= 1;
        ArrayList<Transition> arrayList = this.mTransitions;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.mTransitions.get(i).setInterpolator(timeInterpolator);
            }
        }
        return (TransitionSet) super.setInterpolator(timeInterpolator);
    }

    @Override // androidx.transition.Transition
    public TransitionSet addTarget(View view) {
        for (int i = 0; i < this.mTransitions.size(); i++) {
            this.mTransitions.get(i).addTarget(view);
        }
        return (TransitionSet) super.addTarget(view);
    }

    @Override // androidx.transition.Transition
    public TransitionSet addTarget(int i) {
        for (int i2 = 0; i2 < this.mTransitions.size(); i2++) {
            this.mTransitions.get(i2).addTarget(i);
        }
        return (TransitionSet) super.addTarget(i);
    }

    @Override // androidx.transition.Transition
    public TransitionSet addTarget(String str) {
        for (int i = 0; i < this.mTransitions.size(); i++) {
            this.mTransitions.get(i).addTarget(str);
        }
        return (TransitionSet) super.addTarget(str);
    }

    @Override // androidx.transition.Transition
    public TransitionSet addTarget(Class<?> cls) {
        for (int i = 0; i < this.mTransitions.size(); i++) {
            this.mTransitions.get(i).addTarget(cls);
        }
        return (TransitionSet) super.addTarget(cls);
    }

    @Override // androidx.transition.Transition
    public TransitionSet addListener(Transition.TransitionListener transitionListener) {
        return (TransitionSet) super.addListener(transitionListener);
    }

    @Override // androidx.transition.Transition
    public TransitionSet removeTarget(int i) {
        for (int i2 = 0; i2 < this.mTransitions.size(); i2++) {
            this.mTransitions.get(i2).removeTarget(i);
        }
        return (TransitionSet) super.removeTarget(i);
    }

    @Override // androidx.transition.Transition
    public TransitionSet removeTarget(View view) {
        for (int i = 0; i < this.mTransitions.size(); i++) {
            this.mTransitions.get(i).removeTarget(view);
        }
        return (TransitionSet) super.removeTarget(view);
    }

    @Override // androidx.transition.Transition
    public TransitionSet removeTarget(Class<?> cls) {
        for (int i = 0; i < this.mTransitions.size(); i++) {
            this.mTransitions.get(i).removeTarget(cls);
        }
        return (TransitionSet) super.removeTarget(cls);
    }

    @Override // androidx.transition.Transition
    public TransitionSet removeTarget(String str) {
        for (int i = 0; i < this.mTransitions.size(); i++) {
            this.mTransitions.get(i).removeTarget(str);
        }
        return (TransitionSet) super.removeTarget(str);
    }

    @Override // androidx.transition.Transition
    public Transition excludeTarget(View view, boolean z) {
        for (int i = 0; i < this.mTransitions.size(); i++) {
            this.mTransitions.get(i).excludeTarget(view, z);
        }
        return super.excludeTarget(view, z);
    }

    @Override // androidx.transition.Transition
    public Transition excludeTarget(String str, boolean z) {
        for (int i = 0; i < this.mTransitions.size(); i++) {
            this.mTransitions.get(i).excludeTarget(str, z);
        }
        return super.excludeTarget(str, z);
    }

    @Override // androidx.transition.Transition
    public Transition excludeTarget(int i, boolean z) {
        for (int i2 = 0; i2 < this.mTransitions.size(); i2++) {
            this.mTransitions.get(i2).excludeTarget(i, z);
        }
        return super.excludeTarget(i, z);
    }

    @Override // androidx.transition.Transition
    public Transition excludeTarget(Class<?> cls, boolean z) {
        for (int i = 0; i < this.mTransitions.size(); i++) {
            this.mTransitions.get(i).excludeTarget(cls, z);
        }
        return super.excludeTarget(cls, z);
    }

    @Override // androidx.transition.Transition
    public TransitionSet removeListener(Transition.TransitionListener transitionListener) {
        return (TransitionSet) super.removeListener(transitionListener);
    }

    @Override // androidx.transition.Transition
    public void setPathMotion(PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.mChangeFlags |= 4;
        if (this.mTransitions != null) {
            for (int i = 0; i < this.mTransitions.size(); i++) {
                this.mTransitions.get(i).setPathMotion(pathMotion);
            }
        }
    }

    public TransitionSet removeTransition(Transition transition) {
        this.mTransitions.remove(transition);
        transition.mParent = null;
        return this;
    }

    private void setupStartEndListeners() {
        TransitionSetListener transitionSetListener = new TransitionSetListener(this);
        ArrayList<Transition> arrayList = this.mTransitions;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Transition transition = arrayList.get(i);
            i++;
            transition.addListener(transitionSetListener);
        }
        this.mCurrentListeners = this.mTransitions.size();
    }

    public static class TransitionSetListener extends TransitionListenerAdapter {
        TransitionSet mTransitionSet;

        public TransitionSetListener(TransitionSet transitionSet) {
            this.mTransitionSet = transitionSet;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionStart(Transition transition) {
            TransitionSet transitionSet = this.mTransitionSet;
            if (transitionSet.mStarted) {
                return;
            }
            transitionSet.start();
            this.mTransitionSet.mStarted = true;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            TransitionSet transitionSet = this.mTransitionSet;
            int i = transitionSet.mCurrentListeners - 1;
            transitionSet.mCurrentListeners = i;
            if (i == 0) {
                transitionSet.mStarted = false;
                transitionSet.end();
            }
            transition.removeListener(this);
        }
    }

    @Override // androidx.transition.Transition
    public void createAnimators(ViewGroup viewGroup, TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2, ArrayList<TransitionValues> arrayList, ArrayList<TransitionValues> arrayList2) {
        long startDelay = getStartDelay();
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            Transition transition = this.mTransitions.get(i);
            if (startDelay > 0 && (this.mPlayTogether || i == 0)) {
                long startDelay2 = transition.getStartDelay();
                if (startDelay2 > 0) {
                    transition.setStartDelay(startDelay2 + startDelay);
                } else {
                    transition.setStartDelay(startDelay);
                }
            }
            transition.createAnimators(viewGroup, transitionValuesMaps, transitionValuesMaps2, arrayList, arrayList2);
        }
    }

    @Override // androidx.transition.Transition
    public void runAnimators() {
        ArrayList<Transition> arrayList;
        if (this.mTransitions.isEmpty()) {
            start();
            end();
            return;
        }
        setupStartEndListeners();
        int i = 0;
        if (!this.mPlayTogether) {
            int i2 = 1;
            while (true) {
                int size = this.mTransitions.size();
                arrayList = this.mTransitions;
                if (i2 >= size) {
                    break;
                }
                Transition transition = arrayList.get(i2 - 1);
                final Transition transition2 = this.mTransitions.get(i2);
                transition.addListener(new TransitionListenerAdapter() { // from class: androidx.transition.TransitionSet.1
                    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                    public void onTransitionEnd(Transition transition3) {
                        transition2.runAnimators();
                        transition3.removeListener(this);
                    }
                });
                i2++;
            }
            Transition transition3 = arrayList.get(0);
            if (transition3 != null) {
                transition3.runAnimators();
                return;
            }
            return;
        }
        ArrayList<Transition> arrayList2 = this.mTransitions;
        int size2 = arrayList2.size();
        while (i < size2) {
            Transition transition4 = arrayList2.get(i);
            i++;
            transition4.runAnimators();
        }
    }

    @Override // androidx.transition.Transition
    public boolean hasAnimators() {
        for (int i = 0; i < this.mTransitions.size(); i++) {
            if (this.mTransitions.get(i).hasAnimators()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.transition.Transition
    public void prepareAnimatorsForSeeking() {
        this.mTotalDuration = 0L;
        TransitionListenerAdapter transitionListenerAdapter = new TransitionListenerAdapter() { // from class: androidx.transition.TransitionSet.2
            @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            public void onTransitionCancel(Transition transition) {
                TransitionSet.this.mTransitions.remove(transition);
                if (TransitionSet.this.hasAnimators()) {
                    return;
                }
                TransitionSet.this.notifyListeners(Transition.TransitionNotification.ON_CANCEL, false);
                TransitionSet transitionSet = TransitionSet.this;
                transitionSet.mEnded = true;
                transitionSet.notifyListeners(Transition.TransitionNotification.ON_END, false);
            }
        };
        for (int i = 0; i < this.mTransitions.size(); i++) {
            Transition transition = this.mTransitions.get(i);
            transition.addListener(transitionListenerAdapter);
            transition.prepareAnimatorsForSeeking();
            long totalDurationMillis = transition.getTotalDurationMillis();
            boolean z = this.mPlayTogether;
            long j = this.mTotalDuration;
            if (z) {
                this.mTotalDuration = Math.max(j, totalDurationMillis);
            } else {
                transition.mSeekOffsetInParent = j;
                this.mTotalDuration = j + totalDurationMillis;
            }
        }
    }

    private int indexOfTransition(long j) {
        int i = 1;
        while (true) {
            int size = this.mTransitions.size();
            ArrayList<Transition> arrayList = this.mTransitions;
            if (i >= size) {
                return arrayList.size() - 1;
            }
            if (arrayList.get(i).mSeekOffsetInParent > j) {
                return i - 1;
            }
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    @Override // androidx.transition.Transition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setCurrentPlayTimeMillis(long j, long j2) {
        long j3;
        long totalDurationMillis = getTotalDurationMillis();
        long j4 = 0;
        if (this.mParent != null) {
            if (j < 0 && j2 < 0) {
                return;
            }
            if (j > totalDurationMillis && j2 > totalDurationMillis) {
                return;
            }
        }
        boolean z = j < j2;
        if ((j >= 0 && j2 < 0) || (j <= totalDurationMillis && j2 > totalDurationMillis)) {
            this.mEnded = false;
            notifyListeners(Transition.TransitionNotification.ON_START, z);
        }
        if (this.mPlayTogether) {
            for (int i = 0; i < this.mTransitions.size(); i++) {
                this.mTransitions.get(i).setCurrentPlayTimeMillis(j, j2);
            }
        } else {
            int iIndexOfTransition = indexOfTransition(j2);
            if (j >= j2) {
                while (iIndexOfTransition < this.mTransitions.size()) {
                    Transition transition = this.mTransitions.get(iIndexOfTransition);
                    long j5 = transition.mSeekOffsetInParent;
                    j3 = j4;
                    long j6 = j - j5;
                    if (j6 < j3) {
                        break;
                    }
                    transition.setCurrentPlayTimeMillis(j6, j2 - j5);
                    iIndexOfTransition++;
                    j4 = j3;
                }
            } else {
                j3 = 0;
                while (iIndexOfTransition >= 0) {
                    Transition transition2 = this.mTransitions.get(iIndexOfTransition);
                    long j7 = transition2.mSeekOffsetInParent;
                    long j8 = j - j7;
                    transition2.setCurrentPlayTimeMillis(j8, j2 - j7);
                    if (j8 >= 0) {
                        break;
                    } else {
                        iIndexOfTransition--;
                    }
                }
            }
            if (this.mParent == null) {
                if ((j <= totalDurationMillis || j2 > totalDurationMillis) && (j >= 0 || j2 < j3)) {
                    return;
                }
                if (j > totalDurationMillis) {
                    this.mEnded = true;
                }
                notifyListeners(Transition.TransitionNotification.ON_END, z);
                return;
            }
            return;
        }
        j3 = j4;
        if (this.mParent == null) {
        }
    }

    @Override // androidx.transition.Transition
    public boolean isSeekingSupported() {
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            if (!this.mTransitions.get(i).isSeekingSupported()) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(TransitionValues transitionValues) {
        if (isValidTarget(transitionValues.view)) {
            ArrayList<Transition> arrayList = this.mTransitions;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Transition transition = arrayList.get(i);
                i++;
                Transition transition2 = transition;
                if (transition2.isValidTarget(transitionValues.view)) {
                    transition2.captureStartValues(transitionValues);
                    transitionValues.mTargetedTransitions.add(transition2);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(TransitionValues transitionValues) {
        if (isValidTarget(transitionValues.view)) {
            ArrayList<Transition> arrayList = this.mTransitions;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Transition transition = arrayList.get(i);
                i++;
                Transition transition2 = transition;
                if (transition2.isValidTarget(transitionValues.view)) {
                    transition2.captureEndValues(transitionValues);
                    transitionValues.mTargetedTransitions.add(transition2);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    public void capturePropagationValues(TransitionValues transitionValues) {
        super.capturePropagationValues(transitionValues);
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            this.mTransitions.get(i).capturePropagationValues(transitionValues);
        }
    }

    @Override // androidx.transition.Transition
    public void pause(View view) {
        super.pause(view);
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            this.mTransitions.get(i).pause(view);
        }
    }

    @Override // androidx.transition.Transition
    public void resume(View view) {
        super.resume(view);
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            this.mTransitions.get(i).resume(view);
        }
    }

    @Override // androidx.transition.Transition
    public void cancel() {
        super.cancel();
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            this.mTransitions.get(i).cancel();
        }
    }

    @Override // androidx.transition.Transition
    public void forceToEnd(ViewGroup viewGroup) {
        super.forceToEnd(viewGroup);
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            this.mTransitions.get(i).forceToEnd(viewGroup);
        }
    }

    @Override // androidx.transition.Transition
    public void setCanRemoveViews(boolean z) {
        super.setCanRemoveViews(z);
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            this.mTransitions.get(i).setCanRemoveViews(z);
        }
    }

    @Override // androidx.transition.Transition
    public void setPropagation(TransitionPropagation transitionPropagation) {
        super.setPropagation(transitionPropagation);
        this.mChangeFlags |= 2;
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            this.mTransitions.get(i).setPropagation(transitionPropagation);
        }
    }

    @Override // androidx.transition.Transition
    public void setEpicenterCallback(Transition.EpicenterCallback epicenterCallback) {
        super.setEpicenterCallback(epicenterCallback);
        this.mChangeFlags |= 8;
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            this.mTransitions.get(i).setEpicenterCallback(epicenterCallback);
        }
    }

    @Override // androidx.transition.Transition
    public String toString(String str) {
        String string = super.toString(str);
        for (int i = 0; i < this.mTransitions.size(); i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(string);
            sb.append("\n");
            sb.append(this.mTransitions.get(i).toString(str + "  "));
            string = sb.toString();
        }
        return string;
    }

    @Override // androidx.transition.Transition
    /* JADX INFO: renamed from: clone */
    public Transition mo2033clone() {
        TransitionSet transitionSet = (TransitionSet) super.mo2033clone();
        transitionSet.mTransitions = new ArrayList<>();
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            transitionSet.addTransitionInternal(this.mTransitions.get(i).mo2033clone());
        }
        return transitionSet;
    }
}
