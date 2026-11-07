package androidx.car.app.media;

import android.util.Log;
import androidx.car.app.AppManager;
import androidx.car.app.CarContext;
import androidx.car.app.media.OpenMicrophoneRequest;
import androidx.car.app.media.OpenMicrophoneResponse;
import androidx.car.app.utils.CommonUtils;
import java.util.Objects;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CarAudioRecord {
    public static final int AUDIO_CONTENT_BUFFER_SIZE = 512;
    public static final String AUDIO_CONTENT_MIME = "audio/l16";
    public static final int AUDIO_CONTENT_SAMPLING_RATE = 16000;
    private static final int RECORDSTATE_RECORDING = 1;
    private static final int RECORDSTATE_REMOTE_CLOSED = 2;
    private static final int RECORDSTATE_STOPPED = 0;
    private final CarContext mCarContext;
    private OpenMicrophoneResponse mOpenMicrophoneResponse;
    private int mRecordingState = 0;
    private final Object mRecordingStateLock = new Object();

    public static /* synthetic */ void $r8$lambda$eiaUsw7_X25Hzek8e7b5aQdG054() {
    }

    public abstract int readInternal(byte[] bArr, int i, int i2);

    public abstract void startRecordingInternal(OpenMicrophoneResponse openMicrophoneResponse);

    public abstract void stopRecordingInternal();

    public static CarAudioRecord create(CarContext carContext) {
        String str;
        Objects.requireNonNull(carContext);
        if (CommonUtils.isAutomotiveOS(carContext)) {
            str = "androidx.car.app.media.AutomotiveCarAudioRecord";
        } else {
            str = "androidx.car.app.media.ProjectedCarAudioRecord";
        }
        return createCarAudioRecord(carContext, str);
    }

    private static CarAudioRecord createCarAudioRecord(CarContext carContext, String str) {
        try {
            return (CarAudioRecord) Class.forName(str).getConstructor(CarContext.class).newInstance(carContext);
        } catch (ReflectiveOperationException unused) {
            Segment$$ExternalSyntheticBUOutline1.m925m("CarAudioRecord not configured. Did you forget to add a dependency on app-automotive or app-projected artifacts?");
            return null;
        }
    }

    public CarAudioRecord(CarContext carContext) {
        this.mCarContext = carContext;
    }

    public void startRecording() {
        synchronized (this.mRecordingStateLock) {
            try {
                if (this.mRecordingState != 0) {
                    throw new IllegalStateException("Cannot start recording if it has started and not been stopped");
                }
                OpenMicrophoneResponse openMicrophoneResponseOpenMicrophone = ((AppManager) this.mCarContext.getCarService(AppManager.class)).openMicrophone(new OpenMicrophoneRequest.Builder(new CarAudioCallback() { // from class: androidx.car.app.media.CarAudioRecord$$ExternalSyntheticLambda0
                    @Override // androidx.car.app.media.CarAudioCallback
                    public final void onStopRecording() {
                        CarAudioRecord.$r8$lambda$gO6P46xJLpbKFBEuOOe19YVnJeI(this.f$0);
                    }
                }).build());
                this.mOpenMicrophoneResponse = openMicrophoneResponseOpenMicrophone;
                if (openMicrophoneResponseOpenMicrophone == null) {
                    Log.e("CarApp", "Did not get microphone input from host");
                    this.mOpenMicrophoneResponse = new OpenMicrophoneResponse.Builder(new CarAudioCallback() { // from class: androidx.car.app.media.CarAudioRecord$$ExternalSyntheticLambda1
                        @Override // androidx.car.app.media.CarAudioCallback
                        public final void onStopRecording() {
                            CarAudioRecord.$r8$lambda$eiaUsw7_X25Hzek8e7b5aQdG054();
                        }
                    }).build();
                }
                startRecordingInternal(this.mOpenMicrophoneResponse);
                this.mRecordingState = 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$gO6P46xJLpbKFBEuOOe19YVnJeI(CarAudioRecord carAudioRecord) {
        synchronized (carAudioRecord.mRecordingStateLock) {
            carAudioRecord.mRecordingState = 2;
        }
    }

    public void stopRecording() {
        synchronized (this.mRecordingStateLock) {
            try {
                OpenMicrophoneResponse openMicrophoneResponse = this.mOpenMicrophoneResponse;
                if (openMicrophoneResponse != null) {
                    if (this.mRecordingState != 2) {
                        openMicrophoneResponse.getCarAudioCallback().onStopRecording();
                    }
                    this.mOpenMicrophoneResponse = null;
                }
                stopRecordingInternal();
                this.mRecordingState = 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int read(byte[] bArr, int i, int i2) {
        synchronized (this.mRecordingStateLock) {
            int i3 = this.mRecordingState;
            if (i3 == 0) {
                throw new IllegalStateException("Called read before calling startRecording or after calling stopRecording");
            }
            if (i3 != 2) {
                return readInternal(bArr, i, i2);
            }
            return -1;
        }
    }
}
