package com.google.mlkit.vision.label.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.tasks.Task;
import com.google.mlkit.common.sdkinternal.MLTask;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.common.internal.MobileVisionBase;
import com.google.mlkit.vision.label.ImageLabeler;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public class ImageLabelerImpl extends MobileVisionBase implements ImageLabeler {
    private final Feature zzb;

    private ImageLabelerImpl(MLTask mLTask, Executor executor, Feature feature) {
        super(mLTask, executor);
        this.zzb = feature;
    }

    @Override // com.google.android.gms.common.api.OptionalModuleApi
    public final Feature[] getOptionalFeatures() {
        Feature feature = this.zzb;
        return feature != null ? new Feature[]{feature} : OptionalModuleUtils.EMPTY_FEATURES;
    }

    public static ImageLabelerImpl newInstance(MLTask mLTask, Executor executor, Feature feature) {
        return new ImageLabelerImpl(mLTask, executor, feature);
    }

    @Override // com.google.mlkit.vision.label.ImageLabeler
    public final Task process(InputImage inputImage) {
        return processBase(inputImage);
    }
}
