package androidx.media3.exoplayer.audio;

import android.media.AudioDescriptor;
import android.os.Build;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes4.dex */
abstract class AudioDescriptorUtil {
    public static ImmutableList<Integer> getAllLpcmChannelMasksFromPcmSads(List<AudioDescriptor> list) {
        if (Build.VERSION.SDK_INT < 31 || list == null) {
            return ImmutableList.of();
        }
        TreeSet treeSet = new TreeSet(Comparator.comparing(new AudioDescriptorUtil$$ExternalSyntheticLambda2()).reversed());
        Iterator<AudioDescriptor> it = list.iterator();
        while (it.hasNext()) {
            AudioDescriptor audioDescriptorM184m = AudioDescriptorUtil$$ExternalSyntheticApiModelOutline0.m184m(it.next());
            if (audioDescriptorM184m.getStandard() == 1) {
                byte[] descriptor = audioDescriptorM184m.getDescriptor();
                if (descriptor.length != 3) {
                    Log.m164w("AudioDescriptorUtil", "Invalid SAD length: " + descriptor.length);
                } else {
                    byte b2 = descriptor[0];
                    int i = (b2 & 7) + 1;
                    if (((b2 >> 3) & 15) == 1) {
                        treeSet.add(Integer.valueOf(Util.getAudioTrackChannelConfig(i)));
                    }
                }
            }
        }
        return ImmutableList.copyOf((Collection) treeSet);
    }

    public static ImmutableList<Integer> getAllChannelMasksFromSadbs(List<AudioDescriptor> list) {
        if (Build.VERSION.SDK_INT < 34 || list == null) {
            return ImmutableList.of();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<AudioDescriptor> it = list.iterator();
        while (it.hasNext()) {
            AudioDescriptor audioDescriptorM184m = AudioDescriptorUtil$$ExternalSyntheticApiModelOutline0.m184m(it.next());
            if (audioDescriptorM184m.getStandard() == 2) {
                byte[] descriptor = audioDescriptorM184m.getDescriptor();
                if (descriptor.length != 3) {
                    Log.m164w("AudioDescriptorUtil", "Invalid SADB length: " + descriptor.length);
                } else {
                    arrayList.add(Integer.valueOf(getChannelMaskFromSadb(descriptor)));
                }
            }
        }
        arrayList.sort(new Comparator() { // from class: androidx.media3.exoplayer.audio.AudioDescriptorUtil$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return AudioDescriptorUtil.m1952$r8$lambda$Mvn1U4mnj6g235QnoP8D6MhvfI((Integer) obj, (Integer) obj2);
            }
        });
        return ImmutableList.copyOf((Collection) arrayList);
    }

    /* JADX INFO: renamed from: $r8$lambda$Mvn1U4-mnj6g235QnoP8D6MhvfI, reason: not valid java name */
    public static /* synthetic */ int m1952$r8$lambda$Mvn1U4mnj6g235QnoP8D6MhvfI(Integer num, Integer num2) {
        return Integer.bitCount(num2.intValue()) - Integer.bitCount(num.intValue());
    }

    public static int getChannelMaskFromSadb(byte[] bArr) {
        if (Build.VERSION.SDK_INT >= 34 && bArr.length == 3) {
            byte b2 = bArr[0];
            i = (b2 & 1) != 0 ? 12 : 0;
            if ((b2 & 2) != 0) {
                i |= 32;
            }
            if ((b2 & 4) != 0) {
                i |= 16;
            }
            if ((b2 & 8) != 0) {
                i |= 192;
            }
            if ((b2 & 16) != 0) {
                i |= 1024;
            }
            if ((b2 & 32) != 0) {
                i |= 768;
            }
            if ((b2 & ByteCompanionObject.MIN_VALUE) != 0) {
                i |= 201326592;
            }
            byte b3 = bArr[1];
            if ((b3 & 1) != 0) {
                i |= 81920;
            }
            if ((b3 & 2) != 0) {
                i |= 8192;
            }
            if ((b3 & 4) != 0) {
                i |= 32768;
            }
            if ((b3 & 8) != 0) {
                i |= 6144;
            }
            if ((b3 & 16) != 0) {
                i |= 33554432;
            }
            if ((b3 & 32) != 0) {
                i |= 262144;
            }
            if ((b3 & 64) != 0) {
                i |= 6144;
            }
            if ((b3 & ByteCompanionObject.MIN_VALUE) != 0) {
                i |= 3145728;
            }
            byte b4 = bArr[2];
            if ((b4 & 1) != 0) {
                i |= 655360;
            }
            if ((b4 & 2) != 0) {
                i |= 8388608;
            }
            if ((b4 & 4) != 0) {
                return 20971520 | i;
            }
        }
        return i;
    }
}
