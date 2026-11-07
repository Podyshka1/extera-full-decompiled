package androidx.media3.exoplayer.audio;

import android.media.AudioDescriptor;
import android.media.AudioDeviceInfo;
import android.media.AudioProfile;
import android.os.Build;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes4.dex */
abstract class SpeakerLayoutUtil {
    private static final ImmutableList<Integer> DEFAULT_CHANNEL_MASK = ImmutableList.of(12);

    public static ImmutableList<Integer> getLoudspeakerLayoutChannelMasks(AudioDeviceInfo audioDeviceInfo) {
        if (DeviceTypeUtil.isBluetoothDevice(audioDeviceInfo.getType())) {
            return getChannelMasksForBluetooth();
        }
        if (DeviceTypeUtil.isBuiltInEarpiece(audioDeviceInfo.getType())) {
            return ImmutableList.of(4);
        }
        if (DeviceTypeUtil.isBuiltInSpeaker(audioDeviceInfo.getType())) {
            return getChannelMasksForBuiltInSpeakers(audioDeviceInfo);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 31 && DeviceTypeUtil.isHdmiArc(audioDeviceInfo.getType())) {
            return getChannelMasksForHdmiArc(audioDeviceInfo);
        }
        if (i >= 31 && DeviceTypeUtil.isHdmiEarc(audioDeviceInfo.getType())) {
            return getChannelMasksForHdmiEarc(audioDeviceInfo);
        }
        if (i >= 31 && DeviceTypeUtil.isUsbDevice(audioDeviceInfo.getType())) {
            return getChannelMasksForUsb(audioDeviceInfo);
        }
        return DEFAULT_CHANNEL_MASK;
    }

    private static ImmutableList<Integer> getChannelMasksForBluetooth() {
        return DEFAULT_CHANNEL_MASK;
    }

    private static ImmutableList<Integer> getChannelMasksForBuiltInSpeakers(AudioDeviceInfo audioDeviceInfo) {
        int speakerLayoutChannelMask;
        if (Build.VERSION.SDK_INT >= 36 && (speakerLayoutChannelMask = audioDeviceInfo.getSpeakerLayoutChannelMask()) != 0 && speakerLayoutChannelMask != 1) {
            return ImmutableList.of(Integer.valueOf(speakerLayoutChannelMask));
        }
        Log.m164w("SpeakerLayoutUtil", "Built-in speaker's getSpeakerLayoutChannelMask not usable, defaulting to stereo.");
        return DEFAULT_CHANNEL_MASK;
    }

    private static ImmutableList<Integer> getChannelMasksForHdmiArc(AudioDeviceInfo audioDeviceInfo) {
        ImmutableList<Integer> channelMasksFromPcmAudioProfiles = getChannelMasksFromPcmAudioProfiles(audioDeviceInfo);
        if (!channelMasksFromPcmAudioProfiles.isEmpty()) {
            return channelMasksFromPcmAudioProfiles;
        }
        ImmutableList<Integer> allLpcmChannelMasksFromPcmSads = AudioDescriptorUtil.getAllLpcmChannelMasksFromPcmSads(audioDeviceInfo.getAudioDescriptors());
        return !allLpcmChannelMasksFromPcmSads.isEmpty() ? allLpcmChannelMasksFromPcmSads : DEFAULT_CHANNEL_MASK;
    }

    private static ImmutableList<Integer> getChannelMasksForHdmiEarc(AudioDeviceInfo audioDeviceInfo) {
        ImmutableList<Integer> channelMasksFromPcmAudioProfiles = getChannelMasksFromPcmAudioProfiles(audioDeviceInfo);
        if (!channelMasksFromPcmAudioProfiles.isEmpty()) {
            return channelMasksFromPcmAudioProfiles;
        }
        List<AudioDescriptor> audioDescriptors = audioDeviceInfo.getAudioDescriptors();
        if (Build.VERSION.SDK_INT >= 34) {
            ImmutableList<Integer> allChannelMasksFromSadbs = AudioDescriptorUtil.getAllChannelMasksFromSadbs(audioDescriptors);
            if (!allChannelMasksFromSadbs.isEmpty()) {
                return allChannelMasksFromSadbs;
            }
        }
        ImmutableList<Integer> allLpcmChannelMasksFromPcmSads = AudioDescriptorUtil.getAllLpcmChannelMasksFromPcmSads(audioDescriptors);
        return !allLpcmChannelMasksFromPcmSads.isEmpty() ? allLpcmChannelMasksFromPcmSads : DEFAULT_CHANNEL_MASK;
    }

    private static ImmutableList<Integer> getChannelMasksForUsb(AudioDeviceInfo audioDeviceInfo) {
        ImmutableList<Integer> channelMasksFromPcmAudioProfiles = getChannelMasksFromPcmAudioProfiles(audioDeviceInfo);
        return !channelMasksFromPcmAudioProfiles.isEmpty() ? channelMasksFromPcmAudioProfiles : DEFAULT_CHANNEL_MASK;
    }

    private static ImmutableList<Integer> getChannelMasksFromPcmAudioProfiles(AudioDeviceInfo audioDeviceInfo) {
        List<AudioProfile> audioProfiles = audioDeviceInfo.getAudioProfiles();
        TreeSet treeSet = new TreeSet(Comparator.comparing(new AudioDescriptorUtil$$ExternalSyntheticLambda2()).reversed());
        Iterator<AudioProfile> it = audioProfiles.iterator();
        while (it.hasNext()) {
            AudioProfile audioProfileM183m = AudioCapabilities$$ExternalSyntheticApiModelOutline0.m183m(it.next());
            if (audioProfileM183m.getEncapsulationType() != 1 && Util.isEncodingLinearPcm(audioProfileM183m.getFormat())) {
                for (int i : audioProfileM183m.getChannelMasks()) {
                    treeSet.add(Integer.valueOf(i));
                }
            }
        }
        return ImmutableList.copyOf((Collection) treeSet);
    }
}
