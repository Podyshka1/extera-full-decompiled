package org.telegram.p029ui.Components;

import android.app.Activity;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.Bulletin;
import org.telegram.p029ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.PremiumPreviewFragment;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class StickerSetBulletinLayout extends Bulletin.TwoLineLayout {
    public StickerSetBulletinLayout(Context context, TLObject tLObject, int i, TLRPC.Document document, Theme.ResourcesProvider resourcesProvider) {
        this(context, tLObject, 1, i, document, resourcesProvider);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0024 A[PHI: r4
  0x0024: PHI (r4v2 org.telegram.tgnet.TLRPC$StickerSet) = 
  (r4v1 org.telegram.tgnet.TLRPC$StickerSet)
  (r4v19 org.telegram.tgnet.TLRPC$StickerSet)
  (r4v19 org.telegram.tgnet.TLRPC$StickerSet)
 binds: [B:17:0x003c, B:5:0x0015, B:7:0x001b] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public StickerSetBulletinLayout(final Context context, TLObject tLObject, int i, int i2, TLRPC.Document document, Theme.ResourcesProvider resourcesProvider) {
        TLRPC.Document document2;
        TLRPC.StickerSet stickerSet;
        TLRPC.Document document3;
        int i3;
        ImageLocation forSticker;
        TLRPC.TL_messages_stickerSet stickerSet2;
        super(context, resourcesProvider);
        boolean z = tLObject instanceof TLRPC.TL_messages_stickerSet;
        if (z) {
            TLRPC.TL_messages_stickerSet tL_messages_stickerSet = (TLRPC.TL_messages_stickerSet) tLObject;
            stickerSet = tL_messages_stickerSet.set;
            ArrayList arrayList = tL_messages_stickerSet.documents;
            document3 = (arrayList == null || arrayList.isEmpty()) ? null : (TLRPC.Document) arrayList.get(0);
            document2 = document3;
        } else if (tLObject instanceof TLRPC.StickerSetCovered) {
            TLRPC.StickerSetCovered stickerSetCovered = (TLRPC.StickerSetCovered) tLObject;
            stickerSet = stickerSetCovered.set;
            TLRPC.Document document4 = stickerSetCovered.cover;
            if (document4 != null) {
                document3 = document4;
            } else if (!stickerSetCovered.covers.isEmpty()) {
                document3 = (TLRPC.Document) stickerSetCovered.covers.get(0);
            }
            document2 = document3;
        } else {
            if (document == null && tLObject != null && BuildVars.DEBUG_VERSION) {
                throw new IllegalArgumentException("Invalid type of the given setObject: " + tLObject.getClass());
            }
            document2 = document;
            stickerSet = null;
        }
        if (stickerSet == null && document2 != null && (stickerSet2 = MediaDataController.getInstance(UserConfig.selectedAccount).getStickerSet(MessageObject.getInputStickerSet(document2), true)) != null) {
            stickerSet = stickerSet2.set;
        }
        TLRPC.StickerSet stickerSet3 = stickerSet;
        if (document2 != null) {
            TLObject closestPhotoSizeWithSize = stickerSet3 != null ? FileLoader.getClosestPhotoSizeWithSize(stickerSet3.thumbs, 90) : null;
            closestPhotoSizeWithSize = closestPhotoSizeWithSize == null ? document2 : closestPhotoSizeWithSize;
            boolean z2 = closestPhotoSizeWithSize instanceof TLRPC.Document;
            if (z2) {
                forSticker = ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(document2.thumbs, 90), document2);
            } else {
                TLRPC.PhotoSize photoSize = (TLRPC.PhotoSize) closestPhotoSizeWithSize;
                if (tLObject instanceof TLRPC.StickerSetCovered) {
                    i3 = ((TLRPC.StickerSetCovered) tLObject).set.thumb_version;
                } else {
                    i3 = z ? ((TLRPC.TL_messages_stickerSet) tLObject).set.thumb_version : 0;
                }
                forSticker = ImageLocation.getForSticker(photoSize, document2, i3);
            }
            ImageLocation imageLocation = forSticker;
            if (z2 && (MessageObject.isAnimatedStickerDocument(document2, true) || MessageObject.isVideoSticker(document2) || MessageObject.isGifDocument(document2))) {
                this.imageView.setImage(ImageLocation.getForDocument(document2), "50_50", imageLocation, (String) null, 0, tLObject);
            } else if (imageLocation != null && imageLocation.imageType == 1) {
                this.imageView.setImage(imageLocation, "50_50", "tgs", (Drawable) null, tLObject);
            } else {
                this.imageView.setImage(imageLocation, "50_50", "webp", (Drawable) null, tLObject);
            }
        } else {
            this.imageView.setImage((ImageLocation) null, (String) null, "webp", (Drawable) null, tLObject);
        }
        if (MessageObject.isTextColorEmoji(document2)) {
            this.imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        }
        switch (i2) {
            case 0:
                if (stickerSet3 != null) {
                    if (stickerSet3.masks) {
                        this.titleTextView.setText(LocaleController.getString(C2888R.string.MasksRemoved));
                        this.subtitleTextView.setText(LocaleController.formatString("MasksRemovedInfo", C2888R.string.MasksRemovedInfo, stickerSet3.title));
                        return;
                    } else {
                        if (stickerSet3.emojis) {
                            this.titleTextView.setText(LocaleController.getString(C2888R.string.EmojiRemoved));
                            if (i > 1) {
                                this.subtitleTextView.setText(LocaleController.formatPluralString("EmojiRemovedMultipleInfo", i, new Object[0]));
                                return;
                            } else {
                                this.subtitleTextView.setText(LocaleController.formatString("EmojiRemovedInfo", C2888R.string.EmojiRemovedInfo, stickerSet3.title));
                                return;
                            }
                        }
                        this.titleTextView.setText(LocaleController.getString(C2888R.string.StickersRemoved));
                        this.subtitleTextView.setText(LocaleController.formatString("StickersRemovedInfo", C2888R.string.StickersRemovedInfo, stickerSet3.title));
                        return;
                    }
                }
                return;
            case 1:
                if (stickerSet3 != null) {
                    if (stickerSet3.masks) {
                        this.titleTextView.setText(LocaleController.getString(C2888R.string.MasksArchived));
                        this.subtitleTextView.setText(LocaleController.formatString("MasksArchivedInfo", C2888R.string.MasksArchivedInfo, stickerSet3.title));
                        return;
                    } else if (stickerSet3.emojis) {
                        this.titleTextView.setText(LocaleController.getString(C2888R.string.EmojiArchived));
                        this.subtitleTextView.setText(LocaleController.formatString("EmojiArchivedInfo", C2888R.string.EmojiArchivedInfo, stickerSet3.title));
                        return;
                    } else {
                        this.titleTextView.setText(LocaleController.getString(C2888R.string.StickersArchived));
                        this.subtitleTextView.setText(LocaleController.formatString("StickersArchivedInfo", C2888R.string.StickersArchivedInfo, stickerSet3.title));
                        return;
                    }
                }
                return;
            case 2:
                if (stickerSet3 != null) {
                    if (stickerSet3.masks) {
                        this.titleTextView.setText(LocaleController.getString(C2888R.string.AddMasksInstalled));
                        this.subtitleTextView.setText(LocaleController.formatString("AddMasksInstalledInfo", C2888R.string.AddMasksInstalledInfo, stickerSet3.title));
                        return;
                    } else {
                        if (stickerSet3.emojis) {
                            this.titleTextView.setText(LocaleController.getString(C2888R.string.AddEmojiInstalled));
                            if (i > 1) {
                                this.subtitleTextView.setText(LocaleController.formatPluralString("AddEmojiMultipleInstalledInfo", i, new Object[0]));
                                return;
                            } else {
                                this.subtitleTextView.setText(LocaleController.formatString("AddEmojiInstalledInfo", C2888R.string.AddEmojiInstalledInfo, stickerSet3.title));
                                return;
                            }
                        }
                        this.titleTextView.setText(LocaleController.getString(C2888R.string.AddStickersInstalled));
                        this.subtitleTextView.setText(LocaleController.formatString("AddStickersInstalledInfo", C2888R.string.AddStickersInstalledInfo, stickerSet3.title));
                        return;
                    }
                }
                return;
            case 3:
                this.titleTextView.setText(LocaleController.getString(C2888R.string.RemovedFromRecent));
                this.subtitleTextView.setVisibility(8);
                return;
            case 4:
                this.titleTextView.setText(LocaleController.getString(C2888R.string.RemovedFromFavorites));
                this.subtitleTextView.setVisibility(8);
                return;
            case 5:
                this.titleTextView.setText(LocaleController.getString(C2888R.string.AddedToFavorites));
                this.subtitleTextView.setVisibility(8);
                return;
            case 6:
                if (!UserConfig.getInstance(UserConfig.selectedAccount).isPremium() && !MessagesController.getInstance(UserConfig.selectedAccount).premiumFeaturesBlocked()) {
                    this.titleTextView.setText(LocaleController.formatString("LimitReachedFavoriteStickers", C2888R.string.LimitReachedFavoriteStickers, Integer.valueOf(MessagesController.getInstance(UserConfig.selectedAccount).stickersFavedLimitDefault)));
                    this.subtitleTextView.setText(AndroidUtilities.premiumText(LocaleController.formatString("LimitReachedFavoriteStickersSubtitle", C2888R.string.LimitReachedFavoriteStickersSubtitle, Integer.valueOf(MessagesController.getInstance(UserConfig.selectedAccount).stickersFavedLimitPremium)), new Runnable() { // from class: org.telegram.ui.Components.StickerSetBulletinLayout$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            StickerSetBulletinLayout.$r8$lambda$H3iEL8c72YVk4MXdEAWXkJoksi0(context);
                        }
                    }));
                    return;
                } else {
                    this.titleTextView.setText(LocaleController.formatString("LimitReachedFavoriteStickers", C2888R.string.LimitReachedFavoriteStickers, Integer.valueOf(MessagesController.getInstance(UserConfig.selectedAccount).stickersFavedLimitPremium)));
                    this.subtitleTextView.setText(LocaleController.formatString("LimitReachedFavoriteStickersSubtitlePremium", C2888R.string.LimitReachedFavoriteStickersSubtitlePremium, new Object[0]));
                    return;
                }
            case 7:
                boolean zIsPremium = UserConfig.getInstance(UserConfig.selectedAccount).isPremium();
                if (!MessagesController.getInstance(UserConfig.selectedAccount).premiumFeaturesBlocked() && !zIsPremium) {
                    this.titleTextView.setText(LocaleController.formatString(C2888R.string.LimitReachedFavoriteGifs, Integer.valueOf(MessagesController.getInstance(UserConfig.selectedAccount).savedGifsLimitDefault)));
                    this.subtitleTextView.setText(AndroidUtilities.premiumText(LocaleController.formatString(C2888R.string.LimitReachedFavoriteGifsSubtitle, Integer.valueOf(MessagesController.getInstance(UserConfig.selectedAccount).savedGifsLimitPremium)), new Runnable() { // from class: org.telegram.ui.Components.StickerSetBulletinLayout$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            StickerSetBulletinLayout.m12653$r8$lambda$57QwHCVIjZ3fyt7ykEQYpLyG_I(context);
                        }
                    }));
                    return;
                } else {
                    this.titleTextView.setText(LocaleController.formatString(C2888R.string.LimitReachedFavoriteGifs, Integer.valueOf(zIsPremium ? MessagesController.getInstance(UserConfig.selectedAccount).savedGifsLimitPremium : MessagesController.getInstance(UserConfig.selectedAccount).savedGifsLimitDefault)));
                    this.subtitleTextView.setText(LocaleController.getString(C2888R.string.LimitReachedFavoriteGifsSubtitlePremium));
                    return;
                }
            default:
                return;
        }
    }

    public static /* synthetic */ void $r8$lambda$H3iEL8c72YVk4MXdEAWXkJoksi0(Context context) {
        Activity activityFindActivity = AndroidUtilities.findActivity(context);
        if (activityFindActivity instanceof LaunchActivity) {
            ((LaunchActivity) activityFindActivity).lambda$runLinkRequest$106(new PremiumPreviewFragment(LimitReachedBottomSheet.limitTypeToServerString(10)));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$57QwHCV-IjZ3fyt7ykEQYpLyG_I, reason: not valid java name */
    public static /* synthetic */ void m12653$r8$lambda$57QwHCVIjZ3fyt7ykEQYpLyG_I(Context context) {
        Activity activityFindActivity = AndroidUtilities.findActivity(context);
        if (activityFindActivity instanceof LaunchActivity) {
            ((LaunchActivity) activityFindActivity).lambda$runLinkRequest$106(new PremiumPreviewFragment(LimitReachedBottomSheet.limitTypeToServerString(9)));
        }
    }
}
