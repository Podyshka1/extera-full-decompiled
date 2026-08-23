package com.google.android.gms.internal.measurement;

import android.net.Uri;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class zzrp extends zzsn {
    private final List zza;

    private zzrp(InputStream inputStream, List list) {
        super(inputStream);
        this.zza = list;
    }

    @Nullable
    public static zzrp zza(List list, Uri uri, InputStream inputStream) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        if (it.hasNext()) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
            throw null;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzrp(inputStream, arrayList);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
            try {
                throw null;
            } catch (Throwable unused) {
            }
        }
        super.close();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i = ((FilterInputStream) this).in.read();
        if (i != -1) {
            Iterator it = this.zza.iterator();
            if (it.hasNext()) {
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
                throw null;
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.zzsn, java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        int i = ((FilterInputStream) this).in.read(bArr);
        if (i != -1) {
            Iterator it = this.zza.iterator();
            if (it.hasNext()) {
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
                throw null;
            }
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (i3 != -1) {
            Iterator it = this.zza.iterator();
            if (it.hasNext()) {
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
                throw null;
            }
        }
        return i3;
    }
}
