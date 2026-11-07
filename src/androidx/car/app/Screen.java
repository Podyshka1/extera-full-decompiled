package androidx.car.app;

import android.util.Log;
import androidx.car.app.model.Template;
import androidx.car.app.model.TemplateInfo;
import androidx.car.app.model.TemplateWrapper;
import androidx.car.app.utils.ThreadUtils;
import androidx.view.Lifecycle;
import androidx.view.LifecycleOwner;
import androidx.view.LifecycleRegistry;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Screen implements LifecycleOwner {
    private final CarContext mCarContext;
    private final LifecycleRegistry mLifecycleRegistry = new LifecycleRegistry(this);
    private OnScreenResultListener mOnScreenResultListener = new OnScreenResultListener() { // from class: androidx.car.app.Screen$$ExternalSyntheticLambda0
        @Override // androidx.car.app.OnScreenResultListener
        public final void onScreenResult(Object obj) {
            Screen.$r8$lambda$zxVt3BlwxQf66mOTwWveM9jjlDw(obj);
        }
    };
    private Object mResult;
    private TemplateWrapper mTemplateWrapper;
    private boolean mUseLastTemplateId;

    public static /* synthetic */ void $r8$lambda$zxVt3BlwxQf66mOTwWveM9jjlDw(Object obj) {
    }

    public abstract Template onGetTemplate();

    public Screen(CarContext carContext) {
        Objects.requireNonNull(carContext);
        this.mCarContext = carContext;
    }

    public final void invalidate() {
        if (getLifecycle().getState().isAtLeast(Lifecycle.State.STARTED)) {
            ((AppManager) this.mCarContext.getCarService(AppManager.class)).invalidate();
        }
    }

    @Override // androidx.view.LifecycleOwner
    public final Lifecycle getLifecycle() {
        return this.mLifecycleRegistry;
    }

    public final CarContext getCarContext() {
        return this.mCarContext;
    }

    public final ScreenManager getScreenManager() {
        return (ScreenManager) this.mCarContext.getCarService(ScreenManager.class);
    }

    public void dispatchLifecycleEvent(final Lifecycle.Event event) {
        ThreadUtils.runOnMain(new Runnable() { // from class: androidx.car.app.Screen$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Screen.m1759$r8$lambda$1fy9bSyOIB5ckm4u8XzevkC8wY(this.f$0, event);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$1fy9bSyOIB5ckm4-u8XzevkC8wY, reason: not valid java name */
    public static /* synthetic */ void m1759$r8$lambda$1fy9bSyOIB5ckm4u8XzevkC8wY(Screen screen, Lifecycle.Event event) {
        if (screen.mLifecycleRegistry.getState().isAtLeast(Lifecycle.State.INITIALIZED)) {
            if (event == Lifecycle.Event.ON_DESTROY) {
                screen.mOnScreenResultListener.onScreenResult(screen.mResult);
            }
            screen.mLifecycleRegistry.handleLifecycleEvent(event);
        }
    }

    public TemplateWrapper getTemplateWrapper() {
        TemplateWrapper templateWrapperWrap;
        TemplateWrapper templateWrapper;
        Template templateOnGetTemplate = onGetTemplate();
        if (this.mUseLastTemplateId && (templateWrapper = this.mTemplateWrapper) != null) {
            templateWrapperWrap = TemplateWrapper.wrap(templateOnGetTemplate, getLastTemplateInfo(templateWrapper).getTemplateId());
        } else {
            templateWrapperWrap = TemplateWrapper.wrap(templateOnGetTemplate);
        }
        this.mUseLastTemplateId = false;
        this.mTemplateWrapper = templateWrapperWrap;
        if (Log.isLoggable("CarApp", 3)) {
            Log.d("CarApp", "Returning " + templateOnGetTemplate + " from screen " + this);
        }
        return templateWrapperWrap;
    }

    public TemplateInfo getLastTemplateInfo() {
        if (this.mTemplateWrapper == null) {
            this.mTemplateWrapper = TemplateWrapper.wrap(onGetTemplate());
        }
        return new TemplateInfo(this.mTemplateWrapper.getTemplate().getClass(), this.mTemplateWrapper.getId());
    }

    private static TemplateInfo getLastTemplateInfo(TemplateWrapper templateWrapper) {
        return new TemplateInfo(templateWrapper.getTemplate().getClass(), templateWrapper.getId());
    }

    public void setUseLastTemplateId(boolean z) {
        this.mUseLastTemplateId = z;
    }
}
