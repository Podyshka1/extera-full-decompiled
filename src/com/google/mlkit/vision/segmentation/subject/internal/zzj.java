package com.google.mlkit.vision.segmentation.subject.internal;

import android.content.Context;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzas;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzav;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzdu;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzdw;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzng;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zznh;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zznn;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zznz;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzoa;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzob;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzoc;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzra;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzrd;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzrt;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzta;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zztk;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zztl;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zztn;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzto;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zztz;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzub;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzud;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzuf;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzuh;
import com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzuj;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.MLTask;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.common.internal.CommonConvertUtils;
import com.google.mlkit.vision.common.internal.ImageUtils;
import com.google.mlkit.vision.segmentation.subject.Subject;
import com.google.mlkit.vision.segmentation.subject.SubjectSegmentationResult;
import com.google.mlkit.vision.segmentation.subject.SubjectSegmenterOptions;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final class zzj extends MLTask {
    private static final Feature[] zza = {OptionalModuleUtils.FEATURE_SUBJECT_SEGMENTATION};
    private static final ImageUtils zzb = ImageUtils.getInstance();
    private final Context zzc;
    private final SubjectSegmenterOptions zzd;
    private final zztl zze;
    private final zztn zzf;
    private boolean zzg = true;
    private boolean zzh;
    private zzub zzi;

    public zzj(MlKitContext mlKitContext, SubjectSegmenterOptions subjectSegmenterOptions, zztl zztlVar, zztn zztnVar) {
        Preconditions.checkNotNull(mlKitContext, "MlKitContext can not be null");
        Preconditions.checkNotNull(subjectSegmenterOptions, "SubjectSegmenterOptions can not be null");
        this.zzc = mlKitContext.getApplicationContext();
        this.zzd = subjectSegmenterOptions;
        this.zze = zztlVar;
        this.zzf = zztnVar;
    }

    private final void zzg(final zzoa zzoaVar, long j, final boolean z, final InputImage inputImage, final zzuh zzuhVar) {
        final long jElapsedRealtime = SystemClock.elapsedRealtime() - j;
        this.zze.zzf(new zztk() { // from class: com.google.mlkit.vision.segmentation.subject.internal.zzg
            @Override // com.google.android.gms.internal.mlkit_vision_subject_segmentation.zztk
            public final zzta zza() {
                return this.zza.zzc(jElapsedRealtime, zzoaVar, z, inputImage, zzuhVar);
            }
        }, zzob.ON_DEVICE_SUBJECT_SEGMENTATION_INFERENCE);
        zzdu zzduVar = new zzdu();
        zzduVar.zzc(this.zzd.zza());
        zzduVar.zza(zzoaVar);
        zzduVar.zzb(Boolean.valueOf(z));
        final zzdw zzdwVarZzd = zzduVar.zzd();
        final zzh zzhVar = zzh.zza;
        final zzob zzobVar = zzob.AGGREGATED_ON_DEVICE_SUBJECT_SEGMENTATION_INFERENCE;
        Executor executorWorkerThreadExecutor = MLTaskExecutor.workerThreadExecutor();
        final zztl zztlVar = this.zze;
        executorWorkerThreadExecutor.execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_subject_segmentation.zztj
            @Override // java.lang.Runnable
            public final void run() {
                zztlVar.zzh(zzobVar, zzdwVarZzd, jElapsedRealtime, zzhVar);
            }
        });
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.zzf.zzc(24336, zzoaVar.zza(), jCurrentTimeMillis - jElapsedRealtime, jCurrentTimeMillis);
    }

    private static final FloatBuffer zzh(float[] fArr) {
        if (fArr == null) {
            return null;
        }
        FloatBuffer floatBufferAllocate = FloatBuffer.allocate(fArr.length);
        floatBufferAllocate.put(fArr);
        floatBufferAllocate.rewind();
        return floatBufferAllocate;
    }

    @Override // com.google.mlkit.common.sdkinternal.ModelResource
    public final synchronized void load() {
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            Context context = this.zzc;
            Feature[] featureArr = zza;
            if (!OptionalModuleUtils.areAllRequiredModulesAvailable(context, featureArr)) {
                if (!this.zzh) {
                    OptionalModuleUtils.requestDownload(this.zzc, featureArr);
                    this.zzh = true;
                }
                zzf(zzoa.OPTIONAL_MODULE_NOT_AVAILABLE, jElapsedRealtime);
                throw new MlKitException("Waiting for the subject segmentation optional module to be downloaded. Please wait.", 14);
            }
            try {
                if (this.zzi == null) {
                    this.zzi = zzud.zza(DynamiteModule.load(this.zzc, DynamiteModule.PREFER_REMOTE, "com.google.android.gms.mlkit_subject_segmentation").instantiate("com.google.android.gms.mlkit.segmentation.subject.SubjectSegmenterCreator")).zzd(ObjectWrapper.wrap(this.zzc), new zzuj(this.zzd.zzd(), this.zzd.zzc(), this.zzd.zze(), this.zzd.zzg(), this.zzd.zzf()));
                }
                try {
                    this.zzi.zze();
                    zzf(zzoa.NO_ERROR, jElapsedRealtime);
                } catch (RemoteException e) {
                    zzf(zzoa.OPTIONAL_MODULE_INIT_ERROR, jElapsedRealtime);
                    throw new MlKitException("Failed to init module subject segmenter", 13, e);
                }
            } catch (Exception e2) {
                zzf(zzoa.OPTIONAL_MODULE_CREATE_ERROR, jElapsedRealtime);
                throw new MlKitException("Failed to load subject segmentation module", 13, e2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.mlkit.common.sdkinternal.ModelResource
    public final synchronized void release() {
        try {
            zzub zzubVar = this.zzi;
            if (zzubVar != null) {
                zzubVar.zzf();
            }
        } catch (RemoteException unused) {
            Log.e("SubjectSegmenterTask", "Failed to release subject segmenter");
        } finally {
            this.zzi = null;
        }
        this.zzg = true;
        this.zze.zzf(new zztk() { // from class: com.google.mlkit.vision.segmentation.subject.internal.zzf
            @Override // com.google.android.gms.internal.mlkit_vision_subject_segmentation.zztk
            public final zzta zza() {
                zzoc zzocVar = new zzoc();
                zzocVar.zze(zznz.TYPE_THIN);
                return zzto.zzf(zzocVar);
            }
        }, zzob.ON_DEVICE_SUBJECT_SEGMENTATION_CLOSE);
    }

    public final /* synthetic */ zzta zzc(long j, zzoa zzoaVar, boolean z, InputImage inputImage, zzuh zzuhVar) {
        zzra zzraVar = new zzra();
        zznn zznnVar = new zznn();
        zznnVar.zza(Long.valueOf(j));
        zznnVar.zzb(zzoaVar);
        zznnVar.zzc(Boolean.valueOf(z));
        zzraVar.zzf(zznnVar.zzd());
        int format = inputImage.getFormat();
        int mobileVisionImageSize = zzb.getMobileVisionImageSize(inputImage);
        zzng zzngVar = new zzng();
        zzngVar.zza(format != -1 ? format != 35 ? format != 842094169 ? format != 16 ? format != 17 ? zznh.UNKNOWN_FORMAT : zznh.NV21 : zznh.NV16 : zznh.YV12 : zznh.YUV_420_888 : zznh.BITMAP);
        zzngVar.zzb(Integer.valueOf(mobileVisionImageSize));
        zzraVar.zze(zzngVar.zzd());
        zzraVar.zzi(this.zzd.zza());
        if (zzuhVar != null) {
            zzraVar.zzg(zzav.zzh(zzuhVar.zzb()));
            List<zzuf> listZzc = zzuhVar.zzc();
            if (!listZzc.isEmpty()) {
                zzas zzasVar = new zzas();
                for (zzuf zzufVar : listZzc) {
                    zzrt zzrtVar = new zzrt();
                    zzrtVar.zzd(Integer.valueOf(zzufVar.zzd()));
                    zzrtVar.zza(Integer.valueOf(zzufVar.zza()));
                    zzrtVar.zzb(Integer.valueOf(zzufVar.zzb()));
                    zzrtVar.zzc(Integer.valueOf(zzufVar.zzc()));
                    zzasVar.zza(zzrtVar.zze());
                }
                zzraVar.zzh(zzasVar.zzb());
            }
        }
        zzoc zzocVar = new zzoc();
        zzocVar.zze(zznz.TYPE_THIN);
        zzocVar.zzh(zzraVar.zzj());
        return zzto.zzf(zzocVar);
    }

    public final /* synthetic */ zzta zzd(zzoa zzoaVar, long j) {
        zzoc zzocVar = new zzoc();
        zzocVar.zze(zznz.TYPE_THIN);
        zzrd zzrdVar = new zzrd();
        zzrdVar.zzd(this.zzd.zza());
        zzrdVar.zzc(zzoaVar);
        zzrdVar.zzb(Long.valueOf(SystemClock.elapsedRealtime() - j));
        zzocVar.zzi(zzrdVar.zze());
        return zzto.zzf(zzocVar);
    }

    @Override // com.google.mlkit.common.sdkinternal.MLTask
    /* JADX INFO: renamed from: zze, reason: merged with bridge method [inline-methods] */
    public final synchronized SubjectSegmentationResult run(InputImage inputImage) {
        zzuh zzuhVarZzd;
        ArrayList arrayList;
        try {
            Preconditions.checkNotNull(inputImage, "Input image can not be null");
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            try {
                zzuhVarZzd = ((zzub) Preconditions.checkNotNull(this.zzi)).zzd(ImageUtils.getInstance().getImageDataWrapper(inputImage), new zztz(inputImage.getFormat(), inputImage.getWidth(), inputImage.getHeight(), CommonConvertUtils.convertToMVRotation(inputImage.getRotationDegrees()), SystemClock.elapsedRealtime()));
                arrayList = new ArrayList();
                if (this.zzd.zze()) {
                    for (zzuf zzufVar : zzuhVarZzd.zzc()) {
                        arrayList.add(new Subject(zzh(zzufVar.zzf()), zzufVar.zze(), zzufVar.zzd(), zzufVar.zza(), zzufVar.zzb(), zzufVar.zzc()));
                    }
                }
                zzg(zzoa.NO_ERROR, jElapsedRealtime, this.zzg, inputImage, zzuhVarZzd);
                this.zzg = false;
            } catch (RemoteException e) {
                zzg(zzoa.OPTIONAL_MODULE_INFERENCE_ERROR, jElapsedRealtime, this.zzg, inputImage, null);
                throw new MlKitException("Failed to run thin subject segmenter.", 13, e);
            }
        } catch (Throwable th) {
            throw th;
        }
        return new SubjectSegmentationResult(arrayList, zzh(zzuhVarZzd.zzd()), zzuhVarZzd.zza());
    }

    public final void zzf(final zzoa zzoaVar, final long j) {
        this.zze.zzf(new zztk() { // from class: com.google.mlkit.vision.segmentation.subject.internal.zzi
            @Override // com.google.android.gms.internal.mlkit_vision_subject_segmentation.zztk
            public final zzta zza() {
                return this.zza.zzd(zzoaVar, j);
            }
        }, zzob.ON_DEVICE_SUBJECT_SEGMENTATION_LOAD);
    }
}
