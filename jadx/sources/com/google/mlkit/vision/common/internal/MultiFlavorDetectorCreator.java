package com.google.mlkit.vision.common.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.inject.Provider;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class MultiFlavorDetectorCreator {
    private final Map zza = new HashMap();

    public interface DetectorCreator {
        MultiFlavorDetector create(DetectorOptions detectorOptions);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface DetectorOptions {
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface MultiFlavorDetector {
    }

    public static class Registration {
        private final Class zza;
        private final Provider zzb;
        private final int zzc;

        public Registration(Class cls, Provider provider, int i) {
            this.zza = cls;
            this.zzb = provider;
            this.zzc = i;
        }

        final int zza() {
            return this.zzc;
        }

        final Provider zzb() {
            return this.zzb;
        }

        final Class zzc() {
            return this.zza;
        }
    }

    MultiFlavorDetectorCreator(Set set) {
        HashMap map = new HashMap();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Registration registration = (Registration) it.next();
            Class clsZzc = registration.zzc();
            if (!this.zza.containsKey(clsZzc) || registration.zza() >= ((Integer) Preconditions.checkNotNull((Integer) map.get(clsZzc))).intValue()) {
                this.zza.put(clsZzc, registration.zzb());
                map.put(clsZzc, Integer.valueOf(registration.zza()));
            }
        }
    }

    public static synchronized MultiFlavorDetectorCreator getInstance() {
        return (MultiFlavorDetectorCreator) MlKitContext.getInstance().get(MultiFlavorDetectorCreator.class);
    }

    public MultiFlavorDetector create(DetectorOptions detectorOptions) {
        return ((DetectorCreator) ((Provider) Preconditions.checkNotNull((Provider) this.zza.get(detectorOptions.getClass()))).get()).create(detectorOptions);
    }
}
