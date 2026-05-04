package com.google.firebase.crashlytics.internal;

import android.content.Context;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class DevelopmentPlatformProvider {
    private final Context context;
    private DevelopmentPlatform developmentPlatform = null;

    public DevelopmentPlatformProvider(Context context) {
        this.context = context;
    }

    public String getDevelopmentPlatform() {
        return initDevelopmentPlatform().developmentPlatform;
    }

    public String getDevelopmentPlatformVersion() {
        return initDevelopmentPlatform().developmentPlatformVersion;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean assetFileExists(String str) {
        if (this.context.getAssets() == null) {
            return false;
        }
        try {
            InputStream inputStreamOpen = this.context.getAssets().open(str);
            if (inputStreamOpen != null) {
                inputStreamOpen.close();
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    private DevelopmentPlatform initDevelopmentPlatform() {
        if (this.developmentPlatform == null) {
            this.developmentPlatform = new DevelopmentPlatform();
        }
        return this.developmentPlatform;
    }

    private class DevelopmentPlatform {
        private final String developmentPlatform;
        private final String developmentPlatformVersion;

        private DevelopmentPlatform() {
            int resourcesIdentifier = CommonUtils.getResourcesIdentifier(DevelopmentPlatformProvider.this.context, "com.google.firebase.crashlytics.unity_version", "string");
            if (resourcesIdentifier == 0) {
                if (DevelopmentPlatformProvider.this.assetFileExists("flutter_assets/NOTICES.Z")) {
                    this.developmentPlatform = "Flutter";
                    this.developmentPlatformVersion = null;
                    Logger.getLogger().m507v("Development platform is: Flutter");
                    return;
                } else {
                    this.developmentPlatform = null;
                    this.developmentPlatformVersion = null;
                    return;
                }
            }
            this.developmentPlatform = "Unity";
            String string = DevelopmentPlatformProvider.this.context.getResources().getString(resourcesIdentifier);
            this.developmentPlatformVersion = string;
            Logger.getLogger().m507v("Unity Editor version is: " + string);
        }
    }
}
