package com.google.firebase;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.heartbeatinfo.DefaultHeartBeatController;
import com.google.firebase.platforminfo.DefaultUserAgentPublisher;
import com.google.firebase.platforminfo.KotlinDetector;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public class FirebaseCommonRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public List getComponents() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(DefaultUserAgentPublisher.component());
        arrayList.add(DefaultHeartBeatController.component());
        arrayList.add(LibraryVersionComponent.create("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(LibraryVersionComponent.create("fire-core", "22.0.1"));
        arrayList.add(LibraryVersionComponent.create("device-name", safeValue(Build.PRODUCT)));
        arrayList.add(LibraryVersionComponent.create("device-model", safeValue(Build.DEVICE)));
        arrayList.add(LibraryVersionComponent.create("device-brand", safeValue(Build.BRAND)));
        arrayList.add(LibraryVersionComponent.fromContext("android-target-sdk", new LibraryVersionComponent.VersionExtractor() { // from class: com.google.firebase.FirebaseCommonRegistrar$$ExternalSyntheticLambda0
            @Override // com.google.firebase.platforminfo.LibraryVersionComponent.VersionExtractor
            public final String extract(Object obj) {
                return FirebaseCommonRegistrar.$r8$lambda$JRfXgWruDOlX8_YsmPkDH9kjxAM((Context) obj);
            }
        }));
        arrayList.add(LibraryVersionComponent.fromContext("android-min-sdk", new LibraryVersionComponent.VersionExtractor() { // from class: com.google.firebase.FirebaseCommonRegistrar$$ExternalSyntheticLambda1
            @Override // com.google.firebase.platforminfo.LibraryVersionComponent.VersionExtractor
            public final String extract(Object obj) {
                return FirebaseCommonRegistrar.$r8$lambda$6KbLzjDGzlo31N3xe2HtYAtvoWM((Context) obj);
            }
        }));
        arrayList.add(LibraryVersionComponent.fromContext("android-platform", new LibraryVersionComponent.VersionExtractor() { // from class: com.google.firebase.FirebaseCommonRegistrar$$ExternalSyntheticLambda2
            @Override // com.google.firebase.platforminfo.LibraryVersionComponent.VersionExtractor
            public final String extract(Object obj) {
                return FirebaseCommonRegistrar.$r8$lambda$i32xAjD3ZPnT8CWh_N09uYXbvXY((Context) obj);
            }
        }));
        arrayList.add(LibraryVersionComponent.fromContext("android-installer", new LibraryVersionComponent.VersionExtractor() { // from class: com.google.firebase.FirebaseCommonRegistrar$$ExternalSyntheticLambda3
            @Override // com.google.firebase.platforminfo.LibraryVersionComponent.VersionExtractor
            public final String extract(Object obj) {
                return FirebaseCommonRegistrar.m3511$r8$lambda$4HULsSJXjiWd9yqSIuIvr69gmw((Context) obj);
            }
        }));
        String strDetectVersion = KotlinDetector.detectVersion();
        if (strDetectVersion != null) {
            arrayList.add(LibraryVersionComponent.create("kotlin", strDetectVersion));
        }
        return arrayList;
    }

    public static /* synthetic */ String $r8$lambda$JRfXgWruDOlX8_YsmPkDH9kjxAM(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo != null) {
            return String.valueOf(applicationInfo.targetSdkVersion);
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public static /* synthetic */ String $r8$lambda$6KbLzjDGzlo31N3xe2HtYAtvoWM(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo != null && Build.VERSION.SDK_INT >= 24) {
            return String.valueOf(applicationInfo.minSdkVersion);
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public static /* synthetic */ String $r8$lambda$i32xAjD3ZPnT8CWh_N09uYXbvXY(Context context) {
        int i = Build.VERSION.SDK_INT;
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.television")) {
            return "tv";
        }
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) {
            return "watch";
        }
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            return "auto";
        }
        if (i >= 26 && context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) {
            return "embedded";
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    /* JADX INFO: renamed from: $r8$lambda$4HU-LsSJXjiWd9yqSIuIvr69gmw, reason: not valid java name */
    public static /* synthetic */ String m3511$r8$lambda$4HULsSJXjiWd9yqSIuIvr69gmw(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName != null ? safeValue(installerPackageName) : _UrlKt.FRAGMENT_ENCODE_SET;
    }

    private static String safeValue(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }
}
