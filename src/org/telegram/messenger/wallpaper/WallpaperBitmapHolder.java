package org.telegram.messenger.wallpaper;

import android.graphics.Bitmap;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class WallpaperBitmapHolder {
    public final Bitmap bitmap;
    public final List<WallpaperGiftPatternPosition> giftPatternPositions;
    public final int mode;

    public WallpaperBitmapHolder(Bitmap bitmap, int i) {
        this(bitmap, i, null);
    }

    public WallpaperBitmapHolder(Bitmap bitmap, int i, List<WallpaperGiftPatternPosition> list) {
        this.giftPatternPositions = list;
        this.bitmap = bitmap;
        this.mode = i;
    }
}
