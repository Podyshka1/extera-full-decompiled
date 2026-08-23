package androidx.car.app;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.car.app.versioning.CarAppApiLevels;
import java.util.Objects;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public final class AppInfo {
    public static final String MIN_API_LEVEL_METADATA_KEY = "androidx.car.app.minCarApiLevel";
    private final int mLatestCarAppApiLevel;
    private final String mLibraryVersion;
    private final int mMinCarAppApiLevel;

    public static AppInfo create(Context context) {
        int iRetrieveMinCarAppApiLevel = retrieveMinCarAppApiLevel(context);
        if (iRetrieveMinCarAppApiLevel < CarAppApiLevels.getOldest() || iRetrieveMinCarAppApiLevel > CarAppApiLevels.getLatest()) {
            AppInfo$$ExternalSyntheticBUOutline0.m85m("Min API level (androidx.car.app.minCarApiLevel=", iRetrieveMinCarAppApiLevel, ") is out of range (", CarAppApiLevels.getOldest(), "-", CarAppApiLevels.getLatest(), ")");
            return null;
        }
        return new AppInfo(iRetrieveMinCarAppApiLevel, CarAppApiLevels.getLatest(), context.getResources().getString(R$string.car_app_library_version));
    }

    public AppInfo(int i, int i2, String str) {
        this.mMinCarAppApiLevel = i;
        this.mLibraryVersion = str;
        this.mLatestCarAppApiLevel = i2;
    }

    private AppInfo() {
        this.mMinCarAppApiLevel = 0;
        this.mLibraryVersion = null;
        this.mLatestCarAppApiLevel = 0;
    }

    public static int retrieveMinCarAppApiLevel(Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            int i = bundle != null ? bundle.getInt(MIN_API_LEVEL_METADATA_KEY, 0) : 0;
            if (i != 0) {
                return i;
            }
            throw new IllegalArgumentException("Min API level not declared in manifest (androidx.car.app.minCarApiLevel)");
        } catch (PackageManager.NameNotFoundException unused) {
            f$$ExternalSyntheticBUOutline1.m178m("Unable to read min API level from manifest");
            return 0;
        }
    }

    public String getLibraryDisplayVersion() {
        String str = this.mLibraryVersion;
        Objects.requireNonNull(str);
        return str;
    }

    public int getMinCarAppApiLevel() {
        return this.mMinCarAppApiLevel;
    }

    public int getLatestCarAppApiLevel() {
        return this.mLatestCarAppApiLevel;
    }

    public String toString() {
        return "Library version: [" + getLibraryDisplayVersion() + "] Min Car Api Level: [" + getMinCarAppApiLevel() + "] Latest Car App Api Level: [" + getLatestCarAppApiLevel() + "]";
    }
}
