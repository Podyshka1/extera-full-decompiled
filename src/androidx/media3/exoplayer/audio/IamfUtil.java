package androidx.media3.exoplayer.audio;

import android.os.Build;
import com.android.dx.io.Opcodes;
import com.google.common.collect.ImmutableSet;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class IamfUtil {
    public static final ImmutableSet<Integer> IAMF_SUPPORTED_CHANNEL_MASKS;

    static {
        ImmutableSet<Integer> immutableSetOf;
        Integer numValueOf = Integer.valueOf(Opcodes.INVOKE_CUSTOM);
        if (Build.VERSION.SDK_INT < 32) {
            immutableSetOf = ImmutableSet.of(12, (int) numValueOf, 6396, 4);
        } else {
            immutableSetOf = ImmutableSet.of(12, (int) numValueOf, 6396, 4, 3145980, 82172, (int[]) new Integer[]{737532, 9126140, 33904892, 202070268, 744444, 67108860, 743676, 3152124, 88316, 81980, 205215996, 3890172});
        }
        IAMF_SUPPORTED_CHANNEL_MASKS = immutableSetOf;
    }

    public static int getOutputChannelMaskForCurrentConfiguration(AudioCapabilities audioCapabilities) {
        int firstCompatibleChannelMask = getFirstCompatibleChannelMask(audioCapabilities.getSpatializerChannelMasks());
        if (firstCompatibleChannelMask != 0) {
            return firstCompatibleChannelMask;
        }
        int firstCompatibleChannelMask2 = getFirstCompatibleChannelMask(audioCapabilities.getSpeakerLayoutChannelMasks());
        if (firstCompatibleChannelMask2 != 0) {
            return firstCompatibleChannelMask2;
        }
        return 12;
    }

    private static int getFirstCompatibleChannelMask(List<Integer> list) {
        for (Integer num : list) {
            int iIntValue = num.intValue();
            if (IAMF_SUPPORTED_CHANNEL_MASKS.contains(num)) {
                return iIntValue;
            }
        }
        return 0;
    }
}
