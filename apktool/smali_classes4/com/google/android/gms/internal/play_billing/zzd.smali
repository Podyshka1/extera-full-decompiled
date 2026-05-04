.class final enum Lcom/google/android/gms/internal/play_billing/zzd;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/play_billing/zzd;

.field public static final enum zzb:Lcom/google/android/gms/internal/play_billing/zzd;

.field public static final enum zzc:Lcom/google/android/gms/internal/play_billing/zzd;

.field public static final enum zzd:Lcom/google/android/gms/internal/play_billing/zzd;

.field public static final enum zze:Lcom/google/android/gms/internal/play_billing/zzd;

.field public static final enum zzf:Lcom/google/android/gms/internal/play_billing/zzd;

.field public static final enum zzg:Lcom/google/android/gms/internal/play_billing/zzd;

.field public static final enum zzh:Lcom/google/android/gms/internal/play_billing/zzd;

.field public static final enum zzi:Lcom/google/android/gms/internal/play_billing/zzd;

.field public static final enum zzj:Lcom/google/android/gms/internal/play_billing/zzd;

.field public static final enum zzk:Lcom/google/android/gms/internal/play_billing/zzd;

.field public static final enum zzl:Lcom/google/android/gms/internal/play_billing/zzd;

.field public static final enum zzm:Lcom/google/android/gms/internal/play_billing/zzd;

.field public static final enum zzn:Lcom/google/android/gms/internal/play_billing/zzd;

.field public static final enum zzo:Lcom/google/android/gms/internal/play_billing/zzd;

.field private static final zzp:Lcom/google/android/gms/internal/play_billing/zzcr;

.field private static final synthetic zzq:[Lcom/google/android/gms/internal/play_billing/zzd;


# instance fields
.field private final zzr:I


# direct methods
.method static constructor <clinit>()V
    .locals 32

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzd;

    const/16 v1, -0x3e7

    const-string v2, "RESPONSE_CODE_UNSPECIFIED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/zzd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzd;->zza:Lcom/google/android/gms/internal/play_billing/zzd;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzd;

    const/4 v2, -0x3

    .line 2
    const-string v4, "SERVICE_TIMEOUT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/google/android/gms/internal/play_billing/zzd;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/play_billing/zzd;->zzb:Lcom/google/android/gms/internal/play_billing/zzd;

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzd;

    const/4 v4, -0x2

    .line 3
    const-string v6, "FEATURE_NOT_SUPPORTED"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/google/android/gms/internal/play_billing/zzd;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/play_billing/zzd;->zzc:Lcom/google/android/gms/internal/play_billing/zzd;

    new-instance v4, Lcom/google/android/gms/internal/play_billing/zzd;

    const/4 v6, -0x1

    .line 4
    const-string v8, "SERVICE_DISCONNECTED"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/google/android/gms/internal/play_billing/zzd;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/play_billing/zzd;->zzd:Lcom/google/android/gms/internal/play_billing/zzd;

    new-instance v6, Lcom/google/android/gms/internal/play_billing/zzd;

    .line 5
    const-string v8, "OK"

    const/4 v10, 0x4

    invoke-direct {v6, v8, v10, v3}, Lcom/google/android/gms/internal/play_billing/zzd;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/play_billing/zzd;->zze:Lcom/google/android/gms/internal/play_billing/zzd;

    new-instance v8, Lcom/google/android/gms/internal/play_billing/zzd;

    .line 6
    const-string v11, "USER_CANCELED"

    const/4 v12, 0x5

    invoke-direct {v8, v11, v12, v5}, Lcom/google/android/gms/internal/play_billing/zzd;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/play_billing/zzd;->zzf:Lcom/google/android/gms/internal/play_billing/zzd;

    new-instance v11, Lcom/google/android/gms/internal/play_billing/zzd;

    .line 7
    const-string v13, "SERVICE_UNAVAILABLE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v7}, Lcom/google/android/gms/internal/play_billing/zzd;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/play_billing/zzd;->zzg:Lcom/google/android/gms/internal/play_billing/zzd;

    new-instance v13, Lcom/google/android/gms/internal/play_billing/zzd;

    .line 8
    const-string v15, "BILLING_UNAVAILABLE"

    move/from16 v16, v3

    const/4 v3, 0x7

    invoke-direct {v13, v15, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzd;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/play_billing/zzd;->zzh:Lcom/google/android/gms/internal/play_billing/zzd;

    new-instance v15, Lcom/google/android/gms/internal/play_billing/zzd;

    move/from16 v17, v5

    .line 9
    const-string v5, "ITEM_UNAVAILABLE"

    move/from16 v18, v7

    const/16 v7, 0x8

    invoke-direct {v15, v5, v7, v10}, Lcom/google/android/gms/internal/play_billing/zzd;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/play_billing/zzd;->zzi:Lcom/google/android/gms/internal/play_billing/zzd;

    new-instance v5, Lcom/google/android/gms/internal/play_billing/zzd;

    move/from16 v19, v9

    .line 10
    const-string v9, "DEVELOPER_ERROR"

    move/from16 v20, v10

    const/16 v10, 0x9

    invoke-direct {v5, v9, v10, v12}, Lcom/google/android/gms/internal/play_billing/zzd;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/play_billing/zzd;->zzj:Lcom/google/android/gms/internal/play_billing/zzd;

    new-instance v9, Lcom/google/android/gms/internal/play_billing/zzd;

    move/from16 v21, v10

    .line 11
    const-string v10, "ERROR"

    move/from16 v22, v12

    const/16 v12, 0xa

    invoke-direct {v9, v10, v12, v14}, Lcom/google/android/gms/internal/play_billing/zzd;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/play_billing/zzd;->zzk:Lcom/google/android/gms/internal/play_billing/zzd;

    new-instance v10, Lcom/google/android/gms/internal/play_billing/zzd;

    move/from16 v23, v12

    .line 12
    const-string v12, "ITEM_ALREADY_OWNED"

    move/from16 v24, v14

    const/16 v14, 0xb

    invoke-direct {v10, v12, v14, v3}, Lcom/google/android/gms/internal/play_billing/zzd;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/play_billing/zzd;->zzl:Lcom/google/android/gms/internal/play_billing/zzd;

    new-instance v12, Lcom/google/android/gms/internal/play_billing/zzd;

    move/from16 v25, v3

    .line 13
    const-string v3, "ITEM_NOT_OWNED"

    const/16 v14, 0xc

    invoke-direct {v12, v3, v14, v7}, Lcom/google/android/gms/internal/play_billing/zzd;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/play_billing/zzd;->zzm:Lcom/google/android/gms/internal/play_billing/zzd;

    new-instance v3, Lcom/google/android/gms/internal/play_billing/zzd;

    move/from16 v27, v7

    .line 14
    const-string v7, "EXPIRED_OFFER_TOKEN"

    const/16 v14, 0xd

    move-object/from16 v29, v0

    const/16 v0, 0xb

    invoke-direct {v3, v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzd;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/play_billing/zzd;->zzn:Lcom/google/android/gms/internal/play_billing/zzd;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzd;

    .line 15
    const-string v7, "NETWORK_ERROR"

    move/from16 v30, v14

    const/16 v14, 0xe

    move-object/from16 v31, v1

    const/16 v1, 0xc

    invoke-direct {v0, v7, v14, v1}, Lcom/google/android/gms/internal/play_billing/zzd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzd;->zzo:Lcom/google/android/gms/internal/play_billing/zzd;

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/google/android/gms/internal/play_billing/zzd;

    aput-object v29, v1, v16

    aput-object v31, v1, v17

    aput-object v2, v1, v18

    aput-object v4, v1, v19

    aput-object v6, v1, v20

    aput-object v8, v1, v22

    aput-object v11, v1, v24

    aput-object v13, v1, v25

    aput-object v15, v1, v27

    aput-object v5, v1, v21

    aput-object v9, v1, v23

    const/16 v26, 0xb

    aput-object v10, v1, v26

    const/16 v28, 0xc

    aput-object v12, v1, v28

    aput-object v3, v1, v30

    aput-object v0, v1, v14

    sput-object v1, Lcom/google/android/gms/internal/play_billing/zzd;->zzq:[Lcom/google/android/gms/internal/play_billing/zzd;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzcq;-><init>()V

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzd;->values()[Lcom/google/android/gms/internal/play_billing/zzd;

    move-result-object v1

    array-length v2, v1

    move/from16 v3, v16

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 17
    iget v5, v4, Lcom/google/android/gms/internal/play_billing/zzd;->zzr:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/play_billing/zzcq;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcq;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcq;->zzb()Lcom/google/android/gms/internal/play_billing/zzcr;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzd;->zzp:Lcom/google/android/gms/internal/play_billing/zzcr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzd;->zzr:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/play_billing/zzd;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzd;->zzq:[Lcom/google/android/gms/internal/play_billing/zzd;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/play_billing/zzd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/play_billing/zzd;

    return-object v0
.end method

.method static zza(I)Lcom/google/android/gms/internal/play_billing/zzd;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzd;->zzp:Lcom/google/android/gms/internal/play_billing/zzcr;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzcr;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzd;->zza:Lcom/google/android/gms/internal/play_billing/zzd;

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzcr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzd;

    return-object p0
.end method
