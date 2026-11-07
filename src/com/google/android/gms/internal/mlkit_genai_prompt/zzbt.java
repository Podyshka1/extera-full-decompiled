package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbt> CREATOR = new zzbu();
    private final byte[] zzA;
    private final int zzB;
    private final int zzC;
    private final long zzD;
    private final long zzE;
    private final int zzF;
    private final int zzG;
    private final int zzH;
    private final int zzI;
    private final int zzJ;
    private final int zzK;
    private final int zzL;
    private final int zzM;
    private final long zzN;
    private final int[] zzO;
    private final int zzP;
    private final String zzQ;
    private final byte[] zzR;
    private final int zzS;
    private final long zzT;
    private final byte[] zzU;
    private final int zzV;
    private final long[] zzW;
    private final long zzX;
    private final long zzY;
    private final int zzZ;
    private final int zza;
    private final int zzaa;
    private final long zzab;
    private final long zzac;
    private final byte[] zzad;
    private final byte[] zzae;
    private final long zzb;
    private final int zzc;
    private final int zzd;
    private final int zze;
    private final long zzf;
    private final int zzg;
    private final int zzh;
    private final int zzi;
    private final long zzj;
    private final long zzk;
    private final long zzl;
    private final long zzm;
    private final long zzn;
    private final long zzo;
    private final int zzp;
    private final int zzq;
    private final int zzr;
    private final int zzs;
    private final boolean zzt;
    private final int zzu;
    private final long zzv;
    private final double zzw;
    private final double zzx;
    private final int zzy;
    private final float zzz;

    public zzbt(int i, int i2, int i3, int i4, long j, int i5, int i6, int i7, long j2, long j3, long j4, long j5, long j6, long j7, int i8, int i9, int i10, int i11, boolean z, int i12, long j8, double d, double d2, int i13, float f, byte[] bArr, int i14, int i15, long j9, long j10, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, long j11, long j12, int[] iArr, int i24, String str, byte[] bArr2, int i25, long j13, byte[] bArr3, int i26, long[] jArr, long j14, long j15, int i27, int i28, long j16, long j17, byte[] bArr4, byte[] bArr5) {
        this.zza = i;
        this.zzb = j12;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = i4;
        this.zzf = j;
        this.zzg = i5;
        this.zzh = i6;
        this.zzi = i7;
        this.zzj = j2;
        this.zzk = j3;
        this.zzl = j4;
        this.zzm = j5;
        this.zzn = j6;
        this.zzo = j7;
        this.zzp = i8;
        this.zzq = i9;
        this.zzr = i10;
        this.zzs = i11;
        this.zzt = z;
        this.zzu = i12;
        this.zzv = j8;
        this.zzw = d;
        this.zzx = d2;
        this.zzy = i13;
        this.zzz = f;
        this.zzA = bArr;
        this.zzB = i14;
        this.zzC = i15;
        this.zzD = j9;
        this.zzE = j10;
        this.zzY = j15;
        this.zzF = i16;
        this.zzG = i17;
        this.zzH = i18;
        this.zzI = i19;
        this.zzJ = i20;
        this.zzZ = i27;
        this.zzaa = i28;
        this.zzK = i21;
        this.zzL = i22;
        this.zzM = i23;
        this.zzN = j11;
        this.zzO = iArr;
        this.zzP = i24;
        this.zzQ = str;
        this.zzR = bArr2;
        this.zzS = i25;
        this.zzT = j13;
        this.zzU = bArr3;
        this.zzV = i26;
        this.zzW = jArr;
        this.zzab = j16;
        this.zzac = j17;
        this.zzX = j14;
        this.zzad = bArr4;
        this.zzae = bArr5;
    }

    private static String zza(byte[] bArr) {
        zzd zzdVarZzo = null;
        if (bArr != null) {
            try {
                if (bArr.length != 0) {
                    zzdVarZzo = zzd.zzo(bArr, zzawl.zzb());
                }
            } catch (zzaxm unused) {
                return "InvalidProto";
            }
        }
        return zzki.zza(zzdVarZzo);
    }

    public final String toString() {
        zzje zzjeVarZzg;
        zzf zzfVarZze;
        zzh zzhVarZzd;
        zzmn zzmnVar = new zzmn();
        zzmnVar.zza("customerId", Integer.valueOf(this.zza));
        zzmnVar.zza("callingUserId", Long.valueOf(this.zzb));
        zzmnVar.zza("featureType", Integer.valueOf(this.zzc));
        zzmnVar.zza("featureVariant", Integer.valueOf(this.zzd));
        zzmnVar.zza("status", Integer.valueOf(this.zze));
        zzmnVar.zza("inferenceLatencyTotalMillis", Long.valueOf(this.zzf));
        zzmnVar.zza("numInputTokens", Integer.valueOf(this.zzg));
        zzmnVar.zza("numOutputTokens", Integer.valueOf(this.zzh));
        zzmnVar.zza("numDecodeSteps", Integer.valueOf(this.zzi));
        zzmnVar.zza("inferenceServiceStartLatencyMillis", Long.valueOf(this.zzj));
        zzmnVar.zza("inferenceApiCallHandlingLatencyMillis", Long.valueOf(this.zzk));
        zzmnVar.zza("inferenceInputSafetyCheckLatencyMillis", Long.valueOf(this.zzl));
        zzmnVar.zza("inferenceInputEncodingLatencyMillis", Long.valueOf(this.zzm));
        zzmnVar.zza("inferenceOverallOutputLatencyMillis", Long.valueOf(this.zzn));
        zzmnVar.zza("inferenceOutputSafetyCheckLatencyMillis", Long.valueOf(this.zzo));
        zzmnVar.zza("inputSafetyCheckPolicyViolationType", Integer.valueOf(this.zzp));
        zzmnVar.zza("inputSafetyCheckSuggestedActionType", Integer.valueOf(this.zzq));
        zzmnVar.zza("outputSafetyCheckPolicyViolationType", Integer.valueOf(this.zzr));
        zzmnVar.zza("outputSafetyCheckSuggestedActionType", Integer.valueOf(this.zzs));
        zzmnVar.zza("isModelLoaded", Boolean.valueOf(this.zzt));
        zzmnVar.zza("featureId", Integer.valueOf(this.zzu));
        zzmnVar.zza("featureVersion", Integer.valueOf(this.zzM));
        zzmnVar.zza("modelInferenceLatencyMillis", Long.valueOf(this.zzv));
        zzmnVar.zza("outputTokensPerSecond", Double.valueOf(this.zzw));
        zzmnVar.zza("inputTokensPerSecond", Double.valueOf(this.zzx));
        zzmnVar.zza("numSamples", Integer.valueOf(this.zzy));
        zzmnVar.zza("cannedResponsesRatio", Float.valueOf(this.zzz));
        try {
            zzjeVarZzg = zzje.zzf(this.zzA, zzawl.zzc());
        } catch (zzaxm e) {
            Log.e("InferenceEventTraceResult", "Failed to parse SpeculativeDecodeStatistics proto", e);
            zzjeVarZzg = zzje.zzg();
        }
        zzmnVar.zza("speculativeDecodeStatistics", "{drafter_id: " + zzjeVarZzg.zza() + ", drafter_time: " + zzjeVarZzg.zzd().zza() + ", block_efficiency: " + zzjeVarZzg.zze() + ", drafter_guesses_per_position: " + ((String) zzjeVarZzg.zzc().stream().map(zzbs.zza).collect(Collectors.joining(", "))) + "}");
        zzmnVar.zza("numSuffixScoreFiltered", Integer.valueOf(this.zzB));
        zzmnVar.zza("numPostDeduped", Integer.valueOf(this.zzC));
        zzmnVar.zza("inferenceStatefulSuspensionLatencyMillis", Long.valueOf(this.zzD));
        zzmnVar.zza("inferenceStatelessSuspensionLatencyMillis", Long.valueOf(this.zzE));
        zzmnVar.zza("inferenceTurnWaitingLatencyMillis", Long.valueOf(this.zzY));
        zzmnVar.zza("topCannedResponseIndex", Integer.valueOf(this.zzF));
        zzmnVar.zza("inferenceStatefulSuspensionCount", Integer.valueOf(this.zzG));
        zzmnVar.zza("inferenceStatefulResumptionCount", Integer.valueOf(this.zzH));
        zzmnVar.zza("inferenceStatelessSuspensionCount", Integer.valueOf(this.zzI));
        zzmnVar.zza("inferenceStatelessResumptionCount", Integer.valueOf(this.zzJ));
        zzmnVar.zza("inferenceTurnWaitingStartedCount", Integer.valueOf(this.zzZ));
        zzmnVar.zza("inferenceTurnWaitingCompletedCount", Integer.valueOf(this.zzaa));
        zzmnVar.zza("requestKind", Integer.valueOf(this.zzK));
        zzmnVar.zza("initialQueuePosition", Integer.valueOf(this.zzL));
        zzmnVar.zza("inferenceStartTimestampMillis", Long.valueOf(this.zzN));
        zzmnVar.zza("auxiliaryFileTypes", this.zzO);
        zzmnVar.zza("callingAppUid", Integer.valueOf(this.zzP));
        zzmnVar.zza("baseModelPublicVersionName", this.zzQ);
        try {
            zzfVarZze = zzf.zzd(this.zzR, zzawl.zzc());
        } catch (zzaxm e2) {
            Log.e("InferenceEventTraceResult", "Failed to parse ErrorDetails proto", e2);
            zzfVarZze = zzf.zze();
        }
        StringBuilder sb = new StringBuilder("{");
        if (zzfVarZze.zza()) {
            zzj zzjVarZzc = zzfVarZze.zzc();
            sb.append("quota_exceeded_details: {quota_type: ");
            sb.append(zzjVarZzc.zzg() - 1);
            sb.append(", quota_scope: ");
            sb.append(zzjVarZzc.zzh() - 1);
            sb.append(", quota_check_stage: ");
            sb.append(zzjVarZzc.zzi() - 1);
            sb.append(", period_seconds: ");
            sb.append(zzjVarZzc.zza());
            sb.append(", cost_limit: ");
            sb.append(zzjVarZzc.zzc());
            sb.append(", try_again_seconds: ");
            sb.append(zzjVarZzc.zzd());
            sb.append("}");
        }
        sb.append("}");
        zzmnVar.zza("errorDetails", sb.toString());
        zzmnVar.zza("hintType", Integer.valueOf(this.zzS));
        zzmnVar.zza("hintLatencyTotalMillis", Long.valueOf(this.zzT));
        try {
            zzhVarZzd = zzh.zzc(this.zzU, zzawl.zzc());
        } catch (zzaxm e3) {
            Log.e("InferenceEventTraceResult", "Failed to parse IntrospectionDetails proto", e3);
            zzhVarZzd = zzh.zzd();
        }
        zzmnVar.zza("introspectionDetails", "{is_introspection_applied: " + zzhVarZzd.zza() + "}");
        zzmnVar.zza("inferenceModelType", Integer.valueOf(this.zzV));
        zzmnVar.zza("timeToFirstTokenMillisArray", this.zzW);
        zzmnVar.zza("nativeStartTimeNanos", Long.valueOf(this.zzX));
        zzmnVar.zza("timeIntervalFromPreviousFeatureUseMillis", Long.valueOf(this.zzab));
        zzmnVar.zza("timeIntervalFromPreviousModelUseMillis", Long.valueOf(this.zzac));
        zzmnVar.zza("parallelLoadingLatencyStats", zza(this.zzad));
        zzmnVar.zza("serialLoadingLatencyStats", zza(this.zzae));
        return "InferenceEventTraceResult\n".concat(zzmnVar.zzc().toString());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i2);
        SafeParcelWriter.writeInt(parcel, 2, this.zzc);
        SafeParcelWriter.writeInt(parcel, 3, this.zzd);
        SafeParcelWriter.writeInt(parcel, 4, this.zze);
        SafeParcelWriter.writeLong(parcel, 5, this.zzf);
        SafeParcelWriter.writeInt(parcel, 6, this.zzg);
        SafeParcelWriter.writeInt(parcel, 7, this.zzh);
        SafeParcelWriter.writeInt(parcel, 8, this.zzi);
        SafeParcelWriter.writeLong(parcel, 9, this.zzj);
        SafeParcelWriter.writeLong(parcel, 10, this.zzk);
        SafeParcelWriter.writeLong(parcel, 11, this.zzl);
        SafeParcelWriter.writeLong(parcel, 12, this.zzm);
        SafeParcelWriter.writeLong(parcel, 13, this.zzn);
        SafeParcelWriter.writeLong(parcel, 14, this.zzo);
        SafeParcelWriter.writeInt(parcel, 15, this.zzp);
        SafeParcelWriter.writeInt(parcel, 16, this.zzq);
        SafeParcelWriter.writeInt(parcel, 17, this.zzr);
        SafeParcelWriter.writeInt(parcel, 18, this.zzs);
        SafeParcelWriter.writeBoolean(parcel, 19, this.zzt);
        SafeParcelWriter.writeInt(parcel, 20, this.zzu);
        SafeParcelWriter.writeLong(parcel, 21, this.zzv);
        SafeParcelWriter.writeDouble(parcel, 22, this.zzw);
        SafeParcelWriter.writeDouble(parcel, 23, this.zzx);
        SafeParcelWriter.writeInt(parcel, 24, this.zzy);
        SafeParcelWriter.writeFloat(parcel, 25, this.zzz);
        SafeParcelWriter.writeByteArray(parcel, 26, this.zzA, false);
        SafeParcelWriter.writeInt(parcel, 27, this.zzB);
        SafeParcelWriter.writeInt(parcel, 28, this.zzC);
        SafeParcelWriter.writeLong(parcel, 29, this.zzD);
        SafeParcelWriter.writeLong(parcel, 30, this.zzE);
        SafeParcelWriter.writeInt(parcel, 31, this.zzF);
        SafeParcelWriter.writeInt(parcel, 32, this.zzG);
        SafeParcelWriter.writeInt(parcel, 33, this.zzH);
        SafeParcelWriter.writeInt(parcel, 34, this.zzI);
        SafeParcelWriter.writeInt(parcel, 35, this.zzJ);
        SafeParcelWriter.writeInt(parcel, 36, this.zzK);
        SafeParcelWriter.writeInt(parcel, 37, this.zzL);
        SafeParcelWriter.writeInt(parcel, 38, this.zzM);
        SafeParcelWriter.writeLong(parcel, 39, this.zzN);
        SafeParcelWriter.writeLong(parcel, 40, this.zzb);
        SafeParcelWriter.writeIntArray(parcel, 41, this.zzO, false);
        SafeParcelWriter.writeInt(parcel, 42, this.zzP);
        SafeParcelWriter.writeString(parcel, 43, this.zzQ, false);
        SafeParcelWriter.writeByteArray(parcel, 44, this.zzR, false);
        SafeParcelWriter.writeInt(parcel, 45, this.zzS);
        SafeParcelWriter.writeLong(parcel, 46, this.zzT);
        SafeParcelWriter.writeByteArray(parcel, 47, this.zzU, false);
        SafeParcelWriter.writeInt(parcel, 48, this.zzV);
        SafeParcelWriter.writeLongArray(parcel, 50, this.zzW, false);
        SafeParcelWriter.writeLong(parcel, 51, this.zzX);
        SafeParcelWriter.writeLong(parcel, 52, this.zzY);
        SafeParcelWriter.writeInt(parcel, 53, this.zzZ);
        SafeParcelWriter.writeInt(parcel, 54, this.zzaa);
        SafeParcelWriter.writeLong(parcel, 55, this.zzab);
        SafeParcelWriter.writeLong(parcel, 56, this.zzac);
        SafeParcelWriter.writeByteArray(parcel, 57, this.zzad, false);
        SafeParcelWriter.writeByteArray(parcel, 58, this.zzae, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
