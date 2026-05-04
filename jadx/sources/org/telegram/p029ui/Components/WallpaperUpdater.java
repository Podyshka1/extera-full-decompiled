package org.telegram.p029ui.Components;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import androidx.core.content.FileProvider;
import com.exteragram.messenger.utils.system.SystemUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.PhotoAlbumPickerActivity;

/* JADX INFO: loaded from: classes7.dex */
public class WallpaperUpdater {
    private String currentPicturePath;
    private File currentWallpaperPath;
    private WallpaperUpdaterDelegate delegate;
    private Activity parentActivity;
    private BaseFragment parentFragment;
    private File picturePath = null;

    public interface WallpaperUpdaterDelegate {
        void didSelectWallpaper(File file, Bitmap bitmap, boolean z);

        void needOpenColorPicker();
    }

    public void cleanup() {
    }

    public WallpaperUpdater(Activity activity, BaseFragment baseFragment, WallpaperUpdaterDelegate wallpaperUpdaterDelegate) {
        this.parentActivity = activity;
        this.parentFragment = baseFragment;
        this.delegate = wallpaperUpdaterDelegate;
    }

    public void showAlert(final boolean z) {
        CharSequence[] charSequenceArr;
        int[] iArr;
        BottomSheet.Builder builder = new BottomSheet.Builder(this.parentActivity);
        builder.setTitle(LocaleController.getString(C2888R.string.ChoosePhoto), true);
        if (z) {
            charSequenceArr = new CharSequence[]{LocaleController.getString(C2888R.string.ChooseTakePhoto), LocaleController.getString(C2888R.string.SelectFromGallery), LocaleController.getString(C2888R.string.SelectColor), LocaleController.getString(C2888R.string.Default)};
            iArr = null;
        } else {
            charSequenceArr = new CharSequence[]{LocaleController.getString(C2888R.string.ChooseTakePhoto), LocaleController.getString(C2888R.string.SelectFromGallery)};
            iArr = new int[]{C2888R.drawable.msg_camera, C2888R.drawable.msg_photos};
        }
        builder.setItems(charSequenceArr, iArr, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.WallpaperUpdater$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.lambda$showAlert$0(z, dialogInterface, i);
            }
        });
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAlert$0(boolean z, DialogInterface dialogInterface, int i) {
        try {
            if (i != 0) {
                if (i == 1) {
                    openGallery();
                    return;
                }
                if (z) {
                    if (i == 2) {
                        this.delegate.needOpenColorPicker();
                        return;
                    } else {
                        if (i == 3) {
                            this.delegate.didSelectWallpaper(null, null, false);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            try {
                Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                File fileGeneratePicturePath = AndroidUtilities.generatePicturePath();
                if (fileGeneratePicturePath != null) {
                    if (Build.VERSION.SDK_INT >= 24) {
                        intent.putExtra("output", FileProvider.getUriForFile(this.parentActivity, ApplicationLoader.getApplicationId() + ".provider", fileGeneratePicturePath));
                        intent.addFlags(2);
                        intent.addFlags(1);
                    } else {
                        intent.putExtra("output", Uri.fromFile(fileGeneratePicturePath));
                    }
                    this.currentPicturePath = fileGeneratePicturePath.getAbsolutePath();
                }
                this.parentActivity.startActivityForResult(intent, 10);
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        } catch (Exception e2) {
            FileLog.m1136e(e2);
        }
    }

    public void openGallery() {
        BaseFragment baseFragment = this.parentFragment;
        if (baseFragment != null) {
            if (baseFragment.getParentActivity() != null && !SystemUtils.isImagesPermissionGranted()) {
                SystemUtils.requestImagesPermission(this.parentFragment.getParentActivity());
                return;
            }
            PhotoAlbumPickerActivity photoAlbumPickerActivity = new PhotoAlbumPickerActivity(PhotoAlbumPickerActivity.SELECT_TYPE_WALLPAPER, false, false, null);
            photoAlbumPickerActivity.setAllowSearchImages(false);
            photoAlbumPickerActivity.setDelegate(new PhotoAlbumPickerActivity.PhotoAlbumPickerActivityDelegate() { // from class: org.telegram.ui.Components.WallpaperUpdater.1
                @Override // org.telegram.ui.PhotoAlbumPickerActivity.PhotoAlbumPickerActivityDelegate
                public void didSelectPhotos(ArrayList arrayList, boolean z, int i) {
                    WallpaperUpdater.this.didSelectPhotos(arrayList);
                }

                @Override // org.telegram.ui.PhotoAlbumPickerActivity.PhotoAlbumPickerActivityDelegate
                public void startPhotoSelectActivity() {
                    try {
                        Intent intent = new Intent("android.intent.action.PICK");
                        intent.setType("image/*");
                        WallpaperUpdater.this.parentActivity.startActivityForResult(intent, 11);
                    } catch (Exception e) {
                        FileLog.m1136e(e);
                    }
                }
            });
            this.parentFragment.presentFragment(photoAlbumPickerActivity);
            return;
        }
        Intent intent = new Intent("android.intent.action.PICK");
        intent.setType("image/*");
        this.parentActivity.startActivityForResult(intent, 11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void didSelectPhotos(ArrayList arrayList) {
        try {
            if (arrayList.isEmpty()) {
                return;
            }
            SendMessagesHelper.SendingMediaInfo sendingMediaInfo = (SendMessagesHelper.SendingMediaInfo) arrayList.get(0);
            if (sendingMediaInfo.path != null) {
                this.currentWallpaperPath = new File(FileLoader.getDirectory(4), Utilities.random.nextInt() + ".jpg");
                Point realScreenSize = AndroidUtilities.getRealScreenSize();
                Bitmap bitmapLoadBitmap = ImageLoader.loadBitmap(sendingMediaInfo.path, null, (float) realScreenSize.x, (float) realScreenSize.y, true);
                bitmapLoadBitmap.compress(Bitmap.CompressFormat.JPEG, 87, new FileOutputStream(this.currentWallpaperPath));
                this.delegate.didSelectWallpaper(this.currentWallpaperPath, bitmapLoadBitmap, true);
            }
        } catch (Throwable th) {
            FileLog.m1136e(th);
        }
    }

    public String getCurrentPicturePath() {
        return this.currentPicturePath;
    }

    public void setCurrentPicturePath(String str) {
        this.currentPicturePath = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0074 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v11, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onActivityResult(int i, int i2, Intent intent) {
        FileOutputStream fileOutputStream;
        if (i2 == -1) {
            ?? r9 = 10;
            ?? r5 = 0;
            if (i == 10) {
                AndroidUtilities.addMediaToGallery(this.currentPicturePath);
                try {
                    try {
                        this.currentWallpaperPath = new File(FileLoader.getDirectory(4), Utilities.random.nextInt() + ".jpg");
                        Point realScreenSize = AndroidUtilities.getRealScreenSize();
                        Bitmap bitmapLoadBitmap = ImageLoader.loadBitmap(this.currentPicturePath, null, (float) realScreenSize.x, (float) realScreenSize.y, true);
                        fileOutputStream = new FileOutputStream(this.currentWallpaperPath);
                        try {
                            bitmapLoadBitmap.compress(Bitmap.CompressFormat.JPEG, 87, fileOutputStream);
                            this.delegate.didSelectWallpaper(this.currentWallpaperPath, bitmapLoadBitmap, false);
                            r9 = fileOutputStream;
                        } catch (Exception e) {
                            e = e;
                            FileLog.m1136e(e);
                            r9 = fileOutputStream;
                            if (fileOutputStream != null) {
                            }
                            this.currentPicturePath = null;
                            return;
                        }
                    } catch (Throwable th) {
                        th = th;
                        r5 = r9;
                        if (r5 != 0) {
                            try {
                                r5.close();
                            } catch (Exception e2) {
                                FileLog.m1136e(e2);
                            }
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    fileOutputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    if (r5 != 0) {
                    }
                    throw th;
                }
                try {
                    r9.close();
                } catch (Exception e4) {
                    FileLog.m1136e(e4);
                }
                this.currentPicturePath = null;
                return;
            }
            if (i != 11 || intent == null || intent.getData() == null) {
                return;
            }
            try {
                this.currentWallpaperPath = new File(FileLoader.getDirectory(4), Utilities.random.nextInt() + ".jpg");
                Point realScreenSize2 = AndroidUtilities.getRealScreenSize();
                Bitmap bitmapLoadBitmap2 = ImageLoader.loadBitmap(null, intent.getData(), (float) realScreenSize2.x, (float) realScreenSize2.y, true);
                bitmapLoadBitmap2.compress(Bitmap.CompressFormat.JPEG, 87, new FileOutputStream(this.currentWallpaperPath));
                this.delegate.didSelectWallpaper(this.currentWallpaperPath, bitmapLoadBitmap2, false);
            } catch (Exception e5) {
                FileLog.m1136e(e5);
            }
        }
    }
}
