package androidx.camera.core.imagecapture;

import android.net.Uri;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.impl.utils.Exif;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FileUtil {
    static File createTempFile(ImageCapture.OutputFileOptions outputFileOptions) {
        throw null;
    }

    static void updateFileExif(File file, Exif exif, ImageCapture.OutputFileOptions outputFileOptions, int i) {
        try {
            Exif exifCreateFromFile = Exif.createFromFile(file);
            exif.copyToCroppedImage(exifCreateFromFile);
            if (exifCreateFromFile.getRotation() == 0 && i != 0) {
                exifCreateFromFile.rotate(i);
            }
            throw null;
        } catch (IOException e) {
            throw new ImageCaptureException(1, "Failed to update Exif data", e);
        }
    }

    static Uri moveFileToTarget(File file, ImageCapture.OutputFileOptions outputFileOptions) {
        Uri uriCopyFileToMediaStore = null;
        try {
            try {
                if (isSaveToMediaStore(outputFileOptions)) {
                    uriCopyFileToMediaStore = copyFileToMediaStore(file, outputFileOptions);
                } else if (isSaveToOutputStream(outputFileOptions) || isSaveToFile(outputFileOptions)) {
                    throw null;
                }
                file.delete();
                return uriCopyFileToMediaStore;
            } catch (IOException unused) {
                throw new ImageCaptureException(1, "Failed to write to OutputStream.", null);
            }
        } catch (Throwable th) {
            file.delete();
            throw th;
        }
    }

    private static Uri copyFileToMediaStore(File file, ImageCapture.OutputFileOptions outputFileOptions) {
        throw null;
    }

    private static boolean isSaveToMediaStore(ImageCapture.OutputFileOptions outputFileOptions) {
        throw null;
    }

    private static boolean isSaveToFile(ImageCapture.OutputFileOptions outputFileOptions) {
        throw null;
    }

    private static boolean isSaveToOutputStream(ImageCapture.OutputFileOptions outputFileOptions) {
        throw null;
    }
}
