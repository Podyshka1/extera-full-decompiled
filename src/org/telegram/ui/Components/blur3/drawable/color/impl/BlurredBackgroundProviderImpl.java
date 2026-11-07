package org.telegram.ui.Components.blur3.drawable.color.impl;

import android.graphics.Color;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import com.exteragram.messenger.utils.ui.ChatHeaderUiHelper;
import com.exteragram.messenger.utils.ui.FabUiHelper;
import com.exteragram.messenger.utils.ui.MainTabsUiHelper;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProvider;
import org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BlurredBackgroundProviderImpl {
    public static BlurredBackgroundProvider mainTabs(Theme.ResourcesProvider resourcesProvider) {
        BlurredBackgroundProviderBuilder shadowLayer = new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return BlurredBackgroundProviderImpl.solveSrcColor(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider2), Theme.getColor(Theme.key_glass_targetMainTabs, resourcesProvider2), LiteMode.isEnabled(262144) ? 0.85f : 0.76f);
            }
        }).setShadowColor(536870912, 83886079).setShadowLayer(AndroidUtilities.dpf2(2.667f), 0.0f, AndroidUtilities.dpf2(0.85f));
        MainTabsUiHelper.applyBackgroundStroke(shadowLayer);
        return shadowLayer.build();
    }

    public static BlurredBackgroundProvider topPanel(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return BlurredBackgroundProviderImpl.solveSrcColor(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider2), Theme.getColor(Theme.key_glass_targetMainTopPanel, resourcesProvider2), LiteMode.isEnabled(262144) ? 0.85f : 0.76f);
            }
        }).setStrokeColorTop(285212672, 117440511).setStrokeColorBottom(536870912, 301989887).setShadowColor(536870912, 83886079).setShadowLayer(AndroidUtilities.dpf2(2.667f), 0.0f, AndroidUtilities.dpf2(0.85f)).setStrokeWidth(AndroidUtilities.dpf2(0.4f), AndroidUtilities.dpf2(0.4f)).build();
    }

    public static BlurredBackgroundProvider subFloatingButton(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda14
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return Theme.multAlpha(Theme.getColor(Theme.key_dialogBackground, resourcesProvider2), LiteMode.isEnabled(262144) ? 0.85f : 0.76f);
            }
        }).setStrokeColorTop(285212672, 117440511).setStrokeColorBottom(536870912, 301989887).setShadowColor(FabUiHelper.getSubFabShadowColor(), 83886079).setShadowLayer(AndroidUtilities.dpf2(FabUiHelper.getSubFabShadowRadiusDp()), 0.0f, AndroidUtilities.dpf2(FabUiHelper.getSubFabShadowDyDp())).setStrokeWidth(AndroidUtilities.dpf2(0.4f), AndroidUtilities.dpf2(0.4f)).setShadowAlwaysVisible().build();
    }

    public static BlurredBackgroundProvider tabsPanelNoShadow(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda19
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider2), 0.88f);
            }
        }).setStrokeColorTop(0, 0).setStrokeColorBottom(0, 0).setShadowColor(0, 0).build();
    }

    public static BlurredBackgroundProvider emojiViewButton(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda12
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider2), LiteMode.isEnabled(262144) ? 0.85f : 0.76f);
            }
        }).setStrokeColorTop(-1, 687865855).setStrokeColorBottom(-1, 352321535).setShadowColor(TLObject.FLAG_30, 0).setShadowLayer(AndroidUtilities.dpf2(3.6666667f), 0.0f, AndroidUtilities.dpf2(0.6666667f)).setStrokeWidth(AndroidUtilities.dpf2(0.5f), AndroidUtilities.dpf2(0.5f)).build();
    }

    public static BlurredBackgroundProvider counterMini(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda10
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return Theme.multAlpha(-16777216, 0.075f);
            }
        }).setStrokeColorTop(1627389951, 1358954495).setStrokeColorBottom(603979776, 603979776).setShadowColor(0, 0).setShadowLayer(0.0f, 0.0f, 0.0f).setStrokeWidth(AndroidUtilities.dpf2(0.43f), AndroidUtilities.dpf2(0.43f)).build();
    }

    public static BlurredBackgroundProvider messageMenuBackground(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda13
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return BlurredBackgroundProviderImpl.m14738$r8$lambda$u9331ymO4dSaP3a7W9JEn0YiiY(resourcesProvider2, z);
            }
        }).setStrokeColorTop(1157627903, 0).setStrokeColorBottom(587202559, 0).setShadowColor(939524096, 0).setShadowLayer(AndroidUtilities.dpf2(3.5f), 0.0f, 0.0f).setStrokeWidth(AndroidUtilities.dpf2(0.6666667f), AndroidUtilities.dpf2(0.6666667f)).build();
    }

    /* JADX INFO: renamed from: $r8$lambda$u9331ymO4dSaP3a7W9JEn0Yi-iY, reason: not valid java name */
    public static /* synthetic */ int m14738$r8$lambda$u9331ymO4dSaP3a7W9JEn0YiiY(Theme.ResourcesProvider resourcesProvider, boolean z) {
        if (LiteMode.isEnabled(256)) {
            return Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground), z ? 0.85f : 0.825f);
        }
        return Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground);
    }

    public static BlurredBackgroundProvider scrimMenuBackground(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground), z ? 0.85f : 0.825f);
            }
        }).setStrokeColorTop(1157627903, 0).setStrokeColorBottom(587202559, 0).setShadowColor(637534208, 0).setShadowLayer(AndroidUtilities.dpf2(4.0f), 0.0f, 0.0f).setStrokeWidth(AndroidUtilities.dpf2(0.6666667f), AndroidUtilities.dpf2(0.6666667f)).build();
    }

    public static BlurredBackgroundProvider attachMenuSearch(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda4
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider2), LiteMode.isEnabled(262144) ? 0.85f : 0.76f);
            }
        }).setStrokeColorTop(385875968, 402653183).setStrokeColorBottom(385875968, 402653183).setShadowColor(285212672, 83886079).setShadowLayer(AndroidUtilities.dpf2(2.0f), 0.0f, AndroidUtilities.dpf2(0.33333334f)).setStrokeWidth(AndroidUtilities.dpf2(0.4f), AndroidUtilities.dpf2(0.4f)).build();
    }

    public static BlurredBackgroundProvider searchFloatingDate(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda15
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return BlurredBackgroundProviderImpl.m14733$r8$lambda$MB_LqQxeNGauM_z9i_xeGRDLuU(resourcesProvider2, z);
            }
        }).setStrokeColorTop(385875968, 402653183).setStrokeColorBottom(385875968, 402653183).setShadowColor(0, 0).setStrokeWidth(1.0f, 1.0f).build();
    }

    /* JADX INFO: renamed from: $r8$lambda$MB_-LqQxeNGauM_z9i_xeGRDLuU, reason: not valid java name */
    public static /* synthetic */ int m14733$r8$lambda$MB_LqQxeNGauM_z9i_xeGRDLuU(Theme.ResourcesProvider resourcesProvider, boolean z) {
        return 855638016;
    }

    public static BlurredBackgroundProvider bottomPanelChatActivity(final Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda16
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return BlurredBackgroundProviderImpl.m14734$r8$lambda$WRfHXHldZtMx9acDdcFvqQPS80(resourcesProvider, resourcesProvider2, z);
            }
        }).setStrokeColorTop(-1, 687865855).setStrokeColorBottom(-1, 352321535).setShadowColor(536870912, 0).setStrokeWidth(AndroidUtilities.dpf2(0.5f), AndroidUtilities.dpf2(0.5f)).build();
    }

    /* JADX INFO: renamed from: $r8$lambda$WRfHXHldZtMx9acDdcF-vqQPS80, reason: not valid java name */
    public static /* synthetic */ int m14734$r8$lambda$WRfHXHldZtMx9acDdcFvqQPS80(Theme.ResourcesProvider resourcesProvider, Theme.ResourcesProvider resourcesProvider2, boolean z) {
        if (!checkBlurEnabled(resourcesProvider)) {
            return ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_chat_messagePanelBackground, resourcesProvider2), 255);
        }
        return Theme.multAlpha(Theme.getColor(Theme.key_chat_messagePanelBackground, resourcesProvider2), LiteMode.isEnabled(262144) ? 0.85f : 0.76f);
    }

    public static BlurredBackgroundProvider topPanelChatActivity(final Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return BlurredBackgroundProviderImpl.m14731$r8$lambda$E5ak8mLTAF7d3CTsOGRDBxI0Wo(resourcesProvider, resourcesProvider2, z);
            }
        }).setStrokeColorTop(-1, 553648127).setStrokeColorBottom(-1, 352321535).setStrokeColorFull(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda7
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return Theme.getDividerColor(resourcesProvider2);
            }
        }).setShadowColor(536870912, 0).setStrokeWidth(AndroidUtilities.dpf2(0.55f), AndroidUtilities.dpf2(0.55f)).build();
    }

    /* JADX INFO: renamed from: $r8$lambda$E5ak8mLTAF7-d3CTsOGRDBxI0Wo, reason: not valid java name */
    public static /* synthetic */ int m14731$r8$lambda$E5ak8mLTAF7d3CTsOGRDBxI0Wo(Theme.ResourcesProvider resourcesProvider, Theme.ResourcesProvider resourcesProvider2, boolean z) {
        if (!checkBlurEnabled(resourcesProvider)) {
            return ColorUtils.setAlphaComponent(Theme.getColor(z ? Theme.key_actionBarDefault : Theme.key_chat_topPanelBackground, resourcesProvider2), 255);
        }
        int color = Theme.getColor(Theme.key_chat_topPanelBackground, resourcesProvider2);
        boolean zIsEnabled = LiteMode.isEnabled(262144);
        return Theme.multAlpha(color, ChatHeaderUiHelper.isMaterial3ChatHeaderStyle() ? zIsEnabled ? 0.93f : 0.9f : zIsEnabled ? 0.85f : 0.76f);
    }

    public static BlurredBackgroundProvider topPanelChatActivityTags(final Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return BlurredBackgroundProviderImpl.m14729$r8$lambda$1vfWZdCmKAAke5Fas3luuAqq4(resourcesProvider, resourcesProvider2, z);
            }
        }).setStrokeColorTop(0, 0).setStrokeColorBottom(0, 0).setStrokeColorFull(0, 0).setShadowColor(0, 0).setShadowLayer(0.0f, 0.0f, 0.0f).setStrokeWidth(0.0f, 0.0f).build();
    }

    /* JADX INFO: renamed from: $r8$lambda$-1vfWZdCmKAAke5Fas3luu-Aqq4, reason: not valid java name */
    public static /* synthetic */ int m14729$r8$lambda$1vfWZdCmKAAke5Fas3luuAqq4(Theme.ResourcesProvider resourcesProvider, Theme.ResourcesProvider resourcesProvider2, boolean z) {
        if (!checkBlurEnabled(resourcesProvider)) {
            return ColorUtils.setAlphaComponent(Theme.getColor(z ? Theme.key_actionBarDefault : Theme.key_chat_topPanelBackground, resourcesProvider2), 255);
        }
        return Theme.multAlpha(Theme.getColor(Theme.key_chat_topPanelBackground, resourcesProvider2), LiteMode.isEnabled(262144) ? 0.85f : 0.76f);
    }

    public static BlurredBackgroundProvider topPanelChatActivitySearchListBg(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda9
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider2), 0.7f);
            }
        }).setStrokeColorTop(0, 0).setStrokeColorBottom(0, 0).setStrokeColorFull(0, 0).setShadowColor(0, 0).setShadowLayer(0.0f, 0.0f, 0.0f).setStrokeWidth(0.0f, 0.0f).build();
    }

    public static BlurredBackgroundProvider bulletin(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda17
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return Theme.multAlpha(Theme.getColor(Theme.key_undo_background, resourcesProvider2), LiteMode.isEnabled(262144) ? 0.85f : 0.76f);
            }
        }).setStrokeWidth(AndroidUtilities.dpf2(0.5f), AndroidUtilities.dpf2(0.5f)).build();
    }

    public static BlurredBackgroundProvider inputFieldDialogActivity(Theme.ResourcesProvider resourcesProvider) {
        return topPanel(resourcesProvider);
    }

    public static BlurredBackgroundProvider inputFieldShareAlert(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return BlurredBackgroundProviderImpl.solveSrcColor(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider2), Theme.getColor(Theme.key_chat_messagePanelBackground, resourcesProvider2), LiteMode.isEnabled(262144) ? 0.85f : 0.76f);
            }
        }).setStrokeColorTop(687865855, 687865855).setStrokeColorBottom(352321535, 352321535).setShadowColor(536870912, 0).setShadowLayer(AndroidUtilities.dpf2(3.3333333f), 0.0f, AndroidUtilities.dpf2(0.6666667f)).setStrokeWidth(AndroidUtilities.dpf2(1.0f), AndroidUtilities.dpf2(0.6666667f)).build();
    }

    public static BlurredBackgroundProvider photoViewer(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda11
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return BlurredBackgroundProviderImpl.m14737$r8$lambda$pGSLx9dugH4cqe5Yg9zJYGZO10(resourcesProvider2, z);
            }
        }).setStrokeColorTop(687865855, 687865855).setStrokeColorBottom(352321535, 352321535).setStrokeColorFull(687865855, 687865855).setStrokeWidth(AndroidUtilities.dpf2(0.6666667f), AndroidUtilities.dpf2(0.6666667f)).build();
    }

    /* JADX INFO: renamed from: $r8$lambda$pG-SLx9dugH4cqe5Yg9zJYGZO10, reason: not valid java name */
    public static /* synthetic */ int m14737$r8$lambda$pGSLx9dugH4cqe5Yg9zJYGZO10(Theme.ResourcesProvider resourcesProvider, boolean z) {
        LiteMode.isEnabled(262144);
        return 0;
    }

    public static BlurredBackgroundProvider photoViewerMenu(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda18
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return TLObject.FLAG_30;
            }
        }).setStrokeColorTop(687865855, 687865855).setStrokeColorBottom(352321535, 352321535).setStrokeWidth(AndroidUtilities.dpf2(0.6666667f), AndroidUtilities.dpf2(0.6666667f)).build();
    }

    public static BlurredBackgroundProvider premiumButton(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setBackgroundColor(new BlurredBackgroundProviderBuilder.ColorProvider() { // from class: org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl$$ExternalSyntheticLambda8
            @Override // org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundProviderBuilder.ColorProvider
            public final int getColor(Theme.ResourcesProvider resourcesProvider2, boolean z) {
                return Theme.multAlpha(Theme.getColor(Theme.key_dialogBackground, resourcesProvider2), 0.78f);
            }
        }).setStrokeColorTop(-1, 553648127).setStrokeColorBottom(0, 553648127).setShadowColor(1207959552, 83886079).setShadowLayer(AndroidUtilities.dpf2(0.6666667f), 0.0f, 0.0f).setStrokeWidth(AndroidUtilities.dpf2(0.67f), AndroidUtilities.dpf2(0.67f)).build();
    }

    public static BlurredBackgroundProvider shadow(Theme.ResourcesProvider resourcesProvider) {
        return new BlurredBackgroundProviderBuilder(resourcesProvider).setStrokeColorTop(0, 687865855).setStrokeColorBottom(0, 352321535).setShadowColor(805306368, 83886079).setShadowLayer(AndroidUtilities.dpf2(4.0f), 0.0f, AndroidUtilities.dpf2(0.33333334f)).setStrokeWidth(AndroidUtilities.dpf2(0.4f), AndroidUtilities.dpf2(0.4f)).build();
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
