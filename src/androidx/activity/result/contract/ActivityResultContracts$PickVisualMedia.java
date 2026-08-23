package androidx.activity.result.contract;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.ext.SdkExtensions;
import androidx.activity.result.PickVisualMediaRequest;
import androidx.activity.result.contract.ActivityResultContract;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public class ActivityResultContracts$PickVisualMedia extends ActivityResultContract {
    public static final Companion Companion = new Companion(null);

    public interface VisualMediaType {
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    public final ActivityResultContract.SynchronousResult getSynchronousResult(Context context, PickVisualMediaRequest input) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(input, "input");
        return null;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isPhotoPickerAvailable(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return isSystemPickerAvailable$activity_release() || isSystemFallbackPickerAvailable$activity_release(context) || isGmsPickerAvailable$activity_release(context);
        }

        public final boolean isSystemPickerAvailable$activity_release() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 33) {
                return true;
            }
            return i >= 30 && SdkExtensions.getExtensionVersion(30) >= 2;
        }

        public final boolean isSystemFallbackPickerAvailable$activity_release(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return getSystemFallbackPicker$activity_release(context) != null;
        }

        public final ResolveInfo getSystemFallbackPicker$activity_release(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return context.getPackageManager().resolveActivity(new Intent("androidx.activity.result.contract.action.PICK_IMAGES"), 1114112);
        }

        public final boolean isGmsPickerAvailable$activity_release(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return getGmsPicker$activity_release(context) != null;
        }

        public final ResolveInfo getGmsPicker$activity_release(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return context.getPackageManager().resolveActivity(new Intent("com.google.android.gms.provider.action.PICK_IMAGES"), 1114112);
        }

        public final String getVisualMimeType$activity_release(VisualMediaType input) {
            Intrinsics.checkNotNullParameter(input, "input");
            if (input instanceof ImageOnly) {
                return "image/*";
            }
            if (input instanceof ImageAndVideo) {
                return null;
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    public static final class ImageOnly implements VisualMediaType {
        public static final ImageOnly INSTANCE = new ImageOnly();

        private ImageOnly() {
        }
    }

    public static final class ImageAndVideo implements VisualMediaType {
        public static final ImageAndVideo INSTANCE = new ImageAndVideo();

        private ImageAndVideo() {
        }
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    public Intent createIntent(Context context, PickVisualMediaRequest input) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(input, "input");
        Companion companion = Companion;
        if (companion.isSystemPickerAvailable$activity_release()) {
            Intent intent = new Intent("android.provider.action.PICK_IMAGES");
            intent.setType(companion.getVisualMimeType$activity_release(input.getMediaType()));
            return intent;
        }
        if (companion.isSystemFallbackPickerAvailable$activity_release(context)) {
            ResolveInfo systemFallbackPicker$activity_release = companion.getSystemFallbackPicker$activity_release(context);
            if (systemFallbackPicker$activity_release == null) {
                throw new IllegalStateException("Required value was null.");
            }
            ActivityInfo activityInfo = systemFallbackPicker$activity_release.activityInfo;
            Intent intent2 = new Intent("androidx.activity.result.contract.action.PICK_IMAGES");
            intent2.setClassName(activityInfo.applicationInfo.packageName, activityInfo.name);
            intent2.setType(companion.getVisualMimeType$activity_release(input.getMediaType()));
            return intent2;
        }
        if (companion.isGmsPickerAvailable$activity_release(context)) {
            ResolveInfo gmsPicker$activity_release = companion.getGmsPicker$activity_release(context);
            if (gmsPicker$activity_release == null) {
                throw new IllegalStateException("Required value was null.");
            }
            ActivityInfo activityInfo2 = gmsPicker$activity_release.activityInfo;
            Intent intent3 = new Intent("com.google.android.gms.provider.action.PICK_IMAGES");
            intent3.setClassName(activityInfo2.applicationInfo.packageName, activityInfo2.name);
            intent3.setType(companion.getVisualMimeType$activity_release(input.getMediaType()));
            return intent3;
        }
        Intent intent4 = new Intent("android.intent.action.OPEN_DOCUMENT");
        intent4.setType(companion.getVisualMimeType$activity_release(input.getMediaType()));
        if (intent4.getType() == null) {
            intent4.setType("*/*");
            intent4.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", "video/*"});
        }
        return intent4;
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    public final Uri parseResult(int i, Intent intent) {
        if (i != -1) {
            intent = null;
        }
        if (intent == null) {
            return null;
        }
        Uri data = intent.getData();
        return data == null ? (Uri) CollectionsKt.firstOrNull(ActivityResultContracts$GetMultipleContents.Companion.getClipDataUris$activity_release(intent)) : data;
    }
}
