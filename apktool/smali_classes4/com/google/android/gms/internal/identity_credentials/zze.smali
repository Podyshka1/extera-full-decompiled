.class public abstract Lcom/google/android/gms/internal/identity_credentials/zze;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/common/Feature;

.field public static final zzb:Lcom/google/android/gms/common/Feature;

.field public static final zzc:Lcom/google/android/gms/common/Feature;

.field public static final zzd:Lcom/google/android/gms/common/Feature;

.field public static final zze:Lcom/google/android/gms/common/Feature;

.field public static final zzf:Lcom/google/android/gms/common/Feature;

.field public static final zzg:Lcom/google/android/gms/common/Feature;

.field public static final zzh:Lcom/google/android/gms/common/Feature;

.field public static final zzi:Lcom/google/android/gms/common/Feature;

.field public static final zzj:Lcom/google/android/gms/common/Feature;

.field public static final zzk:Lcom/google/android/gms/common/Feature;

.field public static final zzl:Lcom/google/android/gms/common/Feature;

.field public static final zzm:Lcom/google/android/gms/common/Feature;

.field public static final zzn:Lcom/google/android/gms/common/Feature;

.field public static final zzo:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "GET_CREDENTIAL"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/identity_credentials/zze;->zza:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    const-string v4, "CREDENTIAL_REGISTRY"

    .line 2
    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/internal/identity_credentials/zze;->zzb:Lcom/google/android/gms/common/Feature;

    new-instance v4, Lcom/google/android/gms/common/Feature;

    const-string v5, "CLEAR_REGISTRY"

    const-wide/16 v6, 0x2

    .line 3
    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v4, Lcom/google/android/gms/internal/identity_credentials/zze;->zzc:Lcom/google/android/gms/common/Feature;

    new-instance v5, Lcom/google/android/gms/common/Feature;

    const-string v6, "CLEAR_CREATION_OPTIONS"

    .line 4
    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v5, Lcom/google/android/gms/internal/identity_credentials/zze;->zzd:Lcom/google/android/gms/common/Feature;

    new-instance v6, Lcom/google/android/gms/common/Feature;

    const-string v7, "CLEAR_CREDENTIAL_STATE"

    .line 5
    invoke-direct {v6, v7, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v6, Lcom/google/android/gms/internal/identity_credentials/zze;->zze:Lcom/google/android/gms/common/Feature;

    new-instance v7, Lcom/google/android/gms/common/Feature;

    .line 6
    const-string v8, "CREATE_CREDENTIAL"

    const-wide/16 v9, 0x3

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v7, Lcom/google/android/gms/internal/identity_credentials/zze;->zzf:Lcom/google/android/gms/common/Feature;

    new-instance v8, Lcom/google/android/gms/common/Feature;

    const-string v11, "REGISTER_CREATION_OPTIONS"

    .line 7
    invoke-direct {v8, v11, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v8, Lcom/google/android/gms/internal/identity_credentials/zze;->zzg:Lcom/google/android/gms/common/Feature;

    new-instance v11, Lcom/google/android/gms/common/Feature;

    const-string v12, "REGISTER_EXPORT"

    .line 8
    invoke-direct {v11, v12, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v11, Lcom/google/android/gms/internal/identity_credentials/zze;->zzh:Lcom/google/android/gms/common/Feature;

    new-instance v12, Lcom/google/android/gms/common/Feature;

    const-string v13, "IMPORT_CREDENTIALS"

    .line 9
    invoke-direct {v12, v13, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v12, Lcom/google/android/gms/internal/identity_credentials/zze;->zzi:Lcom/google/android/gms/common/Feature;

    new-instance v13, Lcom/google/android/gms/common/Feature;

    const-string v14, "SIGNAL_CREDENTIAL_STATE"

    .line 10
    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v13, Lcom/google/android/gms/internal/identity_credentials/zze;->zzj:Lcom/google/android/gms/common/Feature;

    new-instance v14, Lcom/google/android/gms/common/Feature;

    const-string v15, "CLEAR_EXPORT"

    .line 11
    invoke-direct {v14, v15, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v14, Lcom/google/android/gms/internal/identity_credentials/zze;->zzk:Lcom/google/android/gms/common/Feature;

    new-instance v2, Lcom/google/android/gms/common/Feature;

    const-string v3, "IMPORT_CREDENTIALS_FOR_DEVICE_SETUP"

    .line 12
    invoke-direct {v2, v3, v9, v10}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v2, Lcom/google/android/gms/internal/identity_credentials/zze;->zzl:Lcom/google/android/gms/common/Feature;

    new-instance v3, Lcom/google/android/gms/common/Feature;

    const-string v15, "EXPORT_CREDENTIALS_TO_DEVICE_SETUP"

    .line 13
    invoke-direct {v3, v15, v9, v10}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v3, Lcom/google/android/gms/internal/identity_credentials/zze;->zzm:Lcom/google/android/gms/common/Feature;

    new-instance v15, Lcom/google/android/gms/common/Feature;

    move-object/from16 v16, v0

    const-string v0, "GET_CREDENTIAL_TRANSFER_CAPABILITIES"

    .line 14
    invoke-direct {v15, v0, v9, v10}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v15, Lcom/google/android/gms/internal/identity_credentials/zze;->zzn:Lcom/google/android/gms/common/Feature;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    const/4 v9, 0x0

    aput-object v16, v0, v9

    const/4 v9, 0x1

    aput-object v1, v0, v9

    const/4 v1, 0x2

    aput-object v4, v0, v1

    const/4 v1, 0x3

    aput-object v5, v0, v1

    const/4 v1, 0x4

    aput-object v6, v0, v1

    const/4 v1, 0x5

    aput-object v7, v0, v1

    const/4 v1, 0x6

    aput-object v8, v0, v1

    const/4 v1, 0x7

    aput-object v11, v0, v1

    const/16 v1, 0x8

    aput-object v12, v0, v1

    const/16 v1, 0x9

    aput-object v13, v0, v1

    const/16 v1, 0xa

    aput-object v14, v0, v1

    const/16 v1, 0xb

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v15, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/identity_credentials/zze;->zzo:[Lcom/google/android/gms/common/Feature;

    return-void
.end method
