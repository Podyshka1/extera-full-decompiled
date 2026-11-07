package androidx.media3.exoplayer.audio;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.net.Uri;
import android.os.Handler;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class AudioCapabilitiesReceiver {
    private AudioAttributes audioAttributes;
    private AudioCapabilities audioCapabilities;
    private final AudioDeviceCallbackV23 audioDeviceCallback;
    private final Context context;
    private final ExternalSurroundSoundSettingObserver externalSurroundSoundSettingObserver;
    private final Handler handler;
    private final BroadcastReceiver hdmiAudioPlugBroadcastReceiver;
    private final Listener listener;
    private boolean registered;
    private AudioDeviceInfoApi23 routedDevice;

    public interface Listener {
        void onAudioCapabilitiesChanged(AudioCapabilities audioCapabilities);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AudioCapabilitiesReceiver(Context context, Listener listener, AudioAttributes audioAttributes, AudioDeviceInfoApi23 audioDeviceInfoApi23) {
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext;
        this.listener = (Listener) Assertions.checkNotNull(listener);
        this.audioAttributes = audioAttributes;
        this.routedDevice = audioDeviceInfoApi23;
        Handler handlerCreateHandlerForCurrentOrMainLooper = Util.createHandlerForCurrentOrMainLooper();
        this.handler = handlerCreateHandlerForCurrentOrMainLooper;
        this.audioDeviceCallback = new AudioDeviceCallbackV23();
        this.hdmiAudioPlugBroadcastReceiver = new HdmiAudioPlugBroadcastReceiver();
        Uri externalSurroundSoundGlobalSettingUri = AudioCapabilities.getExternalSurroundSoundGlobalSettingUri();
        this.externalSurroundSoundSettingObserver = externalSurroundSoundGlobalSettingUri != null ? new ExternalSurroundSoundSettingObserver(handlerCreateHandlerForCurrentOrMainLooper, applicationContext.getContentResolver(), externalSurroundSoundGlobalSettingUri) : null;
    }

    public void overrideCapabilities(AudioCapabilities audioCapabilities) {
        onNewAudioCapabilities(audioCapabilities);
    }

    public void setAudioAttributes(AudioAttributes audioAttributes) {
        this.audioAttributes = audioAttributes;
        onNewAudioCapabilities(AudioCapabilities.getCapabilitiesInternal(this.context, audioAttributes, this.routedDevice));
    }

    public void setRoutedDevice(AudioDeviceInfo audioDeviceInfo) {
        AudioDeviceInfoApi23 audioDeviceInfoApi23 = this.routedDevice;
        if (Objects.equals(audioDeviceInfo, audioDeviceInfoApi23 == null ? null : audioDeviceInfoApi23.audioDeviceInfo)) {
            return;
        }
        AudioDeviceInfoApi23 audioDeviceInfoApi232 = audioDeviceInfo != null ? new AudioDeviceInfoApi23(audioDeviceInfo) : null;
        this.routedDevice = audioDeviceInfoApi232;
        onNewAudioCapabilities(AudioCapabilities.getCapabilitiesInternal(this.context, this.audioAttributes, audioDeviceInfoApi232));
    }

    public AudioCapabilities register() {
        if (this.registered) {
            return (AudioCapabilities) Assertions.checkNotNull(this.audioCapabilities);
        }
        this.registered = true;
        ExternalSurroundSoundSettingObserver externalSurroundSoundSettingObserver = this.externalSurroundSoundSettingObserver;
        if (externalSurroundSoundSettingObserver != null) {
            externalSurroundSoundSettingObserver.register();
        }
        AudioDeviceCallbackV23 audioDeviceCallbackV23 = this.audioDeviceCallback;
        if (audioDeviceCallbackV23 != null) {
            Api23.registerAudioDeviceCallback(this.context, audioDeviceCallbackV23, this.handler);
        }
        AudioCapabilities capabilitiesInternal = AudioCapabilities.getCapabilitiesInternal(this.context, this.context.registerReceiver(this.hdmiAudioPlugBroadcastReceiver, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, this.handler), this.audioAttributes, this.routedDevice);
        this.audioCapabilities = capabilitiesInternal;
        return capabilitiesInternal;
    }

    public void unregister() {
        if (this.registered) {
            this.audioCapabilities = null;
            AudioDeviceCallbackV23 audioDeviceCallbackV23 = this.audioDeviceCallback;
            if (audioDeviceCallbackV23 != null) {
                Api23.unregisterAudioDeviceCallback(this.context, audioDeviceCallbackV23);
            }
            this.context.unregisterReceiver(this.hdmiAudioPlugBroadcastReceiver);
            ExternalSurroundSoundSettingObserver externalSurroundSoundSettingObserver = this.externalSurroundSoundSettingObserver;
            if (externalSurroundSoundSettingObserver != null) {
                externalSurroundSoundSettingObserver.unregister();
            }
            this.registered = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNewAudioCapabilities(AudioCapabilities audioCapabilities) {
        if (!this.registered || audioCapabilities.equals(this.audioCapabilities)) {
            return;
        }
        this.audioCapabilities = audioCapabilities;
        this.listener.onAudioCapabilitiesChanged(audioCapabilities);
    }

    public final class HdmiAudioPlugBroadcastReceiver extends BroadcastReceiver {
        private HdmiAudioPlugBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (isInitialStickyBroadcast()) {
                return;
            }
            AudioCapabilitiesReceiver audioCapabilitiesReceiver = AudioCapabilitiesReceiver.this;
            audioCapabilitiesReceiver.onNewAudioCapabilities(AudioCapabilities.getCapabilitiesInternal(context, intent, audioCapabilitiesReceiver.audioAttributes, AudioCapabilitiesReceiver.this.routedDevice));
        }
    }

    public final class ExternalSurroundSoundSettingObserver extends ContentObserver {
        private final ContentResolver resolver;
        private final Uri settingUri;

        public ExternalSurroundSoundSettingObserver(Handler handler, ContentResolver contentResolver, Uri uri) {
            super(handler);
            this.resolver = contentResolver;
            this.settingUri = uri;
        }

        public void register() {
            this.resolver.registerContentObserver(this.settingUri, false, this);
        }

        public void unregister() {
            this.resolver.unregisterContentObserver(this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            AudioCapabilitiesReceiver audioCapabilitiesReceiver = AudioCapabilitiesReceiver.this;
            audioCapabilitiesReceiver.onNewAudioCapabilities(AudioCapabilities.getCapabilitiesInternal(audioCapabilitiesReceiver.context, AudioCapabilitiesReceiver.this.audioAttributes, AudioCapabilitiesReceiver.this.routedDevice));
        }
    }

    public final class AudioDeviceCallbackV23 extends AudioDeviceCallback {
        private AudioDeviceCallbackV23() {
        }

        @Override // android.media.AudioDeviceCallback
        public void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
            AudioCapabilitiesReceiver audioCapabilitiesReceiver = AudioCapabilitiesReceiver.this;
            audioCapabilitiesReceiver.onNewAudioCapabilities(AudioCapabilities.getCapabilitiesInternal(audioCapabilitiesReceiver.context, AudioCapabilitiesReceiver.this.audioAttributes, AudioCapabilitiesReceiver.this.routedDevice));
        }

        @Override // android.media.AudioDeviceCallback
        public void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
            if (Util.contains(audioDeviceInfoArr, AudioCapabilitiesReceiver.this.routedDevice)) {
                AudioCapabilitiesReceiver.this.routedDevice = null;
            }
            AudioCapabilitiesReceiver audioCapabilitiesReceiver = AudioCapabilitiesReceiver.this;
            audioCapabilitiesReceiver.onNewAudioCapabilities(AudioCapabilities.getCapabilitiesInternal(audioCapabilitiesReceiver.context, AudioCapabilitiesReceiver.this.audioAttributes, AudioCapabilitiesReceiver.this.routedDevice));
        }
    }

    public static final class Api23 {
        public static void registerAudioDeviceCallback(Context context, AudioDeviceCallback audioDeviceCallback, Handler handler) {
            AudioManagerCompat.getAudioManager(context).registerAudioDeviceCallback(audioDeviceCallback, handler);
        }

        public static void unregisterAudioDeviceCallback(Context context, AudioDeviceCallback audioDeviceCallback) {
            AudioManagerCompat.getAudioManager(context).unregisterAudioDeviceCallback(audioDeviceCallback);
        }
    }
}
