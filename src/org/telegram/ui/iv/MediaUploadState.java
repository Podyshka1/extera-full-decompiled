package org.telegram.ui.iv;

import android.graphics.Bitmap;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class MediaUploadState {
    public TLRPC.Document audioDisplayDocument;
    public TLRPC.Document document;
    public int duration;
    public boolean hasSpoiler;
    public int height;
    public int invert;
    public boolean isAudio;
    public boolean isVideo;
    public String localPath;
    public Bitmap localThumbBitmap;
    public int orientation;
    public TLRPC.Photo photo;
    public float progress;
    public int state = 0;
    public int width;

    public boolean isReady() {
        if (this.state != 2) {
            return false;
        }
        return (this.isVideo || this.isAudio) ? this.document != null : this.photo != null;
    }

    public boolean isPending() {
        return this.state == 1;
    }
}
