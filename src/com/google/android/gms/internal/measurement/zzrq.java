package com.google.android.gms.internal.measurement;

import android.net.Uri;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class zzrq extends zzso {
    private final List zza;

    private zzrq(OutputStream outputStream, List list) {
        super(outputStream);
        this.zza = list;
    }

    @Nullable
    public static zzrq zza(List list, Uri uri, OutputStream outputStream) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        if (it.hasNext()) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
            throw null;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzrq(outputStream, arrayList);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
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

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) throws IOException {
        ((FilterOutputStream) this).out.write(i);
        Iterator it = this.zza.iterator();
        if (it.hasNext()) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzso, java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        ((FilterOutputStream) this).out.write(bArr);
        Iterator it = this.zza.iterator();
        if (it.hasNext()) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
            int length = bArr.length;
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzso, java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i, i2);
        Iterator it = this.zza.iterator();
        if (it.hasNext()) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
            throw null;
        }
    }
}
