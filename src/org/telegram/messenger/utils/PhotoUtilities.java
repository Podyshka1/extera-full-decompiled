package org.telegram.messenger.utils;

import android.os.Bundle;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.INavigationLayout;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.ImageUpdater;
import org.telegram.p029ui.PhotoViewer;
import org.telegram.p029ui.ProfileActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes5.dex */
public abstract class PhotoUtilities {
    public static void applyPhotoToUser(TLRPC.Photo photo, TLRPC.User user, boolean z) {
        ArrayList arrayList = photo.sizes;
        TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, 100);
        TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(arrayList, MediaDataController.MAX_STYLE_RUNS_COUNT);
        user.flags |= 32;
        TLRPC.TL_userProfilePhoto tL_userProfilePhoto = new TLRPC.TL_userProfilePhoto();
        user.photo = tL_userProfilePhoto;
        tL_userProfilePhoto.personal = z;
        tL_userProfilePhoto.photo_id = photo.f1692id;
        ArrayList arrayList2 = photo.video_sizes;
        tL_userProfilePhoto.has_video = arrayList2 != null && arrayList2.size() > 0;
        if (closestPhotoSizeWithSize != null) {
            user.photo.photo_small = closestPhotoSizeWithSize.location;
        }
        if (closestPhotoSizeWithSize2 != null) {
            user.photo.photo_big = closestPhotoSizeWithSize2.location;
        }
    }

    public static void setImageAsAvatar(MediaController.PhotoEntry photoEntry, BaseFragment baseFragment, final Runnable runnable) {
        final INavigationLayout parentLayout = baseFragment.getParentLayout();
        final int currentAccount = baseFragment.getCurrentAccount();
        final ImageUpdater imageUpdater = new ImageUpdater(true, 0, true);
        imageUpdater.parentFragment = baseFragment;
        imageUpdater.processEntry(photoEntry);
        imageUpdater.setDelegate(new ImageUpdater.ImageUpdaterDelegate() { // from class: org.telegram.messenger.utils.PhotoUtilities$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
            public /* synthetic */ boolean canFinishFragment() {
                return ImageUpdater.ImageUpdaterDelegate.CC.$default$canFinishFragment(this);
            }

            @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
            public /* synthetic */ void didStartUpload(boolean z, boolean z2) {
                ImageUpdater.ImageUpdaterDelegate.CC.$default$didStartUpload(this, z, z2);
            }

            @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
            public /* synthetic */ void didUploadFailed() {
                ImageUpdater.ImageUpdaterDelegate.CC.$default$didUploadFailed(this);
            }

            @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
            public final void didUploadPhoto(TLRPC.InputFile inputFile, TLRPC.InputFile inputFile2, double d, String str, TLRPC.PhotoSize photoSize, TLRPC.PhotoSize photoSize2, boolean z, TLRPC.VideoSize videoSize) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.utils.PhotoUtilities$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        PhotoUtilities.m5099$r8$lambda$7MejB92G72HNHArTnHvAEjZ0Ys(inputFile, inputFile2, d, videoSize, i, photoSize2, photoSize, runnable, iNavigationLayout, imageUpdater);
                    }
                });
            }

            @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
            public /* synthetic */ PhotoViewer.PlaceProviderObject getCloseIntoObject() {
                return ImageUpdater.ImageUpdaterDelegate.CC.$default$getCloseIntoObject(this);
            }

            @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
            public /* synthetic */ String getInitialSearchString() {
                return ImageUpdater.ImageUpdaterDelegate.CC.$default$getInitialSearchString(this);
            }

            @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
            public /* synthetic */ void onUploadProgressChanged(float f) {
                ImageUpdater.ImageUpdaterDelegate.CC.$default$onUploadProgressChanged(this, f);
            }

            @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
            public /* synthetic */ boolean supportsBulletin() {
                return ImageUpdater.ImageUpdaterDelegate.CC.$default$supportsBulletin(this);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$7M-ejB92G72HNHArTnHvAEjZ0Ys, reason: not valid java name */
    public static /* synthetic */ void m5099$r8$lambda$7MejB92G72HNHArTnHvAEjZ0Ys(TLRPC.InputFile inputFile, TLRPC.InputFile inputFile2, double d, TLRPC.VideoSize videoSize, final int i, final TLRPC.PhotoSize photoSize, final TLRPC.PhotoSize photoSize2, final Runnable runnable, final INavigationLayout iNavigationLayout, ImageUpdater imageUpdater) {
        TLRPC.TL_photos_uploadProfilePhoto tL_photos_uploadProfilePhoto = new TLRPC.TL_photos_uploadProfilePhoto();
        if (inputFile != null) {
            tL_photos_uploadProfilePhoto.file = inputFile;
            tL_photos_uploadProfilePhoto.flags |= 1;
        }
        if (inputFile2 != null) {
            tL_photos_uploadProfilePhoto.video = inputFile2;
            int i2 = tL_photos_uploadProfilePhoto.flags;
            tL_photos_uploadProfilePhoto.video_start_ts = d;
            tL_photos_uploadProfilePhoto.flags = i2 | 6;
        }
        if (videoSize != null) {
            tL_photos_uploadProfilePhoto.video_emoji_markup = videoSize;
            tL_photos_uploadProfilePhoto.flags |= 16;
        }
        ConnectionsManager.getInstance(i).sendRequest(tL_photos_uploadProfilePhoto, new RequestDelegate() { // from class: org.telegram.messenger.utils.PhotoUtilities$$ExternalSyntheticLambda6
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.utils.PhotoUtilities$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        PhotoUtilities.m5102$r8$lambda$qx2kormntPEvjsmL_mb7R_n0Dg(tLObject, i, photoSize, photoSize, runnable, iNavigationLayout);
                    }
                });
            }
        });
        imageUpdater.onPause();
    }

    /* JADX INFO: renamed from: $r8$lambda$qx2kormntPEvjsmL_m-b7R_n0Dg, reason: not valid java name */
    public static /* synthetic */ void m5102$r8$lambda$qx2kormntPEvjsmL_mb7R_n0Dg(TLObject tLObject, final int i, TLRPC.PhotoSize photoSize, TLRPC.PhotoSize photoSize2, Runnable runnable, final INavigationLayout iNavigationLayout) {
        if (tLObject instanceof TLRPC.TL_photos_photo) {
            TLRPC.TL_photos_photo tL_photos_photo = (TLRPC.TL_photos_photo) tLObject;
            MessagesController.getInstance(i).putUsers(tL_photos_photo.users, false);
            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(UserConfig.getInstance(i).clientUserId));
            TLRPC.Photo photo = tL_photos_photo.photo;
            if (!(photo instanceof TLRPC.TL_photo) || user == null) {
                return;
            }
            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(photo.sizes, 100);
            TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(tL_photos_photo.photo.sizes, MediaDataController.MAX_STYLE_RUNS_COUNT);
            if (closestPhotoSizeWithSize != null && photoSize != null && photoSize.location != null) {
                FileLoader.getInstance(i).getPathToAttach(photoSize.location, true).renameTo(FileLoader.getInstance(i).getPathToAttach(closestPhotoSizeWithSize, true));
                ImageLoader.getInstance().replaceImageInCache(photoSize.location.volume_id + "_" + photoSize.location.local_id + "@50_50", closestPhotoSizeWithSize.location.volume_id + "_" + closestPhotoSizeWithSize.location.local_id + "@50_50", ImageLocation.getForUser(user, 1), false);
            }
            if (closestPhotoSizeWithSize2 != null && photoSize2 != null && photoSize2.location != null) {
                FileLoader.getInstance(i).getPathToAttach(photoSize2.location, true).renameTo(FileLoader.getInstance(i).getPathToAttach(closestPhotoSizeWithSize2, true));
            }
            applyPhotoToUser(tL_photos_photo.photo, user, false);
            UserConfig.getInstance(i).setCurrentUser(user);
            UserConfig.getInstance(i).saveConfig(true);
            if (runnable != null) {
                runnable.run();
            }
            BulletinFactory.m1246of(iNavigationLayout.getLastFragment()).createUsersBulletin(Collections.singletonList(user), AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ApplyAvatarHintTitle)), AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.ApplyAvatarHint), new Runnable() { // from class: org.telegram.messenger.utils.PhotoUtilities$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoUtilities.m5100$r8$lambda$ozcDEvBk9PRJN_Uvr7r6EfrkSw(i, iNavigationLayout);
                }
            }), null).show();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$ozcDEvBk9PRJN_Uvr7r6Ef-rkSw, reason: not valid java name */
    public static /* synthetic */ void m5100$r8$lambda$ozcDEvBk9PRJN_Uvr7r6EfrkSw(int i, INavigationLayout iNavigationLayout) {
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", UserConfig.getInstance(i).clientUserId);
        iNavigationLayout.getLastFragment().presentFragment(new ProfileActivity(bundle));
    }

    public static void replacePhotoImagesInCache(int i, TLRPC.Photo photo, TLRPC.Photo photo2) {
        TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(photo.sizes, 100);
        TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(photo.sizes, MediaDataController.MAX_STYLE_RUNS_COUNT);
        TLRPC.PhotoSize closestPhotoSizeWithSize3 = FileLoader.getClosestPhotoSizeWithSize(photo2.sizes, 100);
        TLRPC.PhotoSize closestPhotoSizeWithSize4 = FileLoader.getClosestPhotoSizeWithSize(photo2.sizes, MediaDataController.MAX_STYLE_RUNS_COUNT);
        if (closestPhotoSizeWithSize3 != null && closestPhotoSizeWithSize != null) {
            FileLoader.getInstance(i).getPathToAttach(closestPhotoSizeWithSize, true).renameTo(FileLoader.getInstance(i).getPathToAttach(closestPhotoSizeWithSize3, true));
            ImageLoader.getInstance().replaceImageInCache(closestPhotoSizeWithSize.location.volume_id + "_" + closestPhotoSizeWithSize.location.local_id + "@50_50", closestPhotoSizeWithSize3.location.volume_id + "_" + closestPhotoSizeWithSize3.location.local_id + "@50_50", ImageLocation.getForPhoto(closestPhotoSizeWithSize, photo), false);
        }
        if (closestPhotoSizeWithSize4 == null || closestPhotoSizeWithSize2 == null) {
            return;
        }
        FileLoader.getInstance(i).getPathToAttach(closestPhotoSizeWithSize2, true).renameTo(FileLoader.getInstance(i).getPathToAttach(closestPhotoSizeWithSize4, true));
        ImageLoader.getInstance().replaceImageInCache(closestPhotoSizeWithSize2.location.volume_id + "_" + closestPhotoSizeWithSize2.location.local_id + "@150_150", closestPhotoSizeWithSize4.location.volume_id + "_" + closestPhotoSizeWithSize4.location.local_id + "@150_150", ImageLocation.getForPhoto(closestPhotoSizeWithSize2, photo), false);
    }

    public static void applyPhotoToUser(TLRPC.PhotoSize photoSize, TLRPC.PhotoSize photoSize2, boolean z, TLRPC.User user, boolean z2) {
        user.flags |= 32;
        TLRPC.TL_userProfilePhoto tL_userProfilePhoto = new TLRPC.TL_userProfilePhoto();
        user.photo = tL_userProfilePhoto;
        tL_userProfilePhoto.personal = z2;
        tL_userProfilePhoto.photo_id = 0L;
        tL_userProfilePhoto.has_video = z;
        if (photoSize != null) {
            tL_userProfilePhoto.photo_small = photoSize.location;
        }
        if (photoSize2 != null) {
            tL_userProfilePhoto.photo_big = photoSize2.location;
        }
    }

    public static void showAvatartConstructorForUpdateUserPhoto(final ChatActivity chatActivity, TLRPC.VideoSize videoSize) {
        ImageUpdater imageUpdater = new ImageUpdater(true, 0, true);
        imageUpdater.parentFragment = chatActivity;
        imageUpdater.showAvatarConstructor(videoSize);
        final TLRPC.FileLocation[] fileLocationArr = new TLRPC.FileLocation[1];
        final TLRPC.FileLocation[] fileLocationArr2 = new TLRPC.FileLocation[1];
        final long clientUserId = chatActivity.getUserConfig().getClientUserId();
        imageUpdater.setDelegate(new ImageUpdater.ImageUpdaterDelegate() { // from class: org.telegram.messenger.utils.PhotoUtilities$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
            public /* synthetic */ boolean canFinishFragment() {
                return ImageUpdater.ImageUpdaterDelegate.CC.$default$canFinishFragment(this);
            }

            @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
            public /* synthetic */ void didStartUpload(boolean z, boolean z2) {
                ImageUpdater.ImageUpdaterDelegate.CC.$default$didStartUpload(this, z, z2);
            }

            @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
            public /* synthetic */ void didUploadFailed() {
                ImageUpdater.ImageUpdaterDelegate.CC.$default$didUploadFailed(this);
            }

            @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
            public final void didUploadPhoto(TLRPC.InputFile inputFile, TLRPC.InputFile inputFile2, double d, String str, TLRPC.PhotoSize photoSize, TLRPC.PhotoSize photoSize2, boolean z, TLRPC.VideoSize videoSize2) {
                PhotoUtilities.m5098$r8$lambda$4UaqjCAnbRsMNEcpG9vGjmmDbE(chatActivity, fileLocationArr, fileLocationArr2, clientUserId, inputFile, inputFile2, d, str, photoSize, photoSize2, z, videoSize2);
            }

            @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
            public /* synthetic */ PhotoViewer.PlaceProviderObject getCloseIntoObject() {
                return ImageUpdater.ImageUpdaterDelegate.CC.$default$getCloseIntoObject(this);
            }

            @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
            public /* synthetic */ String getInitialSearchString() {
                return ImageUpdater.ImageUpdaterDelegate.CC.$default$getInitialSearchString(this);
            }

            @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
            public /* synthetic */ void onUploadProgressChanged(float f) {
                ImageUpdater.ImageUpdaterDelegate.CC.$default$onUploadProgressChanged(this, f);
            }

            @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
            public /* synthetic */ boolean supportsBulletin() {
                return ImageUpdater.ImageUpdaterDelegate.CC.$default$supportsBulletin(this);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$VGyOKEJ4EPt_YZymp46qHxmuRrU(TLRPC.TL_error tL_error, final ChatActivity chatActivity, TLObject tLObject, TLRPC.FileLocation[] fileLocationArr, String str, TLRPC.FileLocation[] fileLocationArr2, final long j) {
        if (tL_error == null) {
            TLRPC.User user = chatActivity.getMessagesController().getUser(Long.valueOf(chatActivity.getUserConfig().getClientUserId()));
            TLRPC.TL_photos_photo tL_photos_photo = (TLRPC.TL_photos_photo) tLObject;
            ArrayList arrayList = tL_photos_photo.photo.sizes;
            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, 150);
            TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(arrayList, 800);
            TLRPC.VideoSize closestVideoSizeWithSize = tL_photos_photo.photo.video_sizes.isEmpty() ? null : FileLoader.getClosestVideoSizeWithSize(tL_photos_photo.photo.video_sizes, MediaDataController.MAX_STYLE_RUNS_COUNT);
            TLRPC.TL_userProfilePhoto tL_userProfilePhoto = new TLRPC.TL_userProfilePhoto();
            user.photo = tL_userProfilePhoto;
            tL_userProfilePhoto.photo_id = tL_photos_photo.photo.f1692id;
            if (closestPhotoSizeWithSize != null) {
                tL_userProfilePhoto.photo_small = closestPhotoSizeWithSize.location;
            }
            if (closestPhotoSizeWithSize2 != null) {
                tL_userProfilePhoto.photo_big = closestPhotoSizeWithSize2.location;
            }
            if (closestPhotoSizeWithSize != null && fileLocationArr[0] != null) {
                FileLoader.getInstance(chatActivity.getCurrentAccount()).getPathToAttach(fileLocationArr[0], true).renameTo(FileLoader.getInstance(chatActivity.getCurrentAccount()).getPathToAttach(closestPhotoSizeWithSize, true));
                ImageLoader.getInstance().replaceImageInCache(fileLocationArr[0].volume_id + "_" + fileLocationArr[0].local_id + "@50_50", closestPhotoSizeWithSize.location.volume_id + "_" + closestPhotoSizeWithSize.location.local_id + "@50_50", ImageLocation.getForUserOrChat(user, 1), false);
            }
            if (closestVideoSizeWithSize != null && str != null) {
                new File(str).renameTo(FileLoader.getInstance(chatActivity.getCurrentAccount()).getPathToAttach(closestVideoSizeWithSize, "mp4", true));
            } else if (closestPhotoSizeWithSize2 != null && fileLocationArr2[0] != null) {
                FileLoader.getInstance(chatActivity.getCurrentAccount()).getPathToAttach(fileLocationArr2[0], true).renameTo(FileLoader.getInstance(chatActivity.getCurrentAccount()).getPathToAttach(closestPhotoSizeWithSize2, true));
            }
            chatActivity.getMessagesController().getDialogPhotos(user.f1825id).addPhotoAtStart(tL_photos_photo.photo);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(user);
            chatActivity.getMessagesStorage().putUsersAndChats(arrayList2, null, false, true);
            TLRPC.UserFull userFull = chatActivity.getMessagesController().getUserFull(j);
            userFull.profile_photo = tL_photos_photo.photo;
            chatActivity.getMessagesStorage().updateUserInfo(userFull, false);
            BulletinFactory.m1246of(chatActivity).createUsersBulletin(Collections.singletonList(user), AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ApplyAvatarHintTitle)), AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.ApplyAvatarHint), new Runnable() { // from class: org.telegram.messenger.utils.PhotoUtilities$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoUtilities.m5101$r8$lambda$qLMsmLE_mPCuS_MPL8DHMzZJas(j, chatActivity);
                }
            }), null).show();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$qLMsmLE_mPCuS_MPL8DHMzZJa-s, reason: not valid java name */
    public static /* synthetic */ void m5101$r8$lambda$qLMsmLE_mPCuS_MPL8DHMzZJas(long j, ChatActivity chatActivity) {
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", j);
        chatActivity.presentFragment(new ProfileActivity(bundle));
    }

    /* JADX INFO: renamed from: $r8$lambda$4Ua-qjCAnbRsMNEcpG9vGjmmDbE, reason: not valid java name */
    public static /* synthetic */ void m5098$r8$lambda$4UaqjCAnbRsMNEcpG9vGjmmDbE(final ChatActivity chatActivity, final TLRPC.FileLocation[] fileLocationArr, final TLRPC.FileLocation[] fileLocationArr2, final long j, TLRPC.InputFile inputFile, TLRPC.InputFile inputFile2, double d, final String str, TLRPC.PhotoSize photoSize, TLRPC.PhotoSize photoSize2, boolean z, TLRPC.VideoSize videoSize) {
        if (inputFile != null || inputFile2 != null || videoSize != null) {
            TLRPC.TL_photos_uploadProfilePhoto tL_photos_uploadProfilePhoto = new TLRPC.TL_photos_uploadProfilePhoto();
            if (inputFile != null) {
                tL_photos_uploadProfilePhoto.file = inputFile;
                tL_photos_uploadProfilePhoto.flags |= 1;
            }
            if (inputFile2 != null) {
                tL_photos_uploadProfilePhoto.video = inputFile2;
                int i = tL_photos_uploadProfilePhoto.flags;
                tL_photos_uploadProfilePhoto.video_start_ts = d;
                tL_photos_uploadProfilePhoto.flags = i | 6;
            }
            if (videoSize != null) {
                tL_photos_uploadProfilePhoto.video_emoji_markup = videoSize;
                tL_photos_uploadProfilePhoto.flags |= 16;
            }
            chatActivity.getConnectionsManager().sendRequest(tL_photos_uploadProfilePhoto, new RequestDelegate() { // from class: org.telegram.messenger.utils.PhotoUtilities$$ExternalSyntheticLambda2
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.utils.PhotoUtilities$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            PhotoUtilities.$r8$lambda$VGyOKEJ4EPt_YZymp46qHxmuRrU(tL_error, chatActivity, tLObject, fileLocationArr, str, fileLocationArr, j);
                        }
                    });
                }
            });
            return;
        }
        fileLocationArr[0] = photoSize2.location;
        fileLocationArr2[0] = photoSize.location;
    }
}
