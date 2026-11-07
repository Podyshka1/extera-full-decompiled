package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.WorkSource;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.WorkSourceUtil;
import com.google.android.gms.internal.location.zzd;
import com.google.android.gms.internal.location.zzen;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.time.DurationKt;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: loaded from: classes5.dex */
public final class LocationRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationRequest> CREATOR = new zzae();
    private int zza;
    private long zzb;
    private long zzc;
    private long zzd;
    private long zze;
    private int zzf;
    private float zzg;
    private boolean zzh;
    private long zzi;
    private final int zzj;
    private final int zzk;
    private final boolean zzl;
    private final WorkSource zzm;
    private final zzd zzn;

    @Deprecated
    public static LocationRequest create() {
        return new LocationRequest(102, DurationKt.MILLIS_IN_HOUR, 600000L, 0L, LongCompanionObject.MAX_VALUE, LongCompanionObject.MAX_VALUE, Integer.MAX_VALUE, 0.0f, true, DurationKt.MILLIS_IN_HOUR, 0, 0, false, new WorkSource(), null);
    }

    private static String zze(long j) {
        return j == LongCompanionObject.MAX_VALUE ? "∞" : zzen.zzb(j);
    }

    public boolean equals(Object obj) {
        if (obj instanceof LocationRequest) {
            LocationRequest locationRequest = (LocationRequest) obj;
            boolean zIsBatched = isBatched();
            if (this.zza == locationRequest.zza && ((isPassive() || this.zzb == locationRequest.zzb) && getMinUpdateIntervalMillis() == locationRequest.getMinUpdateIntervalMillis() && zIsBatched == locationRequest.isBatched() && ((!zIsBatched || this.zzd == locationRequest.zzd) && this.zze == locationRequest.zze && this.zzf == locationRequest.zzf && this.zzg == locationRequest.zzg && this.zzh == locationRequest.zzh && this.zzj == locationRequest.zzj && this.zzk == locationRequest.zzk && this.zzl == locationRequest.zzl && this.zzm.equals(locationRequest.zzm) && Objects.equal(this.zzn, locationRequest.zzn)))) {
                return true;
            }
        }
        return false;
    }

    @Pure
    public long getDurationMillis() {
        return this.zze;
    }

    @Pure
    public int getGranularity() {
        return this.zzj;
    }

    @Pure
    public long getIntervalMillis() {
        return getPriority() == 105 ? LongCompanionObject.MAX_VALUE : this.zzb;
    }

    @Pure
    public long getMaxUpdateAgeMillis() {
        long j = this.zzi;
        return j == -1 ? this.zzb : j;
    }

    @Pure
    public long getMaxUpdateDelayMillis() {
        return this.zzd;
    }

    @Pure
    public int getMaxUpdates() {
        return this.zzf;
    }

    @Pure
    public float getMinUpdateDistanceMeters() {
        return this.zzg;
    }

    @Pure
    public long getMinUpdateIntervalMillis() {
        long j = this.zzc;
        return j == -1 ? this.zzb / 2 : j;
    }

    @Pure
    public int getPriority() {
        return this.zza;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zza), Long.valueOf(getIntervalMillis()), Long.valueOf(getMinUpdateIntervalMillis()), this.zzm);
    }

    @Pure
    public boolean isBatched() {
        long j = this.zzd;
        return j > 0 && (j >> 1) >= getIntervalMillis();
    }

    @Pure
    public boolean isPassive() {
        return this.zza == 105;
    }

    public boolean isWaitForAccurateLocation() {
        return this.zzh;
    }

    @Deprecated
    public LocationRequest setFastestInterval(long j) {
        Preconditions.checkArgument(j >= 0, "illegal fastest interval: %d", Long.valueOf(j));
        this.zzc = j;
        return this;
    }

    @Deprecated
    public LocationRequest setInterval(long j) {
        Preconditions.checkArgument(j >= 0, "intervalMillis must be greater than or equal to 0");
        long j2 = this.zzc;
        long j3 = this.zzb;
        if (j2 == j3 / 6) {
            this.zzc = j / 6;
        }
        if (this.zzi == j3) {
            this.zzi = j;
        }
        this.zzb = j;
        return this;
    }

    @Deprecated
    public LocationRequest setPriority(int i) {
        zzak.zza(i);
        this.zza = i;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request[");
        if (isPassive()) {
            sb.append(zzak.zzb(this.zza));
            if (this.zzd > 0) {
                sb.append("/");
                zzen.zzc(this.zzd, sb);
            }
        } else {
            sb.append("@");
            if (isBatched()) {
                zzen.zzc(getIntervalMillis(), sb);
                sb.append("/");
                zzen.zzc(this.zzd, sb);
            } else {
                zzen.zzc(getIntervalMillis(), sb);
            }
            sb.append(" ");
            sb.append(zzak.zzb(this.zza));
        }
        if (isPassive() || this.zzc != -1) {
            sb.append(", minUpdateInterval=");
            sb.append(zze(this.zzc));
        }
        if (this.zzg > 0.0d) {
            sb.append(", minUpdateDistance=");
            sb.append(this.zzg);
        }
        if (this.zzi != -1) {
            sb.append(", maxUpdateAge=");
            sb.append(zze(this.zzi));
        }
        if (this.zze != LongCompanionObject.MAX_VALUE) {
            sb.append(", duration=");
            zzen.zzc(this.zze, sb);
        }
        if (this.zzf != Integer.MAX_VALUE) {
            sb.append(", maxUpdates=");
            sb.append(this.zzf);
        }
        int i = this.zzk;
        if (i != 0) {
            sb.append(", ");
            sb.append(zzao.zzb(i));
        }
        int i2 = this.zzj;
        if (i2 != 0) {
            sb.append(", ");
            sb.append(zzp.zzb(i2));
        }
        if (this.zzh) {
            sb.append(", waitForAccurateLocation");
        }
        if (this.zzl) {
            sb.append(", bypass");
        }
        WorkSource workSource = this.zzm;
        if (!WorkSourceUtil.isEmpty(workSource)) {
            sb.append(", ");
            sb.append(workSource);
        }
        zzd zzdVar = this.zzn;
        if (zzdVar != null) {
            sb.append(", impersonation=");
            sb.append(zzdVar);
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getPriority());
        SafeParcelWriter.writeLong(parcel, 2, getIntervalMillis());
        SafeParcelWriter.writeLong(parcel, 3, getMinUpdateIntervalMillis());
        SafeParcelWriter.writeInt(parcel, 6, getMaxUpdates());
        SafeParcelWriter.writeFloat(parcel, 7, getMinUpdateDistanceMeters());
        SafeParcelWriter.writeLong(parcel, 8, getMaxUpdateDelayMillis());
        SafeParcelWriter.writeBoolean(parcel, 9, isWaitForAccurateLocation());
        SafeParcelWriter.writeLong(parcel, 10, getDurationMillis());
        SafeParcelWriter.writeLong(parcel, 11, getMaxUpdateAgeMillis());
        SafeParcelWriter.writeInt(parcel, 12, getGranularity());
        SafeParcelWriter.writeInt(parcel, 13, this.zzk);
        SafeParcelWriter.writeBoolean(parcel, 15, this.zzl);
        SafeParcelWriter.writeParcelable(parcel, 16, this.zzm, i, false);
        SafeParcelWriter.writeParcelable(parcel, 17, this.zzn, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Pure
    public final int zza() {
        return this.zzk;
    }

    @Pure
    public final boolean zzb() {
        return this.zzl;
    }

    @Pure
    public final WorkSource zzc() {
        return this.zzm;
    }

    @Pure
    public final zzd zzd() {
        return this.zzn;
    }

    public static final class Builder {
        private int zza;
        private long zzb;
        private long zzc;
        private long zzd;
        private long zze;
        private int zzf;
        private float zzg;
        private boolean zzh;
        private long zzi;
        private int zzj;
        private int zzk;
        private boolean zzl;
        private WorkSource zzm;
        private zzd zzn;

        public Builder(int i, long j) {
            this(j);
            setPriority(i);
        }

        public LocationRequest build() {
            int i = this.zza;
            long j = this.zzb;
            long jMin = this.zzc;
            if (i != 105) {
                jMin = Math.min(jMin, j);
            }
            return new LocationRequest(i, j, jMin, Math.max(this.zzd, this.zzb), LongCompanionObject.MAX_VALUE, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, new WorkSource(this.zzm), this.zzn);
        }

        public Builder setDurationMillis(long j) {
            Preconditions.checkArgument(j > 0, "durationMillis must be greater than 0");
            this.zze = j;
            return this;
        }

        public Builder setGranularity(int i) {
            zzp.zza(i);
            this.zzj = i;
            return this;
        }

        public Builder setIntervalMillis(long j) {
            Preconditions.checkArgument(j >= 0, "intervalMillis must be greater than or equal to 0");
            this.zzb = j;
            return this;
        }

        public Builder setMaxUpdateAgeMillis(long j) {
            boolean z = true;
            if (j != -1 && j < 0) {
                z = false;
            }
            Preconditions.checkArgument(z, "maxUpdateAgeMillis must be greater than or equal to 0, or IMPLICIT_MAX_UPDATE_AGE");
            this.zzi = j;
            return this;
        }

        public Builder setMaxUpdateDelayMillis(long j) {
            Preconditions.checkArgument(j >= 0, "maxUpdateDelayMillis must be greater than or equal to 0");
            this.zzd = j;
            return this;
        }

        public Builder setMaxUpdates(int i) {
            Preconditions.checkArgument(i > 0, "maxUpdates must be greater than 0");
            this.zzf = i;
            return this;
        }

        public Builder setMinUpdateDistanceMeters(float f) {
            Preconditions.checkArgument(f >= 0.0f, "minUpdateDistanceMeters must be greater than or equal to 0");
            this.zzg = f;
            return this;
        }

        public Builder setMinUpdateIntervalMillis(long j) {
            boolean z = true;
            if (j != -1 && j < 0) {
                z = false;
            }
            Preconditions.checkArgument(z, "minUpdateIntervalMillis must be greater than or equal to 0, or IMPLICIT_MIN_UPDATE_INTERVAL");
            this.zzc = j;
            return this;
        }

        public Builder setPriority(int i) {
            zzak.zza(i);
            this.zza = i;
            return this;
        }

        public Builder setWaitForAccurateLocation(boolean z) {
            this.zzh = z;
            return this;
        }

        public final Builder zza(int i) {
            zzao.zza(i);
            this.zzk = i;
            return this;
        }

        public final Builder zzb(boolean z) {
            this.zzl = z;
            return this;
        }

        public final Builder zzc(WorkSource workSource) {
            this.zzm = workSource;
            return this;
        }

        public Builder(long j) {
            this.zza = 102;
            this.zzc = -1L;
            this.zzd = 0L;
            this.zze = LongCompanionObject.MAX_VALUE;
            this.zzf = Integer.MAX_VALUE;
            this.zzg = 0.0f;
            this.zzh = true;
            this.zzi = -1L;
            this.zzj = 0;
            this.zzk = 0;
            this.zzl = false;
            this.zzm = null;
            this.zzn = null;
            setIntervalMillis(j);
        }

        public Builder(LocationRequest locationRequest) {
            this(locationRequest.getPriority(), locationRequest.getIntervalMillis());
            setMinUpdateIntervalMillis(locationRequest.getMinUpdateIntervalMillis());
            setMaxUpdateDelayMillis(locationRequest.getMaxUpdateDelayMillis());
            setDurationMillis(locationRequest.getDurationMillis());
            setMaxUpdates(locationRequest.getMaxUpdates());
            setMinUpdateDistanceMeters(locationRequest.getMinUpdateDistanceMeters());
            setWaitForAccurateLocation(locationRequest.isWaitForAccurateLocation());
            setMaxUpdateAgeMillis(locationRequest.getMaxUpdateAgeMillis());
            setGranularity(locationRequest.getGranularity());
            int iZza = locationRequest.zza();
            zzao.zza(iZza);
            this.zzk = iZza;
            this.zzl = locationRequest.zzb();
            this.zzm = locationRequest.zzc();
            zzd zzdVarZzd = locationRequest.zzd();
            boolean z = true;
            if (zzdVarZzd != null && zzdVarZzd.zza()) {
                z = false;
            }
            Preconditions.checkArgument(z);
            this.zzn = zzdVarZzd;
        }
    }

    public LocationRequest(int i, long j, long j2, long j3, long j4, long j5, int i2, float f, boolean z, long j6, int i3, int i4, boolean z2, WorkSource workSource, zzd zzdVar) {
        this.zza = i;
        this.zzb = j;
        this.zzc = j2;
        this.zzd = j3;
        this.zze = j4 != LongCompanionObject.MAX_VALUE ? Math.min(Math.max(1L, j4 - SystemClock.elapsedRealtime()), j5) : j5;
        this.zzf = i2;
        this.zzg = f;
        this.zzh = z;
        this.zzi = j6;
        this.zzj = i3;
        this.zzk = i4;
        this.zzl = z2;
        this.zzm = workSource;
        this.zzn = zzdVar;
    }
}
