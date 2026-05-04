.class public final enum Lcom/google/android/gms/internal/measurement/zzot;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzot;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzot;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzot;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zzot;

.field public static final enum zze:Lcom/google/android/gms/internal/measurement/zzot;

.field public static final enum zzf:Lcom/google/android/gms/internal/measurement/zzot;

.field public static final enum zzg:Lcom/google/android/gms/internal/measurement/zzot;

.field public static final enum zzh:Lcom/google/android/gms/internal/measurement/zzot;

.field public static final enum zzi:Lcom/google/android/gms/internal/measurement/zzot;

.field public static final enum zzj:Lcom/google/android/gms/internal/measurement/zzot;

.field public static final enum zzk:Lcom/google/android/gms/internal/measurement/zzot;

.field public static final enum zzl:Lcom/google/android/gms/internal/measurement/zzot;

.field public static final enum zzm:Lcom/google/android/gms/internal/measurement/zzot;

.field public static final enum zzn:Lcom/google/android/gms/internal/measurement/zzot;

.field public static final enum zzo:Lcom/google/android/gms/internal/measurement/zzot;

.field public static final enum zzp:Lcom/google/android/gms/internal/measurement/zzot;

.field public static final enum zzq:Lcom/google/android/gms/internal/measurement/zzot;

.field public static final enum zzr:Lcom/google/android/gms/internal/measurement/zzot;

.field private static final synthetic zzu:[Lcom/google/android/gms/internal/measurement/zzot;


# instance fields
.field private final zzs:Lcom/google/android/gms/internal/measurement/zzou;

.field private final zzt:I


# direct methods
.method static constructor <clinit>()V
    .locals 38

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzot;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzou;->zzd:Lcom/google/android/gms/internal/measurement/zzou;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzot;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzou;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzot;->zza:Lcom/google/android/gms/internal/measurement/zzot;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzot;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzou;->zzc:Lcom/google/android/gms/internal/measurement/zzou;

    .line 2
    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lcom/google/android/gms/internal/measurement/zzot;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzou;I)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzot;->zzb:Lcom/google/android/gms/internal/measurement/zzot;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzot;

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzou;->zzb:Lcom/google/android/gms/internal/measurement/zzou;

    .line 3
    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lcom/google/android/gms/internal/measurement/zzot;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzou;I)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzot;->zzc:Lcom/google/android/gms/internal/measurement/zzot;

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzot;

    .line 4
    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v5, v3}, Lcom/google/android/gms/internal/measurement/zzot;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzou;I)V

    sput-object v7, Lcom/google/android/gms/internal/measurement/zzot;->zzd:Lcom/google/android/gms/internal/measurement/zzot;

    new-instance v9, Lcom/google/android/gms/internal/measurement/zzot;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzou;->zza:Lcom/google/android/gms/internal/measurement/zzou;

    .line 5
    const-string v12, "INT32"

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13, v11, v3}, Lcom/google/android/gms/internal/measurement/zzot;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzou;I)V

    sput-object v9, Lcom/google/android/gms/internal/measurement/zzot;->zze:Lcom/google/android/gms/internal/measurement/zzot;

    new-instance v12, Lcom/google/android/gms/internal/measurement/zzot;

    const-string v14, "FIXED64"

    .line 6
    invoke-direct {v12, v14, v6, v5, v4}, Lcom/google/android/gms/internal/measurement/zzot;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzou;I)V

    sput-object v12, Lcom/google/android/gms/internal/measurement/zzot;->zzf:Lcom/google/android/gms/internal/measurement/zzot;

    new-instance v14, Lcom/google/android/gms/internal/measurement/zzot;

    .line 7
    const-string v15, "FIXED32"

    move/from16 v16, v13

    const/4 v13, 0x6

    invoke-direct {v14, v15, v13, v11, v6}, Lcom/google/android/gms/internal/measurement/zzot;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzou;I)V

    sput-object v14, Lcom/google/android/gms/internal/measurement/zzot;->zzg:Lcom/google/android/gms/internal/measurement/zzot;

    new-instance v15, Lcom/google/android/gms/internal/measurement/zzot;

    move/from16 v17, v13

    sget-object v13, Lcom/google/android/gms/internal/measurement/zzou;->zze:Lcom/google/android/gms/internal/measurement/zzou;

    .line 8
    const-string v4, "BOOL"

    const/4 v6, 0x7

    invoke-direct {v15, v4, v6, v13, v3}, Lcom/google/android/gms/internal/measurement/zzot;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzou;I)V

    sput-object v15, Lcom/google/android/gms/internal/measurement/zzot;->zzh:Lcom/google/android/gms/internal/measurement/zzot;

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzot;

    sget-object v13, Lcom/google/android/gms/internal/measurement/zzou;->zzf:Lcom/google/android/gms/internal/measurement/zzou;

    move/from16 v20, v6

    .line 9
    const-string v6, "STRING"

    const/16 v3, 0x8

    invoke-direct {v4, v6, v3, v13, v8}, Lcom/google/android/gms/internal/measurement/zzot;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzou;I)V

    sput-object v4, Lcom/google/android/gms/internal/measurement/zzot;->zzi:Lcom/google/android/gms/internal/measurement/zzot;

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzot;

    sget-object v13, Lcom/google/android/gms/internal/measurement/zzou;->zzi:Lcom/google/android/gms/internal/measurement/zzou;

    move/from16 v22, v3

    .line 10
    const-string v3, "GROUP"

    const/16 v8, 0x9

    invoke-direct {v6, v3, v8, v13, v10}, Lcom/google/android/gms/internal/measurement/zzot;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzou;I)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/zzot;->zzj:Lcom/google/android/gms/internal/measurement/zzot;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzot;

    move/from16 v24, v8

    .line 11
    const-string v8, "MESSAGE"

    move/from16 v25, v10

    const/16 v10, 0xa

    move-object/from16 v26, v0

    const/4 v0, 0x2

    invoke-direct {v3, v8, v10, v13, v0}, Lcom/google/android/gms/internal/measurement/zzot;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzou;I)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzot;->zzk:Lcom/google/android/gms/internal/measurement/zzot;

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzot;

    sget-object v13, Lcom/google/android/gms/internal/measurement/zzou;->zzg:Lcom/google/android/gms/internal/measurement/zzou;

    move/from16 v27, v10

    .line 12
    const-string v10, "BYTES"

    move-object/from16 v28, v1

    const/16 v1, 0xb

    invoke-direct {v8, v10, v1, v13, v0}, Lcom/google/android/gms/internal/measurement/zzot;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzou;I)V

    sput-object v8, Lcom/google/android/gms/internal/measurement/zzot;->zzl:Lcom/google/android/gms/internal/measurement/zzot;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzot;

    .line 13
    const-string v10, "UINT32"

    const/16 v13, 0xc

    move/from16 v29, v1

    const/4 v1, 0x0

    invoke-direct {v0, v10, v13, v11, v1}, Lcom/google/android/gms/internal/measurement/zzot;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzou;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzot;->zzm:Lcom/google/android/gms/internal/measurement/zzot;

    new-instance v10, Lcom/google/android/gms/internal/measurement/zzot;

    move/from16 v30, v13

    sget-object v13, Lcom/google/android/gms/internal/measurement/zzou;->zzh:Lcom/google/android/gms/internal/measurement/zzou;

    move-object/from16 v31, v0

    .line 14
    const-string v0, "ENUM"

    move-object/from16 v32, v2

    const/16 v2, 0xd

    invoke-direct {v10, v0, v2, v13, v1}, Lcom/google/android/gms/internal/measurement/zzot;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzou;I)V

    sput-object v10, Lcom/google/android/gms/internal/measurement/zzot;->zzn:Lcom/google/android/gms/internal/measurement/zzot;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzot;

    .line 15
    const-string v1, "SFIXED32"

    const/16 v13, 0xe

    move/from16 v33, v2

    const/4 v2, 0x5

    invoke-direct {v0, v1, v13, v11, v2}, Lcom/google/android/gms/internal/measurement/zzot;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzou;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzot;->zzo:Lcom/google/android/gms/internal/measurement/zzot;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzot;

    .line 16
    const-string v2, "SFIXED64"

    move/from16 v34, v13

    const/16 v13, 0xf

    move-object/from16 v35, v0

    const/4 v0, 0x1

    invoke-direct {v1, v2, v13, v5, v0}, Lcom/google/android/gms/internal/measurement/zzot;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzou;I)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzot;->zzp:Lcom/google/android/gms/internal/measurement/zzot;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzot;

    .line 17
    const-string v2, "SINT32"

    move/from16 v36, v13

    const/16 v13, 0x10

    move-object/from16 v37, v1

    const/4 v1, 0x0

    invoke-direct {v0, v2, v13, v11, v1}, Lcom/google/android/gms/internal/measurement/zzot;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzou;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzot;->zzq:Lcom/google/android/gms/internal/measurement/zzot;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzot;

    .line 18
    const-string v11, "SINT64"

    move/from16 v21, v13

    const/16 v13, 0x11

    invoke-direct {v2, v11, v13, v5, v1}, Lcom/google/android/gms/internal/measurement/zzot;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzou;I)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzot;->zzr:Lcom/google/android/gms/internal/measurement/zzot;

    const/16 v5, 0x12

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/zzot;

    aput-object v26, v5, v1

    const/16 v18, 0x1

    aput-object v28, v5, v18

    const/16 v23, 0x2

    aput-object v32, v5, v23

    aput-object v7, v5, v25

    aput-object v9, v5, v16

    const/16 v19, 0x5

    aput-object v12, v5, v19

    aput-object v14, v5, v17

    aput-object v15, v5, v20

    aput-object v4, v5, v22

    aput-object v6, v5, v24

    aput-object v3, v5, v27

    aput-object v8, v5, v29

    aput-object v31, v5, v30

    aput-object v10, v5, v33

    aput-object v35, v5, v34

    aput-object v37, v5, v36

    aput-object v0, v5, v21

    aput-object v2, v5, v13

    sput-object v5, Lcom/google/android/gms/internal/measurement/zzot;->zzu:[Lcom/google/android/gms/internal/measurement/zzot;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzou;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzot;->zzs:Lcom/google/android/gms/internal/measurement/zzou;

    iput p4, p0, Lcom/google/android/gms/internal/measurement/zzot;->zzt:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzot;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzot;->zzu:[Lcom/google/android/gms/internal/measurement/zzot;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzot;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzou;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzot;->zzs:Lcom/google/android/gms/internal/measurement/zzou;

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzot;->zzt:I

    return v0
.end method
