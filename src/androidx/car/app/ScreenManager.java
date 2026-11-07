package androidx.car.app;

import android.util.Log;
import androidx.car.app.managers.Manager;
import androidx.car.app.model.TemplateWrapper;
import androidx.car.app.utils.ThreadUtils;
import androidx.view.DefaultLifecycleObserver;
import androidx.view.Lifecycle;
import androidx.view.LifecycleOwner;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class ScreenManager implements Manager {
    private final Lifecycle mAppLifecycle;
    private final CarContext mCarContext;
    private final Deque<Screen> mScreenStack = new ArrayDeque();

    public Screen getTop() {
        ThreadUtils.checkMainThread();
        Screen screenPeek = this.mScreenStack.peek();
        Objects.requireNonNull(screenPeek);
        return screenPeek;
    }

    public void push(Screen screen) {
        ThreadUtils.checkMainThread();
        if (this.mAppLifecycle.getState().equals(Lifecycle.State.DESTROYED)) {
            if (Log.isLoggable("CarApp", 3)) {
                Log.d("CarApp", "Pushing screens after the DESTROYED state is a no-op");
            }
        } else {
            Objects.requireNonNull(screen);
            pushInternal(screen);
        }
    }

    public void pop() {
        ThreadUtils.checkMainThread();
        if (this.mAppLifecycle.getState().equals(Lifecycle.State.DESTROYED)) {
            if (Log.isLoggable("CarApp", 3)) {
                Log.d("CarApp", "Popping screens after the DESTROYED state is a no-op");
            }
        } else if (this.mScreenStack.size() > 1) {
            popInternal(Collections.singletonList(this.mScreenStack.pop()));
        }
    }

    public static ScreenManager create(CarContext carContext, Lifecycle lifecycle) {
        return new ScreenManager(carContext, lifecycle);
    }

    public TemplateWrapper getTopTemplate() {
        ThreadUtils.checkMainThread();
        Screen top = getTop();
        if (Log.isLoggable("CarApp", 3)) {
            Log.d("CarApp", "Requesting template from Screen " + top);
        }
        TemplateWrapper templateWrapper = top.getTemplateWrapper();
        ArrayList arrayList = new ArrayList();
        Iterator<Screen> it = this.mScreenStack.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getLastTemplateInfo());
        }
        templateWrapper.setTemplateInfosForScreenStack(arrayList);
        return templateWrapper;
    }

    public void destroyAndClearScreenStack() {
        Iterator it = new ArrayDeque(this.mScreenStack).iterator();
        while (it.hasNext()) {
            stop((Screen) it.next(), true);
        }
        this.mScreenStack.clear();
    }

    public Deque<Screen> getScreenStackInternal() {
        return this.mScreenStack;
    }

    private void pushInternal(Screen screen) {
        if (Log.isLoggable("CarApp", 3)) {
            Log.d("CarApp", "Pushing screen " + screen + " to the top of the screen stack");
        }
        if (this.mScreenStack.contains(screen)) {
            moveToTop(screen);
            return;
        }
        Screen screenPeek = this.mScreenStack.peek();
        pushAndStart(screen, true);
        if (this.mScreenStack.contains(screen)) {
            if (screenPeek != null) {
                stop(screenPeek, false);
            }
            if (this.mAppLifecycle.getState().isAtLeast(Lifecycle.State.RESUMED)) {
                screen.dispatchLifecycleEvent(Lifecycle.Event.ON_RESUME);
            }
        }
    }

    private void popInternal(List<Screen> list) {
        Screen top = getTop();
        top.setUseLastTemplateId(true);
        ((AppManager) this.mCarContext.getCarService(AppManager.class)).invalidate();
        if (this.mAppLifecycle.getState().isAtLeast(Lifecycle.State.STARTED)) {
            top.dispatchLifecycleEvent(Lifecycle.Event.ON_START);
        }
        for (Screen screen : list) {
            if (Log.isLoggable("CarApp", 3)) {
                Log.d("CarApp", "Popping screen " + screen + " off the screen stack");
            }
            stop(screen, true);
        }
        if (Log.isLoggable("CarApp", 3)) {
            Log.d("CarApp", "Screen " + top + " is at the top of the screen stack");
        }
        if (this.mAppLifecycle.getState().isAtLeast(Lifecycle.State.RESUMED) && this.mScreenStack.contains(top)) {
            top.dispatchLifecycleEvent(Lifecycle.Event.ON_RESUME);
        }
    }

    private void pushAndStart(Screen screen, boolean z) {
        this.mScreenStack.push(screen);
        if (z && this.mAppLifecycle.getState().isAtLeast(Lifecycle.State.CREATED)) {
            screen.dispatchLifecycleEvent(Lifecycle.Event.ON_CREATE);
        }
        if (screen.getLifecycle().getState().isAtLeast(Lifecycle.State.CREATED) && this.mAppLifecycle.getState().isAtLeast(Lifecycle.State.STARTED)) {
            ((AppManager) this.mCarContext.getCarService(AppManager.class)).invalidate();
            screen.dispatchLifecycleEvent(Lifecycle.Event.ON_START);
        }
    }

    private void stop(Screen screen, boolean z) {
        Lifecycle.State state = screen.getLifecycle().getState();
        if (state.isAtLeast(Lifecycle.State.RESUMED)) {
            screen.dispatchLifecycleEvent(Lifecycle.Event.ON_PAUSE);
        }
        if (state.isAtLeast(Lifecycle.State.STARTED)) {
            screen.dispatchLifecycleEvent(Lifecycle.Event.ON_STOP);
        }
        if (z) {
            screen.dispatchLifecycleEvent(Lifecycle.Event.ON_DESTROY);
        }
    }

    private void moveToTop(Screen screen) {
        Screen screenPeek = this.mScreenStack.peek();
        if (screenPeek == null || screenPeek == screen) {
            return;
        }
        this.mScreenStack.remove(screen);
        pushAndStart(screen, false);
        stop(screenPeek, false);
        if (this.mAppLifecycle.getState().isAtLeast(Lifecycle.State.RESUMED)) {
            screen.dispatchLifecycleEvent(Lifecycle.Event.ON_RESUME);
        }
    }

    public ScreenManager(CarContext carContext, Lifecycle lifecycle) {
        this.mCarContext = carContext;
        this.mAppLifecycle = lifecycle;
        lifecycle.addObserver(new LifecycleObserverImpl());
    }

    public class LifecycleObserverImpl implements DefaultLifecycleObserver {
        @Override // androidx.view.DefaultLifecycleObserver
        public void onCreate(LifecycleOwner lifecycleOwner) {
        }

        public LifecycleObserverImpl() {
        }

        @Override // androidx.view.DefaultLifecycleObserver
        public void onStart(LifecycleOwner lifecycleOwner) {
            Screen screenPeek = ScreenManager.this.getScreenStackInternal().peek();
            if (screenPeek == null) {
                Log.e("CarApp", "Screen stack was empty during lifecycle onStart");
            } else {
                screenPeek.dispatchLifecycleEvent(Lifecycle.Event.ON_START);
            }
        }

        @Override // androidx.view.DefaultLifecycleObserver
        public void onResume(LifecycleOwner lifecycleOwner) {
            Screen screenPeek = ScreenManager.this.getScreenStackInternal().peek();
            if (screenPeek == null) {
                Log.e("CarApp", "Screen stack was empty during lifecycle onResume");
            } else {
                screenPeek.dispatchLifecycleEvent(Lifecycle.Event.ON_RESUME);
            }
        }

        @Override // androidx.view.DefaultLifecycleObserver
        public void onPause(LifecycleOwner lifecycleOwner) {
            Screen screenPeek = ScreenManager.this.getScreenStackInternal().peek();
            if (screenPeek == null) {
                Log.e("CarApp", "Screen stack was empty during lifecycle onPause");
            } else {
                screenPeek.dispatchLifecycleEvent(Lifecycle.Event.ON_PAUSE);
            }
        }

        @Override // androidx.view.DefaultLifecycleObserver
        public void onStop(LifecycleOwner lifecycleOwner) {
            Screen screenPeek = ScreenManager.this.getScreenStackInternal().peek();
            if (screenPeek == null) {
                Log.e("CarApp", "Screen stack was empty during lifecycle onStop");
            } else {
                screenPeek.dispatchLifecycleEvent(Lifecycle.Event.ON_STOP);
            }
        }

        @Override // androidx.view.DefaultLifecycleObserver
        public void onDestroy(LifecycleOwner lifecycleOwner) {
            ScreenManager.this.destroyAndClearScreenStack();
            lifecycleOwner.getLifecycle().removeObserver(this);
        }
    }
}
