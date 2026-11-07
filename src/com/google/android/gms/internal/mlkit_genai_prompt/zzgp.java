package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.util.Pair;
import java.io.FileOutputStream;
import java.util.concurrent.Executor;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgp {
    private final zzml zza;
    private final Executor zzb;

    public zzgp(ParcelFileDescriptor parcelFileDescriptor, ParcelFileDescriptor parcelFileDescriptor2, Executor executor) {
        this.zza = zzml.zzl(Pair.create(parcelFileDescriptor, parcelFileDescriptor2));
        this.zzb = executor;
    }

    public final void zza(final zzwh zzwhVar) {
        this.zza.forEach(new Consumer() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzgo
            @Override // java.util.function.Consumer
            public final /* synthetic */ void accept(Object obj) {
                this.zza.zzb(zzwhVar, (Pair) obj);
            }
        });
    }

    public final /* synthetic */ void zzb(final zzwh zzwhVar, final Pair pair) {
        this.zzb.execute(new Runnable(this) { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzgn
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                FileOutputStream fileOutputStream;
                ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream;
                Pair pair2 = pair;
                boolean z = false;
                try {
                    ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) pair2.first;
                    fileOutputStream = new FileOutputStream(((ParcelFileDescriptor) pair2.second).getFileDescriptor());
                    try {
                        autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
                    } finally {
                    }
                } catch (Exception e) {
                    Log.e("DataTransporter", "Failed to transport the file", e);
                }
                try {
                    int i = zznv.$r8$clinit;
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int i2 = autoCloseInputStream.read(bArr);
                        if (i2 == -1) {
                            break;
                        } else {
                            fileOutputStream.write(bArr, 0, i2);
                        }
                    }
                    autoCloseInputStream.close();
                    fileOutputStream.close();
                    z = true;
                    zzwh zzwhVar2 = zzwhVar;
                    if (zzwhVar2 != null) {
                        zzwhVar2.zza(z);
                    }
                } finally {
                }
            }
        });
    }
}
