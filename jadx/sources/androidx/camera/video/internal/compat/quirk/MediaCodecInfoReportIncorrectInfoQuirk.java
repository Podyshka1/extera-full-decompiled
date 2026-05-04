package androidx.camera.video.internal.compat.quirk;

import android.os.Build;
import android.util.Size;
import androidx.camera.core.impl.Quirk;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class MediaCodecInfoReportIncorrectInfoQuirk implements Quirk {
    public static final List INCORRECT_FHD_PROFILE_MODEL_LIST = Arrays.asList("lg-k430", "redmi note 4", "m2003j15sc", "m2004j19c", "rmx3231", "v2117", "sm-a032f", "moto g(20)", "sm-a035m", "v2204", "23078pnd5g", "pht110", "23053rn02l", "rmx3710", "rmx3511", "v2207", "moto e20");

    static boolean load() {
        return isNokia1() || isMotoC() || isX650() || isX230() || isHuaweiMate9() || isRedmiNote8Pro() || isPositivoTwist2Pro() || isFHDProblematicDevice();
    }

    private static boolean isNokia1() {
        return "Nokia".equalsIgnoreCase(Build.BRAND) && "Nokia 1".equalsIgnoreCase(Build.MODEL);
    }

    private static boolean isMotoC() {
        return "motorola".equalsIgnoreCase(Build.BRAND) && "moto c".equalsIgnoreCase(Build.MODEL);
    }

    private static boolean isX650() {
        return "infinix".equalsIgnoreCase(Build.BRAND) && "infinix x650".equalsIgnoreCase(Build.MODEL);
    }

    private static boolean isX230() {
        return "LGE".equalsIgnoreCase(Build.BRAND) && "LG-X230".equalsIgnoreCase(Build.MODEL);
    }

    private static boolean isHuaweiMate9() {
        return "Huawei".equalsIgnoreCase(Build.BRAND) && "mha-l29".equalsIgnoreCase(Build.MODEL);
    }

    private static boolean isRedmiNote8Pro() {
        return "Redmi".equalsIgnoreCase(Build.BRAND) && "Redmi Note 8 Pro".equalsIgnoreCase(Build.MODEL);
    }

    private static boolean isPositivoTwist2Pro() {
        return "positivo".equalsIgnoreCase(Build.BRAND) && "twist 2 pro".equalsIgnoreCase(Build.MODEL);
    }

    public static Set getExtraSupportedSizes() {
        if (isFHDProblematicDevice()) {
            return Collections.singleton(new Size(1920, 1080));
        }
        return Collections.EMPTY_SET;
    }

    private static boolean isFHDProblematicDevice() {
        return INCORRECT_FHD_PROFILE_MODEL_LIST.contains(Build.MODEL.toLowerCase(Locale.US));
    }
}
