.class public final enum Lcom/google/android/recaptcha/internal/zzne;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zziv;


# static fields
.field public static final enum zzA:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzB:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzC:Lcom/google/android/recaptcha/internal/zzne;

.field private static final zzD:Lcom/google/android/recaptcha/internal/zziw;

.field private static final synthetic zzE:[Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zza:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzb:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzc:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzd:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zze:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzf:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzg:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzh:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzi:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzj:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzk:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzl:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzm:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzn:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzo:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzp:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzq:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzr:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzs:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzt:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzu:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzv:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzw:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzx:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzy:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzz:Lcom/google/android/recaptcha/internal/zzne;


# instance fields
.field private final zzF:I


# direct methods
.method static constructor <clinit>()V
    .locals 54

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzne;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzne;->zza:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v1, Lcom/google/android/recaptcha/internal/zzne;

    .line 2
    const-string v3, "INIT_NATIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/recaptcha/internal/zzne;->zzb:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v3, Lcom/google/android/recaptcha/internal/zzne;

    .line 3
    const-string v5, "INIT_NETWORK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/recaptcha/internal/zzne;->zzc:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v5, Lcom/google/android/recaptcha/internal/zzne;

    .line 4
    const-string v7, "INIT_NETWORK_MRI_ACTION"

    const/4 v8, 0x3

    const/16 v9, 0x12

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/recaptcha/internal/zzne;->zzd:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v7, Lcom/google/android/recaptcha/internal/zzne;

    .line 5
    const-string v10, "INIT_DOWNLOAD_JS"

    const/4 v11, 0x4

    const/16 v12, 0x13

    invoke-direct {v7, v10, v11, v12}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/recaptcha/internal/zzne;->zze:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v10, Lcom/google/android/recaptcha/internal/zzne;

    .line 6
    const-string v13, "INIT_JS"

    const/4 v14, 0x5

    invoke-direct {v10, v13, v14, v8}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/recaptcha/internal/zzne;->zzf:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v13, Lcom/google/android/recaptcha/internal/zzne;

    .line 7
    const-string v15, "INIT_TOTAL"

    move/from16 v16, v2

    const/4 v2, 0x6

    invoke-direct {v13, v15, v2, v11}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/recaptcha/internal/zzne;->zzg:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v15, Lcom/google/android/recaptcha/internal/zzne;

    move/from16 v17, v4

    .line 8
    const-string v4, "VALIDATE_INPUT"

    move/from16 v18, v6

    const/4 v6, 0x7

    move/from16 v19, v8

    const/16 v8, 0x14

    invoke-direct {v15, v4, v6, v8}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/recaptcha/internal/zzne;->zzh:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v4, Lcom/google/android/recaptcha/internal/zzne;

    move/from16 v20, v11

    .line 9
    const-string v11, "DOWNLOAD_JS"

    const/16 v8, 0x8

    const/16 v12, 0x15

    invoke-direct {v4, v11, v8, v12}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/recaptcha/internal/zzne;->zzi:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v11, Lcom/google/android/recaptcha/internal/zzne;

    .line 10
    const-string v12, "SAVE_CACHE_JS"

    const/16 v8, 0x9

    const/16 v9, 0x16

    invoke-direct {v11, v12, v8, v9}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/recaptcha/internal/zzne;->zzj:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v12, Lcom/google/android/recaptcha/internal/zzne;

    .line 11
    const-string v9, "LOAD_CACHE_JS"

    const/16 v8, 0xa

    const/16 v6, 0x17

    invoke-direct {v12, v9, v8, v6}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/recaptcha/internal/zzne;->zzk:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v9, Lcom/google/android/recaptcha/internal/zzne;

    .line 12
    const-string v6, "LOAD_WEBVIEW"

    const/16 v8, 0xb

    const/16 v2, 0x18

    invoke-direct {v9, v6, v8, v2}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/recaptcha/internal/zzne;->zzl:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v6, Lcom/google/android/recaptcha/internal/zzne;

    .line 13
    const-string v2, "EXECUTE_NATIVE"

    const/16 v8, 0xc

    invoke-direct {v6, v2, v8, v14}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/recaptcha/internal/zzne;->zzm:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v2, Lcom/google/android/recaptcha/internal/zzne;

    move/from16 v34, v14

    .line 14
    const-string v14, "EXECUTE_JS"

    const/16 v8, 0xd

    move-object/from16 v36, v0

    const/4 v0, 0x6

    invoke-direct {v2, v14, v8, v0}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/recaptcha/internal/zzne;->zzn:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v0, Lcom/google/android/recaptcha/internal/zzne;

    .line 15
    const-string v14, "EXECUTE_TOTAL"

    const/16 v8, 0xe

    move-object/from16 v38, v1

    const/4 v1, 0x7

    invoke-direct {v0, v14, v8, v1}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzne;->zzo:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v1, Lcom/google/android/recaptcha/internal/zzne;

    .line 16
    const-string v14, "COLLECT_SIGNALS"

    const/16 v8, 0xf

    move-object/from16 v40, v0

    const/16 v0, 0x19

    invoke-direct {v1, v14, v8, v0}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/recaptcha/internal/zzne;->zzp:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v14, Lcom/google/android/recaptcha/internal/zzne;

    .line 17
    const-string v0, "FETCH_TOKEN"

    const/16 v8, 0x10

    move-object/from16 v43, v1

    const/16 v1, 0x1a

    invoke-direct {v14, v0, v8, v1}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/recaptcha/internal/zzne;->zzq:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v0, Lcom/google/android/recaptcha/internal/zzne;

    .line 18
    const-string v1, "POST_EXECUTE"

    const/16 v8, 0x11

    move-object/from16 v46, v2

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzne;->zzr:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v1, Lcom/google/android/recaptcha/internal/zzne;

    const-string v2, "CHALLENGE_ACCOUNT_NATIVE"

    move-object/from16 v49, v0

    const/16 v8, 0x12

    const/16 v0, 0x8

    .line 19
    invoke-direct {v1, v2, v8, v0}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/recaptcha/internal/zzne;->zzs:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v0, Lcom/google/android/recaptcha/internal/zzne;

    const-string v2, "CHALLENGE_ACCOUNT_JS"

    move-object/from16 v50, v1

    const/16 v1, 0x9

    const/16 v8, 0x13

    .line 20
    invoke-direct {v0, v2, v8, v1}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzne;->zzt:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v1, Lcom/google/android/recaptcha/internal/zzne;

    const-string v2, "CHALLENGE_ACCOUNT_TOTAL"

    move-object/from16 v51, v0

    const/16 v8, 0x14

    const/16 v0, 0xa

    .line 21
    invoke-direct {v1, v2, v8, v0}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/recaptcha/internal/zzne;->zzu:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v0, Lcom/google/android/recaptcha/internal/zzne;

    const-string v2, "VERIFY_PIN_NATIVE"

    move-object/from16 v33, v1

    const/16 v1, 0xb

    const/16 v8, 0x15

    .line 22
    invoke-direct {v0, v2, v8, v1}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzne;->zzv:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v1, Lcom/google/android/recaptcha/internal/zzne;

    const-string v2, "VERIFY_PIN_JS"

    move-object/from16 v35, v0

    const/16 v8, 0x16

    const/16 v0, 0xc

    .line 23
    invoke-direct {v1, v2, v8, v0}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/recaptcha/internal/zzne;->zzw:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v0, Lcom/google/android/recaptcha/internal/zzne;

    const-string v2, "VERIFY_PIN_TOTAL"

    move-object/from16 v29, v1

    const/16 v1, 0xd

    const/16 v8, 0x17

    .line 24
    invoke-direct {v0, v2, v8, v1}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzne;->zzx:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v1, Lcom/google/android/recaptcha/internal/zzne;

    const-string v2, "RUN_PROGRAM"

    const/16 v8, 0x18

    move-object/from16 v32, v0

    const/16 v0, 0xe

    .line 25
    invoke-direct {v1, v2, v8, v0}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/recaptcha/internal/zzne;->zzy:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v0, Lcom/google/android/recaptcha/internal/zzne;

    const-string v2, "FETCH_ALLOWLIST"

    move-object/from16 v37, v1

    const/16 v1, 0x19

    const/16 v8, 0xf

    .line 26
    invoke-direct {v0, v2, v1, v8}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzne;->zzz:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v1, Lcom/google/android/recaptcha/internal/zzne;

    const-string v2, "JS_LOAD"

    move-object/from16 v39, v0

    const/16 v0, 0x1a

    const/16 v8, 0x10

    .line 27
    invoke-direct {v1, v2, v0, v8}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/recaptcha/internal/zzne;->zzA:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v0, Lcom/google/android/recaptcha/internal/zzne;

    const-string v2, "WEB_VIEW_RELOAD_JS"

    move-object/from16 v52, v1

    const/16 v1, 0x1b

    const/16 v8, 0x11

    .line 28
    invoke-direct {v0, v2, v1, v8}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzne;->zzB:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v1, Lcom/google/android/recaptcha/internal/zzne;

    const/16 v2, 0x1c

    const/4 v8, -0x1

    move-object/from16 v53, v0

    .line 29
    const-string v0, "UNRECOGNIZED"

    invoke-direct {v1, v0, v2, v8}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/recaptcha/internal/zzne;->zzC:Lcom/google/android/recaptcha/internal/zzne;

    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/google/android/recaptcha/internal/zzne;

    aput-object v36, v0, v16

    aput-object v38, v0, v17

    aput-object v3, v0, v18

    aput-object v5, v0, v19

    aput-object v7, v0, v20

    aput-object v10, v0, v34

    const/16 v31, 0x6

    aput-object v13, v0, v31

    const/16 v28, 0x7

    aput-object v15, v0, v28

    const/16 v24, 0x8

    aput-object v4, v0, v24

    const/16 v27, 0x9

    aput-object v11, v0, v27

    const/16 v30, 0xa

    aput-object v12, v0, v30

    const/16 v2, 0xb

    aput-object v9, v0, v2

    const/16 v2, 0xc

    aput-object v6, v0, v2

    const/16 v2, 0xd

    aput-object v46, v0, v2

    const/16 v2, 0xe

    aput-object v40, v0, v2

    const/16 v42, 0xf

    aput-object v43, v0, v42

    const/16 v45, 0x10

    aput-object v14, v0, v45

    const/16 v48, 0x11

    aput-object v49, v0, v48

    const/16 v25, 0x12

    aput-object v50, v0, v25

    const/16 v22, 0x13

    aput-object v51, v0, v22

    const/16 v21, 0x14

    aput-object v33, v0, v21

    const/16 v23, 0x15

    aput-object v35, v0, v23

    const/16 v26, 0x16

    aput-object v29, v0, v26

    const/16 v2, 0x17

    aput-object v32, v0, v2

    const/16 v2, 0x18

    aput-object v37, v0, v2

    const/16 v41, 0x19

    aput-object v39, v0, v41

    const/16 v44, 0x1a

    aput-object v52, v0, v44

    const/16 v47, 0x1b

    aput-object v53, v0, v47

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/recaptcha/internal/zzne;->zzE:[Lcom/google/android/recaptcha/internal/zzne;

    new-instance v0, Lcom/google/android/recaptcha/internal/zznd;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zznd;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzne;->zzD:Lcom/google/android/recaptcha/internal/zziw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/recaptcha/internal/zzne;->zzF:I

    return-void
.end method

.method public static values()[Lcom/google/android/recaptcha/internal/zzne;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzne;->zzE:[Lcom/google/android/recaptcha/internal/zzne;

    invoke-virtual {v0}, [Lcom/google/android/recaptcha/internal/zzne;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/recaptcha/internal/zzne;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzne;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzne;->zzC:Lcom/google/android/recaptcha/internal/zzne;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/android/recaptcha/internal/zzne;->zzF:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
