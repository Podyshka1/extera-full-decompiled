package androidx.media3.extractor.mp4;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
abstract class MimeTypeResolver {
    public static String getContainerMimeType(Format format) {
        String str = format.sampleMimeType;
        if (MimeTypes.isVideo(str)) {
            return "video/mp4";
        }
        if (MimeTypes.isAudio(str)) {
            return "audio/mp4";
        }
        if (MimeTypes.isImage(str)) {
            if (Objects.equals(str, "image/heic")) {
                return "image/heif";
            }
            if (Objects.equals(str, "image/avif")) {
                return "image/avif";
            }
            return "application/mp4";
        }
        return "application/mp4";
    }

    public static String getContainerMimeType(List<TrackSampleTable> list) {
        Iterator<TrackSampleTable> it = list.iterator();
        boolean z = false;
        String str = null;
        while (it.hasNext()) {
            String str2 = it.next().track.format.sampleMimeType;
            if (MimeTypes.isVideo(str2)) {
                return "video/mp4";
            }
            if (MimeTypes.isAudio(str2)) {
                z = true;
            } else if (MimeTypes.isImage(str2)) {
                if (Objects.equals(str2, "image/heic")) {
                    str = "image/heif";
                } else if (Objects.equals(str2, "image/avif")) {
                    str = "image/avif";
                }
            }
        }
        if (z) {
            return "audio/mp4";
        }
        return str != null ? str : "application/mp4";
    }
}
