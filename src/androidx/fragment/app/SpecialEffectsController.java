package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.os.CancellationSignal;
import androidx.core.view.ViewCompat;
import androidx.fragment.R$id;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
abstract class SpecialEffectsController {
    private final ViewGroup mContainer;
    final ArrayList<Operation> mPendingOperations = new ArrayList<>();
    final ArrayList<Operation> mRunningOperations = new ArrayList<>();
    boolean mOperationDirectionIsPop = false;
    boolean mIsContainerPostponed = false;

    public abstract void executeOperations(List<Operation> list, boolean z);

    public static SpecialEffectsController getOrCreateController(ViewGroup viewGroup, FragmentManager fragmentManager) {
        return getOrCreateController(viewGroup, fragmentManager.getSpecialEffectsControllerFactory());
    }

    public static SpecialEffectsController getOrCreateController(ViewGroup viewGroup, SpecialEffectsControllerFactory specialEffectsControllerFactory) {
        Object tag = viewGroup.getTag(R$id.special_effects_controller_view_tag);
        if (tag instanceof SpecialEffectsController) {
            return (SpecialEffectsController) tag;
        }
        SpecialEffectsController specialEffectsControllerCreateController = specialEffectsControllerFactory.createController(viewGroup);
        viewGroup.setTag(R$id.special_effects_controller_view_tag, specialEffectsControllerCreateController);
        return specialEffectsControllerCreateController;
    }

    public SpecialEffectsController(ViewGroup viewGroup) {
        this.mContainer = viewGroup;
    }

    public ViewGroup getContainer() {
        return this.mContainer;
    }

    public Operation.LifecycleImpact getAwaitingCompletionLifecycleImpact(FragmentStateManager fragmentStateManager) {
        Operation operationFindPendingOperation = findPendingOperation(fragmentStateManager.getFragment());
        Operation.LifecycleImpact lifecycleImpact = operationFindPendingOperation != null ? operationFindPendingOperation.getLifecycleImpact() : null;
        Operation operationFindRunningOperation = findRunningOperation(fragmentStateManager.getFragment());
        return (operationFindRunningOperation == null || !(lifecycleImpact == null || lifecycleImpact == Operation.LifecycleImpact.NONE)) ? lifecycleImpact : operationFindRunningOperation.getLifecycleImpact();
    }

    private Operation findPendingOperation(Fragment fragment) {
        ArrayList<Operation> arrayList = this.mPendingOperations;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Operation operation = arrayList.get(i);
            i++;
            Operation operation2 = operation;
            if (operation2.getFragment().equals(fragment) && !operation2.isCanceled()) {
                return operation2;
            }
        }
        return null;
    }

    private Operation findRunningOperation(Fragment fragment) {
        ArrayList<Operation> arrayList = this.mRunningOperations;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Operation operation = arrayList.get(i);
            i++;
            Operation operation2 = operation;
            if (operation2.getFragment().equals(fragment) && !operation2.isCanceled()) {
                return operation2;
            }
        }
        return null;
    }

    public void enqueueAdd(Operation.State state, FragmentStateManager fragmentStateManager) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + fragmentStateManager.getFragment());
        }
        enqueue(state, Operation.LifecycleImpact.ADDING, fragmentStateManager);
    }

    public void enqueueShow(FragmentStateManager fragmentStateManager) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + fragmentStateManager.getFragment());
        }
        enqueue(Operation.State.VISIBLE, Operation.LifecycleImpact.NONE, fragmentStateManager);
    }

    public void enqueueHide(FragmentStateManager fragmentStateManager) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + fragmentStateManager.getFragment());
        }
        enqueue(Operation.State.GONE, Operation.LifecycleImpact.NONE, fragmentStateManager);
    }

    public void enqueueRemove(FragmentStateManager fragmentStateManager) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + fragmentStateManager.getFragment());
        }
        enqueue(Operation.State.REMOVED, Operation.LifecycleImpact.REMOVING, fragmentStateManager);
    }

    private void enqueue(Operation.State state, Operation.LifecycleImpact lifecycleImpact, FragmentStateManager fragmentStateManager) {
        synchronized (this.mPendingOperations) {
            try {
                CancellationSignal cancellationSignal = new CancellationSignal();
                Operation operationFindPendingOperation = findPendingOperation(fragmentStateManager.getFragment());
                if (operationFindPendingOperation != null) {
                    operationFindPendingOperation.mergeWith(state, lifecycleImpact);
                    return;
                }
                final FragmentStateManagerOperation fragmentStateManagerOperation = new FragmentStateManagerOperation(state, lifecycleImpact, fragmentStateManager, cancellationSignal);
                this.mPendingOperations.add(fragmentStateManagerOperation);
                fragmentStateManagerOperation.addCompletionListener(new Runnable() { // from class: androidx.fragment.app.SpecialEffectsController.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (SpecialEffectsController.this.mPendingOperations.contains(fragmentStateManagerOperation)) {
                            fragmentStateManagerOperation.getFinalState().applyState(fragmentStateManagerOperation.getFragment().mView);
                        }
                    }
                });
                fragmentStateManagerOperation.addCompletionListener(new Runnable() { // from class: androidx.fragment.app.SpecialEffectsController.2
                    @Override // java.lang.Runnable
                    public void run() {
                        SpecialEffectsController.this.mPendingOperations.remove(fragmentStateManagerOperation);
                        SpecialEffectsController.this.mRunningOperations.remove(fragmentStateManagerOperation);
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void updateOperationDirection(boolean z) {
        this.mOperationDirectionIsPop = z;
    }

    public void markPostponedState() {
        synchronized (this.mPendingOperations) {
            try {
                updateFinalState();
                this.mIsContainerPostponed = false;
                int size = this.mPendingOperations.size() - 1;
                while (true) {
                    if (size < 0) {
                        break;
                    }
                    Operation operation = this.mPendingOperations.get(size);
                    Operation.State stateFrom = Operation.State.from(operation.getFragment().mView);
                    Operation.State finalState = operation.getFinalState();
                    Operation.State state = Operation.State.VISIBLE;
                    if (finalState == state && stateFrom != state) {
                        this.mIsContainerPostponed = operation.getFragment().isPostponed();
                        break;
                    }
                    size--;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void forcePostponedExecutePendingOperations() {
        if (this.mIsContainerPostponed) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Forcing postponed operations");
            }
            this.mIsContainerPostponed = false;
            executePendingOperations();
        }
    }

    public void executePendingOperations() {
        if (this.mIsContainerPostponed) {
            return;
        }
        if (!ViewCompat.isAttachedToWindow(this.mContainer)) {
            forceCompleteAllOperations();
            this.mOperationDirectionIsPop = false;
            return;
        }
        synchronized (this.mPendingOperations) {
            try {
                if (!this.mPendingOperations.isEmpty()) {
                    ArrayList arrayList = new ArrayList(this.mRunningOperations);
                    this.mRunningOperations.clear();
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        Operation operation = (Operation) obj;
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + operation);
                        }
                        operation.cancel();
                        if (!operation.isComplete()) {
                            this.mRunningOperations.add(operation);
                        }
                    }
                    updateFinalState();
                    ArrayList arrayList2 = new ArrayList(this.mPendingOperations);
                    this.mPendingOperations.clear();
                    this.mRunningOperations.addAll(arrayList2);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Executing pending operations");
                    }
                    int size2 = arrayList2.size();
                    int i2 = 0;
                    while (i2 < size2) {
                        Object obj2 = arrayList2.get(i2);
                        i2++;
                        ((Operation) obj2).onStart();
                    }
                    executeOperations(arrayList2, this.mOperationDirectionIsPop);
                    this.mOperationDirectionIsPop = false;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Finished executing pending operations");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void forceCompleteAllOperations() {
        String str;
        String str2;
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Forcing all operations to complete");
        }
        boolean zIsAttachedToWindow = ViewCompat.isAttachedToWindow(this.mContainer);
        synchronized (this.mPendingOperations) {
            try {
                updateFinalState();
                ArrayList<Operation> arrayList = this.mPendingOperations;
                int size = arrayList.size();
                int i = 0;
                int i2 = 0;
                while (i2 < size) {
                    Operation operation = arrayList.get(i2);
                    i2++;
                    operation.onStart();
                }
                ArrayList arrayList2 = new ArrayList(this.mRunningOperations);
                int size2 = arrayList2.size();
                int i3 = 0;
                while (i3 < size2) {
                    Object obj = arrayList2.get(i3);
                    i3++;
                    Operation operation2 = (Operation) obj;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: ");
                        if (zIsAttachedToWindow) {
                            str2 = _UrlKt.FRAGMENT_ENCODE_SET;
                        } else {
                            str2 = "Container " + this.mContainer + " is not attached to window. ";
                        }
                        sb.append(str2);
                        sb.append("Cancelling running operation ");
                        sb.append(operation2);
                        Log.v("FragmentManager", sb.toString());
                    }
                    operation2.cancel();
                }
                ArrayList arrayList3 = new ArrayList(this.mPendingOperations);
                int size3 = arrayList3.size();
                while (i < size3) {
                    Object obj2 = arrayList3.get(i);
                    i++;
                    Operation operation3 = (Operation) obj2;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: ");
                        if (zIsAttachedToWindow) {
                            str = _UrlKt.FRAGMENT_ENCODE_SET;
                        } else {
                            str = "Container " + this.mContainer + " is not attached to window. ";
                        }
                        sb2.append(str);
                        sb2.append("Cancelling pending operation ");
                        sb2.append(operation3);
                        Log.v("FragmentManager", sb2.toString());
                    }
                    operation3.cancel();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void updateFinalState() {
        ArrayList<Operation> arrayList = this.mPendingOperations;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Operation operation = arrayList.get(i);
            i++;
            Operation operation2 = operation;
            if (operation2.getLifecycleImpact() == Operation.LifecycleImpact.ADDING) {
                operation2.mergeWith(Operation.State.from(operation2.getFragment().requireView().getVisibility()), Operation.LifecycleImpact.NONE);
            }
        }
    }

    public static class Operation {
        private State mFinalState;
        private final Fragment mFragment;
        private LifecycleImpact mLifecycleImpact;
        private final List<Runnable> mCompletionListeners = new ArrayList();
        private final HashSet<CancellationSignal> mSpecialEffectsSignals = new HashSet<>();
        private boolean mIsCanceled = false;
        private boolean mIsComplete = false;

        public enum LifecycleImpact {
            NONE,
            ADDING,
            REMOVING
        }

        public abstract void onStart();

        public enum State {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            public static State from(View view) {
                if (view.getAlpha() == 0.0f && view.getVisibility() == 0) {
                    return INVISIBLE;
                }
                return from(view.getVisibility());
            }

            public static State from(int i) {
                if (i == 0) {
                    return VISIBLE;
                }
                if (i == 4) {
                    return INVISIBLE;
                }
                if (i == 8) {
                    return GONE;
                }
                CharCodeKt$$ExternalSyntheticBUOutline0.m752m("Unknown visibility ", i);
                return null;
            }

            public void applyState(View view) {
                int i = C06263.f20xe493b431[ordinal()];
                if (i == 1) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                        }
                        viewGroup.removeView(view);
                        return;
                    }
                    return;
                }
                if (i == 2) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
                    }
                    view.setVisibility(0);
                    return;
                }
                if (i == 3) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
                    }
                    view.setVisibility(8);
                    return;
                }
                if (i != 4) {
                    return;
                }
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
                }
                view.setVisibility(4);
            }
        }

        public Operation(State state, LifecycleImpact lifecycleImpact, Fragment fragment, CancellationSignal cancellationSignal) {
            this.mFinalState = state;
            this.mLifecycleImpact = lifecycleImpact;
            this.mFragment = fragment;
            cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.SpecialEffectsController.Operation.1
                @Override // androidx.core.os.CancellationSignal.OnCancelListener
                public void onCancel() {
                    Operation.this.cancel();
                }
            });
        }

        public State getFinalState() {
            return this.mFinalState;
        }

        public LifecycleImpact getLifecycleImpact() {
            return this.mLifecycleImpact;
        }

        public final Fragment getFragment() {
            return this.mFragment;
        }

        public final boolean isCanceled() {
            return this.mIsCanceled;
        }

        public String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + this.mFinalState + "} {mLifecycleImpact = " + this.mLifecycleImpact + "} {mFragment = " + this.mFragment + "}";
        }

        public final void cancel() {
            if (isCanceled()) {
                return;
            }
            this.mIsCanceled = true;
            if (this.mSpecialEffectsSignals.isEmpty()) {
                complete();
                return;
            }
            ArrayList arrayList = new ArrayList(this.mSpecialEffectsSignals);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((CancellationSignal) obj).cancel();
            }
        }

        public final void mergeWith(State state, LifecycleImpact lifecycleImpact) {
            int i = C06263.f19xb9e640f0[lifecycleImpact.ordinal()];
            if (i == 1) {
                if (this.mFinalState == State.REMOVED) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.mFragment + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.mLifecycleImpact + " to ADDING.");
                    }
                    this.mFinalState = State.VISIBLE;
                    this.mLifecycleImpact = LifecycleImpact.ADDING;
                    return;
                }
                return;
            }
            if (i == 2) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.mFragment + " mFinalState = " + this.mFinalState + " -> REMOVED. mLifecycleImpact  = " + this.mLifecycleImpact + " to REMOVING.");
                }
                this.mFinalState = State.REMOVED;
                this.mLifecycleImpact = LifecycleImpact.REMOVING;
                return;
            }
            if (i == 3 && this.mFinalState != State.REMOVED) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.mFragment + " mFinalState = " + this.mFinalState + " -> " + state + ". ");
                }
                this.mFinalState = state;
            }
        }

        public final void addCompletionListener(Runnable runnable) {
            this.mCompletionListeners.add(runnable);
        }

        public final void markStartedSpecialEffect(CancellationSignal cancellationSignal) {
            onStart();
            this.mSpecialEffectsSignals.add(cancellationSignal);
        }

        public final void completeSpecialEffect(CancellationSignal cancellationSignal) {
            if (this.mSpecialEffectsSignals.remove(cancellationSignal) && this.mSpecialEffectsSignals.isEmpty()) {
                complete();
            }
        }

        public final boolean isComplete() {
            return this.mIsComplete;
        }

        public void complete() {
            if (this.mIsComplete) {
                return;
            }
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.mIsComplete = true;
            Iterator<Runnable> it = this.mCompletionListeners.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.SpecialEffectsController$3 */
    public static /* synthetic */ class C06263 {

        /* JADX INFO: renamed from: $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact */
        static final /* synthetic */ int[] f19xb9e640f0;

        /* JADX INFO: renamed from: $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State */
        static final /* synthetic */ int[] f20xe493b431;

        static {
            int[] iArr = new int[Operation.LifecycleImpact.values().length];
            f19xb9e640f0 = iArr;
            try {
                iArr[Operation.LifecycleImpact.ADDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19xb9e640f0[Operation.LifecycleImpact.REMOVING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19xb9e640f0[Operation.LifecycleImpact.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Operation.State.values().length];
            f20xe493b431 = iArr2;
            try {
                iArr2[Operation.State.REMOVED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f20xe493b431[Operation.State.VISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f20xe493b431[Operation.State.GONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f20xe493b431[Operation.State.INVISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static class FragmentStateManagerOperation extends Operation {
        private final FragmentStateManager mFragmentStateManager;

        public FragmentStateManagerOperation(Operation.State state, Operation.LifecycleImpact lifecycleImpact, FragmentStateManager fragmentStateManager, CancellationSignal cancellationSignal) {
            super(state, lifecycleImpact, fragmentStateManager.getFragment(), cancellationSignal);
            this.mFragmentStateManager = fragmentStateManager;
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        public void onStart() {
            if (getLifecycleImpact() == Operation.LifecycleImpact.ADDING) {
                Fragment fragment = this.mFragmentStateManager.getFragment();
                View viewFindFocus = fragment.mView.findFocus();
                if (viewFindFocus != null) {
                    fragment.setFocusedView(viewFindFocus);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + fragment);
                    }
                }
                View viewRequireView = getFragment().requireView();
                if (viewRequireView.getParent() == null) {
                    this.mFragmentStateManager.addViewToContainer();
                    viewRequireView.setAlpha(0.0f);
                }
                if (viewRequireView.getAlpha() == 0.0f && viewRequireView.getVisibility() == 0) {
                    viewRequireView.setVisibility(4);
                }
                viewRequireView.setAlpha(fragment.getPostOnViewCreatedAlpha());
                return;
            }
            if (getLifecycleImpact() == Operation.LifecycleImpact.REMOVING) {
                Fragment fragment2 = this.mFragmentStateManager.getFragment();
                View viewRequireView2 = fragment2.requireView();
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "Clearing focus " + viewRequireView2.findFocus() + " on view " + viewRequireView2 + " for Fragment " + fragment2);
                }
                viewRequireView2.clearFocus();
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        public void complete() {
            super.complete();
            this.mFragmentStateManager.moveToExpectedState();
        }
    }
}
