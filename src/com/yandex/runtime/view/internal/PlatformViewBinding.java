package com.yandex.runtime.view.internal;

import android.view.MotionEvent;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.internal.ArchiveWriter;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class PlatformViewBinding {
    private static final String LOG_TAG = "PlatformViewBinding";
    private NativeObject nativeObject;
    private boolean noninteractive = false;
    private ArchiveWriter touchEventWriter = new ArchiveWriter();

    private static native NativeObject createGLNative(PlatformGLRenderer platformGLRenderer, int i, int i2);

    private static native NativeObject createVulkanNative(PlatformVulkanRenderer platformVulkanRenderer, int i, int i2);

    private native void onSerializedTouchEventNative(ByteBuffer byteBuffer, int i);

    public native void onContextCreated();

    public native void onMemoryWarning();

    public native void onPause();

    public native void onResume();

    public native void onSizeChanged(int i, int i2);

    public native void onStart(int i, int i2);

    public native void onStop();

    public native void requestRenderNative();

    public native void setOffscreenBufferEnabled(boolean z);

    public PlatformViewBinding(PlatformGLRenderer platformGLRenderer, int i, int i2) {
        this.nativeObject = createGLNative(platformGLRenderer, i, i2);
    }

    public PlatformViewBinding(PlatformVulkanRenderer platformVulkanRenderer, int i, int i2) {
        this.nativeObject = createVulkanNative(platformVulkanRenderer, i, i2);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.noninteractive || !TouchEvent.isTouchEvent(motionEvent) || this.nativeObject.isEmpty()) {
            return false;
        }
        TouchEvent.serialize(motionEvent, this.touchEventWriter);
        ByteBuffer byteBufferData = this.touchEventWriter.data();
        onSerializedTouchEventNative(byteBufferData, byteBufferData.position());
        byteBufferData.clear();
        return true;
    }

    public NativeObject getNative() {
        return this.nativeObject;
    }

    public void destroyNative() {
        this.nativeObject.reset();
    }

    public void setNoninteractive(boolean z) {
        this.noninteractive = z;
    }
}
