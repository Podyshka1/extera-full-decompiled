package org.telegram.p029ui.Components.blur3.drawable.color.impl;

import android.graphics.Color;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.blur3.drawable.color.BlurredBackgroundProvider;
import org.telegram.p029ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BlurredBackgroundProviderImpl {
    public static BlurredBackgroundProvider mainTabs(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return BlurredBackgroundProviderImpl.solveSrcColor(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider2), Theme.getColor(Theme.key_glass_targetMainTabs, resourcesProvider2), LiteMode.isEnabled(262144) ? 0.85f : 0.76f);
            }
        }).setStrokeColorTop(285212672, 117440511).setStrokeColorBottom(536870912, 301989887).setShadowColor(536870912, 83886079).setShadowLayer(AndroidUtilities.dpf2(2.667f), 0.0f, AndroidUtilities.dpf2(0.85f)).setStrokeWidth(AndroidUtilities.dpf2(0.4f), AndroidUtilities.dpf2(0.4f)).build();
    }

    public static BlurredBackgroundProvider topPanel(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return BlurredBackgroundProviderImpl.solveSrcColor(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider2), Theme.getColor(Theme.key_glass_targetMainTopPanel, resourcesProvider2), LiteMode.isEnabled(262144) ? 0.85f : 0.76f);
            }
        }).setStrokeColorTop(385875968, 402653183).setStrokeColorBottom(385875968, 402653183).setShadowColor(637534208, 83886079).setShadowLayer(AndroidUtilities.dpf2(3.3333333f), 0.0f, AndroidUtilities.dpf2(0.6666667f)).setStrokeWidth(AndroidUtilities.dpf2(0.4f), AndroidUtilities.dpf2(0.4f)).build();
    }

    public static BlurredBackgroundProvider attachMenuSearch(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider2), LiteMode.isEnabled(262144) ? 0.85f : 0.76f);
            }
        }).setStrokeColorTop(385875968, 402653183).setStrokeColorBottom(385875968, 402653183).setShadowColor(285212672, 83886079).setShadowLayer(AndroidUtilities.dpf2(2.0f), 0.0f, AndroidUtilities.dpf2(0.33333334f)).setStrokeWidth(AndroidUtilities.dpf2(0.4f), AndroidUtilities.dpf2(0.4f)).build();
    }

    public static BlurredBackgroundProvider searchFloatingDate(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda7
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return AndroidUtilities.DARK_STATUS_BAR_OVERLAY;
            }
        }).setStrokeColorTop(385875968, 402653183).setStrokeColorBottom(385875968, 402653183).setShadowColor(0, 0).setStrokeWidth(1.0f, 1.0f).build();
    }

    public static BlurredBackgroundProvider topPanelChatActivity(final Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return BlurredBackgroundProviderImpl.m13205$r8$lambda$Hu03si0pUOx6fYgIxiDqD1b5o(resourcesProvider, resourcesProvider2, z);
            }
        }).setStrokeColorTop(-1, 687865855).setStrokeColorBottom(-1, 352321535).setShadowColor(536870912, 0).setStrokeWidth(AndroidUtilities.dpf2(0.5f), AndroidUtilities.dpf2(0.5f)).build();
    }

    /* JADX INFO: renamed from: $r8$lambda$Hu03si0pU-Ox6f-YgIxiDqD1b5o, reason: not valid java name */
    public static /* synthetic */ int m13205$r8$lambda$Hu03si0pUOx6fYgIxiDqD1b5o(Theme.ResourcesProvider resourcesProvider, Theme.ResourcesProvider resourcesProvider2, boolean z) {
        if (!checkBlurEnabled(resourcesProvider)) {
            return ColorUtils.setAlphaComponent(Theme.getColor(z ? Theme.key_actionBarDefault : Theme.key_chat_topPanelBackground, resourcesProvider2), 255);
        }
        return Theme.multAlpha(Theme.getColor(Theme.key_chat_topPanelBackground, resourcesProvider2), LiteMode.isEnabled(262144) ? 0.85f : 0.76f);
    }

    public static BlurredBackgroundProvider inputFieldDialogActivity(Theme.ResourcesProvider resourcesProvider) {
        return topPanel(resourcesProvider);
    }

    public static BlurredBackgroundProvider inputFieldShareAlert(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return BlurredBackgroundProviderImpl.solveSrcColor(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider2), Theme.getColor(Theme.key_chat_messagePanelBackground, resourcesProvider2), LiteMode.isEnabled(262144) ? 0.85f : 0.76f);
            }
        }).setStrokeColorTop(385875968, 402653183).setStrokeColorBottom(385875968, 402653183).setShadowColor(637534208, 83886079).setShadowLayer(AndroidUtilities.dpf2(3.3333333f), 0.0f, AndroidUtilities.dpf2(0.6666667f)).setStrokeWidth(AndroidUtilities.dpf2(0.4f), AndroidUtilities.dpf2(0.4f)).build();
    }

    public static BlurredBackgroundProvider photoViewer(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return BlurredBackgroundProviderImpl.$r8$lambda$lVkm7AnUPg4K1xNBgWvdJSqq43U(resourcesProvider2, z);
            }
        }).setStrokeColorTop(687865855, 687865855).setStrokeColorBottom(352321535, 352321535).setStrokeColorFull(687865855, 687865855).setStrokeWidth(AndroidUtilities.dpf2(0.6666667f), AndroidUtilities.dpf2(0.6666667f)).build();
    }

    public static /* synthetic */ int $r8$lambda$lVkm7AnUPg4K1xNBgWvdJSqq43U(Theme.ResourcesProvider resourcesProvider, boolean z) {
        LiteMode.isEnabled(262144);
        return 0;
    }

    public static BlurredBackgroundProvider premiumButton(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda4
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return Theme.multAlpha(Theme.getColor(Theme.key_dialogBackground, resourcesProvider2), 0.78f);
            }
        }).setStrokeColorTop(-1, 553648127).setStrokeColorBottom(0, 553648127).setShadowColor(805306368, 83886079).setShadowLayer(AndroidUtilities.dpf2(4.0f), 0.0f, AndroidUtilities.dpf2(0.33333334f)).setStrokeWidth(AndroidUtilities.dpf2(0.67f), AndroidUtilities.dpf2(0.67f)).build();
    }

    public static int solveSrcColor(int i, int i2, float f) {
        float fClamp = MathUtils.clamp(f, 0.0f, 1.0f);
        if (fClamp <= 0.0f) {
            return Color.argb(0, 0, 0, 0);
        }
        if (fClamp >= 1.0f) {
            return Color.argb(255, Color.red(i2), Color.green(i2), Color.blue(i2));
        }
        int iRed = Color.red(i);
        int iGreen = Color.green(i);
        int iBlue = Color.blue(i);
        float f2 = 1.0f - fClamp;
        return Color.argb(MathUtils.clamp(Math.round(fClamp * 255.0f), 0, 255), MathUtils.clamp(Math.round((Color.red(i2) - (iRed * f2)) / fClamp), 0, 255), MathUtils.clamp(Math.round((Color.green(i2) - (iGreen * f2)) / fClamp), 0, 255), MathUtils.clamp(Math.round((Color.blue(i2) - (iBlue * f2)) / fClamp), 0, 255));
    }

    public static boolean checkBlurEnabled(Theme.ResourcesProvider resourcesProvider) {
        return checkBlurEnabled(UserConfig.selectedAccount, resourcesProvider);
    }

    public static boolean checkBlurEnabled(int i, Theme.ResourcesProvider resourcesProvider) {
        boolean zIsDark = resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark();
        boolean zChatBlurEnabled = SharedConfig.chatBlurEnabled();
        if (zChatBlurEnabled && !zIsDark && MessagesController.getInstance(i).config.disableBlurInLightTheme.get()) {
            zChatBlurEnabled = false;
        }
        if (zChatBlurEnabled && zIsDark && MessagesController.getInstance(i).config.disableBlurInDarkTheme.get()) {
            return false;
        }
        return zChatBlurEnabled;
    }
}
