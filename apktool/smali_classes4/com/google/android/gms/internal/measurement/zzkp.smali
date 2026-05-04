.class public final enum Lcom/google/android/gms/internal/measurement/zzkp;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmj;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzkp;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzkp;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzkp;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zzkp;

.field public static final enum zze:Lcom/google/android/gms/internal/measurement/zzkp;

.field public static final enum zzf:Lcom/google/android/gms/internal/measurement/zzkp;

.field public static final enum zzg:Lcom/google/android/gms/internal/measurement/zzkp;

.field public static final enum zzh:Lcom/google/android/gms/internal/measurement/zzkp;

.field public static final enum zzi:Lcom/google/android/gms/internal/measurement/zzkp;

.field public static final enum zzj:Lcom/google/android/gms/internal/measurement/zzkp;

.field public static final enum zzk:Lcom/google/android/gms/internal/measurement/zzkp;

.field public static final enum zzl:Lcom/google/android/gms/internal/measurement/zzkp;

.field public static final enum zzm:Lcom/google/android/gms/internal/measurement/zzkp;

.field private static final synthetic zzo:[Lcom/google/android/gms/internal/measurement/zzkp;


# instance fields
.field private final zzn:I


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkp;

    const-string v1, "IAB_TCF_PURPOSE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzkp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzkp;->zza:Lcom/google/android/gms/internal/measurement/zzkp;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzkp;

    .line 2
    const-string v3, "IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/measurement/zzkp;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zzb:Lcom/google/android/gms/internal/measurement/zzkp;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzkp;

    .line 3
    const-string v5, "IAB_TCF_PURPOSE_SELECT_BASIC_ADS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/measurement/zzkp;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzkp;->zzc:Lcom/google/android/gms/internal/measurement/zzkp;

    new-instance v5, Lcom/google/android/gms/internal/measurement/zzkp;

    .line 4
    const-string v7, "IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/measurement/zzkp;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/measurement/zzkp;->zzd:Lcom/google/android/gms/internal/measurement/zzkp;

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzkp;

    .line 5
    const-string v9, "IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/measurement/zzkp;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/measurement/zzkp;->zze:Lcom/google/android/gms/internal/measurement/zzkp;

    new-instance v9, Lcom/google/android/gms/internal/measurement/zzkp;

    .line 6
    const-string v11, "IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_CONTENT_PROFILE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/measurement/zzkp;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/measurement/zzkp;->zzf:Lcom/google/android/gms/internal/measurement/zzkp;

    new-instance v11, Lcom/google/android/gms/internal/measurement/zzkp;

    .line 7
    const-string v13, "IAB_TCF_PURPOSE_SELECT_PERSONALISED_CONTENT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/measurement/zzkp;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/measurement/zzkp;->zzg:Lcom/google/android/gms/internal/measurement/zzkp;

    new-instance v13, Lcom/google/android/gms/internal/measurement/zzkp;

    .line 8
    const-string v15, "IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE"

    move/from16 v16, v2

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2, v2}, Lcom/google/android/gms/internal/measurement/zzkp;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/measurement/zzkp;->zzh:Lcom/google/android/gms/internal/measurement/zzkp;

    new-instance v15, Lcom/google/android/gms/internal/measurement/zzkp;

    move/from16 v17, v2

    .line 9
    const-string v2, "IAB_TCF_PURPOSE_MEASURE_CONTENT_PERFORMANCE"

    move/from16 v18, v4

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4, v4}, Lcom/google/android/gms/internal/measurement/zzkp;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/measurement/zzkp;->zzi:Lcom/google/android/gms/internal/measurement/zzkp;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzkp;

    move/from16 v19, v4

    .line 10
    const-string v4, "IAB_TCF_PURPOSE_APPLY_MARKET_RESEARCH_TO_GENERATE_AUDIENCE_INSIGHTS"

    move/from16 v20, v6

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6, v6}, Lcom/google/android/gms/internal/measurement/zzkp;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzkp;->zzj:Lcom/google/android/gms/internal/measurement/zzkp;

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzkp;

    move/from16 v21, v6

    .line 11
    const-string v6, "IAB_TCF_PURPOSE_DEVELOP_AND_IMPROVE_PRODUCTS"

    move/from16 v22, v8

    const/16 v8, 0xa

    invoke-direct {v4, v6, v8, v8}, Lcom/google/android/gms/internal/measurement/zzkp;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/measurement/zzkp;->zzk:Lcom/google/android/gms/internal/measurement/zzkp;

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzkp;

    move/from16 v23, v8

    .line 12
    const-string v8, "IAB_TCF_PURPOSE_USE_LIMITED_DATA_TO_SELECT_CONTENT"

    move/from16 v24, v10

    const/16 v10, 0xb

    invoke-direct {v6, v8, v10, v10}, Lcom/google/android/gms/internal/measurement/zzkp;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/zzkp;->zzl:Lcom/google/android/gms/internal/measurement/zzkp;

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzkp;

    move/from16 v25, v10

    const/4 v10, -0x1

    move/from16 v26, v12

    .line 13
    const-string v12, "UNRECOGNIZED"

    move/from16 v27, v14

    const/16 v14, 0xc

    invoke-direct {v8, v12, v14, v10}, Lcom/google/android/gms/internal/measurement/zzkp;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/measurement/zzkp;->zzm:Lcom/google/android/gms/internal/measurement/zzkp;

    const/16 v10, 0xd

    new-array v10, v10, [Lcom/google/android/gms/internal/measurement/zzkp;

    aput-object v0, v10, v16

    aput-object v1, v10, v18

    aput-object v3, v10, v20

    aput-object v5, v10, v22

    aput-object v7, v10, v24

    aput-object v9, v10, v26

    aput-object v11, v10, v27

    aput-object v13, v10, v17

    aput-object v15, v10, v19

    aput-object v2, v10, v21

    aput-object v4, v10, v23

    aput-object v6, v10, v25

    aput-object v8, v10, v14

    sput-object v10, Lcom/google/android/gms/internal/measurement/zzkp;->zzo:[Lcom/google/android/gms/internal/measurement/zzkp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzkp;->zzn:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzkp;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkp;->zzo:[Lcom/google/android/gms/internal/measurement/zzkp;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzkp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzkp;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkp;->zzn:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkp;->zzm:Lcom/google/android/gms/internal/measurement/zzkp;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkp;->zzn:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
