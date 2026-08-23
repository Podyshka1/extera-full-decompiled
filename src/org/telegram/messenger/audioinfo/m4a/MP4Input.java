package org.telegram.messenger.audioinfo.m4a;

import java.io.InputStream;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.audioinfo.util.PositionInputStream;

/* JADX INFO: loaded from: classes5.dex */
public final class MP4Input extends MP4Box {
    public MP4Input(InputStream inputStream) {
        super(new PositionInputStream(inputStream), null, _UrlKt.FRAGMENT_ENCODE_SET);
    }

    public MP4Atom nextChildUpTo(String str) {
        MP4Atom mP4AtomNextChild;
        do {
            mP4AtomNextChild = nextChild();
        } while (!mP4AtomNextChild.getType().matches(str));
        return mP4AtomNextChild;
    }

    public String toString() {
        return "mp4[pos=" + getPosition() + "]";
    }
}
