package com.exteragram.messenger.icons;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.exteragram.messenger.icons.p012ui.picker.IconObserver;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes.dex */
public final class ExteraResources extends Resources {
    private final Resources mResources;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExteraResources(Resources mResources) {
        super(mResources.getAssets(), mResources.getDisplayMetrics(), mResources.getConfiguration());
        Intrinsics.checkNotNullParameter(mResources, "mResources");
        this.mResources = mResources;
        IconManager.initialize$default(IconManager.INSTANCE, false, 1, null);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawableForDensity(int i, int i2, Resources.Theme theme) {
        IconObserver.INSTANCE.log(i);
        IconManager iconManager = IconManager.INSTANCE;
        Drawable drawable = iconManager.getDrawable(i, i2, theme);
        if (drawable != null) {
            return drawable;
        }
        try {
            i = iconManager.getIcon(i);
        } catch (Throwable th) {
            FileLog.m1136e(th);
        }
        return this.mResources.getDrawableForDensity(i, i2, theme);
    }

    public final Drawable getOriginalDrawable(int i) {
        try {
            return this.mResources.getDrawable(i);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }
}
