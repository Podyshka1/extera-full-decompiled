package com.yandex.runtime.view;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.view.internal.MemoryPressureListener;
import com.yandex.runtime.view.internal.PlatformViewBinding;
import com.yandex.runtime.view.internal.VulkanSurfaceView;

/* JADX INFO: loaded from: classes5.dex */
public class PlatformVulkanSurfaceView extends VulkanSurfaceView implements PlatformView {
    private int height;
    private MemoryPressureListener memoryPressureListener;
    protected PlatformViewBinding platformViewBinding;
    private int width;

    @Override // com.yandex.runtime.view.PlatformView
    public View getView() {
        return this;
    }

    public PlatformVulkanSurfaceView(Context context, boolean z) {
        super(context, z);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) getContext().getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        this.width = i;
        int i2 = displayMetrics.heightPixels;
        this.height = i2;
        this.platformViewBinding = new PlatformViewBinding(this.renderer, i, i2);
    }

    @Override // com.yandex.runtime.view.PlatformView
    public NativeObject getNativePlatformView() {
        return this.platformViewBinding.getNative();
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void destroyNativePlatformView() {
        this.platformViewBinding.destroyNative();
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void pause() {
        this.platformViewBinding.onPause();
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void resume() {
        this.platformViewBinding.onResume();
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void stop() {
        if (this.memoryPressureListener != null) {
            getContext().unregisterComponentCallbacks(this.memoryPressureListener);
            this.memoryPressureListener = null;
        }
        this.platformViewBinding.onStop();
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void start() {
        if (this.memoryPressureListener == null) {
            this.memoryPressureListener = new MemoryPressureListener(this);
            getContext().registerComponentCallbacks(this.memoryPressureListener);
        }
        this.platformViewBinding.onStart(this.width, this.height);
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void onMemoryWarning() {
        this.platformViewBinding.onMemoryWarning();
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void setNoninteractive(boolean z) {
        this.platformViewBinding.setNoninteractive(z);
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void setOffscreenBufferEnabled(boolean z) {
        this.platformViewBinding.setOffscreenBufferEnabled(z);
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.platformViewBinding.onTouchEvent(motionEvent)) {
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        this.width = i;
        this.height = i2;
        super.onSizeChanged(i, i2, i3, i4);
        this.platformViewBinding.onSizeChanged(this.width, this.height);
    }

    @Override // com.yandex.runtime.view.internal.VulkanSurfaceView, com.yandex.runtime.view.PlatformView
    public boolean isDebugModeEnabled() {
        return super.isDebugModeEnabled();
    }
}
