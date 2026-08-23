package com.google.android.gms.cast.framework.media;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.framework.media.internal.ResourceProvider;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.cast.zzfq;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NotificationOptions extends AbstractSafeParcelable {
    private final int zzA;
    private final int zzB;
    private final int zzC;
    private final int zzD;
    private final int zzE;
    private final int zzF;
    private final int zzG;
    private final zzg zzH;
    private final boolean zzI;
    private final boolean zzJ;
    private final List zzc;
    private final int[] zzd;
    private final long zze;
    private final String zzf;
    private final int zzg;
    private final int zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final int zzm;
    private final int zzn;
    private final int zzo;
    private final int zzp;
    private final int zzq;
    private final int zzr;
    private final int zzs;
    private final int zzt;
    private final int zzu;
    private final int zzv;
    private final int zzw;
    private final int zzx;
    private final int zzy;
    private final int zzz;
    private static final zzfq zza = zzfq.zzk(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK, MediaIntentReceiver.ACTION_STOP_CASTING);
    private static final int[] zzb = {0, 1};
    public static final Parcelable.Creator<NotificationOptions> CREATOR = new zzaa();

    public static final class Builder {
        private String zza;
        private List zzb = NotificationOptions.zza;
        private int[] zzd = NotificationOptions.zzb;
        private int zze = zza("smallIconDrawableResId");
        private int zzf = zza("stopLiveStreamDrawableResId");
        private int zzg = zza("pauseDrawableResId");
        private int zzh = zza("playDrawableResId");
        private int zzi = zza("skipNextDrawableResId");
        private int zzj = zza("skipPrevDrawableResId");
        private int zzk = zza("forwardDrawableResId");
        private int zzl = zza("forward10DrawableResId");
        private int zzm = zza("forward30DrawableResId");
        private int zzn = zza("rewindDrawableResId");
        private int zzo = zza("rewind10DrawableResId");
        private int zzp = zza("rewind30DrawableResId");
        private int zzq = zza("disconnectDrawableResId");
        private long zzr = 10000;
        private boolean zzs;
        private boolean zzt;

        private static int zza(String str) {
            try {
                int i = ResourceProvider.$r8$clinit;
                Integer num = (Integer) ResourceProvider.class.getMethod("findResourceByName", String.class).invoke(null, str);
                if (num == null) {
                    return 0;
                }
                return num.intValue();
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return 0;
            }
        }

        public NotificationOptions build() {
            return new NotificationOptions(this.zzb, this.zzd, this.zzr, this.zza, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzo, this.zzp, this.zzq, zza("notificationImageSizeDimenResId"), zza("castingToDeviceStringResId"), zza("stopLiveStreamStringResId"), zza("pauseStringResId"), zza("playStringResId"), zza("skipNextStringResId"), zza("skipPrevStringResId"), zza("forwardStringResId"), zza("forward10StringResId"), zza("forward30StringResId"), zza("rewindStringResId"), zza("rewind10StringResId"), zza("rewind30StringResId"), zza("disconnectStringResId"), null, this.zzs, this.zzt);
        }
    }

    public NotificationOptions(List list, int[] iArr, long j, String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25, int i26, int i27, IBinder iBinder, boolean z, boolean z2) {
        zzg zzeVar;
        this.zzc = new ArrayList(list);
        this.zzd = Arrays.copyOf(iArr, iArr.length);
        this.zze = j;
        this.zzf = str;
        this.zzg = i;
        this.zzh = i2;
        this.zzi = i3;
        this.zzj = i4;
        this.zzk = i5;
        this.zzl = i6;
        this.zzm = i7;
        this.zzn = i8;
        this.zzo = i9;
        this.zzp = i10;
        this.zzq = i11;
        this.zzr = i12;
        this.zzs = i13;
        this.zzt = i14;
        this.zzu = i15;
        this.zzv = i16;
        this.zzw = i17;
        this.zzx = i18;
        this.zzy = i19;
        this.zzz = i20;
        this.zzA = i21;
        this.zzB = i22;
        this.zzC = i23;
        this.zzD = i24;
        this.zzE = i25;
        this.zzF = i26;
        this.zzG = i27;
        this.zzI = z;
        this.zzJ = z2;
        if (iBinder == null) {
            zzeVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.INotificationActionsProvider");
            zzeVar = iInterfaceQueryLocalInterface instanceof zzg ? (zzg) iInterfaceQueryLocalInterface : new zze(iBinder);
        }
        this.zzH = zzeVar;
    }

    public List getActions() {
        return this.zzc;
    }

    public int getCastingToDeviceStringResId() {
        return this.zzu;
    }

    public int[] getCompatActionIndices() {
        int[] iArr = this.zzd;
        return Arrays.copyOf(iArr, iArr.length);
    }

    public int getDisconnectDrawableResId() {
        return this.zzs;
    }

    public int getForward10DrawableResId() {
        return this.zzn;
    }

    public int getForward30DrawableResId() {
        return this.zzo;
    }

    public int getForwardDrawableResId() {
        return this.zzm;
    }

    public int getPauseDrawableResId() {
        return this.zzi;
    }

    public int getPlayDrawableResId() {
        return this.zzj;
    }

    public int getRewind10DrawableResId() {
        return this.zzq;
    }

    public int getRewind30DrawableResId() {
        return this.zzr;
    }

    public int getRewindDrawableResId() {
        return this.zzp;
    }

    public int getSkipNextDrawableResId() {
        return this.zzk;
    }

    public int getSkipPrevDrawableResId() {
        return this.zzl;
    }

    public long getSkipStepMs() {
        return this.zze;
    }

    public int getSmallIconDrawableResId() {
        return this.zzg;
    }

    public int getStopLiveStreamDrawableResId() {
        return this.zzh;
    }

    public int getStopLiveStreamTitleResId() {
        return this.zzv;
    }

    public String getTargetActivityClassName() {
        return this.zzf;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringList(parcel, 2, getActions(), false);
        SafeParcelWriter.writeIntArray(parcel, 3, getCompatActionIndices(), false);
        SafeParcelWriter.writeLong(parcel, 4, getSkipStepMs());
        SafeParcelWriter.writeString(parcel, 5, getTargetActivityClassName(), false);
        SafeParcelWriter.writeInt(parcel, 6, getSmallIconDrawableResId());
        SafeParcelWriter.writeInt(parcel, 7, getStopLiveStreamDrawableResId());
        SafeParcelWriter.writeInt(parcel, 8, getPauseDrawableResId());
        SafeParcelWriter.writeInt(parcel, 9, getPlayDrawableResId());
        SafeParcelWriter.writeInt(parcel, 10, getSkipNextDrawableResId());
        SafeParcelWriter.writeInt(parcel, 11, getSkipPrevDrawableResId());
        SafeParcelWriter.writeInt(parcel, 12, getForwardDrawableResId());
        SafeParcelWriter.writeInt(parcel, 13, getForward10DrawableResId());
        SafeParcelWriter.writeInt(parcel, 14, getForward30DrawableResId());
        SafeParcelWriter.writeInt(parcel, 15, getRewindDrawableResId());
        SafeParcelWriter.writeInt(parcel, 16, getRewind10DrawableResId());
        SafeParcelWriter.writeInt(parcel, 17, getRewind30DrawableResId());
        SafeParcelWriter.writeInt(parcel, 18, getDisconnectDrawableResId());
        SafeParcelWriter.writeInt(parcel, 19, this.zzt);
        SafeParcelWriter.writeInt(parcel, 20, getCastingToDeviceStringResId());
        SafeParcelWriter.writeInt(parcel, 21, getStopLiveStreamTitleResId());
        SafeParcelWriter.writeInt(parcel, 22, this.zzw);
        SafeParcelWriter.writeInt(parcel, 23, this.zzx);
        SafeParcelWriter.writeInt(parcel, 24, this.zzy);
        SafeParcelWriter.writeInt(parcel, 25, this.zzz);
        SafeParcelWriter.writeInt(parcel, 26, this.zzA);
        SafeParcelWriter.writeInt(parcel, 27, this.zzB);
        SafeParcelWriter.writeInt(parcel, 28, this.zzC);
        SafeParcelWriter.writeInt(parcel, 29, this.zzD);
        SafeParcelWriter.writeInt(parcel, 30, this.zzE);
        SafeParcelWriter.writeInt(parcel, 31, this.zzF);
        SafeParcelWriter.writeInt(parcel, 32, this.zzG);
        zzg zzgVar = this.zzH;
        SafeParcelWriter.writeIBinder(parcel, 33, zzgVar == null ? null : zzgVar.asBinder(), false);
        SafeParcelWriter.writeBoolean(parcel, 34, this.zzI);
        SafeParcelWriter.writeBoolean(parcel, 35, this.zzJ);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final int zza() {
        return this.zzG;
    }

    public final int zzb() {
        return this.zzB;
    }

    public final int zzc() {
        return this.zzC;
    }

    public final int zzd() {
        return this.zzA;
    }

    public final int zze() {
        return this.zzt;
    }

    public final int zzf() {
        return this.zzw;
    }

    public final int zzg() {
        return this.zzx;
    }

    public final int zzh() {
        return this.zzE;
    }

    public final int zzi() {
        return this.zzF;
    }

    public final int zzj() {
        return this.zzD;
    }

    public final int zzk() {
        return this.zzy;
    }

    public final int zzl() {
        return this.zzz;
    }

    public final zzg zzm() {
        return this.zzH;
    }

    public final boolean zzo() {
        return this.zzJ;
    }

    public final boolean zzp() {
        return this.zzI;
    }
}
