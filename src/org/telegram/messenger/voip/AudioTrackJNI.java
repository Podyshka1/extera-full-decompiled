package org.telegram.messenger.voip;

import android.media.AudioTrack;
import java.nio.ByteBuffer;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
public class AudioTrackJNI {
    private AudioTrack audioTrack;
    private byte[] buffer = new byte[1920];
    private long nativeInst;
    private boolean needResampling;
    private boolean running;
    private Thread thread;

    private native void nativeCallback(byte[] bArr);

    public AudioTrackJNI(long j) {
        this.nativeInst = j;
    }

    private int getBufferSize(int i, int i2) {
        return Math.max(AudioTrack.getMinBufferSize(i2, 4, 2), i);
    }

    public void init(int i, int i2, int i3, int i4) {
        if (this.audioTrack != null) {
            Segment$$ExternalSyntheticBUOutline1.m848m("already inited");
            return;
        }
        AudioTrack audioTrack = new AudioTrack(0, 48000, i3 == 1 ? 4 : 12, 2, getBufferSize(i4, 48000), 1);
        this.audioTrack = audioTrack;
        if (audioTrack.getState() != 1) {
            VLog.m926w("Error initializing AudioTrack with 48k, trying 44.1k with resampling");
            try {
                this.audioTrack.release();
            } catch (Throwable unused) {
            }
            int bufferSize = getBufferSize(i4 * 6, 44100);
            VLog.m920d("buffer size: " + bufferSize);
            this.audioTrack = new AudioTrack(0, 44100, i3 == 1 ? 4 : 12, 2, bufferSize, 1);
            this.needResampling = true;
        }
    }

    public void stop() {
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            try {
                audioTrack.stop();
            } catch (Exception unused) {
            }
        }
    }

    public void release() {
        this.running = false;
        Thread thread = this.thread;
        if (thread != null) {
            try {
                thread.join();
            } catch (InterruptedException e) {
                VLog.m923e(e);
            }
            this.thread = null;
        }
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            audioTrack.release();
            this.audioTrack = null;
        }
    }

    public void start() {
        if (this.thread == null) {
            startThread();
        } else {
            this.audioTrack.play();
        }
    }

    private void startThread() {
        if (this.thread != null) {
            Segment$$ExternalSyntheticBUOutline1.m848m("thread already started");
            return;
        }
        this.running = true;
        Thread thread = new Thread(new Runnable() { // from class: org.telegram.messenger.voip.AudioTrackJNI$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startThread$0();
            }
        });
        this.thread = thread;
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startThread$0() {
        try {
            this.audioTrack.play();
            ByteBuffer byteBufferAllocateDirect = this.needResampling ? ByteBuffer.allocateDirect(1920) : null;
            ByteBuffer byteBufferAllocateDirect2 = this.needResampling ? ByteBuffer.allocateDirect(1764) : null;
            while (this.running) {
                try {
                    boolean z = this.needResampling;
                    byte[] bArr = this.buffer;
                    if (z) {
                        nativeCallback(bArr);
                        byteBufferAllocateDirect.rewind();
                        byteBufferAllocateDirect.put(this.buffer);
                        Resampler.convert48to44(byteBufferAllocateDirect, byteBufferAllocateDirect2);
                        byteBufferAllocateDirect2.rewind();
                        byteBufferAllocateDirect2.get(this.buffer, 0, 1764);
                        this.audioTrack.write(this.buffer, 0, 1764);
                    } else {
                        nativeCallback(bArr);
                        this.audioTrack.write(this.buffer, 0, 1920);
                    }
                    if (!this.running) {
                        this.audioTrack.stop();
                        break;
                    }
                    continue;
                } catch (Exception e) {
                    VLog.m923e(e);
                }
            }
            VLog.m924i("audiotrack thread exits");
        } catch (Exception e2) {
            VLog.m922e("error starting AudioTrack", e2);
        }
    }
}
